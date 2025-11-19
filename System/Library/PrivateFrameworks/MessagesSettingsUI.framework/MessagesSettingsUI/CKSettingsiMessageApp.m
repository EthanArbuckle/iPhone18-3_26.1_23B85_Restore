@interface CKSettingsiMessageApp
- (BOOL)isHiddenInSendMenuByUserPreference;
- (CKSettingsiMessageApp)initWithExtension:(id)a3;
- (id)_hiddenExtensionBundleIdentifiers;
- (id)_stringArrayFromUserDefaults:(id)a3 key:(id)a4;
- (void)_setHiddenExtensionBundleIdentifiers:(id)a3;
- (void)setHiddenInSendMenuByUserPreference:(BOOL)a3;
@end

@implementation CKSettingsiMessageApp

- (CKSettingsiMessageApp)initWithExtension:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CKSettingsiMessageApp;
  v5 = [(CKSettingsiMessageApp *)&v26 init];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = [v4 identifier];
  v25 = 0;
  v7 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v6 error:&v25];
  v8 = v25;
  if (!v8)
  {
    v10 = [v7 containingBundleRecord];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_8;
    }

    v11 = v10;
    v5->_isiMessageAppOnly = [v11 isLaunchProhibited];
    objc_storeStrong(&v5->_extensionBundleID, v6);
    v12 = [v11 bundleIdentifier];
    appBundleID = v5->_appBundleID;
    v5->_appBundleID = v12;

    v14 = [v7 localizedName];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v7 localizedShortName];
    }

    extensionDisplayName = v5->_extensionDisplayName;
    v5->_extensionDisplayName = v16;

    v19 = [v11 localizedName];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [v11 localizedShortName];
    }

    appDisplayName = v5->_appDisplayName;
    v5->_appDisplayName = v21;

    if ([v11 isDeletable])
    {
      v23 = 1;
    }

    else
    {
      v23 = [v11 isDeletableSystemApplication];
    }

    v5->_deletable = v23;

LABEL_17:
    v17 = v5;
    goto LABEL_18;
  }

  v9 = v8;

LABEL_8:
  v17 = 0;
LABEL_18:

  return v17;
}

- (id)_hiddenExtensionBundleIdentifiers
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.MobileSMS"];
  v4 = [(CKSettingsiMessageApp *)self _stringArrayFromUserDefaults:v3 key:@"SendMenuHiddenExtensionBundleIdentifiers"];

  return v4;
}

- (void)_setHiddenExtensionBundleIdentifiers:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.MobileSMS"];
  [v5 setObject:v4 forKey:@"SendMenuHiddenExtensionBundleIdentifiers"];
}

- (id)_stringArrayFromUserDefaults:(id)a3 key:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKey:a4];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = v4;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isHiddenInSendMenuByUserPreference
{
  if (self->_isiMessageAppOnly)
  {
    return 0;
  }

  v3 = self;
  v4 = [(CKSettingsiMessageApp *)self _hiddenExtensionBundleIdentifiers];
  LOBYTE(v3) = [v4 containsObject:v3->_extensionBundleID];

  return v3;
}

- (void)setHiddenInSendMenuByUserPreference:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = self->_extensionBundleID;
  v6 = [(CKSettingsiMessageApp *)self _hiddenExtensionBundleIdentifiers];
  v7 = [v6 containsObject:v5];
  if (v3 && (v7 & 1) == 0)
  {
    v8 = [v6 arrayByAddingObject:v5];
    [(CKSettingsiMessageApp *)self _setHiddenExtensionBundleIdentifiers:v8];
LABEL_7:

    goto LABEL_8;
  }

  if (!v3 && ((v7 ^ 1) & 1) == 0)
  {
    v8 = [v6 mutableCopy];
    [v8 removeObject:v5];
    v9 = [v8 copy];
    [(CKSettingsiMessageApp *)self _setHiddenExtensionBundleIdentifiers:v9];

    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_258D24000, v11, OS_LOG_TYPE_INFO, "Extension %@ was already hidden=%{BOOL}d", &v12, 0x12u);
    }
  }

LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

@end