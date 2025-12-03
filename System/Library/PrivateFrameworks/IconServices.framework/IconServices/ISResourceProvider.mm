@interface ISResourceProvider
+ (ISResourceProvider)resourceProviderWithRecord:(id)record options:(unint64_t)options;
+ (id)defaultAppIconResourceProvider;
+ (id)placeholderIconResourceProvider;
+ (id)resourceWithBundleURL:(id)l iconDictionary:(id)dictionary options:(unint64_t)options;
+ (id)resourceWithRecord:(id)record options:(unint64_t)options;
- (BOOL)_findBackgroundResourceWithIconDictionary:(id)dictionary bundle:(id)bundle;
- (BOOL)_findBadgeResourceWithIconDictionary:(id)dictionary bundle:(id)bundle record:(id)record;
- (BOOL)_findCustomRecipeWithIconDictionary:(id)dictionary bundle:(id)bundle;
- (BOOL)_findTextResourceWithIconDictionary:(id)dictionary;
- (BOOL)isPrecomposed;
- (ISResourceProvider)init;
- (ISResourceProvider)initWithResource:(id)resource templateResource:(id)templateResource;
- (ISResourceProvider)initWithResources:(id)resources;
- (NSData)validationToken;
- (void)configureProviderFromDescriptor:(id)descriptor;
- (void)resolveIconResource;
- (void)setPlatformWithBundle:(id)bundle;
@end

@implementation ISResourceProvider

+ (id)defaultAppIconResourceProvider
{
  v2 = +[ISStaticResources sharedInstance];
  genericAppIconResource = [v2 genericAppIconResource];

  v4 = [[ISResourceProvider alloc] initWithResource:genericAppIconResource templateResource:0];
  [(ISResourceProvider *)v4 setResourceType:1];
  [(ISResourceProvider *)v4 setIsGenericProvider:1];
  [(ISResourceProvider *)v4 setAllowNonDefaultAppearances:1];
  [(ISResourceProvider *)v4 setAllowAlterationsToResourceArt:1];

  return v4;
}

- (ISResourceProvider)init
{
  v7.receiver = self;
  v7.super_class = ISResourceProvider;
  v2 = [(ISResourceProvider *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    resourcesByResourceKey = v2->_resourcesByResourceKey;
    v2->_resourcesByResourceKey = v3;

    v2->_resourceType = 0;
    v2->_isGenericProvider = 0;
    v5 = +[ISPlatformInfo sharedInstance];
    v2->_platform = [v5 nativePlatform];

    *&v2->_allowNonDefaultAppearances = 256;
  }

  return v2;
}

- (void)resolveIconResource
{
  v8 = *MEMORY[0x1E69E9840];
  iconResource = [(ISResourceProvider *)self iconResource];

  if (!iconResource)
  {
    v4 = _ISDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A77B8000, v4, OS_LOG_TYPE_INFO, "Failed to resolve an icon resource for %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (ISResourceProvider)resourceProviderWithRecord:(id)record options:(unint64_t)options
{
  recordCopy = record;
  v6 = [[ISRecordResourceProvider alloc] initWithRecord:recordCopy options:options];

  return v6;
}

- (ISResourceProvider)initWithResource:(id)resource templateResource:(id)templateResource
{
  resourceCopy = resource;
  templateResourceCopy = templateResource;
  v8 = [(ISResourceProvider *)self init];
  v9 = v8;
  if (v8)
  {
    [(ISResourceProvider *)v8 setIconResource:resourceCopy];
    objc_storeStrong(&v9->_templateIconResource, templateResource);
    resourceToken = v9->_resourceToken;
    v9->_resourceToken = 0;
  }

  return v9;
}

- (ISResourceProvider)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v5 = [(ISResourceProvider *)self init];
  v6 = v5;
  if (v5)
  {
    [(NSMutableDictionary *)v5->_resourcesByResourceKey addEntriesFromDictionary:resourcesCopy];
    resourceToken = v6->_resourceToken;
    v6->_resourceToken = 0;
  }

  return v6;
}

- (NSData)validationToken
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_resourceToken)
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    [(NSUUID *)self->_lsDatabaseUUID getUUIDBytes:&v7];
    *&v8 = self->_lsDatabaseSequenceNumber;
    v3 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:self->_resourceToken];
    [v3 getUUIDBytes:&v8 + 8];
    _is_validToken = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:40];
  }

  else
  {
    _is_validToken = [MEMORY[0x1E695DEF0] _is_validToken];
  }

  v5 = *MEMORY[0x1E69E9840];

  return _is_validToken;
}

