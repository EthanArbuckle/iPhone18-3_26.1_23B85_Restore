@interface CBAssetHelper
+ (id)findLocalizedStringForKey:(id)a3;
+ (id)findLocalizedStringForKey:(id)a3 default:(id)a4;
+ (id)getAssetPathsFilenames;
+ (id)loadAllAssets;
+ (id)loadAssetsFromFile:(id)a3;
+ (id)resourcePathFromBundle:(id)a3 withResourceNamed:(id)a4;
+ (id)sharedAssetHelper;
- (CBAssetHelper)init;
- (id)getImageURLFromImageName:(id)a3;
@end

@implementation CBAssetHelper

+ (id)sharedAssetHelper
{
  v2 = sAssetHelper;
  if (!sAssetHelper)
  {
    v3 = objc_alloc_init(CBAssetHelper);
    v4 = sAssetHelper;
    sAssetHelper = v3;

    v2 = sAssetHelper;
  }

  return v2;
}

+ (id)loadAllAssets
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [CBAssetHelper loadAssetsFromFile:@"AssetPaths"];
  [v2 addEntriesFromDictionary:v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = +[CBAssetHelper getAssetPathsFilenames];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [CBAssetHelper loadAssetsFromFile:*(*(&v12 + 1) + 8 * i)];
        [v2 mergeWith:v9 overwriteConflicts:1];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)loadAssetsFromFile:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:a1];
  v7 = [v6 URLForResource:v5 withExtension:@"plist"];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7];

  return v8;
}

+ (id)resourcePathFromBundle:(id)a3 withResourceNamed:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
    v6 = [v9 bundlePath];

    if (!v8)
    {
LABEL_8:
      NSLog(&cfstr_CbassethelperB.isa, v6, v8);
      goto LABEL_10;
    }
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
  if (v10)
  {
    v11 = v10;
    v12 = [v8 stringByDeletingPathExtension];
    v13 = [v8 pathExtension];
    v14 = [v11 pathForResource:v12 ofType:v13];

    NSLog(&cfstr_CbassethelperR.isa, v6, v8, v14);
    v15 = v14;

    goto LABEL_11;
  }

  NSLog(&cfstr_CbassethelperI.isa, v6, v8);
LABEL_10:
  v15 = 0;
LABEL_11:

  return v15;
}

+ (id)getAssetPathsFilenames
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v2 = [v16 resourcePath];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v2 error:&v21];
  v15 = v21;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 hasPrefix:{@"AssetPaths-", v15}] && objc_msgSend(v11, "hasSuffix:", @".plist"))
        {
          v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - objc_msgSend(@".plist", "length")}];
          [v3 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)findLocalizedStringForKey:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v6 = [v5 localizedStringForKey:v4 value:&stru_285808710 table:@"Assets"];
  v25 = v4;
  if ([v6 isEqualToString:v4])
  {
    v24 = v5;
    v7 = [v5 pathForResource:@"Localizable" ofType:@"strings"];
    v8 = [v7 stringByDeletingLastPathComponent];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v30 = 0;
    v23 = v8;
    v10 = [v9 contentsOfDirectoryAtPath:v8 error:&v30];
    v22 = v30;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * v15);
        if ([v16 hasPrefix:{@"Assets-", v22}])
        {
          if ([v16 hasSuffix:@".strings"])
          {
            v17 = [v16 substringToIndex:{objc_msgSend(v16, "length") - objc_msgSend(@".strings", "length")}];
            v18 = [v24 localizedStringForKey:v25 value:&stru_285808710 table:v17];

            v19 = [v18 isEqualToString:v25];
            v6 = v18;
            if (!v19)
            {
              break;
            }
          }
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
          v18 = v6;
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v18 = v6;
    }

    v6 = v18;
    v5 = v24;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)findLocalizedStringForKey:(id)a3 default:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 findLocalizedStringForKey:v7];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  return v10;
}

- (CBAssetHelper)init
{
  v6.receiver = self;
  v6.super_class = CBAssetHelper;
  v2 = [(CBAssetHelper *)&v6 init];
  if (v2)
  {
    v3 = +[CBAssetHelper loadAllAssets];
    mDictCache = v2->mDictCache;
    v2->mDictCache = v3;
  }

  return v2;
}

- (id)getImageURLFromImageName:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 bundlePath];

  v7 = [CBAssetHelper resourcePathFromBundle:v6 withResourceNamed:v4];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end