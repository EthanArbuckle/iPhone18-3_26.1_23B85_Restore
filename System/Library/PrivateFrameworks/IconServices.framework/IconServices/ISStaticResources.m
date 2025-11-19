@interface ISStaticResources
+ (id)sharedInstance;
- (ISStaticResources)init;
- (id)_assetCatalogResourceWithName:(id)a3 fromURL:(id)a4 cacheKey:(id)a5;
- (id)_fileExtensionAndUTIToAssetNameMap;
- (id)_findStaticImageWithKey:(id)a3;
- (id)debugGenericAppIconResource;
- (id)defaultMacDarkFolderResource;
- (id)defaultMacDataResource;
- (id)defaultMacFolderResource;
- (id)fallbackResourceForHint:(id)a3 descriptor:(id)a4 referenceObj:(id)a5;
- (id)genericAppClipIconResource;
- (id)genericAppIconResource;
- (id)genericAppIconResourceForPlatform:(unint64_t)a3;
- (id)placeholderIconResource;
- (id)placeholderIconResourceForPlatform:(unint64_t)a3;
- (id)resourceForKnownFileTypesFromHint:(id)a3;
- (void)_addStaticImage:(id)a3 withKey:(id)a4;
@end

@implementation ISStaticResources

- (id)genericAppIconResource
{
  v3 = +[ISPlatformInfo sharedInstance];
  v4 = -[ISStaticResources genericAppIconResourceForPlatform:](self, "genericAppIconResourceForPlatform:", [v3 nativePlatform]);

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[ISStaticResources sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (ISStaticResources)init
{
  v6.receiver = self;
  v6.super_class = ISStaticResources;
  v2 = [(ISStaticResources *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

uint64_t __35__ISStaticResources_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(ISStaticResources);

  return MEMORY[0x1EEE66BB8]();
}

- (id)fallbackResourceForHint:(id)a3 descriptor:(id)a4 referenceObj:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ISDefaults sharedInstance];
  v12 = [v11 isSolariumEnabled];

  if (v12)
  {
    if (v8)
    {
      v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:v8];
    }

    else
    {
      v13 = 0;
    }

    if ([v13 conformsToType:*MEMORY[0x1E6982CA8]])
    {
      if ([v9 shape] == 5 || objc_msgSend(v9, "shape") == 6)
      {
        v16 = _ISDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [ISStaticResources fallbackResourceForHint:v10 descriptor:v9 referenceObj:v16];
        }

        v15 = [(ISStaticResources *)self genericAppClipIconResource];
      }

      else
      {
        v25 = _ISDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [ISStaticResources fallbackResourceForHint:v10 descriptor:v9 referenceObj:v25];
        }

        v26 = +[ISPlatformInfo sharedInstance];
        v15 = -[ISStaticResources genericAppIconResourceForPlatform:](self, "genericAppIconResourceForPlatform:", [v26 nativePlatform]);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v15;
          [v15 setAppearance:{objc_msgSend(v9, "appearance")}];
        }
      }
    }

    else
    {
      v17 = _ISDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [ISStaticResources fallbackResourceForHint:v10 descriptor:v9 referenceObj:v17];
      }

      v18 = +[ISPlatformInfo sharedInstance];
      v15 = -[ISStaticResources placeholderIconResourceForPlatform:](self, "placeholderIconResourceForPlatform:", [v18 nativePlatform]);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v15;
        [v15 setAppearance:{objc_msgSend(v9, "appearance")}];
        v19 = objc_alloc_init(ISGenericRecipe);
        [v15 setSuggestedRecipe:v19];
      }
    }
  }

  else if ([v9 shape] == 5 || objc_msgSend(v9, "shape") == 6)
  {
    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ISStaticResources fallbackResourceForHint:v10 descriptor:v9 referenceObj:v14];
    }

    v15 = [(ISStaticResources *)self genericAppClipIconResource];
  }

  else
  {
    v23 = _ISDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [ISStaticResources fallbackResourceForHint:v10 descriptor:v9 referenceObj:v23];
    }

    v24 = +[ISPlatformInfo sharedInstance];
    v15 = -[ISStaticResources genericAppIconResourceForPlatform:](self, "genericAppIconResourceForPlatform:", [v24 nativePlatform]);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v15;
      [v15 setAppearance:{objc_msgSend(v9, "appearance")}];
    }
  }

  if (!v15)
  {
    v20 = _ISDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v27 = 138412802;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_fault_impl(&dword_1A77B8000, v20, OS_LOG_TYPE_FAULT, "Failed to resolve a fallback resource. Hint: %@, Descriptor: %@, Icon: %@", &v27, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_assetCatalogResourceWithName:(id)a3 fromURL:(id)a4 cacheKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ISStaticResources *)self cache];
  v12 = [v11 objectForKey:v10];

  if (!v12)
  {
    v16 = 0;
    v12 = [ISAssetCatalogResource assetCatalogResourceWithURL:v9 imageName:v8 error:&v16];
    v13 = v16;
    if (v12)
    {
      v14 = [(ISStaticResources *)self cache];
      [v14 setObject:v12 forKey:v10];
    }

    else
    {
      v14 = _ISDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ISStaticResources _assetCatalogResourceWithName:v10 fromURL:v13 cacheKey:v14];
      }
    }
  }

  return v12;
}

