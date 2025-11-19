void sub_22524B08C(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v12 = objc_msgSend_zoneID(v8, v10, v11);
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Warn: Failed to decrypt zone %@ with Reminders identity: %@", &v14, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22524B1C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pcs(*(*(*(a1 + 56) + 8) + 40), a2, a3);
  v9 = objc_msgSend_zoneishPCS(*(*(*(a1 + 56) + 8) + 40), v5, v6);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v10 = objc_msgSend_unitTestOverrides(*(a1 + 32), v7, v8);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"FailZonePCSDecryptionOnZoneFetch");

    if (v12)
    {
      v13 = objc_msgSend_dataUsingEncoding_(@"EncryptionBreaker", v7, 4);
      objc_msgSend_setProtectionData_(*(a1 + 40), v14, v13);

      v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 5004, @"Couldn't decode zone PCS data");
      v17 = *(*(a1 + 64) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v9 = 0;
      v4 = 0;
    }
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v46 = *(a1 + 40);
      v47 = v19;
      v50 = objc_msgSend_zoneID(v46, v48, v49);
      v51 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412546;
      v54 = v50;
      v55 = 2112;
      v56 = v51;
      _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "Error handling zone PCS for zone %@: %@", buf, 0x16u);
    }

    v22 = *(a1 + 32);
    v23 = objc_msgSend_zoneID(*(a1 + 40), v20, v21);
    objc_msgSend_setPCSData_forFetchedZoneID_(v22, v24, 0, v23);
  }

  else
  {
    objc_msgSend_setZonePCS_(*(a1 + 40), v7, v4);
    objc_msgSend_setZoneishPCS_(*(a1 + 40), v33, v9);
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v34 = *(a1 + 32);
    v35 = *(a1 + 40);
    v36 = *(*(a1 + 64) + 8);
    obj = *(v36 + 40);
    v38 = objc_msgSend__locked_checkAndUpdateZonePCSIfNeededForZone_error_(v34, v37, v35, &obj);
    objc_storeStrong((v36 + 40), obj);
    v39 = *(*(*(a1 + 64) + 8) + 40);
    if (v38)
    {
      if (!v39)
      {
        v40 = *(a1 + 40);
        v41 = objc_msgSend_zonesToSaveForPCSUpdateByZoneID(*(a1 + 32), v25, v26);
        v44 = objc_msgSend_zoneID(*(a1 + 40), v42, v43);
        objc_msgSend_setObject_forKeyedSubscript_(v41, v45, v40, v44);

        *(*(*(a1 + 72) + 8) + 24) = 0;
      }
    }

    else if (!v39)
    {
      objc_msgSend__cachePCSOnRecordZone_(*(a1 + 32), v25, *(a1 + 40));
    }
  }

  if (objc_msgSend_ignorePCSFailures(*(a1 + 32), v25, v26))
  {
    v29 = *(*(a1 + 64) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = 0;
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    objc_msgSend__locked_callbackForRecordZone_zoneID_error_(*(a1 + 32), v27, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 64) + 8) + 40));
  }

  v31 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v27, v28);
  dispatch_group_leave(v31);

  v32 = *MEMORY[0x277D85DE8];
}

void sub_22524B9E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22524BA58(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = [CKDAnonymousZoneDataObject alloc];
        v17 = objc_msgSend_initWithEncryptedData_(v15, v16, v14, v23);
        objc_msgSend_addObject_(v7, v18, v17);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v19, &v23, v27, 16);
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleAnonymousZoneDataObjects_responsecode_(WeakRetained, v21, v7, v6);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_22524BBC4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordZoneFetch_zoneID_responseCode_error_(WeakRetained, v13, v12, v11, v10, v9);
}

void sub_22524BC6C(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CBC560];
  v6 = *MEMORY[0x277CBC120];
  v7 = sub_2253962A4(v3);
  v10 = objc_msgSend_request(WeakRetained, v8, v9);
  v11 = sub_225395734(v10, v3);
  v14 = objc_msgSend_error(v3, v12, v13);

  v17 = objc_msgSend_errorDescription(v14, v15, v16);
  v19 = objc_msgSend_errorWithDomain_code_userInfo_format_(v5, v18, v6, v7, v11, @"Error fetching all record zones from server: %@", v17);

  v20 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = MEMORY[0x277CBC830];
  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v33 = v22;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v38 = objc_msgSend_ckShortDescription(WeakRetained, v36, v37);
    *buf = 138544130;
    v40 = v35;
    v41 = 2048;
    v42 = WeakRetained;
    v43 = 2114;
    v44 = v38;
    v45 = 2112;
    v46 = v19;
    _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Fetch record zones operation <%{public}@: %p; %{public}@> hit top-level error %@", buf, 0x2Au);
  }

  v25 = objc_msgSend_error(WeakRetained, v23, v24);

  if (v25)
  {
    if (*v20 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *v21;
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
    {
      v28 = v27;
      v31 = objc_msgSend_error(WeakRetained, v29, v30);
      *buf = 138412546;
      v40 = v19;
      v41 = 2112;
      v42 = v31;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Not propagating operation error: %@, in favor of preceding error: %@", buf, 0x16u);
    }
  }

  else
  {
    objc_msgSend_setError_(WeakRetained, v26, v19);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_22524BF3C(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = MEMORY[0x277CBC830];
  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = v6;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v31 = objc_msgSend_ckShortDescription(WeakRetained, v29, v30);
    v34 = objc_msgSend_error(v3, v32, v33);
    v35 = 138544130;
    v36 = v28;
    v37 = 2048;
    v38 = WeakRetained;
    v39 = 2114;
    v40 = v31;
    v41 = 2112;
    v42 = v34;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Fetch record zones operation <%{public}@: %p; %{public}@> request finished with error %@", &v35, 0x2Au);
  }

  v9 = objc_msgSend_error(WeakRetained, v7, v8);

  v12 = objc_msgSend_error(v3, v10, v11);
  v14 = v12;
  if (!v9)
  {
    objc_msgSend_setError_(WeakRetained, v13, v12);
    goto LABEL_12;
  }

  if (v14)
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      v14 = v17;
      v20 = objc_msgSend_error(v3, v18, v19);
      v23 = objc_msgSend_error(WeakRetained, v21, v22);
      v35 = 138412546;
      v36 = v20;
      v37 = 2112;
      v38 = v23;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Not propagating operation request error: %@, in favor of preceding error: %@", &v35, 0x16u);

LABEL_12:
    }
  }

  v24 = objc_msgSend_stateTransitionGroup(WeakRetained, v15, v16);
  dispatch_group_leave(v24);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22524CE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22524CE50(uint64_t a1, char a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v7, v8);
  v9 = *MEMORY[0x277CBC878];
  v10 = *MEMORY[0x277CBC880];
  if (v5 || (a2 & 1) == 0)
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = 138543618;
      v22 = v20;
      v23 = 2112;
      v24 = v5;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "User key sync to update signing identities failed for operation %{public}@: %@", &v21, 0x16u);
    }

    objc_msgSend_setError_(WeakRetained, v15, v5);
  }

  else
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v21 = 138543362;
      v22 = v13;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "User key sync to update signing identities succeeded for operation %{public}@", &v21, 0xCu);
    }
  }

  objc_msgSend_setDidSynchronizeSigningIdentities_(WeakRetained, v12, 1);
  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v16, v17);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22524D388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22524D3B8(uint64_t a1, char a2, void *a3, void *a4)
{
  v104 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v10, v11);
  v12 = MEMORY[0x277CBC878];
  v13 = *MEMORY[0x277CBC878];
  v14 = MEMORY[0x277CBC880];
  v15 = *MEMORY[0x277CBC880];
  if (!v7 && (a2 & 1) != 0)
  {
    if (v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v13);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      *buf = 138543362;
      v101 = v19;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "User key sync succeeded for operation %{public}@", buf, 0xCu);
    }

    v20 = objc_msgSend_container(WeakRetained, v17, v18);
    v23 = objc_msgSend_pcsManager(v20, v21, v22);
    v25 = objc_msgSend_currentIdentityPublicKeyIDForServiceType_error_(v23, v24, 0, 0);

    if (v25 && (objc_msgSend_isEqualToString_(v25, v26, *(a1 + 48)) & 1) == 0)
    {
      v72 = objc_msgSend_container(WeakRetained, v26, v27);
      v75 = objc_msgSend_pcsManager(v72, v73, v74);
      v78 = objc_msgSend_identityManager(v75, v76, v77);
      v37 = objc_msgSend_PCSServiceStringFromCKServiceType_(v78, v79, 0);

      if (*v14 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v80 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v101 = v37;
        v102 = 2112;
        v103 = v25;
        _os_log_debug_impl(&dword_22506F000, v80, OS_LOG_TYPE_DEBUG, "The service %@ has a new current identity with public key ID: %@", buf, 0x16u);
      }

      objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v81, &unk_28385D820);
    }

    else
    {
      if (*(a1 + 64) != 1 || !objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(*(a1 + 40), v26, v27))
      {
        goto LABEL_44;
      }

      v29 = objc_msgSend_container(WeakRetained, v26, v28);
      v32 = objc_msgSend_pcsManager(v29, v30, v31);
      v35 = objc_msgSend_identityManager(v32, v33, v34);
      v37 = objc_msgSend_PCSServiceStringFromCKServiceType_(v35, v36, 0);

      if (*v14 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v38 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v101 = v37;
        _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "User key sync did not populate the current identity for the service %@", buf, 0xCu);
      }

      objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v39, &unk_28385D840);
      objc_msgSend_setError_(WeakRetained, v40, 0);
    }

LABEL_44:
    objc_msgSend_setDidSynchronizeUserKeyRegistry_(WeakRetained, v26, 1);
    v84 = objc_msgSend_zonesWaitingOnKeyRegistrySync(WeakRetained, v82, v83);
    objc_msgSend_removeAllObjects(v84, v85, v86);

    goto LABEL_45;
  }

  if (v15 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v13);
  }

  v41 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v43 = *(a1 + 32);
    *buf = 138543618;
    v101 = v43;
    v102 = 2112;
    v103 = v7;
    _os_log_impl(&dword_22506F000, v41, OS_LOG_TYPE_INFO, "User key sync failed for operation %{public}@ with error %@", buf, 0x16u);
  }

  objc_msgSend_setDidSynchronizeUserKeyRegistry_(WeakRetained, v42, 0);
  v46 = objc_msgSend_container(WeakRetained, v44, v45);
  v49 = objc_msgSend_pcsManager(v46, v47, v48);
  IsManatee = objc_msgSend_currentServiceIsManatee(v49, v50, v51);

  if (IsManatee)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v55 = objc_msgSend_zonesWaitingOnKeyRegistrySync(WeakRetained, v53, v54, 0);
    v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v95, v99, 16);
    if (v57)
    {
      v60 = v57;
      v61 = *v96;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v96 != v61)
          {
            objc_enumerationMutation(v55);
          }

          v63 = *(*(&v95 + 1) + 8 * i);
          v64 = objc_msgSend_retryableErrorsByZoneID(WeakRetained, v58, v59);
          objc_msgSend_setObject_forKeyedSubscript_(v64, v65, v7, v63);
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v58, &v95, v99, 16);
      }

      while (v60);
    }

    v12 = MEMORY[0x277CBC878];
    v14 = MEMORY[0x277CBC880];
  }

  if (objc_msgSend_isCloudCoreSessionNoLongerValidError(v7, v53, v54))
  {
    goto LABEL_30;
  }

  objc_msgSend_setError_(v8, v66, v7);
  objc_msgSend_setOverallResult_(v8, v68, @"failure");
  if (*(a1 + 64) == 1 && objc_msgSend_needsUserKeySyncToPopulateServiceIdentity(*(a1 + 40), v67, v69))
  {
    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v12);
    }

    v70 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v91 = v70;
      v94 = objc_msgSend_operationID(WeakRetained, v92, v93);
      *buf = 138412290;
      v101 = v94;
      _os_log_error_impl(&dword_22506F000, v91, OS_LOG_TYPE_ERROR, "Failing operation %@ due to the failed user key sync.", buf, 0xCu);
    }

    objc_msgSend_updateCloudKitMetrics_(*(a1 + 40), v71, &unk_28385D800);
LABEL_30:
    objc_msgSend_setError_(WeakRetained, v66, v7);
  }

LABEL_45:
  objc_msgSend_setKeySyncAnalytics_(WeakRetained, v67, v8);
  v89 = objc_msgSend_stateTransitionGroup(WeakRetained, v87, v88);
  dispatch_group_leave(v89);

  v90 = *MEMORY[0x277D85DE8];
}

void sub_22524D9D4(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_22524DA1C(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_identitiesRolledOnZoneSave(v6, v2, v3);
  objc_msgSend_setIdentitiesRolledOnZoneSave_(v6, v5, v4 + 1);
}

void sub_22524DA64(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_failedIdentityRollAttempts(v6, v2, v3);
  objc_msgSend_setFailedIdentityRollAttempts_(v6, v5, v4 + 1);
}

void sub_22524E418(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v10 = objc_msgSend_saveCompletionBlock(*(a1 + 32), v5, v6);
    v9 = objc_msgSend_zoneID(*(a1 + 40), v7, v8);
    (*(v10 + 2))(v10, v9, 0, *(a1 + 48));
  }
}

void sub_22524F1EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22524F22C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_saveCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), 0);
  }
}

void sub_22524F2B4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Failed to remove anonymous share. error: %@", &v10, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v8);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22524F3C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_saveCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }
}

void sub_22524F774(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_deleteCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_deleteCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_22524FFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 - 144));
  _Unwind_Resume(a1);
}

void sub_225250008(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v24 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v19 = WeakRetained;
  if (WeakRetained)
  {
    v20 = objc_msgSend_recordZonesByZoneID(WeakRetained, v17, v18);
    v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v24);

    if (v22)
    {
      objc_msgSend__handleRecordZoneSaved_responseCode_serverCapabilities_expirationDate_expired_etag_(v19, v23, v24, v13, a4, v14, a6, v15);
    }

    else
    {
      objc_msgSend__handleRecordZoneDeleted_responseCode_(v19, v23, v24, v13);
    }
  }
}

void sub_22525010C(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v6 = objc_msgSend_error(v3, v4, v5);

    if (!v6)
    {
LABEL_19:
      v29 = objc_msgSend_stateTransitionGroup(WeakRetained, v7, v8);
      dispatch_group_leave(v29);

      goto LABEL_20;
    }

    v9 = objc_msgSend_error(v3, v7, v8);
    if ((objc_msgSend_needsSynchronizeSigningIdentities(WeakRetained, v10, v11) & 1) == 0)
    {
      v16 = objc_msgSend_domain(v9, v12, v13);
      if (v16 == *MEMORY[0x277CBC120] && objc_msgSend_code(v9, v14, v15) == 5000)
      {
        v19 = objc_msgSend_description(v9, v17, v18);
        v22 = objc_msgSend_lowercaseString(v19, v20, v21);
        v24 = objc_msgSend_containsString_(v22, v23, @"failed to create cryptographic signature");

        if (v24)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v25 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v31 = 138412290;
            v32 = v9;
            _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Signing identity missing when modifying record zones: %@", &v31, 0xCu);
          }

          objc_msgSend_setNeedsSynchronizeSigningIdentities_(WeakRetained, v26, 1);
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v31 = 138412290;
      v32 = v9;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Error modifying record zones: %@", &v31, 0xCu);
    }

    objc_msgSend_setError_(WeakRetained, v28, v9);
    goto LABEL_18;
  }

LABEL_20:

  v30 = *MEMORY[0x277D85DE8];
}

void sub_225250C9C(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 32);
      v29 = v14;
      v32 = objc_msgSend_parent(v28, v30, v31);
      v35 = objc_msgSend_zoneID(v32, v33, v34);
      *buf = 138412546;
      v38 = v35;
      v39 = 2112;
      v40 = v8;
      _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Failed fetching parent PCS for zone's parent %@: %@", buf, 0x16u);
    }

    v17 = MEMORY[0x277CBC560];
    v18 = *MEMORY[0x277CBC120];
    v19 = objc_msgSend_zoneID(*(a1 + 32), v15, v16);
    v11 = objc_msgSend_errorWithDomain_code_userInfo_format_(v17, v20, v18, 5005, 0, @"Unable to fetch parent zone's PCS for zone %@. Ensure the parent zone is saved in the same batch or already exists on the server.", v19);

    objc_msgSend_setError_(*(a1 + 40), v21, v11);
  }

  else
  {
    v9 = objc_msgSend__addParentPCS_toZonePCS_(*(a1 + 40), v7, v5, *(a1 + 48));
    if (v9)
    {
      v11 = v9;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v12 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v11;
        v13 = "Error adding fetched parent PCS to child zone's PCS: %@";
LABEL_21:
        _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, v13, buf, 0xCu);
      }
    }

    else
    {
      v25 = *(a1 + 32);
      v24 = *(a1 + 40);
      v26 = *(a1 + 48);
      v36 = 0;
      updated = objc_msgSend__updateZone_withNewPCS_error_(v24, v10, v25, v26, &v36);
      v11 = v36;
      if ((updated & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v12 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v38 = v11;
          v13 = "Error updating zone with new PCS: %@";
          goto LABEL_21;
        }
      }
    }
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))();
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_225251390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2252513F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v7, v8);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void sub_2252514A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v148 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_pcs(*(*(*(a1 + 64) + 8) + 40), a2, a3);
  v7 = 0x277CBC000uLL;
  v8 = MEMORY[0x277CBC120];
  if (*MEMORY[0x277CBC810] != 1)
  {
    goto LABEL_8;
  }

  v9 = objc_msgSend_deviceContext(*(a1 + 32), v4, v5);
  v12 = objc_msgSend_testDeviceReference(v9, v10, v11);
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_zoneID(*(a1 + 40), v13, v14);
    v19 = objc_msgSend_zoneName(v16, v17, v18);
    isEqualToString = objc_msgSend_isEqualToString_(v19, v20, @"NO_ZONE_PCS_FOR_YOU");

    if (!isEqualToString)
    {
      goto LABEL_6;
    }

    v24 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v22, *v8, 5005, @"Couldn't create a new PCSShareProtectionRef because unit testing");
    v25 = *(*(a1 + 72) + 8);
    v9 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

LABEL_6:
  v26 = objc_msgSend_unitTestOverrides(*(a1 + 48), v22, v23);
  v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"ForceAddCKIdentityToZonePCS");

  if (v28)
  {
    v29 = objc_msgSend_pcsManager(*(a1 + 32), v4, v5);
    v31 = objc_msgSend_addIdentityForService_toPCS_(v29, v30, 3, v6);
    v32 = *(*(a1 + 72) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;
  }

LABEL_8:
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v73 = *(a1 + 40);
      v74 = v34;
      v77 = objc_msgSend_zoneID(v73, v75, v76);
      v78 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412546;
      v145 = v77;
      v146 = 2112;
      v147 = v78;
      _os_log_error_impl(&dword_22506F000, v74, OS_LOG_TYPE_ERROR, "Couldn't create a PCS object for the zone %@: %@", buf, 0x16u);
    }

    v37 = 0;
    v38 = 0;
    goto LABEL_53;
  }

  v39 = objc_msgSend_pcsManager(*(a1 + 32), v4, v5);
  v40 = *(*(a1 + 72) + 8);
  obj = *(v40 + 40);
  v38 = objc_msgSend_dataFromZonePCS_error_(v39, v41, v6, &obj);
  objc_storeStrong((v40 + 40), obj);

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v43 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v123 = *(a1 + 40);
      v124 = v43;
      v127 = objc_msgSend_zoneID(v123, v125, v126);
      v128 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412546;
      v145 = v127;
      v146 = 2112;
      v147 = v128;
      _os_log_error_impl(&dword_22506F000, v124, OS_LOG_TYPE_ERROR, "Error creating PCS data for zone %@: %@", buf, 0x16u);
    }

    v37 = 0;
    goto LABEL_53;
  }

  if (!objc_msgSend__shouldUseZoneishPCSForZone_(*(a1 + 48), v42, *(a1 + 40)))
  {
    v37 = 0;
    v49 = 0;
    goto LABEL_28;
  }

  v46 = objc_msgSend_pcsManager(*(a1 + 32), v44, v45);
  v47 = *(*(a1 + 72) + 8);
  v142 = *(v47 + 40);
  v49 = objc_msgSend_createRecordPCSWithZonePCS_sharePCS_createLite_error_(v46, v48, v6, 0, 0, &v142);
  objc_storeStrong((v47 + 40), v142);

  v50 = MEMORY[0x277CBC878];
  v51 = *MEMORY[0x277CBC878];
  v52 = MEMORY[0x277CBC880];
  v53 = *MEMORY[0x277CBC880];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v51);
    }

    v8 = MEMORY[0x277CBC120];
    v54 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v129 = *(a1 + 40);
      v130 = v54;
      v133 = objc_msgSend_zoneID(v129, v131, v132);
      v134 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412546;
      v145 = v133;
      v146 = 2112;
      v147 = v134;
      _os_log_error_impl(&dword_22506F000, v130, OS_LOG_TYPE_ERROR, "Couldn't create a zoneish PCS for zone %@: %@", buf, 0x16u);
    }

    v55 = 0;
    v37 = 0;
    goto LABEL_49;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v51);
  }

  v96 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v99 = *(a1 + 40);
    v100 = v96;
    v103 = objc_msgSend_zoneID(v99, v101, v102);
    v105 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v104, v49);
    v108 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v105, v106, v107);
    *buf = 138412546;
    v145 = v103;
    v146 = 2112;
    v147 = v108;
    _os_log_impl(&dword_22506F000, v100, OS_LOG_TYPE_INFO, "Created zoneish PCS for zone %@ with key %@", buf, 0x16u);

    v7 = 0x277CBC000;
  }

  v109 = objc_msgSend_pcsManager(*(a1 + 32), v97, v98);
  v110 = *(*(a1 + 72) + 8);
  v141 = *(v110 + 40);
  v37 = objc_msgSend_dataFromRecordPCS_error_(v109, v111, v49, &v141);
  objc_storeStrong((v110 + 40), v141);

  if (v37 && !*(*(*(a1 + 72) + 8) + 40))
  {
LABEL_28:
    v56 = objc_msgSend_deviceContext(*(a1 + 32), v44, v45);
    v59 = objc_msgSend_testDeviceReference(v56, v57, v58);
    if (v59)
    {
      v62 = v59;
      v63 = objc_msgSend_zoneID(*(a1 + 40), v60, v61);
      v66 = objc_msgSend_zoneName(v63, v64, v65);
      v68 = objc_msgSend_isEqualToString_(v66, v67, @"NO_ZONE_PCS_FOR_SERVER");

      if (v68)
      {
        objc_msgSend_setProtectionData_(*(a1 + 40), v69, 0);
        objc_msgSend_setProtectionEtag_(*(a1 + 40), v70, 0);
        objc_msgSend_setPreviousProtectionEtag_(*(a1 + 40), v71, 0);
        objc_msgSend_setZoneishProtectionData_(*(a1 + 40), v72, 0);
        v55 = 1;
        v7 = 0x277CBC000;
        v8 = MEMORY[0x277CBC120];
        goto LABEL_49;
      }
    }

    else
    {
    }

    objc_msgSend_setProtectionData_(*(a1 + 40), v69, v38);
    v81 = objc_msgSend_protectionData(*(a1 + 40), v79, v80);
    v83 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v82, v81);
    objc_msgSend_setProtectionEtag_(*(a1 + 40), v84, v83);

    v87 = objc_msgSend_deviceContext(*(a1 + 32), v85, v86);
    v90 = objc_msgSend_testDeviceReference(v87, v88, v89);
    if (v90)
    {
      v93 = v90;
      v94 = objc_msgSend_previousProtectionEtag(*(a1 + 40), v91, v92);

      v8 = MEMORY[0x277CBC120];
      if (v94)
      {
LABEL_48:
        objc_msgSend_setZoneishProtectionData_(*(a1 + 40), v95, v37);
        objc_msgSend_setZonePCS_(*(a1 + 40), v113, v6);
        objc_msgSend_setZoneishPCS_(*(a1 + 40), v114, v49);
        v55 = 1;
        v7 = 0x277CBC000;
        goto LABEL_49;
      }
    }

    else
    {

      v8 = MEMORY[0x277CBC120];
    }

    objc_msgSend_setPreviousProtectionEtag_(*(a1 + 40), v95, 0);
    goto LABEL_48;
  }

  if (*v52 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *v50);
  }

  v8 = MEMORY[0x277CBC120];
  v112 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    v135 = *(a1 + 40);
    v136 = v112;
    v139 = objc_msgSend_zoneID(v135, v137, v138);
    v140 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138412546;
    v145 = v139;
    v146 = 2112;
    v147 = v140;
    _os_log_error_impl(&dword_22506F000, v136, OS_LOG_TYPE_ERROR, "Couldn't create data from zoneish PCS for zone %@: %@", buf, 0x16u);
  }

  v55 = 0;
