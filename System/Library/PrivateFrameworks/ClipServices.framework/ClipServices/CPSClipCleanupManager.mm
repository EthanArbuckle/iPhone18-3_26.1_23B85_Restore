@interface CPSClipCleanupManager
+ (id)_parentBundleIDsFromAppRecord:(id)a3;
+ (id)sharedManager;
- (BOOL)_shouldDeleteClipWithRecord:(id)a3 parentRecord:(id)a4;
- (CPSClipCleanupManager)init;
- (id)_allAppClipsForPlaceholderOnly:(BOOL)a3;
- (void)_applicationsDidChange:(id)a3 operationHandler:(id)a4;
- (void)_deleteClipWhenBackgrounded:(id)a3 completionHandler:(id)a4;
- (void)_didReceiveApplicationChangedNotification:(id)a3 operationHandler:(id)a4;
- (void)_didReceiveApplicationRegisteredNotification:(id)a3;
- (void)_didReceiveApplicationUnregisteredNotification:(id)a3;
- (void)_didReceiveMCSettingsChangedNotification:(id)a3;
- (void)_handleNewInstalledAppWithBundleID:(id)a3;
- (void)_handleNewUninstalledAppWithBundleID:(id)a3;
- (void)_registerDistributedNotificationHandler;
- (void)_registerLocalNotifications;
- (void)_removeClipCancellingPendingRemovalIfNeeded:(id)a3 completionHandler:(id)a4;
- (void)_transferTCCPermissionsFromClipWithBundleID:(id)a3 toParentAppWithBundleID:(id)a4;
- (void)_uninstallClipWithBundleIdentifier:(id)a3 deletionPromise:(id)a4;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)assertionTargetProcessDidExit:(id)a3;
- (void)dealloc;
- (void)removeClipsByUser:(id)a3 completionHandler:(id)a4;
- (void)removeFailedClipInstallsWithCompletionHandler:(id)a3;
- (void)uninstallClipsWithParentAppInstalledWithCompletionHandler:(id)a3;
@end

@implementation CPSClipCleanupManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[CPSClipCleanupManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __38__CPSClipCleanupManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(CPSClipCleanupManager);

  return MEMORY[0x2821F96F8]();
}

- (CPSClipCleanupManager)init
{
  v13.receiver = self;
  v13.super_class = CPSClipCleanupManager;
  v2 = [(CPSClipCleanupManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ClipServices.CPSClipCleanupManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingTerminationAssertionsByBundleIDs = v2->_pendingTerminationAssertionsByBundleIDs;
    v2->_pendingTerminationAssertionsByBundleIDs = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clipDeletionPromisesByBundleIDs = v2->_clipDeletionPromisesByBundleIDs;
    v2->_clipDeletionPromisesByBundleIDs = v8;

    [(CPSClipCleanupManager *)v2 _registerLocalNotifications];
    [(CPSClipCleanupManager *)v2 _registerDistributedNotificationHandler];
    v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v10 addObserver:v2];

    v11 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 removeObserver:self];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(NSMutableDictionary *)self->_pendingTerminationAssertionsByBundleIDs allValues];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        [v9 removeObserver:self];
        [v9 invalidate];
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(NSMutableDictionary *)self->_clipDeletionPromisesByBundleIDs allValues];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * j);
        v16 = [MEMORY[0x277CCA9B8] cps_errorWithCode:18];
        [v15 finishWithError:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }

  v18.receiver = self;
  v18.super_class = CPSClipCleanupManager;
  [(CPSClipCleanupManager *)&v18 dealloc];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeClipsByUser:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v18 = v6;
    _os_log_impl(&dword_2436ED000, v8, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: user deleting clips (%{private}@)", buf, 0xCu);
  }

  v9 = +[CPSWebClipStore sharedStore];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke;
  v13[3] = &unk_278DCDCA8;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  [v9 removeWebClipsWithApplicationBundleIdentifiers:v11 completionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a2;
  if ([v12 count])
  {
    v3 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke_cold_1(a1);
    }
  }

  v4 = dispatch_group_create();
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        dispatch_group_enter(v4);
        v9 = *(a1 + 40);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke_8;
        v14[3] = &unk_278DCDC80;
        v16 = &v21;
        v15 = v4;
        [v9 _removeClipCancellingPendingRemovalIfNeeded:v8 completionHandler:v14];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v5);
  }

  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v22[5]);
  }

  _Block_object_dispose(&v21, 8);

  v11 = *MEMORY[0x277D85DE8];
}

