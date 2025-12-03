@interface CBAssetHelper
+ (id)findLocalizedStringForKey:(id)key;
+ (id)findLocalizedStringForKey:(id)key default:(id)default;
+ (id)getAssetPathsFilenames;
+ (id)loadAllAssets;
+ (id)loadAssetsFromFile:(id)file;
+ (id)resourcePathFromBundle:(id)bundle withResourceNamed:(id)named;
+ (id)sharedAssetHelper;
- (CBAssetHelper)init;
- (id)getImageURLFromImageName:(id)name;
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

+ (id)loadAssetsFromFile:(id)file
{
  v4 = MEMORY[0x277CCA8D8];
  fileCopy = file;
  v6 = [v4 bundleForClass:self];
  v7 = [v6 URLForResource:fileCopy withExtension:@"plist"];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7];

  return v8;
}

+ (id)resourcePathFromBundle:(id)bundle withResourceNamed:(id)named
{
  bundleCopy = bundle;
  namedCopy = named;
  v8 = namedCopy;
  if (bundleCopy)
  {
    if (!namedCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:self];
    bundleCopy = [v9 bundlePath];

    if (!v8)
    {
LABEL_8:
      NSLog(&cfstr_CbassethelperB.isa, bundleCopy, v8);
      goto LABEL_10;
    }
  }

  if (!bundleCopy)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCA8D8] bundleWithPath:bundleCopy];
  if (v10)
  {
    v11 = v10;
    stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];
    pathExtension = [v8 pathExtension];
    v14 = [v11 pathForResource:stringByDeletingPathExtension ofType:pathExtension];

    NSLog(&cfstr_CbassethelperR.isa, bundleCopy, v8, v14);
    v15 = v14;

    goto LABEL_11;
  }

  NSLog(&cfstr_CbassethelperI.isa, bundleCopy, v8);
LABEL_10:
  v15 = 0;
LABEL_11:

  return v15;
}

+ (id)getAssetPathsFilenames
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  resourcePath = [v16 resourcePath];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:resourcePath error:&v21];
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

+ (id)findLocalizedStringForKey:(id)key
{
  v32 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v6 = [v5 localizedStringForKey:keyCopy value:&stru_285808710 table:@"Assets"];
  v25 = keyCopy;
  if ([v6 isEqualToString:keyCopy])
  {
    v24 = v5;
    v7 = [v5 pathForResource:@"Localizable" ofType:@"strings"];
    stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v30 = 0;
    v23 = stringByDeletingLastPathComponent;
    v10 = [defaultManager contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:&v30];
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

+ (id)findLocalizedStringForKey:(id)key default:(id)default
{
  defaultCopy = default;
  keyCopy = key;
  v8 = [self findLocalizedStringForKey:keyCopy];
  v9 = [v8 isEqualToString:keyCopy];

  if (v9)
  {
    v10 = defaultCopy;
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

- (id)getImageURLFromImageName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  bundlePath = [v5 bundlePath];

  v7 = [CBAssetHelper resourcePathFromBundle:bundlePath withResourceNamed:nameCopy];

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