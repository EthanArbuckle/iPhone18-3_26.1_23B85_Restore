@interface ICNAIdentityManager
+ (id)newSalt;
+ (id)saltedID:(id)d withSalt:(id)salt;
+ (id)sharedManager;
- (ICNAIdentityManager)init;
- (NSString)identityTimestampYYYYMM;
- (NSString)privateUserID;
- (NSString)userID;
- (id)saltedID:(id)d forClass:(Class)class;
- (id)todayTimestampYYYYMM:(id)m;
- (unint64_t)startMonth;
- (unint64_t)startYear;
- (void)_keyValueStoreDidChangeExternally:(id)externally;
- (void)debug_clearIdentifiers;
- (void)debug_dumpIdentifiers;
- (void)debug_forceRegenerateIdentifiers;
- (void)loadIdentifiersAndRegenerateIfNecessary;
- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:(BOOL)identity;
@end

@implementation ICNAIdentityManager

+ (id)sharedManager
{
  if (sharedManager_s_onceToken != -1)
  {
    +[ICNAIdentityManager sharedManager];
  }

  v3 = sharedManager_s_instance;

  return v3;
}

uint64_t __36__ICNAIdentityManager_sharedManager__block_invoke()
{
  sharedManager_s_instance = objc_alloc_init(ICNAIdentityManager);

  return MEMORY[0x2821F96F8]();
}

- (ICNAIdentityManager)init
{
  v10.receiver = self;
  v10.super_class = ICNAIdentityManager;
  v2 = [(ICNAIdentityManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.notes.analytics.saltManager", v3);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;

    v6 = v2->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__ICNAIdentityManager_init__block_invoke;
    block[3] = &unk_2799AF130;
    v9 = v2;
    dispatch_sync(v6, block);
  }

  return v2;
}

uint64_t __27__ICNAIdentityManager_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCAD80]) _initWithStoreIdentifier:@"com.apple.notes.analytics" usingEndToEndEncryption:1];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__keyValueStoreDidChangeExternally_ name:*MEMORY[0x277CCA7C0] object:*(*(a1 + 32) + 72)];

  v6 = *(a1 + 32);

  return [v6 loadIdentifiersFromKVSAndForceRegenerateIdentity:0];
}

- (void)loadIdentifiersAndRegenerateIfNecessary
{
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ICNAIdentityManager_loadIdentifiersAndRegenerateIfNecessary__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

uint64_t __62__ICNAIdentityManager_loadIdentifiersAndRegenerateIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) encryptedKVStore];
  [v2 synchronize];

  v3 = *(a1 + 32);

  return [v3 loadIdentifiersFromKVSAndForceRegenerateIdentity:0];
}

- (NSString)userID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ICNAIdentityManager_userID__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSString)privateUserID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ICNAIdentityManager_privateUserID__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)todayTimestampYYYYMM:(id)m
{
  mCopy = m;
  if (!mCopy)
  {
    mCopy = [MEMORY[0x277CBEAA8] date];
  }

  v4 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setCalendar:v4];
  [v5 setDateFormat:@"yyyyMM"];
  v6 = [v5 stringFromDate:mCopy];

  return v6;
}

- (NSString)identityTimestampYYYYMM
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ICNAIdentityManager_identityTimestampYYYYMM__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unint64_t)startYear
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ICNAIdentityManager_startYear__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unint64_t)startMonth
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ICNAIdentityManager_startMonth__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)saltedID:(id)d forClass:(Class)class
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(ICNAIdentityManager *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ICNAIdentityManager_saltedID_forClass___block_invoke;
  block[3] = &unk_2799AF6D8;
  block[4] = self;
  block[5] = &v12;
  block[6] = class;
  dispatch_sync(accessQueue2, block);

  v9 = [objc_opt_class() saltedID:dCopy withSalt:v13[5]];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __41__ICNAIdentityManager_saltedID_forClass___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) salts];
  v2 = NSStringFromClass(*(a1 + 48));
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)debug_forceRegenerateIdentifiers
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)debug_clearIdentifiers
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __45__ICNAIdentityManager_debug_clearIdentifiers__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUserID:0];
  [*(a1 + 32) setPrivateUserID:0];
  [*(a1 + 32) setSalts:0];
  [*(a1 + 32) setIdentityTimestampYYYYMM:0];
  [*(a1 + 32) setStartYear:0];
  [*(a1 + 32) setStartMonth:0];
  v2 = [*(a1 + 32) encryptedKVStore];
  [v2 removeObjectForKey:@"identityManager"];

  v3 = [*(a1 + 32) encryptedKVStore];
  [v3 synchronize];

  v4 = *(a1 + 32);

  return [v4 setCurrentDateForTesting:0];
}

