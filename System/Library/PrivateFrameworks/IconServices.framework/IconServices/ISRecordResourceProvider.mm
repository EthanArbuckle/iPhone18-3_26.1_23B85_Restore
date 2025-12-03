@interface ISRecordResourceProvider
- (BOOL)_findTextResourceWithIconDictionary:(id)dictionary;
- (BOOL)_isApp;
- (BOOL)_isAppClip;
- (BOOL)_isAppLike;
- (BOOL)_isAppleResource;
- (BOOL)_isFolder;
- (BOOL)_shouldTreatLikeApp;
- (BOOL)iconStackResourcesAllowed;
- (BOOL)shouldUseFolderRecipe;
- (BOOL)treatLikeSymbol;
- (ISRecordResourceProvider)initWithRecord:(id)record fileExtension:(id)extension options:(unint64_t)options;
- (id)description;
- (id)iconResource;
- (id)resourceNamed:(id)named;
- (void)_determineRecipe;
- (void)assignLayerResources;
- (void)configureProviderFromDescriptor:(id)descriptor;
- (void)resolveResources;
- (void)setPlatformWithBundle:(id)bundle;
@end

@implementation ISRecordResourceProvider

- (id)iconResource
{
  v6.receiver = self;
  v6.super_class = ISRecordResourceProvider;
  iconResource = [(ISResourceProvider *)&v6 iconResource];
  if (!iconResource)
  {
    [(ISRecordResourceProvider *)self resolveResources];
    v5.receiver = self;
    v5.super_class = ISRecordResourceProvider;
    iconResource = [(ISResourceProvider *)&v5 iconResource];
  }

  return iconResource;
}

