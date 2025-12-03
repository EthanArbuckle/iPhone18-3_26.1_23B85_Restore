@interface CKDAnonymousSharingManager
- (CKDAnonymousSharingManager)initWithContainer:(id)container;
- (CKDContainer)container;
- (id)_generateHashIdentifierForAnonymousShareTuple:(id)tuple;
- (id)pcsCache;
- (void)_lockedFetchSystemZonePCSDataWithCompletion:(id)completion;
- (void)_locked_decryptShareTuple:(id)tuple withCompletionBlock:(id)block;
- (void)_locked_encryptShareTuples:(id)tuples withCompletionBlock:(id)block;
- (void)addAnonymousSharesToSharedDB:(id)b operation:(id)operation withCompletionBlock:(id)block;
- (void)decryptShareTuple:(id)tuple withCompletionBlock:(id)block;
- (void)encryptShareTuples:(id)tuples withCompletionBlock:(id)block;
- (void)removeAnonymousSharesFromSharedDB:(id)b operation:(id)operation withCompletionBlock:(id)block;
@end

@implementation CKDAnonymousSharingManager

- (CKDAnonymousSharingManager)initWithContainer:(id)container
{
  containerCopy = container;
  v21.receiver = self;
  v21.super_class = CKDAnonymousSharingManager;
  v5 = [(CKDAnonymousSharingManager *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, containerCopy);
    v7 = MEMORY[0x277CCACA8];
    v10 = objc_msgSend_containerID(containerCopy, v8, v9);
    v12 = objc_msgSend_stringWithFormat_(v7, v11, @"%s.%@", "com.apple.cloudkit.anonymousSharingManager.queue", v10);
    v13 = v12;
    v16 = objc_msgSend_UTF8String(v13, v14, v15);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(v16, v17);
    synchronizeQueue = v6->_synchronizeQueue;
    v6->_synchronizeQueue = v18;

    dispatch_queue_set_specific(v6->_synchronizeQueue, "com.apple.cloudkit.anonymousSharingManager.queue", 1, 0);
  }

  return v6;
}

- (id)_generateHashIdentifierForAnonymousShareTuple:(id)tuple
{
  v57 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  v7 = objc_msgSend_zoneID(tupleCopy, v5, v6);
  v10 = objc_msgSend_zoneName(v7, v8, v9);

  v13 = objc_msgSend_zoneID(tupleCopy, v11, v12);
  v16 = objc_msgSend_ownerName(v13, v14, v15);

  v19 = objc_msgSend_zoneID(tupleCopy, v17, v18);

  v22 = objc_msgSend_anonymousCKUserID(v19, v20, v21);

  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"%@-%@-%@", v10, v16, v22);
  if (objc_msgSend_length(v22, v25, v26) <= 0x41)
  {
    *md = 0u;
    v56 = 0u;
    v38 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v27, md, 32, 0);
    v41 = objc_msgSend_UTF8String(v24, v39, v40);
    v43 = objc_msgSend_lengthOfBytesUsingEncoding_(v24, v42, 4);
    CC_SHA256(v41, v43, md);
    v46 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v38, v44, v45);
    v37 = objc_msgSend_stringByAppendingString_(@"+", v47, v46);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v48 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v52 = v37;
      v53 = 2112;
      v54 = v22;
      _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "Generated anonymousShareTupleHash: %@ for anonymousUserID: %@", buf, 0x16u);
    }
  }

  else
  {
    v29 = objc_msgSend_zonePCSData(self, v27, v28);
    objc_msgSend_zoneishPCS(v29, v30, v31);

    v33 = objc_msgSend_dataUsingEncoding_(v24, v32, 4);
    v34 = PCSFPCreateDerivedDataFromMasterKey();
    v37 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v34, v35, v36);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v37;
}

