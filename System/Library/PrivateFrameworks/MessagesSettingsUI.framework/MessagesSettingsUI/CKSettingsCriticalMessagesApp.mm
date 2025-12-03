@interface CKSettingsCriticalMessagesApp
- (CKSettingsCriticalMessagesApp)initWithBundleID:(id)d recipients:(id)recipients;
- (NSString)activeNumberCountLocalizedString;
- (int64_t)_activeNumberCount;
@end

@implementation CKSettingsCriticalMessagesApp

- (CKSettingsCriticalMessagesApp)initWithBundleID:(id)d recipients:(id)recipients
{
  dCopy = d;
  recipientsCopy = recipients;
  v21.receiver = self;
  v21.super_class = CKSettingsCriticalMessagesApp;
  v8 = [(CKSettingsCriticalMessagesApp *)&v21 init];
  if (!v8)
  {
LABEL_8:
    v17 = v8;
    goto LABEL_9;
  }

  v20 = 0;
  v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v20];
  v10 = v20;
  v11 = v10;
  if (v9)
  {
    bundleIdentifier = [v9 bundleIdentifier];
    bundleID = v8->_bundleID;
    v8->_bundleID = bundleIdentifier;

    localizedName = [v9 localizedName];
    v15 = localizedName;
    if (localizedName)
    {
      localizedShortName = localizedName;
    }

    else
    {
      localizedShortName = [v9 localizedShortName];
    }

    displayName = v8->_displayName;
    v8->_displayName = localizedShortName;

    objc_storeStrong(&v8->_recipients, recipients);
    goto LABEL_8;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (int64_t)_activeNumberCount
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_recipients;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) isActive];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSString)activeNumberCountLocalizedString
{
  _activeNumberCount = [(CKSettingsCriticalMessagesApp *)self _activeNumberCount];
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CRITICAL_MESSAGES_PHONE_NUMBER_COUNT" value:&stru_286A13F00 table:@"CriticalMessagesSettings"];
  v6 = [v3 stringWithFormat:v5, _activeNumberCount];

  return v6;
}

@end