- (BOOL)_findBadgeResourceWithIconDictionary:(id)dictionary bundle:(id)bundle record:(id)record
{
  v72 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  recordCopy = record;
  v11 = [[ISFolderIconConfiguration alloc] initWithIconDictionary:dictionaryCopy];
  symbolName = [(ISFolderIconConfiguration *)v11 symbolName];

  if (symbolName)
  {
    v13 = objc_alloc(MEMORY[0x1E69A89B0]);
    symbolName2 = [(ISFolderIconConfiguration *)v11 symbolName];
    v15 = [v13 initWithSymbolName:symbolName2 bundleURL:0];
    resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
    [resourcesByResourceKey setObject:v15 forKeyedSubscript:@"kISBadgeResourceKey"];
LABEL_3:

    v17 = [dictionaryCopy _IF_arrayForKey:@"UTTypeIconFiles"];
LABEL_4:
    LOBYTE(isEnterprisePersona) = 1;
    goto LABEL_5;
  }

  v21 = 0x1E6963000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iconConfig = [(ISResourceProvider *)self iconConfig];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      iconConfig2 = [(ISResourceProvider *)self iconConfig];
      symbolName2 = [iconConfig2 symbolName];

      v15 = recordCopy;
      if (symbolName2)
      {
        identifier = [*MEMORY[0x1E6982DC8] identifier];
        if ([v15 conformsToTypeIdentifier:identifier])
        {
LABEL_23:

          goto LABEL_24;
        }

        v26 = [v15 conformsToTypeIdentifier:@"com.apple.icon-package-attribute.embossable"];

        if (v26)
        {
LABEL_24:
          v30 = objc_alloc(MEMORY[0x1E69A89B0]);
          v31 = symbolName2;
          goto LABEL_25;
        }

        v21 = 0x1E6963000;
      }
    }

    else
    {
      symbolName2 = 0;
      v15 = 0;
    }
  }

  v27 = *(v21 + 1712);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [dictionaryCopy _IF_dictionaryForKey:@"ISDocumentIconConfiguration"];
    if (v28)
    {
      symbolName2 = v28;
      v29 = [v28 _IF_stringForKey:@"ISSymbolName"];
      if (v29)
      {
        v15 = v29;
        v30 = objc_alloc(MEMORY[0x1E69A89B0]);
        v31 = v15;
LABEL_25:
        resourcesByResourceKey = [v30 initWithSymbolName:v31 bundleURL:0];
        resourcesByResourceKey2 = [(ISResourceProvider *)self resourcesByResourceKey];
        [resourcesByResourceKey2 setObject:resourcesByResourceKey forKeyedSubscript:@"kISBadgeResourceKey"];

        goto LABEL_3;
      }
    }
  }

  symbolName2 = [(ISResourceProvider *)self iconConfig];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = *(v21 + 1712);
    objc_opt_class();
    v33 = objc_opt_isKindOfClass();

    if ((v33 & 1) == 0)
    {
      goto LABEL_29;
    }

    iconConfig3 = [(ISResourceProvider *)self iconConfig];
    symbolName2 = [iconConfig3 symbolName];

    v15 = recordCopy;
    if (symbolName2)
    {
      v35 = v21;
      identifier = [*MEMORY[0x1E6982DC8] identifier];
      if ([v15 conformsToTypeIdentifier:identifier])
      {
        goto LABEL_23;
      }

      v37 = [v15 conformsToTypeIdentifier:@"com.apple.icon-package-attribute.embossable"];

      v21 = v35;
      if (v37)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_29:
  v38 = *(v21 + 1712);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = recordCopy;
    assetCatalogImageName = [(ISFolderIconConfiguration *)v11 assetCatalogImageName];
    if (assetCatalogImageName)
    {
      identifier2 = [*MEMORY[0x1E6982DC8] identifier];
      v42 = [v39 conformsToTypeIdentifier:identifier2];

      if (v42)
      {
        assetCatalogURL = [bundleCopy assetCatalogURL];
        v64 = 0;
        v44 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", assetCatalogURL, assetCatalogImageName, [bundleCopy platform], &v64);
        v61 = v64;

        LOBYTE(v42) = v44 != 0;
        if (v44)
        {
          resourcesByResourceKey3 = [(ISResourceProvider *)self resourcesByResourceKey];
          [resourcesByResourceKey3 setObject:v44 forKeyedSubscript:@"kISBadgeResourceKey"];
        }

        else
        {
          resourcesByResourceKey3 = _ISDefaultLog();
          if (os_log_type_enabled(resourcesByResourceKey3, OS_LOG_TYPE_ERROR))
          {
            identifier3 = [v39 identifier];
            *buf = 138412802;
            v67 = assetCatalogImageName;
            v68 = 2112;
            v69 = identifier3;
            v70 = 2112;
            v71 = v61;
            _os_log_error_impl(&dword_1A77B8000, resourcesByResourceKey3, OS_LOG_TYPE_ERROR, "Couldn't find image resource %@ for %@: %@", buf, 0x20u);
          }
        }
      }

      v21 = 0x1E6963000uLL;
    }

    else
    {
      LOBYTE(v42) = 0;
    }

    v17 = [dictionaryCopy _IF_arrayForKey:@"UTTypeIconFiles"];
    if (v42)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v17 = [dictionaryCopy _IF_arrayForKey:@"UTTypeIconFiles"];
  }

  v46 = *(v21 + 1712);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v17)
    {
      v47 = [v17 count];
      if (bundleCopy)
      {
        if (v47)
        {
          v48 = [MEMORY[0x1E69A8990] imageBagWithResourcesNames:v17 fromBundle:bundleCopy];
          if (v48)
          {
            resourcesByResourceKey4 = [(ISResourceProvider *)self resourcesByResourceKey];
            [resourcesByResourceKey4 setObject:v48 forKeyedSubscript:@"kISBadgeResourceKey"];
          }
        }
      }
    }
  }

  v65[0] = @"UTTypeIconBadgeName";
  v65[1] = @"UTTypeGlyphName";
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:{2, identifier3}];
  v51 = [dictionaryCopy _IF_stringForKeys:v50];

  if (v51)
  {
    assetCatalogURL2 = [bundleCopy assetCatalogURL];
    v63 = 0;
    v53 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", assetCatalogURL2, v51, [bundleCopy platform], &v63);
    v62 = v63;

    LOBYTE(isEnterprisePersona) = v53 != 0;
    if (v53)
    {
      resourcesByResourceKey5 = [(ISResourceProvider *)self resourcesByResourceKey];
      [resourcesByResourceKey5 setObject:v53 forKeyedSubscript:@"kISBadgeResourceKey"];
    }

    else
    {
      resourcesByResourceKey5 = _ISDefaultLog();
      if (os_log_type_enabled(resourcesByResourceKey5, OS_LOG_TYPE_DEBUG))
      {
        bundleURL = [bundleCopy bundleURL];
        *buf = 138412802;
        v67 = bundleURL;
        v68 = 2112;
        v69 = v51;
        v70 = 2112;
        v71 = v62;
        _os_log_debug_impl(&dword_1A77B8000, resourcesByResourceKey5, OS_LOG_TYPE_DEBUG, "Failed to find badge resource: %@ : %@ with error: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    LOBYTE(isEnterprisePersona) = 0;
  }

  if (recordCopy && !isEnterprisePersona)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [[ISPersona alloc] initWithRecord:recordCopy];
      isEnterprisePersona = [(ISPersona *)v55 isEnterprisePersona];
      if (isEnterprisePersona)
      {
        resourceBadge = [(ISPersona *)v55 resourceBadge];
        resourcesByResourceKey6 = [(ISResourceProvider *)self resourcesByResourceKey];
        [resourcesByResourceKey6 setObject:resourceBadge forKeyedSubscript:@"kISBadgeResourceKey"];

        v58 = objc_opt_new();
        [(ISResourceProvider *)self setSuggestedRecipe:v58];
      }
    }

    else
    {
      LOBYTE(isEnterprisePersona) = 0;
    }
  }

LABEL_5:

  v19 = *MEMORY[0x1E69E9840];
  return isEnterprisePersona;
}