- (void)_addStaticImage:(id)a3 withKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ISStaticResources *)self cache];
  [v8 setObject:v7 forKey:v6];
}

- (id)_findStaticImageWithKey:(id)a3
{
  v4 = a3;
  v5 = [(ISStaticResources *)self cache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)genericAppIconResourceForPlatform:(unint64_t)a3
{
  v3 = a3;
  if (!a3)
  {
    v5 = +[ISPlatformInfo sharedInstance];
    v3 = [v5 nativePlatform];
  }

  if (v3 <= 7)
  {
    if ((v3 - 1) < 2)
    {
      v6 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
      v7 = [v6 assetCatalogURL];

      v8 = @"com.apple.application-bundle";
LABEL_14:
      v10 = [(ISStaticResources *)self _assetCatalogResourceWithName:v8 fromURL:v7 cacheKey:v8];

      goto LABEL_18;
    }

    if (v3 == 4)
    {
LABEL_13:
      v11 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
      v7 = [v11 assetCatalogURL];

      v8 = @"GenericAppIcon_iOS";
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  switch(v3)
  {
    case 8:
      v12 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
      v13 = MEMORY[0x1E69A8990];
      v14 = @"NanoDefaultIcon";
LABEL_17:
      v10 = [v13 imageBagWithResourcesNamed:v14 fromBundle:v12];

      goto LABEL_18;
    case 16:
      v12 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
      v13 = MEMORY[0x1E69A8990];
      v14 = @"VisionDefaultIcon";
      goto LABEL_17;
    case 32:
      goto LABEL_13;
  }

LABEL_9:
  v9 = _ISDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ISStaticResources *)v3 genericAppIconResourceForPlatform:v9];
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (id)genericAppClipIconResource
{
  v2 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v3 = [MEMORY[0x1E69A8990] imageBagWithResourcesNamed:@"AppClipDefaultIcon" fromBundle:v2];
  if (!v3)
  {
    v4 = _ISDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ISStaticResources *)v4 genericAppClipIconResource];
    }
  }

  return v3;
}

- (id)debugGenericAppIconResource
{
  v3 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v4 = [v3 assetCatalogURL];

  v5 = [(ISStaticResources *)self _assetCatalogResourceWithName:@"DebugGenericAppIcon" fromURL:v4 cacheKey:@"DebugGenericAppIcon"];

  return v5;
}

- (id)placeholderIconResource
{
  v3 = +[ISPlatformInfo sharedInstance];
  v4 = -[ISStaticResources placeholderIconResourceForPlatform:](self, "placeholderIconResourceForPlatform:", [v3 nativePlatform]);

  return v4;
}

