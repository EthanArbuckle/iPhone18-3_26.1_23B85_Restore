@interface WFWebArchive
- (NSData)data;
- (WFWebArchive)initWithCoder:(id)coder;
- (WFWebArchive)initWithData:(id)data;
- (WFWebArchive)initWithMainResource:(id)resource subresources:(id)subresources subframeArchives:(id)archives;
- (WFWebArchive)initWithSerializedRepresentation:(id)representation;
- (id)containedImageFiles;
- (id)serializedRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWebArchive

- (void)encodeWithCoder:(id)coder
{
  mainResource = self->_mainResource;
  coderCopy = coder;
  [coderCopy encodeObject:mainResource forKey:@"WebMainResource"];
  [coderCopy encodeObject:self->_subresources forKey:@"WebSubresources"];
  [coderCopy encodeObject:self->_subframeArchives forKey:@"WebSubframeArchives"];
}

- (WFWebArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebMainResource"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"WebSubresources"];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"WebSubframeArchives"];

  v14 = [(WFWebArchive *)self initWithMainResource:v5 subresources:v9 subframeArchives:v13];
  return v14;
}

- (id)serializedRepresentation
{
  v3 = objc_opt_new();
  mainResource = self->_mainResource;
  if (mainResource)
  {
    serializedRepresentation = [(WFWebResource *)mainResource serializedRepresentation];
    [v3 setObject:serializedRepresentation forKey:@"WebMainResource"];
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

- (WFWebArchive)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [(WFWebArchive *)self init];
  if (v5 && (v6 = [WFWebResource alloc], [representationCopy objectForKey:@"WebMainResource"], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[WFWebResource initWithSerializedRepresentation:](v6, "initWithSerializedRepresentation:", v7), mainResource = v5->_mainResource, v5->_mainResource = v8, mainResource, v7, v5->_mainResource))
  {
    v10 = [representationCopy objectForKey:@"WebSubresources"];
    v11 = [v10 if_map:&__block_literal_global_5550];
    subresources = v5->_subresources;
    v5->_subresources = v11;

    v13 = [representationCopy objectForKey:@"WebSubframeArchives"];
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
  serializedRepresentation = [(WFWebArchive *)self serializedRepresentation];
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:serializedRepresentation format:200 options:0 error:0];

  return v3;
}

- (WFWebArchive)initWithData:(id)data
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  v5 = [(WFWebArchive *)self initWithSerializedRepresentation:v4];

  return v5;
}

- (WFWebArchive)initWithMainResource:(id)resource subresources:(id)subresources subframeArchives:(id)archives
{
  resourceCopy = resource;
  subresourcesCopy = subresources;
  archivesCopy = archives;
  if (resourceCopy && (v12 = [(WFWebArchive *)self init], (self = v12) != 0))
  {
    objc_storeStrong(&v12->_mainResource, resource);
    objc_storeStrong(&self->_subresources, subresources);
    objc_storeStrong(&self->_subframeArchives, archives);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)containedImageFiles
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  subresources = [(WFWebArchive *)self subresources];
  v5 = [subresources countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(subresources);
        }

        containedImageFile = [*(*(&v21 + 1) + 8 * i) containedImageFile];
        if (containedImageFile)
        {
          [v3 addObject:containedImageFile];
        }
      }

      v6 = [subresources countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  subframeArchives = [(WFWebArchive *)self subframeArchives];
  v11 = [subframeArchives countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(subframeArchives);
        }

        containedImageFiles = [*(*(&v17 + 1) + 8 * j) containedImageFiles];
        [v3 addObjectsFromArray:containedImageFiles];
      }

      v12 = [subframeArchives countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  return v3;
}

@end