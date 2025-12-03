@interface CKDMetadataCache
+ (id)sharedCache;
- (CKDMetadataCache)initWithCacheDir:(id)dir;
- (id)appContainerAccountMetadataForAppContainerAccountTuple:(id)tuple;
- (id)applicationMetadataForApplicationID:(id)d;
- (id)cachedDSIDForAccountID:(id)d;
- (id)containerServerInfoForContainerID:(id)d accountID:(id)iD;
- (id)containerServerInfos;
- (id)dateOfLastTokenUpdate;
- (id)globalConfiguration;
- (id)inlock_applicationMetadataForApplicationID:(id)d;
- (id)inlock_containerServerInfoForContainerID:(id)d accountID:(id)iD;
- (id)knownAppContainerAccountTuples;
- (id)knownAppContainerAccountTuplesForAccountID:(id)d;
- (id)knownApplicationIDs;
- (id)knownContainerizedApplicationIDs;
- (id)publicKeyOfType:(id)type withIdentifier:(id)identifier;
- (id)pushTokenForAppContainerAccountTuple:(id)tuple filterOldTokens:(BOOL)tokens;
- (void)_enumerateContainerServerInfo:(id)info bindings:(id)bindings usingBlock:(id)block;
- (void)enumerateKnownAppContainerAccountTuplesForAccountID:(id)d usingBlock:(id)block;
- (void)enumerateKnownAppContainerAccountTuplesUsingBlock:(id)block;
- (void)expungeAllData;
- (void)expungeDataForAccountID:(id)d;
- (void)expungeOldData;
- (void)expungeStaleAccountIDs;
- (void)inlock_expungeDataForAccountID:(id)d;
- (void)removeContainerID:(id)d;
- (void)removeKnownApplicationID:(id)d;
- (void)setAppContainerAccountMetadata:(id)metadata forAppContainerAccountTuple:(id)tuple;
- (void)setApplicationMetadata:(id)metadata forApplicationID:(id)d;
- (void)setCachedDSID:(id)d forAccountID:(id)iD;
- (void)setContainerServerInfo:(id)info forContainerID:(id)d accountID:(id)iD;
- (void)setDateOfLastTokenUpdate:(id)update;
- (void)setGlobalConfiguration:(id)configuration;
- (void)setPublicKey:(id)key ofType:(id)type withIdentifier:(id)identifier;
- (void)setPushToken:(id)token forAppContainerAccountTuple:(id)tuple;
- (void)willCreateDatabase;
@end

@implementation CKDMetadataCache

+ (id)sharedCache
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKDMetadataCache.m", 316, @"Use -initWithDeviceContext:");

  return 0;
}

- (CKDMetadataCache)initWithCacheDir:(id)dir
{
  v12.receiver = self;
  v12.super_class = CKDMetadataCache;
  v3 = [(CKDSQLiteCache *)&v12 initWithCacheDir:dir];
  if (v3)
  {
    v4 = objc_alloc_init(CKDMetadataCacheMigrator);
    objc_msgSend_setDelegate_(v3, v5, v4);

    objc_msgSend_setUserVersion_(v3, v6, 3761583306);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.cloudkit.metadatacache", v7);
    cacheQueue = v3->_cacheQueue;
    v3->_cacheQueue = v8;

    objc_msgSend_setObjectClassPrefix_(v3, v10, @"CKD");
  }

  return v3;
}

