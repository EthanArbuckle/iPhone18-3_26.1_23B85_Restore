@interface CKDOperationInfoCache
+ (id)sharedCache;
- (CKDOperationInfoCache)initWithCacheDir:(id)dir;
- (id)_locked_operationInfoForID:(id)d;
- (id)allOutstandingOperationIDsForAppContainerAccountTuple:(id)tuple;
- (id)operationInfoMetadataForOperationWithID:(id)d;
- (id)outstandingOperationInfosForIDs:(id)ds;
- (id)resumableOperationInfosByAppContainerAccountTuplesWithProgressPurged:(BOOL)purged;
- (void)_expungeOperationInfoForDeletedAccountID:(id)d;
- (void)_lockedArchiveCallback:(id)callback forOperationID:(id)d;
- (void)_lockedSetOperationInfo:(id)info forOperationID:(id)d appContainerAccountTuple:(id)tuple;
- (void)_locked_enumerateCallbacksForOperationWithID:(id)d usingBlock:(id)block;
- (void)archiveCallback:(id)callback forOperationID:(id)d;
- (void)enumerateCallbacksForOperationWithID:(id)d usingBlock:(id)block;
- (void)expungeOperationInfoForDeletedAccountID:(id)d;
- (void)registerAttemptForOperationWithID:(id)d;
- (void)registerCacheEviction;
- (void)registerDelegate:(id)delegate forOperationWithID:(id)d;
- (void)setOperationInfo:(id)info forOperationID:(id)d appContainerAccountTuple:(id)tuple;
- (void)unregisterDelegate:(id)delegate forOperationWithID:(id)d;
@end

@implementation CKDOperationInfoCache

+ (id)sharedCache
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKDOperationInfoCache.m", 125, @"Use -initWithDeviceContext:");

  return 0;
}

- (CKDOperationInfoCache)initWithCacheDir:(id)dir
{
  v16.receiver = self;
  v16.super_class = CKDOperationInfoCache;
  v3 = [(CKDSQLiteCache *)&v16 initWithCacheDir:dir];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_setUserVersion_(v3, v4, 1556947966);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.cloudkit.operationInfoCache", v6);
    cacheQueue = v5->_cacheQueue;
    v5->_cacheQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.cloudkit.operationInfoCacheDelegate", v9);
    cacheDelegateQueue = v5->_cacheDelegateQueue;
    v5->_cacheDelegateQueue = v10;

    objc_msgSend_setObjectClassPrefix_(v5, v12, @"CKD");
    v13 = objc_opt_new();
    delegateWrappersByOperationID = v5->_delegateWrappersByOperationID;
    v5->_delegateWrappersByOperationID = v13;
  }

  return v5;
}

- (void)registerDelegate:(id)delegate forOperationWithID:(id)d
{
  delegateCopy = delegate;
  dCopy = d;
  v11 = objc_msgSend_cacheQueue(self, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22515B170;
  v14[3] = &unk_278546BB8;
  v14[4] = self;
  v15 = dCopy;
  v16 = delegateCopy;
  v17 = a2;
  v12 = delegateCopy;
  v13 = dCopy;
  dispatch_sync(v11, v14);
}

- (void)unregisterDelegate:(id)delegate forOperationWithID:(id)d
{
  delegateCopy = delegate;
  dCopy = d;
  v10 = objc_msgSend_cacheDelegateQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515B708;
  block[3] = &unk_278546990;
  block[4] = self;
  v14 = dCopy;
  v15 = delegateCopy;
  v11 = delegateCopy;
  v12 = dCopy;
  dispatch_async(v10, block);
}

- (id)operationInfoMetadataForOperationWithID:(id)d
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_225073F30;
  v18 = sub_225073524;
  v19 = 0;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515B8F4;
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

- (void)_locked_enumerateCallbacksForOperationWithID:(id)d usingBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%@ = ?", @"operationID");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22515BC90;
  v15[3] = &unk_278546C08;
  v16 = v9;
  v17 = dCopy;
  v18 = blockCopy;
  v10 = blockCopy;
  v11 = dCopy;
  v12 = v9;
  v14 = objc_msgSend_performDatabaseOperation_(self, v13, v15);
}

- (void)enumerateCallbacksForOperationWithID:(id)d usingBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v10 = objc_msgSend_cacheQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515BF38;
  block[3] = &unk_278546C30;
  block[4] = self;
  v14 = dCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = dCopy;
  dispatch_sync(v10, block);
}

