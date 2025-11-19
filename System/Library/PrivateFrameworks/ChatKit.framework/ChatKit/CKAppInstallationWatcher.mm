@interface CKAppInstallationWatcher
+ (id)sharedInstance;
- (CKAppInstallationWatcher)init;
- (NSArray)inProgressInstallations;
- (void)_callDelegateAsynchronouslyWithProgressForAppInstallation:(id)a3 added:(BOOL)a4 updated:(BOOL)a5;
- (void)_loadBundleIdentifiersFromDiskLocked;
- (void)_saveBundleIdentifiersToDiskLocked;
- (void)_updateAppProgressWithKnownChangedProxies:(id)a3;
- (void)_updateAppProgressWithKnownChangedProxiesLocked:(id)a3;
- (void)_updateObservingApplicationWorkspaceLocked;
- (void)addObserver:(id)a3;
- (void)applicationInstallsDidChange:(id)a3;
- (void)applicationInstallsDidStart:(id)a3;
- (void)applicationInstallsDidUpdateIcon:(id)a3;
- (void)applicationStateDidChange:(id)a3;
- (void)applicationsDidFailToInstall:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsWillInstall:(id)a3;
- (void)dealloc;
- (void)fetchAllAppInstallations:(id)a3;
- (void)removeObserver:(id)a3;
- (void)startListeningForAppBundleIdentifier:(id)a3;
@end

@implementation CKAppInstallationWatcher

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[CKAppInstallationWatcher sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

void __42__CKAppInstallationWatcher_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKAppInstallationWatcher);
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;
}

- (CKAppInstallationWatcher)init
{
  v12.receiver = self;
  v12.super_class = CKAppInstallationWatcher;
  v2 = [(CKAppInstallationWatcher *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ChatKit.CKAppInstallationWatcher", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    observers = v2->_observers;
    v2->_observers = v6;

    v8 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__CKAppInstallationWatcher_init__block_invoke;
    block[3] = &unk_1E72EBA18;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

- (void)dealloc
{
  if (self->_observingApplicationWorkspace)
  {
    v3 = [(CKAppInstallationWatcher *)self _applicationWorkspace];
    [v3 removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = CKAppInstallationWatcher;
  [(CKAppInstallationWatcher *)&v4 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [(CKAppInstallationWatcher *)self observers];
  v5 = [MEMORY[0x1E69A61A0] weakRefWithObject:v4];

  [v6 addObject:v5];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__63;
  v18 = __Block_byref_object_dispose__63;
  v19 = [MEMORY[0x1E695DF70] array];
  v5 = [(CKAppInstallationWatcher *)self observers];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __43__CKAppInstallationWatcher_removeObserver___block_invoke;
  v11 = &unk_1E72F6AC8;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  [v5 enumerateObjectsUsingBlock:&v8];

  if ([v15[5] count])
  {
    v7 = [(CKAppInstallationWatcher *)self observers];
    [v7 removeObjectsInArray:v15[5]];
  }

  _Block_object_dispose(&v14, 8);
}

void __43__CKAppInstallationWatcher_removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 object];
  if (!v3 || (v4 = v3, [v7 object], v5 = objc_claimAutoreleasedReturnValue(), v6 = *(a1 + 32), v5, v4, v5 == v6))
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

- (void)startListeningForAppBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CKAppInstallationWatcher *)self queue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__CKAppInstallationWatcher_startListeningForAppBundleIdentifier___block_invoke;
    v6[3] = &unk_1E72EB8D0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __65__CKAppInstallationWatcher_startListeningForAppBundleIdentifier___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = [*(a1 + 32) installations];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __65__CKAppInstallationWatcher_startListeningForAppBundleIdentifier___block_invoke_2;
  v11 = &unk_1E72F3410;
  v12 = *(a1 + 40);
  v13 = &v14;
  [v2 enumerateObjectsUsingBlock:&v8];

  if ((v15[3] & 1) == 0)
  {
    v3 = [CKAppInstallation alloc];
    v4 = [(CKAppInstallation *)v3 initWithBundleIdentifier:*(a1 + 40), v8, v9, v10, v11];
    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = *(a1 + 40);
          *buf = 138412290;
          v19 = v6;
          _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Began listening for app installation with bundle ID %@", buf, 0xCu);
        }
      }

      v7 = [*(a1 + 32) installations];
      [v7 addObject:v4];

      [*(a1 + 32) _callDelegateAsynchronouslyWithProgressForAppInstallation:v4 added:1 updated:0];
      [*(a1 + 32) _updateObservingApplicationWorkspaceLocked];
      [*(a1 + 32) _saveBundleIdentifiersToDiskLocked];
    }
  }

  _Block_object_dispose(&v14, 8);
}

