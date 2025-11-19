@interface ISResourceProvider
+ (ISResourceProvider)resourceProviderWithRecord:(id)a3 options:(unint64_t)a4;
+ (id)defaultAppIconResourceProvider;
+ (id)placeholderIconResourceProvider;
+ (id)resourceWithBundleURL:(id)a3 iconDictionary:(id)a4 options:(unint64_t)a5;
+ (id)resourceWithRecord:(id)a3 options:(unint64_t)a4;
- (BOOL)_findBackgroundResourceWithIconDictionary:(id)a3 bundle:(id)a4;
- (BOOL)_findBadgeResourceWithIconDictionary:(id)a3 bundle:(id)a4 record:(id)a5;
- (BOOL)_findCustomRecipeWithIconDictionary:(id)a3 bundle:(id)a4;
- (BOOL)_findTextResourceWithIconDictionary:(id)a3;
- (BOOL)isPrecomposed;
- (ISResourceProvider)init;
- (ISResourceProvider)initWithResource:(id)a3 templateResource:(id)a4;
- (ISResourceProvider)initWithResources:(id)a3;
- (NSData)validationToken;
- (void)configureProviderFromDescriptor:(id)a3;
- (void)resolveIconResource;
- (void)setPlatformWithBundle:(id)a3;
@end

@implementation ISResourceProvider

+ (id)defaultAppIconResourceProvider
{
  v2 = +[ISStaticResources sharedInstance];
  v3 = [v2 genericAppIconResource];

  v4 = [[ISResourceProvider alloc] initWithResource:v3 templateResource:0];
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
  v3 = [(ISResourceProvider *)self iconResource];

  if (!v3)
  {
    v4 = _ISDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&dword_1A77B8000, v4, OS_LOG_TYPE_INFO, "Failed to resolve an icon resource for %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (ISResourceProvider)resourceProviderWithRecord:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v6 = [[ISRecordResourceProvider alloc] initWithRecord:v5 options:a4];

  return v6;
}

- (ISResourceProvider)initWithResource:(id)a3 templateResource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ISResourceProvider *)self init];
  v9 = v8;
  if (v8)
  {
    [(ISResourceProvider *)v8 setIconResource:v6];
    objc_storeStrong(&v9->_templateIconResource, a4);
    resourceToken = v9->_resourceToken;
    v9->_resourceToken = 0;
  }

  return v9;
}

- (ISResourceProvider)initWithResources:(id)a3
{
  v4 = a3;
  v5 = [(ISResourceProvider *)self init];
  v6 = v5;
  if (v5)
  {
    [(NSMutableDictionary *)v5->_resourcesByResourceKey addEntriesFromDictionary:v4];
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
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:40];
  }

  else
  {
    v4 = [MEMORY[0x1E695DEF0] _is_validToken];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)_findBadgeResourceWithIconDictionary:(id)a3 bundle:(id)a4 record:(id)a5
{
  v72 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[ISFolderIconConfiguration alloc] initWithIconDictionary:v8];
  v12 = [(ISFolderIconConfiguration *)v11 symbolName];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E69A89B0]);
    v14 = [(ISFolderIconConfiguration *)v11 symbolName];
    v15 = [v13 initWithSymbolName:v14 bundleURL:0];
    v16 = [(ISResourceProvider *)self resourcesByResourceKey];
    [v16 setObject:v15 forKeyedSubscript:@"kISBadgeResourceKey"];
LABEL_3:

    v17 = [v8 _IF_arrayForKey:@"UTTypeIconFiles"];
