@interface TDContentsRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
@end

@implementation TDContentsRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  contains = [(TDContentsRenditionSpec *)self contains];
  v9 = [contains countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(contains);
        }

        [v7 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * v12++), "name")}];
      }

      while (v10 != v12);
      v10 = [contains countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [v7 sortUsingSelector:sel_localizedCompare_];
  v13 = [objc_alloc(MEMORY[0x277D02668]) initWithNameList:v7];
  [v13 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  v14 = [v13 CSIRepresentationWithCompression:0];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end