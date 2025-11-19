@interface CalContactsProvider
+ (BOOL)birthdayIsYearless:(id)a3;
+ (BOOL)isCalendarIslamic:(id)a3;
+ (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)a3 inReputationStore:(id)a4;
+ (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)a3 inReputationStore:(id)a4;
+ (id)birthdayStringForContactName:(id)a3 eventDate:(id)a4 birthDate:(id)a5 lunarCalendar:(id)a6;
+ (id)defaultProvider;
+ (id)reputationForHandle:(id)a3 inStore:(id)a4;
- (BOOL)contactAccessResolved;
- (BOOL)contactIdentifierIsMe:(id)a3;
- (BOOL)matchesOneOfMyEmails:(id)a3;
- (BOOL)matchesOneOfMyPhoneNumbers:(id)a3;
- (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)a3;
- (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)a3;
- (BOOL)urlMatchesOneOfMyEmails:(id)a3;
- (CNContact)meContact;
- (CalContactsProvider)init;
- (CalContactsProvider)initWithStore:(id)a3;
- (id)_fetchedUnifiedMeContact;
- (id)_fullNameForFirstContactMatchingPredicate:(id)a3;
- (id)_lastHistoryToken;
- (id)_meWithKeys:(id)a3;
- (id)cachedEmailAddress;
- (id)cachedEmailAddressArray;
- (id)cachedEmailAddresses;
- (id)contactsFromContactIdentifiers:(id)a3 withKeys:(id)a4;
- (id)fullNameForFirstContactMatchingEmailAddress:(id)a3;
- (id)fullNameForFirstContactMatchingPhoneNumber:(id)a3;
- (id)myAddressForLabel:(id)a3;
- (id)myEmailAddress;
- (id)myEmailAddresses;
- (id)myNameWithStyle:(int64_t)a3;
- (id)myPhoneNumbers;
- (id)myShortDisplayName;
- (id)nullableContactStore;
- (id)unifiedContactMatchingName:(id)a3 email:(id)a4 url:(id)a5 keysToFetch:(id)a6;
- (id)unifiedContactMatchingString:(id)a3 keysToFetch:(id)a4 matchType:(int64_t *)a5;
- (id)unifiedContactWithEmailAddress:(id)a3;
- (id)unifiedContactWithIdentifier:(id)a3;
- (id)unifiedContactWithIdentifier:(id)a3 keysToFetch:(id)a4;
- (id)unifiedContactWithName:(id)a3;
- (id)unifiedContactWithPhoneNumber:(id)a3;
- (id)unifiedContactsDictionaryForHandleStrings:(id)a3 keysToFetch:(id)a4;
- (id)unifiedContactsForHandleStrings:(id)a3 keysToFetch:(id)a4;
- (id)unifiedContactsMatchingPredicate:(id)a3 keysToFetch:(id)a4;
- (void)_setLastHistoryToken:(id)a3;
- (void)_syncContacts;
- (void)contactAccessResolved;
- (void)contactsChanged:(id)a3;
- (void)deregisterForContactChangeNotifications:(id)a3;
- (void)meCardChanged:(id)a3;
- (void)registerForContactChangeNotifications:(id)a3;
- (void)setMeCardEmailsForUnitTesting:(id)a3;
- (void)setMeContact:(id)a3;
- (void)setTestMeContactIdentifier:(id)a3;
@end

@implementation CalContactsProvider

+ (id)defaultProvider
{
  if (defaultProvider_onceToken_0 != -1)
  {
    +[CalContactsProvider defaultProvider];
  }

  v3 = defaultProvider__defaultProvider_0;

  return v3;
}

uint64_t __38__CalContactsProvider_defaultProvider__block_invoke()
{
  defaultProvider__defaultProvider_0 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (CalContactsProvider)init
{
  v3 = dispatch_queue_create("Contact Store Work", 0);
  contactStoreWorkQueue = self->_contactStoreWorkQueue;
  self->_contactStoreWorkQueue = v3;

  v5 = self->_contactStoreWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CalContactsProvider_init__block_invoke;
  block[3] = &unk_1E7EC66B0;
  v6 = self;
  v17 = v6;
  dispatch_async(v5, block);
  v7 = dispatch_get_global_queue(0, 0);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __27__CalContactsProvider_init__block_invoke_13;
  v14 = &unk_1E7EC66B0;
  v8 = v6;
  v15 = v8;
  dispatch_async(v7, &v11);

  v9 = [(CalContactsProvider *)v8 initWithStore:0, v11, v12, v13, v14];
  return v9;
}

void __27__CalContactsProvider_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695CE28]);
  v3 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v2];
  v4 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__CalContactsProvider_init__block_invoke_2;
  v11[3] = &unk_1E7EC6AE0;
  v5 = v4;
  v12 = v5;
  [v3 requestAccessForEntityType:0 completionHandler:v11];
  v6 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v5, v6) >= 1)
  {
    v7 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __27__CalContactsProvider_init__block_invoke_cold_1();
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = v3;
  v10 = v3;
}