LABEL_49:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v55)
  {
    v115 = 0;
    goto LABEL_54;
  }

LABEL_53:
  v116 = *(v7 + 1376);
  v117 = *v8;
  v118 = *(*(*(a1 + 72) + 8) + 40);
  v119 = objc_msgSend_zoneID(*(a1 + 40), v35, v36);
  v115 = objc_msgSend_errorWithDomain_code_error_format_(v116, v120, v117, 5005, v118, @"Couldn't create new PCS blob for zone %@", v119);

LABEL_54:
  v121 = *(a1 + 56);
  if (v121)
  {
    (*(v121 + 16))(v121, v115);
  }

  v122 = *MEMORY[0x277D85DE8];
}

void sub_225251FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_225252000(uint64_t a1, void *a2, void *a3)
{
  v197 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (v5)
  {
    v9 = MEMORY[0x277CBC880];
    v184 = v6;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = v10;
      v17 = objc_msgSend_zoneID(v13, v15, v16);
      *buf = 138412290;
      v194 = v17;
      _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Fetched pcs info for zone %@. Continuing with save for that zone.", buf, 0xCu);
    }

    v18 = objc_msgSend_pcsData(v5, v11, v12);
    v21 = objc_msgSend_etag(v5, v19, v20);
    if (objc_msgSend_hasUpdatedParent(*(a1 + 32), v22, v23))
    {
      if (*v9 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v26 = MEMORY[0x277CBC830];
      v27 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v164 = v27;
        v167 = objc_msgSend_zoneID(v5, v165, v166);
        *buf = 138412290;
        v194 = v167;
        _os_log_debug_impl(&dword_22506F000, v164, OS_LOG_TYPE_DEBUG, "Removing previous parent zone from zone %@", buf, 0xCu);
      }

      v30 = objc_msgSend_container(*(a1 + 40), v28, v29);
      v33 = objc_msgSend_pcsManager(v30, v31, v32);
      v36 = objc_msgSend_pcs(v5, v34, v35);
      v192 = 0;
      v38 = objc_msgSend_removeParentZonePCSFromChildZonePCS_error_(v33, v37, v36, &v192);
      v39 = v192;

      if ((v38 & 1) == 0)
      {
        if (*v9 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v40 = *v26;
        if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
        {
          v168 = v40;
          v171 = objc_msgSend_zoneID(v5, v169, v170);
          *buf = 138412546;
          v194 = v171;
          v195 = 2112;
          v196 = v39;
          _os_log_error_impl(&dword_22506F000, v168, OS_LOG_TYPE_ERROR, "Error removing parent PCS from zone PCS %@: %@", buf, 0x16u);
        }

        if (!*(*(*(a1 + 64) + 8) + 40))
        {
          v43 = MEMORY[0x277CBC560];
          v44 = *MEMORY[0x277CBC120];
          v45 = objc_msgSend_zoneID(v5, v41, v42);
          v47 = objc_msgSend_errorWithDomain_code_error_format_(v43, v46, v44, 5001, v39, @"Couldn't remove previous parent PCS data from zone %@", v45);
          v48 = *(*(a1 + 64) + 8);
          v49 = *(v48 + 40);
          *(v48 + 40) = v47;
        }
      }
    }

    if ((objc_msgSend_hasUpdatedParent(*(a1 + 32), v24, v25) & 1) != 0 || !v18)
    {
      v52 = objc_msgSend_container(*(a1 + 40), v50, v51);
      v55 = objc_msgSend_pcsManager(v52, v53, v54);
      v58 = objc_msgSend_pcs(v5, v56, v57);
      v59 = *(*(a1 + 64) + 8);
      obj = *(v59 + 40);
      v61 = objc_msgSend_dataFromZonePCS_error_(v55, v60, v58, &obj);
      objc_storeStrong((v59 + 40), obj);

      v63 = objc_msgSend_etagFromPCSData_(CKDPCSManager, v62, v61);

      v21 = v63;
      v18 = v61;
    }

    objc_msgSend_setProtectionData_(*(a1 + 32), v50, v18);
    objc_msgSend_setProtectionEtag_(*(a1 + 32), v64, v21);
    v67 = objc_msgSend_etag(v5, v65, v66);
    v70 = objc_msgSend_container(*(a1 + 40), v68, v69);
    v73 = objc_msgSend_deviceContext(v70, v71, v72);
    v76 = objc_msgSend_testDeviceReference(v73, v74, v75);
    if (v76)
    {
      v79 = v76;
      v80 = v9;
      v81 = objc_msgSend_previousProtectionEtag(*(a1 + 32), v77, v78);

      if (v81)
      {
        v70 = objc_msgSend_previousProtectionEtag(*(a1 + 32), v82, v83);

        if (objc_msgSend_isEqualToString_(v70, v84, @"NO_ETAG_FOR_YOU"))
        {
          v67 = 0;
          v9 = v80;
LABEL_31:

LABEL_34:
          objc_msgSend_setPreviousProtectionEtag_(*(a1 + 32), v82, v67);
          v93 = objc_msgSend_pcs(v5, v91, v92);
          objc_msgSend_setZonePCS_(*(a1 + 32), v94, v93);
          v97 = objc_msgSend_zonePCSModificationDate(v5, v95, v96);
          objc_msgSend_setZonePCSModificationDate_(*(a1 + 32), v98, v97);

          v101 = objc_msgSend_zoneishPCS(v5, v99, v100);
          v104 = objc_msgSend_zoneishPCSData(v5, v102, v103);
          if (v101 | v104)
          {
            v106 = v104;
            objc_msgSend__setEncryptionScopeNoSideEffects_(*(a1 + 32), v105, 1);
            if (v101 && !v106)
            {
              v109 = objc_msgSend_container(*(a1 + 40), v107, v108);
              v112 = objc_msgSend_pcsManager(v109, v110, v111);
              v113 = *(*(a1 + 64) + 8);
              v190 = *(v113 + 40);
              v106 = objc_msgSend_dataFromRecordPCS_error_(v112, v114, v101, &v190);
              objc_storeStrong((v113 + 40), v190);
            }

            objc_msgSend_setZoneishPCS_(*(a1 + 32), v107, v101);
          }

          else if (objc_msgSend__shouldUseZoneishPCSForZone_(*(a1 + 40), v105, *(a1 + 32)))
          {
            v117 = objc_msgSend_container(*(a1 + 40), v115, v116);
            v120 = objc_msgSend_pcsManager(v117, v118, v119);
            v123 = objc_msgSend_pcs(v5, v121, v122);
            v124 = *(*(a1 + 64) + 8);
            v189 = *(v124 + 40);
            v126 = objc_msgSend_createRecordPCSWithZonePCS_sharePCS_createLite_error_(v120, v125, v123, 0, 0, &v189);
            objc_storeStrong((v124 + 40), v189);

            if (!v126 || *(*(*(a1 + 64) + 8) + 40))
            {
              if (*v9 != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v127 = *MEMORY[0x277CBC858];
              if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
              {
                v172 = *(a1 + 32);
                v173 = v127;
                v176 = objc_msgSend_zoneID(v172, v174, v175);
                v177 = *(*(*(a1 + 64) + 8) + 40);
                *buf = 138412546;
                v194 = v176;
                v195 = 2112;
                v196 = v177;
                _os_log_error_impl(&dword_22506F000, v173, OS_LOG_TYPE_ERROR, "Couldn't create a per-zone PCS for zone %@: %@", buf, 0x16u);
              }

              if (!*(*(*(a1 + 64) + 8) + 40))
              {
                v129 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v128, *MEMORY[0x277CBC120], 5005, @"Couldn't create a per-zone PCS for zone");
                v130 = *(*(a1 + 64) + 8);
                v131 = *(v130 + 40);
                *(v130 + 40) = v129;
              }
            }

            if (*v9 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v132 = *MEMORY[0x277CBC858];
            if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
            {
              v135 = *(a1 + 32);
              v136 = v132;
              v139 = objc_msgSend_zoneID(v135, v137, v138);
              v141 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v140, v126);
              v144 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v141, v142, v143);
              *buf = 138412546;
              v194 = v139;
              v195 = 2112;
              v196 = v144;
              _os_log_impl(&dword_22506F000, v136, OS_LOG_TYPE_INFO, "Created per-zone PCS for zone %@ with key %@", buf, 0x16u);
            }

            v145 = objc_msgSend_container(*(a1 + 40), v133, v134);
            v148 = objc_msgSend_pcsManager(v145, v146, v147);
            v149 = *(*(a1 + 64) + 8);
            v188 = *(v149 + 40);
            v106 = objc_msgSend_dataFromRecordPCS_error_(v148, v150, v126, &v188);
            objc_storeStrong((v149 + 40), v188);

            if (!v106 || *(*(*(a1 + 64) + 8) + 40))
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v152 = *MEMORY[0x277CBC858];
              if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
              {
                v178 = *(a1 + 32);
                v179 = v152;
                v182 = objc_msgSend_zoneID(v178, v180, v181);
                v183 = *(*(*(a1 + 64) + 8) + 40);
                *buf = 138412546;
                v194 = v182;
                v195 = 2112;
                v196 = v183;
                _os_log_error_impl(&dword_22506F000, v179, OS_LOG_TYPE_ERROR, "Couldn't create data from per-zone PCS for zone %@: %@", buf, 0x16u);
              }

              if (!*(*(*(a1 + 64) + 8) + 40))
              {
                v153 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v151, *MEMORY[0x277CBC120], 5005, @"Couldn't serialize a per-zone PCS for zone");
                v154 = *(*(a1 + 64) + 8);
                v155 = *(v154 + 40);
                *(v154 + 40) = v153;
              }
            }

            objc_msgSend_setZoneishPCS_(*(a1 + 32), v151, v126);
            if (v126)
            {
              CFRelease(v126);
            }
          }

          else
          {
            v106 = 0;
          }

          objc_msgSend_setZoneishProtectionData_(*(a1 + 32), v115, v106);

          v6 = v184;
          goto LABEL_64;
        }

        v67 = v70;
      }

      v9 = v80;
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v85 = *(*(*(a1 + 56) + 8) + 40);
  if (v85 && !objc_msgSend_CKIsNotFoundError(v85, v7, v8))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v157 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v158 = *(a1 + 32);
      v159 = v157;
      v162 = objc_msgSend_zoneID(v158, v160, v161);
      v163 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412546;
      v194 = v162;
      v195 = 2112;
      v196 = v163;
      _os_log_impl(&dword_22506F000, v159, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS data for zone %@: %@. Refusing to save zone.", buf, 0x16u);
    }
  }

  else if (objc_msgSend_databaseScope(*(a1 + 40), v7, v8) == 2)
  {
    dispatch_group_enter(*(a1 + 48));
    v87 = *(a1 + 32);
    v86 = *(a1 + 40);
    v185[0] = MEMORY[0x277D85DD0];
    v185[1] = 3221225472;
    v185[2] = sub_225252B4C;
    v185[3] = &unk_278548040;
    v187 = *(a1 + 64);
    v186 = *(a1 + 48);
    objc_msgSend__createNewPCSForZone_completionHandler_(v86, v88, v87, v185);
    v89 = *(*(a1 + 56) + 8);
    v90 = *(v89 + 40);
    *(v89 + 40) = 0;
  }

LABEL_64:
  dispatch_group_leave(*(a1 + 48));

  v156 = *MEMORY[0x277D85DE8];
}

void sub_225252B4C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_225252BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a1 + 56) + 8) + 40);
  if (v4)
  {
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    if (v6)
    {
      if (!objc_msgSend_CKIsNotFoundError(v6, v4, a3))
      {
        goto LABEL_6;
      }

      v4 = *(*(*(a1 + 56) + 8) + 40);
      v5 = *(*(a1 + 64) + 8);
    }

    objc_storeStrong((v5 + 40), v4);
  }

LABEL_6:
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = v7;
      v14 = objc_msgSend_zoneID(v10, v12, v13);
      v15 = *(*(*(a1 + 64) + 8) + 40);
      v32 = 138412546;
      v33 = v14;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Not saving zone %@ due to a PCS error: %@", &v32, 0x16u);
    }

    v16 = objc_msgSend_recordZonesToSave(*(a1 + 40), v8, v9);
    objc_sync_enter(v16);
    v19 = objc_msgSend_recordZonesToSave(*(a1 + 40), v17, v18);
    objc_msgSend_removeObject_(v19, v20, *(a1 + 32));

    objc_sync_exit(v16);
    v23 = objc_msgSend_saveCompletionBlock(*(a1 + 40), v21, v22);

    if (v23)
    {
      v26 = objc_msgSend_saveCompletionBlock(*(a1 + 40), v24, v25);
      v29 = objc_msgSend_zoneID(*(a1 + 32), v27, v28);
      (v26)[2](v26, v29, *(a1 + 32), *(*(*(a1 + 64) + 8) + 40));
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2252533B4(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = a1;
  v3 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v34, v38, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = objc_msgSend_parent(v11, v6, v7);
        if (v12)
        {
          v13 = v12;
          v14 = objc_msgSend_parent(v11, v6, v7);
          v17 = objc_msgSend_zoneID(v14, v15, v16);

          if (v17)
          {
            dispatch_group_enter(v2);
            v18 = *(v27 + 40);
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = sub_225253678;
            v32[3] = &unk_278545A00;
            v33 = v2;
            objc_msgSend__handleParentPCSForZone_completion_(v18, v19, v11, v32);
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v34, v38, 16);
    }

    while (v8);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v20 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Waiting to fetch parent zone PCS data", buf, 2u);
  }

  v23 = objc_msgSend_callbackQueue(*(v27 + 40), v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225253680;
  block[3] = &unk_278545898;
  v24 = *(v27 + 32);
  v25 = *(v27 + 40);
  v29 = v24;
  v30 = v25;
  dispatch_group_notify(v2, v23, block);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_225253680(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v11 = 134217984;
    v12 = objc_msgSend_count(v5, v7, v8);
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Completed fetching all PCS data (including parent PCS) for %ld zones.", &v11, 0xCu);
  }

  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v3, v4);
  dispatch_group_leave(v9);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_225253DBC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_saveCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v10 = objc_msgSend_saveCompletionBlock(*(a1 + 32), v5, v6);
    v9 = objc_msgSend_zoneID(*(a1 + 40), v7, v8);
    (*(v10 + 2))(v10, v9, *(a1 + 40), *(a1 + 48));
  }
}

void sub_225254B00(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = v2;
    v19 = objc_msgSend_record(WeakRetained, v17, v18);
    v22 = objc_msgSend_recordID(v19, v20, v21);
    v23 = 138412290;
    v24 = v22;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Decrypt of record %@ is complete", &v23, 0xCu);
  }

  v5 = objc_msgSend_callback(WeakRetained, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_callback(WeakRetained, v6, v7);
    v11 = objc_msgSend_record(WeakRetained, v9, v10);
    v14 = objc_msgSend_error(WeakRetained, v12, v13);
    (v8)[2](v8, v11, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2252550CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225255104(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend__recordInfoWasDecrypted_nextSteps_(v2, v3, WeakRetained, *(a1 + 40));
}

void sub_2252562EC(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a1 + 32);
    v38 = v9;
    v41 = objc_msgSend_recordID(v37, v39, v40);
    v42 = @" with error: ";
    v43 = &stru_28385ED00;
    *buf = 138412802;
    v45 = v41;
    if (v6)
    {
      v43 = v6;
    }

    else
    {
      v42 = &stru_28385ED00;
    }

    v46 = 2114;
    v47 = v42;
    v48 = 2112;
    v49 = v43;
    _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Got PCS data from fetched share %@%{public}@%@", buf, 0x20u);
  }

  if (objc_msgSend_pcs(v5, v10, v11))
  {
    v13 = objc_msgSend__decryptRecordPCSForRecord_usingSharePCS_(*(a1 + 40), v12, *(a1 + 32), v5);
    objc_msgSend_setError_(*(a1 + 48), v14, v13);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      v21 = v17;
      v24 = objc_msgSend_share(v20, v22, v23);
      v27 = objc_msgSend_recordID(v24, v25, v26);
      *buf = 138412290;
      v45 = v27;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Couldn't get a PCS for our current share %@", buf, 0xCu);
    }

    v28 = *(a1 + 40);
    v29 = objc_msgSend_recordID(*(a1 + 32), v18, v19);
    v32 = objc_msgSend_recordID(*(a1 + 32), v30, v31);
    v13 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v28, v33, v6, v29, 5001, @"Record %@ has items that require encryption but no share protection data was found", v32);

    objc_msgSend_setError_(*(a1 + 48), v34, v13);
  }

  v35 = objc_msgSend_decryptGroup(*(a1 + 48), v15, v16);
  dispatch_group_leave(v35);

  v36 = *MEMORY[0x277D85DE8];
}

void sub_225256590(void **a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v37 = a1[4];
    log = v9;
    v40 = objc_msgSend_recordID(v37, v38, v39);
    v43 = objc_msgSend_recordID(a1[4], v41, v42);
    v46 = objc_msgSend_zoneID(v43, v44, v45);
    v49 = objc_msgSend_etag(v5, v47, v48);
    *buf = 134219010;
    v52 = v37;
    v53 = 2112;
    v54 = v40;
    v55 = 2112;
    v56 = v46;
    v57 = 2114;
    v58 = v49;
    v59 = 2112;
    v60 = v6;
    _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Fetched zone PCS data. Record %p recordID %@ zoneID %@ zone PCS etag %{public}@%@", buf, 0x34u);
  }

  if (objc_msgSend_pcs(v5, v10, v11))
  {
    v13 = objc_msgSend__decryptRecordPCSForRecord_usingZonePCS_(a1[5], v12, a1[4], v5);
    objc_msgSend_setError_(a1[6], v14, v13);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v20 = a1[4];
      v21 = v17;
      v24 = objc_msgSend_recordID(v20, v22, v23);
      v27 = objc_msgSend_zoneID(v24, v25, v26);
      *buf = 138412290;
      v52 = v27;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Couldn't fetch a PCS for zone %@", buf, 0xCu);
    }

    v28 = a1[5];
    v29 = objc_msgSend_recordID(a1[4], v18, v19);
    v32 = objc_msgSend_recordID(a1[4], v30, v31);
    v13 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v28, v33, v6, v29, 5001, @"Record %@ has items that require encryption but no zone protection data was found", v32);

    objc_msgSend_setError_(a1[6], v34, v13);
  }

  v35 = objc_msgSend_decryptGroup(a1[6], v15, v16);
  dispatch_group_leave(v35);

  v36 = *MEMORY[0x277D85DE8];
}

void sub_225257B68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_225257B98(void **a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v37 = a1[4];
    log = v9;
    v40 = objc_msgSend_recordID(v37, v38, v39);
    v43 = objc_msgSend_share(a1[4], v41, v42);
    v46 = objc_msgSend_recordID(v43, v44, v45);
    v49 = objc_msgSend_etag(v5, v47, v48);
    *buf = 134219010;
    v52 = v37;
    v53 = 2112;
    v54 = v40;
    v55 = 2112;
    v56 = v46;
    v57 = 2114;
    v58 = v49;
    v59 = 2112;
    v60 = v6;
    _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Fetched share PCS data. Record %p recordID %@ shareID %@ share PCS etag %{public}@%@", buf, 0x34u);
  }

  if (objc_msgSend_pcs(v5, v10, v11))
  {
    v13 = objc_msgSend__decryptRecordPCSForRecord_usingSharePCS_(a1[5], v12, a1[4], v5);
    objc_msgSend_setError_(a1[6], v14, v13);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v20 = a1[4];
      v21 = v17;
      v24 = objc_msgSend_share(v20, v22, v23);
      v27 = objc_msgSend_recordID(v24, v25, v26);
      *buf = 138412290;
      v52 = v27;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Couldn't fetch a PCS for share %@", buf, 0xCu);
    }

    v28 = a1[5];
    v29 = objc_msgSend_recordID(a1[4], v18, v19);
    v32 = objc_msgSend_recordID(a1[4], v30, v31);
    v13 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v28, v33, v6, v29, 5001, @"Record %@ has items that require encryption but no share protection data was found", v32);

    objc_msgSend_setError_(a1[6], v34, v13);
  }

  v35 = objc_msgSend_decryptGroup(a1[6], v15, v16);
  dispatch_group_leave(v35);

  v36 = *MEMORY[0x277D85DE8];
}

void sub_225257E74(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8 || (objc_msgSend_chainPCSData(v5, v6, v7), v33 = objc_claimAutoreleasedReturnValue(), v33, !v33))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = v9;
      v16 = objc_msgSend_parent(v12, v14, v15);
      v19 = objc_msgSend_recordID(v16, v17, v18);
      *buf = 138412290;
      v49 = v19;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Couldn't fetch a PCS for parent record %@", buf, 0xCu);
    }

    v20 = *(a1 + 40);
    WeakRetained = objc_msgSend_recordID(*(a1 + 32), v10, v11);
    v24 = objc_msgSend_recordID(*(a1 + 32), v22, v23);
    v27 = objc_msgSend_parent(*(a1 + 32), v25, v26);
    v30 = objc_msgSend_recordID(v27, v28, v29);
    v32 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v20, v31, v8, WeakRetained, 5001, @"Record %@ has items that require encryption but no protection data was found for parent %@", v24, v30);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v41 = v34;
      v44 = objc_msgSend_recordID(v5, v42, v43);
      v47 = objc_msgSend_recordID(*(a1 + 32), v45, v46);
      *buf = 138412546;
      v49 = v44;
      v50 = 2112;
      v51 = v47;
      _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Fetched parent PCS data from record %@ for record %@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v32 = objc_msgSend__decryptRecordPCSForRecord_usingChainPCS_(WeakRetained, v35, *(a1 + 32), v5);
  }

  objc_msgSend_setError_(*(a1 + 48), v36, v32);
  v39 = objc_msgSend_decryptGroup(*(a1 + 48), v37, v38);
  dispatch_group_leave(v39);

  v40 = *MEMORY[0x277D85DE8];
}

