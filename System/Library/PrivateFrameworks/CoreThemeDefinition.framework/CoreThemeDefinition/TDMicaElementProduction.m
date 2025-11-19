@interface TDMicaElementProduction
- (id)associatedFileURLWithDocument:(id)a3;
- (id)baseKeySpec;
- (id)copyDataFromAttributes;
- (id)dataFromAttributes;
- (id)relativePath;
- (void)copyAttributesInto:(id)a3;
- (void)dealloc;
- (void)deleteRenditionsInDocument:(id)a3 shouldDeleteAssetFiles:(BOOL)a4;
- (void)setAttributesFromCopyData:(id)a3;
- (void)setAttributesFromData:(id)a3;
@end

@implementation TDMicaElementProduction

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TDMicaElementProduction;
  [(TDMicaElementProduction *)&v2 dealloc];
}

- (id)baseKeySpec
{
  [(TDMicaElementProduction *)self willAccessValueForKey:@"baseKeySpec"];
  v3 = [(TDMicaElementProduction *)self primitiveValueForKey:@"baseKeySpec"];
  [(TDMicaElementProduction *)self didAccessValueForKey:@"baseKeySpec"];
  return v3;
}

- (id)relativePath
{
  v2 = [(TDMicaElementProduction *)self asset];

  return [v2 sourceRelativePath];
}

- (id)associatedFileURLWithDocument:(id)a3
{
  v4 = [(TDMicaElementProduction *)self asset];

  return [v4 fileURLWithDocument:a3];
}

- (void)deleteRenditionsInDocument:(id)a3 shouldDeleteAssetFiles:(BOOL)a4
{
  v4 = a4;
  [a3 deleteObjects:{objc_msgSend(-[TDMicaElementProduction renditions](self, "renditions"), "allObjects")}];
  v7 = [(TDMicaElementProduction *)self asset];
  v8 = v7;
  if (v4)
  {
    v9 = [v7 fileURLWithDocument:a3];
    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
      [a3 assetManagementDelegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(a3 "assetManagementDelegate")];
      }

      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      [a3 assetManagementDelegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(a3 "assetManagementDelegate")];
      }
    }
  }

  [a3 deleteObject:v8];
}

- (void)copyAttributesInto:(id)a3
{
  [a3 setRenditionType:{-[TDMicaElementProduction renditionType](self, "renditionType")}];
  v5 = [(TDMicaElementProduction *)self valueForKey:@"comment"];

  [a3 setValue:v5 forKey:@"comment"];
}

- (id)dataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
  v4 = [(TDMicaElementProduction *)self renditionType];
  if (v4)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v4 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"renditionType"}];
  }

  [v3 setObject:objc_msgSend(-[TDMicaElementProduction baseKeySpec](self forKey:{"baseKeySpec"), "dataFromAttributes"), @"baseKeySpec"}];
  v5 = MEMORY[0x277CCAC58];

  return [v5 dataWithPropertyList:v3 format:200 options:0 error:0];
}

- (void)setAttributesFromData:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [(TDMicaElementProduction *)self managedObjectContext];
  v6 = [v4 objectForKey:@"baseKeySpec"];
  if (v6)
  {
    [-[TDMicaElementProduction baseKeySpec](self "baseKeySpec")];
  }

  v7 = [v4 objectForKey:@"renditionType"];
  if (v7)
  {
    v8 = [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v7))}];

    [(TDMicaElementProduction *)self setRenditionType:v8];
  }
}

- (id)copyDataFromAttributes
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:14];
  v4 = [(TDMicaElementProduction *)self valueForKey:@"comment"];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"comment"];
  }

  v5 = [(TDMicaElementProduction *)self valueForKey:@"isExcludedFromFilter"];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"isExcludedFromFilter"];
  }

  v6 = [(TDMicaElementProduction *)self valueForKey:@"renditionType"];
  if (v6)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v6, "identifier")), @"renditionType"}];
  }

  v7 = [(TDMicaElementProduction *)self valueForKey:@"renditionSubtype"];
  if (v7)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v7, "identifier")), @"renditionSubtype"}];
  }

  v8 = [(TDMicaElementProduction *)self valueForKey:@"baseKeySpec"];
  if (v8)
  {
    [v3 setObject:objc_msgSend(v8 forKey:{"copyDataFromAttributes"), @"baseKeySpec"}];
  }

  v9 = [(TDMicaElementProduction *)self asset];
  if (v9)
  {
    [v3 setObject:objc_msgSend(v9 forKey:{"copyDataFromAttributes"), @"asset"}];
  }

  v10 = [(TDMicaElementProduction *)self mutableSetValueForKey:@"renditions"];
  if ([v10 count])
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v10 allObjects];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v11 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v16++), "copyDataFromAttributes")}];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"renditions"];
  }

  result = [objc_msgSend(MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:{0), "copy"}];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setAttributesFromCopyData:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [v4 objectForKey:@"comment"];
  if (v5)
  {
    [(TDMicaElementProduction *)self setValue:v5 forKey:@"comment"];
  }

  v6 = [v4 objectForKey:@"isExcludedFromFilter"];
  if (v6)
  {

    [(TDMicaElementProduction *)self setValue:v6 forKey:@"isExcludedFromFilter"];
  }
}

@end