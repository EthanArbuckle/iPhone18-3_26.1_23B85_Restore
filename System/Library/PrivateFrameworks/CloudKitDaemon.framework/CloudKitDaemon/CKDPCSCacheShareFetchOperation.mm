@interface CKDPCSCacheShareFetchOperation
- (BOOL)_fetchPCSDataFromDatabase;
- (BOOL)_fetchPCSDataFromServer;
- (BOOL)_savePCSDataToCache;
- (BOOL)hasAllPCSData;
- (void)_handlePCSDataFetched:(id)fetched withError:(id)error;
@end

@implementation CKDPCSCacheShareFetchOperation

- (BOOL)hasAllPCSData
{
  v3 = objc_msgSend_sharePCSData(self, a2, v2);
  v6 = objc_msgSend_pcs(v3, v4, v5) != 0;

  return v6;
}

- (void)_handlePCSDataFetched:(id)fetched withError:(id)error
{
  v44 = *MEMORY[0x277D85DE8];
  fetchedCopy = fetched;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = MEMORY[0x277CBC830];
  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v22 = objc_msgSend_operationID(selfCopy, v12, v13);
    v25 = objc_msgSend_pcsKeyID(fetchedCopy, v23, v24);
    v26 = v25;
    v27 = @" and error ";
    *v39 = 138544130;
    v28 = &stru_28385ED00;
    *&v39[4] = v22;
    *&v39[12] = 2114;
    if (errorCopy)
    {
      v28 = errorCopy;
    }

    else
    {
      v27 = &stru_28385ED00;
    }

    *&v39[14] = v25;
    v40 = 2114;
    v41 = v27;
    v42 = 2112;
    v43 = v28;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Share PCS fetch operation %{public}@ received PCS data (%{public}@)%{public}@%@", v39, 0x2Au);
  }

  if (objc_msgSend_didFetchData(selfCopy, v14, v15))
  {
    if (*v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v10;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v29 = objc_msgSend_operationID(selfCopy, v18, v19);
      v32 = objc_msgSend_sharePCSData(selfCopy, v30, v31);
      v35 = objc_msgSend_pcsKeyID(v32, v33, v34);
      v38 = objc_msgSend_pcsKeyID(fetchedCopy, v36, v37);
      *v39 = 138544130;
      *&v39[4] = v29;
      *&v39[12] = 2112;
      *&v39[14] = v35;
      v40 = 2112;
      v41 = v38;
      v42 = 2112;
      v43 = errorCopy;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Share PCS fetch operation %{public}@ already has PCS data %@. Ignoring the fetch callback with %@/%@", v39, 0x2Au);
    }
  }

  else
  {
    if (fetchedCopy)
    {
      objc_msgSend_setSharePCSData_(selfCopy, v16, fetchedCopy);
      objc_msgSend_setDidFetchData_(selfCopy, v20, 1);
    }

    objc_msgSend_setFetchError_(selfCopy, v16, errorCopy, *v39);
  }

  objc_sync_exit(selfCopy);

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_fetchPCSDataFromDatabase
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v12 = v5;
    v15 = objc_msgSend_shareID(self, v13, v14);
    *buf = 138412290;
    v18 = v15;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Fetching PCS data for share %@ from the database", buf, 0xCu);
  }

  v8 = objc_msgSend_cache(self, v6, v7);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22527E3D0;
  v16[3] = &unk_27854B830;
  v16[4] = self;
  objc_msgSend_getSQLCache_(v8, v9, v16);

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_fetchPCSDataFromServer
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_fetchAggregator(v7, v8, v9);
  v13 = objc_msgSend_shareID(self, v11, v12);
  v16 = objc_msgSend_parentOperation(self, v14, v15);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22527EB5C;
  v19[3] = &unk_27854B9A8;
  v19[4] = self;
  objc_msgSend_requestFetchOfShareWithID_forOperation_withCompletionHandler_(v10, v17, v13, v16, v19);

  return 1;
}

- (BOOL)_savePCSDataToCache
{
  objc_initWeak(&location, self);
  if (objc_msgSend_wasFetchedFromCache(self, v3, v4))
  {
    v7 = objc_msgSend_stateTransitionGroup(self, v5, v6);
    dispatch_group_enter(v7);

    v10 = objc_msgSend_cache(self, v8, v9);
    v13 = objc_msgSend_sharePCSData(self, v11, v12);
    v16 = objc_msgSend_shareID(self, v14, v15);
    v19 = objc_msgSend_databaseScope(self, v17, v18);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_22527EF80;
    v34[3] = &unk_278549318;
    v20 = &v35;
    objc_copyWeak(&v35, &location);
    objc_msgSend_updateMemoryCacheWithSharePCSData_forShareWithID_databaseScope_withCompletionHandler_(v10, v21, v13, v16, v19, v34);
  }

  else
  {
    v22 = objc_msgSend_stateTransitionGroup(self, v5, v6);
    dispatch_group_enter(v22);

    v10 = objc_msgSend_cache(self, v23, v24);
    v13 = objc_msgSend_sharePCSData(self, v25, v26);
    v16 = objc_msgSend_shareID(self, v27, v28);
    v31 = objc_msgSend_databaseScope(self, v29, v30);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_22527EF28;
    v36[3] = &unk_278549318;
    v20 = &v37;
    objc_copyWeak(&v37, &location);
    objc_msgSend__setPCSData_forFetchedShareID_withScope_withCompletionHandler_(v10, v32, v13, v16, v31, v36);
  }

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  return 1;
}

@end