- (void)expungeAllData
{
  v4 = objc_msgSend_cacheQueue(self, a2, v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251545A0;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)expungeOldData
{
  v4 = objc_msgSend_cacheQueue(self, a2, v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515489C;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)inlock_expungeDataForAccountID:(id)d
{
  dCopy = d;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_225154A54;
  v8[3] = &unk_2785468F8;
  v9 = dCopy;
  v5 = dCopy;
  v7 = objc_msgSend_performDatabaseOperation_withErrorHandler_(self, v6, v8, &unk_28385C9C0);
}

- (void)expungeDataForAccountID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225154CA4;
  v9[3] = &unk_278545898;
  v10 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  dispatch_sync(v7, v9);
}

- (void)expungeStaleAccountIDs
{
  v4 = objc_msgSend_cacheQueue(self, a2, v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225154E0C;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (id)pushTokenForAppContainerAccountTuple:(id)tuple filterOldTokens:(BOOL)tokens
{
  tupleCopy = tuple;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_225073F20;
  v22 = sub_22507351C;
  v23 = 0;
  v9 = objc_msgSend_cacheQueue(self, v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251552E4;
  v13[3] = &unk_278546940;
  tokensCopy = tokens;
  v14 = tupleCopy;
  selfCopy = self;
  v16 = &v18;
  v10 = tupleCopy;
  dispatch_sync(v9, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)setPushToken:(id)token forAppContainerAccountTuple:(id)tuple
{
  tokenCopy = token;
  tupleCopy = tuple;
  v10 = objc_msgSend_cacheQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251556DC;
  block[3] = &unk_278546990;
  v14 = tupleCopy;
  selfCopy = self;
  v16 = tokenCopy;
  v11 = tokenCopy;
  v12 = tupleCopy;
  dispatch_sync(v10, block);
}

- (void)enumerateKnownAppContainerAccountTuplesForAccountID:(id)d usingBlock:(id)block
{
  blockCopy = block;
  v8 = objc_msgSend_knownAppContainerAccountTuplesForAccountID_(self, v7, d);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_225155B4C;
  v11[3] = &unk_2785469E0;
  v12 = blockCopy;
  v9 = blockCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(v8, v10, v11);
}

- (id)knownAppContainerAccountTuplesForAccountID:(id)d
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_225073F20;
  v18 = sub_22507351C;
  v19 = 0;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225155D90;
  block[3] = &unk_278546A08;
  block[4] = self;
  v12 = dCopy;
  v13 = &v14;
  v8 = dCopy;
  dispatch_sync(v7, block);

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)enumerateKnownAppContainerAccountTuplesUsingBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_knownAppContainerAccountTuples(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225156148;
  v10[3] = &unk_2785469E0;
  v11 = blockCopy;
  v8 = blockCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v9, v10);
}

- (id)knownAppContainerAccountTuples
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_225073F20;
  v12 = sub_22507351C;
  v13 = 0;
  v4 = objc_msgSend_cacheQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225156364;
  v7[3] = &unk_278545678;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)appContainerAccountMetadataForAppContainerAccountTuple:(id)tuple
{
  tupleCopy = tuple;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_225073F20;
  v19 = sub_22507351C;
  v20 = 0;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225156724;
  block[3] = &unk_278546A08;
  v12 = tupleCopy;
  selfCopy = self;
  v14 = &v15;
  v8 = tupleCopy;
  dispatch_sync(v7, block);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)setAppContainerAccountMetadata:(id)metadata forAppContainerAccountTuple:(id)tuple
{
  metadataCopy = metadata;
  tupleCopy = tuple;
  v10 = objc_msgSend_cacheQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225156AC4;
  block[3] = &unk_278546990;
  block[4] = self;
  v14 = tupleCopy;
  v15 = metadataCopy;
  v11 = metadataCopy;
  v12 = tupleCopy;
  dispatch_sync(v10, block);
}

- (id)dateOfLastTokenUpdate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_225073F20;
  v12 = sub_22507351C;
  v13 = 0;
  v4 = objc_msgSend_cacheQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225156F64;
  v7[3] = &unk_278546448;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setDateOfLastTokenUpdate:(id)update
{
  updateCopy = update;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225157078;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = updateCopy;
  v8 = updateCopy;
  dispatch_sync(v7, v9);
}

- (id)inlock_applicationMetadataForApplicationID:(id)d
{
  v62[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v61 = @"applicationID";
  v62[0] = dCopy;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, v62, &v61, 1);
  v8 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v7, v6);
  v60[0] = @"adopterProcessType";
  v60[1] = @"applicationContainerPath";
  v60[2] = @"clientSDKVersion";
  v60[3] = @"containingBundleID";
  v60[4] = @"entitlements";
  v60[5] = @"isMainBundleAppleExecutable";
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v60, 6);
  v13 = objc_msgSend_v1(v8, v11, v12);
  v16 = objc_msgSend_v2(v8, v14, v15);
  v18 = objc_msgSend_select_from_where_bindings_(self, v17, v10, @"AppBundle", v13, v16);

  if (objc_msgSend_count(v18, v19, v20))
  {
    v22 = objc_msgSend_objectAtIndexedSubscript_(v18, v21, 0);
    v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"adopterProcessType");
    v59 = objc_msgSend_integerValue(v24, v25, v26);

    v28 = objc_msgSend_objectForKeyedSubscript_(v22, v27, @"applicationContainerPath");
    v58 = objc_msgSend_CKNilIfLengthZero(v28, v29, v30);

    v32 = objc_msgSend_objectForKeyedSubscript_(v22, v31, @"clientSDKVersion");
    v57 = objc_msgSend_integerValue(v32, v33, v34);

    v36 = objc_msgSend_objectForKeyedSubscript_(v22, v35, @"isMainBundleAppleExecutable");
    v39 = objc_msgSend_BOOLValue(v36, v37, v38);

    v41 = objc_msgSend_objectForKeyedSubscript_(v22, v40, @"containingBundleID");
    v44 = objc_msgSend_CKNilIfLengthZero(v41, v42, v43);

    v45 = objc_alloc(MEMORY[0x277CBC350]);
    objc_msgSend_objectForKeyedSubscript_(v22, v46, @"entitlements");
    v48 = v47 = dCopy;
    v50 = v6;
    v51 = objc_msgSend_initWithSqliteRepresentation_(v45, v49, v48);

    dCopy = v47;
    v52 = [CKDApplicationMetadata alloc];
    isClientMainBundleAppleExecutable = objc_msgSend_initWithAdopterProcessType_containingBundleID_applicationContainerPath_entitlements_clientSDKVersion_isClientMainBundleAppleExecutable_(v52, v53, v59, v44, v58, v51, v57, v39);

    v6 = v50;
  }

  else
  {
    isClientMainBundleAppleExecutable = objc_opt_new();
  }

  v55 = *MEMORY[0x277D85DE8];

  return isClientMainBundleAppleExecutable;
}

