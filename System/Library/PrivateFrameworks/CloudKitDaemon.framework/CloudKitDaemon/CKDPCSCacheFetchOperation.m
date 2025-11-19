@interface CKDPCSCacheFetchOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)canBeUsedForOperation:(id)a3 withOptions:(unint64_t)a4;
- (BOOL)hasAllPCSData;
- (BOOL)makeStateTransition;
- (CKDPCSCacheFetchOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_willRetryFetch;
- (void)main;
@end

@implementation CKDPCSCacheFetchOperation

- (BOOL)makeStateTransition
{
  v132 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_hasAllPCSData(self, a2, v2))
  {
    if (objc_msgSend_state(self, v4, v5) > 7)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v32 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v33 = v32;
        v36 = objc_msgSend_operationID(self, v34, v35);
        v39 = objc_msgSend_itemTypeName(self, v37, v38);
        v42 = objc_msgSend_itemID(self, v40, v41);
        v126 = 138543874;
        v127 = v36;
        v128 = 2114;
        v129 = v39;
        v130 = 2112;
        v131 = v42;
        _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has a decrypted PCS blob for %{public}@ %@.", &v126, 0x20u);
      }

      goto LABEL_34;
    }

    objc_msgSend_setState_(self, v6, 7);
  }

  v9 = objc_msgSend_state(self, v4, v5);
  LOBYTE(v10) = 1;
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      if (v9 == 5)
      {
        v62 = objc_msgSend_fetchError(self, v7, v8);

        if (!v62)
        {
          objc_msgSend_setState_(self, v63, 6);
          v94 = *MEMORY[0x277D85DE8];

          LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__decryptPCS, v93);
          return v10;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v64 = *MEMORY[0x277CBC858];
        v10 = os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG);
        if (!v10)
        {
          goto LABEL_37;
        }

        v46 = v64;
        v49 = objc_msgSend_itemTypeName(self, v65, v66);
        v52 = objc_msgSend_itemID(self, v67, v68);
        v55 = objc_msgSend_fetchError(self, v69, v70);
        v126 = 138543874;
        v127 = v49;
        v128 = 2112;
        v129 = v52;
        v130 = 2112;
        v131 = v55;
        v56 = "Failed to fetch dependent PCS data from the server for %{public}@ %@: %@";
LABEL_48:
        _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, v56, &v126, 0x20u);

        goto LABEL_78;
      }

      v18 = objc_msgSend_fetchError(self, v7, v8);

      if (!v18)
      {
        objc_msgSend_setState_(self, v19, 7);
        v98 = *MEMORY[0x277D85DE8];

        LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__saveUpdatedPCSToServer, v97);
        return v10;
      }

      if (objc_msgSend_shouldRetry(self, v19, v20))
      {
        v23 = objc_msgSend_numRetries(self, v21, v22);
        v26 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v24, v25);
        v29 = objc_msgSend_PCSRetryCount(v26, v27, v28);

        if (v23 < v29)
        {
          objc_msgSend__willRetryFetch(self, v21, v22);
LABEL_19:
          objc_msgSend_setState_(self, v7, 2);
          v31 = *MEMORY[0x277D85DE8];

          LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__fetchPCSDataFromDatabase, v30);
          return v10;
        }
      }

      v81 = objc_msgSend_fetchError(self, v21, v22);
      objc_msgSend_setError_(self, v82, v81);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v83 = *MEMORY[0x277CBC858];
      if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
LABEL_36:
        LOBYTE(v10) = 1;
        goto LABEL_37;
      }

      v59 = v83;
      v86 = objc_msgSend_itemTypeName(self, v84, v85);
      v89 = objc_msgSend_operationID(self, v87, v88);
      v92 = objc_msgSend_error(self, v90, v91);
      v126 = 138543874;
      v127 = v86;
      v128 = 2114;
      v129 = v89;
      v130 = 2112;
      v131 = v92;
      _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "%{public}@ PCS fetch operation %{public}@ has failed too many times. Giving up with error %@", &v126, 0x20u);

LABEL_35:
      goto LABEL_36;
    }

    if (v9 == 7)
    {
      objc_msgSend_setState_(self, v7, 8);
      v80 = *MEMORY[0x277D85DE8];

      LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__savePCSDataToCache, v79);
      return v10;
    }

    if (v9 != 8)
    {
      goto LABEL_37;
    }