LABEL_4:
    LOBYTE(v18) = 1;
    goto LABEL_5;
  }

  v21 = 0x1E6963000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [(ISResourceProvider *)self iconConfig];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v24 = [(ISResourceProvider *)self iconConfig];
      v14 = [v24 symbolName];

      v15 = v10;
      if (v14)
      {
        v25 = [*MEMORY[0x1E6982DC8] identifier];
        if ([v15 conformsToTypeIdentifier:v25])
        {
LABEL_23:

          goto LABEL_24;
        }

        v26 = [v15 conformsToTypeIdentifier:@"com.apple.icon-package-attribute.embossable"];

        if (v26)
        {
LABEL_24:
          v30 = objc_alloc(MEMORY[0x1E69A89B0]);
          v31 = v14;
          goto LABEL_25;
        }

        v21 = 0x1E6963000;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  v27 = *(v21 + 1712);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v8 _IF_dictionaryForKey:@"ISDocumentIconConfiguration"];
    if (v28)
    {
      v14 = v28;
      v29 = [v28 _IF_stringForKey:@"ISSymbolName"];
      if (v29)
      {
        v15 = v29;
        v30 = objc_alloc(MEMORY[0x1E69A89B0]);
        v31 = v15;
LABEL_25:
        v16 = [v30 initWithSymbolName:v31 bundleURL:0];
        v36 = [(ISResourceProvider *)self resourcesByResourceKey];
        [v36 setObject:v16 forKeyedSubscript:@"kISBadgeResourceKey"];

        goto LABEL_3;
      }
    }
  }

  v14 = [(ISResourceProvider *)self iconConfig];
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

    v34 = [(ISResourceProvider *)self iconConfig];
    v14 = [v34 symbolName];

    v15 = v10;
    if (v14)
    {
      v35 = v21;
      v25 = [*MEMORY[0x1E6982DC8] identifier];
      if ([v15 conformsToTypeIdentifier:v25])
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
    v39 = v10;
    v40 = [(ISFolderIconConfiguration *)v11 assetCatalogImageName];
    if (v40)
    {
      v41 = [*MEMORY[0x1E6982DC8] identifier];
      v42 = [v39 conformsToTypeIdentifier:v41];

      if (v42)
      {
        v43 = [v9 assetCatalogURL];
        v64 = 0;
        v44 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", v43, v40, [v9 platform], &v64);
        v61 = v64;

        LOBYTE(v42) = v44 != 0;
        if (v44)
        {
          v45 = [(ISResourceProvider *)self resourcesByResourceKey];
          [v45 setObject:v44 forKeyedSubscript:@"kISBadgeResourceKey"];
        }

        else
        {
          v45 = _ISDefaultLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v59 = [v39 identifier];
            *buf = 138412802;
            v67 = v40;
            v68 = 2112;
            v69 = v59;
            v70 = 2112;
            v71 = v61;
            _os_log_error_impl(&dword_1A77B8000, v45, OS_LOG_TYPE_ERROR, "Couldn't find image resource %@ for %@: %@", buf, 0x20u);
          }
        }
      }

      v21 = 0x1E6963000uLL;
    }

    else
    {
      LOBYTE(v42) = 0;
    }

    v17 = [v8 _IF_arrayForKey:@"UTTypeIconFiles"];
    if (v42)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v17 = [v8 _IF_arrayForKey:@"UTTypeIconFiles"];
  }

  v46 = *(v21 + 1712);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v17)
    {
      v47 = [v17 count];
      if (v9)
      {
        if (v47)
        {
          v48 = [MEMORY[0x1E69A8990] imageBagWithResourcesNames:v17 fromBundle:v9];
          if (v48)
          {
            v49 = [(ISResourceProvider *)self resourcesByResourceKey];
            [v49 setObject:v48 forKeyedSubscript:@"kISBadgeResourceKey"];
          }
        }
      }
    }
  }

  v65[0] = @"UTTypeIconBadgeName";
  v65[1] = @"UTTypeGlyphName";
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:{2, v59}];
  v51 = [v8 _IF_stringForKeys:v50];

  if (v51)
  {
    v52 = [v9 assetCatalogURL];
    v63 = 0;
    v53 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", v52, v51, [v9 platform], &v63);
    v62 = v63;

    LOBYTE(v18) = v53 != 0;
    if (v53)
    {
      v54 = [(ISResourceProvider *)self resourcesByResourceKey];
      [v54 setObject:v53 forKeyedSubscript:@"kISBadgeResourceKey"];
    }

    else
    {
      v54 = _ISDefaultLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v60 = [v9 bundleURL];
        *buf = 138412802;
        v67 = v60;
        v68 = 2112;
        v69 = v51;
        v70 = 2112;
        v71 = v62;
        _os_log_debug_impl(&dword_1A77B8000, v54, OS_LOG_TYPE_DEBUG, "Failed to find badge resource: %@ : %@ with error: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  if (v10 && !v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [[ISPersona alloc] initWithRecord:v10];
      v18 = [(ISPersona *)v55 isEnterprisePersona];
      if (v18)
      {
        v56 = [(ISPersona *)v55 resourceBadge];
        v57 = [(ISResourceProvider *)self resourcesByResourceKey];
        [v57 setObject:v56 forKeyedSubscript:@"kISBadgeResourceKey"];

        v58 = objc_opt_new();
        [(ISResourceProvider *)self setSuggestedRecipe:v58];
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

LABEL_5:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)_findBackgroundResourceWithIconDictionary:(id)a3 bundle:(id)a4
{
  v32[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v32[0] = @"UTTypeIconBackgroundName";
  v32[1] = @"CFBundleIconBackgroundName";
  v7 = MEMORY[0x1E695DEC8];
  v8 = a3;
  v9 = [v7 arrayWithObjects:v32 count:2];
  v10 = [v8 _IF_stringForKeys:v9];

  if (v10)
  {
    v11 = +[ISDefaults sharedInstance];
    v12 = [v11 isSolariumEnabled];

    if (v12)
    {
      v13 = [v10 stringByAppendingString:@"_16"];
      v14 = [v6 assetCatalogURL];
      v25 = 0;
      v15 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", v14, v13, [v6 platform], &v25);
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
    v19 = [v6 assetCatalogURL];
    v24 = v16;
    v15 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:error:", v19, v10, [v6 platform], &v24);
    v16 = v24;

    if (!v15)
    {
      v15 = _ISDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v23 = [v6 bundleURL];
        *buf = 138412802;
        v27 = v23;
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
    v20 = [(ISResourceProvider *)self resourcesByResourceKey];
    [v20 setObject:v15 forKeyedSubscript:@"kISBackgroundResourceKey"];

    v17 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:

  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_findCustomRecipeWithIconDictionary:(id)a3 bundle:(id)a4
{
  v5 = [ISDefaults sharedInstance:a3];
  if ([v5 isSolariumEnabled])
  {
    [(ISResourceProvider *)self suggestedRecipe];
  }

  return 0;
}

- (BOOL)_findTextResourceWithIconDictionary:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"UTTypeIconText";
  v12[1] = @"CFBundleIconText";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v12 count:2];
  v7 = [v5 _IF_stringForKeys:v6];

  if (v7)
  {
    v8 = [v7 uppercaseString];
    v9 = [(ISResourceProvider *)self resourcesByResourceKey];
    [v9 setObject:v8 forKeyedSubscript:@"kISTextResourceKey"];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7 != 0;
}

- (void)setPlatformWithBundle:(id)a3
{
  v5 = a3;
  if ([v5 platform])
  {
    -[ISResourceProvider setPlatform:](self, "setPlatform:", [v5 platform]);
  }

  else
  {
    v4 = +[ISPlatformInfo sharedInstance];
    -[ISResourceProvider setPlatform:](self, "setPlatform:", [v4 nativePlatform]);
  }
}

- (void)configureProviderFromDescriptor:(id)a3
{
  v18 = a3;
  [(ISResourceProvider *)self resolveIconResource];
  v4 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v18 layoutDirection] == 4 && -[ISResourceProvider _isAppleResource](self, "_isAppleResource"))
    {
      [v5 setLayoutDirection:4];
    }

    if ([(ISResourceProvider *)self allowNonDefaultAppearances])
    {
      [v5 setAppearance:{objc_msgSend(v18, "appearance")}];
      [v5 setAppearanceVariant:{objc_msgSend(v18, "appearanceVariant")}];
      v6 = [v18 tintColor];
      [v5 setTintColor:v6];
    }
  }

  v7 = [[ISCompositingDescriptor alloc] initWithImageDescriptor:v18];
  v8 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(ISResourceProvider *)self iconResource];
    -[ISCompositingDescriptor setPlatform:](v7, "setPlatform:", [v10 platform]);
    [v10 setCompositingDescriptor:v7];
  }

  v11 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [(ISResourceProvider *)self iconResource];
    [v13 setAppearance:{objc_msgSend(v18, "appearance")}];
    [v13 setAppearanceVariant:{objc_msgSend(v18, "appearanceVariant")}];
    v14 = [v18 tintColor];
    [v13 setTintColor:v14];

    [v13 setBackground:{objc_msgSend(v18, "background")}];
    [v13 setShouldApplyMask:{objc_msgSend(v18, "shouldApplyMask")}];
    [v13 setLanguageDirection:{objc_msgSend(v18, "languageDirection")}];
    [v13 setPlatformStyle:{objc_msgSend(v18, "platformStyle")}];
    [v13 setShape:{objc_msgSend(v18, "shape")}];
  }

  v15 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [(ISResourceProvider *)self iconResource];
    [v17 setCompositingDescriptor:v7];
  }
}

