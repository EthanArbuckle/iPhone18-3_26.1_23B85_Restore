@interface EMBlockedSenderManager
+ (BOOL)shouldMoveToTrashForMailboxType:(int64_t)a3 gmailLabels:(id)a4;
+ (BOOL)shouldPromptForBlockedSender;
- (BOOL)_isEmailAddressBlocked:(id)a3;
- (BOOL)areAnyEmailAddressesBlocked:(id)a3;
- (BOOL)isBlockedSenderEnabled;
- (BOOL)isContactBlocked:(id)a3;
- (BOOL)isEmailAddressBlocked:(id)a3;
- (BOOL)isMoveToTrashEnabled;
- (BOOL)isTokenAddressIsBlocked:(id)a3;
- (EAEmailAddressSet)blockedSenderEmailAddresses;
- (EMBlockedSenderManager)init;
- (void)_locked_repopulateBlockedSenderCachedState:(id)a3;
- (void)_postBlockedSenderListDidChangeNotificationBasedOnBlockedSenderEnabledState;
- (void)_removeObserversIfNeeded;
- (void)_unblockPhoneNumber:(id)a3;
- (void)blockEmailAddress:(id)a3;
- (void)blockEmailAddresses:(id)a3;
- (void)blockTokenAddress:(id)a3;
- (void)dealloc;
- (void)setMoveToTrashEnabled:(BOOL)a3;
- (void)test_tearDown;
- (void)unblockEmailAddress:(id)a3;
- (void)unblockEmailAddresses:(id)a3;
- (void)unblockTokenAddress:(id)a3;
@end

@implementation EMBlockedSenderManager

- (EMBlockedSenderManager)init
{
  v13.receiver = self;
  v13.super_class = EMBlockedSenderManager;
  v2 = [(EMBlockedSenderManager *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.BlockedSenderManager.notification"];
    notificationScheduler = v2->_notificationScheduler;
    v2->_notificationScheduler = v3;

    v2->_didRemoveObservers._Value = 0;
    v5 = objc_alloc(MEMORY[0x1E699B7F0]);
    v6 = objc_alloc_init(_EMBlockedSenderState);
    v7 = [v5 initWithObject:v6];
    blockedSenderCache = v2->_blockedSenderCache;
    v2->_blockedSenderCache = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__blockedSenderListDidChange_ name:*MEMORY[0x1E6995900] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _blockedSenderOptionsDidChange, @"com.apple.mail.EMBlockedSenderOptionsDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v11 = CMFItemCreateWithEmailAddress();
    if (v11)
    {
      CMFBlockListIsItemBlocked();
      CFRelease(v11);
    }
  }

  return v2;
}

- (BOOL)isBlockedSenderEnabled
{
  if (![MEMORY[0x1E695E000] em_defaultExistsForKey:@"BlockedSenderEnabled"])
  {
    return 1;
  }

  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v2 BOOLForKey:@"BlockedSenderEnabled"];

  return v3;
}

- (EAEmailAddressSet)blockedSenderEmailAddresses
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(EMBlockedSenderManager *)self blockedSenderCache];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__EMBlockedSenderManager_blockedSenderEmailAddresses__block_invoke;
  v6[3] = &unk_1E826C388;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWhileLocked:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__EMBlockedSenderManager_blockedSenderEmailAddresses__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 valid] & 1) == 0)
  {
    [*(a1 + 32) _locked_repopulateBlockedSenderCachedState:v7];
  }

  v3 = [v7 blockedSenders];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void ___ef_log_EMBlockedSenderManager_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMBlockedSenderManager");
  v1 = _ef_log_EMBlockedSenderManager_log;
  _ef_log_EMBlockedSenderManager_log = v0;
}

- (void)dealloc
{
  [(EMBlockedSenderManager *)self _removeObserversIfNeeded];
  v3.receiver = self;
  v3.super_class = EMBlockedSenderManager;
  [(EMBlockedSenderManager *)&v3 dealloc];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"EMBlockedSenderManager.m" lineNumber:89 description:{@"%s can only be called from unit tests", "-[EMBlockedSenderManager test_tearDown]"}];
  }

  [(EMBlockedSenderManager *)self _removeObserversIfNeeded];
  v4 = [(EMBlockedSenderManager *)self notificationScheduler];
  [v4 performSyncBlock:&__block_literal_global_61];
}

