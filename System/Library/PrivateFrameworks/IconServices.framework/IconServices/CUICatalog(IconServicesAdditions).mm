@interface CUICatalog(IconServicesAdditions)
+ (CFURLRef)_IS_assetCatalogURLWithBundleURL:()IconServicesAdditions;
+ (__CFString)_IS_appearanceStringFromAppearance:()IconServicesAdditions;
+ (id)_IS_appearanceNameFromAppearance:()IconServicesAdditions platform:;
+ (id)_IS_coreGlyphsBundleURL;
- (BOOL)_IS_possibleIconStackExistsWithName:()IconServicesAdditions platform:;
- (BOOL)_IS_possibleLayerStackExistsWithName:()IconServicesAdditions platform:;
- (BOOL)_IS_possibleMultisizedImageExistsWithName:()IconServicesAdditions platform:;
- (id)_IS_iconStackWithName:()IconServicesAdditions scale:locale:platform:appearance:;
- (id)_IS_layerStackWithName:()IconServicesAdditions scale:layoutDirection:softCheck:platform:;
- (id)_IS_multisizedImageWithName:()IconServicesAdditions size:scale:layoutDirection:platform:appearance:;
- (id)idiomsForPlatform:()IconServicesAdditions;
- (uint64_t)nativeIdiom;
- (uint64_t)subtypeForPlatform:()IconServicesAdditions;
@end

@implementation CUICatalog(IconServicesAdditions)

- (uint64_t)nativeIdiom
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = +[ISDeviceInfo sharedInstance];
  deviceClass = [v0 deviceClass];

  v2 = deviceClass - 1;
  if (deviceClass - 1) < 0xB && ((0x52Fu >> v2))
  {
    result = qword_1A782D168[v2];
  }

  else
  {
    v4 = _ISDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = deviceClass;
      _os_log_impl(&dword_1A77B8000, v4, OS_LOG_TYPE_DEFAULT, "Unknown device class: %d", v6, 8u);
    }

    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_IS_coreGlyphsBundleURL
{
  if (_IS_coreGlyphsBundleURL_onceToken != -1)
  {
    +[CUICatalog(IconServicesAdditions) _IS_coreGlyphsBundleURL];
  }

  v1 = _IS_coreGlyphsBundleURL_url;

  return v1;
}

+ (CFURLRef)_IS_assetCatalogURLWithBundleURL:()IconServicesAdditions
{
  v3 = a3;
  if (v3 && (Unique = _CFBundleCreateUnique()) != 0)
  {
    v5 = Unique;
    v6 = CFBundleCopyResourceURL(Unique, @"Assets", @"car", 0);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (__CFString)_IS_appearanceStringFromAppearance:()IconServicesAdditions
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return @"ISAppearanceTintable";
    }

    if (a3 == 0xFFFF)
    {
      return @"UIAppearanceAny";
    }
  }

  else
  {
    if (!a3)
    {
      return @"UIAppearanceLight";
    }

    if (a3 == 1)
    {
      return @"UIAppearanceDark";
    }
  }

  v4 = _ISDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    +[CUICatalog(IconServicesAdditions) _IS_appearanceStringFromAppearance:];
  }

  return 0;
}

+ (id)_IS_appearanceNameFromAppearance:()IconServicesAdditions platform:
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = +[ISPlatformInfo sharedInstance];
  nativePlatform = [v6 nativePlatform];

  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = nativePlatform == 1;
  }

  v9 = v8;
  if (v8)
  {
    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CUICatalog(IconServicesAdditions) _IS_appearanceNameFromAppearance:platform:];
    }
  }

  else
  {
    v11 = a4 == 1;
    v12 = (a4 & 0x3C) != 0;
    if (a4 || (nativePlatform & 0x3C) == 0)
    {
      goto LABEL_16;
    }

    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CUICatalog(IconServicesAdditions) _IS_appearanceNameFromAppearance:platform:];
    }
  }

  v12 = v9 ^ 1;

  v11 = v9;
