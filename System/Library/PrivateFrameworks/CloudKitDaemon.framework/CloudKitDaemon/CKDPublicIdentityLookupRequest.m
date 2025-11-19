@interface CKDPublicIdentityLookupRequest
- (BOOL)_tryComplete;
- (CKDPublicIdentityLookupRequest)initWithOperation:(id)a3 lookupInfos:(id)a4;
- (id)ckShortDescription;
- (id)spawnURLRequests;
- (void)_receivedUserIdentity:(id)a3 forLookupInfo:(id)a4 error:(id)a5;
- (void)_saveUserIdentity:(id)a3 forLookupInfo:(id)a4;
- (void)finishWithError:(id)a3;
- (void)performRequest;
@end

@implementation CKDPublicIdentityLookupRequest

- (CKDPublicIdentityLookupRequest)initWithOperation:(id)a3 lookupInfos:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CKDPublicIdentityLookupRequest;
  v8 = [(CKDPublicIdentityLookupRequest *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_operation, v6);
    v12 = objc_msgSend_copy(v7, v10, v11);
    lookupInfosToFetch = v9->_lookupInfosToFetch;
    v9->_lookupInfosToFetch = v12;
  }

  return v9;
}

- (void)_saveUserIdentity:(id)a3 forLookupInfo:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_publicSharingKey(v6, v8, v9);

  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_operation);
    v14 = objc_msgSend_container(WeakRetained, v12, v13);

    v17 = objc_msgSend_publicIdentitiesDiskCache(v14, v15, v16);
    if (v17)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v23 = v18;
        v26 = objc_msgSend_ckShortDescription(v7, v24, v25);
        v27 = 138412546;
        v28 = v26;
        v29 = 2112;
        v30 = v17;
        _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Caching PILS entry for %@ in %@", &v27, 0x16u);
      }

      objc_msgSend_cacheUserIdentity_forLookupInfo_container_(v17, v19, v6, v7, v14);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = v6;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Not caching user identity without a public sharing key: %@", &v27, 0xCu);
    }
  }

  objc_msgSend__receivedUserIdentity_forLookupInfo_error_(self, v20, v6, v7, 0);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_receivedUserIdentity:(id)a3 forLookupInfo:(id)a4 error:(id)a5
{
  perLookupInfoProgressBlock = self->_perLookupInfoProgressBlock;
  if (perLookupInfoProgressBlock)
  {
    perLookupInfoProgressBlock[2](perLookupInfoProgressBlock, a4, a3, a5);
  }
}