void sub_225258150(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a1 + 32);
    v38 = v9;
    v41 = objc_msgSend_recordID(v37, v39, v40);
    v42 = @" with error: ";
    v43 = &stru_28385ED00;
    *buf = 138412802;
    v45 = v41;
    if (v6)
    {
      v43 = v6;
    }

    else
    {
      v42 = &stru_28385ED00;
    }

    v46 = 2114;
    v47 = v42;
    v48 = 2112;
    v49 = v43;
    _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Got PCS data from fetched share %@%{public}@%@", buf, 0x20u);
  }

  if (objc_msgSend_pcs(v5, v10, v11))
  {
    v13 = objc_msgSend__decryptRecordPCSForRecord_usingSharePCS_(*(a1 + 40), v12, *(a1 + 32), v5);
    objc_msgSend_setError_(*(a1 + 48), v14, v13);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      v21 = v17;
      v24 = objc_msgSend_share(v20, v22, v23);
      v27 = objc_msgSend_recordID(v24, v25, v26);
      *buf = 138412290;
      v45 = v27;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Couldn't get a PCS for our current share %@", buf, 0xCu);
    }

    v28 = *(a1 + 40);
    v29 = objc_msgSend_recordID(*(a1 + 32), v18, v19);
    v32 = objc_msgSend_recordID(*(a1 + 32), v30, v31);
    v13 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v28, v33, v6, v29, 5001, @"Record %@ has items that require encryption but no share protection data was found", v32);

    objc_msgSend_setError_(*(a1 + 48), v34, v13);
  }

  v35 = objc_msgSend_decryptGroup(*(a1 + 48), v15, v16);
  dispatch_group_leave(v35);

  v36 = *MEMORY[0x277D85DE8];
}

void sub_2252583F4(void **a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v47 = a1[4];
    log = v9;
    v50 = objc_msgSend_recordID(v47, v48, v49);
    v53 = objc_msgSend_recordID(a1[4], v51, v52);
    v56 = objc_msgSend_zoneID(v53, v54, v55);
    v59 = objc_msgSend_etag(v5, v57, v58);
    *buf = 134219010;
    v62 = v47;
    v63 = 2112;
    v64 = v50;
    v65 = 2112;
    v66 = v56;
    v67 = 2114;
    v68 = v59;
    v69 = 2112;
    v70 = v6;
    _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Fetched zone PCS data. Record %p recordID %@ zoneID %@ zone PCS etag %{public}@%@", buf, 0x34u);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v12 = objc_msgSend_unitTestOverrides(a1[5], v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"SimulateZonePCSNotFoundOnRecordFetch");

    if (v14)
    {

      v15 = MEMORY[0x277CBC560];
      v16 = *MEMORY[0x277CBC120];
      v19 = objc_msgSend_recordID(a1[4], v17, v18);
      v21 = objc_msgSend_errorWithDomain_code_format_(v15, v20, v16, 2036, @"Record %@ has items that require encryption but no shared zone protection data was found", v19);

      v5 = 0;
      v6 = v21;
    }
  }

  if (objc_msgSend_pcs(v5, v10, v11))
  {
    v23 = objc_msgSend__decryptRecordPCSForRecord_usingZonePCS_(a1[5], v22, a1[4], v5);
    objc_msgSend_setError_(a1[6], v24, v23);
  }

  else
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v30 = a1[4];
      v31 = v27;
      v34 = objc_msgSend_recordID(v30, v32, v33);
      v37 = objc_msgSend_zoneID(v34, v35, v36);
      *buf = 138412290;
      v62 = v37;
      _os_log_impl(&dword_22506F000, v31, OS_LOG_TYPE_INFO, "Couldn't fetch a PCS for zone %@", buf, 0xCu);
    }

    v38 = a1[5];
    v39 = objc_msgSend_recordID(a1[4], v28, v29);
    v42 = objc_msgSend_recordID(a1[4], v40, v41);
    v23 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(v38, v43, v6, v39, 5001, @"Record %@ has items that require encryption but no shared zone protection data was found", v42);

    objc_msgSend_setError_(a1[6], v44, v23);
  }

  v45 = objc_msgSend_decryptGroup(a1[6], v25, v26);
  dispatch_group_leave(v45);

  v46 = *MEMORY[0x277D85DE8];
}

id sub_22525A1D0(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_isCancelled(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v6 = objc_msgSend_outstandingDecryptions(*(a1 + 32), v4, v5);
    v9 = objc_msgSend_count(v6, v7, v8);

    if (v9)
    {
      v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
      v15 = *(a1 + 48);
      v16 = *(a1 + 32);
      v19 = objc_msgSend_operationID(v16, v17, v18);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v20, v15, v16, @"CKDDecryptRecordsOperation.m", 685, @"Decrypt operation %@ finished but there were still outstanding decryptions", v19);
    }
  }

  v12 = *(a1 + 40);
  v21.receiver = *(a1 + 32);
  v21.super_class = CKDDecryptRecordsOperation;
  return objc_msgSendSuper2(&v21, sel__finishOnCallbackQueueWithError_, v12);
}

void sub_22525A554()
{
  v0 = qword_280D58370;
  qword_280D58370 = &unk_2838C9200;
}

void sub_22525A8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_22525A938(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_loadWeakRetained((a1 + 48));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v40 = v9;
    *buf = 138412546;
    v45 = v5;
    v46 = 2048;
    v47 = objc_msgSend_code(v6, v41, v42);
    _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Fetched registered bundleIDs %@ with response code %ld", buf, 0x16u);
  }

  if (objc_msgSend_code(v6, v10, v11) != 1)
  {
    v13 = MEMORY[0x277CBC560];
    v14 = *MEMORY[0x277CBC120];
    v15 = sub_2253962A4(v6);
    sub_225395734(v8, v6);
    v43 = v5;
    v17 = v16 = v8;
    v20 = objc_msgSend_error(v6, v18, v19);
    v23 = objc_msgSend_errorDescription(v20, v21, v22);
    v25 = objc_msgSend_errorWithDomain_code_userInfo_format_(v13, v24, v14, v15, v17, @"Error fetching registered bundle IDs from server: %@", v23);
    objc_msgSend_setError_(WeakRetained, v26, v25);

    v8 = v16;
    v5 = v43;
  }

  objc_msgSend_setBundleIDs_(WeakRetained, v12, v5);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v29 = *(a1 + 32);
    v30 = objc_msgSend_containerID(v29, v27, v28);
    v33 = objc_msgSend_containerIdentifier(v30, v31, v32);
    v35 = objc_msgSend__unitTestBundleIDsByContainerID_(v29, v34, v33);

    if (objc_msgSend_count(v35, v36, v37))
    {
      objc_msgSend_setBundleIDs_(WeakRetained, v38, v35);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_22525ABBC(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = v4;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v15 = objc_msgSend_ckShortDescription(WeakRetained, v13, v14);
    v18 = objc_msgSend_error(v3, v16, v17);
    v19 = 138544130;
    v20 = v12;
    v21 = 2048;
    v22 = WeakRetained;
    v23 = 2114;
    v24 = v15;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Fetch registered bundleIDs operation <%{public}@: %p; %{public}@> finished with error %@", &v19, 0x2Au);
  }

  v7 = objc_msgSend_error(v3, v5, v6);
  objc_msgSend_finishWithError_(WeakRetained, v8, v7);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22525B0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_22525B14C(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = v7;
    *buf = 134218240;
    v30 = a2;
    v31 = 2048;
    v32 = objc_msgSend_code(v5, v27, v28);
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Fetched quota (%llu) with response code %ld", buf, 0x16u);
  }

  if (objc_msgSend_code(v5, v8, v9) != 1)
  {
    v11 = MEMORY[0x277CBC560];
    v12 = *MEMORY[0x277CBC120];
    v13 = sub_2253962A4(v5);
    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = sub_225395734(v14, v5);
    v18 = objc_msgSend_error(v5, v16, v17);
    v21 = objc_msgSend_errorDescription(v18, v19, v20);
    v23 = objc_msgSend_errorWithDomain_code_userInfo_format_(v11, v22, v12, v13, v15, @"Error fetching user quota from server: %@", v21);
    objc_msgSend_setError_(WeakRetained, v24, v23);
  }

  objc_msgSend_setQuotaAvailable_(WeakRetained, v10, a2);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22525B344(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = v4;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v15 = objc_msgSend_ckShortDescription(WeakRetained, v13, v14);
    v18 = objc_msgSend_error(v3, v16, v17);
    v19 = 138544130;
    v20 = v12;
    v21 = 2048;
    v22 = WeakRetained;
    v23 = 2114;
    v24 = v15;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Fetch quota operation <%{public}@: %p; %{public}@> finished with error %@", &v19, 0x2Au);
  }

  v7 = objc_msgSend_error(v3, v5, v6);
  objc_msgSend_finishWithError_(WeakRetained, v8, v7);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22525B8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_22525B94C(void **a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v10 = objc_msgSend_unitTestOverrides(a1[4], v7, v8);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"DropToken");

    if (v12)
    {

      v5 = 0;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v32 = v13;
    *buf = 138412546;
    v36 = v5;
    v37 = 2048;
    v38 = objc_msgSend_code(v6, v33, v34);
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Fetched web auth token (%@) with response code %ld", buf, 0x16u);
  }

  if (objc_msgSend_code(v6, v14, v15) != 1)
  {
    v17 = MEMORY[0x277CBC560];
    v18 = *MEMORY[0x277CBC120];
    v19 = sub_2253962A4(v6);
    v20 = objc_loadWeakRetained(a1 + 6);
    v21 = sub_225395734(v20, v6);
    v24 = objc_msgSend_error(v6, v22, v23);
    v27 = objc_msgSend_errorDescription(v24, v25, v26);
    v29 = objc_msgSend_errorWithDomain_code_userInfo_format_(v17, v28, v18, v19, v21, @"Error fetching web auth token from server: %@", v27);
    objc_msgSend_setError_(WeakRetained, v30, v29);
  }

  objc_msgSend_setWebAuthToken_(WeakRetained, v16, v5);

  v31 = *MEMORY[0x277D85DE8];
}

void sub_22525BB9C(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = v4;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v15 = objc_msgSend_ckShortDescription(WeakRetained, v13, v14);
    v18 = objc_msgSend_error(v3, v16, v17);
    v19 = 138544130;
    v20 = v12;
    v21 = 2048;
    v22 = WeakRetained;
    v23 = 2114;
    v24 = v15;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Fetch web auth token operation <%{public}@: %p; %{public}@> finished with error %@", &v19, 0x2Au);
  }

  v7 = objc_msgSend_error(v3, v5, v6);
  objc_msgSend_finishWithError_(WeakRetained, v8, v7);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_22525C2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22525C2F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_msgSend_osActivity(WeakRetained, v2, v3, 0, 0);
    os_activity_scope_enter(v5, &v8);

    objc_msgSend__recordFetchesAvailable(v4, v6, v7);
    os_activity_scope_leave(&v8);
  }
}

void sub_22525C370(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_msgSend_osActivity(WeakRetained, v2, v3, 0, 0);
    os_activity_scope_enter(v5, &v8);

    objc_msgSend__flushFetchedRecordsToConsumerLocked(v4, v6, v7);
    os_activity_scope_leave(&v8);
  }
}

void sub_22525C54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22525C568(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = objc_msgSend_fetchInfosByOrder(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_allValues(v5, v6, v7);

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v51, v55, 16);
  if (v12)
  {
    v13 = *v52;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_state(*(*(&v51 + 1) + 8 * i), v10, v11);
        ++*(&v56 + v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v51, v55, 16);
    }

    while (v12);
    v16 = *(&v56 + 1);
    v12 = v56;
    v17 = *(&v57 + 1);
    v18 = v57;
    v19 = v58;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
  }

  v20 = *(a1 + 40);
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"notStarted=%lu", v12);
  objc_msgSend_addObject_(v20, v23, v22);

  v24 = *(a1 + 40);
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"waitingForFetch=%lu", v16);
  objc_msgSend_addObject_(v24, v27, v26);

  v28 = *(a1 + 40);
  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v29, @"fetchingFromServer=%lu", v18);
  objc_msgSend_addObject_(v28, v31, v30);

  v32 = *(a1 + 40);
  v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"needsCallback=%lu", v17);
  objc_msgSend_addObject_(v32, v35, v34);

  v36 = *(a1 + 40);
  v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"finished=%lu", v19);
  objc_msgSend_addObject_(v36, v39, v38);

  v40 = MEMORY[0x277CCACA8];
  v42 = objc_msgSend_componentsJoinedByString_(*(a1 + 40), v41, @", ");
  v45 = objc_msgSend_fetchInfosByOrder(*(a1 + 32), v43, v44);
  v47 = objc_msgSend_stringWithFormat_(v40, v46, @"fetchInfos (%@) = %@", v42, v45);
  v48 = *(*(a1 + 48) + 8);
  v49 = *(v48 + 40);
  *(v48 + 40) = v47;

  objc_autoreleasePoolPop(v2);
  v50 = *MEMORY[0x277D85DE8];
}

void sub_22525CA10(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_performCallback(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_fetchGroup(*(a1 + 40), v4, v5);
  dispatch_group_leave(v6);
}

void sub_22525CC60(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v2 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v41, v45, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v42;
    do
    {
      v9 = 0;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        v11 = objc_msgSend_fetchInfosByOrder(*(a1 + 40), v5, v6);
        v12 = MEMORY[0x277CCABB0];
        Order = objc_msgSend_fetchOrder(v10, v13, v14);
        v17 = objc_msgSend_numberWithUnsignedInteger_(v12, v16, Order);
        v19 = objc_msgSend_objectForKeyedSubscript_(v11, v18, v17);

        if (v19)
        {
          v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
          v32 = *(a1 + 40);
          v31 = *(a1 + 48);
          v35 = objc_msgSend_fetchOrder(v10, v33, v34);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v36, v31, v32, @"CKDRecordFetchAggregator.m", 434, @"A fetch info with order %lu already exists. %@", v35, v10, v41);
        }

        v22 = objc_msgSend_fetchInfosByOrder(*(a1 + 40), v20, v21);
        v23 = MEMORY[0x277CCABB0];
        v26 = objc_msgSend_fetchOrder(v10, v24, v25);
        v28 = objc_msgSend_numberWithUnsignedInteger_(v23, v27, v26);
        objc_msgSend_setObject_forKeyedSubscript_(v22, v29, v10, v28);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v41, v45, 16);
    }

    while (v7);
  }

  v39 = objc_msgSend_fetchSource(*(a1 + 40), v37, v38);
  dispatch_source_merge_data(v39, 1uLL);

  v40 = *MEMORY[0x277D85DE8];
}

void sub_22525E55C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 96));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_22525E5BC(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_setDeviceCapabiltiesUpdateResult_(WeakRetained, v4, v6);
  }
}

void sub_22525E620(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = objc_msgSend_zoneUsageResults(*(a1 + 32), v7, v8);

    if (!v10)
    {
      v13 = objc_opt_new();
      objc_msgSend_setZoneUsageResults_(*(a1 + 32), v14, v13);
    }

    v15 = objc_msgSend_zoneUsageResults(WeakRetained, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v6, v17);
  }
}

void sub_22525E6E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = objc_msgSend_shareUsageResults(*(a1 + 32), v7, v8);

    if (!v10)
    {
      v13 = objc_opt_new();
      objc_msgSend_setShareUsageResults_(*(a1 + 32), v14, v13);
    }

    v15 = objc_msgSend_shareUsageResults(WeakRetained, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v6, v17);
  }
}

void sub_22525E7B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v18 = WeakRetained;
    v5 = objc_loadWeakRetained((a1 + 40));
    if (v5)
    {
      objc_msgSend_handleRequestCompleted_(v18, v3, v5);
    }

    else
    {
      v8 = MEMORY[0x277CBC560];
      v9 = *MEMORY[0x277CBBF50];
      v10 = objc_msgSend_operationID(v18, v3, v4);
      v12 = objc_msgSend_errorWithDomain_code_format_(v8, v11, v9, 20, @"Operation %@ was cancelled internally by CloudKit", v10);
      objc_msgSend_setError_(v18, v13, v12);
    }

    v14 = objc_msgSend_error(v18, v6, v7);

    if (v14)
    {
      objc_msgSend_invokeCompletionHandlers(v18, v15, v16);
    }

    v17 = objc_msgSend_stateTransitionGroup(v18, v15, v16);
    dispatch_group_leave(v17);

    WeakRetained = v18;
  }
}

void sub_22525F250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22525F27C(uint64_t a1, char a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(WeakRetained, v7, v8);
  v9 = *MEMORY[0x277CBC878];
  v10 = *MEMORY[0x277CBC880];
  if (v5 || (a2 & 1) == 0)
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = 138543618;
      v22 = v20;
      v23 = 2112;
      v24 = v5;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "User key sync to update signing identities failed for operation %{public}@: %@", &v21, 0x16u);
    }

    objc_msgSend_setError_(WeakRetained, v15, v5);
  }

  else
  {
    if (v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v21 = 138543362;
      v22 = v13;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "User key sync to update signing identities succeeded for operation %{public}@", &v21, 0xCu);
    }
  }

  objc_msgSend_setDidSynchronizeSigningIdentities_(WeakRetained, v12, 1);
  v18 = objc_msgSend_stateTransitionGroup(WeakRetained, v16, v17);
  dispatch_group_leave(v18);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22525F520(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  v8 = objc_msgSend_error(*(a1 + 32), v3, v4);
  if (v8 || (objc_msgSend_deviceCapabiltiesUpdateResult(*(a1 + 32), v6, v7), (v1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = objc_msgSend_updateDeviceCapabilitiesCompletionBlock(*(a1 + 32), v6, v7);

    if (v8)
    {

      if (!v9)
      {
        goto LABEL_12;
      }

LABEL_8:
      v10 = *(a1 + 32);
      v11 = objc_msgSend_deviceCapabiltiesUpdateResult(v10, v6, v7);
      v13 = objc_msgSend_errorForResult_fallbackDescription_(v10, v12, v11, @"Failed to save device capabilities");

      if (*MEMORY[0x277CBC810] == 1)
      {
        v16 = objc_msgSend_unitTestOverrides(*(a1 + 32), v14, v15);
        v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"forceDeviceCapabilityUpdateFailure");

        if (v18)
        {
          v19 = MEMORY[0x277CBC560];
          v20 = *MEMORY[0x277CBBF50];
          v21 = objc_msgSend_operationID(*(a1 + 32), v14, v15);
          v23 = objc_msgSend_errorWithDomain_code_format_(v19, v22, v20, 1, @"Forcing a failure to save device capabilties for operation %@", v21);

          v13 = v23;
        }
      }

      v24 = objc_msgSend_updateDeviceCapabilitiesCompletionBlock(*(a1 + 32), v14, v15);
      v27 = objc_msgSend_supportedCapabilities(*(a1 + 32), v25, v26);
      v30 = objc_msgSend_error(*(a1 + 32), v28, v29);
      (v24)[2](v24, v27, v13, v30);

      objc_msgSend_setUpdateDeviceCapabilitiesCompletionBlock_(*(a1 + 32), v31, 0);
      goto LABEL_12;
    }

    if (v9)
    {
      goto LABEL_8;
    }
  }

LABEL_12:
  v32 = objc_msgSend_perZoneUsageCompletionBlock(*(a1 + 32), v6, v7);

  if (v32)
  {
    v35 = objc_msgSend_zoneUsageResults(*(a1 + 32), v33, v34);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_22525F8F0;
    v56[3] = &unk_27854B318;
    v56[4] = *(a1 + 32);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v35, v36, v56);

    v39 = objc_msgSend_zoneUsages(*(a1 + 32), v37, v38);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_22525FA78;
    v55[3] = &unk_27854B340;
    v55[4] = *(a1 + 32);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v39, v40, v55);

    objc_msgSend_setPerZoneUsageCompletionBlock_(*(a1 + 32), v41, 0);
  }

  v42 = objc_msgSend_perShareUsageCompletionBlock(*(a1 + 32), v33, v34);

  if (v42)
  {
    v45 = objc_msgSend_shareUsageResults(*(a1 + 32), v43, v44);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_22525FC20;
    v54[3] = &unk_27854B368;
    v54[4] = *(a1 + 32);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v45, v46, v54);

    v49 = objc_msgSend_shareUsages(*(a1 + 32), v47, v48);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_22525FDA8;
    v53[3] = &unk_27854B390;
    v53[4] = *(a1 + 32);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v49, v50, v53);

    objc_msgSend_setPerShareUsageCompletionBlock_(*(a1 + 32), v51, 0);
  }

  v52 = objc_msgSend_stateTransitionGroup(WeakRetained, v43, v44);
  dispatch_group_leave(v52);

LABEL_17:
}

void sub_22525F8F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v27 = objc_msgSend_errorForResult_fallbackDescription_(v5, v7, a3, @"Failed to save zone usage");
  if (*MEMORY[0x277CBC810] == 1)
  {
    v10 = objc_msgSend_unitTestOverrides(*(a1 + 32), v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"forceZoneUsageUpdateFailure");

    if (v12)
    {
      v13 = MEMORY[0x277CBC560];
      v14 = *MEMORY[0x277CBBF50];
      v15 = objc_msgSend_operationID(*(a1 + 32), v8, v9);
      v17 = objc_msgSend_errorWithDomain_code_format_(v13, v16, v14, 1, @"Forcing a failure to save zone usage for operation %@", v15);

      v27 = v17;
    }
  }

  v18 = objc_msgSend_zoneUsages(*(a1 + 32), v8, v9);
  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v6);

  v23 = objc_msgSend_perZoneUsageCompletionBlock(*(a1 + 32), v21, v22);
  v26 = objc_msgSend_error(*(a1 + 32), v24, v25);
  (v23)[2](v23, v6, v20, v27, v26);
}

void sub_22525FA78(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_zoneUsageResults(*(a1 + 32), v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, v5);

  if (!v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Did not receive a zone usage result for zone ID %@", buf, 0xCu);
    }

    v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBBF50], 1, @"Failed to save zone usage at %@ for zone ID %@", v6, v5);
    v17 = objc_msgSend_perZoneUsageCompletionBlock(*(a1 + 32), v15, v16);
    v20 = objc_msgSend_error(*(a1 + 32), v18, v19);
    (v17)[2](v17, v5, v6, v14, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22525FC20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v27 = objc_msgSend_errorForResult_fallbackDescription_(v5, v7, a3, @"Failed to save share usage");
  if (*MEMORY[0x277CBC810] == 1)
  {
    v10 = objc_msgSend_unitTestOverrides(*(a1 + 32), v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"forceShareUsageUpdateFailure");

    if (v12)
    {
      v13 = MEMORY[0x277CBC560];
      v14 = *MEMORY[0x277CBBF50];
      v15 = objc_msgSend_operationID(*(a1 + 32), v8, v9);
      v17 = objc_msgSend_errorWithDomain_code_format_(v13, v16, v14, 1, @"Forcing a failure to save share usage for operation %@", v15);

      v27 = v17;
    }
  }

  v18 = objc_msgSend_shareUsages(*(a1 + 32), v8, v9);
  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v6);

  v23 = objc_msgSend_perShareUsageCompletionBlock(*(a1 + 32), v21, v22);
  v26 = objc_msgSend_error(*(a1 + 32), v24, v25);
  (v23)[2](v23, v6, v20, v27, v26);
}