- (BOOL)_findBackgroundResourceWithIconDictionary:(id)dictionary bundle:(id)bundle
{
  v32[2] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v32[0] = @"UTTypeIconBackgroundName";
  v32[1] = @"CFBundleIconBackgroundName";
  v7 = MEMORY[0x1E695DEC8];
  dictionaryCopy = dictionary;
  v9 = [v7 arrayWithObjects:v32 count:2];
  v10 = [dictionaryCopy _IF_stringForKeys:v9];

  if (v10)
  {
    v11 = +[ISDefaults sharedInstance];
    isSolariumEnabled = [v11 isSolariumEnabled];

    if (isSolariumEnabled)
    {
      v13 = [v10 stringByAppendingString:@"_16"];
      assetCatalogURL = [bundleCopy assetCatalogURL];
      v25 = 0;
      v15 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", assetCatalogURL, v13, [bundleCopy platform], &v25);
      v16 = v25;

      if (v15)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;
    assetCatalogURL2 = [bundleCopy assetCatalogURL];
    v24 = v16;
    v15 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", assetCatalogURL2, v10, [bundleCopy platform], &v24);
    v16 = v24;

    if (!v15)
    {
      v15 = _ISDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        bundleURL = [bundleCopy bundleURL];
        *buf = 138412802;
        v27 = bundleURL;
        v28 = 2112;
        v29 = v10;
        v30 = 2112;
        v31 = v16;
        _os_log_debug_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_DEBUG, "Failed to find background resource: %@ : %@ with error: %@", buf, 0x20u);
      }

      v17 = 0;
      goto LABEL_12;
    }

LABEL_8:
    resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
    [resourcesByResourceKey setObject:v15 forKeyedSubscript:@"kISBackgroundResourceKey"];

    v17 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_findCustomRecipeWithIconDictionary:(id)dictionary bundle:(id)bundle
{
  v5 = [ISDefaults sharedInstance:dictionary];
  if ([v5 isSolariumEnabled])
  {
    [(ISResourceProvider *)self suggestedRecipe];
  }

  return 0;
}

- (BOOL)_findTextResourceWithIconDictionary:(id)dictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"UTTypeIconText";
  v12[1] = @"CFBundleIconText";
  v4 = MEMORY[0x1E695DEC8];
  dictionaryCopy = dictionary;
  v6 = [v4 arrayWithObjects:v12 count:2];
  v7 = [dictionaryCopy _IF_stringForKeys:v6];

  if (v7)
  {
    uppercaseString = [v7 uppercaseString];
    resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
    [resourcesByResourceKey setObject:uppercaseString forKeyedSubscript:@"kISTextResourceKey"];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7 != 0;
}

- (void)setPlatformWithBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([bundleCopy platform])
  {
    -[ISResourceProvider setPlatform:](self, "setPlatform:", [bundleCopy platform]);
  }

  else
  {
    v4 = +[ISPlatformInfo sharedInstance];
    -[ISResourceProvider setPlatform:](self, "setPlatform:", [v4 nativePlatform]);
  }
}