void __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (!v3)
    {
      v4 = [MEMORY[0x277CBEB18] array];
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v3 addObject:v7];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_removeClipCancellingPendingRemovalIfNeeded:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__CPSClipCleanupManager__removeClipCancellingPendingRemovalIfNeeded_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __87__CPSClipCleanupManager__removeClipCancellingPendingRemovalIfNeeded_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 removeObserver:*(a1 + 32)];
    [v3 invalidate];
    [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:*(a1 + 40)];
  }

  v4 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6)
  {
    if (!v4)
    {
      v5 = +[CPSPromise promise];
      v6 = *(a1 + 48);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__CPSClipCleanupManager__removeClipCancellingPendingRemovalIfNeeded_completionHandler___block_invoke_2;
    v9[3] = &unk_278DCDCD0;
    v10 = v6;
    [v5 addCompletionBlock:v9];
  }

  [*(a1 + 32) _uninstallClipWithBundleIdentifier:*(a1 + 40) deletionPromise:v5];
  [*(*(a1 + 32) + 24) setObject:0 forKeyedSubscript:*(a1 + 40)];
  if (![*(*(a1 + 32) + 24) count])
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;
  }
}

- (void)removeFailedClipInstallsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = dispatch_group_create();
  v7 = +[CPSWebClipStore sharedStore];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke;
  v11[3] = &unk_278DCDD48;
  v12 = v6;
  v13 = v5;
  v14 = self;
  v15 = v4;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [v7 fetchAppClipsWithCompletionHandler:v11];
}

void __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v27;
    *&v5 = 138477827;
    v19 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        if (([v9 isApplicationInstalled] & 1) == 0)
        {
          v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v31 = v9;
            _os_log_impl(&dword_2436ED000, v10, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Found WebClip with failed app clip install: %{private}@", buf, 0xCu);
          }

          dispatch_group_enter(*(a1 + 32));
          v11 = +[CPSWebClipStore sharedStore];
          v12 = [v9 identifier];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke_15;
          v24[3] = &unk_278DCDD20;
          v24[4] = v9;
          v25 = *(a1 + 32);
          [v11 removeWebClipWithIdentifier:v12 completionHandler:v24];

          v13 = [v9 applicationBundleIdentifier];

          if (v13)
          {
            v14 = *(a1 + 40);
            v15 = [v9 applicationBundleIdentifier];
            [v14 addObject:v15];
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v6);
  }

  v16 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke_16;
  block[3] = &unk_278DCDCF8;
  v20 = *(a1 + 40);
  v17 = v20.i64[0];
  v22 = vextq_s8(v20, v20, 8uLL);
  v23 = *(a1 + 56);
  dispatch_group_notify(v16, MEMORY[0x277D85CD0], block);

  v18 = *MEMORY[0x277D85DE8];
}