- (id)applicationMetadataForApplicationID:(id)d
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_225073F20;
  v18 = sub_22507351C;
  v19 = 0;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251574C8;
  block[3] = &unk_278546420;
  v12 = dCopy;
  v13 = &v14;
  block[4] = self;
  v8 = dCopy;
  dispatch_sync(v7, block);

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)setApplicationMetadata:(id)metadata forApplicationID:(id)d
{
  metadataCopy = metadata;
  dCopy = d;
  v10 = objc_msgSend_cacheQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251575F0;
  block[3] = &unk_278546990;
  block[4] = self;
  v14 = dCopy;
  v15 = metadataCopy;
  v11 = metadataCopy;
  v12 = dCopy;
  dispatch_sync(v10, block);
}

- (id)knownApplicationIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_225073F20;
  v12 = sub_22507351C;
  v13 = 0;
  v4 = objc_msgSend_cacheQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225157D10;
  v7[3] = &unk_278545678;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)knownContainerizedApplicationIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_225073F20;
  v12 = sub_22507351C;
  v13 = 0;
  v4 = objc_msgSend_cacheQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225157F84;
  v7[3] = &unk_278545678;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)removeKnownApplicationID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2251581C4;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_sync(v7, v9);
}

- (id)globalConfiguration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_225073F20;
  v12 = sub_22507351C;
  v13 = 0;
  v4 = objc_msgSend_cacheQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22515846C;
  v7[3] = &unk_278545678;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setGlobalConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_2251585C4;
  v20 = &unk_278545898;
  selfCopy = self;
  v22 = configurationCopy;
  v8 = configurationCopy;
  dispatch_sync(v7, &v17);

  v11 = objc_msgSend_deviceContext(self, v9, v10, v17, v18, v19, v20, selfCopy);
  v14 = objc_msgSend_tokenRegistrationScheduler(v11, v12, v13);
  objc_msgSend_tokenRefreshChanged(v14, v15, v16);
}

- (id)publicKeyOfType:(id)type withIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (!typeCopy || !identifierCopy)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CKDMetadataCache.m", 789, @"Must specify both key type and key identifier");
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_225073F20;
  v29 = sub_22507351C;
  v30 = 0;
  v12 = objc_msgSend_cacheQueue(self, v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225158894;
  block[3] = &unk_278546A50;
  v20 = typeCopy;
  v21 = v11;
  v23 = &v25;
  v24 = a2;
  selfCopy = self;
  v13 = v11;
  v14 = typeCopy;
  dispatch_sync(v12, block);

  v15 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v15;
}

- (void)setPublicKey:(id)key ofType:(id)type withIdentifier:(id)identifier
{
  keyCopy = key;
  typeCopy = type;
  identifierCopy = identifier;
  v14 = identifierCopy;
  if (!typeCopy || !identifierCopy)
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CKDMetadataCache.m", 815, @"Must specify both key type and key identifier");
  }

  v15 = objc_msgSend_cacheQueue(self, v12, v13);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225158C98;
  v21[3] = &unk_2785463D0;
  v21[4] = self;
  v22 = keyCopy;
  v23 = typeCopy;
  v24 = v14;
  v16 = v14;
  v17 = typeCopy;
  v18 = keyCopy;
  dispatch_sync(v15, v21);
}

- (id)containerServerInfos
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_2251590E0;
  v16 = &unk_278545898;
  selfCopy = self;
  v18 = v4;
  v8 = v4;
  dispatch_sync(v7, &v13);

  v11 = objc_msgSend_copy(v8, v9, v10, v13, v14, v15, v16, selfCopy);

  return v11;
}