- (void)configureProviderFromDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  [(ISResourceProvider *)self resolveIconResource];
  iconResource = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = iconResource;
    if ([descriptorCopy layoutDirection] == 4 && -[ISResourceProvider _isAppleResource](self, "_isAppleResource"))
    {
      [v5 setLayoutDirection:4];
    }

    if ([(ISResourceProvider *)self allowNonDefaultAppearances])
    {
      [v5 setAppearance:{objc_msgSend(descriptorCopy, "appearance")}];
      [v5 setAppearanceVariant:{objc_msgSend(descriptorCopy, "appearanceVariant")}];
      tintColor = [descriptorCopy tintColor];
      [v5 setTintColor:tintColor];
    }
  }

  v7 = [[ISCompositingDescriptor alloc] initWithImageDescriptor:descriptorCopy];
  iconResource2 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    iconResource3 = [(ISResourceProvider *)self iconResource];
    -[ISCompositingDescriptor setPlatform:](v7, "setPlatform:", [iconResource3 platform]);
    [iconResource3 setCompositingDescriptor:v7];
  }

  iconResource4 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    iconResource5 = [(ISResourceProvider *)self iconResource];
    [iconResource5 setAppearance:{objc_msgSend(descriptorCopy, "appearance")}];
    [iconResource5 setAppearanceVariant:{objc_msgSend(descriptorCopy, "appearanceVariant")}];
    tintColor2 = [descriptorCopy tintColor];
    [iconResource5 setTintColor:tintColor2];

    [iconResource5 setBackground:{objc_msgSend(descriptorCopy, "background")}];
    [iconResource5 setShouldApplyMask:{objc_msgSend(descriptorCopy, "shouldApplyMask")}];
    [iconResource5 setLanguageDirection:{objc_msgSend(descriptorCopy, "languageDirection")}];
    [iconResource5 setPlatformStyle:{objc_msgSend(descriptorCopy, "platformStyle")}];
    [iconResource5 setShape:{objc_msgSend(descriptorCopy, "shape")}];
  }

  iconResource6 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    iconResource7 = [(ISResourceProvider *)self iconResource];
    [iconResource7 setCompositingDescriptor:v7];
  }
}

