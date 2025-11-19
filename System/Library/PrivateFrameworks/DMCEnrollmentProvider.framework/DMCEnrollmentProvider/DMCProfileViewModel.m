@interface DMCProfileViewModel
+ (id)trustTextForProfile:(id)a3;
- (BOOL)isMDMProfile;
- (BOOL)managesAppID:(id)a3;
- (BOOL)managesBook:(id)a3;
- (DMCProfileViewModel)initWithProfile:(id)a3 managedPayloads:(BOOL)a4;
- (DMCProfileViewModel)initWithProfile:(id)a3 managedPayloads:(BOOL)a4 profileUIDataProvider:(id)a5;
- (int64_t)_numberOfItemsInSectionsArray:(id)a3;
- (int64_t)numberOfAccounts;
- (int64_t)numberOfManagedApps;
- (int64_t)numberOfManagedBooks;
- (int64_t)numberOfRestrictions;
- (void)_determineAvailableElevatedPayloadInfoTypes;
- (void)_managedAppsChanged:(id)a3;
- (void)_managedBooksChanged:(id)a3;
- (void)_reloadProfile:(id)a3;
- (void)dealloc;
- (void)setProfile:(id)a3 managedPayloads:(BOOL)a4;
- (void)setShowManagedPayloads:(BOOL)a3;
@end

@implementation DMCProfileViewModel

- (DMCProfileViewModel)initWithProfile:(id)a3 managedPayloads:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(DMCProfileViewModel *)self initWithProfile:v6 managedPayloads:v4 profileUIDataProvider:v7];

  return v8;
}

- (DMCProfileViewModel)initWithProfile:(id)a3 managedPayloads:(BOOL)a4 profileUIDataProvider:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = DMCProfileViewModel;
  v10 = [(DMCProfileViewModel *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_profileUIDataProvider, a5);
    [(DMCProfileViewModel *)v11 setProfile:v8 managedPayloads:v6];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v11 selector:sel__profilesUpdated_ name:@"kMCUIProfilesUpdatedNotification" object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v11 selector:sel__managedAppsChanged_ name:*MEMORY[0x277D26120] object:0];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v11 selector:sel__managedBooksChanged_ name:*MEMORY[0x277D245F8] object:0];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DMCProfileViewModel;
  [(DMCProfileViewModel *)&v4 dealloc];
}

- (void)_managedAppsChanged:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"kMCUIManagedAppsDidChange";
  v6[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(DMCProfileViewModel *)self _reloadProfile:v4];
}

- (void)_managedBooksChanged:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"kMCUIManagedBooksDidChange";
  v6[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(DMCProfileViewModel *)self _reloadProfile:v4];
}

- (void)setProfile:(id)a3 managedPayloads:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  p_profile = &self->_profile;
  if (self->_profile != v7 || self->_showManagedPayloads != v4)
  {
    v9 = v7;
    objc_storeStrong(p_profile, a3);
    self->_showManagedPayloads = v4;
    p_profile = [(DMCProfileViewModel *)self _reloadProfile:0];
    v7 = v9;
  }

  MEMORY[0x2821F96F8](p_profile, v7);
}

- (void)setShowManagedPayloads:(BOOL)a3
{
  if (self->_showManagedPayloads != a3)
  {
    self->_showManagedPayloads = a3;
    [(DMCProfileViewModel *)self _reloadProfile:0];
  }
}

- (void)_reloadProfile:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(DMCProfileViewModel *)self profile];
    v8 = [v7 identifier];
    v29 = 138543618;
    v30 = v8;
    v31 = 2114;
    v32 = v4;
    _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_DEFAULT, "DMCProfileViewModel (%{public}@) reloading profile with userInfo: %{public}@", &v29, 0x16u);
  }

  v9 = [(DMCProfileViewModel *)self profileUIDataProvider];
  v10 = [(DMCProfileViewModel *)self profile];
  v11 = [v9 payloadsSummaryForProfile:v10 showManagedPayloads:{-[DMCProfileViewModel showManagedPayloads](self, "showManagedPayloads")}];

  v12 = [v11 managedAppleID];
  managedAppleID = self->_managedAppleID;
  self->_managedAppleID = v12;

  self->_finalInstallationWarningStyle = [v11 finalInstallationWarningStyle];
  v14 = [v11 accountSections];
  accountSections = self->_accountSections;
  self->_accountSections = v14;

  v16 = [v11 managedAppSections];
  managedAppSections = self->_managedAppSections;
  self->_managedAppSections = v16;

  v18 = [v11 managedBookSections];
  managedBookSections = self->_managedBookSections;
  self->_managedBookSections = v18;

  v20 = [v11 moreDetailsSections];
  moreDetailsSections = self->_moreDetailsSections;
  self->_moreDetailsSections = v20;

  v22 = [v11 restrictionSections];
  restrictionSections = self->_restrictionSections;
  self->_restrictionSections = v22;

  v24 = [v11 byodInfoSections];
  byodInfoSections = self->_byodInfoSections;
  self->_byodInfoSections = v24;

  v26 = [v11 payloadInfoSectionSummaries];
  payloadInfoSectionSummaries = self->_payloadInfoSectionSummaries;
  self->_payloadInfoSectionSummaries = v26;

  [(DMCProfileViewModel *)self _determineAvailableElevatedPayloadInfoTypes];
  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  [v28 postNotificationName:@"kMCUIProfileDidChangeNotification" object:0 userInfo:v4];
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
  v3 = [(DMCProfileViewModel *)self profile];
  if (v3)
  {
    v4 = [(DMCProfileViewModel *)self profile];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DMCProfileViewModel *)self profile];
      v6 = [v5 isMDMProfile];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)managesAppID:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(DMCProfileViewModel *)self managedAppSections];
  v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [v8 payloadViewModels];
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = [*(*(&v21 + 1) + 8 * j) managedApp];
              v15 = [v14 bundleID];
              v16 = [v15 isEqualToString:v4];

              if (v16)
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
      v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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

- (BOOL)managesBook:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(DMCProfileViewModel *)self managedBookSections];
  v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [v8 payloadViewModels];
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = [*(*(&v21 + 1) + 8 * j) managedBook];
              v15 = [v14 persistentID];
              v16 = [v15 isEqualToString:v4];

              if (v16)
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
      v20 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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

+ (id)trustTextForProfile:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 trustLevel] == 2)
  {
    v4 = 0;
  }

  else
  {
    if ([v3 isSigned])
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
    v8 = [MEMORY[0x277D75348] DMCProfileRedColor];
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v4 = [v7 initWithString:v6 attributes:v9];
  }

  return v4;
}

- (int64_t)_numberOfItemsInSectionsArray:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) payloadViewModels];
        v6 += [v9 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(DMCProfileViewModel *)self accountSections];
  v4 = [(DMCProfileViewModel *)self _numberOfItemsInSectionsArray:v3];

  return v4;
}

- (int64_t)numberOfManagedApps
{
  v3 = [(DMCProfileViewModel *)self managedAppSections];
  v4 = [(DMCProfileViewModel *)self _numberOfItemsInSectionsArray:v3];

  return v4;
}

- (int64_t)numberOfManagedBooks
{
  v3 = [(DMCProfileViewModel *)self managedBookSections];
  v4 = [(DMCProfileViewModel *)self _numberOfItemsInSectionsArray:v3];

  return v4;
}

- (int64_t)numberOfRestrictions
{
  v3 = [(DMCProfileViewModel *)self restrictionSections];
  v4 = [(DMCProfileViewModel *)self _numberOfItemsInSectionsArray:v3];

  return v4;
}

@end