@interface _UIDocumentPickerDescriptor
+ ($115C4C562B26FF47E01F9F4EA65B5887)hostAuditToken;
+ (BOOL)isInAddToiCloudDrive;
+ (char)cloudEnabledStatus;
+ (char)cloudMigrationStatus;
+ (id)allPickers;
+ (id)allPickersForMode:(unint64_t)a3 documentTypes:(id)a4;
+ (id)defaultPickerIdentifierForMode:(unint64_t)a3 documentTypes:(id)a4;
+ (id)descriptorWithIdentifier:(id)a3;
+ (id)enabledPickersForMode:(unint64_t)a3 documentTypes:(id)a4;
+ (id)filteredPickersForPickers:(id)a3 filter:(unint64_t)a4;
+ (id)manageablePickersForMode:(unint64_t)a3 documentTypes:(id)a4;
+ (id)pickerOrder;
+ (void)_updateCloudEnabledStatus;
+ (void)cloudMigrationStatus;
+ (void)setHostAuditToken:(id *)a3;
+ (void)setHostBundleID:(id)a3;
+ (void)setOrderFromPickers:(id)a3;
- (BOOL)enabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)pickerEnabledForMode:(unint64_t)a3 documentTypes:(id)a4 reason:(id *)a5;
- (BOOL)supportsPickerMode:(unint64_t)a3;
- (NSArray)supportedContentTypes;
- (NSString)fileProviderDocumentGroup;
- (NSString)identifier;
- (NSString)localizedName;
- (NSString)nonUIIdentifier;
- (id)_extensionValueOfClass:(Class)a3 forKey:(id)a4;
- (id)_ownBundle;
- (id)_parentApp;
- (id)description;
- (id)imageWithScale:(double)a3;
- (id)nonUIBundle;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)setEnabled:(BOOL)a3;
@end

@implementation _UIDocumentPickerDescriptor

+ (void)setHostBundleID:(id)a3
{
  if (sHostBundleID != a3)
  {
    v3 = [a3 copy];
    v4 = sHostBundleID;
    sHostBundleID = v3;

    MEMORY[0x2821F96F8](v3, v4);
  }
}

+ (void)setHostAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  sHostAuditToken = *a3->var0;
  *algn_27ED94650 = v3;
}

+ ($115C4C562B26FF47E01F9F4EA65B5887)hostAuditToken
{
  v3 = *algn_27ED94650;
  *retstr->var0 = sHostAuditToken;
  *&retstr->var0[4] = v3;
  return result;
}

+ (BOOL)isInAddToiCloudDrive
{
  v2 = [a1 hostBundleID];
  v3 = [v2 isEqualToString:@"com.apple.CloudDocsUI.AddToiCloudDrive"];

  return v3;
}

+ (id)allPickers
{
  v50[1] = *MEMORY[0x277D85DE8];
  v32 = [a1 isInAddToiCloudDrive];
  v30 = [a1 pickerOrder];
  v3 = dispatch_semaphore_create(0);
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__0;
  v46 = __Block_byref_object_dispose__0;
  v47 = 0;
  v4 = MEMORY[0x277CCA9C8];
  v49 = *MEMORY[0x277CCA0F8];
  v50[0] = @"com.apple.fileprovider-ui";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __41___UIDocumentPickerDescriptor_allPickers__block_invoke;
  v39[3] = &unk_278DD67E0;
  v41 = &v42;
  dsema = v3;
  v40 = dsema;
  [v4 extensionsWithMatchingAttributes:v5 completion:v39];

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v43[5];
  v7 = [v6 valueForKeyPath:@"identifier"];
  v8 = [MEMORY[0x277D262A0] sharedConnection];
  v9 = [a1 hostBundleID];
  v10 = [v8 allowedAppBundleIDsForBidirectionalDataMovementAfterApplyingFilterToBundleIDs:v7 localAppBundleID:v9 localAccountIsManaged:{objc_msgSend(a1, "isContentManaged")}];

  v31 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v12)
  {
    v13 = *v36;
    v14 = *MEMORY[0x277D773A0];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v17 = [v16 identifier];
        v18 = [v10 containsObject:v17];

        if (v18)
        {
          v19 = [v16 identifier];
          v20 = [v19 isEqualToString:@"com.apple.UIKit.fileprovider.default"];

          if ((v20 & 1) == 0)
          {
            if (!v32 || ([v16 identifier], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v14), v21, v22))
            {
              v23 = objc_alloc_init(_UIDocumentPickerDescriptor);
              [(_UIDocumentPickerDescriptor *)v23 setExtension:v16];
              v24 = [(_UIDocumentPickerDescriptor *)v23 identifier];
              v25 = [v24 isEqualToString:v14];

              if (v25)
              {
                [(_UIDocumentPickerDescriptor *)v23 setNewlyAdded:0];
              }

              else
              {
                v26 = [(_UIDocumentPickerDescriptor *)v23 identifier];
                -[_UIDocumentPickerDescriptor setNewlyAdded:](v23, "setNewlyAdded:", [v30 containsObject:v26] ^ 1);
              }

              [v31 addObject:v23];
            }
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v12);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __41___UIDocumentPickerDescriptor_allPickers__block_invoke_2;
  v33[3] = &unk_278DD6808;
  v27 = v30;
  v34 = v27;
  [v31 sortUsingComparator:v33];

  _Block_object_dispose(&v42, 8);

  return v31;
}