void sub_22525FDA8(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_shareUsageResults(*(a1 + 32), v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, v5);

  if (!v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Did not receive a share usage result for share ID %@", buf, 0xCu);
    }

    v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBBF50], 1, @"Failed to save share usage at %@ for share ID %@", v6, v5);
    v17 = objc_msgSend_perShareUsageCompletionBlock(*(a1 + 32), v15, v16);
    v20 = objc_msgSend_error(*(a1 + 32), v18, v19);
    (v17)[2](v17, v5, v6, v14, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22526056C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_22526059C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (!v5)
  {
    v8 = objc_msgSend_containerPrivacySettings(v2, v6, v7);
    objc_msgSend_setContainerPrivacySettings_(WeakRetained, v9, v8);
  }

  v10 = objc_msgSend_error(v2, v6, v7);
  objc_msgSend_finishWithError_(WeakRetained, v11, v10);
}

void sub_225260FE8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_discoverUserIdentitiesProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_discoverUserIdentitiesProgressBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_225261258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225261298(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = objc_msgSend_error(WeakRetained, v10, v11);

  if (!v12)
  {
    objc_msgSend__handleDiscoveredIdentity_lookupInfo_responseCode_(WeakRetained, v13, v7, v14, v8);
  }
}

void sub_22526133C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  v7 = *(a1 + 32);
  if (v4)
  {
    v8 = objc_msgSend_error(WeakRetained, v5, v6);
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v11 = objc_msgSend_error(v8, v9, v10);
    (*(v7 + 16))(v7, v11);
  }
}

uint64_t sub_2252616D4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a2;
LABEL_3:

    return objc_msgSend_finishWithError_(v4, a2, v5);
  }

  v7 = objc_msgSend_count(*(a1 + 40), 0, a3);
  v4 = *(a1 + 32);
  if (!v7)
  {
    v5 = 0;
    goto LABEL_3;
  }

  v8 = *(a1 + 40);

  return objc_msgSend__discoverIdentitiesBatched_(v4, a2, v8);
}

void sub_225261B44(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_emailAddresses(v3, v4, v5);
  v8 = objc_msgSend_CKMap_(v6, v7, &unk_28385D880);

  v11 = objc_msgSend_phoneNumbers(v3, v9, v10);
  v13 = objc_msgSend_CKMap_(v11, v12, &unk_28385D8A0);

  v37 = v13;
  v15 = objc_msgSend_arrayByAddingObjectsFromArray_(v8, v14, v13);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v38, v42, 16);
  if (v17)
  {
    v19 = v17;
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        objc_msgSend_addObject_(*(a1 + 32), v18, v22);
        v25 = objc_msgSend_contactIdentifiersByLookupInfo(*(a1 + 40), v23, v24);
        v27 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v22);

        if (!v27)
        {
          v27 = objc_opt_new();
          v32 = objc_msgSend_contactIdentifiersByLookupInfo(*(a1 + 40), v30, v31);
          objc_msgSend_setObject_forKeyedSubscript_(v32, v33, v27, v22);
        }

        v34 = objc_msgSend_identifier(v3, v28, v29);
        objc_msgSend_addObject_(v27, v35, v34);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v38, v42, 16);
    }

    while (v19);
  }

  v36 = *MEMORY[0x277D85DE8];
}

id sub_225261D3C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBC7C8];
  v3 = a2;
  v4 = [v2 alloc];
  v7 = objc_msgSend_value(v3, v5, v6);

  v9 = objc_msgSend_initWithEmailAddress_(v4, v8, v7);
  objc_msgSend_setShouldReportMissingIdentity_(v9, v10, 0);

  return v9;
}

id sub_225261DC4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_value(a2, a2, a3);
  v6 = objc_msgSend_stringValue(v3, v4, v5);
  v7 = sub_225405704(v6);

  v8 = objc_alloc(MEMORY[0x277CBC7C8]);
  v10 = objc_msgSend_initWithPhoneNumber_(v8, v9, v7);
  objc_msgSend_setShouldReportMissingIdentity_(v10, v11, 0);

  return v10;
}

void sub_2252621D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_discoverUserIdentitiesProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_discoverUserIdentitiesProgressBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, 0, *(a1 + 40));
  }
}

void sub_225262638(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_shareParticipantFetchedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

void sub_2252629C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225262A04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleFetchedInfo_withIdentity_error_(WeakRetained, v10, v9, v8, v7);
}

void sub_225262A90(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_finishWithError_(WeakRetained, v4, v3);
}

void sub_225263028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_225263058(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_error(v2, v6, v7);
    objc_msgSend_finishWithError_(WeakRetained, v9, v8);
  }

  else
  {
    v8 = objc_msgSend_userPrivacySettings(v2, v6, v7);
    objc_msgSend__handleRetrievedPrivacySettings_(WeakRetained, v10, v8);
  }
}

void sub_225263288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_2252632B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);
  objc_msgSend_finishWithError_(WeakRetained, v6, v5);
}

void sub_2252635AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_2252635DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);
  objc_msgSend_finishWithError_(WeakRetained, v6, v5);
}

void sub_225263C90(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = 0;
  v5 = objc_msgSend_invocation(*(a1 + 32), a2, a3);
  objc_msgSend_getArgument_atIndex_(v5, v6, &v12, a2);

  if (!v12)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    v10 = *(a1 + 40);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v11, *(a1 + 56), *(a1 + 32), @"CKDLongLivedOperationPersistedCallback.m", 47, @"Unexpectedly nil reply block for [%@ %@]", v10, *(a1 + 48));
  }
}

void sub_225263D30(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = 0;
  v5 = objc_msgSend_invocation(*(a1 + 32), a2, a3);
  objc_msgSend_getArgument_atIndex_(v5, v6, &v19, a2);

  v7 = v19;
  if (v7)
  {
    v8 = CKOperationProgressCallbackClasses();
    v9 = objc_opt_class();
    if (v9)
    {
      Superclass = v9;
      while ((objc_msgSend_containsObject_(v8, v10, Superclass) & 1) == 0)
      {
        Superclass = class_getSuperclass(Superclass);
        if (!Superclass)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
      v14 = *(a1 + 56);
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v18, v14, v15, @"CKDLongLivedOperationPersistedCallback.m", 68, @"Unsuitable object type %@ for [%@ %@]", v17, *(a1 + 40), *(a1 + 48));
    }
  }
}

void sub_22526457C(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  v9 = 0;
  v5 = *(a1 + 32);
  v7 = objc_msgSend_decodeBytesForKey_returnedLength_(v5, v6, v4, &v9);
  objc_msgSend_setArgument_atIndex_(*(a1 + 40), v8, v7, a2);
}

void sub_2252645FC(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  v5 = CKOperationProgressCallbackClasses();
  v7 = objc_msgSend_decodeObjectOfClasses_forKey_(*(a1 + 32), v6, v5, v4);
  v9 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0;
  }

  objc_msgSend_setArgument_atIndex_(*(a1 + 40), v8, &v9, a2);
}

void sub_2252646C4(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v7, v6, v4);
  v9 = v8;
  objc_msgSend_UTF8String(v9, v10, v11);
  v13 = __NSMakeSpecialForwardingCaptureBlock();
  objc_msgSend_setArgument_atIndex_(*(a1 + 40), v12, &v13, a2);
}

void sub_225264A74(uint64_t a1, const char *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  v9 = objc_msgSend_invocation(*(a1 + 32), v7, v8);
  objc_msgSend_getArgument_atIndex_(v9, v10, v13 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

  objc_msgSend_encodeBytes_length_forKey_(*(a1 + 40), v11, v13 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_225264B60(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  v12 = 0;
  v7 = objc_msgSend_invocation(*(a1 + 32), v5, v6);
  objc_msgSend_getArgument_atIndex_(v7, v8, &v12, a2);

  v11 = v12;
  if (!v11)
  {
    v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10);
  }

  objc_msgSend_encodeObject_forKey_(*(a1 + 40), v9, v11, v4);
}

void sub_225264C14(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Argument-%lu", a2);
  aBlock = 0;
  v7 = objc_msgSend_invocation(*(a1 + 32), v5, v6);
  objc_msgSend_getArgument_atIndex_(v7, v8, &aBlock, a2);

  v9 = _Block_signature(aBlock);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v9);
  objc_msgSend_encodeObject_forKey_(*(a1 + 40), v12, v11, v4);
}

id sub_2252666B8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_operationID(v3, v6, v7);

  v10 = objc_msgSend_stringWithFormat_(v2, v9, @"<%@ %@>", v5, v8);

  return v10;
}

void sub_225266F88(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_childOperations(*(a1 + 32), a2, a3);
  objc_sync_enter(v4);
  v7 = objc_msgSend_childOperations(*(a1 + 32), v5, v6);
  objc_msgSend_removeObject_(v7, v8, *(a1 + 40));

  objc_sync_exit(v4);
  v11 = objc_msgSend_finishedChildOperationIDs(*(a1 + 32), v9, v10);
  objc_sync_enter(v11);
  v14 = objc_msgSend_finishedChildOperationIDs(*(a1 + 32), v12, v13);
  v17 = objc_msgSend_operationID(*(a1 + 40), v15, v16);
  objc_msgSend_addObject_(v14, v18, v17);

  objc_sync_exit(v11);
  objc_msgSend_combineMetricsWithOperation_(*(a1 + 32), v19, *(a1 + 40));
  v22 = objc_msgSend_childOperationsGroup(*(a1 + 32), v20, v21);
  dispatch_group_leave(v22);
}

void sub_2252671E4()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);
  v2 = dispatch_queue_create("com.apple.cloudkit.operationcallback.userinteractive", v1);
  v3 = qword_280D54EE0;
  qword_280D54EE0 = v2;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("com.apple.cloudkit.operationcallback.userinitiated", v5);
  v7 = qword_280D54EE8;
  qword_280D54EE8 = v6;

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.cloudkit.operationcallback.default", v8);
  v10 = qword_280D54EF0;
  qword_280D54EF0 = v9;

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);
  v13 = dispatch_queue_create("com.apple.cloudkit.operationcallback.utility", v12);
  v14 = qword_280D54EF8;
  qword_280D54EF8 = v13;

  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_BACKGROUND, 0);
  v16 = dispatch_queue_create("com.apple.cloudkit.operationcallback.background", v15);
  v17 = qword_280D54F00;
  qword_280D54F00 = v16;
}

void sub_225267394(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (objc_msgSend_qualityOfService(*(a1 + 32), v6, v7) <= 32)
  {
    objc_msgSend_allowsCellularAccess(v5, v8, v9, a3, 0);
    objc_msgSend_isUplink(v5, v10, v11);
    v12 = net_qos_guideline();
    v13 = v12;
    if (!v12)
    {
      v14 = 0;
      goto LABEL_11;
    }

    if (v12 == 1)
    {
      v14 = 5;
      goto LABEL_11;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v25 = v13;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Got unexpected result %d back from net_qos_guideline, going with default NST", buf, 8u);
    }
  }

  v14 = 0;
LABEL_11:
  v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v8, v5);
  v19 = objc_msgSend_unsignedIntegerValue(v16, v17, v18);

  if (v14 != v19)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v21 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v20, v14);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 48), v22, v21, v5);

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22526755C(uint64_t a1, const char *a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  isCancelled = objc_msgSend_isCancelled(*(a1 + 32), a2, a3);
  if (isCancelled)
  {
    isFinished = objc_msgSend_isFinished(*(a1 + 32), v4, v5);
    v8 = *MEMORY[0x277CBC878];
    v9 = *MEMORY[0x277CBC880];
    if (!isFinished)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v8);
      }

      v19 = *MEMORY[0x277CBC850];
      if (os_log_type_enabled(*MEMORY[0x277CBC850], OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        v23 = v19;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = *(a1 + 32);
        v29 = objc_msgSend_ckShortDescription(v26, v27, v28);
        *buf = 138543874;
        v40 = v25;
        v41 = 2048;
        v42 = v26;
        v43 = 2114;
        v44 = v29;
        _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p; %{public}@> was cancelled before it started", buf, 0x20u);
      }

      objc_msgSend_transitionToExecuting(*(a1 + 32), v20, v21);
      v30 = MEMORY[0x277CBC560];
      v31 = *MEMORY[0x277CBC120];
      v34 = objc_msgSend_operationID(*(a1 + 32), v32, v33);
      v12 = objc_msgSend_errorWithDomain_code_format_(v30, v35, v31, 1, @"Operation %@ was cancelled before it started", v34);

      objc_msgSend_finishWithError_(*(a1 + 32), v36, v12);
      goto LABEL_12;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v10 = *MEMORY[0x277CBC850];
    if (os_log_type_enabled(*MEMORY[0x277CBC850], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = *(a1 + 32);
      v18 = objc_msgSend_ckShortDescription(v15, v16, v17);
      *buf = 138543874;
      v40 = v14;
      v41 = 2048;
      v42 = v15;
      v43 = 2114;
      v44 = v18;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p; %{public}@> is already cancelled and finished but it tried to start again", buf, 0x20u);

LABEL_12:
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return isCancelled;
}

void sub_2252677D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_shouldCheckAppVersion(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 32);
      v28 = v6;
      v31 = objc_msgSend_operationID(v27, v29, v30);
      v32 = 138543362;
      v33 = v31;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Operation %{public}@ requires checking app version.  Doing so", &v32, 0xCu);
    }

    objc_msgSend__checkAppVersion(*(a1 + 32), v7, v8);
  }

  else
  {
    objc_msgSend__determineNetworkServiceType(*(a1 + 32), v4, v5);
  }

  objc_msgSend_hash(*(a1 + 32), v9, v10);
  kdebug_trace();
  v13 = objc_msgSend_signpost(*(a1 + 32), v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_signpost(*(a1 + 32), v14, v15);
    v19 = objc_msgSend_log(v16, v17, v18);

    v22 = objc_msgSend_signpost(*(a1 + 32), v20, v21);
    v25 = objc_msgSend_identifier(v22, v23, v24);

    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(v32) = 0;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v19, OS_SIGNPOST_EVENT, v25, "CKDOperation", "Start ended", &v32, 2u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2252679CC(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (!v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      v14 = v10;
      v17 = objc_msgSend_operationID(v13, v15, v16);
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v5;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Operation %{public}@ was told to take action %@", buf, 0x16u);

      if (v5)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_10:
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    dispatch_group_leave(*(a1 + 40));
    goto LABEL_14;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v9 = *MEMORY[0x277CBC830];
  if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_10;
  }

  *buf = 138412290;
  v22 = v6;
  _os_log_error_impl(&dword_22506F000, v9, OS_LOG_TYPE_ERROR, "Asked client what to do for a daemon operation, it responded with an error %@", buf, 0xCu);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_225267BE8;
  v19[3] = &unk_278545A00;
  v11 = *(a1 + 32);
  v20 = *(a1 + 40);
  objc_msgSend_takeActionOnOperation_proceedBlock_(v5, v12, v11, v19);

LABEL_14:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_22526867C(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v2 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 32);
      v6 = v2;
      v9 = objc_msgSend_operationID(v5, v7, v8);
      v10 = 134218242;
      v11 = v4;
      v12 = 2114;
      v13 = v9;
      _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Finished waiting for all (%lu) child operations to finish for operation %{public}@", &v10, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
  v3 = *MEMORY[0x277D85DE8];
}

void sub_2252687A0(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v2 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v8 = objc_msgSend_operationID(v4, v6, v7);
      v9 = 138543362;
      v10 = v8;
      _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "All state transition locks have been released. Finishing operation %{public}@", &v9, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
  v3 = *MEMORY[0x277D85DE8];
}

void sub_2252688B8(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "All client callbacks finished for operation %{public}@", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
  v3 = *MEMORY[0x277D85DE8];
}

void sub_225269364(uint64_t a1, void *a2)
{
  v28 = a2;
  v5 = objc_msgSend_metricExecuteStartDate(*(a1 + 32), v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7);
    v11 = objc_msgSend_metricExecuteStartDate(*(a1 + 32), v9, v10);
    objc_msgSend_timeIntervalSinceDate_(v8, v12, v11);
    v14 = v13;

    v17 = objc_msgSend_startDate(v28, v15, v16);
    started = objc_msgSend_newRangeWithOperationState_startDate_duration_(v28, v18, 1, v17, v14);

    objc_msgSend_addRange_(v28, v20, started);
  }

  v21 = objc_msgSend_date(MEMORY[0x277CBEAA8], v6, v7);
  v24 = objc_msgSend_startDate(v28, v22, v23);
  objc_msgSend_timeIntervalSinceDate_(v21, v25, v24);
  objc_msgSend_setDuration_(v28, v26, v27);
}

void sub_22526A15C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = *MEMORY[0x277CBC878];
  v10 = *MEMORY[0x277CBC880];
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
      v15 = objc_msgSend_operationID(WeakRetained, v13, v14);
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v7;
      v16 = "Error fetching container scoped user identifier for operation %{public}@: %@";
LABEL_13:
      _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, v16, &v22, 0x16u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v12 = v17;
      v15 = objc_msgSend_operationID(WeakRetained, v20, v21);
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      v16 = "Fetched container scoped user identifier for operation %{public}@: %@";
      goto LABEL_13;
    }
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    (*(v18 + 16))(v18, v7);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_22526A6E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_callbackQueue(WeakRetained, v3, v4);
  v6 = *(a1 + 32);
  ck_call_or_dispatch_async_if_not_key();
}

id sub_22526A7A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);
  return objc_opt_self();
}

void sub_22526AAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22526AB14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_22526AFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_22526AFD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_group_leave(*(a1 + 32));
}

void sub_22526B5A0(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_requestCount(v6, v2, v3);
  objc_msgSend_setRequestCount_(v6, v5, v4 + 1);
}

void sub_22526BBF4(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11[0] = *(a1 + 32);
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v11, 1);
  MMCSOperationMetricCombineMetrics();

  if (*(a1 + 40))
  {
    v8 = objc_msgSend_requestOperationCountsByOperationType(*(a1 + 48), v6, v7);
    objc_msgSend_addRequestOperationCountsByOperationType_(v3, v9, v8);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22526BEE4()
{
  qword_280D54F08 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22526FB40(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v109 = objc_msgSend_startDate(v3, v4, v5);
  objc_msgSend_duration(v3, v6, v7);
  v9 = v8;
  objc_msgSend_queueing(v3, v10, v11);
  v13 = v12;
  objc_msgSend_executing(v3, v14, v15);
  v17 = v16;
  v108 = objc_msgSend_bytesUploaded(v3, v18, v19);
  v107 = objc_msgSend_bytesDownloaded(v3, v20, v21);
  v106 = objc_msgSend_networkServiceType(v3, v22, v23);
  v105 = objc_msgSend_connections(v3, v24, v25);
  v104 = objc_msgSend_connectionsCreated(v3, v26, v27);
  v103 = objc_msgSend_bytesFulfilledByPeers(v3, v28, v29);
  v102 = objc_msgSend_bytesFulfilledLocally(v3, v30, v31);
  v101 = objc_msgSend_bytesResumed(v3, v32, v33);
  v100 = objc_msgSend_totalBytesByChunkProfile(v3, v34, v35);
  v99 = objc_msgSend_chunkCountByChunkProfile(v3, v36, v37);
  v98 = objc_msgSend_fileCountByChunkProfile(v3, v38, v39);
  v97 = objc_msgSend_walrusEnabled(v3, v40, v41);
  v96 = objc_msgSend_zoneishKeysRolled(v3, v42, v43);
  v95 = objc_msgSend_perRecordKeysRolled(v3, v44, v45);
  v94 = objc_msgSend_zoneKeysRolled(v3, v46, v47);
  v93 = objc_msgSend_shareKeysRolled(v3, v48, v49);
  v92 = objc_msgSend_keyRollsSkippedBySizeCheck(v3, v50, v51);
  v91 = objc_msgSend_identitiesRolledOnRecordSave(v3, v52, v53);
  v90 = objc_msgSend_identitiesRolledOnZoneSave(v3, v54, v55);
  v89 = objc_msgSend_failedIdentityRollAttempts(v3, v56, v57);
  v60 = objc_msgSend_zoneKeysRemoved(v3, v58, v59);
  v63 = objc_msgSend_zoneishKeysRemoved(v3, v61, v62);
  v66 = objc_msgSend_recordKeysRemoved(v3, v64, v65);
  v69 = objc_msgSend_keysNotRemoved(v3, v67, v68);
  v72 = objc_msgSend_adopterCapabilityCheckValidationFailures(v3, v70, v71);
  v75 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(v3, v73, v74);
  v78 = objc_msgSend_adopterCapabilityCheckResult(v3, v76, v77);
  v81 = objc_msgSend_requiredFeatureSetValidationFailures(v3, v79, v80);
  v84 = objc_msgSend_requiredFeatureSetValidationFailureTypes(v3, v82, v83);

  v88 = v97;
  v86 = objc_msgSend_initWithStartDate_duration_queueing_executing_bytesUploaded_bytesDownloaded_networkServiceType_connections_connectionsCreated_bytesFulfilledByPeers_bytesFulfilledLocally_bytesResumed_totalBytesByChunkProfile_chunkCountByChunkProfile_fileCountByChunkProfile_walrusEnabled_zoneishKeysRolled_perRecordKeysRolled_zoneKeysRolled_shareKeysRolled_keyRollsSkippedBySizeCheck_identitiesRolledOnRecordSave_identitiesRolledOnZoneSave_failedIdentityRollAttempts_zoneKeysRemoved_zoneishKeysRemoved_recordKeysRemoved_keysNotRemoved_adopterCapabilityCheckValidationFailures_adopterCapabilityCheckValidationFailureTypes_adopterCapabilityCheckResult_requiredFeatureSetValidationFailures_requiredFeatureSetValidationFailureTypes_(a1, v85, v109, v108, v107, v106, v105, v104, v9, v13, v17, v103, v102, v101, v100, v99, v98, v88, v96, v95, v94, v93, v92, v91, v90, v89, v60, v63, v66, v69, v72, v75, v78, v81, v84);

  return v86;
}

uint64_t sub_2252712A4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_operationCount(v5, v6, v7);
  if (v8 == objc_msgSend_operationCount(v4, v9, v10))
  {
    v13 = 0;
  }

  else
  {
    v14 = objc_msgSend_operationCount(v5, v11, v12);
    if (v14 < objc_msgSend_operationCount(v4, v15, v16))
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

void sub_225271518(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t sub_2252719EC()
{
  qword_280D54FA8 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

void sub_225272280(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_deviceContext(v2, v4, v5);
  v13 = objc_msgSend_logicalDeviceScopedClientProxyForDeviceContext_(v3, v7, v6);

  if (objc_msgSend_hasBeenThrottled(v13, v8, v9))
  {
    objc_msgSend_resetThrottles(v13, v10, v11);
    objc_msgSend_setHasBeenThrottled_(v13, v12, 0);
  }
}

void sub_2252741F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_225274298;
  v4[3] = &unk_27854B6A0;
  v4[4] = WeakRetained;
  v5 = *(a1 + 32);
  objc_msgSend__lockedGetSQLCacheWithCompletionHandler_(WeakRetained, v3, v4);
}

void sub_225274298(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_callbackQueue(*(a1 + 32), v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225274380;
  block[3] = &unk_2785457E0;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

uint64_t sub_225274380(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_2252743A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_callbackQueue(*(a1 + 32), v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225274488;
  block[3] = &unk_2785457E0;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

uint64_t sub_225274488(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_2252745FC(uint64_t a1, const char *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    goto LABEL_45;
  }

  if ((*(a1 + 80) & 4) == 0)
  {
    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v41 = *(a1 + 40);
      *buf = 138543362;
      v50 = v41;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Client requested fetch of parent PCS data for item %{public}@, but the returned item type doesn't support chain PCS data.", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v5 = objc_msgSend_chainPCSData(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_pcs(v5, v6, v7);

  if (v8)
  {
LABEL_14:
    v10 = 1;
    goto LABEL_15;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v43 = *(a1 + 40);
    *buf = 138543362;
    v50 = v43;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "PCS data for %{public}@ was found in the cache, but it doesn't have chain PCS data and the client requested that. Fetching from the server.", buf, 0xCu);
  }

  v10 = 0;
LABEL_15:
  if ((*(a1 + 80) & 8) != 0)
  {
    v12 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      if (!objc_msgSend_zoneishPCS(*(a1 + 32), v13, v14))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v15 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          v44 = *(a1 + 40);
          *buf = 138543362;
          v50 = v44;
          _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "PCS data for %{public}@ was found in the cache, but it doesn't have zoneish PCS data and the client requested that. Fetching from the server.", buf, 0xCu);
        }

        v10 = 0;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v42 = *(a1 + 40);
        *buf = 138543362;
        v50 = v42;
        _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Client requested fetch of zoneish PCS data for item %{public}@, but the returned item type doesn't support zoneish PCS data. Returning item data anyway since it isn't a zone PCS.", buf, 0xCu);
      }
    }
  }

  if ((*(a1 + 80) & 0x10) != 0)
  {
    v17 = *(a1 + 32);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v21 = *(a1 + 32);
    if (isKindOfClass)
    {
      if (!objc_msgSend_signingPCS(*(a1 + 32), v19, v20))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v22 = *MEMORY[0x277CBC858];
        if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_45;
        }

        v23 = *(a1 + 40);
        *buf = 138543362;
        v50 = v23;
        v24 = "Record PCS data for %{public}@ was found in the cache, but it doesn't have per-participant PCS data and the client requested that. Fetching from the server.";
        goto LABEL_48;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = objc_msgSend_sharePCSData(*(a1 + 32), a2, v25);

        if (!v26)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v22 = *MEMORY[0x277CBC858];
          if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_45;
          }

          v45 = *(a1 + 40);
          *buf = 138543362;
          v50 = v45;
          v24 = "Zone PCS data for %{public}@ was found in the cache, but it doesn't have share PCS data and the client requested that. Fetching from the server.";
LABEL_48:
          _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, v24, buf, 0xCu);
          goto LABEL_45;
        }
      }
    }
  }

  if (!v10)
  {
LABEL_45:
    objc_msgSend__lockedCreatePCSCacheFetchOfItem_forOperation_options_fetchCreator_withCompletionHandler_(*(a1 + 48), a2, *(a1 + 40), *(a1 + 56), *(a1 + 80), *(a1 + 72), *(a1 + 64));
    goto LABEL_46;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v34 = v27;
    v37 = objc_msgSend_etag(v32, v35, v36);
    v40 = objc_msgSend_pcsKeyID(*(a1 + 32), v38, v39);
    *buf = 138543874;
    v50 = v33;
    v51 = 2114;
    v52 = v37;
    v53 = 2112;
    v54 = v40;
    _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Returning in-memory cached PCS data. item=%{public}@, protectionInfoTag=%{public}@, pcsKeyID=%@", buf, 0x20u);
  }

  v30 = objc_msgSend_callbackQueue(*(a1 + 48), v28, v29);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_225274BDC;
  v46[3] = &unk_2785456C8;
  v48 = *(a1 + 64);
  v47 = *(a1 + 32);
  dispatch_async(v30, v46);

