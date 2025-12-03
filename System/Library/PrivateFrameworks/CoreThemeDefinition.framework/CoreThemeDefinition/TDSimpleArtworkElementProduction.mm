@interface TDSimpleArtworkElementProduction
- (id)associatedFileModificationDateWithDocument:(id)document;
- (void)deleteRenditionsInDocument:(id)document shouldDeleteAssetFiles:(BOOL)files;
@end

@implementation TDSimpleArtworkElementProduction

- (void)deleteRenditionsInDocument:(id)document shouldDeleteAssetFiles:(BOOL)files
{
  filesCopy = files;
  v20 = *MEMORY[0x277D85DE8];
  renditions = [(TDSimpleArtworkElementProduction *)self renditions];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [renditions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(renditions);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        asset = [v11 asset];
        [v11 setAsset:0];
        if (![objc_msgSend(asset "renditions")])
        {
          if (filesCopy)
          {
            v13 = [asset fileURLWithDocument:document];
            if ([v13 checkResourceIsReachableAndReturnError:0])
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

          [document deleteObject:asset];
        }
      }

      v8 = [renditions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [document deleteObjects:{objc_msgSend(renditions, "allObjects")}];
  v14 = *MEMORY[0x277D85DE8];
}

- (id)associatedFileModificationDateWithDocument:(id)document
{
  v19 = *MEMORY[0x277D85DE8];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  renditions = [(TDSimpleArtworkElementProduction *)self renditions];
  v7 = [renditions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(renditions);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          distantPast = [distantPast laterDate:{objc_msgSend(v11, "associatedFileModificationDateWithDocument:", document)}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [renditions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return distantPast;
}

@end