void __27__CalContactsProvider_init__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __27__CalContactsProvider_init__block_invoke_2_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __27__CalContactsProvider_init__block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchedUnifiedMeContact];
  [*(a1 + 32) setMeContact:v2];
}

- (CalContactsProvider)initWithStore:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CalContactsProvider;
  v6 = [(CalContactsProvider *)&v18 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_store, a3);
      v8 = dispatch_queue_create("Contact Store Work", 0);
      contactStoreWorkQueue = v7->_contactStoreWorkQueue;
      v7->_contactStoreWorkQueue = v8;
    }

    v10 = objc_opt_new();
    reputationStore = v7->_reputationStore;
    v7->_reputationStore = v10;

    v12 = objc_opt_new();
    delegates = v7->_delegates;
    v7->_delegates = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create("CalendarFoundation.contacts", v14);
    [(CalContactsProvider *)v7 setSyncQueue:v15];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v7 selector:sel_meCardChanged_ name:*MEMORY[0x1E695C3E0] object:0];
  }

  return v7;
}

- (void)registerForContactChangeNotifications:(id)a3
{
  v5 = a3;
  if (![(NSMutableSet *)self->_delegates count])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel_contactsChanged_ name:*MEMORY[0x1E695C3D8] object:0];
  }

  [(NSMutableSet *)self->_delegates addObject:v5];
}

- (void)deregisterForContactChangeNotifications:(id)a3
{
  [(NSMutableSet *)self->_delegates removeObject:a3];
  if (![(NSMutableSet *)self->_delegates count])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x1E695C3D8] object:0];
  }
}

- (BOOL)contactAccessResolved
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getMGGetBoolAnswerSymbolLoc_ptr;
  v8 = getMGGetBoolAnswerSymbolLoc_ptr;
  if (!getMGGetBoolAnswerSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getMGGetBoolAnswerSymbolLoc_block_invoke;
    v4[3] = &unk_1E7EC65D0;
    v4[4] = &v5;
    __getMGGetBoolAnswerSymbolLoc_block_invoke(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    [CalContactsProvider contactAccessResolved];
  }

  return !v2(@"green-tea") || [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] != 0;
}

- (CNContact)meContact
{
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v3 = self;
    objc_sync_enter(v3);
    v4 = v3->_meContact;
    objc_sync_exit(v3);

    if (v4 || ([(CalContactsProvider *)v3 _fetchedUnifiedMeContact], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(CalContactsProvider *)v3 setMeContact:v4];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMeContact:(id)a3
{
  v11 = a3;
  v5 = self;
  objc_sync_enter(v5);
  meContact = v5->_meContact;
  v7 = [(CalContactsProvider *)v5 loadedMyEmailAddresses];
  objc_storeStrong(&v5->_meContact, a3);
  v8 = [(CNContact *)v5->_meContact CalEmailAddresses];
  v9 = [v8 isEqualToArray:v7];
  [(CalContactsProvider *)v5 setLoadedMyEmailAddresses:v8];
  if (meContact)
  {
    v9 = 1;
  }

  objc_sync_exit(v5);
  if ((v9 & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:@"CalMeCardChangedNotification" object:0];
  }
}

- (void)setMeCardEmailsForUnitTesting:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(CalContactsProvider *)v4 setUnitTestEmails:v5];
  objc_sync_exit(v4);
}

- (id)nullableContactStore
{
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__5;
    v11 = __Block_byref_object_dispose__5;
    v12 = 0;
    contactStoreWorkQueue = self->_contactStoreWorkQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__CalContactsProvider_nullableContactStore__block_invoke;
    v6[3] = &unk_1E7EC6B08;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(contactStoreWorkQueue, v6);
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __43__CalContactsProvider_nullableContactStore__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)contactsChanged:(id)a3
{
  v4 = [(CalContactsProvider *)self syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CalContactsProvider_contactsChanged___block_invoke;
  block[3] = &unk_1E7EC66B0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)meCardChanged:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CalContactsProvider_meCardChanged___block_invoke;
  block[3] = &unk_1E7EC66B0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __37__CalContactsProvider_meCardChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchedUnifiedMeContact];
  [*(a1 + 32) setMeContact:v2];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"CalMeCardChangedNotification" object:0];
}

- (void)_syncContacts
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)_lastHistoryToken
{
  v2 = +[CalDefaults thisProcess];
  v3 = [v2 valueForKey:@"CalContactsProviderHistoryToken"];

  return v3;
}

- (void)_setLastHistoryToken:(id)a3
{
  v3 = a3;
  v4 = +[CalDefaults thisProcess];
  [v4 setObject:v3 forKey:@"CalContactsProviderHistoryToken"];
}

