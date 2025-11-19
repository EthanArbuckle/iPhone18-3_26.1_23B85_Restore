@interface ISRecordResourceProvider
- (BOOL)_findTextResourceWithIconDictionary:(id)a3;
- (BOOL)_isApp;
- (BOOL)_isAppClip;
- (BOOL)_isAppLike;
- (BOOL)_isAppleResource;
- (BOOL)_isFolder;
- (BOOL)_shouldTreatLikeApp;
- (BOOL)iconStackResourcesAllowed;
- (BOOL)shouldUseFolderRecipe;
- (BOOL)treatLikeSymbol;
- (ISRecordResourceProvider)initWithRecord:(id)a3 fileExtension:(id)a4 options:(unint64_t)a5;
- (id)description;
- (id)iconResource;
- (id)resourceNamed:(id)a3;
- (void)_determineRecipe;
- (void)assignLayerResources;
- (void)configureProviderFromDescriptor:(id)a3;
- (void)resolveResources;
- (void)setPlatformWithBundle:(id)a3;
@end

@implementation ISRecordResourceProvider

- (id)iconResource
{
  v6.receiver = self;
  v6.super_class = ISRecordResourceProvider;
  v3 = [(ISResourceProvider *)&v6 iconResource];
  if (!v3)
  {
    [(ISRecordResourceProvider *)self resolveResources];
    v5.receiver = self;
    v5.super_class = ISRecordResourceProvider;
    v3 = [(ISResourceProvider *)&v5 iconResource];
  }

  return v3;
}