+ (id)resourceWithRecord:(id)record options:(unint64_t)options
{
  recordCopy = record;
  if (!recordCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_17;
  }

  iconDictionary = [recordCopy iconDictionary];
  if ([iconDictionary count])
  {
    if (options & 1) != 0 && (objc_opt_respondsToSelector())
    {
      declaringBundleRecord = [recordCopy declaringBundleRecord];
      v8 = [declaringBundleRecord URL];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        iconResourceBundleURL = [recordCopy iconResourceBundleURL];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_15;
        }

        iconResourceBundleURL = [recordCopy URL];
      }

      v8 = iconResourceBundleURL;
    }

LABEL_15:
    v9 = [ISResourceProvider resourceWithBundleURL:v8 iconDictionary:iconDictionary options:options];

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:

LABEL_17:

  return v9;
}

+ (id)resourceWithBundleURL:(id)l iconDictionary:(id)dictionary options:(unint64_t)options
{
  v61[4] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dictionaryCopy = dictionary;
  v9 = [dictionaryCopy _IF_dictionaryForKey:0x1F1A4EC00];
  if (v9)
  {
    v10 = [ISGraphicSymbolResource graphicSymbolResourceWithRecipe:v9 url:lCopy];
    if (v10)
    {
      firstPage = v10;
      v12 = 0;
      goto LABEL_56;
    }
  }

  v61[0] = @"CFBundleIconName";
  v61[1] = @"UTTypeIconName";
  v61[2] = @"UTTypeGlyphName";
  v61[3] = @"CFBundleGlyphName";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
  v14 = [dictionaryCopy _IF_stringForKeys:v13];

  if (v14)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
    assetCatalogURL = [v12 assetCatalogURL];
    v52 = 0;
    firstPage = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:isAppLike:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:isAppLike:error:", assetCatalogURL, v14, [v12 platform], (options >> 2) & 1, &v52);

    if (firstPage)
    {
      [(ISIconStackCompositeResource *)firstPage isPrecomposed];
LABEL_7:

      goto LABEL_56;
    }
  }

  else
  {
    v12 = 0;
  }

  v60[0] = @"CFBundleIconFile";
  v60[1] = @"UTTypeIconFile";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v17 = [dictionaryCopy _IF_stringForKeys:v16];

  if (v17 && ([v17 pathExtension], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"icns"), v18, (v19 & 1) == 0))
  {
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
    }

    assetCatalogURL2 = [v12 assetCatalogURL];
    v51 = 0;
    firstPage = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:isAppLike:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:isAppLike:error:", assetCatalogURL2, v17, [v12 platform], (options >> 2) & 1, &v51);
    v28 = v51;

    if (firstPage)
    {
      [(ISIconStackCompositeResource *)firstPage isPrecomposed];
    }

    else
    {
      v43 = _ISDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v55 = lCopy;
        v56 = 2112;
        v57 = v17;
        v58 = 2112;
        optionsCopy = v28;
        _os_log_debug_impl(&dword_1A77B8000, v43, OS_LOG_TYPE_DEBUG, "Failed to find resource: %@ : %@ with error: %@", buf, 0x20u);
      }
    }

    if (firstPage)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v53[0] = @"CFBundleIconFile";
  v53[1] = @"UTTypeIconFile";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v21 = [dictionaryCopy _IF_stringForKeys:v20];

  if (!v21)
  {
    goto LABEL_15;
  }

  pathExtension = [v21 pathExtension];
  v23 = [pathExtension length];

  if (v23)
  {
    goto LABEL_15;
  }

  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
  }

  v30 = [v12 URLForResource:v21 withExtension:@"pdf"];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_alloc(MEMORY[0x1E69A8998]) initWithURL:v30];
    firstPage = [v32 firstPage];

    if (firstPage)
    {
      goto LABEL_56;
    }
  }

  else
  {
LABEL_15:
  }

  v24 = [dictionaryCopy _IF_arrayForKey:@"CFBundleIconFiles"];
  if (![v24 count])
  {
    v29 = [dictionaryCopy _IF_arrayForKey:@"UTTypeIconFiles"];

    v24 = v29;
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_31:
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
    goto LABEL_18;
  }

  if (!v12)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ([v24 count] && v12)
  {
    firstPage = [MEMORY[0x1E69A8990] imageBagWithResourcesNames:v24 fromBundle:v12];

    if (firstPage)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v25 = [dictionaryCopy _IF_stringForKey:@"CFBundleIconFile"];
  v26 = v25;
  if (v12)
  {
    if (!v25)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
    if (!v26)
    {
      goto LABEL_39;
    }
  }

  stringByDeletingPathExtension = [v26 stringByDeletingPathExtension];
  firstPage = [MEMORY[0x1E69A8990] imageBagWithResourcesNamed:stringByDeletingPathExtension fromBundle:v12];

  if (firstPage)
  {
    goto LABEL_56;
  }

LABEL_39:
  v34 = [dictionaryCopy _IF_stringForKey:@"CFBundleIconFile"];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
  }

  stringByDeletingPathExtension2 = [v34 stringByDeletingPathExtension];
  pathExtension2 = [v34 pathExtension];
  v37 = pathExtension2;
  if (stringByDeletingPathExtension2 && [pathExtension2 length] && (objc_msgSend(v12, "URLForResource:withExtension:", stringByDeletingPathExtension2, v37), (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v39 = v38;
    firstPage = [MEMORY[0x1E69A8988] imageWithContentsOfURL:v38];
  }

  else
  {
    firstPage = 0;
  }

  if (!firstPage)
  {
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:lCopy];
    }

    v40 = MEMORY[0x1E69A8990];
    v41 = legacyResourceNames();
    v14 = [v40 imageBagWithResourcesNames:v41 fromBundle:v12];

    if (v14)
    {
      v42 = v14;
    }

    firstPage = v14;
    goto LABEL_7;
  }

