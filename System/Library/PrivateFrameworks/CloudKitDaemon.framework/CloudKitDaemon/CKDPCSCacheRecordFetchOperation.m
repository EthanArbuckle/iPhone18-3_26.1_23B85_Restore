@interface CKDPCSCacheRecordFetchOperation
- (BOOL)_createAdditionalPCS;
- (BOOL)_decryptPCS;
- (BOOL)_decryptRecordPCSInPrivateDatabase;
- (BOOL)_decryptRecordPCSInSharedDatabase;
- (BOOL)_fetchDependentPCS;
- (BOOL)_fetchDependentPCSInSharedDatabase;
- (BOOL)_fetchPCSDataFromDatabase;
- (BOOL)_fetchPCSDataFromServer;
- (BOOL)_fetchPCSForPrivateZone;
- (BOOL)_savePCSDataToCache;
- (BOOL)hasAllPCSData;
- (BOOL)needsChainPCSCreation;
- (void)_handlePCSDataFetched:(id)a3 withError:(id)a4;
@end

@implementation CKDPCSCacheRecordFetchOperation

- (BOOL)needsChainPCSCreation
{
  if ((objc_msgSend_fetchOptions(self, a2, v2) & 4) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_recordPCSData(self, v4, v5);
  v10 = objc_msgSend_chainPCSData(v7, v8, v9);
  v6 = v10 == 0;

  return v6;
}

- (BOOL)hasAllPCSData
{
  if (objc_msgSend_serverRecordHasNoProtectionData(self, a2, v2))
  {
    return 1;
  }

  v7 = objc_msgSend_recordPCSData(self, v4, v5);
  v6 = objc_msgSend_pcs(v7, v8, v9) != 0;

  return v6;
}

- (void)_handlePCSDataFetched:(id)a3 withError:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = MEMORY[0x277CBC830];
  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v22 = objc_msgSend_operationID(v8, v12, v13);
    v25 = objc_msgSend_pcsKeyID(v6, v23, v24);
    v28 = objc_msgSend_zoneishPublicKeyID(v6, v26, v27);
    v29 = v28;
    v30 = @" and error ";
    *v42 = 138544386;
    v31 = &stru_28385ED00;
    *&v42[4] = v22;
    *&v42[12] = 2114;
    if (v7)
    {
      v31 = v7;
    }

    else
    {
      v30 = &stru_28385ED00;
    }

    *&v42[14] = v25;
    v43 = 2114;
    v44 = v28;
    v45 = 2114;
    v46 = v30;
    v47 = 2112;
    v48 = v31;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Record PCS fetch operation %{public}@ received PCS data (%{public}@/%{public}@)%{public}@%@", v42, 0x34u);
  }

  if (objc_msgSend_didFetchData(v8, v14, v15))
  {
    if (*v9 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v10;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v32 = objc_msgSend_operationID(v8, v18, v19);
      v35 = objc_msgSend_recordPCSData(v8, v33, v34);
      v38 = objc_msgSend_pcsKeyID(v35, v36, v37);
      v41 = objc_msgSend_pcsKeyID(v6, v39, v40);
      *v42 = 138544130;
      *&v42[4] = v32;
      *&v42[12] = 2112;
      *&v42[14] = v38;
      v43 = 2112;
      v44 = v41;
      v45 = 2112;
      v46 = v7;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Record PCS fetch operation %{public}@ already has PCS data %@. Ignoring the fetch callback with %@/%@", v42, 0x2Au);
    }
  }

  else
  {
    if (v6)
    {
      objc_msgSend_setRecordPCSData_(v8, v16, v6);
      objc_msgSend_setDidFetchData_(v8, v20, 1);
    }

    objc_msgSend_setFetchError_(v8, v16, v7, *v42);
  }

  objc_sync_exit(v8);

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
    v15 = objc_msgSend_recordID(self, v13, v14);
    *buf = 138412290;
    v18 = v15;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Fetching PCS data for record %@ from the database", buf, 0xCu);
  }

  v8 = objc_msgSend_cache(self, v6, v7);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225279CC8;
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
  v13 = objc_msgSend_recordID(self, v11, v12);
  v16 = objc_msgSend_parentOperation(self, v14, v15);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22527A2D8;
  v19[3] = &unk_278548AA8;
  v19[4] = self;
  objc_msgSend_requestFetchOfRecordWithID_forOperation_withCompletionHandler_(v10, v17, v13, v16, v19);

  return 1;
}