- (id)inlock_containerServerInfoForContainerID:(id)d accountID:(id)iD
{
  v32[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v9 = iDCopy;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_225073F20;
  v29 = sub_22507351C;
  v30 = 0;
  v31[0] = @"containerID";
  v31[1] = @"accountID";
  v10 = &stru_28385ED00;
  if (iDCopy)
  {
    v10 = iDCopy;
  }

  v32[0] = dCopy;
  v32[1] = v10;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v32, v31, 2);
  v13 = objc_msgSend_equalityClauseAndBindingsForDict_(MEMORY[0x277CBC648], v12, v11);
  v16 = objc_msgSend_v1(v13, v14, v15);
  v19 = objc_msgSend_v2(v13, v17, v18);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_225159388;
  v24[3] = &unk_278546AA0;
  v24[4] = &v25;
  objc_msgSend__enumerateContainerServerInfo_bindings_usingBlock_(self, v20, v16, v19, v24);

  v21 = v26[5];
  _Block_object_dispose(&v25, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_enumerateContainerServerInfo:(id)info bindings:(id)bindings usingBlock:(id)block
{
  v21[10] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v21[0] = @"containerID";
  v21[1] = @"accountID";
  v21[2] = @"publicCloudDBURL";
  v21[3] = @"publicShareServiceURL";
  v21[4] = @"publicDeviceServiceURL";
  v21[5] = @"publicCodeServiceURL";
  v21[6] = @"publicMetricsServiceURL";
  v21[7] = @"scopedUserID";
  v21[8] = @"orgAdminUserID";
  v21[9] = @"environment";
  v9 = MEMORY[0x277CBEA60];
  bindingsCopy = bindings;
  infoCopy = info;
  v13 = objc_msgSend_arrayWithObjects_count_(v9, v12, v21, 10);
  v15 = objc_msgSend_select_from_where_bindings_(self, v14, v13, @"ContainerServerInfo", infoCopy, bindingsCopy);

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_225159588;
  v19[3] = &unk_278546AC8;
  v20 = blockCopy;
  v16 = blockCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(v15, v17, v19);

  v18 = *MEMORY[0x277D85DE8];
}

- (id)containerServerInfoForContainerID:(id)d accountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_225073F20;
  v26 = sub_22507351C;
  v27 = 0;
  if (!dCopy)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CKDMetadataCache.m", 916, @"Unexpectedly-nil containerID");
  }

  v11 = objc_msgSend_cacheQueue(self, v8, v9);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_225159A4C;
  v18[3] = &unk_278546AF0;
  v18[4] = self;
  v19 = dCopy;
  v20 = iDCopy;
  v21 = &v22;
  v12 = iDCopy;
  v13 = dCopy;
  dispatch_sync(v11, v18);

  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

- (void)setContainerServerInfo:(id)info forContainerID:(id)d accountID:(id)iD
{
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CKDMetadataCache.m", 926, @"Unexpectedly-nil containerID");
  }

  v14 = objc_msgSend_cacheQueue(self, v11, v12);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_225159BE0;
  v20[3] = &unk_2785463D0;
  v20[4] = self;
  v21 = infoCopy;
  v22 = dCopy;
  v23 = iDCopy;
  v15 = iDCopy;
  v16 = dCopy;
  v17 = infoCopy;
  dispatch_sync(v14, v20);
}

- (void)removeContainerID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22515A348;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_sync(v7, v9);
}

- (void)setCachedDSID:(id)d forAccountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v10 = objc_msgSend_cacheQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515A62C;
  block[3] = &unk_278546990;
  block[4] = self;
  v14 = dCopy;
  v15 = iDCopy;
  v11 = iDCopy;
  v12 = dCopy;
  dispatch_sync(v10, block);
}

- (id)cachedDSIDForAccountID:(id)d
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_225073F20;
  v19 = sub_22507351C;
  v20 = 0;
  if (dCopy)
  {
    v7 = objc_msgSend_cacheQueue(self, v4, v5);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22515A98C;
    block[3] = &unk_278546A08;
    v12 = dCopy;
    selfCopy = self;
    v14 = &v15;
    dispatch_sync(v7, block);

    v8 = v16[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)willCreateDatabase
{
  v12 = objc_msgSend_currentProcess(CKDDaemonProcess, a2, v2);
  if (!objc_msgSend_processType(v12, v3, v4) && objc_msgSend_isSystemInstalledBinary(v12, v5, v6))
  {
    v9 = objc_msgSend_sharedClient(CKDPDSClient, v7, v8);
    objc_msgSend_unregisterAllTokens(v9, v10, v11);
  }
}

@end