LABEL_46:
  v31 = *MEMORY[0x277D85DE8];
}

void sub_225275710(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v11 = objc_msgSend_pcsData(*(*(*(a1 + 40) + 8) + 40), a2, a3);
  v7 = objc_msgSend_copy(v11, v5, v6);
  v10 = objc_msgSend_error(*(*(*(a1 + 40) + 8) + 40), v8, v9);
  (*(v4 + 16))(v4, v7, v10);
}

void sub_2252757AC(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, *(*(*(a1 + 56) + 8) + 40));
  v7 = objc_msgSend_fetchGroup(*(*(*(a1 + 56) + 8) + 40), v5, v6);
  v10 = objc_msgSend_fetchQueue(*(a1 + 32), v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22527595C;
  block[3] = &unk_27854B718;
  objc_copyWeak(&v15, &from);
  v13 = *(a1 + 40);
  objc_copyWeak(v16, &location);
  v16[1] = *(a1 + 64);
  v14 = *(a1 + 48);
  dispatch_group_notify(v7, v10, block);

  objc_msgSend__lockedAddOutstandingFetch_forItemIDString_databaseScope_(*(a1 + 32), v11, *(*(*(a1 + 56) + 8) + 40), *(a1 + 40), *(a1 + 64));
  objc_destroyWeak(v16);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_225275928(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22527595C(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_fetchError(WeakRetained, v3, v4);

  v6 = *MEMORY[0x277CBC878];
  v7 = *MEMORY[0x277CBC880];
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v8 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v12 = objc_msgSend_operationID(WeakRetained, v10, v11);
      v13 = *(a1 + 32);
      v16 = objc_msgSend_fetchError(WeakRetained, v14, v15);
      *buf = 138543874;
      v37 = v12;
      v38 = 2114;
      v39 = v13;
      v40 = 2112;
      v41 = v16;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Fetch operation %{public}@ for item %{public}@ finished with error: %@", buf, 0x20u);
LABEL_13:
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v17 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v9 = v17;
      v12 = objc_msgSend_operationID(WeakRetained, v25, v26);
      v27 = *(a1 + 32);
      v16 = objc_msgSend_pcsData(WeakRetained, v28, v29);
      v32 = objc_msgSend_pcsKeyID(v16, v30, v31);
      *buf = 138543874;
      v37 = v12;
      v38 = 2114;
      v39 = v27;
      v40 = 2112;
      v41 = v32;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Fetch operation %{public}@ for item %{public}@ finished with PCS data %@", buf, 0x20u);

      goto LABEL_13;
    }
  }

  v18 = objc_loadWeakRetained((a1 + 56));
  v20 = v18;
  if (v18)
  {
    objc_msgSend__lockedRemoveOutstandingFetch_forItemIDString_databaseScope_(v18, v19, WeakRetained, *(a1 + 32), *(a1 + 64));
    v23 = objc_msgSend_callbackQueue(v20, v21, v22);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_225275C2C;
    v33[3] = &unk_2785456C8;
    v35 = *(a1 + 40);
    v34 = WeakRetained;
    dispatch_async(v23, v33);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_225275C2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v8 = objc_msgSend_pcsData(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_error(*(a1 + 32), v5, v6);
  (*(v4 + 16))(v4, v8, v7);
}

void sub_225275E2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_225275E48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  objc_msgSend__lockedHandleMemoryFetchOfItem_pcsData_forOperation_options_fetchCreator_withCompletionHandler_(WeakRetained, v4, *(a1 + 32), v3, *(a1 + 40), *(a1 + 72), *(a1 + 48), *(a1 + 56));
}

void sub_225276024(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = v2;
    v21 = objc_msgSend_operationID(v16, v19, v20);
    v23 = sub_2250A4DF4(*(a1 + 64), v22);
    *buf = 138412802;
    v30 = v17;
    v31 = 2114;
    v32 = v21;
    v33 = 2114;
    v34 = v23;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Fetching PCS for record %@ for operation %{public}@ with options %{public}@", buf, 0x20u);
  }

  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225276234;
  aBlock[3] = &unk_27854B790;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v26 = v6;
  v28 = v7;
  v24 = *(a1 + 40);
  v8 = v24.i64[0];
  v27 = vextq_s8(v24, v24, 8uLL);
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 48);
  v13 = objc_msgSend_recordMemoryCache(v10, v11, v12);
  objc_msgSend__lockedFetchPCSForItem_memoryCache_forOperation_options_fetchCreator_withCompletionHandler_(v10, v14, v5, v13, *(a1 + 40), *(a1 + 64), v9, *(a1 + 56));

  v15 = *MEMORY[0x277D85DE8];
}

void sub_225276234(uint64_t *a1, void *a2)
{
  v3 = a2;
  v10 = objc_opt_new();
  objc_msgSend_setItemID_(v10, v4, a1[4]);
  objc_msgSend_setCache_(v10, v5, a1[5]);
  objc_msgSend_setOptions_(v10, v6, a1[7]);
  v7 = a1[6];
  v8 = objc_opt_class();
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v7, v9, v8, v10, v3);
}

void sub_225276450(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = v2;
    v21 = objc_msgSend_operationID(v16, v19, v20);
    v23 = sub_2250A4DF4(*(a1 + 64), v22);
    *buf = 138412802;
    v30 = v17;
    v31 = 2114;
    v32 = v21;
    v33 = 2114;
    v34 = v23;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Fetching PCS for zone %@ for operation %{public}@ with options %{public}@", buf, 0x20u);
  }

  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225276660;
  aBlock[3] = &unk_27854B790;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v26 = v6;
  v28 = v7;
  v24 = *(a1 + 40);
  v8 = v24.i64[0];
  v27 = vextq_s8(v24, v24, 8uLL);
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 48);
  v13 = objc_msgSend_zoneMemoryCache(v10, v11, v12);
  objc_msgSend__lockedFetchPCSForItem_memoryCache_forOperation_options_fetchCreator_withCompletionHandler_(v10, v14, v5, v13, *(a1 + 40), *(a1 + 64), v9, *(a1 + 56));

  v15 = *MEMORY[0x277D85DE8];
}

void sub_225276660(uint64_t *a1, void *a2)
{
  v3 = a2;
  v10 = objc_opt_new();
  objc_msgSend_setItemID_(v10, v4, a1[4]);
  objc_msgSend_setCache_(v10, v5, a1[5]);
  objc_msgSend_setOptions_(v10, v6, a1[7]);
  v7 = a1[6];
  v8 = objc_opt_class();
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v7, v9, v8, v10, v3);
}

void sub_22527687C(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = v2;
    v21 = objc_msgSend_operationID(v16, v19, v20);
    v23 = sub_2250A4DF4(*(a1 + 64), v22);
    *buf = 138412802;
    v30 = v17;
    v31 = 2114;
    v32 = v21;
    v33 = 2114;
    v34 = v23;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Fetching PCS for share %@ for operation %{public}@ with options %{public}@", buf, 0x20u);
  }

  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225276A8C;
  aBlock[3] = &unk_27854B790;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v26 = v6;
  v28 = v7;
  v24 = *(a1 + 40);
  v8 = v24.i64[0];
  v27 = vextq_s8(v24, v24, 8uLL);
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 48);
  v13 = objc_msgSend_shareMemoryCache(v10, v11, v12);
  objc_msgSend__lockedFetchPCSForItem_memoryCache_forOperation_options_fetchCreator_withCompletionHandler_(v10, v14, v5, v13, *(a1 + 40), *(a1 + 64), v9, *(a1 + 56));

  v15 = *MEMORY[0x277D85DE8];
}

void sub_225276A8C(uint64_t *a1, void *a2)
{
  v3 = a2;
  v10 = objc_opt_new();
  objc_msgSend_setItemID_(v10, v4, a1[4]);
  objc_msgSend_setCache_(v10, v5, a1[5]);
  objc_msgSend_setOptions_(v10, v6, a1[7]);
  v7 = a1[6];
  v8 = objc_opt_class();
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v7, v9, v8, v10, v3);
}

void sub_225276CC4(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v6 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  if (!*(a1 + 40))
  {
    objc_msgSend__lockedInvalidateAllOutstandingPCSFetchesForItemIDString_databaseScope_(*(a1 + 48), v5, v6, *(a1 + 64));
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 40);
    *buf = 138412546;
    *&buf[4] = v24;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Setting record PCS data %@ for %@ on our in-memory cache", buf, 0x16u);
  }

  dispatch_group_enter(v2);
  v10 = objc_msgSend_recordMemoryCache(*(a1 + 48), v8, v9);
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22527703C;
  v34[3] = &unk_2785470C0;
  v13 = v2;
  v35 = v13;
  objc_msgSend_setPCSData_forItemID_databaseScope_withCompletionHandler_(v10, v14, v11, v6, v12, v34);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = sub_225074110;
  v38 = sub_225073614;
  v39 = 0;
  dispatch_group_enter(v13);
  v15 = *(a1 + 48);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_225277044;
  v28[3] = &unk_27854B7E0;
  v32 = buf;
  v16 = v13;
  v29 = v16;
  v30 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = *(a1 + 64);
  v31 = v17;
  v33 = v18;
  objc_msgSend_getSQLCache_(v15, v19, v28);
  if (*(a1 + 56))
  {
    v22 = objc_msgSend_callbackQueue(*(a1 + 48), v20, v21);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_225277190;
    v25[3] = &unk_27854B6F0;
    v26 = *(a1 + 56);
    v27 = buf;
    dispatch_group_notify(v16, v22, v25);
  }

  _Block_object_dispose(buf, 8);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_225277044(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_225277130;
    v11[3] = &unk_278548040;
    v9 = *(a1 + 64);
    v13 = *(a1 + 56);
    v12 = *(a1 + 32);
    objc_msgSend_setRecordPCSData_forRecordWithID_databaseScope_withCompletionHandler_(a2, v10, v7, v8, v9, v11);
  }
}

void sub_225277130(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_22527733C(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v6 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  if (!*(a1 + 40))
  {
    objc_msgSend__lockedInvalidateAllOutstandingPCSFetchesForItemIDString_databaseScope_(*(a1 + 48), v5, v6, *(a1 + 64));
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 64);
    v26 = v7;
    v27 = CKDatabaseScopeString();
    *buf = 138412802;
    *&buf[4] = v24;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v40 = v27;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Setting zone PCS data %@ for %{public}@ on our in-memory cache in scope %@", buf, 0x20u);
  }

  dispatch_group_enter(v2);
  v10 = objc_msgSend_zoneMemoryCache(*(a1 + 48), v8, v9);
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2252776E4;
  v37[3] = &unk_2785470C0;
  v13 = v2;
  v38 = v13;
  objc_msgSend_setPCSData_forItemID_databaseScope_withCompletionHandler_(v10, v14, v11, v6, v12, v37);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = sub_225074110;
  v41 = sub_225073614;
  v42 = 0;
  dispatch_group_enter(v13);
  v15 = *(a1 + 48);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2252776EC;
  v31[3] = &unk_27854B7E0;
  v35 = buf;
  v16 = v13;
  v32 = v16;
  v33 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = *(a1 + 64);
  v34 = v17;
  v36 = v18;
  objc_msgSend_getSQLCache_(v15, v19, v31);
  if (*(a1 + 56))
  {
    v22 = objc_msgSend_callbackQueue(*(a1 + 48), v20, v21);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_225277838;
    v28[3] = &unk_27854B6F0;
    v29 = *(a1 + 56);
    v30 = buf;
    dispatch_group_notify(v16, v22, v28);
  }

  _Block_object_dispose(buf, 8);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_2252776EC(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2252777D8;
    v11[3] = &unk_278548040;
    v9 = *(a1 + 64);
    v13 = *(a1 + 56);
    v12 = *(a1 + 32);
    objc_msgSend_setZonePCSData_forZoneWithID_databaseScope_withCompletionHandler_(a2, v10, v7, v8, v9, v11);
  }
}

void sub_2252777D8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_2252779E4(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v6 = objc_msgSend_sqliteRepresentation(*(a1 + 32), v3, v4);
  if (!*(a1 + 40))
  {
    objc_msgSend__lockedInvalidateAllOutstandingPCSFetchesForItemIDString_databaseScope_(*(a1 + 48), v5, v6, *(a1 + 64));
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 40);
    *buf = 138412546;
    *&buf[4] = v24;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Setting share PCS data %@ for %{public}@ on our in-memory cache", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = sub_225074110;
  v39 = sub_225073614;
  v40 = 0;
  dispatch_group_enter(v2);
  v10 = objc_msgSend_shareMemoryCache(*(a1 + 48), v8, v9);
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_225277D50;
  v34[3] = &unk_278548040;
  v36 = buf;
  v13 = v2;
  v35 = v13;
  objc_msgSend_setPCSData_forItemID_databaseScope_withCompletionHandler_(v10, v14, v11, v6, v12, v34);

  dispatch_group_enter(v13);
  v15 = *(a1 + 48);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_225277DB0;
  v28[3] = &unk_27854B7E0;
  v32 = buf;
  v16 = v13;
  v29 = v16;
  v30 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = *(a1 + 64);
  v31 = v17;
  v33 = v18;
  objc_msgSend_getSQLCache_(v15, v19, v28);
  if (*(a1 + 56))
  {
    v22 = objc_msgSend_callbackQueue(*(a1 + 48), v20, v21);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225277EFC;
    block[3] = &unk_27854B6F0;
    v26 = *(a1 + 56);
    v27 = buf;
    dispatch_group_notify(v16, v22, block);
  }

  _Block_object_dispose(buf, 8);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_225277D50(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_225277DB0(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_225277E9C;
    v11[3] = &unk_278548040;
    v9 = *(a1 + 64);
    v13 = *(a1 + 56);
    v12 = *(a1 + 32);
    objc_msgSend_setSharePCSData_forShareWithID_databaseScope_withCompletionHandler_(a2, v10, v7, v8, v9, v11);
  }
}

void sub_225277E9C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_22527840C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneMemoryCache(*(a1 + 32), a2, a3);
  objc_msgSend_clearCache(v4, v5, v6);

  v9 = objc_msgSend_recordMemoryCache(*(a1 + 32), v7, v8);
  objc_msgSend_clearCache(v9, v10, v11);

  v14 = objc_msgSend_shareMemoryCache(*(a1 + 32), v12, v13);
  objc_msgSend_clearCache(v14, v15, v16);

  v17 = dispatch_semaphore_create(0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225278514;
  v21[3] = &unk_27854B808;
  v18 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = v17;
  v19 = v17;
  objc_msgSend_getSQLCache_(v18, v20, v21);
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_225278514(uint64_t a1, void *a2)
{
  objc_msgSend_removePCSDataForItemsInZoneWithID_withCompletionHandler_(a2, a2, *(a1 + 32), 0);
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_22527860C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zoneMemoryCache(*(a1 + 32), a2, a3);
  objc_msgSend_clearCache(v4, v5, v6);

  v9 = objc_msgSend_recordMemoryCache(*(a1 + 32), v7, v8);
  objc_msgSend_clearCache(v9, v10, v11);

  v14 = objc_msgSend_shareMemoryCache(*(a1 + 32), v12, v13);
  objc_msgSend_clearCache(v14, v15, v16);

  v17 = dispatch_semaphore_create(0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_225278714;
  v21[3] = &unk_27854B808;
  v18 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = v17;
  v19 = v17;
  objc_msgSend_getSQLCache_(v18, v20, v21);
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_225278714(uint64_t a1, void *a2)
{
  objc_msgSend_removePCSDataForItemsInShareWithID_withCompletionHandler_(a2, a2, *(a1 + 32), 0);
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_2252788E4(void **a1, const char *a2, uint64_t a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_zoneMemoryCache(a1[4], a2, a3);
  hasStatusToReport = objc_msgSend_hasStatusToReport(v4, v5, v6);

  if (hasStatusToReport)
  {
    objc_msgSend_addObject_(a1[5], v8, @"\tIn-memory zone cache:");
    v10 = a1[5];
    v13 = objc_msgSend_zoneMemoryCache(a1[4], v11, v12);
    v16 = objc_msgSend_CKStatusReportArray(v13, v14, v15);
    objc_msgSend_addObject_(v10, v17, v16);
  }

  v18 = objc_msgSend_recordMemoryCache(a1[4], v8, v9);
  v21 = objc_msgSend_hasStatusToReport(v18, v19, v20);

  if (v21)
  {
    objc_msgSend_addObject_(a1[5], v22, @"\tIn-memory record cache:");
    v24 = a1[5];
    v27 = objc_msgSend_recordMemoryCache(a1[4], v25, v26);
    v30 = objc_msgSend_CKStatusReportArray(v27, v28, v29);
    objc_msgSend_addObject_(v24, v31, v30);
  }

  v32 = objc_msgSend_shareMemoryCache(a1[4], v22, v23);
  v35 = objc_msgSend_hasStatusToReport(v32, v33, v34);

  if (v35)
  {
    objc_msgSend_addObject_(a1[5], v36, @"\tIn-memory share cache:");
    v38 = a1[5];
    v41 = objc_msgSend_shareMemoryCache(a1[4], v39, v40);
    v44 = objc_msgSend_CKStatusReportArray(v41, v42, v43);
    objc_msgSend_addObject_(v38, v45, v44);
  }

  if (objc_msgSend_hasStatusToReport(a1[6], v36, v37))
  {
    objc_msgSend_addObject_(a1[5], v46, @"\tSQL cache:");
    v48 = a1[5];
    v51 = objc_msgSend_CKStatusReportArray(a1[6], v49, v50);
    objc_msgSend_addObject_(v48, v52, v51);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v53 = objc_msgSend_outstandingFetches(a1[4], v46, v47);
  v56 = objc_msgSend_allValues(v53, v54, v55);

  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v84, v88, 16);
  if (!v58)
  {
    goto LABEL_18;
  }

  v61 = v58;
  v62 = 0;
  v63 = *v85;
  do
  {
    for (i = 0; i != v61; ++i)
    {
      if (*v85 != v63)
      {
        objc_enumerationMutation(v56);
      }

      v62 += objc_msgSend_count(*(*(&v84 + 1) + 8 * i), v59, v60);
    }

    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v59, &v84, v88, 16);
  }

  while (v61);

  if (v62)
  {
    v67 = MEMORY[0x277CCACA8];
    v68 = a1[5];
    v69 = objc_msgSend_outstandingFetches(a1[4], v65, v66);
    v72 = objc_msgSend_count(v69, v70, v71);
    v74 = objc_msgSend_stringWithFormat_(v67, v73, @"\t%lu outstanding fetch requests for %lu records", v62, v72);
    objc_msgSend_addObject_(v68, v75, v74);

    v76 = MEMORY[0x277CCACA8];
    v77 = a1[5];
    v56 = objc_msgSend_outstandingFetches(a1[4], v78, v79);
    v81 = objc_msgSend_stringWithFormat_(v76, v80, @"\t\t%@", v56);
    objc_msgSend_addObject_(v77, v82, v81);

LABEL_18:
  }

  v83 = *MEMORY[0x277D85DE8];
}

void sub_225278DA0(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Clearing all PCS caches", buf, 2u);
  }

  v5 = objc_msgSend_zoneMemoryCache(*(a1 + 32), v3, v4);
  objc_msgSend_clearCache(v5, v6, v7);

  v10 = objc_msgSend_recordMemoryCache(*(a1 + 32), v8, v9);
  objc_msgSend_clearCache(v10, v11, v12);

  v15 = objc_msgSend_shareMemoryCache(*(a1 + 32), v13, v14);
  objc_msgSend_clearCache(v15, v16, v17);

  v18 = dispatch_semaphore_create(0);
  v19 = *(a1 + 32);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_225278F08;
  v22[3] = &unk_27854B830;
  v23 = v18;
  v20 = v18;
  objc_msgSend_getSQLCache_(v19, v21, v22);
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t sub_225278F08(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_clearCache(a2, a2, a3);
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void sub_225279CC8(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      v20 = v9;
      v23 = objc_msgSend_recordID(v19, v21, v22);
      *buf = 138412546;
      v26 = v23;
      v27 = 2112;
      v28 = v8;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Error fetching PCS data from the database for %@: %@", buf, 0x16u);
    }

    v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
    dispatch_group_leave(v12);
  }

  else
  {
    v13 = objc_msgSend_recordID(*(a1 + 32), v6, v7);
    v16 = objc_msgSend_databaseScope(*(a1 + 32), v14, v15);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_225279E98;
    v24[3] = &unk_27854B8B8;
    v24[4] = *(a1 + 32);
    objc_msgSend_fetchPCSDataForRecordWithID_databaseScope_withCompletionHandler_(v5, v17, v13, v16, v24);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_225279E98(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (v5)
  {
    if ((objc_msgSend_fetchOptions(*(a1 + 32), v7, v8) & 4) == 0 || (objc_msgSend_chainPCSData(v5, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a1 + 32);
        v40 = v13;
        v43 = objc_msgSend_recordID(v39, v41, v42);
        *v44 = 138412290;
        *&v44[4] = v43;
        _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "PCS data was fetched from the database for record %@", v44, 0xCu);
      }

      objc_msgSend_setWasFetchedFromCache_(*(a1 + 32), v14, 1);
      objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v15, v5, 0);
      goto LABEL_24;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v34 = *(a1 + 32);
      v22 = v33;
      v25 = objc_msgSend_recordID(v34, v35, v36);
      *v44 = 138412290;
      *&v44[4] = v25;
      v26 = "PCS data was found in the database, but it didn't have the requested chain PCS. Fetching PCS data from the server for record %@.";
      goto LABEL_22;
    }
  }

  else
  {
    v18 = *MEMORY[0x277CBC878];
    v19 = *MEMORY[0x277CBC880];
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v18);
      }

      v20 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 32);
        v22 = v20;
        v25 = objc_msgSend_recordID(v21, v23, v24);
        *v44 = 138412546;
        *&v44[4] = v25;
        *&v44[12] = 2112;
        *&v44[14] = v9;
        v26 = "Error fetching PCS data from the database for %@: %@";
        v27 = v22;
        v28 = 22;
LABEL_23:
        _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, v26, v44, v28);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v18);
      }

      v29 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a1 + 32);
        v22 = v29;
        v25 = objc_msgSend_recordID(v30, v31, v32);
        *v44 = 138412290;
        *&v44[4] = v25;
        v26 = "No PCS data was found in the database for record %@";
