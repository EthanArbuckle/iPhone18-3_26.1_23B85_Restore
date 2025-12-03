@interface DMCProfileViewModel
+ (id)trustTextForProfile:(id)profile;
- (BOOL)isMDMProfile;
- (BOOL)managesAppID:(id)d;
- (BOOL)managesBook:(id)book;
- (DMCProfileViewModel)initWithProfile:(id)profile managedPayloads:(BOOL)payloads;
- (DMCProfileViewModel)initWithProfile:(id)profile managedPayloads:(BOOL)payloads profileUIDataProvider:(id)provider;
- (int64_t)_numberOfItemsInSectionsArray:(id)array;
- (int64_t)numberOfAccounts;
- (int64_t)numberOfManagedApps;
- (int64_t)numberOfManagedBooks;
- (int64_t)numberOfRestrictions;
- (void)_determineAvailableElevatedPayloadInfoTypes;
- (void)_managedAppsChanged:(id)changed;
- (void)_managedBooksChanged:(id)changed;
- (void)_reloadProfile:(id)profile;
- (void)dealloc;
- (void)setProfile:(id)profile managedPayloads:(BOOL)payloads;
- (void)setShowManagedPayloads:(BOOL)payloads;
@end

@implementation DMCProfileViewModel

- (DMCProfileViewModel)initWithProfile:(id)profile managedPayloads:(BOOL)payloads
{
  payloadsCopy = payloads;
  profileCopy = profile;
  v7 = objc_opt_new();
  v8 = [(DMCProfileViewModel *)self initWithProfile:profileCopy managedPayloads:payloadsCopy profileUIDataProvider:v7];

  return v8;
}

- (DMCProfileViewModel)initWithProfile:(id)profile managedPayloads:(BOOL)payloads profileUIDataProvider:(id)provider
{
  payloadsCopy = payloads;
  profileCopy = profile;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = DMCProfileViewModel;
  v10 = [(DMCProfileViewModel *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_profileUIDataProvider, provider);
    [(DMCProfileViewModel *)v11 setProfile:profileCopy managedPayloads:payloadsCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__profilesUpdated_ name:@"kMCUIProfilesUpdatedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v11 selector:sel__managedAppsChanged_ name:*MEMORY[0x277D26120] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v11 selector:sel__managedBooksChanged_ name:*MEMORY[0x277D245F8] object:0];
  }

  return v11;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCProfileViewModel;
  [(DMCProfileViewModel *)&v4 dealloc];
}

- (void)_managedAppsChanged:(id)changed
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"kMCUIManagedAppsDidChange";
  v6[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(DMCProfileViewModel *)self _reloadProfile:v4];
}

- (void)_managedBooksChanged:(id)changed
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"kMCUIManagedBooksDidChange";
  v6[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(DMCProfileViewModel *)self _reloadProfile:v4];
}

- (void)setProfile:(id)profile managedPayloads:(BOOL)payloads
{
  payloadsCopy = payloads;
  profileCopy = profile;
  p_profile = &self->_profile;
  if (self->_profile != profileCopy || self->_showManagedPayloads != payloadsCopy)
  {
    v9 = profileCopy;
    objc_storeStrong(p_profile, profile);
    self->_showManagedPayloads = payloadsCopy;
    p_profile = [(DMCProfileViewModel *)self _reloadProfile:0];
    profileCopy = v9;
  }

  MEMORY[0x2821F96F8](p_profile, profileCopy);
}

- (void)setShowManagedPayloads:(BOOL)payloads
{
  if (self->_showManagedPayloads != payloads)
  {
    self->_showManagedPayloads = payloads;
    [(DMCProfileViewModel *)self _reloadProfile:0];
  }
}

- (void)_reloadProfile:(id)profile
{
  v33 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    profile = [(DMCProfileViewModel *)self profile];
    identifier = [profile identifier];
    v29 = 138543618;
    v30 = identifier;
    v31 = 2114;
    v32 = profileCopy;
    _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "DMCProfileViewModel (%{public}@) reloading profile with userInfo: %{public}@", &v29, 0x16u);
  }

  profileUIDataProvider = [(DMCProfileViewModel *)self profileUIDataProvider];
  profile2 = [(DMCProfileViewModel *)self profile];
  v11 = [profileUIDataProvider payloadsSummaryForProfile:profile2 showManagedPayloads:{-[DMCProfileViewModel showManagedPayloads](self, "showManagedPayloads")}];

  managedAppleID = [v11 managedAppleID];
  managedAppleID = self->_managedAppleID;
  self->_managedAppleID = managedAppleID;

  self->_finalInstallationWarningStyle = [v11 finalInstallationWarningStyle];
  accountSections = [v11 accountSections];
  accountSections = self->_accountSections;
  self->_accountSections = accountSections;

  managedAppSections = [v11 managedAppSections];
  managedAppSections = self->_managedAppSections;
  self->_managedAppSections = managedAppSections;

  managedBookSections = [v11 managedBookSections];
  managedBookSections = self->_managedBookSections;
  self->_managedBookSections = managedBookSections;

  moreDetailsSections = [v11 moreDetailsSections];
  moreDetailsSections = self->_moreDetailsSections;
  self->_moreDetailsSections = moreDetailsSections;

  restrictionSections = [v11 restrictionSections];
  restrictionSections = self->_restrictionSections;
  self->_restrictionSections = restrictionSections;

  byodInfoSections = [v11 byodInfoSections];
  byodInfoSections = self->_byodInfoSections;
  self->_byodInfoSections = byodInfoSections;

  payloadInfoSectionSummaries = [v11 payloadInfoSectionSummaries];
  payloadInfoSectionSummaries = self->_payloadInfoSectionSummaries;
  self->_payloadInfoSectionSummaries = payloadInfoSectionSummaries;

  [(DMCProfileViewModel *)self _determineAvailableElevatedPayloadInfoTypes];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"kMCUIProfileDidChangeNotification" object:0 userInfo:profileCopy];
}

