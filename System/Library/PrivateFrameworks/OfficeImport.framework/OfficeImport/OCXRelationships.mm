@interface OCXRelationships
- (OCXRelationships)initWithPath:(id)path;
- (id)addRelationshipForKey:(id)key type:(id)type target:(id)target;
- (id)addRelationshipForKey:(id)key type:(id)type target:(id)target external:(BOOL)external;
- (id)idForKey:(id)key;
- (id)targetForKey:(id)key;
- (void)writeRelationshipsToFilename:(id)filename stream:(id)stream;
@end

@implementation OCXRelationships

- (OCXRelationships)initWithPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = OCXRelationships;
  v5 = [(OCXRelationships *)&v13 init];
  if (v5)
  {
    v6 = [pathCopy copy];
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

- (id)addRelationshipForKey:(id)key type:(id)type target:(id)target
{
  v5 = [(OCXRelationships *)self addRelationshipForKey:key type:type target:target external:0];

  return v5;
}

- (id)addRelationshipForKey:(id)key type:(id)type target:(id)target external:(BOOL)external
{
  externalCopy = external;
  v33 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  typeCopy = type;
  targetCopy = target;
  selfCopy = self;
  v27 = keyCopy;
  if (keyCopy)
  {
    v12 = [(NSMutableDictionary *)self->mRelationshipMap objectForKey:keyCopy];
    v13 = v12;
    if (v12)
    {
      idString = [v12 idString];

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
          type = [v19 type];
          if ([type isEqualToString:typeCopy])
          {
            target = [v19 target];
            v22 = [target isEqualToString:targetCopy];

            if (v22)
            {
              idString = [v19 idString];

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

  ++selfCopy->mNextId;
  v23 = [[OCXRelationship alloc] initWithId:selfCopy->mNextId type:typeCopy target:targetCopy external:externalCopy];
  [(NSMutableArray *)selfCopy->mRelationships addObject:v23];
  if (v27)
  {
    [(NSMutableDictionary *)selfCopy->mRelationshipMap setObject:v23 forKey:v27];
  }

  idString = [(OCXRelationship *)v23 idString];

LABEL_19:

  return idString;
}

- (id)idForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->mRelationshipMap objectForKey:key];
  idString = [v3 idString];

  return idString;
}

- (id)targetForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->mRelationshipMap objectForKey:key];
  target = [v3 target];

  return target;
}

- (void)writeRelationshipsToFilename:(id)filename stream:(id)stream
{
  v18 = *MEMORY[0x277D85DE8];
  filenameCopy = filename;
  streamCopy = stream;
  if ([(NSMutableArray *)self->mRelationships count])
  {
    v8 = [TCXmlStreamWriter newXmlStreamWriterWithZipEntryName:filenameCopy outputStream:streamCopy isCompressed:1];
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