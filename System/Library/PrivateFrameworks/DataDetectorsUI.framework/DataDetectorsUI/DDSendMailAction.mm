@interface DDSendMailAction
- (id)compactTitle;
- (id)extractedActionSubtitle;
- (id)notificationIconBundleIdentifier;
- (id)notificationTitle;
- (uint64_t)displayNameForEmails:(void *)emails phoneNumbers:;
@end

@implementation DDSendMailAction

- (id)extractedActionSubtitle
{
  v15 = *MEMORY[0x277D85DE8];
  if (dd_isLSTrusted())
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v10 = 0;
    v3 = [defaultWorkspace defaultApplicationForCategory:2 error:&v10];
    v4 = v10;

    if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      *buf = 138412546;
      v12 = bundleIdentifier;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Couldn't get default email app from %@. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  localizedName = [v3 localizedName];

  v8 = *MEMORY[0x277D85DE8];

  return localizedName;
}

- (uint64_t)displayNameForEmails:(void *)emails phoneNumbers:
{
  v48[1] = *MEMORY[0x277D85DE8];
  v24 = a2;
  emailsCopy = emails;
  if (!self || (dd_isDeviceLocked() & 1) != 0 || [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] != 3)
  {
    goto LABEL_22;
  }

  v27 = DDMakeContactStore();
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__3;
  v44 = __Block_byref_object_dispose__3;
  v45 = 0;
  v5 = objc_alloc(MEMORY[0x277CBDA70]);
  v6 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v48[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  v8 = [v5 initWithKeysToFetch:v7];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v24;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v9)
  {
    v10 = *v37;
    v11 = MEMORY[0x277D85DD0];
    v6 = &v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:{*(*(&v36 + 1) + 8 * i), emailsCopy}];
        [v8 setPredicate:v13];

        v34[4] = &v40;
        v35 = 0;
        v34[0] = v11;
        v34[1] = 3221225472;
        v34[2] = __54__DDSendMailAction_displayNameForEmails_phoneNumbers___block_invoke;
        v34[3] = &unk_2782913D8;
        [v27 enumerateContactsWithFetchRequest:v8 error:&v35 usingBlock:v34];
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v9);
  }

  v14 = v41[5];
  if (v14)
  {
    goto LABEL_20;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obja = emailsCopy;
  v15 = [obja countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v15)
  {
    v16 = *v31;
    v17 = MEMORY[0x277D85DD0];
    v6 = &v40;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(obja);
        }

        v19 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:{*(*(&v30 + 1) + 8 * j), emailsCopy}];
        [v8 setPredicate:v19];

        v28[4] = &v40;
        v29 = 0;
        v28[0] = v17;
        v28[1] = 3221225472;
        v28[2] = __54__DDSendMailAction_displayNameForEmails_phoneNumbers___block_invoke_2;
        v28[3] = &unk_2782913D8;
        [v27 enumerateContactsWithFetchRequest:v8 error:&v29 usingBlock:v28];
      }

      v15 = [obja countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v15);
  }

  v14 = v41[5];
  if (v14)
  {
LABEL_20:
    v6 = [MEMORY[0x277CBDA78] stringFromContact:v14 style:{0, emailsCopy}];
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  _Block_object_dispose(&v40, 8);
  if (v20)
  {
LABEL_22:
    v6 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)compactTitle
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = dd_userFriendlyEmailFromMailtoScheme(self->super._url);
  if ([v3 length])
  {
    v11[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v5 = [(DDSendMailAction *)self displayNameForEmails:v4 phoneNumbers:0];

    if ([v5 length])
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    compactTitle = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = DDSendMailAction;
    compactTitle = [(DDAction *)&v10 compactTitle];
  }

  v8 = *MEMORY[0x277D85DE8];

  return compactTitle;
}

- (id)notificationTitle
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = dd_userFriendlyEmailFromMailtoScheme(self->super._url);
  if ([v3 length])
  {
    v13[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v5 = [(DDSendMailAction *)self displayNameForEmails:v4 phoneNumbers:0];

    v6 = [v5 length];
    v7 = MEMORY[0x277CCACA8];
    if (v6)
    {
      v8 = DDLocalizedString(@"Compose an email to %@ (%@) in Mail");
      [v7 stringWithFormat:v8, v5, v3];
    }

    else
    {
      v8 = DDLocalizedString(@"Compose an email to “%@” in Mail");
      [v7 stringWithFormat:v8, v3, v12];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)notificationIconBundleIdentifier
{
  v18 = *MEMORY[0x277D85DE8];
  if (dd_isLSTrusted())
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v13 = 0;
    v3 = [defaultWorkspace defaultApplicationForCategory:2 error:&v13];
    v4 = v13;

    if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      *buf = 138412546;
      v15 = bundleIdentifier;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Couldn't get default email app from %@. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  bundleIdentifier2 = [v3 bundleIdentifier];
  v8 = bundleIdentifier2;
  if (bundleIdentifier2)
  {
    v9 = bundleIdentifier2;
  }

  else
  {
    v9 = @"com.apple.mobilemail";
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

@end