LABEL_22:
        v27 = v22;
        v28 = 12;
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  v37 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v16, v17, *v44, *&v44[16], v45);
  dispatch_group_leave(v37);

  v38 = *MEMORY[0x277D85DE8];
}

void sub_22527A2D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v7 && !v9)
  {
    v13 = objc_msgSend_recordType(v7, v10, v11);
    objc_msgSend_setServerRecordType_(*(a1 + 32), v14, v13);
  }

  v15 = objc_msgSend_protectionData(v7, v10, v11);
  if (v15)
  {

LABEL_7:
    v21 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v18, v7);
    objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v22, v21, v12);
    goto LABEL_8;
  }

  v19 = objc_msgSend_zoneishKeyID(v7, v16, v17);

  if (v19)
  {
    goto LABEL_7;
  }

  if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v29 = 138412290;
      v30 = v12;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Error fetching PCS data from the server: %@", &v29, 0xCu);
    }
  }

  else if ((objc_msgSend_fetchOptions(*(a1 + 32), v18, v20) & 4) == 0)
  {
    objc_msgSend_setServerRecordHasNoProtectionData_(*(a1 + 32), v28, 1);
  }

  v21 = 0;
  objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v28, 0, v12);
LABEL_8:
  v25 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v23, v24);
  dispatch_group_leave(v25);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_22527A72C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22527A8C4;
  v9[3] = &unk_278549BF0;
  objc_copyWeak(&v11, &location);
  v10 = *(a1 + 40);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22527AACC;
  v6[3] = &unk_278548748;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_22527A888(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_22527A8C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = *MEMORY[0x277CBC878];
  v11 = *MEMORY[0x277CBC880];
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v10);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v8;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Got an error trying to save parent chain PCS data: %@", &v28, 0xCu);
    }

    v15 = objc_msgSend_fetchError(WeakRetained, v13, v14);

    if (!v15)
    {
      objc_msgSend_setFetchError_(WeakRetained, v16, v8);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v10);
    }

    v17 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 32);
      v28 = 138412290;
      v29 = v27;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Successfully saved chain PCS data on record %@", &v28, 0xCu);
    }

    v20 = objc_msgSend_protectionData(v7, v18, v19);

    if (v20)
    {
      objc_msgSend_setRecordPCSData_(WeakRetained, v21, 0);
      objc_msgSend_setDidFetchData_(WeakRetained, v22, 0);
      v24 = objc_msgSend_dataWithRecord_(CKDRecordPCSData, v23, v7);
      objc_msgSend__handlePCSDataFetched_withError_(WeakRetained, v25, v24, 0);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_22527AACC(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    v8 = objc_msgSend_error(v3, v4, v5);
    if (v8)
    {
      v9 = objc_msgSend_fetchError(WeakRetained, v6, v7);

      if (!v9)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v10 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v14 = 138412290;
          v15 = v8;
          _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Failed to save parent chain PCS data: %@", &v14, 0xCu);
        }

        objc_msgSend_setFetchError_(WeakRetained, v11, v8);
      }
    }

    v12 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
    dispatch_group_leave(v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22527AF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22527AF44(uint64_t a1, void *a2, void *a3)
{
  v47 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!objc_msgSend_pcs(v47, v7, v8))
  {
    v32 = objc_msgSend_domain(v5, v9, v10);
    v33 = *MEMORY[0x277CBC120];
    if (objc_msgSend_isEqualToString_(v32, v34, *MEMORY[0x277CBC120]))
    {
      v37 = objc_msgSend_code(v5, v35, v36);

      if (v37 == 5007)
      {
        v40 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v38, v33, 5010, v5, @"PCS fetch requested local cache only.");
        objc_msgSend_setFetchError_(WeakRetained, v41, v40);
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    v42 = MEMORY[0x277CBC560];
    v40 = objc_msgSend_recordID(WeakRetained, v38, v39);
    v44 = objc_msgSend_errorWithDomain_code_error_format_(v42, v43, v33, 2003, v5, @"Couldn't fetch zone PCS for record %@ from the server: %@", v40, v5);
    objc_msgSend_setFetchError_(WeakRetained, v45, v44);

    goto LABEL_11;
  }

  v11 = objc_msgSend_recordPCSData(WeakRetained, v9, v10);
  objc_msgSend_setZonePCSData_(v11, v12, v47);

  v15 = objc_msgSend_recordPCSData(WeakRetained, v13, v14);
  v18 = objc_msgSend_zoneishPublicKeyID(v15, v16, v17);
  if (!v18)
  {

    goto LABEL_13;
  }

  v21 = v18;
  v22 = objc_msgSend_zoneishPCS(v47, v19, v20);

  if (v22)
  {
    goto LABEL_13;
  }

  v25 = MEMORY[0x277CBC560];
  v26 = *MEMORY[0x277CBC120];
  v27 = objc_msgSend_recordID(WeakRetained, v23, v24);
  v29 = objc_msgSend_errorWithDomain_code_error_format_(v25, v28, v26, 2003, v5, @"Couldn't fetch record PCS from zone for record %@ from the server: %@", v27, v5);
  objc_msgSend_setFetchError_(WeakRetained, v30, v29);

LABEL_12:
  objc_msgSend_setShouldRetry_(WeakRetained, v31, 0);
LABEL_13:
  v46 = objc_msgSend_stateTransitionGroup(WeakRetained, v23, v24);
  dispatch_group_leave(v46);
}

void sub_22527BA40(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  objc_destroyWeak((v1 - 136));
  _Unwind_Resume(a1);
}

void sub_22527BAC8(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  if (objc_msgSend_pcs(v21, v6, v7))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v13 = objc_msgSend_recordPCSData(WeakRetained, v11, v12);
    objc_msgSend_setParentPCSData_(v13, v14, v21);

LABEL_6:
    goto LABEL_7;
  }

  WeakRetained = objc_msgSend_domain(v5, v8, v9);
  if (!objc_msgSend_isEqualToString_(WeakRetained, v15, *MEMORY[0x277CBC120]))
  {
    goto LABEL_6;
  }

  if (objc_msgSend_code(v5, v16, v17) == 5007)
  {
  }

  else
  {
    v20 = objc_msgSend_code(v5, v18, v19);

    if (v20 != 5010)
    {
      goto LABEL_7;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_7:
  dispatch_group_leave(*(a1 + 32));
}

void sub_22527BBD4(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  if (objc_msgSend_pcs(v21, v6, v7))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v13 = objc_msgSend_recordPCSData(WeakRetained, v11, v12);
    objc_msgSend_setSharePCSData_(v13, v14, v21);

LABEL_6:
    goto LABEL_7;
  }

  WeakRetained = objc_msgSend_domain(v5, v8, v9);
  if (!objc_msgSend_isEqualToString_(WeakRetained, v15, *MEMORY[0x277CBC120]))
  {
    goto LABEL_6;
  }

  if (objc_msgSend_code(v5, v16, v17) == 5007)
  {
  }

  else
  {
    v20 = objc_msgSend_code(v5, v18, v19);

    if (v20 != 5010)
    {
      goto LABEL_7;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_7:
  dispatch_group_leave(*(a1 + 32));
}

void sub_22527BCE0(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = objc_msgSend_shareID(v5, v8, v9);

  if (v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v44 = *(a1 + 32);
      v45 = v13;
      v48 = objc_msgSend_recordID(v44, v46, v47);
      v49 = *(a1 + 40);
      *buf = 138412546;
      v51 = v48;
      v52 = 2112;
      v53 = v49;
      _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Record %@ is in shared zone %@. Using zone PCS data to decrypt it.", buf, 0x16u);
    }
  }

  if (!objc_msgSend_pcs(v5, v11, v12))
  {
    v20 = objc_msgSend_domain(v6, v14, v15);
    if (objc_msgSend_isEqualToString_(v20, v37, *MEMORY[0x277CBC120]))
    {
      if (objc_msgSend_code(v6, v38, v39) == 5007)
      {
      }

      else
      {
        v42 = objc_msgSend_code(v6, v40, v41);

        if (v42 != 5010)
        {
          goto LABEL_16;
        }
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v16 = objc_msgSend_recordPCSData(WeakRetained, v14, v15);
  objc_msgSend_setZonePCSData_(v16, v17, v5);

  v20 = objc_msgSend_recordPCSData(WeakRetained, v18, v19);
  v23 = objc_msgSend_zoneishPublicKeyID(v20, v21, v22);
  if (!v23)
  {
LABEL_13:

    goto LABEL_16;
  }

  v26 = v23;
  v27 = objc_msgSend_zoneishPCS(v5, v24, v25);

  if (!v27)
  {
    v30 = MEMORY[0x277CBC560];
    v31 = *MEMORY[0x277CBC120];
    v32 = objc_msgSend_recordID(WeakRetained, v28, v29);
    v34 = objc_msgSend_errorWithDomain_code_error_format_(v30, v33, v31, 2003, v6, @"Couldn't fetch zoneish PCS from zone for record %@ from the server: %@", v32, v6);
    objc_msgSend_setFetchError_(WeakRetained, v35, v34);

    objc_msgSend_setShouldRetry_(WeakRetained, v36, 0);
  }

LABEL_16:
  dispatch_group_leave(*(a1 + 48));

  v43 = *MEMORY[0x277D85DE8];
}

void sub_22527BF94(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v71 = v3;
    v74 = objc_msgSend_recordID(WeakRetained, v72, v73);
    *buf = 138412290;
    v88 = v74;
    _os_log_debug_impl(&dword_22506F000, v71, OS_LOG_TYPE_DEBUG, "All PCS fetches for shared record %@ have finished.", buf, 0xCu);
  }

  v6 = objc_msgSend_recordPCSData(WeakRetained, v4, v5);
  v11 = objc_msgSend_parentPCSData(v6, v7, v8);
  if (v11)
  {
    goto LABEL_8;
  }

  v11 = objc_msgSend_recordPCSData(WeakRetained, v9, v10);
  v14 = objc_msgSend_sharePCSData(v11, v12, v13);
  if (v14)
  {

LABEL_8:
    goto LABEL_9;
  }

  v61 = objc_msgSend_recordPCSData(WeakRetained, v15, v16);
  v64 = objc_msgSend_zonePCSData(v61, v62, v63);

  if (!v64)
  {
    v65 = MEMORY[0x277CBC560];
    v66 = *MEMORY[0x277CBC120];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v67 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 5010, @"PCS fetch requested local cache only");
      objc_msgSend_setFetchError_(WeakRetained, v68, v67);
    }

    else
    {
      v67 = objc_msgSend_recordPCSData(WeakRetained, v17, v18);
      v77 = objc_msgSend_parentID(v67, v75, v76);
      v78 = *(a1 + 32);
      v79 = *(a1 + 40);
      v82 = objc_msgSend_recordID(WeakRetained, v80, v81);
      v84 = objc_msgSend_errorWithDomain_code_format_(v65, v83, v66, 2003, @"Couldn't fetch parent PCS (%@) or share PCS (%@) or any shared zone PCS (%@) for record %@ from the server", v77, v78, v79, v82);
      objc_msgSend_setFetchError_(WeakRetained, v85, v84);
    }

    objc_msgSend_setShouldRetry_(WeakRetained, v86, 0);
    goto LABEL_16;
  }

LABEL_9:
  if ((objc_msgSend_fetchOptions(WeakRetained, v17, v18) & 0x10) != 0)
  {
    v21 = objc_msgSend_recordPCSData(WeakRetained, v19, v20);
    v24 = objc_msgSend_sharePCSData(v21, v22, v23);

    v27 = objc_msgSend_recordPCSData(WeakRetained, v25, v26);
    v30 = v27;
    if (v24)
    {
      v31 = objc_msgSend_sharePCSData(v27, v28, v29);
      v34 = objc_msgSend_myParticipantPCS(v31, v32, v33);
    }

    else
    {
      v40 = objc_msgSend_zonePCSData(v27, v28, v29);
      v43 = objc_msgSend_shareID(v40, v41, v42);

      v46 = objc_msgSend_recordPCSData(WeakRetained, v44, v45);
      v30 = v46;
      if (v43)
      {
        v31 = objc_msgSend_zonePCSData(v46, v47, v48);
        v51 = objc_msgSend_sharePCSData(v31, v49, v50);
        v54 = objc_msgSend_myParticipantPCS(v51, v52, v53);
        v57 = objc_msgSend_recordPCSData(WeakRetained, v55, v56);
        objc_msgSend_setSigningPCS_(v57, v58, v54);

        goto LABEL_15;
      }

      v31 = objc_msgSend_parentPCSData(v46, v47, v48);
      v34 = objc_msgSend_signingPCS(v31, v69, v70);
    }

    v37 = v34;
    v38 = objc_msgSend_recordPCSData(WeakRetained, v35, v36);
    objc_msgSend_setSigningPCS_(v38, v39, v37);

LABEL_15:
  }

LABEL_16:
  v59 = objc_msgSend_stateTransitionGroup(WeakRetained, v19, v20);
  dispatch_group_leave(v59);

  v60 = *MEMORY[0x277D85DE8];
}

void sub_22527DA2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 144));
  _Unwind_Resume(a1);
}

void sub_22527DAAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527DB04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527DB5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527DBB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527DE00(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22527DE28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527DE80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527E3D0(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      v20 = v9;
      v23 = objc_msgSend_shareID(v19, v21, v22);
      *buf = 138412546;
      v26 = v23;
      v27 = 2112;
      v28 = v8;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Error fetching PCS data from the database for %@: %@", buf, 0x16u);
    }

    v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
    dispatch_group_leave(v12);
  }

  else
  {
    v13 = objc_msgSend_shareID(*(a1 + 32), v6, v7);
    v16 = objc_msgSend_databaseScope(*(a1 + 32), v14, v15);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22527E5A0;
    v24[3] = &unk_27854B980;
    v24[4] = *(a1 + 32);
    objc_msgSend_fetchPCSDataForShareWithID_databaseScope_withCompletionHandler_(v5, v17, v13, v16, v24);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22527E5A0(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v25 = *MEMORY[0x277CBC878];
    v26 = *MEMORY[0x277CBC880];
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v25);
      }

      v27 = *MEMORY[0x277CBC858];
      if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v30 = *(a1 + 32);
      v31 = v27;
      v34 = objc_msgSend_shareID(v30, v32, v33);
      *buf = 138412546;
      v51 = v34;
      v52 = 2112;
      v53 = v7;
      v35 = "Error fetching PCS data from the database for %@: %@";
      v36 = v31;
      v37 = 22;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v25);
      }

      v38 = *MEMORY[0x277CBC858];
      if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v46 = *(a1 + 32);
      v31 = v38;
      v34 = objc_msgSend_shareID(v46, v47, v48);
      *buf = 138412290;
      v51 = v34;
      v35 = "No PCS data was found in the database for share %@";
      v36 = v31;
      v37 = 12;
    }

    _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, v35, buf, v37);

LABEL_15:
    v39 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v28, v29);
    dispatch_group_leave(v39);

    goto LABEL_16;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v41 = *(a1 + 32);
    v42 = v8;
    v45 = objc_msgSend_shareID(v41, v43, v44);
    *buf = 138412290;
    v51 = v45;
    _os_log_debug_impl(&dword_22506F000, v42, OS_LOG_TYPE_DEBUG, "PCS data was fetched from the database for share %@", buf, 0xCu);
  }

  v11 = objc_msgSend_container(*(a1 + 32), v9, v10);
  v14 = objc_msgSend_pcsManager(v11, v12, v13);
  v17 = objc_msgSend_shareModificationDate(v5, v15, v16);
  v20 = objc_msgSend_topmostParentOperation(*(a1 + 32), v18, v19);
  v23 = objc_msgSend_operationID(v20, v21, v22);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_22527E8E8;
  v49[3] = &unk_27854B980;
  v49[4] = *(a1 + 32);
  objc_msgSend_decryptPCSDataOnSharePCS_shareModificationDate_requestorOperationID_completionHandler_(v14, v24, v5, v17, v23, v49);

LABEL_16:
  v40 = *MEMORY[0x277D85DE8];
}

void sub_22527E8E8(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_pcs(v5, v7, v8);
  if (v6 || !v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      v18 = v14;
      v21 = objc_msgSend_shareID(v17, v19, v20);
      v22 = 138412546;
      v23 = v21;
      v24 = 2112;
      v25 = v6;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Couldn't decrypt PCS data for share %@ from the database with error %@. Ignoring it and re-fetching from the server", &v22, 0x16u);
    }
  }

  else
  {
    objc_msgSend_setWasFetchedFromCache_(*(a1 + 32), v10, 1);
    objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v11, v5, 0);
  }

  v15 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v12, v13);
  dispatch_group_leave(v15);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22527EB5C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v10 = objc_msgSend_invitedProtectionData(v6, v8, v9);

  v13 = *(a1 + 32);
  if (v7 || !v10)
  {
    objc_msgSend__handlePCSDataFetched_withError_(v13, v11, 0, v7);
    v27 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v25, v26);
    dispatch_group_leave(v27);
  }

  else
  {
    v14 = objc_msgSend_container(v13, v11, v12);
    v17 = objc_msgSend_pcsManager(v14, v15, v16);
    v20 = objc_msgSend_topmostParentOperation(*(a1 + 32), v18, v19);
    v23 = objc_msgSend_operationID(v20, v21, v22);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22527ECA4;
    v28[3] = &unk_27854B980;
    v28[4] = *(a1 + 32);
    objc_msgSend_pcsDataFromFetchedShare_requestorOperationID_completionHandler_(v17, v24, v6, v23, v28);
  }
}

void sub_22527ECA4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), a2, a2, a3);
  v6 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_leave(v6);
}

void sub_22527EF00(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22527EF28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527EF80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_22527F328(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (v5)
  {
    if ((objc_msgSend_fetchOptions(*(a1 + 32), v7, v8) & 8) == 0 || (objc_msgSend_zoneishPCSData(v5, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v43 = *(a1 + 32);
        v44 = v13;
        v47 = objc_msgSend_zoneID(v43, v45, v46);
        *v48 = 138412290;
        *&v48[4] = v47;
        _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "PCS data was fetched from the database for zone %@", v48, 0xCu);
      }

      objc_msgSend_setWasFetchedFromCache_(*(a1 + 32), v14, 1);
      objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v15, v5, 0);
      goto LABEL_24;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 32);
      v22 = v37;
      v25 = objc_msgSend_zoneID(v38, v39, v40);
      *v48 = 138412290;
      *&v48[4] = v25;
      v26 = "Zone PCS data was fetched from the database but it didn't have the requested zoneish PCS. Fetching PCS data from the server for zone %@";
      v27 = v22;
      v28 = 12;
      goto LABEL_22;
    }
  }

  else
  {
    v18 = *MEMORY[0x277CBC878];
    v19 = *MEMORY[0x277CBC880];
    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v18);
      }

      v20 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 32);
        v22 = v20;
        v25 = objc_msgSend_zoneID(v21, v23, v24);
        *v48 = 138412546;
        *&v48[4] = v25;
        *&v48[12] = 2112;
        *&v48[14] = v9;
        v26 = "Error fetching PCS data from the database for %@: %@";
        v27 = v22;
        v28 = 22;
LABEL_22:
        _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, v26, v48, v28);

        goto LABEL_23;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v18);
      }

      v29 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a1 + 32);
        v22 = v29;
        v33 = objc_msgSend_zoneID(v30, v31, v32);
        objc_msgSend_databaseScope(*(a1 + 32), v34, v35);
        v36 = CKDatabaseScopeString();
        *v48 = 138412546;
        *&v48[4] = v33;
        *&v48[12] = 2112;
        *&v48[14] = v36;
        _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "No PCS data was found in the database for zone %@ with scope %@", v48, 0x16u);

