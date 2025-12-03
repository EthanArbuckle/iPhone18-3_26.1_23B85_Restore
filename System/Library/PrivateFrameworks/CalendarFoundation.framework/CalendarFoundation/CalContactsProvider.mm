@interface CalContactsProvider
+ (BOOL)birthdayIsYearless:(id)yearless;
+ (BOOL)isCalendarIslamic:(id)islamic;
+ (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)checks inReputationStore:(id)store;
+ (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)checks inReputationStore:(id)store;
+ (id)birthdayStringForContactName:(id)name eventDate:(id)date birthDate:(id)birthDate lunarCalendar:(id)calendar;
+ (id)defaultProvider;
+ (id)reputationForHandle:(id)handle inStore:(id)store;
- (BOOL)contactAccessResolved;
- (BOOL)contactIdentifierIsMe:(id)me;
- (BOOL)matchesOneOfMyEmails:(id)emails;
- (BOOL)matchesOneOfMyPhoneNumbers:(id)numbers;
- (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)checks;
- (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)checks;
- (BOOL)urlMatchesOneOfMyEmails:(id)emails;
- (CNContact)meContact;
- (CalContactsProvider)init;
- (CalContactsProvider)initWithStore:(id)store;
- (id)_fetchedUnifiedMeContact;
- (id)_fullNameForFirstContactMatchingPredicate:(id)predicate;
- (id)_lastHistoryToken;
- (id)_meWithKeys:(id)keys;
- (id)cachedEmailAddress;
- (id)cachedEmailAddressArray;
- (id)cachedEmailAddresses;
- (id)contactsFromContactIdentifiers:(id)identifiers withKeys:(id)keys;
- (id)fullNameForFirstContactMatchingEmailAddress:(id)address;
- (id)fullNameForFirstContactMatchingPhoneNumber:(id)number;
- (id)myAddressForLabel:(id)label;
- (id)myEmailAddress;
- (id)myEmailAddresses;
- (id)myNameWithStyle:(int64_t)style;
- (id)myPhoneNumbers;
- (id)myShortDisplayName;
- (id)nullableContactStore;
- (id)unifiedContactMatchingName:(id)name email:(id)email url:(id)url keysToFetch:(id)fetch;
- (id)unifiedContactMatchingString:(id)string keysToFetch:(id)fetch matchType:(int64_t *)type;
- (id)unifiedContactWithEmailAddress:(id)address;
- (id)unifiedContactWithIdentifier:(id)identifier;
- (id)unifiedContactWithIdentifier:(id)identifier keysToFetch:(id)fetch;
- (id)unifiedContactWithName:(id)name;
- (id)unifiedContactWithPhoneNumber:(id)number;
- (id)unifiedContactsDictionaryForHandleStrings:(id)strings keysToFetch:(id)fetch;
- (id)unifiedContactsForHandleStrings:(id)strings keysToFetch:(id)fetch;
- (id)unifiedContactsMatchingPredicate:(id)predicate keysToFetch:(id)fetch;
- (void)_setLastHistoryToken:(id)token;
- (void)_syncContacts;
- (void)contactAccessResolved;
- (void)contactsChanged:(id)changed;
- (void)deregisterForContactChangeNotifications:(id)notifications;
- (void)meCardChanged:(id)changed;
- (void)registerForContactChangeNotifications:(id)notifications;
- (void)setMeCardEmailsForUnitTesting:(id)testing;
- (void)setMeContact:(id)contact;
- (void)setTestMeContactIdentifier:(id)identifier;
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
  selfCopy = self;
  v17 = selfCopy;
  dispatch_async(v5, block);
  v7 = dispatch_get_global_queue(0, 0);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __27__CalContactsProvider_init__block_invoke_13;
  v14 = &unk_1E7EC66B0;
  v8 = selfCopy;
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

- (CalContactsProvider)initWithStore:(id)store
{
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = CalContactsProvider;
  v6 = [(CalContactsProvider *)&v18 init];
  v7 = v6;
  if (v6)
  {
    if (storeCopy)
    {
      objc_storeStrong(&v6->_store, store);
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_meCardChanged_ name:*MEMORY[0x1E695C3E0] object:0];
  }

  return v7;
}

- (void)registerForContactChangeNotifications:(id)notifications
{
  notificationsCopy = notifications;
  if (![(NSMutableSet *)self->_delegates count])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_contactsChanged_ name:*MEMORY[0x1E695C3D8] object:0];
  }

  [(NSMutableSet *)self->_delegates addObject:notificationsCopy];
}

