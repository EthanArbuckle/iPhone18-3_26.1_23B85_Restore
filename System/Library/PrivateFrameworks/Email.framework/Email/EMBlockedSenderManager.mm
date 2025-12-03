@interface EMBlockedSenderManager
+ (BOOL)shouldMoveToTrashForMailboxType:(int64_t)type gmailLabels:(id)labels;
+ (BOOL)shouldPromptForBlockedSender;
- (BOOL)_isEmailAddressBlocked:(id)blocked;
- (BOOL)areAnyEmailAddressesBlocked:(id)blocked;
- (BOOL)isBlockedSenderEnabled;
- (BOOL)isContactBlocked:(id)blocked;
- (BOOL)isEmailAddressBlocked:(id)blocked;
- (BOOL)isMoveToTrashEnabled;
- (BOOL)isTokenAddressIsBlocked:(id)blocked;
- (EAEmailAddressSet)blockedSenderEmailAddresses;
- (EMBlockedSenderManager)init;
- (void)_locked_repopulateBlockedSenderCachedState:(id)state;
- (void)_postBlockedSenderListDidChangeNotificationBasedOnBlockedSenderEnabledState;
- (void)_removeObserversIfNeeded;
- (void)_unblockPhoneNumber:(id)number;
- (void)blockEmailAddress:(id)address;
- (void)blockEmailAddresses:(id)addresses;
- (void)blockTokenAddress:(id)address;
- (void)dealloc;
- (void)setMoveToTrashEnabled:(BOOL)enabled;
- (void)test_tearDown;
- (void)unblockEmailAddress:(id)address;
- (void)unblockEmailAddresses:(id)addresses;
- (void)unblockTokenAddress:(id)address;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__blockedSenderListDidChange_ name:*MEMORY[0x1E6995900] object:0];

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

  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults BOOLForKey:@"BlockedSenderEnabled"];

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
  blockedSenderCache = [(EMBlockedSenderManager *)self blockedSenderCache];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__EMBlockedSenderManager_blockedSenderEmailAddresses__block_invoke;
  v6[3] = &unk_1E826C388;
  v6[4] = self;
  v6[5] = &v7;
  [blockedSenderCache performWhileLocked:v6];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMBlockedSenderManager.m" lineNumber:89 description:{@"%s can only be called from unit tests", "-[EMBlockedSenderManager test_tearDown]"}];
  }

  [(EMBlockedSenderManager *)self _removeObserversIfNeeded];
  notificationScheduler = [(EMBlockedSenderManager *)self notificationScheduler];
  [notificationScheduler performSyncBlock:&__block_literal_global_61];
}

- (void)_removeObserversIfNeeded
{
  if ((atomic_exchange(&self->_didRemoveObservers._Value, 1u) & 1) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E6995900] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mail.EMBlockedSenderOptionsDidChangeNotification", 0);
  }
}

- (void)_locked_repopulateBlockedSenderCachedState:(id)state
{
  v28 = *MEMORY[0x1E69E9840];
  stateCopy = state;
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

  if ([stateCopy valid])
  {
    blockedSenders = [stateCopy blockedSenders];
  }

  else
  {
    blockedSenders = objc_alloc_init(MEMORY[0x1E699AFD8]);
  }

  v10 = blockedSenders;
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

  [stateCopy setBlockedSenders:v5];
  [stateCopy setValid:1];
  notificationScheduler = [(EMBlockedSenderManager *)self notificationScheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__EMBlockedSenderManager__locked_repopulateBlockedSenderCachedState___block_invoke;
  v16[3] = &unk_1E826C230;
  v13 = v5;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  selfCopy = self;
  [notificationScheduler performBlock:v16];

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
  notificationScheduler = [(EMBlockedSenderManager *)self notificationScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __101__EMBlockedSenderManager__postBlockedSenderListDidChangeNotificationBasedOnBlockedSenderEnabledState__block_invoke;
  v4[3] = &unk_1E826C098;
  v4[4] = self;
  [notificationScheduler performBlock:v4];
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

- (void)setMoveToTrashEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _ef_log_EMBlockedSenderManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    selfCopy = self;
    v11 = 1024;
    v12 = enabledCopy;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%p: Update Move To Trash=%{BOOL}d", &v9, 0x12u);
  }

  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:enabledCopy];
  [em_userDefaults setValue:v7 forKey:@"BlockedSenderAction"];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isMoveToTrashEnabled
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults valueForKey:@"BlockedSenderAction"];

  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || [v3 integerValue] == 1;

  return v4;
}

