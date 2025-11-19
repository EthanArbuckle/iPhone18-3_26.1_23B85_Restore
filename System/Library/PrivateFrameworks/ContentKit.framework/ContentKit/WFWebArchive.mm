@interface WFWebArchive
- (NSData)data;
- (WFWebArchive)initWithCoder:(id)a3;
- (WFWebArchive)initWithData:(id)a3;
- (WFWebArchive)initWithMainResource:(id)a3 subresources:(id)a4 subframeArchives:(id)a5;
- (WFWebArchive)initWithSerializedRepresentation:(id)a3;
- (id)containedImageFiles;
- (id)serializedRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWebArchive

- (void)encodeWithCoder:(id)a3
{
  mainResource = self->_mainResource;
  v5 = a3;
  [v5 encodeObject:mainResource forKey:@"WebMainResource"];
  [v5 encodeObject:self->_subresources forKey:@"WebSubresources"];
  [v5 encodeObject:self->_subframeArchives forKey:@"WebSubframeArchives"];
}

- (WFWebArchive)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebMainResource"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"WebSubresources"];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"WebSubframeArchives"];

  v14 = [(WFWebArchive *)self initWithMainResource:v5 subresources:v9 subframeArchives:v13];
  return v14;
}

- (id)serializedRepresentation
{
  v3 = objc_opt_new();
  mainResource = self->_mainResource;
  if (mainResource)
  {
    v5 = [(WFWebResource *)mainResource serializedRepresentation];
    [v3 setObject:v5 forKey:@"WebMainResource"];
  }

  if ([(NSArray *)self->_subresources count])
  {
    v6 = [(NSArray *)self->_subresources if_map:&__block_literal_global_15];
    [v3 setObject:v6 forKey:@"WebSubresources"];
  }

  if ([(NSArray *)self->_subframeArchives count])
  {
    v7 = [(NSArray *)self->_subframeArchives if_map:&__block_literal_global_18];
    [v3 setObject:v7 forKey:@"WebSubframeArchives"];
  }

  return v3;
}

- (WFWebArchive)initWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(WFWebArchive *)self init];
  if (v5 && (v6 = [WFWebResource alloc], [v4 objectForKey:@"WebMainResource"], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[WFWebResource initWithSerializedRepresentation:](v6, "initWithSerializedRepresentation:", v7), mainResource = v5->_mainResource, v5->_mainResource = v8, mainResource, v7, v5->_mainResource))
  {
    v10 = [v4 objectForKey:@"WebSubresources"];
    v11 = [v10 if_map:&__block_literal_global_5550];
    subresources = v5->_subresources;
    v5->_subresources = v11;

    v13 = [v4 objectForKey:@"WebSubframeArchives"];
    v14 = [v13 if_map:&__block_literal_global_10_5551];
    subframeArchives = v5->_subframeArchives;
    v5->_subframeArchives = v14;

    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

WFWebArchive *__49__WFWebArchive_initWithSerializedRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFWebArchive alloc] initWithSerializedRepresentation:v2];

  return v3;
}

WFWebResource *__49__WFWebArchive_initWithSerializedRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFWebResource alloc] initWithSerializedRepresentation:v2];

  return v3;
}

- (NSData)data
{
  v2 = [(WFWebArchive *)self serializedRepresentation];
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:200 options:0 error:0];

  return v3;
}

- (WFWebArchive)initWithData:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [(WFWebArchive *)self initWithSerializedRepresentation:v4];

  return v5;
}

- (WFWebArchive)initWithMainResource:(id)a3 subresources:(id)a4 subframeArchives:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && (v12 = [(WFWebArchive *)self init], (self = v12) != 0))
  {
    objc_storeStrong(&v12->_mainResource, a3);
    objc_storeStrong(&self->_subresources, a4);
    objc_storeStrong(&self->_subframeArchives, a5);
    self = self;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)containedImageFiles
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(WFWebArchive *)self subresources];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v21 + 1) + 8 * i) containedImageFile];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(WFWebArchive *)self subframeArchives];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * j) containedImageFiles];
        [v3 addObjectsFromArray:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  return v3;
}

@end