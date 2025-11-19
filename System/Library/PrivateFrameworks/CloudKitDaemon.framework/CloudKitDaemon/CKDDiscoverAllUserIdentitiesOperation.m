@interface CKDDiscoverAllUserIdentitiesOperation
- (CKDDiscoverAllUserIdentitiesOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (void)_discoverIdentitiesBatched:(id)a3;
- (void)_handleDiscoveredIdentity:(id)a3 lookupInfo:(id)a4 responseCode:(id)a5;
- (void)_populateFakeUnitTestLookupInfos:(id)a3;
- (void)_populateRealUserIdentityLookupInfos;
- (void)_populateUserIdentityLookupInfos;
@end

@implementation CKDDiscoverAllUserIdentitiesOperation

- (CKDDiscoverAllUserIdentitiesOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v5.receiver = self;
  v5.super_class = CKDDiscoverAllUserIdentitiesOperation;
  return [(CKDDiscoverUserIdentitiesOperation *)&v5 initWithOperationInfo:a3 container:a4];
}

- (void)_discoverIdentitiesBatched:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_count(v4, v5, v6);
  if (v7 >= 0x15E)
  {
    v9 = 350;
    objc_msgSend_subarrayWithRange_(v4, v8, 0, 350);
  }

  else
  {
    v9 = v7;
    objc_msgSend_subarrayWithRange_(v4, v8, 0, v7);
  }
  v10 = ;
  v15 = objc_msgSend_count(v4, v11, v12);
  v16 = 0;
  if (v9 < v15)
  {
    v17 = objc_msgSend_count(v4, v13, v14);
    v16 = objc_msgSend_subarrayWithRange_(v4, v18, v9, v17 - v9);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2252616D4;
  v21[3] = &unk_278548128;
  v21[4] = self;
  v22 = v16;
  v19 = v16;
  objc_msgSend__discoverIdentitiesWithLookupInfos_completionBlock_(self, v20, v10, v21);
}

- (void)_populateFakeUnitTestLookupInfos:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  objc_msgSend_lookupInfosWithEmails_(MEMORY[0x277CBC7C8], a2, a3);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v29, v33, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = MEMORY[0x277CBEB58];
        v13 = MEMORY[0x277CCACA8];
        v14 = objc_msgSend_emailAddress(v11, v6, v7);
        v16 = objc_msgSend_stringWithFormat_(v13, v15, @"FakeContactIdentifier-%@", v14);
        v18 = objc_msgSend_setWithObject_(v12, v17, v16);
        v21 = objc_msgSend_contactIdentifiersByLookupInfo(self, v19, v20);
        objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v18, v11);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v29, v33, 16);
    }

    while (v8);
  }

  objc_msgSend_setUserIdentityLookupInfos_(self, v6, obj);
  v25 = objc_msgSend_userIdentityLookupInfos(self, v23, v24);
  objc_msgSend__discoverIdentitiesBatched_(self, v26, v25);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_populateRealUserIdentityLookupInfos
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277CBDA70]);
  v6 = *MEMORY[0x277CBD098];
  v32[0] = *MEMORY[0x277CBCFC0];
  v32[1] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v32, 2);
  v10 = objc_msgSend_initWithKeysToFetch_(v5, v9, v8);

  objc_msgSend_setUnifyResults_(v10, v11, 0);
  v29 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_225261B44;
  v26[3] = &unk_27854B440;
  v12 = v3;
  v27 = v12;
  v28 = self;
  Request_error_usingBlock = objc_msgSend_enumerateContactsWithFetchRequest_error_usingBlock_(v4, v13, v10, &v29, v26);
  v15 = v29;
  if ((Request_error_usingBlock & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v15;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Error fetching contacts: %@", buf, 0xCu);
    }
  }

  v19 = objc_msgSend_allObjects(v12, v17, v18);
  objc_msgSend_setUserIdentityLookupInfos_(self, v20, v19);

  v23 = objc_msgSend_userIdentityLookupInfos(self, v21, v22);
  objc_msgSend__discoverIdentitiesBatched_(self, v24, v23);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_populateUserIdentityLookupInfos
{
  v3 = objc_opt_new();
  objc_msgSend_setContactIdentifiersByLookupInfo_(self, v4, v3);

  if (CKIsRunningInSyncBubble())
  {
    v13 = objc_msgSend_userIdentityLookupInfos(self, v5, v6);
    objc_msgSend__discoverIdentitiesBatched_(self, v7, v13);
  }

  else
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v8 = objc_msgSend_unitTestOverrides(self, v5, v6);
      v14 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"ContactsDatabaseEmails");

      v10 = v14;
    }

    else
    {
      v10 = 0;
    }

    v13 = v10;
    if (objc_msgSend_count(v10, v5, v6))
    {
      objc_msgSend__populateFakeUnitTestLookupInfos_(self, v11, v13);
    }

    else
    {
      objc_msgSend__populateRealUserIdentityLookupInfos(self, v11, v12);
    }
  }
}

- (void)_handleDiscoveredIdentity:(id)a3 lookupInfo:(id)a4 responseCode:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v46 = v8;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Found user identity %@", buf, 0xCu);
  }

  if (objc_msgSend_code(v10, v12, v13) == 1)
  {
    if (v8)
    {
      objc_msgSend_setLookupInfo_(v8, v14, 0);
      v17 = objc_msgSend_contactIdentifiersByLookupInfo(self, v15, v16);
      v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v9);
      v22 = objc_msgSend_allObjects(v19, v20, v21);
      objc_msgSend_setContactIdentifiers_(v8, v23, v22);

      v26 = objc_msgSend_callbackQueue(self, v24, v25);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_2252621D8;
      v43[3] = &unk_278545898;
      v43[4] = self;
      v44 = v8;
      dispatch_async(v26, v43);
    }
  }

  else
  {
    v27 = MEMORY[0x277CBC560];
    v28 = *MEMORY[0x277CBC120];
    v29 = sub_2253962A4(v10);
    v32 = objc_msgSend_request(self, v30, v31);
    v33 = sub_225395734(v32, v10);
    v35 = objc_msgSend_errorWithDomain_code_userInfo_format_(v27, v34, v28, v29, v33, @"Error discovering user identities");
    objc_msgSend_setError_(self, v36, v35);

    v39 = objc_msgSend_request(self, v37, v38);
    objc_msgSend_cancel(v39, v40, v41);
  }

  v42 = *MEMORY[0x277D85DE8];
}

@end