LABEL_16:
  if (a4 == 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (a3 == 2)
  {
    if (v11)
    {
      v39 = @"ISAppearanceTintable";
      v40 = @"NSAppearanceNameAqua";
      v41 = @"NSAppearanceNameSystem";
      v14 = MEMORY[0x1E695DEC8];
      v15 = &v39;
      goto LABEL_31;
    }

    if (v13)
    {
      v36 = @"ISAppearanceTintable";
      v37 = @"UIAppearanceLight";
      v38 = @"UIAppearanceAny";
      v14 = MEMORY[0x1E695DEC8];
      v15 = &v36;
      goto LABEL_31;
    }

    v18 = _ISDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CUICatalog(IconServicesAdditions) _IS_appearanceNameFromAppearance:platform:];
    }

    v31 = @"ISAppearanceTintable";
    v32 = @"NSAppearanceNameAqua";
    v33 = @"NSAppearanceNameSystem";
    v34 = @"UIAppearanceLight";
    v35 = @"UIAppearanceAny";
    v14 = MEMORY[0x1E695DEC8];
    v15 = &v31;
    v16 = 5;
  }

  else
  {
    if (a3 != 1)
    {
      if (v11)
      {
        v29 = @"NSAppearanceNameAqua";
        v30 = @"NSAppearanceNameSystem";
        v14 = MEMORY[0x1E695DEC8];
        v15 = &v29;
      }

      else
      {
        if (!v13)
        {
          v19 = _ISDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            +[CUICatalog(IconServicesAdditions) _IS_appearanceNameFromAppearance:platform:];
          }

          v23 = @"NSAppearanceNameAqua";
          v24 = @"NSAppearanceNameSystem";
          v25 = @"UIAppearanceLight";
          v26 = @"UIAppearanceAny";
          v14 = MEMORY[0x1E695DEC8];
          v15 = &v23;
          v16 = 4;
          goto LABEL_44;
        }

        v27 = @"UIAppearanceLight";
        v28 = @"UIAppearanceAny";
        v14 = MEMORY[0x1E695DEC8];
        v15 = &v27;
      }

      v16 = 2;
      goto LABEL_44;
    }

    if (v11)
    {
      v51 = @"NSAppearanceNameDarkAqua";
      v52 = @"NSAppearanceNameAqua";
      v53 = @"NSAppearanceNameSystem";
      v14 = MEMORY[0x1E695DEC8];
      v15 = &v51;
LABEL_31:
      v16 = 3;
      goto LABEL_44;
    }

    if (v13)
    {
      v48 = @"UIAppearanceDark";
      v49 = @"UIAppearanceLight";
      v50 = @"UIAppearanceAny";
      v14 = MEMORY[0x1E695DEC8];
      v15 = &v48;
      goto LABEL_31;
    }

    v17 = _ISDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[CUICatalog(IconServicesAdditions) _IS_appearanceNameFromAppearance:platform:];
    }

    v42 = @"NSAppearanceNameDarkAqua";
    v43 = @"NSAppearanceNameAqua";
    v44 = @"NSAppearanceNameSystem";
    v45 = @"UIAppearanceDark";
    v46 = @"UIAppearanceLight";
    v47 = @"UIAppearanceAny";
    v14 = MEMORY[0x1E695DEC8];
    v15 = &v42;
    v16 = 6;
  }