- (void)addAnonymousSharesToSharedDB:(id)b operation:(id)operation withCompletionBlock:(id)block
{
  bCopy = b;
  operationCopy = operation;
  blockCopy = block;
  v13 = objc_msgSend_synchronizeQueue(self, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2253B6858;
  v17[3] = &unk_27854D2E8;
  v18 = bCopy;
  selfCopy = self;
  v20 = operationCopy;
  v21 = blockCopy;
  v14 = operationCopy;
  v15 = blockCopy;
  v16 = bCopy;
  dispatch_async(v13, v17);
}

- (void)removeAnonymousSharesFromSharedDB:(id)b operation:(id)operation withCompletionBlock:(id)block
{
  bCopy = b;
  operationCopy = operation;
  blockCopy = block;
  v13 = objc_msgSend_synchronizeQueue(self, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2253B6E8C;
  v17[3] = &unk_27854D2E8;
  v18 = bCopy;
  selfCopy = self;
  v20 = operationCopy;
  v21 = blockCopy;
  v14 = operationCopy;
  v15 = blockCopy;
  v16 = bCopy;
  dispatch_async(v13, v17);
}

- (void)encryptShareTuples:(id)tuples withCompletionBlock:(id)block
{
  tuplesCopy = tuples;
  blockCopy = block;
  v10 = objc_msgSend_synchronizeQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253B75CC;
  block[3] = &unk_278546C30;
  block[4] = self;
  v14 = tuplesCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = tuplesCopy;
  dispatch_async(v10, block);
}

- (void)_locked_encryptShareTuples:(id)tuples withCompletionBlock:(id)block
{
  v83 = *MEMORY[0x277D85DE8];
  tuplesCopy = tuples;
  blockCopy = block;
  v10 = objc_msgSend_synchronizeQueue(self, v8, v9);
  dispatch_assert_queue_V2(v10);

  v13 = objc_msgSend_zonePCSData(self, v11, v12);

  if (v13)
  {
    v69 = blockCopy;
    v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v70 = tuplesCopy;
    obj = tuplesCopy;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v76, v82, 16);
    if (!v15)
    {
      goto LABEL_23;
    }

    v17 = v15;
    v18 = *v77;
    v72 = *MEMORY[0x277CBBF50];
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v77 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v76 + 1) + 8 * v19);
        v21 = objc_msgSend__generateHashIdentifierForAnonymousShareTuple_(self, v16, v20, v69);
        objc_msgSend_setCkAnonymousShareHashIdentifier_(v20, v22, v21);

        v25 = objc_msgSend_ckAnonymousShareHashIdentifier(v20, v23, v24);

        if (v25)
        {
          v75 = 0;
          v27 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v26, v20, 1, &v75);
          v28 = v75;
          objc_msgSend_dataUsingEncoding_(@"CKDAnonymousShareTuple", v29, 4);
          v32 = objc_msgSend_zonePCSData(self, v30, v31);
          objc_msgSend_zoneishPCS(v32, v33, v34);
          v35 = PCSFPCopyEncryptedData();

          v36 = *MEMORY[0x277CBC880] == -1;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v45 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v50 = v45;
            v53 = objc_msgSend_zonePCSData(self, v51, v52);
            v56 = objc_msgSend_pcs(v53, v54, v55);
            *buf = 138412290;
            v81 = v56;
            _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Encrypted data with zone PCS %@:", buf, 0xCu);
          }

          v48 = objc_msgSend_ckAnonymousShareHashIdentifier(v20, v46, v47);
          objc_msgSend_setObject_forKey_(v71, v49, v35, v48);

          goto LABEL_20;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v37 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Error generating ckAnonymousShareHashIdentifier for CKDAnonymousShareTuple", buf, 2u);
        }

        v28 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v38, v72, 1000, @"Error generating ckAnonymousShareHashIdentifier for CKDAnonymousShareTuple.");
        v41 = objc_msgSend_shareID(v20, v39, v40);

        if (v41)
        {
          v27 = objc_msgSend_shareID(v20, v42, v43);
          objc_msgSend_setObject_forKeyedSubscript_(v74, v44, v28, v27);
LABEL_20:
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v76, v82, 16);
      if (!v17)
      {
LABEL_23:

        if (objc_msgSend_count(v74, v57, v58))
        {
          v61 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v59, v60);
          objc_msgSend_setObject_forKeyedSubscript_(v61, v62, v74, *MEMORY[0x277CBBFB0]);
          v64 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v63, *MEMORY[0x277CBC120], 1011, v61, @"Failed to encrypt some anonymous share tuples.");
        }

        else
        {
          v64 = 0;
        }

        blockCopy = v69;
        tuplesCopy = v70;
        v67 = v71;
        if (v69)
        {
          v69[2](v69, v71, v64);
        }

        goto LABEL_35;
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v65 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v65, OS_LOG_TYPE_DEBUG, "_encryptShareTuple zonePCSData is still not available. Terminating without additional retry.", buf, 2u);
  }

  v67 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v66, *MEMORY[0x277CBBF50], 1000, @"_locked_encryptShareTuples zonePCSData is still not available. Terminating without additional retry.");
  if (blockCopy)
  {
    blockCopy[2](blockCopy, 0, v67);
  }

LABEL_35:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)decryptShareTuple:(id)tuple withCompletionBlock:(id)block
{
  tupleCopy = tuple;
  blockCopy = block;
  v10 = objc_msgSend_synchronizeQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253B7E98;
  block[3] = &unk_278546C30;
  block[4] = self;
  v14 = tupleCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = tupleCopy;
  dispatch_async(v10, block);
}