- (void)resolveResources
{
  if (![(ISResourceProvider *)self resolved])
  {
    [(ISResourceProvider *)self setResolved:1];
    record = self->_record;
    if (objc_opt_respondsToSelector())
    {
      v4 = [(LSRecord *)self->_record iconResourceBundleURL];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v5 = 0;
LABEL_8:
        v6 = [objc_alloc(MEMORY[0x1E69A8960]) initWithURL:v5];
        if ([(ISRecordResourceProvider *)self iconStackResourcesAllowed])
        {
          v7 = 8;
        }

        else
        {
          v7 = 0;
        }

        if ([(ISRecordResourceProvider *)self _shouldTreatLikeApp])
        {
          v8 = v7 | 4;
        }

        else
        {
          v8 = v7;
        }

        v9 = [(LSRecord *)self->_record iconDictionary];
        v53 = v5;
        v10 = [ISResourceProvider resourceWithBundleURL:v5 iconDictionary:v9 options:v8];
        v11 = [(ISResourceProvider *)self resourcesByResourceKey];
        [v11 setObject:v10 forKeyedSubscript:?];

        v12 = +[ISDefaults sharedInstance];
        v13 = [v12 isSolariumEnabled];

        if (v13)
        {
          [(ISRecordResourceProvider *)self assignLayerResources];
        }

        v14 = self->_record;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        [(ISRecordResourceProvider *)self _findTextResourceWithIconDictionary:v9];
        [(ISRecordResourceProvider *)self setPlatformWithBundle:v6];
        v16 = [(ISRecordResourceProvider *)self record];
        v17 = [(ISResourceProvider *)self _findBadgeResourceWithIconDictionary:v9 bundle:v6 record:v16];

        v18 = [(ISResourceProvider *)self _findBackgroundResourceWithIconDictionary:v9 bundle:v6];
        if (!v17 && !v18)
        {
          v19 = [(ISResourceProvider *)self badgeResource];

          if (!v19)
          {
            if ((isKindOfClass & 1) == 0 || (v20 = v10) == 0)
            {
              v21 = self->_record;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = [(LSRecord *)self->_record declaringBundleRecord];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = [ISResourceProvider resourceWithRecord:v22 options:0];
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v20 = 0;
              }
            }

            v23 = [(ISResourceProvider *)self resourcesByResourceKey];
            [v23 setObject:v20 forKeyedSubscript:@"kISBadgeResourceKey"];
          }
        }

        [(ISRecordResourceProvider *)self _determineRecipe];
        v24 = [(ISResourceProvider *)self _findCustomRecipeWithIconDictionary:v9 bundle:v6];
        v25 = [(ISResourceProvider *)self resourcesByResourceKey];
        v52 = v10;
        if (![v25 count] && !v24)
        {
          v26 = self->_record;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [(LSRecord *)self->_record containingBundleRecord];
            objc_opt_class();
            v28 = objc_opt_isKindOfClass();

            if ((v28 & 1) == 0)
            {
LABEL_36:
              v33 = [(ISResourceProvider *)self resourcesByResourceKey];
              if ([v33 count] != 0 || v24 || (v34 = self->_record, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {

                v36 = v53;
              }

              else
              {
                v35 = [(LSRecord *)self->_record isDeclared];

                v36 = v53;
                if (v35)
                {
                  v37 = [(LSRecord *)self->_record iconDictionary];
                  v38 = [v37 _IF_stringForKey:@"UTTypeSymbolName"];

                  if (v38)
                  {
                    v39 = self->_record;
                    v54[0] = MEMORY[0x1E69E9820];
                    v54[1] = 3221225472;
                    v54[2] = __44__ISRecordResourceProvider_resolveResources__block_invoke;
                    v54[3] = &unk_1E77C6758;
                    v55 = v53;
                    v56 = v38;
                    v57 = self;
                    [(LSRecord *)v39 enumeratePedigreeWithBlock:v54];
                  }
                }
              }

              if ([(ISRecordResourceProvider *)self _isAppLike])
              {
                [(ISResourceProvider *)self setResourceType:1];
              }

              if ([(ISRecordResourceProvider *)self _isAppClip])
              {
                v40 = objc_alloc_init(ISiOSAppClipRecipe);
                [(ISResourceProvider *)self setSuggestedRecipe:v40];
              }

              v41 = [(ISResourceProvider *)self resourcesByResourceKey];
              v42 = [v41 count] != 0 || v24;

              if (v42)
              {
                goto LABEL_59;
              }

              v43 = self->_record;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v44 = MEMORY[0x1E6982CB0];
LABEL_57:
                v49 = [*v44 identifier];
                v50 = [ISResourceProvider resourceWithTypeIdentifier:v49 options:0];
                v51 = [(ISResourceProvider *)self resourcesByResourceKey];
                [v51 setObject:v50 forKeyedSubscript:@"kISPrimaryResourceKey"];

                goto LABEL_58;
              }

              v45 = self->_record;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v46 = [ISResourceProvider resourceWithTypeIdentifier:@"com.apple.application-and-system-extension" options:0];
              }

              else
              {
                v47 = self->_record;
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 _IF_dictionaryForKey:0x1F1A4EC00], v48 = objc_claimAutoreleasedReturnValue(), v48, !v48))
                {
                  v44 = MEMORY[0x1E6982D60];
                  goto LABEL_57;
                }

                v46 = +[ISGraphicSymbolResource defaultResource];
              }

              v49 = v46;
              v50 = [(ISResourceProvider *)self resourcesByResourceKey];
              [v50 setObject:v49 forKeyedSubscript:@"kISPrimaryResourceKey"];
LABEL_58:

LABEL_59:
              return;
            }

            v25 = [(LSRecord *)self->_record containingBundleRecord];
            v29 = [v25 URL];
            v30 = [v25 iconDictionary];
            v31 = [ISResourceProvider resourceWithBundleURL:v29 iconDictionary:v30 options:v8];

            if (v31)
            {
              v32 = [(ISResourceProvider *)self resourcesByResourceKey];
              [v32 setObject:v31 forKeyedSubscript:@"kISPrimaryResourceKey"];
            }
          }
        }

        goto LABEL_36;
      }

      v4 = [(LSRecord *)self->_record URL];
    }

    v5 = v4;
    goto LABEL_8;
  }
}

- (BOOL)_shouldTreatLikeApp
{
  if ([(ISRecordResourceProvider *)self _isApp])
  {
    return 1;
  }

  return [(ISRecordResourceProvider *)self _isAppLike];
}