LABEL_44:
  v20 = [v14 arrayWithObjects:v15 count:{v16, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53}];
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_IS_multisizedImageWithName:()IconServicesAdditions size:scale:layoutDirection:platform:appearance:
{
  v70 = *MEMORY[0x1E69E9840];
  v39 = a6;
  v16 = [self subtypeForPlatform:a8];
  selfCopy = self;
  v17 = [self idiomsForPlatform:a8];
  v35 = [MEMORY[0x1E6999368] _IS_appearanceNameFromAppearance:a9 platform:a8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v17;
  v34 = [obj countByEnumeratingWithState:&v44 objects:v69 count:16];
  v18 = 0;
  if (v34)
  {
    v33 = *v45;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v45 != v33)
      {
        objc_enumerationMutation(obj);
      }

      if (v18)
      {
        break;
      }

      integerValue = [*(*(&v44 + 1) + 8 * v19) integerValue];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v37 = v35;
      v21 = [v37 countByEnumeratingWithState:&v40 objects:v68 count:16];
      if (v21)
      {
        v22 = v21;
        v36 = v19;
        v23 = *v41;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(v37);
            }

            v25 = *(*(&v40 + 1) + 8 * i);
            null = [MEMORY[0x1E695DFB0] null];

            if (v25 == null)
            {

              v25 = 0;
            }

            v18 = [selfCopy iconImageWithName:v39 scaleFactor:integerValue deviceIdiom:v16 deviceSubtype:1 displayGamut:a7 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:a2 desiredSize:a3 appearanceName:{0, v25}];
            v27 = _ISDefaultLog();
            v28 = v27;
            if (v18)
            {
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                appearance = [v18 appearance];
                *buf = 138414594;
                v49 = v39;
                v50 = 2048;
                v51 = a4;
                v52 = 1024;
                v53 = integerValue;
                v54 = 1024;
                v55 = v16;
                v56 = 1024;
                v57 = 1;
                v58 = 1024;
                v59 = a7;
                v60 = 2048;
                v61 = a2;
                v62 = 2048;
                v63 = a3;
                v64 = 2112;
                v65 = v25;
                v66 = 2112;
                v67 = appearance;
                _os_log_debug_impl(&dword_1A77B8000, v28, OS_LOG_TYPE_DEBUG, "Found catalog image with query info name:%@ scaleFactor:%f deviceIdiom:%d deviceSubtype:%d displayGamut:%d layoutDirection:%d desiredSize:%f,%f appearanceName:%@]. Resolved appearance: %@", buf, 0x56u);
              }

              goto LABEL_23;
            }

            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138414338;
              v49 = v39;
              v50 = 2048;
              v51 = a4;
              v52 = 1024;
              v53 = integerValue;
              v54 = 1024;
              v55 = v16;
              v56 = 1024;
              v57 = 1;
              v58 = 1024;
              v59 = a7;
              v60 = 2048;
              v61 = a2;
              v62 = 2048;
              v63 = a3;
              v64 = 2112;
              v65 = v25;
              _os_log_impl(&dword_1A77B8000, v28, OS_LOG_TYPE_DEFAULT, "Failed to find named image for name:%@ scaleFactor:%f deviceIdiom:%d deviceSubtype:%d displayGamut:%d layoutDirection:%d desiredSize:%f,%f appearanceName:%@]", buf, 0x4Cu);
            }
          }

          v22 = [v37 countByEnumeratingWithState:&v40 objects:v68 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }

        v18 = 0;
LABEL_23:
        v19 = v36;
      }

      else
      {
        v18 = 0;
      }

      if (++v19 == v34)
      {
        v34 = [obj countByEnumeratingWithState:&v44 objects:v69 count:16];
        if (v34)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_IS_layerStackWithName:()IconServicesAdditions scale:layoutDirection:softCheck:platform:
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = [self subtypeForPlatform:a7];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [self idiomsForPlatform:a7];
  v14 = [obj countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v27 = *v29;
    v25 = v13;
    if (a6)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v29 != v27)
      {
        objc_enumerationMutation(obj);
      }

      integerValue = [*(*(&v28 + 1) + 8 * v17) integerValue];
      v19 = a6 ? 0 : integerValue;
      v20 = [self namedLookupWithName:v12 scaleFactor:v19 deviceIdiom:v16 deviceSubtype:1 displayGamut:a5 layoutDirection:0 sizeClassHorizontal:a2 sizeClassVertical:0];
      if (v20)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      v21 = a6;
      v22 = _ISDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413570;
        v33 = v12;
        v34 = 2048;
        v35 = a2;
        v36 = 1024;
        v37 = v19;
        v38 = 1024;
        v39 = v25;
        v40 = 1024;
        v41 = 1;
        v42 = 1024;
        v43 = a5;
        _os_log_impl(&dword_1A77B8000, v22, OS_LOG_TYPE_DEFAULT, "Failed to find layer stack for name:%@ scaleFactor:%f deviceIdiom:%d deviceSubtype:%d displayGamut:%d layoutDirection:%d]", buf, 0x2Eu);
      }

      ++v17;
      a6 = v21;
      if (v15 == v17)
      {
        v15 = [obj countByEnumeratingWithState:&v28 objects:v44 count:16];
        if (v15)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_IS_iconStackWithName:()IconServicesAdditions scale:locale:platform:appearance:
{
  v54 = *MEMORY[0x1E69E9840];
  v41 = a4;
  v40 = a5;
  v12 = [self idiomsForPlatform:a6];
  v13 = [self subtypeForPlatform:a6];
  v14 = [MEMORY[0x1E6999368] _IS_appearanceNameFromAppearance:a7 platform:a6];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = v12;
  v35 = [v15 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v35)
  {
    v16 = *v47;
    v37 = v15;
    v38 = v14;
    v34 = *v47;
    do
    {
      v17 = 0;
      do
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v15);
        }

        v36 = v17;
        integerValue = [*(*(&v46 + 1) + 8 * v17) integerValue];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        obj = v14;
        v19 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v43;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v43 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v42 + 1) + 8 * i);
              null = [MEMORY[0x1E695DFB0] null];
              if (v23 == null)
              {
                v25 = 0;
              }

              else
              {
                v25 = v23;
              }

              v26 = v25;

              v27 = [self iconLayerStackWithName:v41 scaleFactor:integerValue deviceIdiom:v13 deviceSubtype:1 displayGamut:v26 appearanceName:v40 locale:a2];
              v28 = _ISDefaultLog();
              v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
              if (v27)
              {
                if (v29)
                {
                  v33 = __92__CUICatalog_IconServicesAdditions___IS_iconStackWithName_scale_locale_platform_appearance___block_invoke(a2, v29, @"Found icon stack with query info", v41, integerValue, v13, 1, v40, v26, v27);
                  *buf = 138412290;
                  v51 = v33;
                  _os_log_debug_impl(&dword_1A77B8000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v15 = v37;
                v14 = v38;
                goto LABEL_26;
              }

              if (v29)
              {
                v30 = __92__CUICatalog_IconServicesAdditions___IS_iconStackWithName_scale_locale_platform_appearance___block_invoke(a2, v29, @"Failed to find icon stack for", v41, integerValue, v13, 1, v40, v26, 0);
                *buf = 138412290;
                v51 = v30;
                _os_log_debug_impl(&dword_1A77B8000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }

            v20 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v17 = v36 + 1;
        v15 = v37;
        v14 = v38;
        v16 = v34;
      }

      while (v36 + 1 != v35);
      v27 = 0;
      v35 = [v37 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v35);
  }

  else
  {
    v27 = 0;
  }

LABEL_26:

  v31 = *MEMORY[0x1E69E9840];

  return v27;
}