- (void)deregisterForContactChangeNotifications:(id)notifications
{
  [(NSMutableSet *)self->_delegates removeObject:notifications];
  if (![(NSMutableSet *)self->_delegates count])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E695C3D8] object:0];
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v4 = selfCopy->_meContact;
    objc_sync_exit(selfCopy);

    if (v4 || ([(CalContactsProvider *)selfCopy _fetchedUnifiedMeContact], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(CalContactsProvider *)selfCopy setMeContact:v4];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMeContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  meContact = selfCopy->_meContact;
  loadedMyEmailAddresses = [(CalContactsProvider *)selfCopy loadedMyEmailAddresses];
  objc_storeStrong(&selfCopy->_meContact, contact);
  calEmailAddresses = [(CNContact *)selfCopy->_meContact CalEmailAddresses];
  v9 = [calEmailAddresses isEqualToArray:loadedMyEmailAddresses];
  [(CalContactsProvider *)selfCopy setLoadedMyEmailAddresses:calEmailAddresses];
  if (meContact)
  {
    v9 = 1;
  }

  objc_sync_exit(selfCopy);
  if ((v9 & 1) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalMeCardChangedNotification" object:0];
  }
}

- (void)setMeCardEmailsForUnitTesting:(id)testing
{
  testingCopy = testing;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CalContactsProvider *)selfCopy setUnitTestEmails:testingCopy];
  objc_sync_exit(selfCopy);
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