- (BOOL)pickerEnabledForMode:(unint64_t)a3 documentTypes:(id)a4 reason:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if ([(_UIDocumentPickerDescriptor *)self supportsPickerMode:a3])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [(_UIDocumentPickerDescriptor *)self supportedContentTypes];
    v28 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v28)
    {
      v10 = *v34;
      v26 = a5;
      v27 = *v34;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v13 = v8;
          v14 = v8;
          v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v30;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v30 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v29 + 1) + 8 * j);
                if (a3 <= 1 && UTTypeConformsTo(v12, *(*(&v29 + 1) + 8 * j)) || UTTypeConformsTo(v19, v12))
                {

                  v23 = 1;
                  v8 = v13;
                  goto LABEL_33;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v8 = v13;
          v10 = v27;
        }

        a5 = v26;
        v28 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v28);
    }

    v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v21 = v20;
    v22 = @"Doesn’t support the file type";
  }

  else
  {
    v23 = 0;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v21 = v20;
        v22 = @"Doesn’t support exporting files";
      }

      else
      {
        if (a3 != 3)
        {
          goto LABEL_33;
        }

        v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v21 = v20;
        v22 = @"Doesn’t support moving files";
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_33;
      }

      v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v21 = v20;
      v22 = @"Doesn’t support opening files";
    }

    else
    {
      v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v21 = v20;
      v22 = @"Doesn’t support importing files";
    }
  }

  v24 = [v20 localizedStringForKey:v22 value:v22 table:@"Localizable"];
  if (a5)
  {
    *a5 = v24;
  }

  v23 = 0;
LABEL_33:

  return v23;
}

+ (id)allPickersForMode:(unint64_t)a3 documentTypes:(id)a4
{
  v6 = a4;
  v7 = [a1 allPickers];
  v8 = MEMORY[0x277CCAC30];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __63___UIDocumentPickerDescriptor_allPickersForMode_documentTypes___block_invoke;
  v16 = &unk_278DD6830;
  v17 = v6;
  v18 = a3;
  v9 = v6;
  v10 = [v8 predicateWithBlock:&v13];
  v11 = [v7 filteredArrayUsingPredicate:{v10, v13, v14, v15, v16}];

  return v11;
}

+ (id)filteredPickersForPickers:(id)a3 filter:(unint64_t)a4
{
  v5 = a3;
  if (!a4)
  {
    v6 = &__block_literal_global_6;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v6 = &__block_literal_global_57;
LABEL_5:
    v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v6];
    v8 = [v5 filteredArrayUsingPredicate:v7];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

+ (id)enabledPickersForMode:(unint64_t)a3 documentTypes:(id)a4
{
  v5 = [a1 allPickersForMode:a3 documentTypes:a4];
  v6 = [a1 filteredPickersForPickers:v5 filter:0];

  return v6;
}

+ (id)manageablePickersForMode:(unint64_t)a3 documentTypes:(id)a4
{
  v5 = [a1 allPickersForMode:a3 documentTypes:a4];
  v6 = [a1 filteredPickersForPickers:v5 filter:1];

  return v6;
}

+ (id)defaultPickerIdentifierForMode:(unint64_t)a3 documentTypes:(id)a4
{
  v4 = [a1 enabledPickersForMode:a3 documentTypes:a4];
  v5 = [v4 firstObject];
  v6 = [v5 identifier];

  return v6;
}

+ (id)descriptorWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 allPickers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56___UIDocumentPickerDescriptor_descriptorWithIdentifier___block_invoke;
  v10[3] = &unk_278DD6898;
  v6 = v4;
  v11 = v6;
  v7 = [v5 indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndex:v7];
  }

  return v8;
}