LABEL_23:
      }
    }
  }

LABEL_24:
  v41 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v16, v17, *v48, *&v48[16], v49);
  dispatch_group_leave(v41);

  v42 = *MEMORY[0x277D85DE8];
}

void sub_22527F950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22527F980(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 32);
    v18 = v8;
    v21 = objc_msgSend_zoneID(WeakRetained, v19, v20);
    v22 = v21;
    v23 = @" with error: ";
    *v25 = 138413058;
    v24 = &stru_28385ED00;
    *&v25[4] = v17;
    *&v25[12] = 2112;
    if (!v6)
    {
      v23 = &stru_28385ED00;
    }

    *&v25[14] = v21;
    if (v6)
    {
      v24 = v6;
    }

    *&v25[22] = 2114;
    v26 = v23;
    v27 = 2112;
    v28 = v24;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Fetched PCS for share %@ in order to decrypt zone %@%{public}@%@", v25, 0x2Au);
  }

  if (objc_msgSend_pcs(v5, v9, v10, *v25, *&v25[16]))
  {
    v13 = objc_msgSend_zonePCSData(WeakRetained, v11, v12);
    objc_msgSend_setSharePCSData_(v13, v14, v5);
  }

  else if (v6)
  {
    objc_msgSend_setDependentPCSFetchError_(WeakRetained, v11, v6);
  }

  v15 = objc_msgSend_stateTransitionGroup(WeakRetained, v11, v12);
  dispatch_group_leave(v15);

  v16 = *MEMORY[0x277D85DE8];
}

void sub_22527FD38(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_initWeak(&location, v3);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22527FFD8;
  v17[3] = &unk_27854BA20;
  v19 = *(a1 + 48);
  v18 = *(a1 + 32);
  v20 = v21;
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v17);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2252801F0;
  v11[3] = &unk_27854BA48;
  v14 = *(a1 + 48);
  objc_copyWeak(&v16, &location);
  v15 = v21;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  objc_msgSend_setCompletionBlock_(v3, v5, v11);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_zoneID(*(a1 + 32), v7, v8);
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Updating zone %@ with new PCS object", buf, 0xCu);
  }

  objc_destroyWeak(&v16);
  _Block_object_dispose(v21, 8);
  objc_destroyWeak(&location);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22527FF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v26 + 64));
  _Block_object_dispose(&a26, 8);
  objc_destroyWeak((v27 - 104));
  _Unwind_Resume(a1);
}

void sub_22527FFD8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    v10 = objc_msgSend_zoneID(*(a1 + 32), v7, v8);
    isEqual = objc_msgSend_isEqual_(v6, v11, v10);

    v13 = *MEMORY[0x277CBC878];
    v14 = *MEMORY[0x277CBC880];
    if (isEqual)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v15 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 32);
        v19 = v15;
        v22 = objc_msgSend_zoneID(v18, v20, v21);
        v28 = 138412290;
        v29 = v22;
        _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Successfully saved PCS on zone: %@", &v28, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v16 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = v16;
        v27 = objc_msgSend_zoneID(v23, v25, v26);
        v28 = 138412546;
        v29 = v6;
        v30 = 2112;
        v31 = v27;
        _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "Saved zone ID isn't what we expected: %@ (expected %@)", &v28, 0x16u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2252801F0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v7 = objc_msgSend_error(WeakRetained, v5, v6);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && !*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = MEMORY[0x277CBC560];
    v11 = *MEMORY[0x277CBC120];
    v12 = objc_msgSend_zoneID(*(a1 + 32), a2, a3);
    v14 = objc_msgSend_errorWithDomain_code_format_(v10, v13, v11, 5004, @"Couldn't save zone with updated PCS data to the server for zone %@", v12);
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  result = *(a1 + 40);
  if (result)
  {
    v18 = *(*(*(a1 + 48) + 8) + 40);
    v19 = *(result + 16);

    return v19();
  }

  return result;
}

void sub_225280934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225280960(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = objc_msgSend_pcs(v5, v8, v9);
  v12 = v41[3];
  if (v12)
  {
    CFRetain(v12);
  }

  if (!v6 && v41[3])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x2020000000;
    v48 = 0;
    if ((objc_msgSend_fetchOptions(WeakRetained, v10, v11) & 8) == 0)
    {
      v18 = *(*(&buf + 1) + 24);
LABEL_15:
      v19 = *(a1 + 32);
      v20 = v41[3];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_225280DB4;
      v34[3] = &unk_27854BA98;
      v35 = v19;
      p_buf = &buf;
      v38 = &v40;
      v36 = *(a1 + 40);
      objc_msgSend__saveZoneToServer_withPCS_zoneishPCS_previousEtag_completion_(WeakRetained, v21, v35, v20, v18, 0, v34);

      v6 = 0;
LABEL_27:
      _Block_object_dispose(&buf, 8);
      goto LABEL_28;
    }

    v22 = objc_msgSend_container(WeakRetained, v16, v17);
    v25 = objc_msgSend_pcsManager(v22, v23, v24);
    v26 = v41[3];
    v39 = 0;
    v28 = objc_msgSend_createRecordPCSWithZonePCS_sharePCS_createLite_error_(v25, v27, v26, 0, 0, &v39);
    v6 = v39;
    *(*(&buf + 1) + 24) = v28;

    if (!v6)
    {
      v18 = *(*(&buf + 1) + 24);
      if (v18)
      {
        goto LABEL_15;
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *v44 = 138412290;
      v45 = v6;
      _os_log_error_impl(&dword_22506F000, v29, OS_LOG_TYPE_ERROR, "Couldn't create new zoneish PCS: %@", v44, 0xCu);
      if (v6)
      {
        goto LABEL_22;
      }
    }

    else if (v6)
    {
LABEL_22:
      v31 = *(*(&buf + 1) + 24);
      if (v31)
      {
        CFRelease(v31);
        *(*(&buf + 1) + 24) = 0;
      }

      v32 = v41[3];
      if (v32)
      {
        CFRelease(v32);
        v41[3] = 0;
      }

      (*(*(a1 + 40) + 16))();
      goto LABEL_27;
    }

    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, *MEMORY[0x277CBC120], 5005, @"Couldn't create a new zoneish PCS");
    goto LABEL_22;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Couldn't create new zone PCS: %@", &buf, 0xCu);
    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 5005, @"Couldn't create a new zone PCS");
  }

LABEL_9:
  v15 = v41[3];
  if (v15)
  {
    CFRelease(v15);
    v41[3] = 0;
  }

  (*(*(a1 + 40) + 16))();
LABEL_28:
  _Block_object_dispose(&v40, 8);

  v33 = *MEMORY[0x277D85DE8];
}

void sub_225280D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225280DB4(uint64_t *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v6 = a1[4];
      v7 = v5;
      v10 = objc_msgSend_zoneID(v6, v8, v9);
      v35 = 138543618;
      v36 = v10;
      v37 = 2114;
      v38 = v4;
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Failed to save new PCS object to zone %{public}@. Error: %{public}@", &v35, 0x16u);
    }

    v11 = *(*(a1[6] + 8) + 24);
    if (v11)
    {
      CFRelease(v11);
      *(*(a1[6] + 8) + 24) = 0;
    }

    v12 = *(*(a1[7] + 8) + 24);
    if (v12)
    {
      CFRelease(v12);
      *(*(a1[7] + 8) + 24) = 0;
    }

    (*(a1[5] + 16))();
    goto LABEL_25;
  }

  v13 = objc_msgSend_dataWithZone_(CKDZonePCSData, v3, a1[4]);
  objc_msgSend_setPcs_(v13, v14, *(*(a1[7] + 8) + 24));
  v16 = *(*(a1[6] + 8) + 24);
  if (v16)
  {
    objc_msgSend_setZoneishPCS_(v13, v15, v16);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC858];
    if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v18 = *(*(a1[6] + 8) + 24);
    v19 = v17;
    v22 = objc_msgSend_zoneishPublicKeyID(v13, v20, v21);
    v25 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v22, v23, v24);
    v35 = 138412546;
    v36 = v18;
    v37 = 2114;
    v38 = v25;
    _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Saved zoneishPCS is %@. Key ID is %{public}@", &v35, 0x16u);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

LABEL_18:
  v26 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v27 = a1[4];
    v28 = v26;
    v31 = objc_msgSend_zoneID(v27, v29, v30);
    v35 = 138543362;
    v36 = v31;
    _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "Save of new PCS object to zone %{public}@ was successful", &v35, 0xCu);
  }

  v32 = *(*(a1[6] + 8) + 24);
  if (v32)
  {
    CFRelease(v32);
    *(*(a1[6] + 8) + 24) = 0;
  }

  v33 = *(*(a1[7] + 8) + 24);
  if (v33)
  {
    CFRelease(v33);
    *(*(a1[7] + 8) + 24) = 0;
  }

  (*(a1[5] + 16))();

LABEL_25:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_22528123C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_container(*(a1 + 32), v10, v11);
  v15 = objc_msgSend_deviceContext(v12, v13, v14);
  v18 = objc_msgSend_testDeviceReference(v15, v16, v17);
  if (v18)
  {
    v21 = v18;
    v22 = objc_msgSend_zoneID(*(a1 + 32), v19, v20);
    v25 = objc_msgSend_zoneName(v22, v23, v24);
    isEqualToString = objc_msgSend_isEqualToString_(v25, v26, @"NoZonePCSOnServer");

    if (isEqualToString)
    {
      objc_msgSend_setProtectionData_(v7, v28, 0);
    }
  }

  else
  {
  }

  v30 = objc_msgSend_protectionData(v7, v28, v29);

  if (v30)
  {
    if (CKIsPCSError())
    {
      v34 = v9;
    }

    else
    {
      v34 = 0;
    }

    v48 = objc_msgSend_dataWithZone_(CKDZonePCSData, v33, v7);
    objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v49, v48, v34);
  }

  else
  {
    v35 = objc_msgSend_zoneID(v7, v31, v32);
    isDefaultRecordZoneID = objc_msgSend_isDefaultRecordZoneID(v35, v36, v37);

    if (isDefaultRecordZoneID)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v40 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Found a default zone with NULL PCS data. Creating new PCS data and saving it", buf, 2u);
      }

      v43 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v41, v42);
      dispatch_group_enter(v43);

      v44 = *(a1 + 32);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = sub_22528170C;
      v75[3] = &unk_27854B9D0;
      v75[4] = v44;
      objc_msgSend__saveNewPCSOnZone_completion_(v44, v45, v7, v75);
      v34 = 0;
    }

    else
    {
      if (v9)
      {
        v50 = v9;
      }

      else
      {
        v50 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v39, *MEMORY[0x277CBC120], 5001, @"Couldn't fetch zone PCS for %@ from the server", v8);
      }

      v34 = v50;
      v51 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v52 = MEMORY[0x277CBC858];
      v53 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v69 = *(a1 + 32);
        v70 = v53;
        v73 = objc_msgSend_zoneID(v69, v71, v72);
        *buf = 138412546;
        v77 = v73;
        v78 = 2112;
        v79 = v34;
        _os_log_debug_impl(&dword_22506F000, v70, OS_LOG_TYPE_DEBUG, "Error fetching PCS data for zone %@ from the server: %@", buf, 0x16u);
      }

      if (objc_msgSend_isSystemRecordZoneID(v8, v54, v55) && objc_msgSend_CKIsNotFoundError(v34, v56, v57))
      {
        if (*v51 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v58 = *v52;
        if (os_log_type_enabled(*v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "systemZone was not found. Creating systemZone and saving it", buf, 2u);
        }

        v61 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v59, v60);
        dispatch_group_enter(v61);

        v62 = *(a1 + 32);
        v65 = objc_msgSend_systemRecordZone(MEMORY[0x277CBC5E8], v63, v64);
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = sub_22528176C;
        v74[3] = &unk_27854B9D0;
        v74[4] = *(a1 + 32);
        objc_msgSend__saveNewPCSOnZone_completion_(v62, v66, v65, v74);
      }

      else
      {
        objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), v56, 0, v34);
      }
    }

    v48 = 0;
  }

  v67 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v46, v47);
  dispatch_group_leave(v67);

  v68 = *MEMORY[0x277D85DE8];
}

void sub_22528170C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), a2, a2, a3);
  v6 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_leave(v6);
}

void sub_22528176C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__handlePCSDataFetched_withError_(*(a1 + 32), a2, a2, a3);
  v6 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_leave(v6);
}

void sub_2252821AC(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = objc_msgSend_keyRollsSkippedBySizeCheck(v6, v2, v3);
  objc_msgSend_setKeyRollsSkippedBySizeCheck_(v6, v5, v4 + 1);
}

void sub_2252824A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252824CC(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v7 = objc_msgSend_domain(v3, v4, v5);
    if (objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x277CBBF50]))
    {
      v11 = objc_msgSend_code(v3, v9, v10);

      if (v11 == 14)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v23 = v12;
      v26 = objc_msgSend_zoneID(WeakRetained, v24, v25);
      *buf = 138412546;
      v28 = v26;
      v29 = 2112;
      v30 = v3;
      _os_log_error_impl(&dword_22506F000, v23, OS_LOG_TYPE_ERROR, "Error saving zone/zoneish PCS to the server for zone %@: %@", buf, 0x16u);
    }

    v15 = MEMORY[0x277CBC560];
    v16 = *MEMORY[0x277CBC120];
    v17 = objc_msgSend_zoneID(WeakRetained, v13, v14);
    v19 = objc_msgSend_errorWithDomain_code_format_(v15, v18, v16, 5001, @"Failed to save PCS for zone %@ to the server: %@", v17, v3);
    objc_msgSend_setFetchError_(WeakRetained, v20, v19);
  }

LABEL_11:
  v21 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_leave(v21);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2252826B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_225285800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225285824(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = objc_msgSend_opQueue(WeakRetained, v6, v7);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22528590C;
    v10[3] = &unk_278546550;
    v11 = v8;
    v12 = v4;
    dispatch_async(v9, v10);
  }

  else
  {
    v4[2](v4);
  }
}

uint64_t sub_22528590C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__lockedFetchesAreReady(*(a1 + 32), a2, a3);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_2252864C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_fetchCoalescer(WeakRetained, v1, v2);
  objc_msgSend_coalesce_(v3, v4, 0);
}

void sub_225286964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22528698C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_fetchCoalescer(WeakRetained, v1, v2);
  objc_msgSend_coalesce_(v3, v4, 0);
}

void sub_225286B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_225286B90(uint64_t a1, const char *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = objc_msgSend_queuedFetches(*(a1 + 32), a2, a3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v38, v42, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v39;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v39 != v10)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v38 + 1) + 8 * v11);
      v13 = objc_msgSend_operationID(*(a1 + 40), v7, v8);
      v15 = objc_msgSend_dependentOperationListContainsOperationID_(v12, v14, v13);

      if (v15)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v38, v42, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = objc_msgSend_equivalentRunningFetch(v12, v7, v8);
    v16 = objc_msgSend_runningOperationID(v17, v18, v19);

    if (!v16)
    {
      goto LABEL_19;
    }

    v22 = *(*(*(a1 + 48) + 8) + 40);
    while (1)
    {
      v23 = objc_msgSend_operationID(v22, v20, v21);
      isEqualToString = objc_msgSend_isEqualToString_(v16, v24, v23);

      if (isEqualToString)
      {
        break;
      }

      v28 = *(*(*(a1 + 48) + 8) + 40);
      v29 = objc_msgSend_parentOperation(v28, v26, v27);

      if (v28 == v29)
      {
        v35 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v30, v31);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, *(a1 + 64), *(a1 + 32), @"CKDPCSFetchAggregator.m", 231, @"I am my parent?");
      }

      v32 = objc_msgSend_parentOperation(*(*(*(a1 + 48) + 8) + 40), v30, v31);
      v33 = *(*(a1 + 48) + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = v32;

      v22 = *(*(*(a1 + 48) + 8) + 40);
      if (!v22)
      {
        goto LABEL_18;
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
LABEL_9:
    v16 = v4;
  }

LABEL_18:

LABEL_19:
  v37 = *MEMORY[0x277D85DE8];
}

void sub_225286ED0(uint64_t a1, const char *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(MEMORY[0x277CBC6C0], a2, a3);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_log(v4, v5, v6);
    v11 = objc_msgSend_identifier(v7, v9, v10);
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v8))
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v51 = v13;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PCSFetchAggregator", "Enqueuing fetch of record %@", buf, 0xCu);
      }
    }
  }

  v14 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 32);
    *buf = 138412290;
    v51 = v16;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Enqueuing fetch of record %@", buf, 0xCu);
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = objc_opt_class();
  v21 = objc_msgSend__lockedGetQueuedFetchForOperation_ofClass_(v17, v20, v18, v19);
  v22 = *(a1 + 32);
  v23 = *(a1 + 48);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_225287290;
  v47[3] = &unk_27854BB10;
  v24 = v7;
  v48 = v24;
  v49 = *(a1 + 56);
  objc_msgSend_addRequestForRecordID_forOperation_withCompletionHandler_(v21, v25, v22, v23, v47);
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(*(a1 + 48), v26, v27), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v28, v29, @"DelayPCSRecordFetch"), v30 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend_BOOLValue(v30, v31, v32), v30, v28, v33))
  {
    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v34, OS_LOG_TYPE_INFO, "Posting notification now", buf, 2u);
    }

    v37 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], v35, v36);
    objc_msgSend_postNotificationName_object_(v37, v38, @"com.apple.cloudkit.DelayPCSRecordFetch", 0);

    v39 = dispatch_time(0, 1000000000);
    v42 = objc_msgSend_opQueue(*(a1 + 40), v40, v41);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225287380;
    block[3] = &unk_278545A00;
    block[4] = *(a1 + 40);
    dispatch_after(v39, v42, block);
  }

  else
  {
    v43 = objc_msgSend_fetchCoalescer(*(a1 + 40), v26, v27);
    objc_msgSend_coalesce_(v43, v44, 0);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_225287290(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_msgSend_log(v12, v9, v10);
    v16 = objc_msgSend_identifier(*(a1 + 32), v14, v15);
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v13))
      {
        *v18 = 0;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v13, OS_SIGNPOST_INTERVAL_END, v17, "PCSFetchAggregator", "", v18, 2u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_225287380(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_fetchCoalescer(*(a1 + 32), a2, a3);
  objc_msgSend_coalesce_(v4, v3, 0);
}

void sub_2252874C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(MEMORY[0x277CBC6C0], a2, a3);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_log(v4, v5, v6);
    v11 = objc_msgSend_identifier(v7, v9, v10);
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v8))
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v35 = v13;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PCSFetchAggregator", "Enqueuing fetch of share %@", buf, 0xCu);
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    *buf = 138412290;
    v35 = v15;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Enqueuing fetch of share %@", buf, 0xCu);
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = objc_opt_class();
  v20 = objc_msgSend__lockedGetQueuedFetchForOperation_ofClass_(v16, v19, v17, v18);
  v21 = *(a1 + 32);
  v22 = *(a1 + 48);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_22528772C;
  v30[3] = &unk_27854BB38;
  v31 = v7;
  v32 = v21;
  v33 = *(a1 + 56);
  v23 = v7;
  objc_msgSend_addRequestForRecordID_forOperation_withCompletionHandler_(v20, v24, v32, v22, v30);
  v27 = objc_msgSend_fetchCoalescer(*(a1 + 40), v25, v26);
  objc_msgSend_coalesce_(v27, v28, 0);

  v29 = *MEMORY[0x277D85DE8];
}

void sub_22528772C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_msgSend_log(v12, v9, v10);
    v16 = objc_msgSend_identifier(*(a1 + 32), v14, v15);
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v13, OS_SIGNPOST_INTERVAL_END, v17, "PCSFetchAggregator", "", buf, 2u);
      }
    }
  }

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBC120], 2003, @"Record with ID %@ is not a share", *(a1 + 40));

      v7 = 0;
      v11 = v19;
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_225287980(uint64_t a1, const char *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(MEMORY[0x277CBC6C0], a2, a3);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_log(v4, v5, v6);
    v11 = objc_msgSend_identifier(v7, v9, v10);
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v8))
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v37 = v13;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PCSFetchAggregator", "Enqueuing fetch of zone %@", buf, 0xCu);
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    *buf = 138412290;
    v37 = v15;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Enqueuing fetch of zone %@", buf, 0xCu);
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = objc_opt_class();
  v20 = objc_msgSend__lockedGetQueuedFetchForOperation_ofClass_(v16, v19, v17, v18);
  v21 = *(a1 + 32);
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = sub_225287BCC;
  v33 = &unk_27854BB60;
  v34 = v7;
  v22 = *(a1 + 48);
  v35 = *(a1 + 56);
  v23 = v7;
  objc_msgSend_addRequestForZoneID_forOperation_withCompletionHandler_(v20, v24, v21, v22, &v30);
  v27 = objc_msgSend_fetchCoalescer(*(a1 + 40), v25, v26, v30, v31, v32, v33);
  objc_msgSend_coalesce_(v27, v28, 0);

  v29 = *MEMORY[0x277D85DE8];
}

void sub_225287BCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_msgSend_log(v12, v9, v10);
    v16 = objc_msgSend_identifier(*(a1 + 32), v14, v15);
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v13))
      {
        *v18 = 0;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v13, OS_SIGNPOST_INTERVAL_END, v17, "PCSFetchAggregator", "", v18, 2u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_225287D44(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 134217984;
    v36 = v5;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "PCSFetchAggregator %p was cancelled", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = objc_msgSend_queuedFetches(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v29, v34, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_cancelFetchOperation(*(*(&v29 + 1) + 8 * i), v9, v10);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v29, v34, 16);
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = objc_msgSend_runningFetches(*(a1 + 32), v14, v15, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v25, v33, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v26;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_cancelFetchOperation(*(*(&v25 + 1) + 8 * j), v19, v20);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v25, v33, 16);
    }

    while (v21);
  }

  v24 = *MEMORY[0x277D85DE8];
}