- (id)_meWithKeys:(id)a3
{
  v4 = a3;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__5;
    v15 = __Block_byref_object_dispose__5;
    v16 = 0;
    contactStoreWorkQueue = self->_contactStoreWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__CalContactsProvider__meWithKeys___block_invoke;
    block[3] = &unk_1E7EC67F0;
    block[4] = self;
    v10 = &v11;
    v9 = v4;
    dispatch_sync(contactStoreWorkQueue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __35__CalContactsProvider__meWithKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) testMeContactIdentifer];

  v3 = [*(a1 + 32) store];
  v4 = v3;
  if (v2)
  {
    v5 = [*(a1 + 32) testMeContactIdentifer];
    v6 = *(a1 + 40);
    v16 = 0;
    v7 = [v4 unifiedContactWithIdentifier:v5 keysToFetch:v6 error:&v16];
    v8 = v16;
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;
  }

  else
  {
    v11 = *(a1 + 40);
    v15 = 0;
    v12 = [v3 _crossPlatformUnifiedMeContactWithKeysToFetch:v11 error:&v15];
    v8 = v15;
    v13 = *(*(a1 + 48) + 8);
    v5 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  if (v8)
  {
    v14 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __35__CalContactsProvider__meWithKeys___block_invoke_cold_1();
    }
  }
}

- (id)_fetchedUnifiedMeContact
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695C360];
  v9[0] = *MEMORY[0x1E695C208];
  v9[1] = v3;
  v9[2] = *MEMORY[0x1E695C330];
  v4 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v9[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v6 = [(CalContactsProvider *)self _meWithKeys:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setTestMeContactIdentifier:(id)a3
{
  [(CalContactsProvider *)self setTestMeContactIdentifer:a3];
  v4 = [(CalContactsProvider *)self _fetchedUnifiedMeContact];
  [(CalContactsProvider *)self setMeContact:v4];
}

- (id)unifiedContactsMatchingPredicate:(id)a3 keysToFetch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if ([(CalContactsProvider *)self contactAccessResolved])
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__5;
      v20 = __Block_byref_object_dispose__5;
      v21 = 0;
      contactStoreWorkQueue = self->_contactStoreWorkQueue;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __68__CalContactsProvider_unifiedContactsMatchingPredicate_keysToFetch___block_invoke;
      v12[3] = &unk_1E7EC6B30;
      v15 = &v16;
      v12[4] = self;
      v13 = v6;
      v14 = v7;
      dispatch_sync(contactStoreWorkQueue, v12);
      v9 = v17[5];

      _Block_object_dispose(&v16, 8);
      goto LABEL_8;
    }
  }

  else
  {
    v10 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CalContactsProvider unifiedContactsMatchingPredicate:keysToFetch:];
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

void __68__CalContactsProvider_unifiedContactsMatchingPredicate_keysToFetch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (a1 + 40);
  v11 = 0;
  v6 = [v2 unifiedContactsMatchingPredicate:v3 keysToFetch:v4 error:&v11];
  v7 = v11;
  v8 = *(v5[2] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(v5[2] + 8) + 40))
  {
    v10 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __68__CalContactsProvider_unifiedContactsMatchingPredicate_keysToFetch___block_invoke_cold_1(v5);
    }
  }
}

- (id)unifiedContactsForHandleStrings:(id)a3 keysToFetch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__5;
    v20 = __Block_byref_object_dispose__5;
    v21 = 0;
    contactStoreWorkQueue = self->_contactStoreWorkQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__CalContactsProvider_unifiedContactsForHandleStrings_keysToFetch___block_invoke;
    v11[3] = &unk_1E7EC6B58;
    v15 = &v16;
    v12 = v6;
    v13 = self;
    v14 = v7;
    dispatch_sync(contactStoreWorkQueue, v11);
    v9 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __67__CalContactsProvider_unifiedContactsForHandleStrings_keysToFetch___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695CD58] predicateForContactsMatchingHandleStrings:*(a1 + 32)];
  v3 = [*(a1 + 40) store];
  v4 = *(a1 + 48);
  v10 = 0;
  v5 = [v3 unifiedContactsMatchingPredicate:v2 keysToFetch:v4 error:&v10];
  v6 = v10;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v9 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __67__CalContactsProvider_unifiedContactsForHandleStrings_keysToFetch___block_invoke_cold_1();
    }
  }
}