- (void)_removeObserversIfNeeded
{
  if ((atomic_exchange(&self->_didRemoveObservers._Value, 1u) & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x1E6995900] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mail.EMBlockedSenderOptionsDidChangeNotification", 0);
  }
}

- (void)_locked_repopulateBlockedSenderCachedState:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  CMFBlockListCopyItemsForAllServicesService();
  v5 = objc_alloc_init(MEMORY[0x1E699AFD8]);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = [v6 count];
  for (i = 0; i < [v6 count]; ++i)
  {
    [v6 objectAtIndex:i];
    if (CMFItemGetType() == 1)
    {
      *cf = 0xAAAAAAAAAAAAAAAALL;
      CMFItemCopyEmailAddress();
      [v5 addObject:?];
      CFRelease(0xAAAAAAAAAAAAAAAALL);
    }
  }

  CFRelease(v20);

  if ([v4 valid])
  {
    v9 = [v4 blockedSenders];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E699AFD8]);
  }

  v10 = v9;
  v11 = _ef_log_EMBlockedSenderManager();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 134218752;
    *&cf[4] = self;
    v22 = 2048;
    v23 = [v5 count];
    v24 = 2048;
    v25 = [v10 count];
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "%p: Update Blocked Sender List - New Blocked Senders=%lu, Previous Blocked Senders=%lu, Block List Count=%lu", cf, 0x2Au);
  }

  [v4 setBlockedSenders:v5];
  [v4 setValid:1];
  v12 = [(EMBlockedSenderManager *)self notificationScheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__EMBlockedSenderManager__locked_repopulateBlockedSenderCachedState___block_invoke;
  v16[3] = &unk_1E826C230;
  v13 = v5;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  v19 = self;
  [v12 performBlock:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __69__EMBlockedSenderManager__locked_repopulateBlockedSenderCachedState___block_invoke(uint64_t a1)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) ef_setByRemovingObjectsFromSet:*(a1 + 40)];
  v4 = [*(v2 + 8) ef_setByRemovingObjectsFromSet:*v2];
  v5 = *(a1 + 32);
  v10[0] = @"EMBlockedSenderManagerBlockedSendersKey";
  v10[1] = @"EMBlockedSenderManagerAddedBlockedSendersKey";
  v11[0] = v5;
  v11[1] = v3;
  v11[2] = v4;
  v10[2] = @"EMBlockedSenderManagerRemovedBlockedSendersKey";
  v10[3] = @"EMBlockedSenderManagerIsBlockedSenderEnabledKey";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 48), "isBlockedSenderEnabled")}];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"EMBlockedSenderManagerBlockedListDidChangeNotification" object:*(a1 + 48) userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_postBlockedSenderListDidChangeNotificationBasedOnBlockedSenderEnabledState
{
  v3 = [(EMBlockedSenderManager *)self notificationScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __101__EMBlockedSenderManager__postBlockedSenderListDidChangeNotificationBasedOnBlockedSenderEnabledState__block_invoke;
  v4[3] = &unk_1E826C098;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __101__EMBlockedSenderManager__postBlockedSenderListDidChangeNotificationBasedOnBlockedSenderEnabledState__block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isBlockedSenderEnabled];
  if (v2)
  {
    v3 = [*(a1 + 32) blockedSenderEmailAddresses];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E699AFD8]);
  }

  v4 = v3;
  v9[0] = @"EMBlockedSenderManagerBlockedSendersKey";
  v9[1] = @"EMBlockedSenderManagerIsBlockedSenderEnabledKey";
  v10[0] = v3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"EMBlockedSenderManagerBlockedListDidChangeNotification" object:*(a1 + 32) userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setMoveToTrashEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _ef_log_EMBlockedSenderManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = self;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%p: Update Move To Trash=%{BOOL}d", &v9, 0x12u);
  }

  v6 = [MEMORY[0x1E695E000] em_userDefaults];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  [v6 setValue:v7 forKey:@"BlockedSenderAction"];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isMoveToTrashEnabled
{
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v2 valueForKey:@"BlockedSenderAction"];

  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || [v3 integerValue] == 1;

  return v4;
}

