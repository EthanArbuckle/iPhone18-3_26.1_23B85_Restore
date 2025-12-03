@interface TDMicaElementProduction
- (id)associatedFileURLWithDocument:(id)document;
- (id)baseKeySpec;
- (id)copyDataFromAttributes;
- (id)dataFromAttributes;
- (id)relativePath;
- (void)copyAttributesInto:(id)into;
- (void)dealloc;
- (void)deleteRenditionsInDocument:(id)document shouldDeleteAssetFiles:(BOOL)files;
- (void)setAttributesFromCopyData:(id)data;
- (void)setAttributesFromData:(id)data;
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
  asset = [(TDMicaElementProduction *)self asset];

  return [asset sourceRelativePath];
}

- (id)associatedFileURLWithDocument:(id)document
{
  asset = [(TDMicaElementProduction *)self asset];

  return [asset fileURLWithDocument:document];
}

- (void)deleteRenditionsInDocument:(id)document shouldDeleteAssetFiles:(BOOL)files
{
  filesCopy = files;
  [document deleteObjects:{objc_msgSend(-[TDMicaElementProduction renditions](self, "renditions"), "allObjects")}];
  asset = [(TDMicaElementProduction *)self asset];
  v8 = asset;
  if (filesCopy)
  {
    v9 = [asset fileURLWithDocument:document];
    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
      [document assetManagementDelegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(document "assetManagementDelegate")];
      }

      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      [document assetManagementDelegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(document "assetManagementDelegate")];
      }
    }
  }

  [document deleteObject:v8];
}

- (void)copyAttributesInto:(id)into
{
  [into setRenditionType:{-[TDMicaElementProduction renditionType](self, "renditionType")}];
  v5 = [(TDMicaElementProduction *)self valueForKey:@"comment"];

  [into setValue:v5 forKey:@"comment"];
}

- (id)dataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
  renditionType = [(TDMicaElementProduction *)self renditionType];
  if (renditionType)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(renditionType forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"renditionType"}];
  }

  [v3 setObject:objc_msgSend(-[TDMicaElementProduction baseKeySpec](self forKey:{"baseKeySpec"), "dataFromAttributes"), @"baseKeySpec"}];
  v5 = MEMORY[0x277CCAC58];

  return [v5 dataWithPropertyList:v3 format:200 options:0 error:0];
}

- (void)setAttributesFromData:(id)data
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  managedObjectContext = [(TDMicaElementProduction *)self managedObjectContext];
  v6 = [v4 objectForKey:@"baseKeySpec"];
  if (v6)
  {
    [-[TDMicaElementProduction baseKeySpec](self "baseKeySpec")];
  }

  v7 = [v4 objectForKey:@"renditionType"];
  if (v7)
  {
    v8 = [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v7))}];

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

  asset = [(TDMicaElementProduction *)self asset];
  if (asset)
  {
    [v3 setObject:objc_msgSend(asset forKey:{"copyDataFromAttributes"), @"asset"}];
  }

  v10 = [(TDMicaElementProduction *)self mutableSetValueForKey:@"renditions"];
  if ([v10 count])
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    allObjects = [v10 allObjects];
    v13 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [v11 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v16++), "copyDataFromAttributes")}];
        }

        while (v14 != v16);
        v14 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"renditions"];
  }

  result = [objc_msgSend(MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:{0), "copy"}];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setAttributesFromCopyData:(id)data
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
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