void __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 identifier];
    v8 = [v3 cps_privacyPreservingDescription];
    v10 = 138478083;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Removed WebClip with failed AppClip install: %{private}@, error: %{public}@", &v10, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __71__CPSClipCleanupManager_removeFailedClipInstallsWithCompletionHandler___block_invoke_16(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v1 = [*(a1 + 32) _allAppClipsForPlaceholderOnly:1];
  v2 = [v1 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v30;
    *&v3 = 138477827;
    v21 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [v7 bundleIdentifier];
        if (v8 && [v7 isPlaceholder] && !+[CPSUtilities isBundleIdentifierBeingInstalled:](CPSUtilities, "isBundleIdentifierBeingInstalled:", v8))
        {
          v9 = CPS_LOG_CHANNEL_PREFIXClipServices();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            buf = v21;
            v35 = v8;
            _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Found abandoned app clip placeholder: %{private}@", &buf, 0xCu);
          }

          [*(a1 + 40) addObject:v8];
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v4);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v26;
    *&v12 = 138477827;
    v22 = v12;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v25 + 1) + 8 * j);
        v24 = 0;
        v17 = [CPSUtilities versionIdentifierForAppWithBundleIdentifier:v16 isPlaceholder:&v24, v22];
        if (v17 && v24 == 1)
        {
          v18 = CPS_LOG_CHANNEL_PREFIXClipServices();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            buf = v22;
            v35 = v16;
            _os_log_impl(&dword_2436ED000, v18, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Removing AppClip that failed install: %{private}@", &buf, 0xCu);
          }

          [CPSUtilities uninstallAppWithBundleIdentifier:v16 completion:0];
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v13);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)uninstallClipsWithParentAppInstalledWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__CPSClipCleanupManager_uninstallClipsWithParentAppInstalledWithCompletionHandler___block_invoke;
  v7[3] = &unk_278DCDD70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __83__CPSClipCleanupManager_uninstallClipsWithParentAppInstalledWithCompletionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v27 = [MEMORY[0x277CBEB18] array];
  v28 = a1;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [*(a1 + 32) _allAppClipsForPlaceholderOnly:0];
  v25 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v25)
  {
    v24 = *v38;
    do
    {
      v2 = 0;
      do
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v2;
        v3 = *(*(&v37 + 1) + 8 * v2);
        v4 = [CPSClipCleanupManager _parentBundleIDsFromAppRecord:v3];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v5 = [v4 countByEnumeratingWithState:&v33 objects:v46 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v34;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v34 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v33 + 1) + 8 * i);
              v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v9 allowPlaceholder:0 error:0];
              if (v10)
              {
                v11 = [*(v28 + 32) _shouldDeleteClipWithRecord:v3 parentRecord:v10];
                v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
                v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
                if (v11)
                {
                  if (v13)
                  {
                    v14 = v12;
                    v15 = [v3 bundleIdentifier];
                    *buf = 138478083;
                    v43 = v15;
                    v44 = 2113;
                    v45 = v9;
                    _os_log_impl(&dword_2436ED000, v14, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Found clip (%{private}@) with installed parent app %{private}@ to delete", buf, 0x16u);
                  }

                  v16 = [v3 bundleIdentifier];
                  [v27 addObject:v16];
                }

                else if (v13)
                {
                  *buf = 0;
                  _os_log_impl(&dword_2436ED000, v12, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Found installed parent app but clip should not be deleted", buf, 2u);
                }
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v33 objects:v46 count:16];
          }

          while (v6);
        }

        v2 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v25);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v27;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(v28 + 32) _deleteClipWhenBackgrounded:*(*(&v29 + 1) + 8 * j) completionHandler:0];
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v19);
  }

  (*(*(v28 + 40) + 16))();
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_registerDistributedNotificationHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__CPSClipCleanupManager__registerDistributedNotificationHandler__block_invoke;
  v4[3] = &unk_278DCDD98;
  objc_copyWeak(&v5, &location);
  v3 = MEMORY[0x245D3D5F0](v4);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", self->_queue, v3);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", self->_queue, v3);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__CPSClipCleanupManager__registerDistributedNotificationHandler__block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x245D3D7E0]();
  v5 = MEMORY[0x277D86468];
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *MEMORY[0x277D86430];
      v8 = v6;
      v34 = 136315138;
      string = xpc_dictionary_get_string(v3, v7);
      _os_log_impl(&dword_2436ED000, v8, OS_LOG_TYPE_INFO, "CPSClipCleanupManager: Received distributed notification via XPC event: %s", &v34, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (!WeakRetained || MEMORY[0x245D3D7E0](v3) != v5)
    {
      goto LABEL_17;
    }

    v10 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86430]);
    if (!v10)
    {
      v17 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __64__CPSClipCleanupManager__registerDistributedNotificationHandler__block_invoke_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
      }

      goto LABEL_17;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    v12 = xpc_dictionary_get_value(v3, "UserInfo");
    v13 = v12;
    if (v12 && MEMORY[0x245D3D7E0](v12) == v5)
    {
      v14 = _CFXPCCreateCFObjectFromXPCObject();
      if (!v14)
      {
        v26 = CPS_LOG_CHANNEL_PREFIXClipServices();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __64__CPSClipCleanupManager__registerDistributedNotificationHandler__block_invoke_cold_1(v26, v27, v28, v29, v30, v31, v32, v33);
        }

        goto LABEL_14;
      }
    }

    v15 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412546;
      string = v11;
      v36 = 2112;
      v37 = 0;
      _os_log_impl(&dword_2436ED000, v15, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Post notification with name: %@, userInfo: %@", &v34, 0x16u);
    }

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 postNotificationName:v11 object:0 userInfo:0];