void __65__CKAppInstallationWatcher_startListeningForAppBundleIdentifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 bundleIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)fetchAllAppInstallations:(id)a3
{
  v4 = a3;
  v5 = [(CKAppInstallationWatcher *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CKAppInstallationWatcher_fetchAllAppInstallations___block_invoke;
  v7[3] = &unk_1E72ED1C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__CKAppInstallationWatcher_fetchAllAppInstallations___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v3 = [*(a1 + 32) installations];
  v4 = [v2 initWithArray:v3 copyItems:1];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CKAppInstallationWatcher_fetchAllAppInstallations___block_invoke_2;
  v7[3] = &unk_1E72EE5D8;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)_loadBundleIdentifiersFromDiskLocked
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(CKAppInstallationWatcher *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:@"/var/mobile/Library/SMS/CKAppInstallationWatcher.plist"];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = v5;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__CKAppInstallationWatcher__loadBundleIdentifiersFromDiskLocked__block_invoke;
    v9[3] = &unk_1E72EBB28;
    v10 = v5;
    [v4 enumerateObjectsUsingBlock:v9];
  }

  [(CKAppInstallationWatcher *)self setInstallations:v6];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(CKAppInstallationWatcher *)self installations];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Loaded initial watched bundle installations from disk: %@", buf, 0xCu);
    }
  }

  [(CKAppInstallationWatcher *)self _updateObservingApplicationWorkspaceLocked];
  [(CKAppInstallationWatcher *)self _updateAppProgressWithKnownChangedProxiesLocked:0];
}

void __64__CKAppInstallationWatcher__loadBundleIdentifiersFromDiskLocked__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v10;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 objectForKey:@"BundleIdentifier"];
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKey:@"BundleIdentifier"];
  }

  v7 = [v4 objectForKey:@"TimeInitiated"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v8 = [v4 objectForKey:@"TimeInitiated"];

  if (v6 && v8)
  {
    v9 = [CKAppInstallation alloc];
    [v8 doubleValue];
    v7 = [(CKAppInstallation *)v9 initWithBundleIdentifier:v6 startTime:?];
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_saveBundleIdentifiersToDiskLocked
{
  v3 = [(CKAppInstallationWatcher *)self queue];
  dispatch_assert_queue_V2(v3);

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  v14[3] = v6;
  v7 = [(CKAppInstallationWatcher *)self inProgressInstallations];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CKAppInstallationWatcher__saveBundleIdentifiersToDiskLocked__block_invoke;
  v13[3] = &unk_1E72F6AF0;
  v13[4] = v14;
  v8 = [v7 __imArrayByApplyingBlock:v13];

  if ([v8 count])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "List of installing apps changed; updating on disk", v12, 2u);
      }
    }

    [v8 writeToFile:@"/var/mobile/Library/SMS/CKAppInstallationWatcher.plist" atomically:1];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "There are no more installing apps; removing plist from disk", v12, 2u);
      }
    }

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    [v11 removeItemAtPath:@"/var/mobile/Library/SMS/CKAppInstallationWatcher.plist" error:0];
  }

  _Block_object_dispose(v14, 8);
}