- (BOOL)_createAdditionalPCS
{
  v45 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_needsChainPCSCreation(self, a2, v2))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v36 = v4;
      v39 = objc_msgSend_recordID(self, v37, v38);
      *buf = 138412290;
      v44 = v39;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "PCS data from server for %@ has no PCS chaining blob. Creating it and saving the record to the server", buf, 0xCu);
    }

    v7 = objc_msgSend_stateTransitionGroup(self, v5, v6);
    dispatch_group_enter(v7);

    v10 = objc_msgSend_recordPCSData(self, v8, v9);
    v13 = objc_msgSend_recordType(v10, v11, v12);
    v16 = v13;
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = objc_msgSend_serverRecordType(self, v14, v15);
    }

    v18 = v17;

    v19 = objc_alloc(MEMORY[0x277CBC5A0]);
    v22 = objc_msgSend_recordID(self, v20, v21);
    v24 = objc_msgSend_initWithRecordType_recordID_(v19, v23, v18, v22);

    objc_msgSend_setWantsChainPCS_(v24, v25, 1);
    v26 = objc_opt_new();
    objc_msgSend_setSavePolicy_(v26, v27, 1);
    v42 = v24;
    v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, &v42, 1);
    objc_msgSend_setRecordsToSave_(v26, v30, v29);

    v31 = objc_opt_class();
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_22527A72C;
    v40[3] = &unk_278548C48;
    v40[4] = self;
    v41 = v24;
    v32 = v24;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v33, v31, v26, v40);
  }

  v34 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_fetchPCSForPrivateZone
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordPCSData(self, a2, v2);
  v7 = objc_msgSend_pcs(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_recordPCSData(self, v8, v9);
    v13 = objc_msgSend_zoneID(v10, v11, v12);

    v14 = MEMORY[0x277CBC880];
    v15 = MEMORY[0x277CBC858];
    if (!v13)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
      {
        v19 = v16;
        v22 = objc_msgSend_recordID(self, v20, v21);
        *buf = 138412290;
        v52 = v22;
        _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Warn: We don't have a zone ID in our PCS data for record %@. Using the record's zone ID instead", buf, 0xCu);
      }

      v23 = objc_msgSend_recordID(self, v17, v18);
      v13 = objc_msgSend_zoneID(v23, v24, v25);
    }

    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
    {
      v45 = v26;
      v48 = objc_msgSend_recordID(self, v46, v47);
      *buf = 138412546;
      v52 = v13;
      v53 = 2112;
      v54 = v48;
      _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Fetching PCS for zone %@ in order to decrypt record %@", buf, 0x16u);
    }

    v29 = objc_msgSend_stateTransitionGroup(self, v27, v28);
    dispatch_group_enter(v29);

    objc_initWeak(buf, self);
    Options = objc_msgSend_fetchOptions(self, v30, v31);
    v35 = objc_msgSend_recordPCSData(self, v33, v34);
    v38 = objc_msgSend_zoneishPublicKeyID(v35, v36, v37);

    v41 = objc_msgSend_cache(self, v39, v40);
    if (v38)
    {
      Options |= 8uLL;
    }

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22527AF44;
    v49[3] = &unk_27854B8E0;
    objc_copyWeak(&v50, buf);
    objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v41, v42, v13, self, Options, v49);

    objc_destroyWeak(&v50);
    objc_destroyWeak(buf);
  }

  v43 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_fetchDependentPCSInSharedDatabase
{
  v152 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v5 = objc_msgSend_recordPCSData(self, v3, v4);
  if (!objc_msgSend_pcs(v5, v6, v7))
  {

    goto LABEL_6;
  }

  if ((objc_msgSend_fetchOptions(self, v8, v9) & 0x10) == 0)
  {
LABEL_36:

    goto LABEL_37;
  }

  v12 = objc_msgSend_recordPCSData(self, v10, v11);
  v15 = objc_msgSend_signingPCS(v12, v13, v14) == 0;

  if (v15)
  {
LABEL_6:
    v5 = dispatch_group_create();
    v18 = objc_msgSend_stateTransitionGroup(self, v16, v17);
    dispatch_group_enter(v18);

    v145[0] = 0;
    v145[1] = v145;
    v145[2] = 0x2020000000;
    v146 = 0;
    v21 = objc_msgSend_recordPCSData(self, v19, v20);
    v24 = objc_msgSend_shareID(v21, v22, v23);

    v27 = objc_msgSend_recordPCSData(self, v25, v26);
    v30 = objc_msgSend_parentID(v27, v28, v29);

    v33 = MEMORY[0x277CBC880];
    v34 = MEMORY[0x277CBC858];
    if (v24)
    {
      v35 = objc_msgSend_container(self, v31, v32);
      v38 = objc_msgSend_containerID(v35, v36, v37);
      v41 = objc_msgSend_specialContainerType(v38, v39, v40) == 21;

      if (v41 || v30 == 0)
      {
        goto LABEL_15;
      }
    }

    else if (!v30)
    {
LABEL_20:
      v70 = objc_msgSend_recordPCSData(self, v31, v32);
      v73 = objc_msgSend_parentID(v70, v71, v72);
      v74 = v73 == 0;

      if (!v74)
      {
        v24 = 0;
LABEL_22:
        v75 = objc_msgSend_recordPCSData(self, v68, v69);
        v78 = objc_msgSend_zoneID(v75, v76, v77);

        if (v78)
        {
          goto LABEL_28;
        }

        if (*v33 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v79 = *v34;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v82 = objc_msgSend_recordID(self, v80, v81);
          *buf = 138412290;
          v149 = v82;
          _os_log_impl(&dword_22506F000, v79, OS_LOG_TYPE_INFO, "Warn: We don't have a zone ID in our PCS data for record %@. Using the record's zone ID instead", buf, 0xCu);
        }

        v85 = objc_msgSend_recordID(self, v83, v84);
        v78 = objc_msgSend_zoneID(v85, v86, v87);

        if (v78)
        {
LABEL_28:
          if (*v33 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v90 = *v34;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            v117 = objc_msgSend_recordID(self, v91, v92);
            *buf = 138412546;
            v149 = v78;
            v150 = 2112;
            v151 = v117;
            _os_log_debug_impl(&dword_22506F000, v90, OS_LOG_TYPE_DEBUG, "Fetching PCS for zone %@ in order to decrypt record %@", buf, 0x16u);
          }

          dispatch_group_enter(v5);
          Options = objc_msgSend_fetchOptions(self, v93, v94);
          v98 = objc_msgSend_recordPCSData(self, v96, v97);
          v101 = objc_msgSend_zoneishPublicKeyID(v98, v99, v100);

          v104 = objc_msgSend_cache(self, v102, v103);
          if (v101)
          {
            Options |= 8uLL;
          }

          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = sub_22527BCE0;
          v132[3] = &unk_278549C68;
          objc_copyWeak(&v136, &location);
          v132[4] = self;
          v78 = v78;
          v133 = v78;
          v135 = v145;
          v134 = v5;
          objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v104, v105, v78, self, Options, v132);

          objc_destroyWeak(&v136);
        }

        v106 = objc_msgSend_callbackQueue(self, v88, v89);
        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v127[2] = sub_22527BF94;
        v127[3] = &unk_27854B958;
        objc_copyWeak(&v131, &location);
        v129 = v78;
        v130 = v145;
        v128 = v24;
        v107 = v78;
        v108 = v24;
        dispatch_group_notify(v5, v106, v127);

        objc_destroyWeak(&v131);
        _Block_object_dispose(v145, 8);
        goto LABEL_36;
      }

      if (*v33 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v111 = *v34;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
      {
        v126 = objc_msgSend_recordID(self, v112, v113);
        *buf = 138412290;
        v149 = v126;
        _os_log_debug_impl(&dword_22506F000, v111, OS_LOG_TYPE_DEBUG, "Assuming %@ is a share since we have no share or parent ID set", buf, 0xCu);
      }

      v116 = objc_msgSend_recordID(self, v114, v115);

      v24 = v116;
      if (!v116)
      {
        goto LABEL_22;
      }

LABEL_15:
      if (*v33 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v58 = *v34;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v118 = objc_msgSend_recordID(self, v59, v60);
        *buf = 138412546;
        v149 = v24;
        v150 = 2112;
        v151 = v118;
        _os_log_debug_impl(&dword_22506F000, v58, OS_LOG_TYPE_DEBUG, "Fetching PCS for share %@ in order to decrypt record %@", buf, 0x16u);
      }

      dispatch_group_enter(v5);
      v63 = objc_msgSend_cache(self, v61, v62);
      v66 = objc_msgSend_fetchOptions(self, v64, v65);
      v137[0] = MEMORY[0x277D85DD0];
      v137[1] = 3221225472;
      v137[2] = sub_22527BBD4;
      v137[3] = &unk_27854B930;
      objc_copyWeak(&v140, &location);
      v139 = v145;
      v138 = v5;
      objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v63, v67, v24, self, v66, v137);

      objc_destroyWeak(&v140);
      goto LABEL_22;
    }

    if (*v33 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v42 = *v34;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v119 = objc_msgSend_recordPCSData(self, v43, v44);
      v122 = objc_msgSend_parentID(v119, v120, v121);
      v125 = objc_msgSend_recordID(self, v123, v124);
      *buf = 138412546;
      v149 = v122;
      v150 = 2112;
      v151 = v125;
      _os_log_debug_impl(&dword_22506F000, v42, OS_LOG_TYPE_DEBUG, "Fetching parent PCS from record %@ for child record %@", buf, 0x16u);
    }

    v47 = objc_msgSend_fetchOptions(self, v45, v46);
    dispatch_group_enter(v5);
    v50 = objc_msgSend_cache(self, v48, v49);
    v53 = objc_msgSend_recordPCSData(self, v51, v52);
    v56 = objc_msgSend_parentID(v53, v54, v55);
    v141[0] = MEMORY[0x277D85DD0];
    v141[1] = 3221225472;
    v141[2] = sub_22527BAC8;
    v141[3] = &unk_27854B908;
    objc_copyWeak(&v144, &location);
    v143 = v145;
    v142 = v5;
    objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v50, v57, v56, self, v47 | 4, v141);

    objc_destroyWeak(&v144);
    if (v24)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_37:
  objc_destroyWeak(&location);
  v109 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_fetchDependentPCS
{
  v5 = objc_msgSend_recordPCSData(self, a2, v2);

  if (!v5)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    v14 = objc_msgSend_recordID(self, v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v15, a2, self, @"CKDPCSCacheRecordFetchOperation.m", 356, @"We should have PCS data for record %@ by this point", v14);
  }

  if (objc_msgSend_databaseScope(self, v6, v7) == 2)
  {

    return MEMORY[0x2821F9670](self, sel__fetchPCSForPrivateZone, v9);
  }

  else if (objc_msgSend_databaseScope(self, v8, v9) == 3)
  {

    return MEMORY[0x2821F9670](self, sel__fetchDependentPCSInSharedDatabase, v10);
  }

  else
  {
    return 1;
  }
}

