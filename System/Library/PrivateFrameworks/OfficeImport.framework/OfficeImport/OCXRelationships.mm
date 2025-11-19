@interface OCXRelationships
- (OCXRelationships)initWithPath:(id)a3;
- (id)addRelationshipForKey:(id)a3 type:(id)a4 target:(id)a5;
- (id)addRelationshipForKey:(id)a3 type:(id)a4 target:(id)a5 external:(BOOL)a6;
- (id)idForKey:(id)a3;
- (id)targetForKey:(id)a3;
- (void)writeRelationshipsToFilename:(id)a3 stream:(id)a4;
@end

@implementation OCXRelationships

- (OCXRelationships)initWithPath:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = OCXRelationships;
  v5 = [(OCXRelationships *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    mPath = v5->mPath;
    v5->mPath = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mRelationships = v5->mRelationships;
    v5->mRelationships = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mRelationshipMap = v5->mRelationshipMap;
    v5->mRelationshipMap = v10;
  }

  return v5;
}

- (id)addRelationshipForKey:(id)a3 type:(id)a4 target:(id)a5
{
  v5 = [(OCXRelationships *)self addRelationshipForKey:a3 type:a4 target:a5 external:0];

  return v5;
}

- (id)addRelationshipForKey:(id)a3 type:(id)a4 target:(id)a5 external:(BOOL)a6
{
  v25 = a6;
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26 = self;
  v27 = v9;
  if (v9)
  {
    v12 = [(NSMutableDictionary *)self->mRelationshipMap objectForKey:v9];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 idString];

      goto LABEL_19;
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = self->mRelationships;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [v19 type];
          if ([v20 isEqualToString:v10])
          {
            v21 = [v19 target];
            v22 = [v21 isEqualToString:v11];

            if (v22)
            {
              v14 = [v19 idString];

              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }
  }

  ++v26->mNextId;
  v23 = [[OCXRelationship alloc] initWithId:v26->mNextId type:v10 target:v11 external:v25];
  [(NSMutableArray *)v26->mRelationships addObject:v23];
  if (v27)
  {
    [(NSMutableDictionary *)v26->mRelationshipMap setObject:v23 forKey:v27];
  }

  v14 = [(OCXRelationship *)v23 idString];

LABEL_19:

  return v14;
}

- (id)idForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mRelationshipMap objectForKey:a3];
  v4 = [v3 idString];

  return v4;
}

- (id)targetForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mRelationshipMap objectForKey:a3];
  v4 = [v3 target];

  return v4;
}

- (void)writeRelationshipsToFilename:(id)a3 stream:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NSMutableArray *)self->mRelationships count])
  {
    v8 = [TCXmlStreamWriter newXmlStreamWriterWithZipEntryName:v6 outputStream:v7 isCompressed:1];
    [v8 setUp];
    [v8 startElement:@"Relationships" prefix:0 ns:"http://schemas.openxmlformats.org/package/2006/relationships"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = self->mRelationships;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v10)
    {
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v13 + 1) + 8 * v12++) writeToStreamWriter:{v8, v13}];
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    [v8 endElement];
    [v8 tearDown];
  }
}

@end