+ (void)_updateCloudEnabledStatus
{
  v3 = _UIDocumentPickerCloudEnabledStatus;
  [a1 __updateCloudEnabledStatus];
  if (v3 != _UIDocumentPickerCloudEnabledStatus)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"_UIDocumentPickerDescriptorCloudEnabledStatusDidChange" object:a1];
  }
}

+ (char)cloudEnabledStatus
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___UIDocumentPickerDescriptor_cloudEnabledStatus__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (cloudEnabledStatus_onceToken != -1)
  {
    dispatch_once(&cloudEnabledStatus_onceToken, block);
  }

  return _UIDocumentPickerCloudEnabledStatus;
}

+ (char)cloudMigrationStatus
{
  v2 = BRPrimaryiCloudAccountCopyStatus();
  v3 = 0;
  if (!v2)
  {
    v4 = cdui_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      +[(_UIDocumentPickerDescriptor *)v3];
    }
  }

  v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277CFAB50]];
  v6 = [v5 integerValue];

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(_UIDocumentPickerDescriptor *)self identifier];
  v6 = *MEMORY[0x277D773A0];
  v7 = [v5 isEqualToString:*MEMORY[0x277D773A0]];

  if (v7)
  {
    v8 = -1;
  }

  else
  {
    v9 = [v4 identifier];
    v10 = [v9 isEqualToString:v6];

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v11 = [(_UIDocumentPickerDescriptor *)self localizedName];
      v12 = [v4 localizedName];
      v8 = [v11 localizedCaseInsensitiveCompare:v12];
    }
  }

  return v8;
}

- (BOOL)supportsPickerMode:(unint64_t)a3
{
  if (a3 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_278DD68B8[a3];
  }

  v4 = [(_UIDocumentPickerDescriptor *)self _extensionValueOfClass:objc_opt_class() forKey:@"UIDocumentPickerModes"];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)_ownBundle
{
  v2 = MEMORY[0x277CC1ED8];
  v3 = [(_UIDocumentPickerDescriptor *)self extension];
  v4 = [v3 identifier];
  v5 = [v2 pluginKitProxyForIdentifier:v4];

  return v5;
}

- (id)_parentApp
{
  v2 = [(_UIDocumentPickerDescriptor *)self _ownBundle];
  v3 = [v2 containingBundle];

  return v3;
}

- (NSString)identifier
{
  v3 = [(_UIDocumentPickerDescriptor *)self extension];
  v4 = [v3 identifier];
  v5 = *MEMORY[0x277D773A0];
  v6 = [v4 isEqual:*MEMORY[0x277D773A0]];

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(_UIDocumentPickerDescriptor *)self _parentApp];
    v7 = [v8 bundleIdentifier];
  }

  return v7;
}