- (BOOL)_decryptRecordPCSInPrivateDatabase
{
  v4 = objc_msgSend_recordPCSData(self, a2, v2);
  v7 = objc_msgSend_zonePCSData(v4, v5, v6);
  v10 = objc_msgSend_pcs(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_recordPCSData(self, v11, v12);
    v16 = objc_msgSend_zoneishPublicKeyID(v13, v14, v15);

    if (v16)
    {
      v19 = objc_msgSend_recordPCSData(self, v17, v18);
      v22 = objc_msgSend_zonePCSData(v19, v20, v21);
      v25 = objc_msgSend_zoneishPCS(v22, v23, v24);

      if (v25)
      {
        v28 = objc_msgSend_recordPCSData(self, v26, v27);
        v31 = objc_msgSend_zonePCSData(v28, v29, v30);
        v34 = objc_msgSend_zoneishPCS(v31, v32, v33);

        CFRetain(v34);
        if (v34)
        {
          v35 = 0;
          goto LABEL_14;
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v46 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22506F000, v46, OS_LOG_TYPE_ERROR, "Record has a zoneish public key set, but we didn't fetch a zoneish PCS on this zone. We'll try decrypting the record PCS anyway, but this might fail.", buf, 2u);
        }
      }
    }

    v47 = objc_msgSend_container(self, v17, v18);
    v50 = objc_msgSend_pcsManager(v47, v48, v49);
    v53 = objc_msgSend_recordPCSData(self, v51, v52);
    v56 = objc_msgSend_pcsData(v53, v54, v55);
    v59 = objc_msgSend_recordPCSData(self, v57, v58);
    v62 = objc_msgSend_zonePCSData(v59, v60, v61);
    v65 = objc_msgSend_pcs(v62, v63, v64);
    v77 = 0;
    v34 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v50, v66, v56, 1, v65, &v77);
    v35 = v77;

    if (!v34)
    {
      v69 = MEMORY[0x277CBC560];
      v70 = *MEMORY[0x277CBC120];
      v71 = objc_msgSend_recordID(self, v17, v18);
      v73 = objc_msgSend_errorWithDomain_code_error_format_(v69, v72, v70, 5004, v35, @"Failed to decrypt PCS data for record %@", v71);
      objc_msgSend_setFetchError_(self, v74, v73);

      objc_msgSend_setShouldRetry_(self, v75, 1);
      v45 = 0;
      goto LABEL_16;
    }