- (void)contactsChanged:(id)changed
{
  syncQueue = [(CalContactsProvider *)self syncQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CalContactsProvider_contactsChanged___block_invoke;
  block[3] = &unk_1E7EC66B0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (void)meCardChanged:(id)changed
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

- (void)_setLastHistoryToken:(id)token
{
  tokenCopy = token;
  v4 = +[CalDefaults thisProcess];
  [v4 setObject:tokenCopy forKey:@"CalContactsProviderHistoryToken"];
}

- (id)_meWithKeys:(id)keys
{
  keysCopy = keys;
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
    v9 = keysCopy;
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

- (void)setTestMeContactIdentifier:(id)identifier
{
  [(CalContactsProvider *)self setTestMeContactIdentifer:identifier];
  _fetchedUnifiedMeContact = [(CalContactsProvider *)self _fetchedUnifiedMeContact];
  [(CalContactsProvider *)self setMeContact:_fetchedUnifiedMeContact];
}

- (id)unifiedContactsMatchingPredicate:(id)predicate keysToFetch:(id)fetch
{
  predicateCopy = predicate;
  fetchCopy = fetch;
  if (predicateCopy)
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
      v13 = predicateCopy;
      v14 = fetchCopy;
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

- (id)unifiedContactsForHandleStrings:(id)strings keysToFetch:(id)fetch
{
  stringsCopy = strings;
  fetchCopy = fetch;
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
    v12 = stringsCopy;
    selfCopy = self;
    v14 = fetchCopy;
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

- (id)unifiedContactsDictionaryForHandleStrings:(id)strings keysToFetch:(id)fetch
{
  stringsCopy = strings;
  fetchCopy = fetch;
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
    v12 = fetchCopy;
    v13 = stringsCopy;
    selfCopy = self;
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

- (id)unifiedContactWithEmailAddress:(id)address
{
  addressCopy = address;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v5 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:addressCopy];
    calKeys = [MEMORY[0x1E695CD58] CalKeys];
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
    selfCopy = self;
    v8 = v5;
    v17 = v8;
    v9 = calKeys;
    v18 = v9;
    dispatch_sync(contactStoreWorkQueue, &v12);
    firstObject = [v21[5] firstObject];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
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

- (id)unifiedContactWithPhoneNumber:(id)number
{
  numberCopy = number;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v5 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:numberCopy];
    v6 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v5];
    calKeys = [MEMORY[0x1E695CD58] CalKeys];
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
    selfCopy = self;
    v9 = v6;
    v18 = v9;
    v10 = calKeys;
    v19 = v10;
    dispatch_sync(contactStoreWorkQueue, &v13);
    firstObject = [v22[5] firstObject];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
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

- (id)unifiedContactWithName:(id)name
{
  nameCopy = name;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v5 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:nameCopy];
    calKeys = [MEMORY[0x1E695CD58] CalKeys];
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
    selfCopy = self;
    v8 = v5;
    v17 = v8;
    v9 = calKeys;
    v18 = v9;
    dispatch_sync(contactStoreWorkQueue, &v12);
    firstObject = [v21[5] firstObject];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
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

- (id)unifiedContactWithIdentifier:(id)identifier keysToFetch:(id)fetch
{
  identifierCopy = identifier;
  fetchCopy = fetch;
  if (identifierCopy)
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
      v13 = identifierCopy;
      v14 = fetchCopy;
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

- (id)unifiedContactWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E695CD58];
  identifierCopy = identifier;
  calKeys = [v4 CalKeys];
  v7 = [(CalContactsProvider *)self unifiedContactWithIdentifier:identifierCopy keysToFetch:calKeys];

  return v7;
}

- (id)unifiedContactMatchingString:(id)string keysToFetch:(id)fetch matchType:(int64_t *)type
{
  stringCopy = string;
  v8 = [(CalContactsProvider *)self unifiedContactWithEmailAddress:stringCopy];
  if (v8)
  {
    v9 = v8;
    if (!type)
    {
      goto LABEL_9;
    }

    v10 = 2;
  }

  else
  {
    v11 = [(CalContactsProvider *)self unifiedContactWithPhoneNumber:stringCopy];
    if (v11)
    {
      v9 = v11;
      if (!type)
      {
        goto LABEL_9;
      }

      v10 = 3;
    }

    else
    {
      v9 = [(CalContactsProvider *)self unifiedContactWithName:stringCopy];
      v10 = v9 != 0;
      if (!type)
      {
        goto LABEL_9;
      }
    }
  }

  *type = v10;
LABEL_9:

  return v9;
}

- (id)unifiedContactMatchingName:(id)name email:(id)email url:(id)url keysToFetch:(id)fetch
{
  nameCopy = name;
  emailCopy = email;
  urlCopy = url;
  fetchCopy = fetch;
  if ([(CalContactsProvider *)self contactAccessResolved])
  {
    v53 = 0;
    v54[0] = &v53;
    v54[1] = 0x3032000000;
    v54[2] = __Block_byref_object_copy__5;
    v54[3] = __Block_byref_object_dispose__5;
    v55 = 0;
    v14 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:emailCopy];
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
    v17 = fetchCopy;
    v44 = v17;
    v46 = &v53;
    dispatch_sync(contactStoreWorkQueue, block);
    if ([v48[5] count])
    {
      firstObject = [v48[5] firstObject];
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

      v20 = [MEMORY[0x1E695CD58] predicateForContactMatchingURLString:urlCopy];

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
        firstObject = [v48[5] firstObject];
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

        v24 = [MEMORY[0x1E695CD58] predicateForContactsMatchingName:nameCopy];

        v25 = self->_contactStoreWorkQueue;
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __72__CalContactsProvider_unifiedContactMatchingName_email_url_keysToFetch___block_invoke_34;
        v31 = &unk_1E7EC6BA8;
        v35 = &v47;
        selfCopy = self;
        v16 = v24;
        v33 = v16;
        v34 = v22;
        v36 = &v53;
        dispatch_sync(v25, &v28);
        if ([v48[5] count])
        {
          firstObject = [v48[5] firstObject];
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

          firstObject = 0;
        }
      }
    }

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v53, 8);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
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

- (id)contactsFromContactIdentifiers:(id)identifiers withKeys:(id)keys
{
  v31 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  keysCopy = keys;
  v7 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:identifiersCopy];
  v8 = +[CalContactsProvider defaultProvider];
  v9 = v8;
  v25 = v7;
  if (keysCopy)
  {
    v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:keysCopy];
  }

  else
  {
    calKeys = [MEMORY[0x1E695CD58] CalKeys];
    v10 = [v9 unifiedContactsMatchingPredicate:v7 keysToFetch:calKeys];
  }

  v12 = objc_opt_new();
  v13 = [MEMORY[0x1E695DF70] arrayWithArray:identifiersCopy];
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
        identifier = [v19 identifier];
        [v12 setObject:v19 forKey:identifier];

        identifier2 = [v19 identifier];
        [v13 removeObject:identifier2];
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

- (id)fullNameForFirstContactMatchingEmailAddress:(id)address
{
  v4 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:address];
  v5 = [(CalContactsProvider *)self _fullNameForFirstContactMatchingPredicate:v4];

  return v5;
}

- (id)fullNameForFirstContactMatchingPhoneNumber:(id)number
{
  v4 = MEMORY[0x1E695CF50];
  numberCopy = number;
  v6 = [[v4 alloc] initWithStringValue:numberCopy];

  v7 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v6];
  v8 = [(CalContactsProvider *)self _fullNameForFirstContactMatchingPredicate:v7];

  return v8;
}