- (id)placeholderIconResourceForPlatform:(unint64_t)a3
{
  v3 = a3;
  if (!a3)
  {
    v5 = +[ISPlatformInfo sharedInstance];
    v3 = [v5 nativePlatform];
  }

  if (v3 > 0x20)
  {
    goto LABEL_14;
  }

  if (((1 << v3) & 0x100010100) != 0)
  {
    v6 = [(ISStaticResources *)self genericAppIconResourceForPlatform:v3];
    goto LABEL_8;
  }

  if (((1 << v3) & 6) != 0)
  {
    v6 = [(ISStaticResources *)self defaultMacUnknownFSObjectResource];
LABEL_8:
    v7 = v6;
    goto LABEL_9;
  }

  if (v3 == 4)
  {
    v9 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
    v10 = [v9 assetCatalogURL];

    v7 = [(ISStaticResources *)self _assetCatalogResourceWithName:@"CacheMissIcon_iOS" fromURL:v10 cacheKey:@"CacheMissIcon_iOS"];
  }

  else
  {
LABEL_14:
    v11 = _ISDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ISStaticResources *)v3 placeholderIconResourceForPlatform:v11];
    }

    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (id)defaultMacFolderResource
{
  v3 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  v4 = [v3 assetCatalogURL];

  v5 = [(ISStaticResources *)self _assetCatalogResourceWithName:@"Folder" fromURL:v4 cacheKey:@"defaultMacFolder"];

  return v5;
}

- (id)defaultMacDarkFolderResource
{
  v3 = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  v4 = [v3 assetCatalogURL];

  v5 = [(ISStaticResources *)self _assetCatalogResourceWithName:@"FolderDark" fromURL:v4 cacheKey:@"defaultMacDarkFolder"];

  return v5;
}

- (id)defaultMacDataResource
{
  v3 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v4 = [v3 assetCatalogURL];

  v5 = [(ISStaticResources *)self _assetCatalogResourceWithName:@"public.data" fromURL:v4 cacheKey:@"defaultMacData"];

  return v5;
}

- (id)_fileExtensionAndUTIToAssetNameMap
{
  v3 = [(ISStaticResources *)self cache];
  v4 = [v3 objectForKey:@"StaticAssetNameMaps"];

  if (!v4)
  {
    v5 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
    v6 = [v5 URLForResource:@"StaticAssetsInfo" withExtension:@"plist"];

    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v6];
    if (v4)
    {
      v7 = [(ISStaticResources *)self cache];
      [v7 setObject:v4 forKey:@"StaticAssetNameMaps"];
    }
  }

  return v4;
}

- (id)resourceForKnownFileTypesFromHint:(id)a3
{
  v4 = a3;
  v5 = [(ISStaticResources *)self _fileExtensionAndUTIToAssetNameMap];
  v6 = [v5 objectForKey:@"ExtensionToUTI"];
  v7 = [v6 objectForKey:v4];

  if (!v7)
  {
    v7 = v4;
  }

  v8 = [(ISStaticResources *)self _fileExtensionAndUTIToAssetNameMap];
  v9 = [v8 objectForKey:@"UTIToAssetName"];
  v10 = [v9 objectForKey:v7];

  if (v10)
  {
    v11 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
    v12 = [v11 assetCatalogURL];

    v13 = [(ISStaticResources *)self _assetCatalogResourceWithName:v10 fromURL:v12 cacheKey:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_assetCatalogResourceWithName:(uint64_t)a1 fromURL:(void *)a2 cacheKey:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1A77B8000, a3, OS_LOG_TYPE_ERROR, "Failed to retrieve %@ resource. Error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)genericAppIconResourceForPlatform:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve default app icon resource for platform: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)placeholderIconResourceForPlatform:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve cache miss icon resource for platform: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end