LABEL_14:
LABEL_17:
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_registerLocalNotifications
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMCEffectiveSettingsChangedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"CPSClipCleanupManager.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_didReceiveApplicationRegisteredNotification:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__CPSClipCleanupManager__didReceiveApplicationRegisteredNotification___block_invoke;
  v3[3] = &unk_278DCDDC0;
  v3[4] = self;
  [(CPSClipCleanupManager *)self _didReceiveApplicationChangedNotification:a3 operationHandler:v3];
}

- (void)_didReceiveApplicationUnregisteredNotification:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__CPSClipCleanupManager__didReceiveApplicationUnregisteredNotification___block_invoke;
  v3[3] = &unk_278DCDDC0;
  v3[4] = self;
  [(CPSClipCleanupManager *)self _didReceiveApplicationChangedNotification:a3 operationHandler:v3];
}

- (void)_didReceiveApplicationChangedNotification:(id)a3 operationHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 userInfo];
  if (([v7 safari_BOOLForKey:@"isPlaceholder"] & 1) == 0)
  {
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2436ED000, v8, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Received app registered (non-placeholder) notification", buf, 2u);
    }

    v9 = [v7 safari_arrayForKey:@"bundleIDs"];
    v10 = [v9 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      queue = self->_queue;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __84__CPSClipCleanupManager__didReceiveApplicationChangedNotification_operationHandler___block_invoke;
      v21[3] = &unk_278DCDD70;
      v22 = v9;
      v23 = v6;
      dispatch_async(queue, v21);
    }

    else
    {
      v13 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CPSClipCleanupManager *)v13 _didReceiveApplicationChangedNotification:v14 operationHandler:v15, v16, v17, v18, v19, v20];
      }
    }
  }
}

void __84__CPSClipCleanupManager__didReceiveApplicationChangedNotification_operationHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_allAppClipsForPlaceholderOnly:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x277CC1E70] enumeratorWithOptions:v3];
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_45];
  [v4 setPredicate:v5];

  return v4;
}

uint64_t __56__CPSClipCleanupManager__allAppClipsForPlaceholderOnly___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 appClipMetadata];

  if (v3)
  {
    v4 = [v2 bundleIdentifier];
    v3 = [v4 length] != 0;
  }

  return v3;
}

- (void)_didReceiveMCSettingsChangedNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke;
  block[3] = &unk_278DCDE30;
  block[4] = self;
  dispatch_async(queue, block);
}