LABEL_14:
    v67 = objc_msgSend_recordPCSData(self, v17, v18);
    objc_msgSend_setPcs_(v67, v68, v34);

    CFRelease(v34);
    v45 = 1;
LABEL_16:

    return v45;
  }

  v36 = objc_msgSend_fetchError(self, v11, v12);

  if (!v36)
  {
    v39 = MEMORY[0x277CBC560];
    v40 = *MEMORY[0x277CBC120];
    v41 = objc_msgSend_recordID(self, v37, v38);
    v43 = objc_msgSend_errorWithDomain_code_format_(v39, v42, v40, 5004, @"We couldn't get zone PCS data for record %@", v41);
    objc_msgSend_setFetchError_(self, v44, v43);
  }

  return 0;
}

- (BOOL)_decryptRecordPCSInSharedDatabase
{
  v162 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_recordPCSData(self, a2, v2);
  v8 = objc_msgSend_parentPCSData(v5, v6, v7);
  v11 = objc_msgSend_chainPCSData(v8, v9, v10);
  v14 = objc_msgSend_pcs(v11, v12, v13);

  if (v14)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v122 = v17;
      v125 = objc_msgSend_recordID(self, v123, v124);
      v128 = objc_msgSend_recordPCSData(self, v126, v127);
      v131 = objc_msgSend_parentID(v128, v129, v130);
      *buf = 138412546;
      v159 = v125;
      v160 = 2112;
      v161 = v131;
      _os_log_debug_impl(&dword_22506F000, v122, OS_LOG_TYPE_DEBUG, "Attempting a decrypt of record %@ via its parent PCS (record %@)", buf, 0x16u);
    }

    v20 = objc_msgSend_recordPCSData(self, v18, v19);
    v23 = objc_msgSend_parentPCSData(v20, v21, v22);
    v26 = objc_msgSend_chainPCSData(v23, v24, v25);
    v29 = objc_msgSend_pcs(v26, v27, v28);

