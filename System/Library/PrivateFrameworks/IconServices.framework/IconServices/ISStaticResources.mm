@interface ISStaticResources
+ (id)sharedInstance;
- (ISStaticResources)init;
- (id)_assetCatalogResourceWithName:(id)name fromURL:(id)l cacheKey:(id)key;
- (id)_fileExtensionAndUTIToAssetNameMap;
- (id)_findStaticImageWithKey:(id)key;
- (id)debugGenericAppIconResource;
- (id)defaultMacDarkFolderResource;
- (id)defaultMacDataResource;
- (id)defaultMacFolderResource;
- (id)fallbackResourceForHint:(id)hint descriptor:(id)descriptor referenceObj:(id)obj;
- (id)genericAppClipIconResource;
- (id)genericAppIconResource;
- (id)genericAppIconResourceForPlatform:(unint64_t)platform;
- (id)placeholderIconResource;
- (id)placeholderIconResourceForPlatform:(unint64_t)platform;
- (id)resourceForKnownFileTypesFromHint:(id)hint;
- (void)_addStaticImage:(id)image withKey:(id)key;
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

- (id)fallbackResourceForHint:(id)hint descriptor:(id)descriptor referenceObj:(id)obj
{
  v33 = *MEMORY[0x1E69E9840];
  hintCopy = hint;
  descriptorCopy = descriptor;
  objCopy = obj;
  v11 = +[ISDefaults sharedInstance];
  isSolariumEnabled = [v11 isSolariumEnabled];

  if (isSolariumEnabled)
  {
    if (hintCopy)
    {
      v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:hintCopy];
    }

    else
    {
      v13 = 0;
    }

    if ([v13 conformsToType:*MEMORY[0x1E6982CA8]])
    {
      if ([descriptorCopy shape] == 5 || objc_msgSend(descriptorCopy, "shape") == 6)
      {
        v16 = _ISDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [ISStaticResources fallbackResourceForHint:objCopy descriptor:descriptorCopy referenceObj:v16];
        }

        genericAppClipIconResource = [(ISStaticResources *)self genericAppClipIconResource];
      }

      else
      {
        v25 = _ISDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [ISStaticResources fallbackResourceForHint:objCopy descriptor:descriptorCopy referenceObj:v25];
        }

        v26 = +[ISPlatformInfo sharedInstance];
        genericAppClipIconResource = -[ISStaticResources genericAppIconResourceForPlatform:](self, "genericAppIconResourceForPlatform:", [v26 nativePlatform]);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          genericAppClipIconResource = genericAppClipIconResource;
          [genericAppClipIconResource setAppearance:{objc_msgSend(descriptorCopy, "appearance")}];
        }
      }
    }

    else
    {
      v17 = _ISDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [ISStaticResources fallbackResourceForHint:objCopy descriptor:descriptorCopy referenceObj:v17];
      }

      v18 = +[ISPlatformInfo sharedInstance];
      genericAppClipIconResource = -[ISStaticResources placeholderIconResourceForPlatform:](self, "placeholderIconResourceForPlatform:", [v18 nativePlatform]);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        genericAppClipIconResource = genericAppClipIconResource;
        [genericAppClipIconResource setAppearance:{objc_msgSend(descriptorCopy, "appearance")}];
        v19 = objc_alloc_init(ISGenericRecipe);
        [genericAppClipIconResource setSuggestedRecipe:v19];
      }
    }
  }

  else if ([descriptorCopy shape] == 5 || objc_msgSend(descriptorCopy, "shape") == 6)
  {
    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ISStaticResources fallbackResourceForHint:objCopy descriptor:descriptorCopy referenceObj:v14];
    }

    genericAppClipIconResource = [(ISStaticResources *)self genericAppClipIconResource];
  }

  else
  {
    v23 = _ISDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [ISStaticResources fallbackResourceForHint:objCopy descriptor:descriptorCopy referenceObj:v23];
    }

    v24 = +[ISPlatformInfo sharedInstance];
    genericAppClipIconResource = -[ISStaticResources genericAppIconResourceForPlatform:](self, "genericAppIconResourceForPlatform:", [v24 nativePlatform]);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      genericAppClipIconResource = genericAppClipIconResource;
      [genericAppClipIconResource setAppearance:{objc_msgSend(descriptorCopy, "appearance")}];
    }
  }

  if (!genericAppClipIconResource)
  {
    v20 = _ISDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v27 = 138412802;
      v28 = hintCopy;
      v29 = 2112;
      v30 = descriptorCopy;
      v31 = 2112;
      v32 = objCopy;
      _os_log_fault_impl(&dword_1A77B8000, v20, OS_LOG_TYPE_FAULT, "Failed to resolve a fallback resource. Hint: %@, Descriptor: %@, Icon: %@", &v27, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return genericAppClipIconResource;
}

- (id)_assetCatalogResourceWithName:(id)name fromURL:(id)l cacheKey:(id)key
{
  nameCopy = name;
  lCopy = l;
  keyCopy = key;
  cache = [(ISStaticResources *)self cache];
  v12 = [cache objectForKey:keyCopy];

  if (!v12)
  {
    v16 = 0;
    v12 = [ISAssetCatalogResource assetCatalogResourceWithURL:lCopy imageName:nameCopy error:&v16];
    v13 = v16;
    if (v12)
    {
      cache2 = [(ISStaticResources *)self cache];
      [cache2 setObject:v12 forKey:keyCopy];
    }

    else
    {
      cache2 = _ISDefaultLog();
      if (os_log_type_enabled(cache2, OS_LOG_TYPE_ERROR))
      {
        [ISStaticResources _assetCatalogResourceWithName:keyCopy fromURL:v13 cacheKey:cache2];
      }
    }
  }

  return v12;
}

- (void)_addStaticImage:(id)image withKey:(id)key
{
  keyCopy = key;
  imageCopy = image;
  cache = [(ISStaticResources *)self cache];
  [cache setObject:imageCopy forKey:keyCopy];
}

- (id)_findStaticImageWithKey:(id)key
{
  keyCopy = key;
  cache = [(ISStaticResources *)self cache];
  v6 = [cache objectForKey:keyCopy];

  return v6;
}

- (id)genericAppIconResourceForPlatform:(unint64_t)platform
{
  platformCopy = platform;
  if (!platform)
  {
    v5 = +[ISPlatformInfo sharedInstance];
    platformCopy = [v5 nativePlatform];
  }

  if (platformCopy <= 7)
  {
    if ((platformCopy - 1) < 2)
    {
      iconFoundationFrameworkBundle = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
      assetCatalogURL = [iconFoundationFrameworkBundle assetCatalogURL];

      v8 = @"com.apple.application-bundle";
LABEL_14:
      v10 = [(ISStaticResources *)self _assetCatalogResourceWithName:v8 fromURL:assetCatalogURL cacheKey:v8];

      goto LABEL_18;
    }

    if (platformCopy == 4)
    {
LABEL_13:
      iconsetResourceBundle = [MEMORY[0x1E69A8960] iconsetResourceBundle];
      assetCatalogURL = [iconsetResourceBundle assetCatalogURL];

      v8 = @"GenericAppIcon_iOS";
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  switch(platformCopy)
  {
    case 8:
      iconsetResourceBundle2 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
      v13 = MEMORY[0x1E69A8990];
      v14 = @"NanoDefaultIcon";
LABEL_17:
      v10 = [v13 imageBagWithResourcesNamed:v14 fromBundle:iconsetResourceBundle2];

      goto LABEL_18;
    case 16:
      iconsetResourceBundle2 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
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
    [(ISStaticResources *)platformCopy genericAppIconResourceForPlatform:v9];
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (id)genericAppClipIconResource
{
  iconsetResourceBundle = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v3 = [MEMORY[0x1E69A8990] imageBagWithResourcesNamed:@"AppClipDefaultIcon" fromBundle:iconsetResourceBundle];
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
  iconsetResourceBundle = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  assetCatalogURL = [iconsetResourceBundle assetCatalogURL];

  v5 = [(ISStaticResources *)self _assetCatalogResourceWithName:@"DebugGenericAppIcon" fromURL:assetCatalogURL cacheKey:@"DebugGenericAppIcon"];

  return v5;
}

- (id)placeholderIconResource
{
  v3 = +[ISPlatformInfo sharedInstance];
  v4 = -[ISStaticResources placeholderIconResourceForPlatform:](self, "placeholderIconResourceForPlatform:", [v3 nativePlatform]);

  return v4;
}

- (id)placeholderIconResourceForPlatform:(unint64_t)platform
{
  platformCopy = platform;
  if (!platform)
  {
    v5 = +[ISPlatformInfo sharedInstance];
    platformCopy = [v5 nativePlatform];
  }

  if (platformCopy > 0x20)
  {
    goto LABEL_14;
  }

  if (((1 << platformCopy) & 0x100010100) != 0)
  {
    defaultMacUnknownFSObjectResource = [(ISStaticResources *)self genericAppIconResourceForPlatform:platformCopy];
    goto LABEL_8;
  }

  if (((1 << platformCopy) & 6) != 0)
  {
    defaultMacUnknownFSObjectResource = [(ISStaticResources *)self defaultMacUnknownFSObjectResource];
LABEL_8:
    v7 = defaultMacUnknownFSObjectResource;
    goto LABEL_9;
  }

  if (platformCopy == 4)
  {
    iconsetResourceBundle = [MEMORY[0x1E69A8960] iconsetResourceBundle];
    assetCatalogURL = [iconsetResourceBundle assetCatalogURL];

    v7 = [(ISStaticResources *)self _assetCatalogResourceWithName:@"CacheMissIcon_iOS" fromURL:assetCatalogURL cacheKey:@"CacheMissIcon_iOS"];
  }

  else
  {
LABEL_14:
    v11 = _ISDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ISStaticResources *)platformCopy placeholderIconResourceForPlatform:v11];
    }

    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (id)defaultMacFolderResource
{
  iconFoundationFrameworkBundle = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL = [iconFoundationFrameworkBundle assetCatalogURL];

  v5 = [(ISStaticResources *)self _assetCatalogResourceWithName:@"Folder" fromURL:assetCatalogURL cacheKey:@"defaultMacFolder"];

  return v5;
}

- (id)defaultMacDarkFolderResource
{
  iconFoundationFrameworkBundle = [MEMORY[0x1E69A8960] iconFoundationFrameworkBundle];
  assetCatalogURL = [iconFoundationFrameworkBundle assetCatalogURL];

  v5 = [(ISStaticResources *)self _assetCatalogResourceWithName:@"FolderDark" fromURL:assetCatalogURL cacheKey:@"defaultMacDarkFolder"];

  return v5;
}

- (id)defaultMacDataResource
{
  iconsetResourceBundle = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  assetCatalogURL = [iconsetResourceBundle assetCatalogURL];

  v5 = [(ISStaticResources *)self _assetCatalogResourceWithName:@"public.data" fromURL:assetCatalogURL cacheKey:@"defaultMacData"];

  return v5;
}

- (id)_fileExtensionAndUTIToAssetNameMap
{
  cache = [(ISStaticResources *)self cache];
  v4 = [cache objectForKey:@"StaticAssetNameMaps"];

  if (!v4)
  {
    iconsetResourceBundle = [MEMORY[0x1E69A8960] iconsetResourceBundle];
    v6 = [iconsetResourceBundle URLForResource:@"StaticAssetsInfo" withExtension:@"plist"];

    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v6];
    if (v4)
    {
      cache2 = [(ISStaticResources *)self cache];
      [cache2 setObject:v4 forKey:@"StaticAssetNameMaps"];
    }
  }

  return v4;
}

- (id)resourceForKnownFileTypesFromHint:(id)hint
{
  hintCopy = hint;
  _fileExtensionAndUTIToAssetNameMap = [(ISStaticResources *)self _fileExtensionAndUTIToAssetNameMap];
  v6 = [_fileExtensionAndUTIToAssetNameMap objectForKey:@"ExtensionToUTI"];
  v7 = [v6 objectForKey:hintCopy];

  if (!v7)
  {
    v7 = hintCopy;
  }

  _fileExtensionAndUTIToAssetNameMap2 = [(ISStaticResources *)self _fileExtensionAndUTIToAssetNameMap];
  v9 = [_fileExtensionAndUTIToAssetNameMap2 objectForKey:@"UTIToAssetName"];
  v10 = [v9 objectForKey:v7];

  if (v10)
  {
    iconsetResourceBundle = [MEMORY[0x1E69A8960] iconsetResourceBundle];
    assetCatalogURL = [iconsetResourceBundle assetCatalogURL];

    v13 = [(ISStaticResources *)self _assetCatalogResourceWithName:v10 fromURL:assetCatalogURL cacheKey:v10];
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