- (id)unifiedContactsDictionaryForHandleStrings:(id)a3 keysToFetch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__5;
    v20 = __Block_byref_object_dispose__5;
    v21 = 0;
    contactStoreWorkQueue = self->_contactStoreWorkQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__CalContactsProvider_unifiedContactsDictionaryForHandleStrings_keysToFetch___block_invoke;
    v11[3] = &unk_1E7EC6B80;
    v12 = v7;
    v13 = v6;
    v14 = self;
    v15 = &v16;
    dispatch_sync(contactStoreWorkQueue, v11);
    v9 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __77__CalContactsProvider_unifiedContactsDictionaryForHandleStrings_keysToFetch___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:*(a1 + 32)];
  v3 = [MEMORY[0x1E695CD58] predicateForContactsMatchingHandleStrings:*(a1 + 40)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 48) store];
  v10 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [v5 value];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v9 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __77__CalContactsProvider_unifiedContactsDictionaryForHandleStrings_keysToFetch___block_invoke_cold_1();
    }
  }
}

- (id)unifiedContactWithEmailAddress:(id)a3
{
  v4 = a3;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v5 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v4];
    v6 = [MEMORY[0x1E695CD58] CalKeys];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__5;
    v24 = __Block_byref_object_dispose__5;
    v25 = 0;
    contactStoreWorkQueue = self->_contactStoreWorkQueue;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __54__CalContactsProvider_unifiedContactWithEmailAddress___block_invoke;
    v15 = &unk_1E7EC6B30;
    v19 = &v20;
    v16 = self;
    v8 = v5;
    v17 = v8;
    v9 = v6;
    v18 = v9;
    dispatch_sync(contactStoreWorkQueue, &v12);
    v10 = [v21[5] firstObject];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __54__CalContactsProvider_unifiedContactWithEmailAddress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (a1 + 40);
  v11 = 0;
  v6 = [v2 unifiedContactsMatchingPredicate:v3 keysToFetch:v4 error:&v11];
  v7 = v11;
  v8 = *(v5[2] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(v5[2] + 8) + 40))
  {
    v10 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __68__CalContactsProvider_unifiedContactsMatchingPredicate_keysToFetch___block_invoke_cold_1(v5);
    }
  }
}

- (id)unifiedContactWithPhoneNumber:(id)a3
{
  v4 = a3;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v5 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v4];
    v6 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v5];
    v7 = [MEMORY[0x1E695CD58] CalKeys];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__5;
    v25 = __Block_byref_object_dispose__5;
    v26 = 0;
    contactStoreWorkQueue = self->_contactStoreWorkQueue;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __53__CalContactsProvider_unifiedContactWithPhoneNumber___block_invoke;
    v16 = &unk_1E7EC6B30;
    v20 = &v21;
    v17 = self;
    v9 = v6;
    v18 = v9;
    v10 = v7;
    v19 = v10;
    dispatch_sync(contactStoreWorkQueue, &v13);
    v11 = [v22[5] firstObject];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __53__CalContactsProvider_unifiedContactWithPhoneNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (a1 + 40);
  v11 = 0;
  v6 = [v2 unifiedContactsMatchingPredicate:v3 keysToFetch:v4 error:&v11];
  v7 = v11;
  v8 = *(v5[2] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(v5[2] + 8) + 40))
  {
    v10 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __68__CalContactsProvider_unifiedContactsMatchingPredicate_keysToFetch___block_invoke_cold_1(v5);
    }
  }
}

- (id)unifiedContactWithName:(id)a3
{
  v4 = a3;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v5 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:v4];
    v6 = [MEMORY[0x1E695CD58] CalKeys];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__5;
    v24 = __Block_byref_object_dispose__5;
    v25 = 0;
    contactStoreWorkQueue = self->_contactStoreWorkQueue;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __46__CalContactsProvider_unifiedContactWithName___block_invoke;
    v15 = &unk_1E7EC6B30;
    v19 = &v20;
    v16 = self;
    v8 = v5;
    v17 = v8;
    v9 = v6;
    v18 = v9;
    dispatch_sync(contactStoreWorkQueue, &v12);
    v10 = [v21[5] firstObject];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __46__CalContactsProvider_unifiedContactWithName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (a1 + 40);
  v11 = 0;
  v6 = [v2 unifiedContactsMatchingPredicate:v3 keysToFetch:v4 error:&v11];
  v7 = v11;
  v8 = *(v5[2] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(v5[2] + 8) + 40))
  {
    v10 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __68__CalContactsProvider_unifiedContactsMatchingPredicate_keysToFetch___block_invoke_cold_1(v5);
    }
  }
}

- (id)unifiedContactWithIdentifier:(id)a3 keysToFetch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if ([(CalContactsProvider *)self contactAccessResolved])
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__5;
      v20 = __Block_byref_object_dispose__5;
      v21 = 0;
      contactStoreWorkQueue = self->_contactStoreWorkQueue;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__CalContactsProvider_unifiedContactWithIdentifier_keysToFetch___block_invoke;
      v12[3] = &unk_1E7EC6B30;
      v15 = &v16;
      v12[4] = self;
      v13 = v6;
      v14 = v7;
      dispatch_sync(contactStoreWorkQueue, v12);
      v9 = v17[5];

      _Block_object_dispose(&v16, 8);
      goto LABEL_8;
    }
  }

  else
  {
    v10 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CalContactsProvider unifiedContactWithIdentifier:keysToFetch:];
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