- (void)resolveResources
{
  if (![(ISResourceProvider *)self resolved])
  {
    [(ISResourceProvider *)self setResolved:1];
    record = self->_record;
    if (objc_opt_respondsToSelector())
    {
      iconResourceBundleURL = [(LSRecord *)self->_record iconResourceBundleURL];
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

        iconDictionary = [(LSRecord *)self->_record iconDictionary];
        v53 = v5;
        v10 = [ISResourceProvider resourceWithBundleURL:v5 iconDictionary:iconDictionary options:v8];
        resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
        [resourcesByResourceKey setObject:v10 forKeyedSubscript:?];

        v12 = +[ISDefaults sharedInstance];
        isSolariumEnabled = [v12 isSolariumEnabled];

        if (isSolariumEnabled)
        {
          [(ISRecordResourceProvider *)self assignLayerResources];
        }

        v14 = self->_record;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        [(ISRecordResourceProvider *)self _findTextResourceWithIconDictionary:iconDictionary];
        [(ISRecordResourceProvider *)self setPlatformWithBundle:v6];
        record = [(ISRecordResourceProvider *)self record];
        v17 = [(ISResourceProvider *)self _findBadgeResourceWithIconDictionary:iconDictionary bundle:v6 record:record];

        v18 = [(ISResourceProvider *)self _findBackgroundResourceWithIconDictionary:iconDictionary bundle:v6];
        if (!v17 && !v18)
        {
          badgeResource = [(ISResourceProvider *)self badgeResource];

          if (!badgeResource)
          {
            if ((isKindOfClass & 1) == 0 || (v20 = v10) == 0)
            {
              v21 = self->_record;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                declaringBundleRecord = [(LSRecord *)self->_record declaringBundleRecord];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = [ISResourceProvider resourceWithRecord:declaringBundleRecord options:0];
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

            resourcesByResourceKey2 = [(ISResourceProvider *)self resourcesByResourceKey];
            [resourcesByResourceKey2 setObject:v20 forKeyedSubscript:@"kISBadgeResourceKey"];
          }
        }

        [(ISRecordResourceProvider *)self _determineRecipe];
        v24 = [(ISResourceProvider *)self _findCustomRecipeWithIconDictionary:iconDictionary bundle:v6];
        resourcesByResourceKey3 = [(ISResourceProvider *)self resourcesByResourceKey];
        v52 = v10;
        if (![resourcesByResourceKey3 count] && !v24)
        {
          v26 = self->_record;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            containingBundleRecord = [(LSRecord *)self->_record containingBundleRecord];
            objc_opt_class();
            v28 = objc_opt_isKindOfClass();

            if ((v28 & 1) == 0)
            {
LABEL_36:
              resourcesByResourceKey4 = [(ISResourceProvider *)self resourcesByResourceKey];
              if ([resourcesByResourceKey4 count] != 0 || v24 || (v34 = self->_record, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {

                v36 = v53;
              }

              else
              {
                isDeclared = [(LSRecord *)self->_record isDeclared];

                v36 = v53;
                if (isDeclared)
                {
                  iconDictionary2 = [(LSRecord *)self->_record iconDictionary];
                  v38 = [iconDictionary2 _IF_stringForKey:@"UTTypeSymbolName"];

                  if (v38)
                  {
                    v39 = self->_record;
                    v54[0] = MEMORY[0x1E69E9820];
                    v54[1] = 3221225472;
                    v54[2] = __44__ISRecordResourceProvider_resolveResources__block_invoke;
                    v54[3] = &unk_1E77C6758;
                    v55 = v53;
                    v56 = v38;
                    selfCopy = self;
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

              resourcesByResourceKey5 = [(ISResourceProvider *)self resourcesByResourceKey];
              v42 = [resourcesByResourceKey5 count] != 0 || v24;

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
                identifier = [*v44 identifier];
                resourcesByResourceKey7 = [ISResourceProvider resourceWithTypeIdentifier:identifier options:0];
                resourcesByResourceKey6 = [(ISResourceProvider *)self resourcesByResourceKey];
                [resourcesByResourceKey6 setObject:resourcesByResourceKey7 forKeyedSubscript:@"kISPrimaryResourceKey"];

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
                if ((objc_opt_isKindOfClass() & 1) == 0 || ([iconDictionary _IF_dictionaryForKey:0x1F1A4EC00], v48 = objc_claimAutoreleasedReturnValue(), v48, !v48))
                {
                  v44 = MEMORY[0x1E6982D60];
                  goto LABEL_57;
                }

                v46 = +[ISGraphicSymbolResource defaultResource];
              }

              identifier = v46;
              resourcesByResourceKey7 = [(ISResourceProvider *)self resourcesByResourceKey];
              [resourcesByResourceKey7 setObject:identifier forKeyedSubscript:@"kISPrimaryResourceKey"];
LABEL_58:

LABEL_59:
              return;
            }

            resourcesByResourceKey3 = [(LSRecord *)self->_record containingBundleRecord];
            v29 = [resourcesByResourceKey3 URL];
            iconDictionary3 = [resourcesByResourceKey3 iconDictionary];
            v31 = [ISResourceProvider resourceWithBundleURL:v29 iconDictionary:iconDictionary3 options:v8];

            if (v31)
            {
              resourcesByResourceKey8 = [(ISResourceProvider *)self resourcesByResourceKey];
              [resourcesByResourceKey8 setObject:v31 forKeyedSubscript:@"kISPrimaryResourceKey"];
            }
          }
        }

        goto LABEL_36;
      }

      iconResourceBundleURL = [(LSRecord *)self->_record URL];
    }

    v5 = iconResourceBundleURL;
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
  record = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_isAppLike
{
  record = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    record2 = [(ISRecordResourceProvider *)self record];
    v5 = [record2 conformsToTypeIdentifier:@"com.apple.application-icon"];
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
  record = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    record2 = [(ISRecordResourceProvider *)self record];

    if (record2 && [(ISRecordResourceProvider *)self _isFolder])
    {
      v28 = record2;
      v5 = MEMORY[0x1E69636B0];
      identifier = [*MEMORY[0x1E6982DC8] identifier];
      v7 = [v5 typeRecordWithIdentifier:identifier];

      v27 = v7;
      iconDictionary = [v7 iconDictionary];
      v9 = [iconDictionary _IF_dictionaryForKey:@"ISLayers"];
      v10 = [v9 _IF_arrayForKey:@"ISTypeIdentifiers"];

      if (v10 && [v10 count])
      {
        resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
        [resourcesByResourceKey setObject:0 forKeyedSubscript:@"kISPrimaryResourceKey"];
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

          iconConfig = [(ISResourceProvider *)self iconConfig];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_15;
          }

          iconConfig2 = [(ISResourceProvider *)self iconConfig];
          folderEmpty = [iconConfig2 folderEmpty];

          if ((folderEmpty & 1) == 0)
          {
            break;
          }

LABEL_16:

          if ([v10 count] <= ++v13)
          {
            goto LABEL_17;
          }
        }

        iconResourceBundleURL = [v16 iconResourceBundleURL];
        iconDictionary2 = [v16 iconDictionary];
        iconConfig = [ISResourceProvider resourceWithBundleURL:iconResourceBundleURL iconDictionary:iconDictionary2 options:0];

        v22 = [v12 count];
        v23 = v13;
        if (v22 <= v13)
        {
          v23 = [v12 count] - 1;
        }

        v24 = [v12 objectAtIndexedSubscript:v23];
        resourcesByResourceKey2 = [(ISResourceProvider *)self resourcesByResourceKey];
        [resourcesByResourceKey2 setObject:iconConfig forKeyedSubscript:v24];

LABEL_15:
        goto LABEL_16;
      }

LABEL_17:

      record2 = v28;
    }
  }

  else
  {

    record2 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_determineRecipe
{
  v3 = +[ISDefaults sharedInstance];
  isSolariumEnabled = [v3 isSolariumEnabled];

  if (!isSolariumEnabled)
  {
    return;
  }

  record = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return;
  }

  record2 = [(ISRecordResourceProvider *)self record];
  if ([(ISRecordResourceProvider *)self shouldUseFolderRecipe])
  {
    v7 = objc_opt_new();
    resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
    v9 = [resourcesByResourceKey objectForKey:@"kISSecondaryResourceKey"];
    if (v9)
    {
    }

    else
    {
      resourcesByResourceKey2 = [(ISResourceProvider *)self resourcesByResourceKey];
      v11 = [resourcesByResourceKey2 objectForKey:@"kISTertiaryResourceKey"];

      if (!v11)
      {
        [v7 setDisableShadow:1];
      }
    }

    iconConfig = [(ISResourceProvider *)self iconConfig];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }

    iconConfig2 = [(ISResourceProvider *)self iconConfig];
    if ([iconConfig2 hasTint])
    {
      identifier = [*MEMORY[0x1E6982DC8] identifier];
      if ([record2 conformsToTypeIdentifier:identifier])
      {

LABEL_14:
        v17 = [iconConfig2 resolvedTintColorForAppearance:0];
        [v7 setTintColor:v17];

        goto LABEL_15;
      }

      v16 = [record2 conformsToTypeIdentifier:@"com.apple.icon-package-attribute.tintable"];

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
  iconStackAppIconsAllowed = [v3 iconStackAppIconsAllowed];

  if (!iconStackAppIconsAllowed)
  {
    return 0;
  }

  record = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    record2 = [(ISRecordResourceProvider *)self record];
    _IS_isMessagesExtension = [record2 _IS_isMessagesExtension];

    if (_IS_isMessagesExtension)
    {
      return 0;
    }
  }

  else
  {
  }

  return [(ISRecordResourceProvider *)self _shouldTreatLikeApp];
}

- (ISRecordResourceProvider)initWithRecord:(id)record fileExtension:(id)extension options:(unint64_t)options
{
  v40[3] = *MEMORY[0x1E69E9840];
  recordCopy = record;
  extensionCopy = extension;
  if ([recordCopy _is_canProvideIconResources])
  {
    v37.receiver = self;
    v37.super_class = ISRecordResourceProvider;
    v11 = [(ISResourceProvider *)&v37 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_record, record);
      iconDictionary = [recordCopy iconDictionary];
      v40[0] = @"UTTypeIconBadgeName";
      v40[1] = @"UTTypeIconText";
      v40[2] = @"UTTypeIconBackgroundName";
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
      v15 = [iconDictionary _IF_stringForKeys:v14];

      if (v15)
      {
        optionsCopy = options | 2;
      }

      else
      {
        optionsCopy = options;
      }

      v34 = iconDictionary;
      v17 = [iconDictionary _IF_dictionaryForKey:@"ISDocumentIconConfiguration"];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 _IF_stringForKey:@"ISSymbolName"];
        if (v19)
        {
          v20 = v19;
          v21 = +[ISDefaults sharedInstance];
          isSolariumEnabled = [v21 isSolariumEnabled];

          if (isSolariumEnabled)
          {
            optionsCopy |= 0xAuLL;
          }
        }
      }

      v23 = MEMORY[0x1E6963688];
      v39 = recordCopy;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      v25 = [v23 _is_resourceTokenForRecords:v24];

      v35 = 0;
      v36 = 0;
      [MEMORY[0x1E6963688] _is_getSequenceNumber:&v36 andUUID:&v35];
      v26 = v35;
      [(ISResourceProvider *)v12 setLsDatabaseSequenceNumber:v36];
      [(ISResourceProvider *)v12 setLsDatabaseUUID:v26];
      [(ISResourceProvider *)v12 setResourceToken:v25];
      persistentIdentifier = [recordCopy persistentIdentifier];
      v38 = persistentIdentifier;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      [(ISResourceProvider *)v12 setSourceRecordIdentifiers:v28];

      [(ISResourceProvider *)v12 setOptions:optionsCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _IS_platformToIFPlatform = [recordCopy _IS_platformToIFPlatform];
        if (_IS_platformToIFPlatform)
        {
          [(ISResourceProvider *)v12 setPlatform:_IS_platformToIFPlatform];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && ([recordCopy _IS_allowsArbitraryExtensionAsText] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend(recordCopy, "isCoreType") && (+[ISDefaults sharedInstance](ISDefaults, "sharedInstance"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isSolariumEnabled"), v30, v31))
      {
        objc_storeStrong(&v12->_fileExtension, extension);
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

  record = [(ISRecordResourceProvider *)self record];
  appClipMetadata = [record appClipMetadata];
  v5 = appClipMetadata != 0;

  return v5;
}

- (BOOL)shouldUseFolderRecipe
{
  if ([(ISRecordResourceProvider *)self _isFolder])
  {
    return 1;
  }

  record = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  record2 = [(ISRecordResourceProvider *)self record];
  v7 = [record2 conformsToTypeIdentifier:@"com.apple.icon-package.folder"];

  return v7;
}

- (BOOL)_isFolder
{
  record = [(ISRecordResourceProvider *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  record2 = [(ISRecordResourceProvider *)self record];
  v6 = *MEMORY[0x1E6982DC8];
  identifier = [*MEMORY[0x1E6982DC8] identifier];
  v8 = [record2 conformsToTypeIdentifier:identifier];

  if (v8)
  {
    identifier2 = [record2 identifier];
    identifier3 = [v6 identifier];
    v11 = [identifier2 isEqualToString:identifier3];

    if (v11)
    {
      v12 = 1;
    }

    else
    {
      iconDictionary = [record2 iconDictionary];
      v14 = [iconDictionary objectForKey:@"ISFolderIconConfiguration"];
      v12 = v14 != 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)configureProviderFromDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (![(ISRecordResourceProvider *)self _shouldTreatLikeApp])
  {
    suggestedRecipe = [(ISResourceProvider *)self suggestedRecipe];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_11;
    }

    if ([descriptorCopy appearance] == 1)
    {
    }

    else
    {
      appearance = [descriptorCopy appearance];

      if (appearance != 2)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    [(ISResourceProvider *)self setAllowNonDefaultAppearances:1];
    [(ISResourceProvider *)self setAllowAlterationsToResourceArt:1];
    goto LABEL_11;
  }

  if ([descriptorCopy appearance] == 1 || objc_msgSend(descriptorCopy, "appearance") == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  v7.receiver = self;
  v7.super_class = ISRecordResourceProvider;
  [(ISResourceProvider *)&v7 configureProviderFromDescriptor:descriptorCopy];
}

- (id)resourceNamed:(id)named
{
  namedCopy = named;
  v8.receiver = self;
  v8.super_class = ISRecordResourceProvider;
  v5 = [(ISResourceProvider *)&v8 resourceNamed:namedCopy];
  if (!v5)
  {
    [(ISRecordResourceProvider *)self resolveResources];
    v7.receiver = self;
    v7.super_class = ISRecordResourceProvider;
    v5 = [(ISResourceProvider *)&v7 resourceNamed:namedCopy];
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

- (void)setPlatformWithBundle:(id)bundle
{
  v3.receiver = self;
  v3.super_class = ISRecordResourceProvider;
  [(ISResourceProvider *)&v3 setPlatformWithBundle:bundle];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = ISRecordResourceProvider;
  v4 = [(ISRecordResourceProvider *)&v10 description];
  record = [(ISRecordResourceProvider *)self record];
  record2 = [(ISRecordResourceProvider *)self record];
  iconDictionary = [record2 iconDictionary];
  v8 = [v3 stringWithFormat:@"%@ - %@ %@", v4, record, iconDictionary];

  return v8;
}

- (BOOL)_findTextResourceWithIconDictionary:(id)dictionary
{
  v26[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [[ISFolderIconConfiguration alloc] initWithIconDictionary:dictionaryCopy];
  v6 = +[ISDefaults sharedInstance];
  isSolariumEnabled = [v6 isSolariumEnabled];

  if (isSolariumEnabled && ([(ISFolderIconConfiguration *)v5 emoji], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    emoji = [(ISFolderIconConfiguration *)v5 emoji];
    resourcesByResourceKey = [(ISResourceProvider *)self resourcesByResourceKey];
    [resourcesByResourceKey setObject:emoji forKeyedSubscript:@"kISTextResourceKey"];

    LOBYTE(emoji) = 1;
  }

  else
  {

    v26[0] = @"UTTypeIconText";
    v26[1] = @"CFBundleIconText";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v12 = [dictionaryCopy _IF_stringForKeys:v11];
    uppercaseString = [v12 uppercaseString];

    if (uppercaseString && ![uppercaseString isEqual:@"*"] || (-[ISRecordResourceProvider fileExtension](self, "fileExtension"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "uppercaseString"), v15 = objc_claimAutoreleasedReturnValue(), uppercaseString, v14, (uppercaseString = v15) != 0))
    {
      if (![(ISRecordResourceProvider *)self _isFolder])
      {
        resourcesByResourceKey2 = [(ISResourceProvider *)self resourcesByResourceKey];
        [resourcesByResourceKey2 setObject:uppercaseString forKeyedSubscript:@"kISTextResourceKey"];
      }
    }

    iconConfig = [(ISResourceProvider *)self iconConfig];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      iconConfig2 = [(ISResourceProvider *)self iconConfig];
      emoji2 = [iconConfig2 emoji];

      v21 = +[ISDefaults sharedInstance];
      isSolariumEnabled2 = [v21 isSolariumEnabled];

      if (emoji2)
      {
        LODWORD(emoji) = isSolariumEnabled2;
      }

      else
      {
        LODWORD(emoji) = 0;
      }

      if (emoji == 1)
      {
        resourcesByResourceKey3 = [(ISResourceProvider *)self resourcesByResourceKey];
        [resourcesByResourceKey3 setObject:emoji2 forKeyedSubscript:@"kISTextResourceKey"];
      }
    }

    else
    {
      LOBYTE(emoji) = 0;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return emoji;
}

- (BOOL)treatLikeSymbol
{
  record = [(ISRecordResourceProvider *)self record];
  iconDictionary = [record iconDictionary];

  LOBYTE(record) = [iconDictionary _IF_BOOLForKey:@"ISSymbolTreatment"];
  return record;
}

@end