- (id)_fullNameForFirstContactMatchingPredicate:(id)predicate
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CD80];
  predicateCopy = predicate;
  v6 = [v4 descriptorForRequiredKeysForStyle:0];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [(CalContactsProvider *)self unifiedContactsMatchingPredicate:predicateCopy keysToFetch:v7];

  if (v8)
  {
    firstObject = [v8 firstObject];
    v10 = [MEMORY[0x1E695CD80] stringFromContact:firstObject style:0];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)contactIdentifierIsMe:(id)me
{
  meCopy = me;
  meContact = [(CalContactsProvider *)self meContact];
  identifier = [meContact identifier];
  v7 = [identifier isEqualToString:meCopy];

  return v7;
}

- (id)myShortDisplayName
{
  meContact = [(CalContactsProvider *)self meContact];
  givenName = [meContact givenName];

  if (![givenName length])
  {
    meContact2 = [(CalContactsProvider *)self meContact];
    nickname = [meContact2 nickname];

    givenName = nickname;
  }

  return givenName;
}

- (id)myNameWithStyle:(int64_t)style
{
  meContact = [(CalContactsProvider *)self meContact];
  if (meContact)
  {
    v6 = MEMORY[0x1E695CD80];
    meContact2 = [(CalContactsProvider *)self meContact];
    v8 = [v6 stringFromContact:meContact2 style:style];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)myAddressForLabel:(id)label
{
  v21 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  meContact = [(CalContactsProvider *)self meContact];
  postalAddresses = [meContact postalAddresses];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = postalAddresses;
  value = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (value)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        label = [v11 label];
        v13 = [label isEqualToString:labelCopy];

        if (v13)
        {
          value = [v11 value];
          goto LABEL_11;
        }
      }

      value = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return value;
}

- (id)myEmailAddress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  unitTestEmails = [(CalContactsProvider *)selfCopy unitTestEmails];

  if (unitTestEmails)
  {
    unitTestEmails2 = [(CalContactsProvider *)selfCopy unitTestEmails];
    firstObject = [unitTestEmails2 firstObject];

    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    meContact = [(CalContactsProvider *)selfCopy meContact];
    emailAddresses = [meContact emailAddresses];
    selfCopy = [emailAddresses firstObject];

    firstObject = [(CalContactsProvider *)selfCopy value];
  }

  return firstObject;
}

- (id)cachedEmailAddressArray
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  unitTestEmails = [(CalContactsProvider *)selfCopy unitTestEmails];

  if (unitTestEmails)
  {
    unitTestEmails2 = [(CalContactsProvider *)selfCopy unitTestEmails];
LABEL_5:
    loadedMyEmailAddresses2 = unitTestEmails2;
    goto LABEL_6;
  }

  loadedMyEmailAddresses = [(CalContactsProvider *)selfCopy loadedMyEmailAddresses];

  if (loadedMyEmailAddresses)
  {
    unitTestEmails2 = [(CalContactsProvider *)selfCopy loadedMyEmailAddresses];
    goto LABEL_5;
  }

  meContact = [(CalContactsProvider *)selfCopy meContact];
  calEmailAddresses = [meContact CalEmailAddresses];

  if (!calEmailAddresses)
  {
    calEmailAddresses = objc_opt_new();
  }

  [(CalContactsProvider *)selfCopy setLoadedMyEmailAddresses:calEmailAddresses];
  loadedMyEmailAddresses2 = [(CalContactsProvider *)selfCopy loadedMyEmailAddresses];

LABEL_6:
  objc_sync_exit(selfCopy);

  return loadedMyEmailAddresses2;
}

- (id)cachedEmailAddress
{
  cachedEmailAddressArray = [(CalContactsProvider *)self cachedEmailAddressArray];
  firstObject = [cachedEmailAddressArray firstObject];

  return firstObject;
}