- (BOOL)_IS_possibleLayerStackExistsWithName:()IconServicesAdditions platform:
{
  v4 = [self _IS_layerStackWithName:a3 scale:5 layoutDirection:1 softCheck:a4 platform:0.0];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_IS_possibleMultisizedImageExistsWithName:()IconServicesAdditions platform:
{
  v6 = a3;
  if ([self imageExistsWithName:v6])
  {
    v7 = [self _IS_multisizedImageWithName:v6 size:4 scale:a4 layoutDirection:*MEMORY[0x1E695F060] platform:{*(MEMORY[0x1E695F060] + 8), 0.0}];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_IS_possibleIconStackExistsWithName:()IconServicesAdditions platform:
{
  v4 = [self _IS_iconStackWithName:a3 scale:0 locale:a4 platform:0 appearance:0.0];
  v5 = v4 != 0;

  return v5;
}

- (id)idiomsForPlatform:()IconServicesAdditions
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CUICatalog_IconServicesAdditions__idiomsForPlatform___block_invoke;
  v11[3] = &unk_1E77C6E58;
  v11[4] = self;
  v4 = MEMORY[0x1AC55B6D0](v11);
  v5 = v4[2](v4, a3);
  if (![v5 count])
  {
    v6 = +[ISPlatformInfo sharedInstance];
    v7 = v4[2](v4, [v6 nativePlatform]);

    if ([v7 count])
    {
      v5 = v7;
    }

    else
    {

      v5 = &unk_1F1A658B0;
    }
  }

  if (idiomsForPlatform__onceToken != -1)
  {
    [CUICatalog(IconServicesAdditions) idiomsForPlatform:];
  }

  if (idiomsForPlatform__checkMarketingIdiom == 1)
  {
    v8 = [&unk_1F1A658C8 arrayByAddingObjectsFromArray:v5];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (uint64_t)subtypeForPlatform:()IconServicesAdditions
{
  v4 = +[ISDeviceInfo sharedInstance];
  deviceSubtype = [v4 deviceSubtype];

  v6 = +[ISPlatformInfo sharedInstance];
  nativePlatform = [v6 nativePlatform];

  v8 = __ROR8__(a3 - 4, 2);
  v9 = 484;
  if (a3 != 8)
  {
    v9 = 0;
  }

  v10 = 2778;
  if (a3 != 4)
  {
    v10 = v9;
  }

  if (((1 << v8) & 0x8B) == 0)
  {
    v10 = deviceSubtype;
  }

  if (v8 > 7)
  {
    v10 = deviceSubtype;
  }

  if (nativePlatform == 1)
  {
    return v10;
  }

  else
  {
    return deviceSubtype;
  }
}

@end