+ (id)resourceWithRecord:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  if (!v5 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v6 = [v5 iconDictionary];
  if ([v6 count])
  {
    if (a4 & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v7 = [v5 declaringBundleRecord];
      v8 = [v7 URL];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [v5 iconResourceBundleURL];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_15;
        }

        v10 = [v5 URL];
      }

      v8 = v10;
    }

LABEL_15:
    v9 = [ISResourceProvider resourceWithBundleURL:v8 iconDictionary:v6 options:a4];

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:

LABEL_17:

  return v9;
}

+ (id)resourceWithBundleURL:(id)a3 iconDictionary:(id)a4 options:(unint64_t)a5
{
  v61[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 _IF_dictionaryForKey:0x1F1A4EC00];
  if (v9)
  {
    v10 = [ISGraphicSymbolResource graphicSymbolResourceWithRecipe:v9 url:v7];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      goto LABEL_56;
    }
  }

  v61[0] = @"CFBundleIconName";
  v61[1] = @"UTTypeIconName";
  v61[2] = @"UTTypeGlyphName";
  v61[3] = @"CFBundleGlyphName";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
  v14 = [v8 _IF_stringForKeys:v13];

  if (v14)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:v7];
    v15 = [v12 assetCatalogURL];
    v52 = 0;
    v11 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:isAppLike:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:isAppLike:error:", v15, v14, [v12 platform], (a5 >> 2) & 1, &v52);

    if (v11)
    {
      [(ISIconStackCompositeResource *)v11 isPrecomposed];
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
  v17 = [v8 _IF_stringForKeys:v16];

  if (v17 && ([v17 pathExtension], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"icns"), v18, (v19 & 1) == 0))
  {
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:v7];
    }

    v27 = [v12 assetCatalogURL];
    v51 = 0;
    v11 = +[ISAssetCatalogResource assetCatalogResourceWithURL:imageName:platform:isAppLike:error:](ISAssetCatalogResource, "assetCatalogResourceWithURL:imageName:platform:isAppLike:error:", v27, v17, [v12 platform], (a5 >> 2) & 1, &v51);
    v28 = v51;

    if (v11)
    {
      [(ISIconStackCompositeResource *)v11 isPrecomposed];
    }

    else
    {
      v43 = _ISDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v55 = v7;
        v56 = 2112;
        v57 = v17;
        v58 = 2112;
        v59 = v28;
        _os_log_debug_impl(&dword_1A77B8000, v43, OS_LOG_TYPE_DEBUG, "Failed to find resource: %@ : %@ with error: %@", buf, 0x20u);
      }
    }

    if (v11)
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
  v21 = [v8 _IF_stringForKeys:v20];

  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = [v21 pathExtension];
  v23 = [v22 length];

  if (v23)
  {
    goto LABEL_15;
  }

  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:v7];
  }

  v30 = [v12 URLForResource:v21 withExtension:@"pdf"];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_alloc(MEMORY[0x1E69A8998]) initWithURL:v30];
    v11 = [v32 firstPage];

    if (v11)
    {
      goto LABEL_56;
    }
  }

  else
  {
LABEL_15:
  }

  v24 = [v8 _IF_arrayForKey:@"CFBundleIconFiles"];
  if (![v24 count])
  {
    v29 = [v8 _IF_arrayForKey:@"UTTypeIconFiles"];

    v24 = v29;
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_31:
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:v7];
    goto LABEL_18;
  }

  if (!v12)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ([v24 count] && v12)
  {
    v11 = [MEMORY[0x1E69A8990] imageBagWithResourcesNames:v24 fromBundle:v12];

    if (v11)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v25 = [v8 _IF_stringForKey:@"CFBundleIconFile"];
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
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:v7];
    if (!v26)
    {
      goto LABEL_39;
    }
  }

  v33 = [v26 stringByDeletingPathExtension];
  v11 = [MEMORY[0x1E69A8990] imageBagWithResourcesNamed:v33 fromBundle:v12];

  if (v11)
  {
    goto LABEL_56;
  }