- (BOOL)isEmailAddressBlocked:(id)a3
{
  v4 = a3;
  if ([(EMBlockedSenderManager *)self isBlockedSenderEnabled])
  {
    v5 = [MEMORY[0x1E699AFD0] rawAddressFromFullAddress:v4];
    v6 = [(EMBlockedSenderManager *)self _isEmailAddressBlocked:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isContactBlocked:(id)a3
{
  v4 = [a3 emailAddresses];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__EMBlockedSenderManager_isContactBlocked___block_invoke;
  v6[3] = &unk_1E826C3D8;
  v6[4] = self;
  LOBYTE(self) = [v4 ef_any:v6];

  return self;
}

uint64_t __43__EMBlockedSenderManager_isContactBlocked___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  v4 = [v2 isEmailAddressBlocked:v3];

  return v4;
}

- (void)blockEmailAddress:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ef_log_EMBlockedSenderManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v4;
    v7 = [v6 emailAddressValue];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 ef_publicDescription];
    }

    else
    {
      v10 = MEMORY[0x1E699B858];
      v11 = [v6 stringValue];
      v9 = [v10 fullyOrPartiallyRedactedStringForString:v11];
    }

    v14 = 134218242;
    v15 = self;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%p: Block email address: %{public}@", &v14, 0x16u);
  }

  v12 = CMFItemCreateWithEmailAddress();
  CMFBlockListAddItemForAllServices();
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unblockEmailAddress:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ef_log_EMBlockedSenderManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v4;
    v7 = [v6 emailAddressValue];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 ef_publicDescription];
    }

    else
    {
      v10 = MEMORY[0x1E699B858];
      v11 = [v6 stringValue];
      v9 = [v10 fullyOrPartiallyRedactedStringForString:v11];
    }

    v14 = 134218242;
    v15 = self;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%p: Unblock email address: %{public}@", &v14, 0x16u);
  }

  v12 = CMFItemCreateWithEmailAddress();
  CMFBlockListRemoveItemFromAllServices();
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)blockEmailAddresses:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [MEMORY[0x1E699AFD0] rawAddressFromFullAddress:{*(*(&v10 + 1) + 8 * v7), v10}];
        [(EMBlockedSenderManager *)self blockEmailAddress:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)unblockEmailAddresses:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [MEMORY[0x1E699AFD0] rawAddressFromFullAddress:{*(*(&v10 + 1) + 8 * v7), v10}];
        [(EMBlockedSenderManager *)self unblockEmailAddress:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isTokenAddressIsBlocked:(id)a3
{
  v4 = a3;
  v5 = [v4 contact];

  if (v5)
  {
    v6 = [v4 contact];
    v7 = [(EMBlockedSenderManager *)self isContactBlocked:v6];
  }

  else
  {
    v6 = [v4 currentRawAddress];
    v7 = [(EMBlockedSenderManager *)self isEmailAddressBlocked:v6];
  }

  v8 = v7;

  return v8;
}

- (void)blockTokenAddress:(id)a3
{
  v6 = a3;
  v4 = [v6 contact];

  if (v4)
  {
    v5 = [v6 contact];
    [(EMBlockedSenderManager *)self blockContact:v5];
  }

  else
  {
    v5 = [v6 currentRawAddress];
    [(EMBlockedSenderManager *)self blockEmailAddress:v5];
  }
}

- (void)unblockTokenAddress:(id)a3
{
  v6 = a3;
  v4 = [v6 contact];

  if (v4)
  {
    v5 = [v6 contact];
    [(EMBlockedSenderManager *)self unblockContact:v5];
  }

  else
  {
    v5 = [v6 currentRawAddress];
    [(EMBlockedSenderManager *)self unblockEmailAddress:v5];
  }
}

- (BOOL)_isEmailAddressBlocked:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v5 = [(EMBlockedSenderManager *)self blockedSenderCache];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__EMBlockedSenderManager__isEmailAddressBlocked___block_invoke;
  v18[3] = &unk_1E826C400;
  v18[4] = self;
  v20 = &v21;
  v6 = v4;
  v19 = v6;
  [v5 performWhileLocked:v18];

  if (*(v22 + 24) == 1)
  {
    v7 = _ef_log_EMBlockedSenderManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      v9 = [v8 emailAddressValue];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 ef_publicDescription];
      }

      else
      {
        v13 = MEMORY[0x1E699B858];
        v14 = [v8 stringValue];
        v11 = [v13 fullyOrPartiallyRedactedStringForString:v14];
      }

      v15 = *(v22 + 24);
      *buf = 134218498;
      v26 = self;
      v27 = 2114;
      v28 = v11;
      v29 = 1024;
      v30 = v15;
      _os_log_impl(&dword_1C6655000, v7, OS_LOG_TYPE_DEFAULT, "%p: Is %{public}@ blocked=%{BOOL}d", buf, 0x1Cu);
    }

    v12 = *(v22 + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v21, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

void __49__EMBlockedSenderManager__isEmailAddressBlocked___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 valid] & 1) == 0)
  {
    [*(a1 + 32) _locked_repopulateBlockedSenderCachedState:v4];
  }

  v3 = [v4 blockedSenders];
  *(*(*(a1 + 48) + 8) + 24) = [v3 containsObject:*(a1 + 40)];
}