void __64__CalContactsProvider_unifiedContactWithIdentifier_keysToFetch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (a1 + 40);
  v11 = 0;
  v6 = [v2 unifiedContactWithIdentifier:v3 keysToFetch:v4 error:&v11];
  v7 = v11;
  v8 = *(v5[2] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(v5[2] + 8) + 40))
  {
    v10 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __64__CalContactsProvider_unifiedContactWithIdentifier_keysToFetch___block_invoke_cold_1(v5);
    }
  }
}

- (id)unifiedContactWithIdentifier:(id)a3
{
  v4 = MEMORY[0x1E695CD58];
  v5 = a3;
  v6 = [v4 CalKeys];
  v7 = [(CalContactsProvider *)self unifiedContactWithIdentifier:v5 keysToFetch:v6];

  return v7;
}

- (id)unifiedContactMatchingString:(id)a3 keysToFetch:(id)a4 matchType:(int64_t *)a5
{
  v7 = a3;
  v8 = [(CalContactsProvider *)self unifiedContactWithEmailAddress:v7];
  if (v8)
  {
    v9 = v8;
    if (!a5)
    {
      goto LABEL_9;
    }

    v10 = 2;
  }

  else
  {
    v11 = [(CalContactsProvider *)self unifiedContactWithPhoneNumber:v7];
    if (v11)
    {
      v9 = v11;
      if (!a5)
      {
        goto LABEL_9;
      }

      v10 = 3;
    }

    else
    {
      v9 = [(CalContactsProvider *)self unifiedContactWithName:v7];
      v10 = v9 != 0;
      if (!a5)
      {
        goto LABEL_9;
      }
    }
  }

  *a5 = v10;
LABEL_9:

  return v9;
}

- (id)unifiedContactMatchingName:(id)a3 email:(id)a4 url:(id)a5 keysToFetch:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v53 = 0;
    v54[0] = &v53;
    v54[1] = 0x3032000000;
    v54[2] = __Block_byref_object_copy__5;
    v54[3] = __Block_byref_object_dispose__5;
    v55 = 0;
    v14 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v11];
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__5;
    v51 = __Block_byref_object_dispose__5;
    v52 = 0;
    contactStoreWorkQueue = self->_contactStoreWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__CalContactsProvider_unifiedContactMatchingName_email_url_keysToFetch___block_invoke;
    block[3] = &unk_1E7EC6BA8;
    v45 = &v47;
    block[4] = self;
    v16 = v14;
    v43 = v16;
    v17 = v13;
    v44 = v17;
    v46 = &v53;
    dispatch_sync(contactStoreWorkQueue, block);
    if ([v48[5] count])
    {
      v18 = [v48[5] firstObject];
    }

    else
    {
      if (!v48[5])
      {
        v19 = +[CalFoundationLogSubsystem contacts];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [CalContactsProvider unifiedContactMatchingName:v16 email:v54 url:? keysToFetch:?];
        }
      }

      v20 = [MEMORY[0x1E695CD58] predicateForContactMatchingURLString:v12];

      v21 = self->_contactStoreWorkQueue;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __72__CalContactsProvider_unifiedContactMatchingName_email_url_keysToFetch___block_invoke_33;
      v37[3] = &unk_1E7EC6BA8;
      v40 = &v47;
      v37[4] = self;
      v16 = v20;
      v38 = v16;
      v22 = v17;
      v39 = v22;
      v41 = &v53;
      dispatch_sync(v21, v37);
      if ([v48[5] count])
      {
        v18 = [v48[5] firstObject];
      }

      else
      {
        if (!v48[5])
        {
          v23 = +[CalFoundationLogSubsystem contacts];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [CalContactsProvider unifiedContactMatchingName:v16 email:v54 url:? keysToFetch:?];
          }
        }

        v24 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:v10];

        v25 = self->_contactStoreWorkQueue;
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __72__CalContactsProvider_unifiedContactMatchingName_email_url_keysToFetch___block_invoke_34;
        v31 = &unk_1E7EC6BA8;
        v35 = &v47;
        v32 = self;
        v16 = v24;
        v33 = v16;
        v34 = v22;
        v36 = &v53;
        dispatch_sync(v25, &v28);
        if ([v48[5] count])
        {
          v18 = [v48[5] firstObject];
        }

        else
        {
          if (!v48[5])
          {
            v26 = +[CalFoundationLogSubsystem contacts];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [CalContactsProvider unifiedContactMatchingName:v16 email:v54 url:? keysToFetch:?];
            }
          }

          v18 = 0;
        }
      }
    }

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v53, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __72__CalContactsProvider_unifiedContactMatchingName_email_url_keysToFetch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 unifiedContactsMatchingPredicate:v3 keysToFetch:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __72__CalContactsProvider_unifiedContactMatchingName_email_url_keysToFetch___block_invoke_33(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 unifiedContactsMatchingPredicate:v3 keysToFetch:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __72__CalContactsProvider_unifiedContactMatchingName_email_url_keysToFetch___block_invoke_34(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 unifiedContactsMatchingPredicate:v3 keysToFetch:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)contactsFromContactIdentifiers:(id)a3 withKeys:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:v5];
  v8 = +[CalContactsProvider defaultProvider];
  v9 = v8;
  v25 = v7;
  if (v6)
  {
    v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v6];
  }

  else
  {
    v11 = [MEMORY[0x1E695CD58] CalKeys];
    v10 = [v9 unifiedContactsMatchingPredicate:v7 keysToFetch:v11];
  }

  v12 = objc_opt_new();
  v13 = [MEMORY[0x1E695DF70] arrayWithArray:v5];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = [v19 identifier];
        [v12 setObject:v19 forKey:v20];

        v21 = [v19 identifier];
        [v13 removeObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  if ([v13 count])
  {
    v22 = +[CalFoundationLogSubsystem contacts];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CalContactsProvider contactsFromContactIdentifiers:withKeys:];
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)fullNameForFirstContactMatchingEmailAddress:(id)a3
{
  v4 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:a3];
  v5 = [(CalContactsProvider *)self _fullNameForFirstContactMatchingPredicate:v4];

  return v5;
}