- (id)nonUIBundle
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CC1E60];
  v3 = [(_UIDocumentPickerDescriptor *)self _parentApp];
  v4 = [v3 bundleURL];
  v5 = [v2 applicationProxyForBundleURL:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 plugInKitPlugins];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 objectForInfoDictionaryKey:@"NSExtensionPointIdentifier" ofClass:objc_opt_class() inScope:1];
        if ([v12 isEqualToString:@"com.apple.fileprovider-nonui"])
        {
          v13 = v11;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (NSString)fileProviderDocumentGroup
{
  v2 = [(_UIDocumentPickerDescriptor *)self nonUIBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"NSExtensionFileProviderDocumentGroup" ofClass:objc_opt_class() inScope:1];

  return v3;
}

- (NSString)nonUIIdentifier
{
  v2 = [(_UIDocumentPickerDescriptor *)self nonUIBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (NSString)localizedName
{
  v3 = [(_UIDocumentPickerDescriptor *)self _ownBundle];
  v4 = [v3 localizedName];

  if (!v4 || (-[_UIDocumentPickerDescriptor _ownBundle](self, "_ownBundle"), v5 = objc_claimAutoreleasedReturnValue(), [v5 bundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, v5, v7))
  {
    v8 = [(_UIDocumentPickerDescriptor *)self _parentApp];
    v9 = [v8 localizedName];

    v4 = v9;
  }

  return v4;
}

- (id)imageWithScale:(double)a3
{
  v5 = [(_UIDocumentPickerDescriptor *)self identifier];
  v6 = [v5 isEqualToString:*MEMORY[0x277D773A0]];

  v7 = MEMORY[0x277D755B8];
  if (v6)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v9 = [v7 imageNamed:@"OpeniCloud" inBundle:v8];
    [v9 imageWithRenderingMode:2];
  }

  else
  {
    v8 = [(_UIDocumentPickerDescriptor *)self _parentApp];
    v9 = [v8 bundleIdentifier];
    [v7 _applicationIconImageForBundleIdentifier:v9 format:0 scale:a3];
  }
  v10 = ;

  return v10;
}

- (id)_extensionValueOfClass:(Class)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = [(_UIDocumentPickerDescriptor *)self extension];
  v7 = [v6 attributes];
  v8 = [v7 objectForKey:v5];

  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61___UIDocumentPickerDescriptor__extensionValueOfClass_forKey___block_invoke;
    v11[3] = &unk_278DD6200;
    v11[4] = self;
    v12 = v5;
    if (_extensionValueOfClass_forKey__onceToken != -1)
    {
      dispatch_once(&_extensionValueOfClass_forKey__onceToken, v11);
    }

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (NSArray)supportedContentTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(_UIDocumentPickerDescriptor *)self _extensionValueOfClass:objc_opt_class() forKey:@"UIDocumentPickerSupportedFileTypes"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v7[0] = *MEMORY[0x277CC2048];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  v5 = v4;

  return v5;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIDocumentPickerDescriptor *)self extension];
  v5 = v4;
  if (v3)
  {
    [v4 attemptOptIn:0];
  }

  else
  {
    [v4 attemptOptOut:0];
  }
}

- (BOOL)enabled
{
  v3 = [(_UIDocumentPickerDescriptor *)self identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277D773A0]];

  if (v4)
  {
    if ([objc_opt_class() cloudEnabledStatus] != 1)
    {
      return 0;
    }

    v5 = [MEMORY[0x277CFAE20] allContainersByContainerID];
    v6 = [v5 objectForKey:*MEMORY[0x277CFAD68]];

    v7 = v6 != 0;
  }

  else
  {
    v6 = [(_UIDocumentPickerDescriptor *)self extension];
    v7 = [v6 optedIn];
  }

  return v7;
}

+ (id)pickerOrder
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];
  v3 = [v2 objectForKey:@"_UIDocumentPickerSettings"];
  v4 = [v3 objectForKey:@"order"];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] array];
  }

  v8 = v7;

  v9 = *MEMORY[0x277D773A0];
  [v8 removeObject:*MEMORY[0x277D773A0]];
  [v8 insertObject:v9 atIndex:0];

  return v8;
}

+ (void)setOrderFromPickers:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [a1 allPickers];
  }

  v12 = v4;
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];
  v6 = [v5 objectForKey:@"_UIDocumentPickerSettings"];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
  }

  v10 = v9;

  v11 = [v12 valueForKey:@"identifier"];
  [v10 setObject:v11 forKey:@"order"];
  [v5 setObject:v10 forKey:@"_UIDocumentPickerSettings"];
}

- (unint64_t)hash
{
  v2 = [(_UIDocumentPickerDescriptor *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_UIDocumentPickerDescriptor *)self identifier];
    v6 = [v4 identifier];
    if (v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v5 isEqualToString:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(_UIDocumentPickerDescriptor *)self localizedName];
  v6 = [(_UIDocumentPickerDescriptor *)self enabled];
  v7 = @"disabled";
  if (v6)
  {
    v7 = @"enabled";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> %@, %@", v4, self, v5, v7];

  return v8;
}

+ (void)cloudMigrationStatus
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_243823000, a2, OS_LOG_TYPE_FAULT, "[ERROR] Could not get iCloud account status: %@", &v2, 0xCu);
}

@end