LABEL_7:
    goto LABEL_8;
  }

  v34 = objc_msgSend_recordPCSData(self, v15, v16);
  v37 = objc_msgSend_zonePCSData(v34, v35, v36);
  v40 = objc_msgSend_pcs(v37, v38, v39);

  if (!v40)
  {
    v88 = objc_msgSend_recordPCSData(self, v41, v42);
    v91 = objc_msgSend_sharePCSData(v88, v89, v90);
    v94 = objc_msgSend_pcs(v91, v92, v93);

    if (!v94)
    {
      goto LABEL_27;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v95 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
    {
      v145 = objc_msgSend_recordID(self, v96, v97);
      v148 = objc_msgSend_recordPCSData(self, v146, v147);
      v153 = objc_msgSend_shareID(v148, v149, v150);
      v154 = v153;
      if (!v153)
      {
        v3 = objc_msgSend_recordPCSData(self, v151, v152);
        v154 = objc_msgSend_sharePCSData(v3, v155, v156);
      }

      *buf = 138412546;
      v159 = v145;
      v160 = 2112;
      v161 = v154;
      _os_log_debug_impl(&dword_22506F000, v95, OS_LOG_TYPE_DEBUG, "Attempting a decrypt of record %@ via its share PCS (record %@)", buf, 0x16u);
      if (!v153)
      {
      }
    }

    v20 = objc_msgSend_recordPCSData(self, v98, v99);
    v23 = objc_msgSend_sharePCSData(v20, v100, v101);
    v29 = objc_msgSend_pcs(v23, v102, v103);
    goto LABEL_7;
  }

  v43 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v44 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v132 = v44;
    v135 = objc_msgSend_recordID(self, v133, v134);
    v138 = objc_msgSend_recordPCSData(self, v136, v137);
    v141 = objc_msgSend_zonePCSData(v138, v139, v140);
    v144 = objc_msgSend_zoneID(v141, v142, v143);
    *buf = 138412546;
    v159 = v135;
    v160 = 2112;
    v161 = v144;
    _os_log_debug_impl(&dword_22506F000, v132, OS_LOG_TYPE_DEBUG, "Attempting a decrypt of record %@ via its shared zone PCS (zone %@)", buf, 0x16u);
  }

  v47 = objc_msgSend_recordPCSData(self, v45, v46);
  v50 = objc_msgSend_zonePCSData(v47, v48, v49);
  v29 = objc_msgSend_pcs(v50, v51, v52);

  v55 = objc_msgSend_recordPCSData(self, v53, v54);
  v58 = objc_msgSend_zoneishPublicKeyID(v55, v56, v57);

  if (v58)
  {
    v59 = objc_msgSend_recordPCSData(self, v30, v31);
    v62 = objc_msgSend_zonePCSData(v59, v60, v61);
    v65 = objc_msgSend_zoneishPCS(v62, v63, v64);

    if (v65)
    {
      v68 = objc_msgSend_recordPCSData(self, v66, v67);
      v71 = objc_msgSend_zonePCSData(v68, v69, v70);
      v32 = objc_msgSend_zoneishPCS(v71, v72, v73);

      CFRetain(v32);
      if (v29)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    if (*v43 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v121 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v121, OS_LOG_TYPE_ERROR, "Record has a zoneish public key set, but we didn't fetch a zoneish PCS on this zone. We'll try decrypting the record PCS anyway, but this might fail.", buf, 2u);
    }
  }

