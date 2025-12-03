@interface CSLPRFBulletinBoardApplicationLibrary
- (CSLPRFBulletinBoardApplicationLibrary)init;
- (NSArray)allApplications;
- (NSDictionary)allApplicationsDictionary;
- (id)_loadApplications;
- (id)applicationWithBundleIdentifier:(id)identifier;
- (void)addObserver:(id)observer;
- (void)allApplicationsWithCompletion:(id)completion;
- (void)applicationWithBundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CSLPRFBulletinBoardApplicationLibrary

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  allApplications = [(CSLPRFBulletinBoardApplicationLibrary *)self allApplications];
  [(CSLPRFObservationHelper *)self->_observationHelper addObserver:observerCopy];
  [observerCopy applicationLibrary:self didAddApplications:allApplications];
}

- (void)allApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  allApplications = [(CSLPRFBulletinBoardApplicationLibrary *)self allApplications];
  (*(completion + 2))(completionCopy, allApplications);
}

- (NSDictionary)allApplicationsDictionary
{
  _loadApplications = [(CSLPRFBulletinBoardApplicationLibrary *)self _loadApplications];
  v3 = [_loadApplications copy];

  return v3;
}

- (id)_loadApplications
{
  v36 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mEMORY[0x277D37A58] = [MEMORY[0x277D37A58] sharedManager];
    [mEMORY[0x277D37A58] loadBBSections];

    mEMORY[0x277D37A58]2 = [MEMORY[0x277D37A58] sharedManager];
    bbSections = [mEMORY[0x277D37A58]2 bbSections];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = bbSections;
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v28;
      *&v7 = 138412546;
      v22 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          if ([v11 allowsNotifications] && (objc_msgSend(v11, "alertType") || objc_msgSend(v11, "lockScreenSetting") == 2) && (objc_msgSend(v11, "suppressFromSettings") & 1) == 0 && objc_msgSend(v11, "sectionType") != 1)
          {
            v12 = [CSLPRFApp appWithBBSectionInfo:v11];
            bundleIdentifier = [v12 bundleIdentifier];
            if ([bundleIdentifier isEqualToString:@"com.apple.news"] && (BPSIsNewsAllowed() & 1) == 0)
            {
              v14 = cslprf_app_library_log();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                *buf = v22;
                selfCopy = self;
                v34 = 2112;
                v35 = bundleIdentifier;
                _os_log_debug_impl(&dword_22CE92000, v14, OS_LOG_TYPE_DEBUG, "%@ app %@ hidden by policy", buf, 0x16u);
              }
            }

            else
            {

              [dictionary setObject:v12 forKey:bundleIdentifier];
            }
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);
    }

    os_unfair_lock_lock((self + 24));
    v15 = *(self + 16);
    objc_storeStrong((self + 16), dictionary);
    os_unfair_lock_unlock((self + 24));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__CSLPRFBulletinBoardApplicationLibrary__loadApplications__block_invoke;
    block[3] = &unk_2787453E0;
    block[4] = self;
    v16 = dictionary;
    v25 = v16;
    v26 = v15;
    v17 = v15;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v18 = v26;
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __58__CSLPRFBulletinBoardApplicationLibrary__loadApplications__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [MEMORY[0x277CBEB18] array];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __99__CSLPRFBulletinBoardApplicationLibrary__notifyObserversOfChangesWithApplications_oldApplications___block_invoke;
    v34[3] = &unk_278744D98;
    v23 = v4;
    v8 = v4;
    v35 = v8;
    v22 = v6;
    v36 = v22;
    v9 = v5;
    v37 = v9;
    [v3 enumerateKeysAndObjectsUsingBlock:v34];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = [v3 objectForKey:{v15, v22}];

          if (!v16)
          {
            [v7 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v17 = *(v1 + 8);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __99__CSLPRFBulletinBoardApplicationLibrary__notifyObserversOfChangesWithApplications_oldApplications___block_invoke_2;
      v28[3] = &unk_278744DC0;
      v28[4] = v1;
      v29 = v9;
      [v17 notifyObserversWithBlock:v28];
    }

    v18 = v22;
    if ([v22 count])
    {
      v19 = *(v1 + 8);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __99__CSLPRFBulletinBoardApplicationLibrary__notifyObserversOfChangesWithApplications_oldApplications___block_invoke_3;
      v26[3] = &unk_278744DC0;
      v26[4] = v1;
      v27 = v18;
      [v19 notifyObserversWithBlock:v26];
    }

    if ([v7 count])
    {
      v20 = *(v1 + 8);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __99__CSLPRFBulletinBoardApplicationLibrary__notifyObserversOfChangesWithApplications_oldApplications___block_invoke_4;
      v24[3] = &unk_278744DC0;
      v24[4] = v1;
      v25 = v7;
      [v20 notifyObserversWithBlock:v24];
    }

    v4 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __99__CSLPRFBulletinBoardApplicationLibrary__notifyObserversOfChangesWithApplications_oldApplications___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    if ([v8 isEqual:v5])
    {
      goto LABEL_6;
    }

    v6 = v8;
    v7 = 40;
  }

  else
  {
    v6 = v8;
    v7 = 48;
  }

  [*(a1 + v7) addObject:v6];
LABEL_6:
}

- (NSArray)allApplications
{
  _loadApplications = [(CSLPRFBulletinBoardApplicationLibrary *)self _loadApplications];
  allValues = [_loadApplications allValues];

  return allValues;
}

- (void)applicationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8 = [(CSLPRFBulletinBoardApplicationLibrary *)self applicationWithBundleIdentifier:identifier];
  (*(completion + 2))(completionCopy, v8);
}

- (id)applicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self)
  {
    os_unfair_lock_lock(&self->_lock);
    _loadApplications = self->_lock_cachedApplications;
    os_unfair_lock_unlock(&self->_lock);
    if (!_loadApplications)
    {
      _loadApplications = [(CSLPRFBulletinBoardApplicationLibrary *)self _loadApplications];
    }
  }

  else
  {
    _loadApplications = 0;
  }

  v6 = [(NSMutableDictionary *)_loadApplications objectForKey:identifierCopy];

  return v6;
}

- (CSLPRFBulletinBoardApplicationLibrary)init
{
  v7.receiver = self;
  v7.super_class = CSLPRFBulletinBoardApplicationLibrary;
  v2 = [(CSLPRFBulletinBoardApplicationLibrary *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(CSLPRFObservationHelper);
    observationHelper = v3->_observationHelper;
    v3->_observationHelper = v4;
  }

  return v3;
}

@end