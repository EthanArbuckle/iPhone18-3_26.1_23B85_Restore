@interface DSSafetyCheckWhenBlocking
+ (BOOL)featureEnabled;
- (BOOL)isFetchNeeded;
- (DSSafetyCheckWhenBlocking)init;
- (void)cleanup;
- (void)fetchSharingWithCompletion:(id)completion;
- (void)isSharingWith:(id)with completion:(id)completion;
- (void)isSharingWithContacts:(id)contacts completion:(id)completion;
- (void)safetyCheckControllerWithPreview:(BOOL)preview forPeople:(id)people completion:(id)completion;
- (void)startManageSharingWithContact:(id)contact completion:(id)completion;
@end

@implementation DSSafetyCheckWhenBlocking

- (DSSafetyCheckWhenBlocking)init
{
  v7.receiver = self;
  v7.super_class = DSSafetyCheckWhenBlocking;
  v2 = [(DSSafetyCheckWhenBlocking *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.DigitalSeparation", "DSBlockingController");
    v4 = DSLog;
    DSLog = v3;

    mEMORY[0x277D054E8] = [MEMORY[0x277D054E8] sharedInstance];
    [(DSSafetyCheckWhenBlocking *)v2 setPermissions:mEMORY[0x277D054E8]];
  }

  return v2;
}

- (void)cleanup
{
  v3 = DSLog;
  if (os_log_type_enabled(DSLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248C7E000, v3, OS_LOG_TYPE_DEFAULT, "Disconnecting from safetycheckd", v5, 2u);
  }

  permissions = [(DSSafetyCheckWhenBlocking *)self permissions];
  [permissions disconnect];
}

+ (BOOL)featureEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isiPhone = [currentDevice sf_isiPhone];

    LOBYTE(v2) = sf_isiPhone;
  }

  return v2;
}

- (void)fetchSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  featureEnabled = [objc_opt_class() featureEnabled];
  v6 = DSLog;
  if (featureEnabled)
  {
    if (os_log_type_enabled(DSLog, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_248C7E000, v6, OS_LOG_TYPE_INFO, "fetchSharingWithCompletion: Starting sharing fetch", buf, 2u);
    }

    objc_initWeak(buf, self);
    permissions = [(DSSafetyCheckWhenBlocking *)self permissions];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__DSSafetyCheckWhenBlocking_fetchSharingWithCompletion___block_invoke;
    v8[3] = &unk_278F75390;
    objc_copyWeak(&v10, buf);
    v9 = completionCopy;
    [permissions fetchSharingWithCompletion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(DSLog, OS_LOG_TYPE_ERROR))
    {
      [DSSafetyCheckWhenBlocking fetchSharingWithCompletion:v6];
    }

    completionCopy[2](completionCopy);
  }
}

void __56__DSSafetyCheckWhenBlocking_fetchSharingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = DSLog;
    if (os_log_type_enabled(DSLog, OS_LOG_TYPE_ERROR))
    {
      __56__DSSafetyCheckWhenBlocking_fetchSharingWithCompletion___block_invoke_cold_1(v3, v5);
    }

    [WeakRetained setPrefetchError:v3];
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)isFetchNeeded
{
  featureEnabled = [objc_opt_class() featureEnabled];
  if (featureEnabled)
  {
    permissions = [(DSSafetyCheckWhenBlocking *)self permissions];
    isFetchNeeded = [permissions isFetchNeeded];

    LOBYTE(featureEnabled) = isFetchNeeded;
  }

  return featureEnabled;
}