LABEL_39:
  v34 = [v8 _IF_stringForKey:@"CFBundleIconFile"];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:v7];
  }

  v35 = [v34 stringByDeletingPathExtension];
  v36 = [v34 pathExtension];
  v37 = v36;
  if (v35 && [v36 length] && (objc_msgSend(v12, "URLForResource:withExtension:", v35, v37), (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v39 = v38;
    v11 = [MEMORY[0x1E69A8988] imageWithContentsOfURL:v38];
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:v7];
    }

    v40 = MEMORY[0x1E69A8990];
    v41 = legacyResourceNames();
    v14 = [v40 imageBagWithResourcesNames:v41 fromBundle:v12];

    if (v14)
    {
      v42 = v14;
    }

    v11 = v14;
    goto LABEL_7;
  }

LABEL_56:

  v44 = +[ISDefaults sharedInstance];
  v45 = [v44 safeBoot];
  if ((a5 & 8) != 0 && (v45 & 1) == 0)
  {
    if (v11)
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

          v44 = v11;
          v11 = -[ISIconStackCompositeResource initWithResource:platform:]([ISIconStackCompositeResource alloc], "initWithResource:platform:", v11, [v12 platform]);
        }
      }
    }
  }

  if (!v11)
  {
    v47 = _ISDefaultLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v50 = [v7 path];
      *buf = 138412802;
      v55 = v50;
      v56 = 2112;
      v57 = v8;
      v58 = 2048;
      v59 = a5;
      _os_log_error_impl(&dword_1A77B8000, v47, OS_LOG_TYPE_ERROR, "Failed to find resource for %@. IconDictionary: %@ - %lu", buf, 0x20u);
    }

    v11 = 0;
  }

LABEL_67:

  v48 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)placeholderIconResourceProvider
{
  v2 = +[ISStaticResources sharedInstance];
  v3 = [v2 placeholderIconResource];

  v4 = [[ISResourceProvider alloc] initWithResource:v3 templateResource:0];
  v5 = objc_alloc_init(ISGenericRecipe);
  [(ISResourceProvider *)v4 setSuggestedRecipe:v5];

  [(ISResourceProvider *)v4 setAllowNonDefaultAppearances:1];

  return v4;
}

- (BOOL)isPrecomposed
{
  v2 = [(ISResourceProvider *)self iconResource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isPrecomposed];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 0;
    }

    else
    {
      objc_opt_class();
      v3 = objc_opt_isKindOfClass() ^ 1;
    }
  }

  return v3 & 1;
}

@end