LABEL_56:

  v44 = +[ISDefaults sharedInstance];
  safeBoot = [v44 safeBoot];
  if ((options & 8) != 0 && (safeBoot & 1) == 0)
  {
    if (firstPage)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            goto LABEL_67;
          }

          v44 = firstPage;
          firstPage = -[ISIconStackCompositeResource initWithResource:platform:]([ISIconStackCompositeResource alloc], "initWithResource:platform:", firstPage, [v12 platform]);
        }
      }
    }
  }

  if (!firstPage)
  {
    v47 = _ISDefaultLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412802;
      v55 = path;
      v56 = 2112;
      v57 = dictionaryCopy;
      v58 = 2048;
      optionsCopy = options;
      _os_log_error_impl(&dword_1A77B8000, v47, OS_LOG_TYPE_ERROR, "Failed to find resource for %@. IconDictionary: %@ - %lu", buf, 0x20u);
    }

    firstPage = 0;
  }

LABEL_67:

  v48 = *MEMORY[0x1E69E9840];

  return firstPage;
}

+ (id)placeholderIconResourceProvider
{
  v2 = +[ISStaticResources sharedInstance];
  placeholderIconResource = [v2 placeholderIconResource];

  v4 = [[ISResourceProvider alloc] initWithResource:placeholderIconResource templateResource:0];
  v5 = objc_alloc_init(ISGenericRecipe);
  [(ISResourceProvider *)v4 setSuggestedRecipe:v5];

  [(ISResourceProvider *)v4 setAllowNonDefaultAppearances:1];

  return v4;
}

- (BOOL)isPrecomposed
{
  iconResource = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isPrecomposed = [iconResource isPrecomposed];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isPrecomposed = 0;
    }

    else
    {
      objc_opt_class();
      isPrecomposed = objc_opt_isKindOfClass() ^ 1;
    }
  }

  return isPrecomposed & 1;
}

@end