- (id)myEmailAddresses
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  unitTestEmails = [(CalContactsProvider *)selfCopy unitTestEmails];

  if (unitTestEmails)
  {
    v4 = MEMORY[0x1E695DFD8];
    unitTestEmails2 = [(CalContactsProvider *)selfCopy unitTestEmails];
    v6 = [v4 setWithArray:unitTestEmails2];

    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    meContact = [(CalContactsProvider *)selfCopy meContact];
    selfCopy = [meContact CalEmailAddresses];

    if (selfCopy)
    {
      v8 = [MEMORY[0x1E695DFD8] setWithArray:selfCopy];
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
  cachedEmailAddressArray = [(CalContactsProvider *)self cachedEmailAddressArray];
  v4 = [v2 setWithArray:cachedEmailAddressArray];

  return v4;
}

- (BOOL)matchesOneOfMyEmails:(id)emails
{
  emailsCopy = emails;
  if (emailsCopy)
  {
    cachedEmailAddresses = [(CalContactsProvider *)self cachedEmailAddresses];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__CalContactsProvider_matchesOneOfMyEmails___block_invoke;
    v8[3] = &unk_1E7EC6BD0;
    v9 = emailsCopy;
    v10 = &v11;
    [cachedEmailAddresses enumerateObjectsUsingBlock:v8];
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

- (BOOL)urlMatchesOneOfMyEmails:(id)emails
{
  absoluteString = [emails absoluteString];
  stringRemovingMailto = [absoluteString stringRemovingMailto];

  LOBYTE(self) = [(CalContactsProvider *)self matchesOneOfMyEmails:stringRemovingMailto];
  return self;
}

- (id)myPhoneNumbers
{
  meContact = [(CalContactsProvider *)self meContact];
  calPhoneNumbers = [meContact CalPhoneNumbers];

  if (calPhoneNumbers)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:calPhoneNumbers];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (BOOL)matchesOneOfMyPhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  myPhoneNumbers = [(CalContactsProvider *)self myPhoneNumbers];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__CalContactsProvider_matchesOneOfMyPhoneNumbers___block_invoke;
  v9[3] = &unk_1E7EC6BD0;
  v6 = numbersCopy;
  v10 = v6;
  v11 = &v12;
  [myPhoneNumbers enumerateObjectsUsingBlock:v9];
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

+ (id)reputationForHandle:(id)handle inStore:(id)store
{
  handleCopy = handle;
  storeCopy = store;
  v7 = storeCopy;
  if (!handleCopy)
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
  v8 = [storeCopy reputationForHandle:handleCopy timeout:&v13 error:0.2];
  v9 = v13;
  v10 = +[CalFoundationLogSubsystem junk];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(CalContactsProvider *)handleCopy reputationForHandle:v8 inStore:v10];
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

+ (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)checks inReputationStore:(id)store
{
  v6 = MEMORY[0x1E695CF78];
  storeCopy = store;
  v8 = [v6 handleWithEmailAddress:checks];
  v9 = [self reputationForHandle:v8 inStore:storeCopy];

  v10 = v9 && [v9 score] == 1;
  return v10;
}

+ (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)checks inReputationStore:(id)store
{
  v6 = MEMORY[0x1E695CF78];
  storeCopy = store;
  v8 = [v6 handleWithPhoneNumber:checks];
  v9 = [self reputationForHandle:v8 inStore:storeCopy];

  v10 = v9 && [v9 score] == 1;
  return v10;
}

- (BOOL)shouldPermitOrganizerEmailFromJunkChecks:(id)checks
{
  checksCopy = checks;
  reputationStore = [(CalContactsProvider *)self reputationStore];
  LOBYTE(self) = [objc_opt_class() shouldPermitOrganizerEmailFromJunkChecks:checksCopy inReputationStore:reputationStore];

  return self;
}

- (BOOL)shouldPermitOrganizerPhoneNumberFromJunkChecks:(id)checks
{
  checksCopy = checks;
  reputationStore = [(CalContactsProvider *)self reputationStore];
  LOBYTE(self) = [objc_opt_class() shouldPermitOrganizerPhoneNumberFromJunkChecks:checksCopy inReputationStore:reputationStore];

  return self;
}

+ (BOOL)birthdayIsYearless:(id)yearless
{
  v3 = MEMORY[0x1E695DEE8];
  yearlessCopy = yearless;
  calYearlessDateThreshold = [v3 CalYearlessDateThreshold];
  v6 = [yearlessCopy CalIsBeforeDate:calYearlessDateThreshold];

  return v6;
}

+ (BOOL)isCalendarIslamic:(id)islamic
{
  islamicCopy = islamic;
  if ([islamicCopy isEqualToString:*MEMORY[0x1E695D878]] & 1) != 0 || (objc_msgSend(islamicCopy, "isEqualToString:", *MEMORY[0x1E695D880]) & 1) != 0 || (objc_msgSend(islamicCopy, "isEqualToString:", *MEMORY[0x1E695D888]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [islamicCopy isEqualToString:*MEMORY[0x1E695D890]];
  }

  return v4;
}

+ (id)birthdayStringForContactName:(id)name eventDate:(id)date birthDate:(id)birthDate lunarCalendar:(id)calendar
{
  nameCopy = name;
  dateCopy = date;
  birthDateCopy = birthDate;
  calendarCopy = calendar;
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (!birthDateCopy)
  {
    nameCopy = 0;
    goto LABEL_68;
  }

  if (!dateCopy)
  {
    goto LABEL_15;
  }

  calYearlessDateThreshold = [MEMORY[0x1E695DEE8] CalYearlessDateThreshold];
  v15 = [birthDateCopy isBeforeDate:calYearlessDateThreshold];

  if (v15)
  {
    goto LABEL_15;
  }

  v16 = *MEMORY[0x1E695D850];
  if (calendarCopy)
  {
    v17 = calendarCopy;
  }

  else
  {
    v17 = *MEMORY[0x1E695D850];
  }

  v18 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v17];
  v19 = [dateCopy dateByAddingDays:7 inCalendar:v18];
  v20 = [v18 components:4 fromDate:birthDateCopy toDate:v19 options:0];
  year = [v20 year];

  if (year <= 0)
  {

LABEL_15:
    if ([calendarCopy isEqualToString:*MEMORY[0x1E695D828]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Chinese Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D860]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Hebrew Birthday";
    }

    else if ([CalContactsProvider isCalendarIslamic:calendarCopy])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Hijri Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D818]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Bangla Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D858]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Gujarati Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8A0]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Kannada Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8A8]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Malayalam Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8B0]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Marathi Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8B8]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Odia Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8D0]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Tamil Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8D8]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Telugu Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8E8]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Vikram Samvat Birthday";
    }

    else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D838]])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"%@’s Korean Birthday";
    }

    else
    {
      v30 = [calendarCopy isEqualToString:*MEMORY[0x1E695D8E0]];
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
    nameCopy = [v28 localizedStringWithFormat:v18, nameCopy];
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
  v24 = [MEMORY[0x1E696AD98] numberWithLong:year];
  v25 = [v23 localizedStringFromNumber:v24 numberStyle:v22];

  if ([calendarCopy isEqualToString:*MEMORY[0x1E695D828]])
  {
    v26 = @"birthday_chinese_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D860]])
  {
    v26 = @"birthday_hebrew_count";
  }

  else if ([CalContactsProvider isCalendarIslamic:calendarCopy])
  {
    v26 = @"birthday_islamic_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D818]])
  {
    v26 = @"birthday_bangla_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D858]])
  {
    v26 = @"birthday_gujarati_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8A0]])
  {
    v26 = @"birthday_kannada_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8A8]])
  {
    v26 = @"birthday_malayalam_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8B0]])
  {
    v26 = @"birthday_marathi_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8B8]])
  {
    v26 = @"birthday_odia_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8D0]])
  {
    v26 = @"birthday_tamil_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8D8]])
  {
    v26 = @"birthday_telugu_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8E8]])
  {
    v26 = @"birthday_vikram_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D838]])
  {
    v26 = @"birthday_korean_count";
  }

  else if ([calendarCopy isEqualToString:*MEMORY[0x1E695D8E0]])
  {
    v26 = @"birthday_vietnamese_count";
  }

  else
  {
    v26 = @"birthday_count";
  }

  v32 = MEMORY[0x1E696AEC0];
  v33 = [v13 localizedStringForKey:v26 value:&stru_1F379FFA8 table:0];
  nameCopy = [v32 localizedStringWithFormat:v33, year, nameCopy, v25];

LABEL_67:
LABEL_68:

  return nameCopy;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool soft_MGGetBoolAnswer(CFStringRef)"];
  [currentHandler handleFailureInFunction:v1 file:@"CalContactsProvider.m" lineNumber:39 description:{@"%s", dlerror()}];

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