- (void)_locked_decryptShareTuple:(id)tuple withCompletionBlock:(id)block
{
  v50 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  blockCopy = block;
  v10 = objc_msgSend_synchronizeQueue(self, v8, v9);
  dispatch_assert_queue_V2(v10);

  v13 = objc_msgSend_zonePCSData(self, v11, v12);

  v15 = MEMORY[0x277CBC880];
  v16 = MEMORY[0x277CBC830];
  if (v13)
  {
    cf = 0;
    objc_msgSend_dataUsingEncoding_(@"CKDAnonymousShareTuple", v14, 4);
    v19 = PCSFPCopyTruncatedKeyIDFromEncryptedData();
    v20 = MEMORY[0x277CBC878];
    if (!v19)
    {
      if (*v15 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v21 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v47 = tupleCopy;
        v48 = 2112;
        v49 = cf;
        _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Failed to get keyID from encrypted data %@. PCS error: %@.", buf, 0x16u);
      }
    }

    v22 = objc_msgSend_zonePCSData(self, v17, v18);
    objc_msgSend_zoneishPCS(v22, v23, v24);
    v25 = PCSFPCopyDecryptedData();

    v26 = *v15 == -1;
    if (*v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v20);
    }

    v29 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
    {
      v37 = v29;
      v40 = objc_msgSend_zonePCSData(self, v38, v39);
      v43 = objc_msgSend_pcs(v40, v41, v42);
      *buf = 138412290;
      v47 = v43;
      _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Decrypted data with zone PCS %@:", buf, 0xCu);
    }

    if (v25)
    {
      v30 = MEMORY[0x277CCAAC8];
      v31 = objc_opt_class();
      v44 = 0;
      v33 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v30, v32, v31, v25, &v44);
      if (blockCopy)
      {
        blockCopy[2](blockCopy, v33, 0);
      }
    }

    else
    {
      if (*v15 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v20);
      }

      v34 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "_locked_decryptShareTuple Unable to decrypt share tuple data.", buf, 2u);
      }

      v33 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v35, *MEMORY[0x277CBBF50], 1000, @"_locked_decryptShareTuple Unable to decrypt share tuple data.");
      if (blockCopy)
      {
        (blockCopy)[2](blockCopy, 0, v33);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "_locked_decryptShareTuple zonePCSData is still not available. Terminating without additional retry.", buf, 2u);
    }

    v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBBF50], 1000, @"_locked_decryptShareTuple zonePCSData is still not available. Terminating without additional retry.");
    if (blockCopy)
    {
      (blockCopy)[2](blockCopy, 0, v19);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)pcsCache
{
  v3 = objc_msgSend_container(self, a2, v2);
  v6 = objc_msgSend_pcsCache(v3, v4, v5);

  return v6;
}

- (void)_lockedFetchSystemZonePCSDataWithCompletion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objc_msgSend_synchronizeQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  objc_initWeak(&location, self);
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_2250741BC;
  v43[4] = sub_22507365C;
  v44 = 0;
  v10 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v8, v9);
  v11 = objc_opt_new();
  objc_msgSend_setRequestOriginator_(v11, v12, 1);
  objc_msgSend_setResolvedConfiguration_(v11, v13, v10);
  objc_msgSend_setDatabaseScope_(v11, v14, 2);
  v15 = [CKDDatabaseOperation alloc];
  v18 = objc_msgSend_container(self, v16, v17);
  v20 = objc_msgSend_initWithOperationInfo_container_(v15, v19, v11, v18);

  v23 = objc_msgSend_systemRecordZone(MEMORY[0x277CBC5E8], v21, v22);
  v26 = objc_msgSend_zoneID(v23, v24, v25);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v47 = @"zoneish ";
    v48 = 2112;
    v49 = v26;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Fetching %{public}@PCS data for zone %@", buf, 0x16u);
  }

  v30 = objc_msgSend_pcsCache(self, v28, v29);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2253B88C0;
  v36[3] = &unk_27854D338;
  objc_copyWeak(&v42, &location);
  v31 = v20;
  v37 = v31;
  selfCopy = self;
  v32 = v26;
  v39 = v32;
  v41 = v43;
  v33 = completionCopy;
  v40 = v33;
  objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v30, v34, v32, v31, 8, v36);

  objc_destroyWeak(&v42);
  _Block_object_dispose(v43, 8);

  objc_destroyWeak(&location);
  v35 = *MEMORY[0x277D85DE8];
}

- (CKDContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end