- (BOOL)isEmailAddressBlocked:(id)blocked
{
  blockedCopy = blocked;
  if ([(EMBlockedSenderManager *)self isBlockedSenderEnabled])
  {
    v5 = [MEMORY[0x1E699AFD0] rawAddressFromFullAddress:blockedCopy];
    v6 = [(EMBlockedSenderManager *)self _isEmailAddressBlocked:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isContactBlocked:(id)blocked
{
  emailAddresses = [blocked emailAddresses];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__EMBlockedSenderManager_isContactBlocked___block_invoke;
  v6[3] = &unk_1E826C3D8;
  v6[4] = self;
  LOBYTE(self) = [emailAddresses ef_any:v6];

  return self;
}

uint64_t __43__EMBlockedSenderManager_isContactBlocked___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  v4 = [v2 isEmailAddressBlocked:v3];

  return v4;
}

- (void)blockEmailAddress:(id)address
{
  v18 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v5 = _ef_log_EMBlockedSenderManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = addressCopy;
    emailAddressValue = [v6 emailAddressValue];
    v8 = emailAddressValue;
    if (emailAddressValue)
    {
      ef_publicDescription = [emailAddressValue ef_publicDescription];
    }

    else
    {
      v10 = MEMORY[0x1E699B858];
      stringValue = [v6 stringValue];
      ef_publicDescription = [v10 fullyOrPartiallyRedactedStringForString:stringValue];
    }

    v14 = 134218242;
    selfCopy = self;
    v16 = 2114;
    v17 = ef_publicDescription;
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

- (void)unblockEmailAddress:(id)address
{
  v18 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v5 = _ef_log_EMBlockedSenderManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = addressCopy;
    emailAddressValue = [v6 emailAddressValue];
    v8 = emailAddressValue;
    if (emailAddressValue)
    {
      ef_publicDescription = [emailAddressValue ef_publicDescription];
    }

    else
    {
      v10 = MEMORY[0x1E699B858];
      stringValue = [v6 stringValue];
      ef_publicDescription = [v10 fullyOrPartiallyRedactedStringForString:stringValue];
    }

    v14 = 134218242;
    selfCopy = self;
    v16 = 2114;
    v17 = ef_publicDescription;
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

- (void)blockEmailAddresses:(id)addresses
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  addressesCopy = addresses;
  v5 = [addressesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(addressesCopy);
        }

        v8 = [MEMORY[0x1E699AFD0] rawAddressFromFullAddress:{*(*(&v10 + 1) + 8 * v7), v10}];
        [(EMBlockedSenderManager *)self blockEmailAddress:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [addressesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)unblockEmailAddresses:(id)addresses
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  addressesCopy = addresses;
  v5 = [addressesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(addressesCopy);
        }

        v8 = [MEMORY[0x1E699AFD0] rawAddressFromFullAddress:{*(*(&v10 + 1) + 8 * v7), v10}];
        [(EMBlockedSenderManager *)self unblockEmailAddress:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [addressesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isTokenAddressIsBlocked:(id)blocked
{
  blockedCopy = blocked;
  contact = [blockedCopy contact];

  if (contact)
  {
    contact2 = [blockedCopy contact];
    v7 = [(EMBlockedSenderManager *)self isContactBlocked:contact2];
  }

  else
  {
    contact2 = [blockedCopy currentRawAddress];
    v7 = [(EMBlockedSenderManager *)self isEmailAddressBlocked:contact2];
  }

  v8 = v7;

  return v8;
}

- (void)blockTokenAddress:(id)address
{
  addressCopy = address;
  contact = [addressCopy contact];

  if (contact)
  {
    contact2 = [addressCopy contact];
    [(EMBlockedSenderManager *)self blockContact:contact2];
  }

  else
  {
    contact2 = [addressCopy currentRawAddress];
    [(EMBlockedSenderManager *)self blockEmailAddress:contact2];
  }
}

- (void)unblockTokenAddress:(id)address
{
  addressCopy = address;
  contact = [addressCopy contact];

  if (contact)
  {
    contact2 = [addressCopy contact];
    [(EMBlockedSenderManager *)self unblockContact:contact2];
  }

  else
  {
    contact2 = [addressCopy currentRawAddress];
    [(EMBlockedSenderManager *)self unblockEmailAddress:contact2];
  }
}

- (BOOL)_isEmailAddressBlocked:(id)blocked
{
  v31 = *MEMORY[0x1E69E9840];
  blockedCopy = blocked;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  blockedSenderCache = [(EMBlockedSenderManager *)self blockedSenderCache];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__EMBlockedSenderManager__isEmailAddressBlocked___block_invoke;
  v18[3] = &unk_1E826C400;
  v18[4] = self;
  v20 = &v21;
  v6 = blockedCopy;
  v19 = v6;
  [blockedSenderCache performWhileLocked:v18];

  if (*(v22 + 24) == 1)
  {
    v7 = _ef_log_EMBlockedSenderManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      emailAddressValue = [v8 emailAddressValue];
      v10 = emailAddressValue;
      if (emailAddressValue)
      {
        ef_publicDescription = [emailAddressValue ef_publicDescription];
      }

      else
      {
        v13 = MEMORY[0x1E699B858];
        stringValue = [v8 stringValue];
        ef_publicDescription = [v13 fullyOrPartiallyRedactedStringForString:stringValue];
      }

      v15 = *(v22 + 24);
      *buf = 134218498;
      selfCopy = self;
      v27 = 2114;
      v28 = ef_publicDescription;
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

- (BOOL)areAnyEmailAddressesBlocked:(id)blocked
{
  v28 = *MEMORY[0x1E69E9840];
  blockedCopy = blocked;
  if ([(EMBlockedSenderManager *)self isBlockedSenderEnabled])
  {
    blockedSenderEmailAddresses = [(EMBlockedSenderManager *)self blockedSenderEmailAddresses];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__EMBlockedSenderManager_areAnyEmailAddressesBlocked___block_invoke;
    v20[3] = &unk_1E826C428;
    v6 = blockedSenderEmailAddresses;
    v21 = v6;
    v7 = [blockedCopy ef_firstObjectPassingTest:v20];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = _ef_log_EMBlockedSenderManager();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v7;
        emailAddressValue = [v10 emailAddressValue];
        v12 = emailAddressValue;
        if (emailAddressValue)
        {
          ef_publicDescription = [emailAddressValue ef_publicDescription];
        }

        else
        {
          v14 = MEMORY[0x1E699B858];
          stringValue = [v10 stringValue];
          ef_publicDescription = [v14 fullyOrPartiallyRedactedStringForString:stringValue];
        }

        v16 = ef_publicDescription;
        v17 = [blockedCopy count];
        *buf = 134218498;
        selfCopy = self;
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

- (void)_unblockPhoneNumber:(id)number
{
  v11 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v5 = _ef_log_EMBlockedSenderManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%p: Unblock phone number", &v9, 0xCu);
  }

  formattedInternationalStringValue = [numberCopy formattedInternationalStringValue];
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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"EMPromptUserForBlockedSenderKey"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (BOOL)shouldMoveToTrashForMailboxType:(int64_t)type gmailLabels:(id)labels
{
  labelsCopy = labels;
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = [v6 initWithObjects:{*MEMORY[0x1E699B050], *MEMORY[0x1E699B038], *MEMORY[0x1E699B048], 0}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__EMBlockedSenderManager_shouldMoveToTrashForMailboxType_gmailLabels___block_invoke;
  v11[3] = &unk_1E826C450;
  v12 = v7;
  v8 = v7;
  v9 = [labelsCopy ef_any:v11] ^ 1;

  return ((type - 7) < 0xFFFFFFFFFFFFFFFCLL) & v9;
}

uint64_t __70__EMBlockedSenderManager_shouldMoveToTrashForMailboxType_gmailLabels___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 labelName];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end