- (void)debug_dumpIdentifiers
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    userID = [(ICNAIdentityManager *)self userID];
    v6 = userID;
    if (userID)
    {
      v7 = userID;
    }

    else
    {
      v7 = @"nil";
    }

    v21[0] = v7;
    v20[1] = @"privateUserID";
    privateUserID = [(ICNAIdentityManager *)self privateUserID];
    v9 = privateUserID;
    if (privateUserID)
    {
      v10 = privateUserID;
    }

    else
    {
      v10 = @"nil";
    }

    v21[1] = v10;
    v20[2] = @"salts";
    salts = [(ICNAIdentityManager *)self salts];
    v12 = salts;
    if (salts)
    {
      v13 = salts;
    }

    else
    {
      v13 = @"nil";
    }

    v21[2] = v13;
    v20[3] = @"identityTimestampYYYYMM";
    identityTimestampYYYYMM = [(ICNAIdentityManager *)self identityTimestampYYYYMM];
    v15 = identityTimestampYYYYMM;
    if (identityTimestampYYYYMM)
    {
      v16 = identityTimestampYYYYMM;
    }

    else
    {
      v16 = @"nil";
    }

    v21[3] = v16;
    v20[4] = @"startYear";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICNAIdentityManager startYear](self, "startYear")}];
    v21[4] = v17;
    v20[5] = @"startMonth";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICNAIdentityManager startMonth](self, "startMonth")}];
    v21[5] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
    *buf = 138412290;
    v23 = v19;
    _os_log_debug_impl(&dword_25C6BF000, v3, OS_LOG_TYPE_DEBUG, "Identifiers: %@", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:(BOOL)identity
{
  accessQueue = [(ICNAIdentityManager *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (!self->_encryptedKVStore)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((_encryptedKVStore) != nil)" functionName:"-[ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "_encryptedKVStore"}];
  }

  currentDateForTesting = [(ICNAIdentityManager *)self currentDateForTesting];
  v7 = currentDateForTesting;
  if (currentDateForTesting)
  {
    date = currentDateForTesting;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v9 = date;

  v10 = [(NSUbiquitousKeyValueStore *)self->_encryptedKVStore dictionaryForKey:@"identityManager"];
  v11 = [v10 mutableCopy];

  v12 = v11 == 0;
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v13 = [v11 objectForKey:@"startYear"];
  self->_startYear = [v13 unsignedIntegerValue];

  v14 = [v11 objectForKey:@"startMonth"];
  self->_startMonth = [v14 unsignedIntegerValue];

  if (!self->_startMonth || !self->_startYear)
  {
    v15 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:];
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v17 = [currentCalendar components:12 fromDate:v9];

    self->_startYear = [v17 year];
    self->_startMonth = [v17 month];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_startYear];
    [v11 setObject:v18 forKey:@"startYear"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_startMonth];
    [v11 setObject:v19 forKey:@"startMonth"];

    v12 = 1;
  }

  v20 = [(ICNAIdentityManager *)self todayTimestampYYYYMM:v9];
  v21 = [v11 objectForKey:@"userID"];
  userID = self->_userID;
  self->_userID = v21;

  v23 = [v11 objectForKey:@"privateUserID"];
  privateUserID = self->_privateUserID;
  self->_privateUserID = v23;

  v25 = [v11 objectForKey:@"salts"];
  p_salts = &self->_salts;
  salts = self->_salts;
  self->_salts = v25;

  v28 = [v11 objectForKey:@"identityTimestampYYYYMM"];
  p_identityTimestampYYYYMM = &self->_identityTimestampYYYYMM;
  identityTimestampYYYYMM = self->_identityTimestampYYYYMM;
  self->_identityTimestampYYYYMM = v28;

  if (![(NSString *)self->_identityTimestampYYYYMM isEqualToString:v20]|| identity || !self->_userID || !self->_privateUserID || (v31 = *p_salts) == 0)
  {
    self->_identifierResetOccurred = 1;
    v41 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:];
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v44 = self->_userID;
    self->_userID = uUIDString;

    [v11 setObject:self->_userID forKey:@"userID"];
    v45 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:];
    }

    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v48 = self->_privateUserID;
    self->_privateUserID = uUIDString2;

    [v11 setObject:self->_privateUserID forKey:@"privateUserID"];
    v49 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager loadIdentifiersFromKVSAndForceRegenerateIdentity:];
    }

    v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
    newSalt = [objc_opt_class() newSalt];
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    [v50 setObject:newSalt forKeyedSubscript:v53];

    newSalt2 = [objc_opt_class() newSalt];
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    [v50 setObject:newSalt2 forKeyedSubscript:v56];

    newSalt3 = [objc_opt_class() newSalt];
    v58 = objc_opt_class();
    v59 = NSStringFromClass(v58);
    [v50 setObject:newSalt3 forKeyedSubscript:v59];

    newSalt4 = [objc_opt_class() newSalt];
    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
    [v50 setObject:newSalt4 forKeyedSubscript:v62];

    newSalt5 = [objc_opt_class() newSalt];
    v64 = objc_opt_class();
    v65 = NSStringFromClass(v64);
    [v50 setObject:newSalt5 forKeyedSubscript:v65];

    newSalt6 = [objc_opt_class() newSalt];
    v67 = objc_opt_class();
    v68 = NSStringFromClass(v67);
    [v50 setObject:newSalt6 forKeyedSubscript:v68];

    newSalt7 = [objc_opt_class() newSalt];
    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    [v50 setObject:newSalt7 forKeyedSubscript:v71];

    newSalt8 = [objc_opt_class() newSalt];
    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    [v50 setObject:newSalt8 forKeyedSubscript:v74];

    newSalt9 = [objc_opt_class() newSalt];
    v76 = objc_opt_class();
    v77 = NSStringFromClass(v76);
    [v50 setObject:newSalt9 forKeyedSubscript:v77];

    newSalt10 = [objc_opt_class() newSalt];
    v79 = objc_opt_class();
    v80 = NSStringFromClass(v79);
    [v50 setObject:newSalt10 forKeyedSubscript:v80];

    newSalt11 = [objc_opt_class() newSalt];
    v82 = objc_opt_class();
    v83 = NSStringFromClass(v82);
    [v50 setObject:newSalt11 forKeyedSubscript:v83];

    newSalt12 = [objc_opt_class() newSalt];
    v85 = objc_opt_class();
    v86 = NSStringFromClass(v85);
    [v50 setObject:newSalt12 forKeyedSubscript:v86];

    newSalt13 = [objc_opt_class() newSalt];
    v88 = objc_opt_class();
    v89 = NSStringFromClass(v88);
    [v50 setObject:newSalt13 forKeyedSubscript:v89];

    newSalt14 = [objc_opt_class() newSalt];
    v91 = objc_opt_class();
    v92 = NSStringFromClass(v91);
    [v50 setObject:newSalt14 forKeyedSubscript:v92];

    v93 = [v50 copy];
    v94 = self->_salts;
    self->_salts = v93;

    [v11 setObject:self->_salts forKey:@"salts"];
    v95 = v20;
    v96 = self->_identityTimestampYYYYMM;
    self->_identityTimestampYYYYMM = v95;
    v97 = @"identityTimestampYYYYMM";
    p_salts = &self->_identityTimestampYYYYMM;
    goto LABEL_28;
  }

  v130 = v9;
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = [v31 objectForKeyedSubscript:v33];
  v35 = 0x2799AE000uLL;
  if (v34)
  {
    v36 = v34;
    v37 = *p_salts;
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = [v37 objectForKeyedSubscript:v39];

    v35 = 0x2799AE000;
    if (v40)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v101 = [(NSDictionary *)self->_salts mutableCopy];
  newSalt15 = [objc_opt_class() newSalt];
  v103 = objc_opt_class();
  v104 = NSStringFromClass(v103);
  [v101 setObject:newSalt15 forKeyedSubscript:v104];

  newSalt16 = [objc_opt_class() newSalt];
  v106 = *(v35 + 2408);
  v107 = objc_opt_class();
  v108 = NSStringFromClass(v107);
  [v101 setObject:newSalt16 forKeyedSubscript:v108];

  v109 = [v101 copy];
  v110 = self->_salts;
  self->_salts = v109;

  [v11 setObject:self->_salts forKey:@"salts"];
  v12 = 1;
LABEL_35:
  v111 = *p_salts;
  v112 = objc_opt_class();
  v113 = NSStringFromClass(v112);
  v114 = [v111 objectForKeyedSubscript:v113];

  if (!v114)
  {
    v115 = [(NSDictionary *)self->_salts mutableCopy];
    newSalt17 = [objc_opt_class() newSalt];
    v117 = objc_opt_class();
    v118 = NSStringFromClass(v117);
    [v115 setObject:newSalt17 forKeyedSubscript:v118];

    v119 = [v115 copy];
    v120 = self->_salts;
    self->_salts = v119;

    [v11 setObject:self->_salts forKey:@"salts"];
    v12 = 1;
  }

  v121 = *p_salts;
  v122 = objc_opt_class();
  v123 = NSStringFromClass(v122);
  v124 = [v121 objectForKeyedSubscript:v123];

  v9 = v130;
  if (!v124)
  {
    v50 = [(NSDictionary *)self->_salts mutableCopy];
    newSalt18 = [objc_opt_class() newSalt];
    v127 = objc_opt_class();
    v128 = NSStringFromClass(v127);
    [v50 setObject:newSalt18 forKeyedSubscript:v128];

    v129 = [v50 copy];
    v96 = self->_salts;
    self->_salts = v129;
    v97 = @"salts";
LABEL_28:

    [v11 setObject:*p_salts forKey:v97];
    goto LABEL_29;
  }

  if (!v12)
  {
    v125 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
    {
      [(ICNAIdentityManager *)v11 loadIdentifiersFromKVSAndForceRegenerateIdentity:?];
    }

    goto LABEL_32;
  }

LABEL_29:
  v98 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
  {
    [(ICNAIdentityManager *)v11 loadIdentifiersFromKVSAndForceRegenerateIdentity:?];
  }

  encryptedKVStore = self->_encryptedKVStore;
  v100 = [v11 copy];
  [(NSUbiquitousKeyValueStore *)encryptedKVStore setDictionary:v100 forKey:@"identityManager"];

  [(NSUbiquitousKeyValueStore *)self->_encryptedKVStore synchronize];
LABEL_32:
}