- (void)isSharingWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__DSSafetyCheckWhenBlocking_isSharingWith_completion___block_invoke;
  v10[3] = &unk_278F753B8;
  objc_copyWeak(&v13, &location);
  v8 = withCopy;
  v11 = v8;
  v9 = completionCopy;
  v12 = v9;
  [(DSSafetyCheckWhenBlocking *)self fetchSharingWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __54__DSSafetyCheckWhenBlocking_isSharingWith_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = DSLog;
  if (os_log_type_enabled(DSLog, OS_LOG_TYPE_DEBUG))
  {
    __54__DSSafetyCheckWhenBlocking_isSharingWith_completion___block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained permissions];
  [v4 makeSharingPeople];

  v5 = [WeakRetained permissions];
  v6 = [v5 sharingPeopleForIdentities:*(a1 + 32)];

  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) displayName];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)isSharingWithContacts:(id)contacts completion:(id)completion
{
  contactsCopy = contacts;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__DSSafetyCheckWhenBlocking_isSharingWithContacts_completion___block_invoke;
  v10[3] = &unk_278F753B8;
  objc_copyWeak(&v13, &location);
  v8 = contactsCopy;
  v11 = v8;
  v9 = completionCopy;
  v12 = v9;
  [(DSSafetyCheckWhenBlocking *)self fetchSharingWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __62__DSSafetyCheckWhenBlocking_isSharingWithContacts_completion___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = DSLog;
  if (os_log_type_enabled(DSLog, OS_LOG_TYPE_DEBUG))
  {
    __62__DSSafetyCheckWhenBlocking_isSharingWithContacts_completion___block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [objc_alloc(MEMORY[0x277D054A0]) initWithContact:v10];
          [v4 addObject:v11];
        }

        else
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CBEB18] array];
  if ([v3 count])
  {
    v13 = [WeakRetained permissions];
    v14 = [v13 sharingPeopleForContacts:v3];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v37 + 1) + 8 * j) displayName];
          [v12 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v17);
    }
  }

  if ([v4 count])
  {
    v21 = [WeakRetained permissions];
    [v21 makeSharingPeople];

    v22 = [WeakRetained permissions];
    v23 = [v22 sharingPeopleForIdentities:v4];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v33 + 1) + 8 * k) displayName];
          [v12 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v26);
    }
  }

  (*(*(v32 + 40) + 16))();

  v30 = *MEMORY[0x277D85DE8];
}

- (void)startManageSharingWithContact:(id)contact completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v6 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  contactCopy2 = contact;
  v9 = [v6 arrayWithObjects:&contactCopy count:1];

  [(DSSafetyCheckWhenBlocking *)self safetyCheckControllerWithPreview:1 forContacts:v9 completion:completionCopy, contactCopy, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)safetyCheckControllerWithPreview:(BOOL)preview forPeople:(id)people completion:(id)completion
{
  peopleCopy = people;
  completionCopy = completion;
  if ([peopleCopy count])
  {
    v10 = [MEMORY[0x277D054F0] sortedXPCArray:peopleCopy];
    permissions = [(DSSafetyCheckWhenBlocking *)self permissions];
    prefetchError = [(DSSafetyCheckWhenBlocking *)self prefetchError];
    [(DSSafetyCheckWhenBlocking *)self setPrefetchError:0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__DSSafetyCheckWhenBlocking_safetyCheckControllerWithPreview_forPeople_completion___block_invoke;
    v16[3] = &unk_278F753E0;
    v17 = peopleCopy;
    v18 = permissions;
    v19 = prefetchError;
    v20 = v10;
    previewCopy = preview;
    v21 = completionCopy;
    v13 = v10;
    v14 = prefetchError;
    v15 = permissions;
    dispatch_async(MEMORY[0x277D85CD0], v16);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __83__DSSafetyCheckWhenBlocking_safetyCheckControllerWithPreview_forPeople_completion___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count] == 1)
  {
    v2 = [DSBlockingPermissionsDetailController alloc];
    v3 = [*(a1 + 32) firstObject];
    v13[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v5 = [(DSBlockingPermissionsDetailController *)v2 initWithPeople:v4 permissions:*(a1 + 40)];

    if (*(a1 + 48))
    {
      [(DSBlockingPermissionsDetailController *)v5 presentFetchError:?];
    }
  }

  else
  {
    v6 = [[DSBlockingPermissionsController alloc] initWithPeople:*(a1 + 56) permissions:*(a1 + 40)];
    v5 = v6;
    if (*(a1 + 48))
    {
      [(DSBlockingPermissionsController *)v6 presentFetchErrorMessage:?];
    }
  }

  v7 = [DSNavigationController alloc];
  v12 = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v9 = [(DSNavigationController *)v7 initStartingWithBlockingPanes:v8];

  if (*(a1 + 72) == 1)
  {
    v10 = [DSBlockingAlertController alertControllerWithBlockedPeople:*(a1 + 56)];
    [v10 setSafetyCheckController:v9];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __56__DSSafetyCheckWhenBlocking_fetchSharingWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "fetchSharingWithCompletion: Permissions fetch completed with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end