- (BOOL)_isApp
{
  v2 = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_isAppLike
{
  v3 = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(ISRecordResourceProvider *)self record];
    v5 = [v4 conformsToTypeIdentifier:@"com.apple.application-icon"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)assignLayerResources
{
  v29[3] = *MEMORY[0x1E69E9840];
  v3 = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(ISRecordResourceProvider *)self record];

    if (v4 && [(ISRecordResourceProvider *)self _isFolder])
    {
      v28 = v4;
      v5 = MEMORY[0x1E69636B0];
      v6 = [*MEMORY[0x1E6982DC8] identifier];
      v7 = [v5 typeRecordWithIdentifier:v6];

      v27 = v7;
      v8 = [v7 iconDictionary];
      v9 = [v8 _IF_dictionaryForKey:@"ISLayers"];
      v10 = [v9 _IF_arrayForKey:@"ISTypeIdentifiers"];

      if (v10 && [v10 count])
      {
        v11 = [(ISResourceProvider *)self resourcesByResourceKey];
        [v11 setObject:0 forKeyedSubscript:@"kISPrimaryResourceKey"];
      }

      v29[0] = @"kISPrimaryResourceKey";
      v29[1] = @"kISSecondaryResourceKey";
      v29[2] = @"kISTertiaryResourceKey";
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
      if ([v10 count])
      {
        v13 = 0;
        while (1)
        {
          v14 = MEMORY[0x1E69636B0];
          v15 = [v10 objectAtIndexedSubscript:v13];
          v16 = [v14 typeRecordWithIdentifier:v15];

          if (![v16 conformsToTypeIdentifier:@"com.apple.icon-package-attribute.optional"])
          {
            break;
          }

          v17 = [(ISResourceProvider *)self iconConfig];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_15;
          }

          v18 = [(ISResourceProvider *)self iconConfig];
          v19 = [v18 folderEmpty];

          if ((v19 & 1) == 0)
          {
            break;
          }

LABEL_16:

          if ([v10 count] <= ++v13)
          {
            goto LABEL_17;
          }
        }

        v20 = [v16 iconResourceBundleURL];
        v21 = [v16 iconDictionary];
        v17 = [ISResourceProvider resourceWithBundleURL:v20 iconDictionary:v21 options:0];

        v22 = [v12 count];
        v23 = v13;
        if (v22 <= v13)
        {
          v23 = [v12 count] - 1;
        }

        v24 = [v12 objectAtIndexedSubscript:v23];
        v25 = [(ISResourceProvider *)self resourcesByResourceKey];
        [v25 setObject:v17 forKeyedSubscript:v24];

LABEL_15:
        goto LABEL_16;
      }

LABEL_17:

      v4 = v28;
    }
  }

  else
  {

    v4 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_determineRecipe
{
  v3 = +[ISDefaults sharedInstance];
  v4 = [v3 isSolariumEnabled];

  if (!v4)
  {
    return;
  }

  v5 = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return;
  }

  v18 = [(ISRecordResourceProvider *)self record];
  if ([(ISRecordResourceProvider *)self shouldUseFolderRecipe])
  {
    v7 = objc_opt_new();
    v8 = [(ISResourceProvider *)self resourcesByResourceKey];
    v9 = [v8 objectForKey:@"kISSecondaryResourceKey"];
    if (v9)
    {
    }

    else
    {
      v10 = [(ISResourceProvider *)self resourcesByResourceKey];
      v11 = [v10 objectForKey:@"kISTertiaryResourceKey"];

      if (!v11)
      {
        [v7 setDisableShadow:1];
      }
    }

    v12 = [(ISResourceProvider *)self iconConfig];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }

    v14 = [(ISResourceProvider *)self iconConfig];
    if ([v14 hasTint])
    {
      v15 = [*MEMORY[0x1E6982DC8] identifier];
      if ([v18 conformsToTypeIdentifier:v15])
      {

LABEL_14:
        v17 = [v14 resolvedTintColorForAppearance:0];
        [v7 setTintColor:v17];

        goto LABEL_15;
      }

      v16 = [v18 conformsToTypeIdentifier:@"com.apple.icon-package-attribute.tintable"];

      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_15:

LABEL_16:
    [(ISResourceProvider *)self setSuggestedRecipe:v7];
  }
}

- (BOOL)iconStackResourcesAllowed
{
  v3 = +[ISDefaults sharedInstance];
  v4 = [v3 iconStackAppIconsAllowed];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(ISRecordResourceProvider *)self record];
    v7 = [v6 _IS_isMessagesExtension];

    if (v7)
    {
      return 0;
    }
  }

  else
  {
  }

  return [(ISRecordResourceProvider *)self _shouldTreatLikeApp];
}