- (id)resumableOperationInfosByAppContainerAccountTuplesWithProgressPurged:(BOOL)purged
{
  v5 = objc_opt_new();
  v8 = objc_msgSend_cacheQueue(self, v6, v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515C01C;
  block[3] = &unk_278545AB0;
  block[4] = self;
  v9 = v5;
  v14 = v9;
  purgedCopy = purged;
  dispatch_sync(v8, block);

  v10 = v14;
  v11 = v9;

  return v9;
}

- (id)outstandingOperationInfosForIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  v8 = objc_msgSend_cacheQueue(self, v6, v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515CA20;
  block[3] = &unk_278546990;
  v15 = dsCopy;
  selfCopy = self;
  v9 = v5;
  v17 = v9;
  v10 = dsCopy;
  dispatch_sync(v8, block);

  v11 = v17;
  v12 = v9;

  return v9;
}

- (id)allOutstandingOperationIDsForAppContainerAccountTuple:(id)tuple
{
  tupleCopy = tuple;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_225073F30;
  v19 = sub_225073524;
  v20 = 0;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515CEA8;
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

- (void)expungeOperationInfoForDeletedAccountID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22515D2A4;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(v7, v9);
}

- (void)_expungeOperationInfoForDeletedAccountID:(id)d
{
  dCopy = d;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22515D34C;
  v8[3] = &unk_2785468F8;
  v9 = dCopy;
  v5 = dCopy;
  v7 = objc_msgSend_performDatabaseOperation_(self, v6, v8);
}

- (void)_lockedSetOperationInfo:(id)info forOperationID:(id)d appContainerAccountTuple:(id)tuple
{
  infoCopy = info;
  dCopy = d;
  tupleCopy = tuple;
  v13 = objc_msgSend_cacheQueue(self, v11, v12);
  dispatch_assert_queue_V2(v13);

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22515D65C;
  v19[3] = &unk_278546A78;
  v20 = infoCopy;
  v21 = dCopy;
  v22 = tupleCopy;
  v14 = tupleCopy;
  v15 = dCopy;
  v16 = infoCopy;
  v18 = objc_msgSend_performDatabaseOperation_(self, v17, v19);
}

- (void)setOperationInfo:(id)info forOperationID:(id)d appContainerAccountTuple:(id)tuple
{
  infoCopy = info;
  dCopy = d;
  tupleCopy = tuple;
  v13 = objc_msgSend_cacheQueue(self, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22515D984;
  v17[3] = &unk_2785463D0;
  v17[4] = self;
  v18 = infoCopy;
  v19 = dCopy;
  v20 = tupleCopy;
  v14 = tupleCopy;
  v15 = dCopy;
  v16 = infoCopy;
  dispatch_sync(v13, v17);
}

- (void)_lockedArchiveCallback:(id)callback forOperationID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  dCopy = d;
  v10 = objc_msgSend_cacheQueue(self, v8, v9);
  dispatch_assert_queue_V2(v10);

  v14 = objc_msgSend__locked_operationInfoForID_(self, v11, dCopy);
  if (v14)
  {
    v15 = objc_msgSend_cacheDelegateQueue(self, v12, v13);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22515DC5C;
    block[3] = &unk_278546990;
    block[4] = self;
    v16 = dCopy;
    v36 = v16;
    v17 = callbackCopy;
    v37 = v17;
    dispatch_sync(v15, block);

    v19 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v18, v17, 1, 0);
    v22 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v20, v21, 86400.0);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22515DD40;
    v29[3] = &unk_278546C80;
    v30 = v16;
    v31 = v19;
    v32 = v14;
    v33 = v17;
    v34 = v22;
    v23 = v22;
    v24 = v19;
    v26 = objc_msgSend_performDatabaseOperation_(self, v25, v29);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = dCopy;
      _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Couldn't find an operation with ID %{public}@ to set the result", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)archiveCallback:(id)callback forOperationID:(id)d
{
  callbackCopy = callback;
  dCopy = d;
  v10 = objc_msgSend_cacheQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22515E040;
  block[3] = &unk_278546990;
  block[4] = self;
  v14 = callbackCopy;
  v15 = dCopy;
  v11 = dCopy;
  v12 = callbackCopy;
  dispatch_sync(v10, block);
}

- (void)registerAttemptForOperationWithID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_cacheQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22515E104;
  v9[3] = &unk_278545898;
  v9[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_sync(v7, v9);
}

- (id)_locked_operationInfoForID:(id)d
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  dCopy = d;
  v7 = objc_msgSend_stringWithFormat_(v4, v6, @"%@ = ?", @"operationID");
  v17[0] = dCopy;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v17, 1);

  v11 = objc_msgSend_selectAllFrom_where_bindings_(self, v10, @"OperationInfo", v7, v9);

  v14 = objc_msgSend_firstObject(v11, v12, v13);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)registerCacheEviction
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_deviceContext(self, a2, v2);
  v8 = objc_msgSend_testDeviceReference(v5, v6, v7);

  if (v8)
  {
    v44 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, a2, self, @"CKDOperationInfoCache.m", 495, @"Only the default device context may register for operation info cache eviction");
  }

  v11 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v9, v10);
  v14 = objc_msgSend_cacheQueue(self, v12, v13);
  objc_msgSend_registerForTaskWithIdentifier_usingQueue_launchHandler_(v11, v15, @"com.apple.cloudkit.operationInfoCacheEviction", v14, &unk_28385CA60);

  v18 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v16, v17);
  v20 = objc_msgSend_taskRequestForIdentifier_(v18, v19, @"com.apple.cloudkit.operationInfoCacheEviction");

  if (!v20)
  {
    v21 = objc_alloc(MEMORY[0x277CF07D8]);
    v23 = objc_msgSend_initWithIdentifier_(v21, v22, @"com.apple.cloudkit.operationInfoCacheEviction");
    objc_msgSend_setInterval_(v23, v24, v25, 86400.0);
    v28 = objc_msgSend_resources(v23, v26, v27);
    objc_msgSend_setResources_(v23, v29, v28 | 4);
    v32 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v30, v31);
    v46 = 0;
    v34 = objc_msgSend_submitTaskRequest_error_(v32, v33, v23, &v46);
    v35 = v46;

    v36 = *MEMORY[0x277CBC878];
    v37 = *MEMORY[0x277CBC880];
    if (v34)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v36);
      }

      v38 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 138412290;
      v48 = v35;
      v39 = "Failed to register operation info cache eviction task with error: %@";
      v40 = v38;
      v41 = 12;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v36);
      }

      v42 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v39 = "Registered operation info cache eviction task";
      v40 = v42;
      v41 = 2;
    }

    _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
LABEL_12:
  }

  v43 = *MEMORY[0x277D85DE8];
}

@end