id __62__CKAppInstallationWatcher__saveBundleIdentifiersToDiskLocked__block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 startTime];
  v5 = v4 - *(*(*(a1 + 32) + 8) + 24);
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 >= 86000.0)
  {
    v9 = 0;
  }

  else
  {
    v11[0] = @"BundleIdentifier";
    v6 = [v3 bundleIdentifier];
    v11[1] = @"TimeInitiated";
    v12[0] = v6;
    v7 = MEMORY[0x1E696AD98];
    [v3 startTime];
    v8 = [v7 numberWithDouble:?];
    v12[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  return v9;
}

- (void)_updateObservingApplicationWorkspaceLocked
{
  v3 = [(CKAppInstallationWatcher *)self queue];
  dispatch_assert_queue_V2(v3);

  if (![(CKAppInstallationWatcher *)self observingApplicationWorkspace])
  {
    v4 = [(CKAppInstallationWatcher *)self installations];
    v5 = [v4 count];

    if (v5)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Beginning observing LaunchServices events", buf, 2u);
        }
      }

      v7 = [(CKAppInstallationWatcher *)self _applicationWorkspace];
      [v7 addObserver:self];
      v8 = 1;
LABEL_15:

      [(CKAppInstallationWatcher *)self setObservingApplicationWorkspace:v8];
      return;
    }
  }

  if ([(CKAppInstallationWatcher *)self observingApplicationWorkspace])
  {
    v9 = [(CKAppInstallationWatcher *)self installations];
    v10 = [v9 count];

    if (!v10)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Ending observing LaunchServices events", v12, 2u);
        }
      }

      v7 = [(CKAppInstallationWatcher *)self _applicationWorkspace];
      [v7 removeObserver:self];
      v8 = 0;
      goto LABEL_15;
    }
  }
}

- (void)_updateAppProgressWithKnownChangedProxies:(id)a3
{
  v4 = a3;
  v5 = [(CKAppInstallationWatcher *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__CKAppInstallationWatcher__updateAppProgressWithKnownChangedProxies___block_invoke;
  v7[3] = &unk_1E72EB8D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_updateAppProgressWithKnownChangedProxiesLocked:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [(CKAppInstallationWatcher *)self installations];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CKAppInstallationWatcher__updateAppProgressWithKnownChangedProxiesLocked___block_invoke;
  v10[3] = &unk_1E72F6B18;
  v7 = v4;
  v11 = v7;
  v12 = self;
  v8 = v5;
  v13 = v8;
  [v6 enumerateObjectsUsingBlock:v10];

  if ([v8 count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__CKAppInstallationWatcher__updateAppProgressWithKnownChangedProxiesLocked___block_invoke_60;
    v9[3] = &unk_1E72F6B40;
    v9[4] = self;
    [v8 enumerateObjectsUsingBlock:v9];
    [(CKAppInstallationWatcher *)self _saveBundleIdentifiersToDiskLocked];
  }
}

void __76__CKAppInstallationWatcher__updateAppProgressWithKnownChangedProxiesLocked___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v3 bundleIdentifier];
    v7 = [v5 __ck_proxyWithBundleIdentifier:v6];

    if (!v7)
    {
      goto LABEL_33;
    }

    [v4 setProxy:v7];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v4;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Replacing proxy for app: %@", &v17, 0xCu);
      }
    }
  }

  else
  {
    v7 = [v3 proxy];
    if (!v7)
    {
      goto LABEL_33;
    }
  }

  v9 = [v7 installProgress];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      v18 = v4;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Install progress for app %@ = %@", &v17, 0x16u);
    }
  }

  if (v9)
  {
    [v9 fractionCompleted];
    [v4 setPercentComplete:v11 * 100.0];
    v12 = [v9 installState];
  }

  else
  {
    if (![v7 isInstalled])
    {
      goto LABEL_17;
    }

    [v4 setPercentComplete:100.0];
    v12 = 5;
  }

  [v4 setInstallState:v12];
LABEL_17:
  if (([v7 isInstalled] & 1) != 0 || (objc_msgSend(v4, "percentComplete"), v13 >= 100.0))
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v7 registeredDate];
        v17 = 138412546;
        v18 = v16;
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Updating install complete (%@): %@", &v17, 0x16u);
      }
    }

    [*(a1 + 40) _callDelegateAsynchronouslyWithProgressForAppInstallation:v4 added:0 updated:1];
    [*(a1 + 48) addObject:v4];
  }

  else
  {
    if ([v4 installState] == 3 || objc_msgSend(v4, "installState") == 4)
    {
      [*(a1 + 48) addObject:v4];
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v4;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Updating install progress: %@", &v17, 0xCu);
      }
    }

    [*(a1 + 40) _callDelegateAsynchronouslyWithProgressForAppInstallation:v4 added:0 updated:1];
  }