void __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2436ED000, v1, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Received MobileConfiguration settings change notificaion.", &buf, 2u);
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v2 = getMCProfileConnectionClass_softClass;
  v37 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v40 = __getMCProfileConnectionClass_block_invoke;
    v41 = &unk_278DCDC00;
    v42 = &v34;
    __getMCProfileConnectionClass_block_invoke(&buf);
    v2 = v35[3];
  }

  v3 = v2;
  _Block_object_dispose(&v34, 8);
  v26 = [v2 sharedConnection];
  v4 = [v26 isAppClipsAllowed];
  v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"YES";
    if (v4)
    {
      v6 = @"NO";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: appClipsRestricted: %@", &buf, 0xCu);
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v7 = getMCFeatureMaximumAppsRatingSymbolLoc_ptr;
  v37 = getMCFeatureMaximumAppsRatingSymbolLoc_ptr;
  if (!getMCFeatureMaximumAppsRatingSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v40 = __getMCFeatureMaximumAppsRatingSymbolLoc_block_invoke;
    v41 = &unk_278DCDC00;
    v42 = &v34;
    v8 = ManagedConfigurationLibrary();
    v9 = dlsym(v8, "MCFeatureMaximumAppsRating");
    *(v42[1] + 24) = v9;
    getMCFeatureMaximumAppsRatingSymbolLoc_ptr = *(v42[1] + 24);
    v7 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v7)
  {
    __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_cold_1();
  }

  v10 = [v26 effectiveValueForSetting:*v7];
  v25 = v10;
  if (v10)
  {
    v11 = [v10 intValue];
  }

  else
  {
    v11 = 0x7FFFFFFFLL;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [*(a1 + 32) _allAppClipsForPlaceholderOnly:0];
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v13)
  {
    v14 = *v31;
    v15 = v4 ^ 1;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [v17 iTunesMetadata];
        v19 = [v18 ratingRank];

        if (v15 & 1 | (v19 > v11))
        {
          v20 = v19 > v11;
          v21 = *(a1 + 32);
          v22 = [v17 bundleIdentifier];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_52;
          v28[3] = &unk_278DCDE08;
          v28[4] = v17;
          v29 = v20;
          [v21 _deleteClipWhenBackgrounded:v22 completionHandler:v28];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v13);
  }

  v23 = +[CPSSessionManager sharedManager];
  [v23 handleManagedConfigurationChanged];

  v24 = *MEMORY[0x277D85DE8];
}

void __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_52(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v5 = *(a1 + 40);
    v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (!v7)
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 32);
      v9 = v6;
      v10 = [v8 bundleIdentifier];
      v14 = 138477827;
      v15 = v10;
      v11 = "CPSClipCleanupManager: Deleted an app clip due to age restriction: %{private}@";
    }

    else
    {
      if (!v7)
      {
        goto LABEL_10;
      }

      v12 = *(a1 + 32);
      v9 = v6;
      v10 = [v12 bundleIdentifier];
      v14 = 138477827;
      v15 = v10;
      v11 = "CPSClipCleanupManager: Deleted an app clip due to content restriction: %{private}@";
    }

    _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_DEFAULT, v11, &v14, 0xCu);

    goto LABEL_10;
  }

  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_52_cold_1(a1, v4, v3);
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidInstall:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__CPSClipCleanupManager_applicationsDidInstall___block_invoke;
  v3[3] = &unk_278DCDDC0;
  v3[4] = self;
  [(CPSClipCleanupManager *)self _applicationsDidChange:a3 operationHandler:v3];
}

- (void)applicationsDidUninstall:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__CPSClipCleanupManager_applicationsDidUninstall___block_invoke;
  v3[3] = &unk_278DCDDC0;
  v3[4] = self;
  [(CPSClipCleanupManager *)self _applicationsDidChange:a3 operationHandler:v3];
}

- (void)assertionTargetProcessDidExit:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CPSClipCleanupManager_assertionTargetProcessDidExit___block_invoke;
  v7[3] = &unk_278DCDE58;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __55__CPSClipCleanupManager_assertionTargetProcessDidExit___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_2436ED000, v2, OS_LOG_TYPE_INFO, "CPSClipCleanupManager: Assertion target process did exit %@", buf, 0xCu);
  }

  [*(a1 + 32) removeObserver:*(a1 + 40)];
  [*(a1 + 32) invalidate];
  v4 = [*(*(a1 + 40) + 16) allKeysForObject:*(a1 + 32)];
  if ([v4 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = *(a1 + 40);
          v12 = [v11[3] objectForKeyedSubscript:{v10, v17}];
          [v11 _uninstallClipWithBundleIdentifier:v10 deletionPromise:v12];

          [*(*(a1 + 40) + 16) setObject:0 forKeyedSubscript:v10];
          [*(*(a1 + 40) + 24) setObject:0 forKeyedSubscript:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    if (![*(*(a1 + 40) + 24) count])
    {
      v13 = *(a1 + 40);
      v14 = *(v13 + 32);
      *(v13 + 32) = 0;
    }
  }

  else
  {
    v15 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __55__CPSClipCleanupManager_assertionTargetProcessDidExit___block_invoke_cold_1((a1 + 32));
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_applicationsDidChange:(id)a3 operationHandler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_56];
    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__CPSClipCleanupManager__applicationsDidChange_operationHandler___block_invoke_2;
    v10[3] = &unk_278DCDD70;
    v11 = v7;
    v12 = v6;
    v9 = v7;
    dispatch_async(queue, v10);
  }
}