LABEL_8:
  v32 = 0;
  if (v29)
  {
LABEL_9:
    if (v32)
    {
      v33 = 0;
LABEL_21:
      v85 = objc_msgSend_recordPCSData(self, v30, v31);
      objc_msgSend_setPcs_(v85, v86, v32);

      CFRelease(v32);
      v87 = 1;
LABEL_32:

      goto LABEL_33;
    }

    v74 = objc_msgSend_container(self, v30, v31);
    v77 = objc_msgSend_pcsManager(v74, v75, v76);
    v80 = objc_msgSend_recordPCSData(self, v78, v79);
    v83 = objc_msgSend_pcsData(v80, v81, v82);
    v157 = 0;
    v32 = objc_msgSend_createPCSObjectFromData_ofType_sharedToPCS_error_(v77, v84, v83, 1, v29, &v157);
    v33 = v157;

    if (v32)
    {
      goto LABEL_21;
    }

    v112 = MEMORY[0x277CBC560];
    v113 = *MEMORY[0x277CBC120];
    v114 = objc_msgSend_recordID(self, v30, v31);
    v116 = objc_msgSend_errorWithDomain_code_error_format_(v112, v115, v113, 5004, v33, @"Failed to decrypt PCS data for record %@", v114);
    objc_msgSend_setFetchError_(self, v117, v116);

    objc_msgSend_setShouldRetry_(self, v118, 1);
LABEL_31:
    v87 = 0;
    goto LABEL_32;
  }

LABEL_27:
  v104 = objc_msgSend_fetchError(self, v30, v31);

  if (!v104)
  {
    v107 = MEMORY[0x277CBC560];
    v108 = *MEMORY[0x277CBC120];
    v33 = objc_msgSend_recordID(self, v105, v106);
    v110 = objc_msgSend_errorWithDomain_code_format_(v107, v109, v108, 5004, @"We couldn't get any dependent PCS data to decrypt shared record %@", v33);
    objc_msgSend_setFetchError_(self, v111, v110);

    goto LABEL_31;
  }

  v87 = 0;
LABEL_33:
  v119 = *MEMORY[0x277D85DE8];
  return v87;
}