id CKBasicStringForIdentitySet(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v5, v6, @"Identity Set: %p\n", a2);
  objc_msgSend_appendFormat_(v5, v7, @"Primary service name: %@\n", v3);
  v8 = PCSIdentitySetCopyCurrentIdentityWithError();
  if (v8)
  {
    v10 = v8;
    objc_msgSend_appendFormat_(v5, v9, @"Current key: %p\n", v8);
    v11 = PCSIdentityGetPublicKey();
    objc_msgSend_appendFormat_(v5, v12, @"\tpublic-key: %@\n", v11);
    KeyID = PCSIdentityGetKeyID();
    objc_msgSend_appendFormat_(v5, v14, @"\tkeyid: %@\n", KeyID);
    if (PCSIdentityIsFullManatee())
    {
      objc_msgSend_appendFormat_(v5, v15, @"\tmanatee: %@\n", @"yes");
    }

    else
    {
      objc_msgSend_appendFormat_(v5, v15, @"\tmanatee: %@\n", @"no");
    }

    v16 = PCSGetPublicIdentitites();
    PublicKey = PCSIdentityGetPublicKey();
    if (CFDictionaryGetValueIfPresent(v16, PublicKey, 0))
    {
      objc_msgSend_appendFormat_(v5, v18, @"\tis public identity\n");
    }

    CFRelease(v10);
  }

  else
  {
    objc_msgSend_appendFormat_(v5, v9, @"No current key for the given service name.");
    v11 = 0;
  }

  v21 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v19, v20);
  isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v21, v22, v23);

  if (isAppleInternalInstall)
  {
    v25 = objc_opt_new();
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v29 = v11;
    v26 = v25;
    PCSIdentitySetEnumeratePublicKeys();
    if (v31[3])
    {
      objc_msgSend_appendFormat_(v5, v27, @"Additional public keys (%lu):\n%@", v31[3], v26);
    }

    _Block_object_dispose(&v30, 8);
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

void sub_2252883E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22528AD70(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], a2, a2);
  if (v3)
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v3);
  }

  return MEMORY[0x2821F96F8]();
}

void sub_22528B214(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = a2;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "service: %{public}@ <%{public}@>", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22528B680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_22528B6B0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = objc_msgSend_password(*(a1 + 32), a2, a3);
    if ((objc_msgSend_isEqualToString_(*(a1 + 40), v5, v4) & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  v6 = *(a1 + 48);

  return dispatch_semaphore_signal(v6);
}

uint64_t sub_22528B770()
{
  qword_280D58378 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_22528CB0C(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = a2;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "service: %{public}@ <%{public}@>", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22528CD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_22528CDAC(uint64_t a1)
{
  ExternalForm = PCSIdentitySetCreateExternalForm();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  return ExternalForm;
}

uint64_t sub_22528CE74()
{
  qword_280D58388 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22528E69C()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  qword_280D58398 = objc_msgSend_initWithObjects_(v0, v1, @"ForceSecurityErrorOnIdentityValidation", @"MasqueradeAsManateeIdentity", @"RefetchPCSIdentitySet", @"IdentityFetchLimit", @"ForceNoIdentitySetError", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22528EBE8(uint64_t a1, void *a2)
{
  result = objc_msgSend_isEqualToString_(a2, a2, *(a1 + 32));
  if ((result & 1) == 0)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    return objc_msgSend_appendFormat_(*(a1 + 40), v5, @"\t%@\n", a2);
  }

  return result;
}

void sub_22528EF70(uint64_t a1, const char *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_syncStatus(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_BOOLValue(v4, v5, v6);

  v10 = objc_msgSend_syncError(*(a1 + 32), v8, v9);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    v15 = v11;
    v18 = objc_msgSend_requestorOperationID(v14, v16, v17);
    v19 = *(a1 + 40);
    v22 = objc_msgSend_serviceName(*(a1 + 32), v20, v21);
    v23 = v22;
    v30 = 138544642;
    v24 = @" NO";
    v31 = v18;
    v32 = 2114;
    v33 = v19;
    v34 = 2114;
    if (v7)
    {
      v24 = @" YES";
    }

    v35 = v22;
    if (v10)
    {
      v25 = @" error: ";
    }

    else
    {
      v25 = &stru_28385ED00;
    }

    v36 = 2114;
    if (v10)
    {
      v26 = v10;
    }

    else
    {
      v26 = &stru_28385ED00;
    }

    v37 = v24;
    v38 = 2114;
    v39 = v25;
    v40 = 2112;
    v41 = v26;
    _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "User key sync completion for operation %{public}@ calling out to waiter operation %{public}@ for service %{public}@ with success:%{public}@%{public}@%@", &v30, 0x3Eu);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    v28 = objc_msgSend_KRSReturnedExistingIdentity(*(a1 + 32), v12, v13);
    (*(v27 + 16))(v27, v7, v10, v28);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22528F2E0()
{
  qword_280D583A8 = objc_alloc_init(CKDPCSKeySyncManager);

  return MEMORY[0x2821F96F8]();
}

void sub_22528FF70(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8 = objc_msgSend_keySyncQueue(*(a1 + 32), v6, v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22529003C;
  block[3] = &unk_278545AB0;
  v13 = a2;
  v11 = *(a1 + 40);
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, block);
}

void sub_22529003C(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC858];
  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 48))
    {
      v6 = &stru_28385ED00;
    }

    else
    {
      v6 = @"un";
    }

    v7 = *(a1 + 32);
    v8 = v4;
    v11 = objc_msgSend_serviceName(v7, v9, v10);
    v14 = objc_msgSend_requestorOperationID(*(a1 + 32), v12, v13);
    v15 = *(a1 + 40);
    *buf = 138544130;
    v73 = v6;
    v74 = 2114;
    v75 = v11;
    v76 = 2114;
    v77 = v14;
    v78 = 2112;
    v79 = v15;
    _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Finished user key sync %{public}@successfully for service %{public}@ for operation %{public}@. Error: %@", buf, 0x2Au);
  }

  v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, *(a1 + 48));
  objc_msgSend_setSyncStatus_(*(a1 + 32), v17, v16);

  if (*(a1 + 48) != 1 || *(a1 + 40))
  {
    v21 = objc_msgSend_isManatee(*(a1 + 32), v18, v19) ? 5009 : 5000;
    v22 = *MEMORY[0x277CBC120];
    v23 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], v21, *(a1 + 40), @"Failed user key sync");
    objc_msgSend_setSyncError_(*(a1 + 32), v24, v23);

    if (objc_msgSend_code(*(a1 + 40), v25, v26) == 228)
    {
      if ((objc_msgSend_racedWithGuitarfishRepairCallback(*(a1 + 32), v18, v19) & 1) == 0)
      {
        v29 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v27, v28);
        v32 = objc_msgSend_serviceName(*(a1 + 32), v30, v31);
        v71 = v32;
        v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v33, &v71, 1);
        objc_msgSend_addServicesNeedingDBRReauthentication_(v29, v35, v34);
      }

      v36 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, v22, 10006, @"User key sync failed due to DBR account re-auth needed. Direct user to settings to re-auth their account.");
      objc_msgSend_setSyncError_(*(a1 + 32), v37, v36);
    }
  }

  if (*(a1 + 48) == 1)
  {
    v38 = objc_msgSend_date(MEMORY[0x277CBEAA8], v18, v19);
    objc_msgSend_setCompletionDate_(*(a1 + 32), v39, v38);

    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v41 = *(a1 + 32);
      v42 = v40;
      v45 = objc_msgSend_completionDate(v41, v43, v44);
      objc_msgSend_timeIntervalSince1970(v45, v46, v47);
      v49 = v48;
      v52 = objc_msgSend_serviceName(*(a1 + 32), v50, v51);
      v55 = objc_msgSend_requestorOperationID(*(a1 + 32), v53, v54);
      *buf = 134218498;
      v73 = v49;
      v74 = 2114;
      v75 = v52;
      v76 = 2114;
      v77 = v55;
      _os_log_impl(&dword_22506F000, v42, OS_LOG_TYPE_INFO, "Setting user key sync completion date %f for service %{public}@ requested by operation %{public}@", buf, 0x20u);
    }

    if (*MEMORY[0x277CBC810] == 1)
    {
      if (*v2 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v56 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "Notifying identity watchers of successful user key sync", buf, 2u);
      }

      v59 = objc_msgSend_syncGroup(*(a1 + 32), v57, v58);
      dispatch_group_enter(v59);

      v62 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v60, v61);
      v66 = MEMORY[0x277D85DD0];
      v67 = 3221225472;
      v68 = sub_225290514;
      v69 = &unk_278545A00;
      v70 = *(a1 + 32);
      objc_msgSend_noteUserKeySyncWithCompletionHandler_(v62, v63, &v66);
    }
  }

  v64 = objc_msgSend_syncGroup(*(a1 + 32), v18, v19, v66, v67, v68, v69);
  dispatch_group_leave(v64);

  v65 = *MEMORY[0x277D85DE8];
}

void sub_225290514(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Finished notifying identity watchers of successful user key sync", v6, 2u);
  }

  v5 = objc_msgSend_syncGroup(*(a1 + 32), v3, v4);
  dispatch_group_leave(v5);
}

void sub_2252905CC(void **a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_syncGroup(a1[4], v4, v5);
  dispatch_group_enter(v6);

  v9 = objc_msgSend_keySyncQueue(a1[5], v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252906C0;
  block[3] = &unk_278546990;
  v12 = v3;
  v13 = a1[4];
  v14 = a1[6];
  v10 = v3;
  dispatch_async(v9, block);
}

void sub_2252906C0(void **a1, const char *a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v7 = a1[5];
      v8 = v4;
      v11 = objc_msgSend_serviceName(v7, v9, v10);
      v14 = objc_msgSend_requestorOperationID(a1[5], v12, v13);
      if (objc_msgSend_returnedExistingIdentity(a1[4], v15, v16))
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      isManatee = objc_msgSend_isManatee(a1[5], v17, v18);
      *v32 = 138544130;
      if (isManatee)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      *&v32[4] = v11;
      v33 = 2114;
      v34 = v14;
      v35 = 2114;
      v36 = v19;
      v37 = 2114;
      v38 = v21;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "User key sync for service %{public}@ for operation %{public}@ returned existing identity: %{public}@. Service is manatee: %{public}@", v32, 0x2Au);
    }

    v22 = objc_msgSend_returnedExistingIdentity(a1[4], v5, v6, *v32);
    objc_msgSend_setKRSReturnedExistingIdentity_(a1[5], v23, v22);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v24 = objc_msgSend__pcsTestOverrideForKey_(a1[6], a2, @"ForceKRSReturnExistingIdentityValue");
    v27 = v24;
    if (v24)
    {
      v28 = objc_msgSend_BOOLValue(v24, v25, v26);
      objc_msgSend_setKRSReturnedExistingIdentity_(a1[5], v29, v28);
    }
  }

  v30 = objc_msgSend_syncGroup(a1[5], a2, a3);
  dispatch_group_leave(v30);

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225290BB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v5 = objc_msgSend_keySyncTrackerByServiceNameByAccount(*(a1 + 32), a2, a3);
  objc_sync_enter(v5);
  v7 = objc_msgSend__on_queue_getKeySyncTrackerByServicenameForAccountDSID_(*v4, v6, *(a1 + 40));
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *(a1 + 48));
  v14 = objc_msgSend_completionDate(v9, v10, v11);
  if (v14)
  {
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = objc_msgSend_completionDate(v9, v12, v13);
      LODWORD(v15) = objc_msgSend_compare_(v15, v17, v16) == -1;
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v21 = objc_msgSend_completionDate(v9, v19, v20);
    objc_msgSend_timeIntervalSince1970(v21, v22, v23);
    v25 = v24;
    objc_msgSend_timeIntervalSince1970(*(a1 + 56), v26, v27);
    v29 = @"E";
    v32 = 134218498;
    v33 = v25;
    if (v15)
    {
      v29 = @"Ine";
    }

    v34 = 2048;
    v35 = v28;
    v36 = 2112;
    v37 = v29;
    _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Compared tracker completion date %f to decryptee modification date %f. %@ligible for user key sync", &v32, 0x20u);
  }

  objc_sync_exit(v5);
  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))(result, v15 ^ 1);
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_225290F1C(uint64_t a1, char a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = v10;
  v9 = v7;
  if (!v10 && (a2 & 1) == 0)
  {
    if (*(a1 + 48))
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], 0, *MEMORY[0x277CBBF50], 5009, @"Failed user key sync for service %@", *(a1 + 32));
    }

    else
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], 0, *MEMORY[0x277CBBF50], 5000, @"Failed user key sync for service %@", *(a1 + 32));
    }
    v8 = ;
  }

  v11 = v8;
  (*(*(a1 + 40) + 16))();
}

void sub_225291768(uint64_t a1, const char *a2, uint64_t a3)
{
  v101[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 104) == 1)
  {
    v4 = objc_msgSend_keySyncTrackerByServiceNameByAccount(*(a1 + 32), a2, a3);
    objc_sync_enter(v4);
    v7 = objc_msgSend_keySyncTrackerByServiceNameByAccount(*(a1 + 32), v5, v6);
    objc_msgSend_removeAllObjects(v7, v8, v9);

    objc_sync_exit(v4);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225291E3C;
  aBlock[3] = &unk_27854BCA0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 96);
  v12 = *(a1 + 48);
  v93 = *(a1 + 105);
  *&v13 = *(a1 + 88);
  *(&v13 + 1) = v11;
  *&v14 = v10;
  *(&v14 + 1) = v12;
  v91 = v14;
  v92 = v13;
  v15 = _Block_copy(aBlock);
  v17 = objc_msgSend_syncTrackerForAccountDSID_requestorOperationID_service_manatee_testOverrideProvider_(*(a1 + 32), v16, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 105), *(a1 + 80));
  v20 = objc_msgSend_state(v17, v18, v19);
  if (v20 <= 1)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v23 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
        {
          v26 = *(a1 + 72);
          v27 = v23;
          v30 = objc_msgSend_requestorOperationID(v17, v28, v29);
          *buf = 138543618;
          v95 = v26;
          v96 = 2112;
          v97 = v30;
          _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "A user key sync for service %{public}@ is already in progress due to operation %@, queueing ourselves behind it", buf, 0x16u);
        }

        v31 = objc_msgSend_keySyncQueue(*(a1 + 32), v24, v25);
        objc_msgSend_waitOnSyncWithQueue_waiterOperationID_handler_(v17, v32, v31, *(a1 + 64), v15);
      }

      goto LABEL_36;
    }

LABEL_31:
    if (*(a1 + 109))
    {
      objc_msgSend_performKeySyncWithSyncTracker_testableSyncConfig_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(*(a1 + 32), v21, v17, 2, *(a1 + 107), *(a1 + 80), *(a1 + 64), v15);
    }

    else if (*(a1 + 110))
    {
      objc_msgSend_performKeySyncWithSyncTracker_testableSyncConfig_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(*(a1 + 32), v21, v17, 3, *(a1 + 107), *(a1 + 80), *(a1 + 64), v15);
    }

    else
    {
      objc_msgSend_performKeySyncWithSyncTracker_testableSyncConfig_shouldThrottle_testOverrideProvider_requestorOperationID_completionHandler_(*(a1 + 32), v21, v17, *(a1 + 111), *(a1 + 107), *(a1 + 80), *(a1 + 64), v15);
    }

    goto LABEL_36;
  }

  if (v20 == 3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v74 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v76 = *(a1 + 72);
      v77 = v74;
      v80 = objc_msgSend_requestorOperationID(v17, v78, v79);
      *buf = 138543618;
      v95 = v76;
      v96 = 2112;
      v97 = v80;
      _os_log_impl(&dword_22506F000, v77, OS_LOG_TYPE_INFO, "No longer throttled for user key sync for service %{public}@, operation %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  if (v20 != 2)
  {
    goto LABEL_36;
  }

  if ((*(a1 + 106) & 1) != 0 || *(a1 + 107) != 1 || *(a1 + 108) != 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v81 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v82 = *(a1 + 72);
      v83 = v81;
      v86 = objc_msgSend_requestorOperationID(v17, v84, v85);
      *buf = 138543618;
      v95 = v82;
      v96 = 2112;
      v97 = v86;
      _os_log_impl(&dword_22506F000, v83, OS_LOG_TYPE_INFO, "Ignoring user key sync throttling for service %{public}@, operation %@", buf, 0x16u);
    }

LABEL_30:
    v87 = objc_msgSend_createSyncTrackerForAccountDSID_requestorOperationID_service_manatee_testOverrideProvider_(*(a1 + 32), v75, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 105), *(a1 + 80));

    v17 = v87;
    goto LABEL_31;
  }

  v33 = objc_msgSend_completionDate(v17, v21, v22);
  objc_msgSend_timeIntervalSinceNow(v33, v34, v35);
  v37 = v36;

  objc_msgSend_timeIntervalSinceNow(*(a1 + 48), v38, v39);
  v40 = fabs(v37);
  *(*(*(a1 + 96) + 8) + 24) = fabs(v41);
  v42 = MEMORY[0x277CBC560];
  v43 = *MEMORY[0x277CBBF68];
  v100 = *MEMORY[0x277CBBF68];
  v46 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v44, v45, 1800.0 - v40);
  v101[0] = v46;
  v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v101, &v100, 1);
  v49 = *MEMORY[0x277CBC120];
  v89 = objc_msgSend_errorWithDomain_code_userInfo_format_(v42, v50, *MEMORY[0x277CBC120], 5012, v48, @"PCS Sync throttled");

  if (*(a1 + 105))
  {
    v53 = 5008;
  }

  else
  {
    v53 = 2008;
  }

  v54 = MEMORY[0x277CBC560];
  v98[0] = v43;
  v55 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v51, v52, 1800.0 - v40);
  v98[1] = *MEMORY[0x277CCA7E8];
  v99[0] = v55;
  v99[1] = v89;
  v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, v99, v98, 2);
  v58 = *(a1 + 72);
  v61 = objc_msgSend_requestorOperationID(v17, v59, v60);
  v63 = objc_msgSend_errorWithDomain_code_userInfo_format_(v54, v62, v49, v53, v57, @"Recently completed user key sync for the %@ service %f seconds ago for operation %@. Throttling...", v58, *&v40, v61);

  objc_msgSend_setKeySyncResult_(*(a1 + 40), v64, 0x283865F20);
  v67 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v65, v66, v40);
  objc_msgSend_setThrottledDurationSec_(*(a1 + 40), v68, v67);

  v71 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v69, v70, *(*(*(a1 + 96) + 8) + 24));
  objc_msgSend_setKeySyncDurationSec_(*(a1 + 40), v72, v71);

  v73 = *(a1 + 88);
  if (v73)
  {
    (*(v73 + 16))(v73, 0, v63, *(a1 + 40));
  }

LABEL_36:
  v88 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225291E3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21 = a3;
  if (((v21 == 0) & a2) != 0)
  {
    v8 = &off_27854DFC0;
  }

  else
  {
    v8 = &off_27854DFC8;
  }

  objc_msgSend_setKeySyncResult_(*(a1 + 32), v7, *v8);
  objc_msgSend_timeIntervalSinceNow(*(a1 + 40), v9, v10);
  *(*(*(a1 + 56) + 8) + 24) = fabs(v11);
  v14 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v12, v13, *(*(*(a1 + 56) + 8) + 24));
  objc_msgSend_setKeySyncDurationSec_(*(a1 + 32), v15, v14);

  if (*(a1 + 64) == 1)
  {
    v17 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v16, a4);
    objc_msgSend_setKRSReturnedExistingIdentity_(*(a1 + 32), v18, v17);
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    (*(v19 + 16))(v19, a2, v21, *(a1 + 32));
  }

  return MEMORY[0x2821F9730]();
}

uint64_t sub_225292434(uint64_t a1, const char *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  obj = objc_msgSend_keySyncTrackerByServiceNameByAccount(*(a1 + 32), a2, a3);
  objc_sync_enter(obj);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = objc_msgSend_keySyncTrackerByServiceNameByAccount(*v3, v4, v5);
  v9 = objc_msgSend_allValues(v6, v7, v8);

  v32 = v9;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v40, v47, 16);
  if (v34)
  {
    v33 = *v41;
    v13 = MEMORY[0x277CBC880];
    v14 = MEMORY[0x277CBC830];
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(v32);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v16 = objc_msgSend_allValues(v15, v11, v12);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v36, v46, 16);
        if (v18)
        {
          v19 = *v37;
          do
          {
            v20 = 0;
            do
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v36 + 1) + 8 * v20);
              if (*v13 != -1)
              {
                dispatch_once(v13, *MEMORY[0x277CBC878]);
              }

              v22 = *v14;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                v27 = objc_msgSend_serviceName(v21, v23, v24);
                *buf = 138412290;
                v45 = v27;
                _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Key sync tracker for service: %@ raced with guitarfish repair callback.", buf, 0xCu);
              }

              objc_msgSend_setRacedWithGuitarfishRepairCallback_(v21, v25, 1);
              ++v20;
            }

            while (v18 != v20);
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v26, &v36, v46, 16);
          }

          while (v18);
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v11, &v40, v47, 16);
    }

    while (v34);
  }

  objc_sync_exit(obj);
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *sub_225292788(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_27854C4C0[a1 - 1];
  }
}

__CFString *sub_2252927B0(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Current Service";
  }

  else
  {
    return off_27854C4F0[a1 - 1];
  }
}

__CFString *CKStringFromSharePermission(char a1)
{
  v2 = objc_opt_new();
  v4 = v2;
  if (a1)
  {
    objc_msgSend_addObject_(v2, v3, @"ReadOnly");
  }

  else
  {
    objc_msgSend_addObject_(v2, v3, @"ReadWrite");
  }

  if ((a1 & 2) != 0)
  {
    objc_msgSend_addObject_(v4, v5, @"OON");
  }

  if ((a1 & 4) != 0)
  {
    objc_msgSend_addObject_(v4, v5, @"Anonymous");
  }

  if (objc_msgSend_count(v4, v5, v6))
  {
    v8 = objc_msgSend_componentsJoinedByString_(v4, v7, @"|");
  }

  else
  {
    v8 = @"none";
  }

  return v8;
}

void sub_225292E54(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_account(*(a1 + 32), a2, a3);
  objc_msgSend_setAccount_(*(a1 + 32), v5, *(a1 + 40));
  v8 = objc_msgSend_identityManager(*(a1 + 32), v6, v7);
  objc_msgSend_updateAccount_(v8, v9, *(a1 + 40));

  v12 = objc_msgSend_accountID(*(a1 + 40), v10, v11);
  v15 = objc_msgSend_accountID(v4, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v16, v15);

  if ((isEqualToString & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v34 = 0;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Account information changed. Clearing PCS caches", v34, 2u);
    }

    objc_msgSend_setBoundaryKeyData_(*(a1 + 32), v19, 0);
    if (!objc_msgSend_accountType(*(a1 + 40), v20, v21))
    {
      v24 = objc_msgSend_undecryptablePCSDataHashes(*(a1 + 32), v22, v23);
      objc_msgSend_removeAllObjects(v24, v25, v26);

      v29 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v27, v28);
      v32 = objc_msgSend_uuid(*(a1 + 32), v30, v31);
      objc_msgSend_clearServicesAndPublicKeysForManagerUUID_(v29, v33, v32);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_225293724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22529373C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(*(a1 + 32) + 64), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void sub_225294ABC(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v7 = v5;
  if (!a2 || v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Error decrypting the per-participant PCS: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v19 = 0;
    v10 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v8, v6, v9, 5, a2, &v19);
    v11 = v19;
    v7 = v11;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = *MEMORY[0x277CBC878];
    v14 = *MEMORY[0x277CBC880];
    if (v12)
    {
      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v15 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v10;
        _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Successfully invited PCS: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v17 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v7;
        _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Error decrypting the invited PCS: %@", buf, 0xCu);
        if (!v10)
        {
          goto LABEL_22;
        }
      }

      else if (!v10)
      {
        goto LABEL_22;
      }
    }

    CFRelease(v10);
  }

LABEL_22:
  (*(a1[6] + 16))();

  v18 = *MEMORY[0x277D85DE8];
}