void __65__CPSClipCleanupManager__applicationsDidChange_operationHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)_parentBundleIDsFromAppRecord:(id)a3
{
  v3 = [a3 appClipMetadata];
  v4 = [v3 parentApplicationIdentifiers];

  v5 = [v4 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_59];

  return v5;
}

id __55__CPSClipCleanupManager__parentBundleIDsFromAppRecord___block_invoke()
{
  CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();

  return 0;
}

- (BOOL)_shouldDeleteClipWithRecord:(id)a3 parentRecord:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [&unk_2856840E8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(&unk_2856840E8);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v5 iTunesMetadata];
        v13 = [v12 sourceApp];
        if ([v13 isEqualToString:v11])
        {
          v14 = [v6 iTunesMetadata];
          v15 = [v14 sourceApp];
          v16 = [v15 isEqualToString:v11];

          if (v16)
          {
            v17 = 0;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v8 = [&unk_2856840E8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v17 = 1;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_handleNewInstalledAppWithBundleID:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41 = self;
  dispatch_assert_queue_V2(self->_queue);
  v40 = os_transaction_create();
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
  v6 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v56 = v4;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Detected installation of new app (%{private}@)", buf, 0xCu);
  }

  v7 = [v5 appClipMetadata];

  if (v7)
  {
    v8 = +[CPSWebClipStore sharedStore];
    v9 = [v5 localizedName];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke;
    v52[3] = &unk_278DCDEC0;
    v53 = v4;
    [v8 updateWebClipTitle:v9 forAppClipBundleIdentifier:v53 completionHandler:v52];
  }

  v10 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_69];
  [v10 setPredicate:v11];

  v37 = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v59 count:16];
  v38 = v12;
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    v35 = 134217984;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        v18 = [v17 bundleIdentifier];
        if ([v18 hasPrefix:v4])
        {
          v19 = [CPSClipCleanupManager _parentBundleIDsFromAppRecord:v17];
          if ([v19 containsObject:v4])
          {
            v20 = [(CPSClipCleanupManager *)v41 _shouldDeleteClipWithRecord:v17 parentRecord:v5];
            v21 = CPS_LOG_CHANNEL_PREFIXClipServices();
            v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
            if (v20)
            {
              if (v22)
              {
                *buf = 138478083;
                v56 = v18;
                v57 = 2113;
                v58 = v4;
                _os_log_impl(&dword_2436ED000, v21, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Found clip (%{private}@) matching %{private}@ to delete", buf, 0x16u);
              }

              [v37 addObject:v18];
              v12 = v38;
            }

            else
            {
              v12 = v38;
              if (v22)
              {
                *buf = 138478083;
                v56 = v18;
                v57 = 2113;
                v58 = v4;
                _os_log_impl(&dword_2436ED000, v21, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Clip (%{private}@) matching %{private}@ should not be deleted", buf, 0x16u);
              }
            }
          }

          else
          {
            v24 = CPS_LOG_CHANNEL_PREFIXClipServices();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = v24;
              v26 = [v19 count];
              *buf = v35;
              v56 = v26;
              _os_log_impl(&dword_2436ED000, v25, OS_LOG_TYPE_INFO, "CPSClipCleanupManager: Found no match for parent bundle IDs (count: %lu) from clip", buf, 0xCu);
            }
          }
        }

        else
        {
          v23 = CPS_LOG_CHANNEL_PREFIXClipServices();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v56 = v18;
            v57 = 2117;
            v58 = v4;
            _os_log_impl(&dword_2436ED000, v23, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: Clip bundleID (%{private}@) prefix does not match %{sensitive}@", buf, 0x16u);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v14);
  }

  v36 = v5;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v37;
  v27 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v44 + 1) + 8 * j);
        v32 = +[CPSAnalyticsLogger sharedLogger];
        [v32 didUpgradeToFullAppFromClip:v31];

        v33 = +[CPSWebClipStore sharedStore];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke_71;
        v42[3] = &unk_278DCDEE8;
        v43 = v40;
        [v33 redirectPoweredByWebClipsWithApplicationBundleIdentifier:v31 toParentApplicationBundleIdentifier:v4 completionHandler:v42];

        [(CPSClipCleanupManager *)v41 _transferTCCPermissionsFromClipWithBundleID:v31 toParentAppWithBundleID:v4];
        [(CPSClipCleanupManager *)v41 _deleteClipWhenBackgrounded:v31 completionHandler:0];
      }

      v28 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v28);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke_cold_1(a1, v4, v3);
    }
  }
}