- (BOOL)_decryptPCS
{
  v238 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_recordPCSData(self, a2, v2);
  v7 = objc_msgSend_pcsData(v4, v5, v6);
  if (v7)
  {
  }

  else
  {
    v12 = objc_msgSend_recordPCSData(self, v8, v9);
    v15 = objc_msgSend_zoneishPublicKeyID(v12, v13, v14);

    if (!v15)
    {
      v54 = objc_msgSend_fetchError(self, v10, v11);

      if (!v54)
      {
        v57 = MEMORY[0x277CBC560];
        v58 = objc_msgSend_recordID(self, v55, v56);
        v60 = objc_msgSend_errorWithDomain_code_format_(v57, v59, *MEMORY[0x277CBC120], 5004, @"We don't have record PCS data for record %@", v58);
        objc_msgSend_setFetchError_(self, v61, v60);
      }

      LOBYTE(shouldRetry) = 0;
      goto LABEL_62;
    }
  }

  if (objc_msgSend_databaseScope(self, v10, v11) == 2)
  {
    v18 = objc_msgSend__decryptRecordPCSInPrivateDatabase(self, v16, v17);
LABEL_8:
    v21 = v18;
    goto LABEL_10;
  }

  if (objc_msgSend_databaseScope(self, v16, v17) == 3)
  {
    v18 = objc_msgSend__decryptRecordPCSInSharedDatabase(self, v19, v20);
    goto LABEL_8;
  }

  v21 = 1;
LABEL_10:
  if ((objc_msgSend_fetchOptions(self, v19, v20) & 4) != 0)
  {
    v24 = objc_msgSend_recordPCSData(self, v22, v23);
    v27 = objc_msgSend_chainPCSData(v24, v25, v26);

    if (v27)
    {
      v30 = objc_msgSend_container(self, v28, v29);
      v33 = objc_msgSend_pcsManager(v30, v31, v32);
      v36 = objc_msgSend_recordPCSData(self, v34, v35);
      v38 = objc_msgSend_decryptChainPCSForRecordPCS_(v33, v37, v36);

      if (v38 || (objc_msgSend_recordPCSData(self, v39, v40), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend_chainPCSData(v63, v64, v65), v66 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend_pcs(v66, v67, v68), v66, v63, !v69))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v41 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          v209 = v41;
          v212 = objc_msgSend_recordID(self, v210, v211);
          *buf = 138412546;
          v235 = v212;
          v236 = 2112;
          v237 = v38;
          _os_log_debug_impl(&dword_22506F000, v209, OS_LOG_TYPE_DEBUG, "Error decrypting chain PCS on record %@: %@", buf, 0x16u);
        }

        v44 = MEMORY[0x277CBC560];
        v45 = objc_msgSend_recordID(self, v42, v43);
        v47 = objc_msgSend_errorWithDomain_code_error_format_(v44, v46, *MEMORY[0x277CBC120], 5004, v38, @"Couldn't decrypt chain PCS on record %@", v45);
        objc_msgSend_setFetchError_(self, v48, v47);
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v70 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          v217 = v70;
          v220 = objc_msgSend_recordID(self, v218, v219);
          *buf = 138412290;
          v235 = v220;
          _os_log_debug_impl(&dword_22506F000, v217, OS_LOG_TYPE_DEBUG, "Successfully decrypted chain PCS data on record %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v49 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v50 = v49;
        v53 = objc_msgSend_recordID(self, v51, v52);
        *buf = 138412290;
        v235 = v53;
        _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Didn't get any chain PCS data on record %@, but the client requested it. This might be ok since the client might want to create it", buf, 0xCu);
      }
    }
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v71 = objc_msgSend_unitTestOverrides(self, v22, v23);
    v73 = objc_msgSend_objectForKeyedSubscript_(v71, v72, @"ReturnWrappedEPSKForRecordPCS");
    v74 = v73 == 0;

    if (!v74)
    {
      v75 = objc_msgSend_recordPCSData(self, v22, v23);
      v78 = objc_msgSend_encryptedPublicSharingKey(v75, v76, v77);
      objc_msgSend_setData_(v78, v79, 0);
    }
  }

  v80 = objc_msgSend_recordPCSData(self, v22, v23);
  v85 = objc_msgSend_encryptedPublicSharingKey(v80, v81, v82);
  if (!v85)
  {
    goto LABEL_50;
  }

  v86 = objc_msgSend_recordPCSData(self, v83, v84);
  v89 = objc_msgSend_encryptedPublicSharingKey(v86, v87, v88);
  v92 = objc_msgSend_data(v89, v90, v91);
  if (v92)
  {

LABEL_49:
LABEL_50:

    goto LABEL_51;
  }

  v95 = objc_msgSend_recordPCSData(self, v93, v94);
  v98 = objc_msgSend_pcs(v95, v96, v97) == 0;

  if (!v98)
  {
    v101 = [CKDWrappingContext alloc];
    v104 = objc_msgSend_recordID(self, v102, v103);
    v80 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v101, v105, v104, *MEMORY[0x277CBC900], 0, 0, 0);

    v108 = objc_msgSend_container(self, v106, v107);
    v111 = objc_msgSend_pcsManager(v108, v109, v110);
    v114 = objc_msgSend_recordPCSData(self, v112, v113);
    v117 = objc_msgSend_encryptedPublicSharingKey(v114, v115, v116);
    v120 = objc_msgSend_recordPCSData(self, v118, v119);
    v123 = objc_msgSend_pcs(v120, v121, v122);
    v85 = objc_msgSend_unwrapEncryptedData_withPCS_inContext_(v111, v124, v117, v123, v80);

    if (v85)
    {
      goto LABEL_39;
    }

    v135 = objc_msgSend_recordPCSData(self, v125, v126);
    v138 = objc_msgSend_encryptedPublicSharingKey(v135, v136, v137);
    v141 = objc_msgSend_data(v138, v139, v140);
    v142 = v141 == 0;

    if (v142)
    {
LABEL_39:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v127 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v213 = v127;
        v216 = objc_msgSend_recordID(self, v214, v215);
        *buf = 138412546;
        v235 = v216;
        v236 = 2112;
        v237 = v85;
        _os_log_debug_impl(&dword_22506F000, v213, OS_LOG_TYPE_DEBUG, "Error decrypting public sharing key on record %@: %@", buf, 0x16u);
      }

      v130 = MEMORY[0x277CBC560];
      v131 = objc_msgSend_recordID(self, v128, v129);
      v133 = objc_msgSend_errorWithDomain_code_error_format_(v130, v132, *MEMORY[0x277CBC120], 5004, v85, @"Couldn't decrypt public sharing key on record %@", v131);
      objc_msgSend_setFetchError_(self, v134, v133);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v143 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v221 = v143;
        v224 = objc_msgSend_recordID(self, v222, v223);
        *buf = 138412290;
        v235 = v224;
        _os_log_debug_impl(&dword_22506F000, v221, OS_LOG_TYPE_DEBUG, "Successfully decrypted public sharing key on record %@", buf, 0xCu);
      }
    }

    goto LABEL_49;
  }