LABEL_33:
}

void __76__CKAppInstallationWatcher__updateAppProgressWithKnownChangedProxiesLocked___block_invoke_60(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 installations];
  [v4 removeObject:v3];
}

- (void)_callDelegateAsynchronouslyWithProgressForAppInstallation:(id)a3 added:(BOOL)a4 updated:(BOOL)a5
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__63;
  v11[4] = __Block_byref_object_dispose__63;
  v12 = [a3 copy];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__CKAppInstallationWatcher__callDelegateAsynchronouslyWithProgressForAppInstallation_added_updated___block_invoke;
  block[3] = &unk_1E72F6B90;
  v9 = a4;
  block[4] = self;
  block[5] = v11;
  v10 = a5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  _Block_object_dispose(v11, 8);
}

void __100__CKAppInstallationWatcher__callDelegateAsynchronouslyWithProgressForAppInstallation_added_updated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __100__CKAppInstallationWatcher__callDelegateAsynchronouslyWithProgressForAppInstallation_added_updated___block_invoke_2;
  v3[3] = &unk_1E72F6B68;
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __100__CKAppInstallationWatcher__callDelegateAsynchronouslyWithProgressForAppInstallation_added_updated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 48) == 1)
  {
    v4 = [v3 object];
    [v4 appInstallationWatcher:*(a1 + 32) addedAppInstallation:*(*(*(a1 + 40) + 8) + 40)];

    v3 = v6;
  }

  if (*(a1 + 49) == 1)
  {
    v5 = [v6 object];
    [v5 appInstallationWatcher:*(a1 + 32) changedAppInstallation:*(*(*(a1 + 40) + 8) + 40)];

    v3 = v6;
  }
}

- (NSArray)inProgressInstallations
{
  v2 = [(CKAppInstallationWatcher *)self installations];
  v3 = [v2 __imArrayByFilteringWithBlock:&__block_literal_global_64_0];

  return v3;
}

BOOL __51__CKAppInstallationWatcher_inProgressInstallations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 installed] & 1) == 0 && objc_msgSend(v2, "installState") != 4 && objc_msgSend(v2, "installState") != 3 && objc_msgSend(v2, "installState") != 5;

  return v3;
}

- (void)applicationInstallsDidStart:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[CKAppInstallationWatcher applicationInstallsDidStart:%@]", &v6, 0xCu);
    }
  }

  [(CKAppInstallationWatcher *)self _updateAppProgressWithKnownChangedProxies:v4];
}

- (void)applicationInstallsDidChange:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[CKAppInstallationWatcher applicationInstallsDidChange:%@]", &v6, 0xCu);
    }
  }

  [(CKAppInstallationWatcher *)self _updateAppProgressWithKnownChangedProxies:v4];
}

- (void)applicationInstallsDidUpdateIcon:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[CKAppInstallationWatcher applicationInstallsDidUpdateIcon:%@]", &v6, 0xCu);
    }
  }

  [(CKAppInstallationWatcher *)self _updateAppProgressWithKnownChangedProxies:v4];
}

- (void)applicationsWillInstall:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[CKAppInstallationWatcher applicationInstallsWillInstall:%@]", &v6, 0xCu);
    }
  }

  [(CKAppInstallationWatcher *)self _updateAppProgressWithKnownChangedProxies:v4];
}

- (void)applicationsDidInstall:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[CKAppInstallationWatcher applicationInstallsDidInstall:%@]", &v6, 0xCu);
    }
  }

  [(CKAppInstallationWatcher *)self _updateAppProgressWithKnownChangedProxies:v4];
}

- (void)applicationsDidFailToInstall:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[CKAppInstallationWatcher applicationInstallsDidFailToInstall:%@]", &v6, 0xCu);
    }
  }

  [(CKAppInstallationWatcher *)self _updateAppProgressWithKnownChangedProxies:v4];
}

- (void)applicationStateDidChange:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "[CKAppInstallationWatcher applicationStateDidChange:%@]", &v6, 0xCu);
    }
  }

  [(CKAppInstallationWatcher *)self _updateAppProgressWithKnownChangedProxies:v4];
}

@end