- (BOOL)areAnyEmailAddressesBlocked:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(EMBlockedSenderManager *)self isBlockedSenderEnabled])
  {
    v5 = [(EMBlockedSenderManager *)self blockedSenderEmailAddresses];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__EMBlockedSenderManager_areAnyEmailAddressesBlocked___block_invoke;
    v20[3] = &unk_1E826C428;
    v6 = v5;
    v21 = v6;
    v7 = [v4 ef_firstObjectPassingTest:v20];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = _ef_log_EMBlockedSenderManager();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v7;
        v11 = [v10 emailAddressValue];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 ef_publicDescription];
        }

        else
        {
          v14 = MEMORY[0x1E699B858];
          v15 = [v10 stringValue];
          v13 = [v14 fullyOrPartiallyRedactedStringForString:v15];
        }

        v16 = v13;
        v17 = [v4 count];
        *buf = 134218498;
        v23 = self;
        v24 = 2114;
        v25 = v16;
        v26 = 2048;
        v27 = v17;
        _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ is blocked in list (%lu)", buf, 0x20u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __54__EMBlockedSenderManager_areAnyEmailAddressesBlocked___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 emailAddressValue];
  v4 = [v3 simpleAddress];

  if (v4)
  {
    v5 = [*(a1 + 32) containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_unblockPhoneNumber:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ef_log_EMBlockedSenderManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = self;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%p: Unblock phone number", &v9, 0xCu);
  }

  v6 = [v4 formattedInternationalStringValue];
  CMFItemFromString = CreateCMFItemFromString();
  if (CMFItemFromString)
  {
    CMFBlockListRemoveItemFromAllServices();
    CFRelease(CMFItemFromString);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldPromptForBlockedSender
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"EMPromptUserForBlockedSenderKey"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)shouldMoveToTrashForMailboxType:(int64_t)a3 gmailLabels:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = [v6 initWithObjects:{*MEMORY[0x1E699B050], *MEMORY[0x1E699B038], *MEMORY[0x1E699B048], 0}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__EMBlockedSenderManager_shouldMoveToTrashForMailboxType_gmailLabels___block_invoke;
  v11[3] = &unk_1E826C450;
  v12 = v7;
  v8 = v7;
  v9 = [v5 ef_any:v11] ^ 1;

  return ((a3 - 7) < 0xFFFFFFFFFFFFFFFCLL) & v9;
}

uint64_t __70__EMBlockedSenderManager_shouldMoveToTrashForMailboxType_gmailLabels___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 labelName];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end