LABEL_51:
  if (v21)
  {
LABEL_61:
    LOBYTE(shouldRetry) = 1;
    goto LABEL_62;
  }

  if ((objc_msgSend_wasFetchedFromCache(self, v99, v100) & 1) != 0 || (shouldRetry = objc_msgSend_shouldRetry(self, v144, v145)) != 0)
  {
    objc_initWeak(buf, self);
    v148 = objc_msgSend_stateTransitionGroup(self, v146, v147);
    dispatch_group_enter(v148);

    v151 = objc_msgSend_cache(self, v149, v150);
    v154 = objc_msgSend_recordID(self, v152, v153);
    v157 = objc_msgSend_databaseScope(self, v155, v156);
    v232[0] = MEMORY[0x277D85DD0];
    v232[1] = 3221225472;
    v232[2] = sub_22527DAAC;
    v232[3] = &unk_278549318;
    objc_copyWeak(&v233, buf);
    objc_msgSend__setPCSData_forFetchedRecordID_withScope_withCompletionHandler_(v151, v158, 0, v154, v157, v232);

    v161 = objc_msgSend_recordPCSData(self, v159, v160);
    v164 = objc_msgSend_zoneID(v161, v162, v163);

    if (!v164)
    {
      v167 = objc_msgSend_recordID(self, v165, v166);
      v164 = objc_msgSend_zoneID(v167, v168, v169);
    }

    v170 = objc_msgSend_stateTransitionGroup(self, v165, v166);
    dispatch_group_enter(v170);

    v173 = objc_msgSend_cache(self, v171, v172);
    v176 = objc_msgSend_databaseScope(self, v174, v175);
    v230[0] = MEMORY[0x277D85DD0];
    v230[1] = 3221225472;
    v230[2] = sub_22527DB04;
    v230[3] = &unk_278549318;
    objc_copyWeak(&v231, buf);
    objc_msgSend__setPCSData_forFetchedZoneID_withScope_withCompletionHandler_(v173, v177, 0, v164, v176, v230);

    v180 = objc_msgSend_recordPCSData(self, v178, v179);
    v183 = objc_msgSend_shareID(v180, v181, v182);

    if (v183)
    {
      v186 = objc_msgSend_stateTransitionGroup(self, v184, v185);
      dispatch_group_enter(v186);

      v189 = objc_msgSend_cache(self, v187, v188);
      v192 = objc_msgSend_databaseScope(self, v190, v191);
      v228[0] = MEMORY[0x277D85DD0];
      v228[1] = 3221225472;
      v228[2] = sub_22527DB5C;
      v228[3] = &unk_278549318;
      objc_copyWeak(&v229, buf);
      objc_msgSend__setPCSData_forFetchedShareID_withScope_withCompletionHandler_(v189, v193, 0, v183, v192, v228);

      objc_destroyWeak(&v229);
    }

    v194 = objc_msgSend_recordPCSData(self, v184, v185);
    v197 = objc_msgSend_parentID(v194, v195, v196);

    if (v197)
    {
      v200 = objc_msgSend_stateTransitionGroup(self, v198, v199);
      dispatch_group_enter(v200);

      v203 = objc_msgSend_cache(self, v201, v202);
      v206 = objc_msgSend_databaseScope(self, v204, v205);
      v226[0] = MEMORY[0x277D85DD0];
      v226[1] = 3221225472;
      v226[2] = sub_22527DBB4;
      v226[3] = &unk_278549318;
      objc_copyWeak(&v227, buf);
      objc_msgSend__setPCSData_forFetchedRecordID_withScope_withCompletionHandler_(v203, v207, 0, v197, v206, v226);

      objc_destroyWeak(&v227);
    }

    objc_destroyWeak(&v231);
    objc_destroyWeak(&v233);
    objc_destroyWeak(buf);
    goto LABEL_61;
  }

LABEL_62:
  v208 = *MEMORY[0x277D85DE8];
  return shouldRetry;
}

- (BOOL)_savePCSDataToCache
{
  objc_initWeak(&location, self);
  if (objc_msgSend_wasFetchedFromCache(self, v3, v4))
  {
    v7 = objc_msgSend_stateTransitionGroup(self, v5, v6);
    dispatch_group_enter(v7);

    v10 = objc_msgSend_cache(self, v8, v9);
    v13 = objc_msgSend_recordPCSData(self, v11, v12);
    v16 = objc_msgSend_recordID(self, v14, v15);
    v19 = objc_msgSend_databaseScope(self, v17, v18);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_22527DE80;
    v34[3] = &unk_278549318;
    v20 = &v35;
    objc_copyWeak(&v35, &location);
    objc_msgSend_updateMemoryCacheWithRecordPCSData_forRecordWithID_databaseScope_withCompletionHandler_(v10, v21, v13, v16, v19, v34);
  }

  else
  {
    v22 = objc_msgSend_stateTransitionGroup(self, v5, v6);
    dispatch_group_enter(v22);

    v10 = objc_msgSend_cache(self, v23, v24);
    v13 = objc_msgSend_recordPCSData(self, v25, v26);
    v16 = objc_msgSend_recordID(self, v27, v28);
    v31 = objc_msgSend_databaseScope(self, v29, v30);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_22527DE28;
    v36[3] = &unk_278549318;
    v20 = &v37;
    objc_copyWeak(&v37, &location);
    objc_msgSend__setPCSData_forFetchedRecordID_withScope_withCompletionHandler_(v10, v32, v13, v16, v31, v36);
  }

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  return 1;
}

@end