BOOL __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke_67(uint64_t a1, void *a2)
{
  v2 = [a2 appClipMetadata];
  v3 = v2 != 0;

  return v3;
}

- (void)_transferTCCPermissionsFromClipWithBundleID:(id)a3 toParentAppWithBundleID:(id)a4
{
  v29[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEB98];
  v8 = *MEMORY[0x277D6C1A8];
  v29[0] = *MEMORY[0x277D6C120];
  v29[1] = v8;
  v29[2] = *MEMORY[0x277D6C110];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v10 = [v7 setWithArray:v9];

  v23 = v5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = TCCAccessCopyInformationForBundleId();
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = MEMORY[0x277D6C0E8];
    v16 = MEMORY[0x277D6C0D0];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v18 objectForKeyedSubscript:*v15];
        if (v19 && [v10 containsObject:v19])
        {
          v20 = [v18 objectForKeyedSubscript:*v16];
          v21 = v20;
          if (v20)
          {
            [v20 BOOLValue];
            TCCAccessSetForBundleId();
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  if ([MEMORY[0x277CBFC10] authorizationStatusForBundleIdentifier:v23] == 2)
  {
    [MEMORY[0x277CBFC10] setAuthorizationStatusByType:2 forBundleIdentifier:v6];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleNewUninstalledAppWithBundleID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = os_transaction_create();
  v6 = +[CPSWebClipStore sharedStore];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke;
  v19[3] = &unk_278DCDF10;
  v7 = v4;
  v20 = v7;
  v8 = v5;
  v21 = v8;
  [v6 removeWebClipsWithApplicationBundleIdentifier:v7 completionHandler:v19];

  v9 = objc_alloc_init(MEMORY[0x277CF3618]);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_77;
  v16 = &unk_278DCDF38;
  v17 = v7;
  v18 = v8;
  v10 = v8;
  v11 = v7;
  [v9 clearCachesForLinkItemsAssociatedWithBundleID:v11 completion:&v13];
  v12 = [CPSClipDataSQLiteStore defaultStore:v13];
  [v12 removeRecordWithBundleID:v11];
}

void __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_cold_1(a1);
    }
  }
}

void __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_77(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_77_cold_1(a1);
    }
  }
}

