@interface TDSimpleArtworkElementProduction
- (id)associatedFileModificationDateWithDocument:(id)a3;
- (void)deleteRenditionsInDocument:(id)a3 shouldDeleteAssetFiles:(BOOL)a4;
@end

@implementation TDSimpleArtworkElementProduction

- (void)deleteRenditionsInDocument:(id)a3 shouldDeleteAssetFiles:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = [(TDSimpleArtworkElementProduction *)self renditions];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 asset];
        [v11 setAsset:0];
        if (![objc_msgSend(v12 "renditions")])
        {
          if (v4)
          {
            v13 = [v12 fileURLWithDocument:a3];
            if ([v13 checkResourceIsReachableAndReturnError:0])
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

          [a3 deleteObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [a3 deleteObjects:{objc_msgSend(v6, "allObjects")}];
  v14 = *MEMORY[0x277D85DE8];
}

- (id)associatedFileModificationDateWithDocument:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(TDSimpleArtworkElementProduction *)self renditions];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v5 = [v5 laterDate:{objc_msgSend(v11, "associatedFileModificationDateWithDocument:", a3)}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

@end