- (id)fullNameForFirstContactMatchingPhoneNumber:(id)a3
{
  v4 = MEMORY[0x1E695CF50];
  v5 = a3;
  v6 = [[v4 alloc] initWithStringValue:v5];

  v7 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v6];
  v8 = [(CalContactsProvider *)self _fullNameForFirstContactMatchingPredicate:v7];

  return v8;
}

- (id)_fullNameForFirstContactMatchingPredicate:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CD80];
  v5 = a3;
  v6 = [v4 descriptorForRequiredKeysForStyle:0];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [(CalContactsProvider *)self unifiedContactsMatchingPredicate:v5 keysToFetch:v7];

  if (v8)
  {
    v9 = [v8 firstObject];
    v10 = [MEMORY[0x1E695CD80] stringFromContact:v9 style:0];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)contactIdentifierIsMe:(id)a3
{
  v4 = a3;
  v5 = [(CalContactsProvider *)self meContact];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:v4];

  return v7;
}

- (id)myShortDisplayName
{
  v3 = [(CalContactsProvider *)self meContact];
  v4 = [v3 givenName];

  if (![v4 length])
  {
    v5 = [(CalContactsProvider *)self meContact];
    v6 = [v5 nickname];

    v4 = v6;
  }

  return v4;
}

- (id)myNameWithStyle:(int64_t)a3
{
  v5 = [(CalContactsProvider *)self meContact];
  if (v5)
  {
    v6 = MEMORY[0x1E695CD80];
    v7 = [(CalContactsProvider *)self meContact];
    v8 = [v6 stringFromContact:v7 style:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)myAddressForLabel:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CalContactsProvider *)self meContact];
  v6 = [v5 postalAddresses];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 label];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v8 = [v11 value];
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)myEmailAddress
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CalContactsProvider *)v2 unitTestEmails];

  if (v3)
  {
    v4 = [(CalContactsProvider *)v2 unitTestEmails];
    v5 = [v4 firstObject];

    objc_sync_exit(v2);
  }

  else
  {
    objc_sync_exit(v2);

    v6 = [(CalContactsProvider *)v2 meContact];
    v7 = [v6 emailAddresses];
    v2 = [v7 firstObject];

    v5 = [(CalContactsProvider *)v2 value];
  }

  return v5;
}

- (id)cachedEmailAddressArray
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CalContactsProvider *)v2 unitTestEmails];

  if (v3)
  {
    v4 = [(CalContactsProvider *)v2 unitTestEmails];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = [(CalContactsProvider *)v2 loadedMyEmailAddresses];

  if (v5)
  {
    v4 = [(CalContactsProvider *)v2 loadedMyEmailAddresses];
    goto LABEL_5;
  }

  v8 = [(CalContactsProvider *)v2 meContact];
  v9 = [v8 CalEmailAddresses];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  [(CalContactsProvider *)v2 setLoadedMyEmailAddresses:v9];
  v6 = [(CalContactsProvider *)v2 loadedMyEmailAddresses];

LABEL_6:
  objc_sync_exit(v2);

  return v6;
}

- (id)cachedEmailAddress
{
  v2 = [(CalContactsProvider *)self cachedEmailAddressArray];
  v3 = [v2 firstObject];

  return v3;
}