- (void)_determineAvailableElevatedPayloadInfoTypes
{
  v3 = objc_opt_new();
  if (self->_accountSections)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [(NSArray *)v3 addObject:v4];
  }

  if (self->_managedAppSections)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:2];
    [(NSArray *)v3 addObject:v5];
  }

  if (self->_managedBookSections)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:3];
    [(NSArray *)v3 addObject:v6];
  }

  if (self->_restrictionSections)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:4];
    [(NSArray *)v3 addObject:v7];
  }

  elevatedPayloadTypes = self->_elevatedPayloadTypes;
  self->_elevatedPayloadTypes = v3;
}

- (BOOL)isMDMProfile
{
  profile = [(DMCProfileViewModel *)self profile];
  if (profile)
  {
    profile2 = [(DMCProfileViewModel *)self profile];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      profile3 = [(DMCProfileViewModel *)self profile];
      isMDMProfile = [profile3 isMDMProfile];
    }

    else
    {
      isMDMProfile = 0;
    }
  }

  else
  {
    isMDMProfile = 0;
  }

  return isMDMProfile;
}

- (BOOL)managesAppID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  managedAppSections = [(DMCProfileViewModel *)self managedAppSections];
  v20 = [managedAppSections countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v6 = *v26;
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(managedAppSections);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        payloadViewModels = [v8 payloadViewModels];
        v10 = [payloadViewModels countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(payloadViewModels);
              }

              managedApp = [*(*(&v21 + 1) + 8 * j) managedApp];
              bundleID = [managedApp bundleID];
              v16 = [bundleID isEqualToString:dCopy];

              if (v16)
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v11 = [payloadViewModels countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
      }

      v17 = 0;
      v20 = [managedAppSections countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (BOOL)managesBook:(id)book
{
  v31 = *MEMORY[0x277D85DE8];
  bookCopy = book;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  managedBookSections = [(DMCProfileViewModel *)self managedBookSections];
  v20 = [managedBookSections countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v6 = *v26;
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(managedBookSections);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        payloadViewModels = [v8 payloadViewModels];
        v10 = [payloadViewModels countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(payloadViewModels);
              }

              managedBook = [*(*(&v21 + 1) + 8 * j) managedBook];
              persistentID = [managedBook persistentID];
              v16 = [persistentID isEqualToString:bookCopy];

              if (v16)
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v11 = [payloadViewModels countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
      }

      v17 = 0;
      v20 = [managedBookSections countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

+ (id)trustTextForProfile:(id)profile
{
  v12[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if ([profileCopy trustLevel] == 2)
  {
    v4 = 0;
  }

  else
  {
    if ([profileCopy isSigned])
    {
      v5 = @"DMC_PROFILE_TRUST_NOT_VERIFIED";
    }

    else
    {
      v5 = @"DMC_PROFILE_TRUST_NOT_SIGNED";
    }

    v6 = DMCEnrollmentLocalizedString(v5);
    v7 = objc_alloc(MEMORY[0x277CCA898]);
    v11 = *MEMORY[0x277D740C0];
    dMCProfileRedColor = [MEMORY[0x277D75348] DMCProfileRedColor];
    v12[0] = dMCProfileRedColor;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v4 = [v7 initWithString:v6 attributes:v9];
  }

  return v4;
}

- (int64_t)_numberOfItemsInSectionsArray:(id)array
{
  v16 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        payloadViewModels = [*(*(&v11 + 1) + 8 * i) payloadViewModels];
        v6 += [payloadViewModels count];
      }

      v5 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)numberOfAccounts
{
  accountSections = [(DMCProfileViewModel *)self accountSections];
  v4 = [(DMCProfileViewModel *)self _numberOfItemsInSectionsArray:accountSections];

  return v4;
}

- (int64_t)numberOfManagedApps
{
  managedAppSections = [(DMCProfileViewModel *)self managedAppSections];
  v4 = [(DMCProfileViewModel *)self _numberOfItemsInSectionsArray:managedAppSections];

  return v4;
}

- (int64_t)numberOfManagedBooks
{
  managedBookSections = [(DMCProfileViewModel *)self managedBookSections];
  v4 = [(DMCProfileViewModel *)self _numberOfItemsInSectionsArray:managedBookSections];

  return v4;
}

- (int64_t)numberOfRestrictions
{
  restrictionSections = [(DMCProfileViewModel *)self restrictionSections];
  v4 = [(DMCProfileViewModel *)self _numberOfItemsInSectionsArray:restrictionSections];

  return v4;
}

@end