- (ISRecordResourceProvider)initWithRecord:(id)a3 fileExtension:(id)a4 options:(unint64_t)a5
{
  v40[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ([v9 _is_canProvideIconResources])
  {
    v37.receiver = self;
    v37.super_class = ISRecordResourceProvider;
    v11 = [(ISResourceProvider *)&v37 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_record, a3);
      v13 = [v9 iconDictionary];
      v40[0] = @"UTTypeIconBadgeName";
      v40[1] = @"UTTypeIconText";
      v40[2] = @"UTTypeIconBackgroundName";
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
      v15 = [v13 _IF_stringForKeys:v14];

      if (v15)
      {
        v16 = a5 | 2;
      }

      else
      {
        v16 = a5;
      }

      v34 = v13;
      v17 = [v13 _IF_dictionaryForKey:@"ISDocumentIconConfiguration"];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 _IF_stringForKey:@"ISSymbolName"];
        if (v19)
        {
          v20 = v19;
          v21 = +[ISDefaults sharedInstance];
          v22 = [v21 isSolariumEnabled];

          if (v22)
          {
            v16 |= 0xAuLL;
          }
        }
      }

      v23 = MEMORY[0x1E6963688];
      v39 = v9;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      v25 = [v23 _is_resourceTokenForRecords:v24];

      v35 = 0;
      v36 = 0;
      [MEMORY[0x1E6963688] _is_getSequenceNumber:&v36 andUUID:&v35];
      v26 = v35;
      [(ISResourceProvider *)v12 setLsDatabaseSequenceNumber:v36];
      [(ISResourceProvider *)v12 setLsDatabaseUUID:v26];
      [(ISResourceProvider *)v12 setResourceToken:v25];
      v27 = [v9 persistentIdentifier];
      v38 = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      [(ISResourceProvider *)v12 setSourceRecordIdentifiers:v28];

      [(ISResourceProvider *)v12 setOptions:v16];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = [v9 _IS_platformToIFPlatform];
        if (v29)
        {
          [(ISResourceProvider *)v12 setPlatform:v29];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && ([v9 _IS_allowsArbitraryExtensionAsText] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(v9, "isCoreType") && (+[ISDefaults sharedInstance](ISDefaults, "sharedInstance"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isSolariumEnabled"), v30, v31))
      {
        objc_storeStrong(&v12->_fileExtension, a4);
      }
    }
  }

  else
  {

    v12 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __44__ISRecordResourceProvider_resolveResources__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 iconDictionary];
  v11 = [v6 _IF_dictionaryForKey:0x1F1A4EC00];

  if (v11)
  {
    v7 = [ISGraphicSymbolResource graphicSymbolResourceWithRecipe:v11 url:*(a1 + 32)];
    v8 = v7;
    if (v7)
    {
      [v7 setSymbolName:*(a1 + 40)];
      v9 = [*(a1 + 48) resourcesByResourceKey];
      [v9 setObject:v8 forKeyedSubscript:@"kISPrimaryResourceKey"];

      *a4 = 1;
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (BOOL)_isAppClip
{
  if (![(ISRecordResourceProvider *)self _isApp])
  {
    return 0;
  }

  v3 = [(ISRecordResourceProvider *)self record];
  v4 = [v3 appClipMetadata];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)shouldUseFolderRecipe
{
  if ([(ISRecordResourceProvider *)self _isFolder])
  {
    return 1;
  }

  v4 = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v6 = [(ISRecordResourceProvider *)self record];
  v7 = [v6 conformsToTypeIdentifier:@"com.apple.icon-package.folder"];

  return v7;
}

- (BOOL)_isFolder
{
  v3 = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(ISRecordResourceProvider *)self record];
  v6 = *MEMORY[0x1E6982DC8];
  v7 = [*MEMORY[0x1E6982DC8] identifier];
  v8 = [v5 conformsToTypeIdentifier:v7];

  if (v8)
  {
    v9 = [v5 identifier];
    v10 = [v6 identifier];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v13 = [v5 iconDictionary];
      v14 = [v13 objectForKey:@"ISFolderIconConfiguration"];
      v12 = v14 != 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)configureProviderFromDescriptor:(id)a3
{
  v4 = a3;
  if (![(ISRecordResourceProvider *)self _shouldTreatLikeApp])
  {
    v5 = [(ISResourceProvider *)self suggestedRecipe];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_11;
    }

    if ([v4 appearance] == 1)
    {
    }

    else
    {
      v6 = [v4 appearance];

      if (v6 != 2)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    [(ISResourceProvider *)self setAllowNonDefaultAppearances:1];
    [(ISResourceProvider *)self setAllowAlterationsToResourceArt:1];
    goto LABEL_11;
  }

  if ([v4 appearance] == 1 || objc_msgSend(v4, "appearance") == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  v7.receiver = self;
  v7.super_class = ISRecordResourceProvider;
  [(ISResourceProvider *)&v7 configureProviderFromDescriptor:v4];
}

- (id)resourceNamed:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ISRecordResourceProvider;
  v5 = [(ISResourceProvider *)&v8 resourceNamed:v4];
  if (!v5)
  {
    [(ISRecordResourceProvider *)self resolveResources];
    v7.receiver = self;
    v7.super_class = ISRecordResourceProvider;
    v5 = [(ISResourceProvider *)&v7 resourceNamed:v4];
  }

  return v5;
}

id __34__ISRecordResourceProvider_symbol__block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v2 isCoreType] & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [v2 iconResourceBundleURL];
LABEL_7:
      v4 = v3;
      goto LABEL_9;
    }

    if (objc_opt_respondsToSelector())
    {
      v3 = [v2 URL];
      goto LABEL_7;
    }
  }

  v4 = 0;
LABEL_9:
  v5 = [v2 iconDictionary];
  v11[0] = @"CFBundleSymbolName";
  v11[1] = @"UTTypeSymbolName";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v5 _IF_stringForKeys:v6];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69A89B0]) initWithSymbolName:v7 bundleURL:v4];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)_isAppleResource
{
  record = self->_record;
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && [(LSRecord *)self->_record developerType]== 1;
}