- (id)myEmailAddresses
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CalContactsProvider *)v2 unitTestEmails];

  if (v3)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = [(CalContactsProvider *)v2 unitTestEmails];
    v6 = [v4 setWithArray:v5];

    objc_sync_exit(v2);
  }

  else
  {
    objc_sync_exit(v2);

    v7 = [(CalContactsProvider *)v2 meContact];
    v2 = [v7 CalEmailAddresses];

    if (v2)
    {
      v8 = [MEMORY[0x1E695DFD8] setWithArray:v2];
    }

    else
    {
      v8 = objc_opt_new();
    }

    v6 = v8;
  }

  return v6;
}

- (id)cachedEmailAddresses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(CalContactsProvider *)self cachedEmailAddressArray];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (BOOL)matchesOneOfMyEmails:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CalContactsProvider *)self cachedEmailAddresses];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__CalContactsProvider_matchesOneOfMyEmails___block_invoke;
    v8[3] = &unk_1E7EC6BD0;
    v9 = v4;
    v10 = &v11;
    [v5 enumerateObjectsUsingBlock:v8];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __44__CalContactsProvider_matchesOneOfMyEmails___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) caseInsensitiveCompare:a2];
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)urlMatchesOneOfMyEmails:(id)a3
{
  v4 = [a3 absoluteString];
  v5 = [v4 stringRemovingMailto];

  LOBYTE(self) = [(CalContactsProvider *)self matchesOneOfMyEmails:v5];
  return self;
}

- (id)myPhoneNumbers
{
  v2 = [(CalContactsProvider *)self meContact];
  v3 = [v2 CalPhoneNumbers];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (BOOL)matchesOneOfMyPhoneNumbers:(id)a3
{
  v4 = a3;
  v5 = [(CalContactsProvider *)self myPhoneNumbers];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__CalContactsProvider_matchesOneOfMyPhoneNumbers___block_invoke;
  v9[3] = &unk_1E7EC6BD0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __50__CalContactsProvider_matchesOneOfMyPhoneNumbers___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) caseInsensitiveCompare:a2];
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

+ (id)reputationForHandle:(id)a3 inStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v11 = +[CalFoundationLogSubsystem junk];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CalContactsProvider reputationForHandle:inStore:];
    }

    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v13 = 0;
  v8 = [v6 reputationForHandle:v5 timeout:&v13 error:0.2];
  v9 = v13;
  v10 = +[CalFoundationLogSubsystem junk];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(CalContactsProvider *)v5 reputationForHandle:v8 inStore:v10];
  }

  if (v9)
  {
    v11 = +[CalFoundationLogSubsystem junk];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CalContactsProvider reputationForHandle:inStore:];
    }

LABEL_10:
  }

  return v8;
}

+ (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)a3 inReputationStore:(id)a4
{
  v6 = MEMORY[0x1E695CF78];
  v7 = a4;
  v8 = [v6 handleWithEmailAddress:a3];
  v9 = [a1 reputationForHandle:v8 inStore:v7];

  v10 = v9 && [v9 score] == 1;
  return v10;
}

+ (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)a3 inReputationStore:(id)a4
{
  v6 = MEMORY[0x1E695CF78];
  v7 = a4;
  v8 = [v6 handleWithPhoneNumber:a3];
  v9 = [a1 reputationForHandle:v8 inStore:v7];

  v10 = v9 && [v9 score] == 1;
  return v10;
}

- (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)a3
{
  v4 = a3;
  v5 = [(CalContactsProvider *)self reputationStore];
  LOBYTE(self) = [objc_opt_class() shouldPermitOrganizerEmailFromJunkChecks:v4 inReputationStore:v5];

  return self;
}

- (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)a3
{
  v4 = a3;
  v5 = [(CalContactsProvider *)self reputationStore];
  LOBYTE(self) = [objc_opt_class() shouldPermitOrganizerPhoneNumberFromJunkChecks:v4 inReputationStore:v5];

  return self;
}

+ (BOOL)birthdayIsYearless:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 CalYearlessDateThreshold];
  v6 = [v4 CalIsBeforeDate:v5];

  return v6;
}

+ (BOOL)isCalendarIslamic:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695D878]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695D880]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695D888]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x1E695D890]];
  }

  return v4;
}