- (void)_deleteClipWhenBackgrounded:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v24 = v6;
    _os_log_impl(&dword_2436ED000, v8, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: will delete clip when backgrounded: %{private}@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  v9 = [(NSMutableDictionary *)self->_clipDeletionPromisesByBundleIDs objectForKeyedSubscript:v6];
  v10 = v9;
  if (!v9)
  {
    v10 = +[CPSPromise promise];
  }

  if (v7)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__CPSClipCleanupManager__deleteClipWhenBackgrounded_completionHandler___block_invoke;
    v21[3] = &unk_278DCDCD0;
    v22 = v7;
    [v10 addCompletionBlock:v21];
  }

  if (!v9)
  {
    v11 = objc_alloc_init(MEMORY[0x277D47010]);
    [v11 setExplanation:@"Terminate clip before uninstallation"];
    [v11 setMaximumTerminationResistance:30];
    v12 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:v6];
    v13 = [objc_alloc(MEMORY[0x277D47020]) initWithPredicate:v12 context:v11];
    [v13 addObserver:self];
    v20 = 0;
    v14 = [v13 acquireWithError:&v20];
    v15 = v20;
    if (v14)
    {
      [(NSMutableDictionary *)self->_pendingTerminationAssertionsByBundleIDs setObject:v13 forKeyedSubscript:v6];
      [(NSMutableDictionary *)self->_clipDeletionPromisesByBundleIDs setObject:v10 forKeyedSubscript:v6];
      if (!self->_deletionTransaction)
      {
        v16 = os_transaction_create();
        deletionTransaction = self->_deletionTransaction;
        self->_deletionTransaction = v16;
      }
    }

    else
    {
      v18 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CPSClipCleanupManager _deleteClipWhenBackgrounded:v6 completionHandler:?];
      }

      [(CPSClipCleanupManager *)self _uninstallClipWithBundleIdentifier:v6 deletionPromise:v10];
      [v13 removeObserver:self];
      [v13 invalidate];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_uninstallClipWithBundleIdentifier:(id)a3 deletionPromise:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__CPSClipCleanupManager__uninstallClipWithBundleIdentifier_deletionPromise___block_invoke;
  v9[3] = &unk_278DCDD20;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [CPSUtilities uninstallAppWithBundleIdentifier:v8 completion:v9];
}

void __76__CPSClipCleanupManager__uninstallClipWithBundleIdentifier_deletionPromise___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __76__CPSClipCleanupManager__uninstallClipWithBundleIdentifier_deletionPromise___block_invoke_cold_1(a1, v5, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138477827;
    v9 = v6;
    _os_log_impl(&dword_2436ED000, v5, OS_LOG_TYPE_DEFAULT, "CPSClipCleanupManager: successfully deleted clip %{private}@", &v8, 0xCu);
  }

  [*(a1 + 40) finishWithError:v3];

  v7 = *MEMORY[0x277D85DE8];
}

void __61__CPSClipCleanupManager_removeClipsByUser_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v2, v3, "CPSClipCleanupManager: failed to delete web clips before their backing app clips %{private}@ are uninstalled: %{private}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMCFeatureMaximumAppsRating(void)"];
  [v0 handleFailureInFunction:v1 file:@"CPSClipCleanupManager.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

void __66__CPSClipCleanupManager__didReceiveMCSettingsChangedNotification___block_invoke_52_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 bundleIdentifier];
  v8 = *(a1 + 40);
  v11 = 138478339;
  v12 = v7;
  if (v8)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v13 = 2112;
  v14 = v9;
  v15 = 2112;
  v16 = a3;
  _os_log_error_impl(&dword_2436ED000, v6, OS_LOG_TYPE_ERROR, "CPSClipCleanupManager: Error ocurred when deleting %{private}@, ageRestricted: %@, error: %@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __55__CPSClipCleanupManager_assertionTargetProcessDidExit___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_2436ED000, v2, OS_LOG_TYPE_ERROR, "CPSClipCleanupManager: Clip not found for assertion %@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __60__CPSClipCleanupManager__handleNewInstalledAppWithBundleID___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v7, v8, "CPSClipCleanupManager: Failed to update web clip title for %{private}@ due to %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v2, v3, "CPSClipCleanupManager: failed to delete web clips %{private}@ when its backing app clip is uninstalled: %{sensitive}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __62__CPSClipCleanupManager__handleNewUninstalledAppWithBundleID___block_invoke_77_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v2, v3, "CPSClipCleanupManager: failed to delete ABR cached items for bundleID %{private}@, Error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_deleteClipWhenBackgrounded:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_2436ED000, v1, v2, "CPSClipCleanupManager: Unable to acquire termination assertion for bundle ID %@ with error %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __76__CPSClipCleanupManager__uninstallClipWithBundleIdentifier_deletionPromise___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2436ED000, v7, v8, "CPSClipCleanupManager: failed to delete clip %{private}@: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

@end