- (void)setPlatformWithBundle:(id)a3
{
  v3.receiver = self;
  v3.super_class = ISRecordResourceProvider;
  [(ISResourceProvider *)&v3 setPlatformWithBundle:a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = ISRecordResourceProvider;
  v4 = [(ISRecordResourceProvider *)&v10 description];
  v5 = [(ISRecordResourceProvider *)self record];
  v6 = [(ISRecordResourceProvider *)self record];
  v7 = [v6 iconDictionary];
  v8 = [v3 stringWithFormat:@"%@ - %@ %@", v4, v5, v7];

  return v8;
}

- (BOOL)_findTextResourceWithIconDictionary:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[ISFolderIconConfiguration alloc] initWithIconDictionary:v4];
  v6 = +[ISDefaults sharedInstance];
  v7 = [v6 isSolariumEnabled];

  if (v7 && ([(ISFolderIconConfiguration *)v5 emoji], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v10 = [(ISFolderIconConfiguration *)v5 emoji];
    v9 = [(ISResourceProvider *)self resourcesByResourceKey];
    [v9 setObject:v10 forKeyedSubscript:@"kISTextResourceKey"];

    LOBYTE(v10) = 1;
  }

  else
  {

    v26[0] = @"UTTypeIconText";
    v26[1] = @"CFBundleIconText";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v12 = [v4 _IF_stringForKeys:v11];
    v13 = [v12 uppercaseString];

    if (v13 && ![v13 isEqual:@"*"] || (-[ISRecordResourceProvider fileExtension](self, "fileExtension"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "uppercaseString"), v15 = objc_claimAutoreleasedReturnValue(), v13, v14, (v13 = v15) != 0))
    {
      if (![(ISRecordResourceProvider *)self _isFolder])
      {
        v16 = [(ISResourceProvider *)self resourcesByResourceKey];
        [v16 setObject:v13 forKeyedSubscript:@"kISTextResourceKey"];
      }
    }

    v17 = [(ISResourceProvider *)self iconConfig];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = [(ISResourceProvider *)self iconConfig];
      v20 = [v19 emoji];

      v21 = +[ISDefaults sharedInstance];
      v22 = [v21 isSolariumEnabled];

      if (v20)
      {
        LODWORD(v10) = v22;
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 == 1)
      {
        v23 = [(ISResourceProvider *)self resourcesByResourceKey];
        [v23 setObject:v20 forKeyedSubscript:@"kISTextResourceKey"];
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)treatLikeSymbol
{
  v2 = [(ISRecordResourceProvider *)self record];
  v3 = [v2 iconDictionary];

  LOBYTE(v2) = [v3 _IF_BOOLForKey:@"ISSymbolTreatment"];
  return v2;
}

@end