+ (id)birthdayStringForContactName:(id)a3 eventDate:(id)a4 birthDate:(id)a5 lunarCalendar:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (!v11)
  {
    v27 = 0;
    goto LABEL_68;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v14 = [MEMORY[0x1E695DEE8] CalYearlessDateThreshold];
  v15 = [v11 isBeforeDate:v14];

  if (v15)
  {
    goto LABEL_15;
  }

  v16 = *MEMORY[0x1E695D850];
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *MEMORY[0x1E695D850];
  }

  v18 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v17];
  v19 = [v10 dateByAddingDays:7 inCalendar:v18];
  v20 = [v18 components:4 fromDate:v11 toDate:v19 options:0];
  v21 = [v20 year];

  if (v21 <= 0)
  {

LABEL_15:
    if ([v12 isEqualToString:*MEMORY[0x1E695D828]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Chinese Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D860]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Hebrew Birthday";
    }

    else if ([CalContactsProvider isCalendarIslamic:v12])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Hijri Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D818]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Bangla Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D858]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Gujarati Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D8A0]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Kannada Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D8A8]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Malayalam Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D8B0]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Marathi Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D8B8]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Odia Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D8D0]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Tamil Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D8D8]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Telugu Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D8E8]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Vikram Samvat Birthday";
    }

    else if ([v12 isEqualToString:*MEMORY[0x1E695D838]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Korean Birthday";
    }

    else
    {
      v30 = [v12 isEqualToString:*MEMORY[0x1E695D8E0]];
      v28 = MEMORY[0x1E696AEC0];
      if (v30)
      {
        v29 = @"%@’s Vietnamese Birthday";
      }

      else
      {
        v29 = @"%@’s Birthday";
      }
    }

    v18 = [v13 localizedStringForKey:v29 value:&stru_1F379FFA8 table:0];
    v27 = [v28 localizedStringWithFormat:v18, v9];
    goto LABEL_67;
  }

  v35 = v19;
  v34 = [v13 localizedStringForKey:@"1: ordinal | 0: cardinal" value:@"1" table:0];
  if ([v34 isEqualToString:@"1"])
  {
    v22 = 6;
  }

  else
  {
    v22 = 1;
  }

  v23 = MEMORY[0x1E696ADA0];
  v24 = [MEMORY[0x1E696AD98] numberWithLong:v21];
  v25 = [v23 localizedStringFromNumber:v24 numberStyle:v22];

  if ([v12 isEqualToString:*MEMORY[0x1E695D828]])
  {
    v26 = @"birthday_chinese_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D860]])
  {
    v26 = @"birthday_hebrew_count";
  }

  else if ([CalContactsProvider isCalendarIslamic:v12])
  {
    v26 = @"birthday_islamic_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D818]])
  {
    v26 = @"birthday_bangla_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D858]])
  {
    v26 = @"birthday_gujarati_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D8A0]])
  {
    v26 = @"birthday_kannada_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D8A8]])
  {
    v26 = @"birthday_malayalam_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D8B0]])
  {
    v26 = @"birthday_marathi_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D8B8]])
  {
    v26 = @"birthday_odia_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D8D0]])
  {
    v26 = @"birthday_tamil_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D8D8]])
  {
    v26 = @"birthday_telugu_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D8E8]])
  {
    v26 = @"birthday_vikram_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D838]])
  {
    v26 = @"birthday_korean_count";
  }

  else if ([v12 isEqualToString:*MEMORY[0x1E695D8E0]])
  {
    v26 = @"birthday_vietnamese_count";
  }

  else
  {
    v26 = @"birthday_count";
  }

  v32 = MEMORY[0x1E696AEC0];
  v33 = [v13 localizedStringForKey:v26 value:&stru_1F379FFA8 table:0];
  v27 = [v32 localizedStringWithFormat:v33, v21, v9, v25];

LABEL_67:
LABEL_68:

  return v27;
}

void __27__CalContactsProvider_init__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __27__CalContactsProvider_init__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)contactAccessResolved
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool soft_MGGetBoolAnswer(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"CalContactsProvider.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

void __35__CalContactsProvider__meWithKeys___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)unifiedContactsMatchingPredicate:keysToFetch:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__CalContactsProvider_unifiedContactsMatchingPredicate_keysToFetch___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1(&dword_1B990D000, v1, v2, "Error while fetching contact for predicate %@ [%@]");
  v3 = *MEMORY[0x1E69E9840];
}

void __67__CalContactsProvider_unifiedContactsForHandleStrings_keysToFetch___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1(&dword_1B990D000, v0, v1, "Error while fetching contact for predicate %@ [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

void __77__CalContactsProvider_unifiedContactsDictionaryForHandleStrings_keysToFetch___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1(&dword_1B990D000, v0, v1, "Error while fetching contact for fetchRequest %@ [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)unifiedContactWithIdentifier:keysToFetch:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__CalContactsProvider_unifiedContactWithIdentifier_keysToFetch___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1(&dword_1B990D000, v1, v2, "Error while fetching contact for identifier %@ [%@]");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)unifiedContactMatchingName:(uint64_t)a1 email:(uint64_t)a2 url:keysToFetch:.cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_1(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_1B990D000, v2, v3, "Error while fetching contact for predicate %@ [%@]");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)contactsFromContactIdentifiers:withKeys:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)reputationForHandle:(NSObject *)a3 inStore:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 score];
  _os_log_debug_impl(&dword_1B990D000, a3, OS_LOG_TYPE_DEBUG, "The reputation result returned for [%@] had the score [%ld] (0==neutral, 1==good, 2==bad)", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)reputationForHandle:inStore:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)reputationForHandle:inStore:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end