- (void)_keyValueStoreDidChangeExternally:(id)externally
{
  externallyCopy = externally;
  object = [externallyCopy object];
  encryptedKVStore = self->_encryptedKVStore;

  v7 = os_log_create("com.apple.notes", "Analytics");
  v8 = v7;
  if (object != encryptedKVStore)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICNAIdentityManager _keyValueStoreDidChangeExternally:];
    }

    goto LABEL_16;
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ICNAIdentityManager _keyValueStoreDidChangeExternally:externallyCopy];
  }

  userInfo = [externallyCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7B0]];
  integerValue = [v11 integerValue];

  userInfo2 = [externallyCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7B8]];

  if (integerValue < 2)
  {
    if (![v8 containsObject:@"identityManager"])
    {
      goto LABEL_16;
    }

    accessQueue = [(ICNAIdentityManager *)self accessQueue];
    v15 = accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke;
    block[3] = &unk_2799AF130;
    block[4] = self;
    v16 = block;
    goto LABEL_12;
  }

  if (integerValue != 2)
  {
    if (integerValue != 3)
    {
      goto LABEL_16;
    }

    accessQueue = [(ICNAIdentityManager *)self accessQueue];
    v15 = accessQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_72;
    v18[3] = &unk_2799AF130;
    v18[4] = self;
    v16 = v18;
LABEL_12:
    dispatch_async(accessQueue, v16);

    goto LABEL_16;
  }

  v17 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [ICNAIdentityManager _keyValueStoreDidChangeExternally:];
  }