- (void)performRequest
{
  v102 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_hasPerformed(self, a2, v2))
  {
    v71 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    v72 = objc_opt_class();
    v73 = NSStringFromClass(v72);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v71, v74, a2, self, @"CKDPublicIdentityLookupRequest.m", 71, @"A %@ may only be performed once", v73);
  }

  objc_msgSend_setHasPerformed_(self, v5, 1);
  WeakRetained = objc_loadWeakRetained(&self->_operation);
  v10 = objc_msgSend_container(WeakRetained, v8, v9);

  v13 = objc_msgSend_publicIdentitiesDiskCache(v10, v11, v12);
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = self->_lookupInfosToFetch;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v92, v101, 16);
  if (v16)
  {
    v17 = *v93;
    v75 = *MEMORY[0x277CBC120];
    do
    {
      v18 = 0;
      do
      {
        if (*v93 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v92 + 1) + 8 * v18);
        v22 = objc_msgSend_cachedIdentityForLookupInfo_container_(v13, v15, v19, v10);
        if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_phoneNumber(v19, v20, v21), v23 = objc_claimAutoreleasedReturnValue(), hasPrefix = objc_msgSend_hasPrefix_(v23, v24, @"UNIT_TEST_FAILED_LOOKUP_"), v23, hasPrefix))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v26 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v48 = v26;
            v51 = objc_msgSend_phoneNumber(v19, v49, v50);
            *buf = 138412290;
            *&buf[4] = v51;
            _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "Returning a fake empty response for participant %@. You asked for it!", buf, 0xCu);
          }

          v28 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, v75, 1000, @"Unit-test-requested error fetching share participant");
          objc_msgSend__receivedUserIdentity_forLookupInfo_error_(self, v29, 0, v19, v28);
        }

        else if (v22)
        {
          objc_msgSend_setLookupInfo_(v22, v20, v19);
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v30 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v37 = v30;
            v40 = objc_msgSend_publicSharingKey(v22, v38, v39);
            v43 = objc_msgSend_publicKeyVersion(v22, v41, v42);
            *buf = 138413058;
            *&buf[4] = v19;
            *&buf[12] = 2112;
            *&buf[14] = v22;
            *&buf[22] = 2114;
            v99 = v40;
            LOWORD(v100) = 2048;
            *(&v100 + 2) = v43;
            _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Found lookup info key %@ in cache, injected it into cached identity %@. Public key is %{public}@/%lu", buf, 0x2Au);
          }

          objc_msgSend__receivedUserIdentity_forLookupInfo_error_(self, v31, v22, v19, 0);
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v32 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v44 = v32;
            v47 = objc_msgSend_ckShortDescription(v19, v45, v46);
            *buf = 138412546;
            *&buf[4] = v47;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Found no PILS cache entry for %@ in %@", buf, 0x16u);
          }

          missingLookupInfos = self->_missingLookupInfos;
          if (!missingLookupInfos)
          {
            v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v36 = self->_missingLookupInfos;
            self->_missingLookupInfos = v35;

            missingLookupInfos = self->_missingLookupInfos;
          }

          objc_msgSend_addObject_(missingLookupInfos, v33, v19);
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v92, v101, 16);
    }

    while (v16);
  }

  if ((objc_msgSend__tryComplete(self, v52, v53) & 1) == 0)
  {
    v56 = objc_msgSend_spawnURLRequests(self, v54, v55);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v99 = sub_225074170;
    *&v100 = sub_225073644;
    *(&v100 + 1) = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = sub_225074170;
    v90 = sub_225073644;
    v91 = 0;
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x3032000000;
    v84[3] = sub_2253AC71C;
    v84[4] = sub_2253AC72C;
    v85 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2253AC734;
    aBlock[3] = &unk_27854D068;
    v57 = v56;
    v78 = v57;
    v81 = v84;
    v82 = buf;
    v83 = &v86;
    v58 = v10;
    v79 = v58;
    v80 = self;
    v59 = _Block_copy(aBlock);
    v60 = v87[5];
    v87[5] = v59;

    v62 = objc_msgSend_objectAtIndex_(v57, v61, 0);
    v65 = objc_msgSend_completionBlock(v62, v63, v64);
    v66 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v65;

    objc_msgSend_setCompletionBlock_(v62, v67, v87[5]);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v68 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v96 = 138412290;
      v97 = v62;
      _os_log_debug_impl(&dword_22506F000, v68, OS_LOG_TYPE_DEBUG, "Starting execution of batched requests, triggering %@", v96, 0xCu);
    }

    objc_msgSend_performRequest_(v58, v69, v62);

    _Block_object_dispose(v84, 8);
    _Block_object_dispose(&v86, 8);

    _Block_object_dispose(buf, 8);
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (id)spawnURLRequests
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v5 = self->_missingLookupInfos;
  v8 = objc_msgSend_count(v5, v6, v7);
  WeakRetained = objc_loadWeakRetained(&self->_operation);
  if (v8)
  {
    *&v11 = 134218240;
    v37 = v11;
    do
    {
      fetchBatchSize = self->_fetchBatchSize;
      if (v8 <= fetchBatchSize)
      {
        v13 = v5;
        missingLookupInfos = self->_missingLookupInfos;
        self->_missingLookupInfos = 0;
      }

      else
      {
        v13 = objc_msgSend_subarrayWithRange_(v5, v9, 0, self->_fetchBatchSize);
        objc_msgSend_removeObjectsInRange_(v5, v14, 0, fetchBatchSize);
      }

      v18 = objc_msgSend_count(v13, v15, v16, v37);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v28 = v19;
        v31 = objc_msgSend_count(v13, v29, v30);
        BatchSize = objc_msgSend_fetchBatchSize(self, v32, v33);
        *from = v37;
        *&from[4] = v31;
        v43 = 2048;
        v44 = BatchSize;
        _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Creating request to fetch public identity for %lu infos (batch size is %lu)", from, 0x16u);
      }

      v20 = [CKDDiscoverUserIdentitiesURLRequest alloc];
      v22 = objc_msgSend_initWithOperation_lookupInfos_adopterProvidedLookupInfos_(v20, v21, WeakRetained, v13, 1);
      objc_msgSend_setWantsProtectionInfo_(v22, v23, 1);
      *from = 0;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_2253ACCFC;
      v38[3] = &unk_27854D090;
      v24 = WeakRetained;
      v39 = v24;
      v40 = self;
      objc_copyWeak(&v41, from);
      objc_msgSend_setProgressBlock_(v22, v25, v38);
      objc_msgSend_configureRequest_(v24, v26, v22);
      objc_msgSend_addObject_(v4, v27, v22);
      objc_destroyWeak(&v41);

      objc_destroyWeak(from);
      v8 -= v18;
    }

    while (v8);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_tryComplete
{
  if (objc_msgSend_isCancelled(self, a2, v2))
  {
    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v4, *MEMORY[0x277CBBF50], 20, @"This request was cancelled");
  }

  else
  {
    v6 = 0;
  }

  if (objc_msgSend_count(self->_missingLookupInfos, v4, v5))
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if (!v8)
  {
    objc_msgSend_finishWithError_(self, v7, v6);
  }

  return v9;
}

- (void)finishWithError:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_perLookupInfoProgressBlock)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_missingLookupInfos;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v24, 16);
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          (*(self->_perLookupInfoProgressBlock + 2))(self->_perLookupInfoProgressBlock);
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v18, v24, 16);
      }

      while (v8);
    }
  }

  lookupCompletionBlock = self->_lookupCompletionBlock;
  if (lookupCompletionBlock)
  {
    lookupCompletionBlock[2](lookupCompletionBlock, v4);
    v14 = self->_lookupCompletionBlock;
  }

  else
  {
    v14 = 0;
  }

  self->_lookupCompletionBlock = 0;

  perLookupInfoProgressBlock = self->_perLookupInfoProgressBlock;
  self->_perLookupInfoProgressBlock = 0;

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = self;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Completed request: %@", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)ckShortDescription
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v8 = objc_msgSend_count(self->_lookupInfosToFetch, v5, v6);
  v9 = MEMORY[0x277CCACA8];
  if (v8 < 4)
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"lookupInfos=%@", self->_lookupInfosToFetch);
    objc_msgSend_addObject_(v4, v17, v10);
  }

  else
  {
    v10 = objc_msgSend_subarrayWithRange_(self->_lookupInfosToFetch, v7, 0, 3);
    v13 = objc_msgSend_count(self->_lookupInfosToFetch, v11, v12);
    v15 = objc_msgSend_stringWithFormat_(v9, v14, @"lookupInfos=%@ + %ld more", v10, v13 - 3);
    objc_msgSend_addObject_(v4, v16, v15);
  }

  v19 = objc_msgSend_componentsJoinedByString_(v4, v18, @", ");

  return v19;
}

@end