LABEL_34:
    objc_msgSend_setState_(self, v7, 0xFFFFFFFFLL);
    v59 = objc_msgSend_error(self, v57, v58);
    objc_msgSend_finishWithError_(self, v60, v59);
    goto LABEL_35;
  }

  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        v11 = objc_msgSend_pcsData(self, v7, v8);

        v14 = self;
        if (!v11)
        {
          if ((objc_msgSend_fetchOptions(self, v12, v13) & 2) == 0)
          {
            objc_msgSend_setState_(self, v15, 3);
            v17 = *MEMORY[0x277D85DE8];

            LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__fetchPCSDataFromServer, v16);
            return v10;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v101 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
          {
            v118 = v101;
            v121 = objc_msgSend_itemTypeName(self, v119, v120);
            v124 = objc_msgSend_itemID(self, v122, v123);
            v126 = 138543618;
            v127 = v121;
            v128 = 2112;
            v129 = v124;
            _os_log_debug_impl(&dword_22506F000, v118, OS_LOG_TYPE_DEBUG, "Not fetching PCS data for %{public}@ %@ from the network because a local only fetch was requested", &v126, 0x16u);
          }

          v104 = objc_msgSend_fetchError(self, v102, v103);
          v107 = objc_msgSend_domain(v104, v105, v106);
          v108 = *MEMORY[0x277CBC120];
          if (objc_msgSend_isEqualToString_(v107, v109, *MEMORY[0x277CBC120]))
          {
            v112 = objc_msgSend_fetchError(self, v110, v111);
            v115 = objc_msgSend_code(v112, v113, v114);

            if (v115 == 5010)
            {
              goto LABEL_79;
            }
          }

          else
          {
          }

          v46 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v116, v108, 5007, @"PCS fetch requested local cache only");
          objc_msgSend_setFetchError_(self, v117, v46);
LABEL_78:

LABEL_79:
          LOBYTE(v10) = 0;
          goto LABEL_37;
        }

        goto LABEL_60;
      }

LABEL_37:
      v61 = *MEMORY[0x277D85DE8];
      return v10;
    }

    goto LABEL_19;
  }

  if (v9 == 3)
  {
    v71 = objc_msgSend_fetchError(self, v7, v8);

    if (!v71)
    {
      v14 = self;
LABEL_60:
      objc_msgSend_setState_(v14, v12, 4);
      v96 = *MEMORY[0x277D85DE8];

      LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__createAdditionalPCS, v95);
      return v10;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v72 = *MEMORY[0x277CBC858];
    v10 = os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG);
    if (!v10)
    {
      goto LABEL_37;
    }

    v46 = v72;
    v49 = objc_msgSend_itemTypeName(self, v73, v74);
    v52 = objc_msgSend_itemID(self, v75, v76);
    v55 = objc_msgSend_fetchError(self, v77, v78);
    v126 = 138543874;
    v127 = v49;
    v128 = 2112;
    v129 = v52;
    v130 = 2112;
    v131 = v55;
    v56 = "Failed to fetch PCS data from the server for %{public}@ %@: %@";
    goto LABEL_48;
  }

  v43 = objc_msgSend_fetchError(self, v7, v8);

  if (v43)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v45 = *MEMORY[0x277CBC858];
    v10 = os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG);
    if (!v10)
    {
      goto LABEL_37;
    }

    v46 = v45;
    v49 = objc_msgSend_itemTypeName(self, v47, v48);
    v52 = objc_msgSend_itemID(self, v50, v51);
    v55 = objc_msgSend_fetchError(self, v53, v54);
    v126 = 138543874;
    v127 = v49;
    v128 = 2112;
    v129 = v52;
    v130 = 2112;
    v131 = v55;
    v56 = "Failed to save PCS data to the server for %{public}@ %@: %@";
    goto LABEL_48;
  }

  objc_msgSend_setState_(self, v44, 5);
  v100 = *MEMORY[0x277D85DE8];

  LOBYTE(v10) = MEMORY[0x2821F9670](self, sel__fetchDependentPCS, v99);
  return v10;
}

- (void)main
{
  objc_msgSend_hash(self, a2, v2);
  kdebug_trace();

  objc_msgSend_makeStateTransition_(self, v4, 0);
}

- (CKDPCSCacheFetchOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = CKDPCSCacheFetchOperation;
  v9 = [(CKDDatabaseOperation *)&v21 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_itemID(v6, v7, v8);
    v11 = *(v9 + 63);
    *(v9 + 63) = v10;

    v14 = objc_msgSend_cache(v6, v12, v13);
    v15 = *(v9 + 62);
    *(v9 + 62) = v14;

    *(v9 + 64) = objc_msgSend_options(v6, v16, v17);
    v18 = dispatch_group_create();
    v19 = *(v9 + 61);
    *(v9 + 61) = v18;

    dispatch_group_enter(*(v9 + 61));
  }

  return v9;
}

- (BOOL)canBeUsedForOperation:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if (!objc_msgSend_isNetworkingBehaviorEquivalentForOperation_(self, v7, v6))
  {
    goto LABEL_4;
  }

  v10 = objc_msgSend_databaseScope(v6, v8, v9);
  if (v10 != objc_msgSend_databaseScope(self, v11, v12))
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_container(v6, v13, v14);
  v18 = objc_msgSend_container(self, v16, v17);

  if (v15 != v18 || (v4 & 4) != 0 && (objc_msgSend_fetchOptions(self, v19, v20) & 4) == 0)
  {
    goto LABEL_4;
  }

  if (((v4 & 8) == 0 || (objc_msgSend_fetchOptions(self, v19, v20) & 8) != 0) && ((Options = objc_msgSend_fetchOptions(self, v19, v20), (v4 & 2) != 0) || (Options & 2) == 0) && ((v26 = objc_msgSend_fetchOptions(self, v24, v25), (v4 & 0x10) != 0) || (v26 & 0x10) == 0))
  {
    v21 = ((objc_msgSend_fetchOptions(self, v27, v28) ^ v4) & 0x1C00) == 0;
  }

  else
  {
LABEL_4:
    v21 = 0;
  }

  return v21;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 - 2 >= 7)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDPCSCacheFetchOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854B878[a3 - 2];
  }

  return v5;
}

- (BOOL)hasAllPCSData
{
  v3 = objc_msgSend_pcsData(self, a2, v2);
  v6 = objc_msgSend_pcs(v3, v4, v5) != 0;

  return v6;
}

- (void)_willRetryFetch
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numRetries(self, a2, v2);
  objc_msgSend_setNumRetries_(self, v5, (v4 + 1));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v14 = v6;
    v17 = objc_msgSend_operationID(self, v15, v16);
    v20 = objc_msgSend_numRetries(self, v18, v19);
    v23 = objc_msgSend_fetchError(self, v21, v22);
    v26 = objc_msgSend_dependentPCSFetchError(self, v24, v25);
    v27 = 138544130;
    v28 = v17;
    v29 = 1024;
    v30 = v20;
    v31 = 2112;
    v32 = v23;
    v33 = 2112;
    v34 = v26;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Retrying PCS fetch operation %{public}@ after failure %d with error %@, dependent PCS fetch error %@", &v27, 0x26u);
  }

  objc_msgSend_setFetchError_(self, v7, 0);
  objc_msgSend_setDependentPCSFetchError_(self, v8, 0);
  objc_msgSend_setPcsData_(self, v9, 0);
  objc_msgSend_setDidFetchData_(self, v10, 0);
  objc_msgSend_setWasFetchedFromCache_(self, v11, 0);
  objc_msgSend_setShouldRetry_(self, v12, 0);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_hash(self, v5, v6);
  kdebug_trace();
  v9 = objc_msgSend_error(self, v7, v8);

  if (!v9)
  {
    v12 = objc_msgSend_fetchError(self, v10, v11);
    objc_msgSend_setError_(self, v13, v12);
  }

  v14 = objc_msgSend_error(self, v10, v11);

  if (v14)
  {
    objc_msgSend_setPcsData_(self, v15, 0);
  }

  v19.receiver = self;
  v19.super_class = CKDPCSCacheFetchOperation;
  [(CKDOperation *)&v19 _finishOnCallbackQueueWithError:v4];
  v18 = objc_msgSend_fetchGroup(self, v16, v17);
  dispatch_group_leave(v18);
}

@end