LABEL_16:
}

uint64_t __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_cold_1();
  }

  return [*(a1 + 32) loadIdentifiersFromKVSAndForceRegenerateIdentity:0];
}

uint64_t __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_72(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_72_cold_1();
  }

  return [*(a1 + 32) loadIdentifiersFromKVSAndForceRegenerateIdentity:1];
}

+ (id)saltedID:(id)d withSalt:(id)salt
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (salt)
  {
    v6 = [salt dataUsingEncoding:4];
    v7 = v6;
    v8 = 0;
    if (dCopy && v6)
    {
      memset(&v14, 0, sizeof(v14));
      CCHmacInit(&v14, 2u, [v6 bytes:0], [v6 length]);
      uTF8String = [dCopy UTF8String];
      v10 = strlen(uTF8String);
      CCHmacUpdate(&v14, uTF8String, v10);
      memset(macOut, 0, sizeof(macOut));
      CCHmacFinal(&v14, macOut);
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:macOut length:32];
      v8 = [v11 base64EncodedStringWithOptions:0];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICNAIdentityManager saltedID:dCopy withSalt:v7];
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)newSalt
{
  v8 = *MEMORY[0x277D85DE8];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x200uLL, bytes))
  {
    v2 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:512];
    v4 = [v3 base64EncodedDataWithOptions:0];
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:(void *)a1 .cold.2(void *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 ic_md5];
  v4 = *a2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadIdentifiersFromKVSAndForceRegenerateIdentity:(void *)a1 .cold.6(void *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 ic_md5];
  v4 = *a2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_keyValueStoreDidChangeExternally:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_keyValueStoreDidChangeExternally:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 userInfo];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__ICNAIdentityManager__keyValueStoreDidChangeExternally___block_invoke_72_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)saltedID:(void *)a1 withSalt:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 length];
  _os_log_error_impl(&dword_25C6BF000, a2, OS_LOG_TYPE_ERROR, "Salt is nil when trying to salt identifier length=%lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end