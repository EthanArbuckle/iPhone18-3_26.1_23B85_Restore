@interface CKDFetchShareMetadataOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)_currentUserIsOONForShareMetadata:(id)a3;
- (BOOL)makeStateTransition;
- (CKDFetchShareMetadataOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)_decodeProtectedFullToken:(id)a3 tokenMetadata:(id)a4;
- (id)activityCreate;
- (void)_continueHandlingFetchedShareMetadata:(id)a3 shareURL:(id)a4;
- (void)_continueSharePCSPrepForShareMetadata:(id)a3 shareURL:(id)a4;
- (void)_decryptRootRecordsForShareURL:(id)a3 withMetadata:(id)a4 completionHandler:(id)a5;
- (void)_fetchShortTokenMetadata;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleTokenResolveWithLookupInfo:(id)a3 shareMetadata:(id)a4 responseCode:(id)a5 urlByShortTokenLookupInfos:(id)a6 tokensToFetchByURL:(id)a7;
- (void)_performCallbackForURL:(id)a3 withMetadata:(id)a4 error:(id)a5;
- (void)_prepPPPCSDataForDugongShareMetadata:(id)a3 withInvitationToken:(id)a4 completionHandler:(id)a5;
- (void)_prepareShortTokens;
- (void)main;
@end

@implementation CKDFetchShareMetadataOperation

- (CKDFetchShareMetadataOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v39.receiver = self;
  v39.super_class = CKDFetchShareMetadataOperation;
  v9 = [(CKDOperation *)&v39 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_shareURLsToFetch(v6, v7, v8);
    v13 = objc_msgSend_mutableCopy(v10, v11, v12);
    shareURLsToFetch = v9->_shareURLsToFetch;
    v9->_shareURLsToFetch = v13;

    v15 = objc_opt_new();
    shareTokenMetadatasToFetchByURL = v9->_shareTokenMetadatasToFetchByURL;
    v9->_shareTokenMetadatasToFetchByURL = v15;

    v19 = objc_msgSend_rootRecordDesiredKeys(v6, v17, v18);

    if (v19)
    {
      v22 = MEMORY[0x277CBEB98];
      v23 = objc_msgSend_rootRecordDesiredKeys(v6, v20, v21);
      v25 = objc_msgSend_setWithArray_(v22, v24, v23);
      rootRecordDesiredKeysSet = v9->_rootRecordDesiredKeysSet;
      v9->_rootRecordDesiredKeysSet = v25;
    }

    v9->_shouldFetchRootRecord = objc_msgSend_shouldFetchRootRecord(v6, v20, v21);
    v9->_overwriteContainerPCSServiceIfManatee = objc_msgSend_overwriteContainerPCSServiceIfManatee(v6, v27, v28);
    v9->_skipShareDecryption = objc_msgSend_skipShareDecryption(v6, v29, v30);
    v33 = objc_msgSend_shareInvitationTokensByShareURL(v6, v31, v32);
    v36 = objc_msgSend_copy(v33, v34, v35);
    shareInvitationTokensByShareURL = v9->_shareInvitationTokensByShareURL;
    v9->_shareInvitationTokensByShareURL = v36;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-share-metadata", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  switch(v4)
  {
    case 3:
      objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
      v12 = objc_msgSend_error(self, v10, v11);
      objc_msgSend_finishWithError_(self, v13, v12);

      break;
    case 2:
      objc_msgSend_setState_(self, v5, 3);
      objc_msgSend__fetchShortTokenMetadata(self, v8, v9);
      break;
    case 1:
      objc_msgSend_setState_(self, v5, 2);
      objc_msgSend__prepareShortTokens(self, v6, v7);
      break;
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = @"Preparing Short Tokens";
  }

  else if (a3 == 3)
  {
    v5 = @"Retrieving Share Metadata";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDFetchShareMetadataOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_performCallbackForURL:(id)a3 withMetadata:(id)a4 error:(id)a5
{
  v109 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v13 = a5;
  if (!v9)
  {
    goto LABEL_29;
  }

  v14 = objc_msgSend_errorOnOON(self, v11, v12);
  if (!v13 && v14)
  {
    v17 = objc_msgSend_container(self, v15, v16);
    v20 = objc_msgSend_entitlements(v17, v18, v19);
    if ((objc_msgSend_hasDisplaysSystemAcceptPromptEntitlement(v20, v21, v22) & 1) == 0 && objc_msgSend_participantPermission(v10, v23, v24) == 1)
    {
      v27 = objc_msgSend_outOfNetworkMatches(v10, v25, v26);
      if (objc_msgSend_count(v27, v28, v29))
      {
        v32 = objc_msgSend_share(v10, v30, v31);
        v35 = objc_msgSend_publicPermission(v32, v33, v34);

        if (v35 <= 1)
        {
          v102 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 8013, @"The user is not able to access this share");

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v36 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v108 = v102;
            _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Third party process requested OON share metadata, returning error %@", buf, 0xCu);
          }

          v10 = 0;
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

LABEL_16:
    v102 = 0;
    goto LABEL_17;
  }

  v102 = v13;
LABEL_17:
  v37 = objc_msgSend_container(self, v15, v16);
  v40 = objc_msgSend_entitlements(v37, v38, v39);
  hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v40, v41, v42);
  v46 = objc_msgSend_share(v10, v44, v45);
  objc_msgSend_setSerializeProtectionData_(v46, v47, hasProtectionDataEntitlement);

  v50 = objc_msgSend_container(self, v48, v49);
  v53 = objc_msgSend_entitlements(v50, v51, v52);
  hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v53, v54, v55);
  if (hasOutOfProcessUIEntitlement)
  {
    hasParticipantPIIEntitlement = 1;
  }

  else
  {
    v46 = objc_msgSend_container(self, v56, v57);
    v5 = objc_msgSend_entitlements(v46, v60, v61);
    hasParticipantPIIEntitlement = objc_msgSend_hasParticipantPIIEntitlement(v5, v62, v63);
  }

  v64 = objc_msgSend_share(v10, v56, v57);
  objc_msgSend_setSerializePersonalInfo_(v64, v65, hasParticipantPIIEntitlement);

  if ((hasOutOfProcessUIEntitlement & 1) == 0)
  {
  }

  v68 = objc_msgSend_container(self, v66, v67);
  shouldSerializeOwnerInfo = objc_msgSend_shouldSerializeOwnerInfo(v68, v69, v70);
  v74 = objc_msgSend_share(v10, v72, v73);
  objc_msgSend_setSerializeOwnerInfo_(v74, v75, shouldSerializeOwnerInfo);

  v78 = objc_msgSend_shareInvitationTokensByShareURL(self, v76, v77);
  v80 = objc_msgSend_objectForKeyedSubscript_(v78, v79, v9);

  if (v10 && v80 && !v102)
  {
    objc_msgSend_setInvitationToken_(v10, v81, v80);
  }

  v83 = objc_msgSend_shareURLsToFetch(self, v81, v82);
  objc_sync_enter(v83);
  v86 = objc_msgSend_shareURLsToFetch(self, v84, v85);
  objc_msgSend_removeObject_(v86, v87, v9);

  objc_sync_exit(v83);
  v90 = objc_msgSend_shareTokenMetadatasToFetchByURL(self, v88, v89);
  objc_sync_enter(v90);
  v93 = objc_msgSend_shareTokenMetadatasToFetchByURL(self, v91, v92);
  objc_msgSend_removeObjectForKey_(v93, v94, v9);

  objc_sync_exit(v90);
  v97 = objc_msgSend_shareMetadataFetchedBlock(self, v95, v96);

  if (v97)
  {
    v100 = objc_msgSend_callbackQueue(self, v98, v99);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22522DEE0;
    block[3] = &unk_2785463D0;
    block[4] = self;
    v104 = v9;
    v105 = v10;
    v106 = v102;
    dispatch_async(v100, block);
  }

  v13 = v102;
LABEL_29:

  v101 = *MEMORY[0x277D85DE8];
}

- (id)_decodeProtectedFullToken:(id)a3 tokenMetadata:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v9 = v6;
  v10 = MEMORY[0x277CBC880];
  if (v5)
  {
    v11 = MEMORY[0x277CBC680];
    v12 = objc_msgSend_shortSharingTokenData(v6, v7, v8);
    v14 = objc_msgSend_decryptFullToken_shortSharingTokenData_(v11, v13, v5, v12);

    if (!v14)
    {
      if (*v10 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v33 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v80 = v5;
        _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Warn: Couldn't decrypt the protected full token: %@", buf, 0xCu);
      }

      v31 = 0;
      goto LABEL_42;
    }

    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = objc_msgSend_bytes(v14, v16, v17);
    v21 = objc_msgSend_length(v14, v19, v20);
    v23 = objc_msgSend_initWithBytes_length_encoding_(v15, v22, v18, v21, 4);
    v26 = objc_msgSend_length(v23, v24, v25);
    v27 = MEMORY[0x277CBC878];
    v28 = *MEMORY[0x277CBC878];
    v29 = *v10;
    if (v26 <= 4)
    {
      if (v29 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v28);
      }

      v30 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v80 = v23;
        _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "Warn: Invalid full token length: %@", buf, 0xCu);
      }

      v31 = 0;
      goto LABEL_41;
    }

    if (v29 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v28);
    }

    v34 = MEMORY[0x277CBC830];
    v35 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v80 = v23;
      _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Got a full token of %@", buf, 0xCu);
    }

    v37 = MEMORY[0x277CBEA90];
    v38 = objc_msgSend_substringToIndex_(v23, v36, 4);
    v40 = objc_msgSend_CKDataFromBase64URLSafeString_(v37, v39, v38);

    if (v40)
    {
      v45 = *objc_msgSend_bytes(v40, v41, v42);
      switch(v45)
      {
        case 32:
          v59 = objc_msgSend_substringFromIndex_(v23, v43, 4);
          v62 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], v61, v59);
          v63 = objc_alloc(MEMORY[0x277CBC260]);
          v65 = objc_msgSend_initWithData_(v63, v64, v62);
          v58 = objc_msgSend_sharingKeyBytes(v65, v66, v67);

          break;
        case 16:
          v59 = objc_msgSend_substringFromIndex_(v23, v43, 4);
          v58 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], v60, v59);
          break;
        case 3:
          v46 = *(objc_msgSend_bytes(v40, v43, v44) + 1);
          v47 = __rev16(v46);
          if (objc_msgSend_length(v23, v48, v49) <= (v47 + 4))
          {
            if (*v10 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *v27);
            }

            v72 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              v73 = v72;
              v76 = objc_msgSend_length(v23, v74, v75);
              *buf = 134218496;
              v80 = v76;
              v81 = 1024;
              v82 = 3;
              v83 = 2048;
              v84 = v47;
              _os_log_impl(&dword_22506F000, v73, OS_LOG_TYPE_INFO, "Warn: Invalid token header, fullTokenLength:%lu, schemeByte:0x%0x, locatorLength:%lu", buf, 0x1Cu);
            }

            v31 = 0;
            goto LABEL_40;
          }

          if (v46)
          {
            v51 = v47 + 4;
            v52 = objc_msgSend_substringWithRange_(v23, v50, 4, v47);
            v54 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], v53, v52);

            objc_msgSend_substringFromIndex_(v23, v55, v51);
          }

          else
          {
            v54 = 0;
            objc_msgSend_substringFromIndex_(v23, v50, v47 + 4);
          }
          v77 = ;
          v58 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], v78, v77);

LABEL_39:
          objc_msgSend_setPrivateTokenData_(v9, v57, v58);
          objc_msgSend_setPublicTokenData_(v9, v68, v54);
          v31 = v9;

LABEL_40:
LABEL_41:

LABEL_42:
          goto LABEL_43;
        default:
          if (*v10 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *v27);
          }

          v71 = *v34;
          if (os_log_type_enabled(*v34, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v80) = v45;
            _os_log_impl(&dword_22506F000, v71, OS_LOG_TYPE_INFO, "Warn: Unknown scheme byte: 0x%0x", buf, 8u);
          }

          goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (*v10 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v27);
    }

    v56 = *v34;
    if (os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v80 = v23;
      _os_log_error_impl(&dword_22506F000, v56, OS_LOG_TYPE_ERROR, "Couldn't decode full token header: %@", buf, 0xCu);
    }

LABEL_34:
    v58 = 0;
LABEL_38:
    v54 = 0;
    goto LABEL_39;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v32 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Warn: No protected full token.", buf, 2u);
  }

  v31 = 0;
LABEL_43:

  v69 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)_fetchShortTokenMetadata
{
  v102 = *MEMORY[0x277D85DE8];
  v83 = objc_opt_new();
  v5 = objc_msgSend_shareTokenMetadatasToFetchByURL(self, v3, v4);
  v8 = objc_msgSend_copy(v5, v6, v7);

  if (objc_msgSend_count(v8, v9, v10))
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v13 = objc_msgSend_allKeys(v8, v11, v12);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v94, v101, 16);
    if (v16)
    {
      v17 = *v95;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v95 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v94 + 1) + 8 * i);
          v20 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v19);
          v21 = objc_opt_new();
          v24 = objc_msgSend_routingKey(v20, v22, v23);
          objc_msgSend_setRoutingKey_(v21, v25, v24);

          v28 = objc_msgSend_shortSharingTokenHashData(v20, v26, v27);
          objc_msgSend_setShortSharingTokenHashData_(v21, v29, v28);

          RootRecord = objc_msgSend_shouldFetchRootRecord(self, v30, v31);
          objc_msgSend_setShouldFetchRootRecord_(v21, v33, RootRecord);
          v36 = objc_msgSend_forceDSRefetch(v20, v34, v35);
          objc_msgSend_setForceDSRefetch_(v21, v37, v36);
          v40 = objc_msgSend_participantID(v20, v38, v39);

          if (v40)
          {
            v43 = objc_msgSend_participantID(v20, v41, v42);
            objc_msgSend_setParticipantID_(v21, v44, v43);
          }

          objc_msgSend_setObject_forKeyedSubscript_(v83, v41, v19, v21);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v94, v101, 16);
      }

      while (v16);
    }

    v47 = objc_msgSend_stateTransitionGroup(self, v45, v46);
    dispatch_group_enter(v47);

    v48 = [CKDRecordResolveTokenURLRequest alloc];
    v51 = objc_msgSend_allKeys(v83, v49, v50);
    v53 = objc_msgSend_initWithOperation_shortTokenLookupInfos_(v48, v52, self, v51);

    v56 = objc_msgSend_shouldFetchRootRecord(self, v54, v55);
    objc_msgSend_setShouldFetchRootRecord_(v53, v57, v56);
    v58 = MEMORY[0x277CBEB98];
    v100 = *MEMORY[0x277CBC030];
    v60 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, &v100, 1);
    v62 = objc_msgSend_setWithArray_(v58, v61, v60);

    if (objc_msgSend_shouldFetchRootRecord(self, v63, v64))
    {
      v67 = objc_msgSend_rootRecordDesiredKeysSet(self, v65, v66);

      v62 = v67;
    }

    objc_msgSend_setRootRecordDesiredKeySet_(v53, v65, v62);
    objc_initWeak(&location, self);
    objc_initWeak(&from, v53);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_22522EB8C;
    v88[3] = &unk_27854A8F8;
    objc_copyWeak(&v91, &location);
    v89 = v83;
    v68 = v8;
    v90 = v68;
    objc_msgSend_setTokenResolveBlock_(v53, v69, v88);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_22522EC1C;
    v84[3] = &unk_27854A920;
    objc_copyWeak(&v86, &location);
    objc_copyWeak(&v87, &from);
    v84[4] = self;
    v70 = v68;
    v85 = v70;
    objc_msgSend_setCompletionBlock_(v53, v71, v84);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v72 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v75 = objc_msgSend_count(v70, v73, v74);
      *buf = 134217984;
      v99 = v75;
      _os_log_impl(&dword_22506F000, v72, OS_LOG_TYPE_INFO, "Fetching short share token metadata from the server for %ld URLs", buf, 0xCu);
    }

    objc_msgSend_setRequest_(self, v76, v53);
    v79 = objc_msgSend_container(self, v77, v78);
    objc_msgSend_performRequest_(v79, v80, v53);

    objc_destroyWeak(&v87);
    objc_destroyWeak(&v86);

    objc_destroyWeak(&v91);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v81 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v81, OS_LOG_TYPE_INFO, "We have no tokens to fetch short token metadata for. Giving up now", buf, 2u);
    }
  }

  v82 = *MEMORY[0x277D85DE8];
}

- (void)_handleTokenResolveWithLookupInfo:(id)a3 shareMetadata:(id)a4 responseCode:(id)a5 urlByShortTokenLookupInfos:(id)a6 tokensToFetchByURL:(id)a7
{
  v126 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v110 = a5;
  v14 = a6;
  v108 = v12;
  v109 = a7;
  v107 = v14;
  v18 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v12);
  if (!v13 || !objc_msgSend_accessRequestsEnabled(v13, v16, v17))
  {
    goto LABEL_6;
  }

  v21 = objc_msgSend_share(v13, v16, v17);
  if (v21 || (objc_msgSend_outOfNetworkMatches(v13, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_count(v21, v22, v23)))
  {

    goto LABEL_6;
  }

  v103 = objc_msgSend_callingParticipant(v13, v24, v25);

  if (v103)
  {
LABEL_6:
    v26 = objc_msgSend_share(v13, v16, v17);
    objc_msgSend_setMutableURL_(v26, v27, v18);

    v30 = objc_msgSend_host(v18, v28, v29);
    v33 = objc_msgSend_share(v13, v31, v32);
    objc_msgSend_setDisplayedHostname_(v33, v34, v30);

    v38 = objc_msgSend_objectForKeyedSubscript_(v109, v35, v18);
    if (!v38)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v45 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v123 = v18;
        v124 = 2112;
        v125 = v12;
        _os_log_impl(&dword_22506F000, v45, OS_LOG_TYPE_INFO, "Warn: Couldn't get token metadata for URL %@ and token lookup info %@", buf, 0x16u);
      }

      v47 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v46, *MEMORY[0x277CBC120], 1000, @"Internal error when fetching short token metadata for %@", v18);
      objc_msgSend__performCallbackForURL_withMetadata_error_(self, v48, v18, 0, v47);

      goto LABEL_36;
    }

    if (objc_msgSend_code(v110, v36, v37) != 1)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v49 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v123 = v110;
        v124 = 2112;
        v125 = v18;
        _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Error %@ when fetching short token metadata for %@", buf, 0x16u);
      }

      v50 = MEMORY[0x277CBC560];
      v51 = sub_2253962A4(v110);
      v54 = objc_msgSend_request(self, v52, v53);
      v55 = sub_225395734(v54, v110);
      v58 = objc_msgSend_error(v110, v56, v57);
      v61 = objc_msgSend_errorDescription(v58, v59, v60);
      v63 = objc_msgSend_errorWithDomain_code_userInfo_format_(v50, v62, *MEMORY[0x277CBC120], v51, v55, @"Error %@ when fetching short token metadata for %@: %@", v110, v18, v61);

      objc_msgSend__performCallbackForURL_withMetadata_error_(self, v64, v18, 0, v63);
      goto LABEL_36;
    }

    if (objc_msgSend_skipShareDecryption(self, v39, v40))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v43 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v123 = v18;
        _os_log_debug_impl(&dword_22506F000, v43, OS_LOG_TYPE_DEBUG, "Skipping share decryption after getting share metadata for shareURL %@", buf, 0xCu);
      }

      objc_msgSend__performCallbackForURL_withMetadata_error_(self, v44, v18, v13, 0);
      goto LABEL_36;
    }

    v65 = objc_msgSend_protectedFullToken(v13, v41, v42);
    v67 = objc_msgSend__decodeProtectedFullToken_tokenMetadata_(self, v66, v65, v38);

    if (!v67)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v98 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22506F000, v98, OS_LOG_TYPE_INFO, "Warn: Couldn't decode the protected full token", buf, 2u);
      }

      v100 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v99, *MEMORY[0x277CBC120], 5004, @"Couldn't decode the protected full token for %@", v18);
      objc_msgSend__performCallbackForURL_withMetadata_error_(self, v101, v18, 0, v100);

      goto LABEL_36;
    }

    v70 = objc_msgSend_shareInvitationTokensByShareURL(self, v68, v69);
    v72 = objc_msgSend_objectForKeyedSubscript_(v70, v71, v18);

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22522F754;
    aBlock[3] = &unk_27854A970;
    objc_copyWeak(&v121, buf);
    v73 = v13;
    v117 = v73;
    v118 = v38;
    v74 = v72;
    v119 = v74;
    v106 = v18;
    v120 = v106;
    v75 = _Block_copy(aBlock);
    v78 = objc_msgSend_container(self, v76, v77);
    v81 = objc_msgSend_options(v78, v79, v80);
    if (objc_msgSend_useAnonymousToServerShareParticipants(v81, v82, v83))
    {
      v86 = objc_msgSend_callingParticipant(v73, v84, v85);
      v87 = v86 == 0;

      if (v87)
      {
        v90 = objc_msgSend_stateTransitionGroup(self, v88, v89);
        dispatch_group_enter(v90);

        v93 = objc_msgSend_container(self, v91, v92);
        v96 = objc_msgSend_pcsManager(v93, v94, v95);
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = sub_22522FE38;
        v111[3] = &unk_27854A998;
        objc_copyWeak(&v115, buf);
        v112 = v106;
        v113 = v73;
        v114 = v75;
        objc_msgSend_findSelfParticipantOnShareMetadata_invitationToken_completionHandler_(v96, v97, v113, v74, v111);

        objc_destroyWeak(&v115);
LABEL_35:

        objc_destroyWeak(&v121);
        objc_destroyWeak(buf);

LABEL_36:
        goto LABEL_37;
      }
    }

    else
    {
    }

    v75[2](v75);
    goto LABEL_35;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v104 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v123 = v18;
    _os_log_debug_impl(&dword_22506F000, v104, OS_LOG_TYPE_DEBUG, "Detected minimal resolve (request access). Returning empty share metadata for %@", buf, 0xCu);
  }

  objc_msgSend__performCallbackForURL_withMetadata_error_(self, v105, v18, v13, 0);
LABEL_37:

  v102 = *MEMORY[0x277D85DE8];
}

- (void)_continueSharePCSPrepForShareMetadata:(id)a3 shareURL:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = objc_msgSend_share(v6, v9, v10);
    v14 = objc_msgSend_recordID(v11, v12, v13);
    v17 = objc_msgSend_container(self, v15, v16);
    *buf = 138412546;
    v63 = v14;
    v64 = 2112;
    v65 = v17;
    _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Attempting to prep PCS data for share %@ with container %@", buf, 0x16u);
  }

  v20 = objc_msgSend_stateTransitionGroup(self, v18, v19);
  dispatch_group_enter(v20);

  v23 = objc_msgSend_participantRole(v6, v21, v22);
  v26 = 2;
  if (v23 != 1)
  {
    v26 = 3;
  }

  v54 = v26;
  v56 = objc_msgSend_share(v6, v24, v25);
  v55 = objc_msgSend_container(self, v27, v28);
  v31 = objc_msgSend_privateToken(v6, v29, v30);
  v34 = objc_msgSend_callingParticipant(v6, v32, v33);
  v37 = objc_msgSend_userIdentity(v34, v35, v36);
  v40 = objc_msgSend_outOfNetworkPrivateKey(v37, v38, v39);
  v43 = objc_msgSend_sharedZone(v6, v41, v42);
  v46 = objc_msgSend_topmostParentOperation(self, v44, v45);
  v49 = objc_msgSend_operationID(v46, v47, v48);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_225230300;
  v57[3] = &unk_27854A9C0;
  objc_copyWeak(&v60, &location);
  v50 = v6;
  v58 = v50;
  v51 = v7;
  v59 = v51;
  objc_msgSend__prepPCSDataWithContainer_databaseScope_publicSharingKey_oonPrivateKey_removeServerSpecifiedKeys_sharedRecordZone_requestorOperationID_completionHandler_(v56, v52, v55, v54, v31, v40, 0, v43, v49, v57);

  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);

  v53 = *MEMORY[0x277D85DE8];
}

- (void)_prepPPPCSDataForDugongShareMetadata:(id)a3 withInvitationToken:(id)a4 completionHandler:(id)a5
{
  v37 = a3;
  v8 = a4;
  v11 = a5;
  if (v8)
  {
    goto LABEL_2;
  }

  v30 = MEMORY[0x277CBC560];
  v31 = *MEMORY[0x277CBC120];
  v32 = objc_msgSend_share(v37, v9, v10);
  v35 = objc_msgSend_URL(v32, v33, v34);
  v29 = objc_msgSend_errorWithDomain_code_format_(v30, v36, v31, 1017, @"No sharing invitation token provided for device-to-device encrypted share %@", v35);

  if (!v29)
  {
LABEL_2:
    v12 = objc_msgSend_share(v37, v9, v10);
    v15 = objc_msgSend_share(v37, v13, v14);
    v18 = objc_msgSend_modificationDate(v15, v16, v17);
    v21 = objc_msgSend_container(self, v19, v20);
    v24 = objc_msgSend_topmostParentOperation(self, v22, v23);
    v27 = objc_msgSend_operationID(v24, v25, v26);
    objc_msgSend__ingestAndExportPPPCSFromShareInvitationToken_shareModificationDate_container_requestorOperationID_completionHandler_(v12, v28, v8, v18, v21, v27, v11);

    v29 = 0;
  }

  else if (v11)
  {
    v11[2](v11, 0, v29);
  }
}

- (void)_continueHandlingFetchedShareMetadata:(id)a3 shareURL:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_share(v6, v8, v9);
  if (objc_msgSend_publicPCS(v10, v11, v12))
  {
    v15 = objc_msgSend_publicPCS(v10, v13, v14);
    v18 = objc_msgSend_container(self, v16, v17);
    v21 = objc_msgSend_pcsManager(v18, v19, v20);
    objc_msgSend__encryptDataWithPCSBlob_pcsManager_(v6, v22, v15, v21);

    v25 = objc_msgSend_container(self, v23, v24);
    v28 = objc_msgSend_pcsManager(v25, v26, v27);
    v31 = objc_msgSend_publicPCS(v10, v29, v30);
    v84 = 0;
    v33 = objc_msgSend_sharingIdentityDataFromPCS_error_(v28, v32, v31, &v84);
    v34 = v84;

    v35 = objc_alloc(MEMORY[0x277CBC2E8]);
    v37 = objc_msgSend_initWithData_(v35, v36, v33);
    objc_msgSend_setMutableEncryptedPSK_(v10, v38, v37);

    v39 = *MEMORY[0x277CBC878];
    v40 = *MEMORY[0x277CBC880];
    if (v34)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v39);
      }

      v41 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        v45 = objc_msgSend_recordID(v10, v43, v44);
        *buf = 138412546;
        *&buf[4] = v45;
        *&buf[12] = 2112;
        *&buf[14] = v34;
        _os_log_impl(&dword_22506F000, v42, OS_LOG_TYPE_INFO, "Warn: Couldn't get a public sharing identity for share %@: %@", buf, 0x16u);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v39);
      }

      v46 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v47 = v46;
        v50 = objc_msgSend_recordID(v10, v48, v49);
        v53 = objc_msgSend_mutableEncryptedPSK(v10, v51, v52);
        v56 = objc_msgSend_data(v53, v54, v55);
        *buf = 138412546;
        *&buf[4] = v50;
        *&buf[12] = 2112;
        *&buf[14] = v56;
        _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Public sharing identity for share %@ is %@", buf, 0x16u);
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v88 = sub_2250740B0;
  v89 = sub_2250735E4;
  v90 = 0;
  v57 = dispatch_group_create();
  if (objc_msgSend_containsAssetValues(v10, v58, v59))
  {
    hasEncryptedData = 1;
  }

  else
  {
    hasEncryptedData = objc_msgSend_hasEncryptedData(v10, v60, v61);
  }

  if (!objc_msgSend_shouldFetchRootRecord(self, v60, v61))
  {
    if (!hasEncryptedData)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v65 = objc_msgSend_rootRecord(v6, v63, v64);
  if (objc_msgSend_containsAssetValues(v65, v66, v67))
  {
    v70 = 1;
    if (v65)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v70 = objc_msgSend_hasEncryptedData(v65, v68, v69);
    if (v65)
    {
      goto LABEL_26;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v71 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *v85 = 138412290;
    v86 = v6;
    _os_log_error_impl(&dword_22506F000, v71, OS_LOG_TYPE_ERROR, "No root record received when fetching share metadata %@", v85, 0xCu);
  }

LABEL_26:

  if ((hasEncryptedData | v70))
  {
LABEL_27:
    dispatch_group_enter(v57);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = sub_225230C24;
    v81[3] = &unk_278548040;
    v83 = buf;
    v82 = v57;
    objc_msgSend__decryptRootRecordsForShareURL_withMetadata_completionHandler_(self, v72, v7, v6, v81);
  }

LABEL_28:
  v73 = objc_msgSend_callbackQueue(self, v63, v64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225230C90;
  block[3] = &unk_2785492F0;
  block[4] = self;
  v78 = v7;
  v79 = v6;
  v80 = buf;
  v74 = v6;
  v75 = v7;
  dispatch_group_notify(v57, v73, block);

  _Block_object_dispose(buf, 8);
  v76 = *MEMORY[0x277D85DE8];
}

- (void)_decryptRootRecordsForShareURL:(id)a3 withMetadata:(id)a4 completionHandler:(id)a5
{
  v127 = *MEMORY[0x277D85DE8];
  v103 = a3;
  v8 = a4;
  v105 = a5;
  v113 = objc_msgSend_container(self, v9, v10);
  v112 = objc_msgSend_processScopedClientProxy(v113, v11, v12);
  v110 = objc_msgSend_logicalDeviceScopedClientProxy(v113, v13, v14);
  v111 = objc_opt_new();
  v17 = objc_msgSend_share(v8, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_share(v8, v18, v19);
    objc_msgSend_addObject_(v111, v21, v20);
  }

  v22 = objc_msgSend_rootRecord(v8, v18, v19);

  if (v22)
  {
    v25 = objc_msgSend_rootRecord(v8, v23, v24);
    objc_msgSend_addObject_(v111, v26, v25);
  }

  v27 = objc_opt_new();
  if (objc_msgSend_participantRole(v8, v28, v29) == 1)
  {
    v31 = 2;
  }

  else
  {
    v31 = 3;
  }

  v104 = v31;
  objc_msgSend_setDatabaseScope_(v27, v30, v31);
  objc_msgSend_setShouldFetchAssetContent_(v27, v32, 1);
  v35 = objc_msgSend_rootRecordDesiredKeysSet(self, v33, v34);
  v38 = objc_msgSend_allObjects(v35, v36, v37);
  objc_msgSend_setDesiredKeys_(v27, v39, v38);

  v40 = [CKDAppContainerTuple alloc];
  v43 = objc_msgSend_applicationID(v113, v41, v42);
  v46 = objc_msgSend_containerID(v8, v44, v45);
  v49 = objc_msgSend_personaID(v113, v47, v48);
  v109 = objc_msgSend_initWithApplicationID_containerID_personaID_(v40, v50, v43, v46, v49);

  v53 = objc_msgSend_entitlements(v113, v51, v52);
  v56 = objc_msgSend_options(v113, v54, v55);
  v59 = objc_msgSend_clientConnection(v112, v57, v58);
  v62 = objc_msgSend_sharedContainers(v59, v60, v61);
  v64 = objc_msgSend_containerWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_sharedContainerTable_(CKDContainer, v63, v109, v112, v110, v53, v56, v62);

  v67 = objc_msgSend_stateTransitionGroup(self, v65, v66);
  dispatch_group_enter(v67);

  objc_initWeak(&location, self);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v68 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    v71 = objc_msgSend_share(v8, v69, v70);
    v74 = objc_msgSend_recordID(v71, v72, v73);
    *buf = 138412546;
    v124 = v74;
    v125 = 2112;
    v126 = v64;
    _os_log_impl(&dword_22506F000, v68, OS_LOG_TYPE_INFO, "Attempting to prep PCS data for share %@ with container %@", buf, 0x16u);
  }

  v108 = objc_msgSend_share(v8, v75, v76);
  v107 = objc_msgSend_privateToken(v8, v77, v78);
  v81 = objc_msgSend_callingParticipant(v8, v79, v80);
  v84 = objc_msgSend_userIdentity(v81, v82, v83);
  v87 = objc_msgSend_outOfNetworkPrivateKey(v84, v85, v86);
  v90 = objc_msgSend_sharedZone(v8, v88, v89);
  v93 = objc_msgSend_topmostParentOperation(self, v91, v92);
  v96 = objc_msgSend_operationID(v93, v94, v95);
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = sub_225231218;
  v114[3] = &unk_27854AA60;
  objc_copyWeak(&v121, &location);
  v102 = v8;
  v115 = v102;
  v97 = v64;
  v116 = v97;
  v106 = v105;
  v120 = v106;
  v98 = v27;
  v117 = v98;
  v99 = v111;
  v118 = v99;
  v119 = self;
  objc_msgSend__prepPCSDataWithContainer_databaseScope_publicSharingKey_oonPrivateKey_removeServerSpecifiedKeys_sharedRecordZone_requestorOperationID_completionHandler_(v108, v100, v97, v104, v107, v87, 0, v90, v96, v114);

  objc_destroyWeak(&v121);
  objc_destroyWeak(&location);

  v101 = *MEMORY[0x277D85DE8];
}

- (BOOL)_currentUserIsOONForShareMetadata:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_callingParticipant(v3, v4, v5);
  v9 = objc_msgSend_userIdentity(v6, v7, v8);
  if (objc_msgSend_hasiCloudAccount(v9, v10, v11))
  {
    v14 = objc_msgSend_callingParticipant(v3, v12, v13);
    v17 = objc_msgSend_userIdentity(v14, v15, v16);
    v22 = objc_msgSend_outOfNetworkPrivateKey(v17, v18, v19);
    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v24 = objc_msgSend_share(v3, v20, v21);
      v29 = objc_msgSend_currentUserParticipant(v24, v25, v26);
      if (v29)
      {
        v23 = 0;
      }

      else
      {
        v30 = objc_msgSend_outOfNetworkMatches(v3, v27, v28);
        v23 = objc_msgSend_count(v30, v31, v32) != 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (void)_prepareShortTokens
{
  v3 = self;
  v107 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_shareURLsToFetch(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v10 = objc_msgSend_shareURLsToFetch(v3, v8, v9);
    v13 = objc_msgSend_copy(v10, v11, v12);

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v96, v106, 16);
    if (!v15)
    {
      goto LABEL_48;
    }

    v16 = v15;
    v17 = MEMORY[0x277CBC880];
    v93 = *v97;
    v92 = *MEMORY[0x277CBC120];
    v89 = v13;
    v90 = v3;
    while (1)
    {
      v18 = 0;
      v91 = v16;
      do
      {
        if (*v97 != v93)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v96 + 1) + 8 * v18);
        if (*v17 != -1)
        {
          dispatch_once(v17, *MEMORY[0x277CBC878]);
        }

        v20 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v101 = v19;
          _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Extracting short token from URL %@", buf, 0xCu);
        }

        v21 = objc_alloc(MEMORY[0x277CCACE0]);
        v23 = objc_msgSend_initWithURL_resolvingAgainstBaseURL_(v21, v22, v19, 0);
        v26 = objc_msgSend_path(v23, v24, v25);
        v29 = objc_msgSend_lastPathComponent(v26, v27, v28);

        if (objc_msgSend_length(v29, v30, v31) > 3)
        {
          v37 = v17;
          v38 = objc_msgSend_substringWithRange_(v29, v32, 0, 3);
          v94 = objc_msgSend_substringFromIndex_(v29, v39, 3);
          v41 = objc_msgSend_CKDataFromBase64URLSafeString_(MEMORY[0x277CBEA90], v40, v94);
          v95 = v38;
          if (v41)
          {
            v44 = v41;
            if (objc_msgSend_length(v41, v42, v43) == 16)
            {
              v45 = objc_opt_new();
              objc_msgSend_setRoutingKey_(v45, v46, v38);
              objc_msgSend_setShortSharingTokenData_(v45, v47, v44);
              v50 = objc_msgSend_forceDSRefetch(v3, v48, v49);
              objc_msgSend_setForceDSRefetch_(v45, v51, v50);
              v54 = objc_msgSend_shareInvitationTokensByShareURL(v3, v52, v53);
              v56 = objc_msgSend_objectForKeyedSubscript_(v54, v55, v19);

              if (v56)
              {
                if (*v37 != -1)
                {
                  dispatch_once(v37, *MEMORY[0x277CBC878]);
                }

                v59 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
                {
                  v60 = v59;
                  v63 = objc_msgSend_operationID(v3, v61, v62);
                  *buf = 138543618;
                  v101 = v56;
                  v102 = 2114;
                  v103 = v63;
                  _os_log_impl(&dword_22506F000, v60, OS_LOG_TYPE_INFO, "Received invitation token %{public}@ for CKFetchShareMetadatOperation %{public}@", buf, 0x16u);
                }
              }

              v64 = objc_msgSend_participantID(v56, v57, v58);
              v67 = objc_msgSend_length(v64, v65, v66);

              if (v67)
              {
                if (*v37 != -1)
                {
                  dispatch_once(v37, *MEMORY[0x277CBC878]);
                }

                v68 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v101 = v56;
                  _os_log_impl(&dword_22506F000, v68, OS_LOG_TYPE_INFO, "Found participantID on invitationToken %@", buf, 0xCu);
                }

                v71 = objc_msgSend_participantID(v56, v69, v70);
                objc_msgSend_setParticipantID_(v45, v72, v71);
              }

              if (*v37 != -1)
              {
                dispatch_once(v37, *MEMORY[0x277CBC878]);
              }

              v73 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v101 = v94;
                v102 = 2114;
                v103 = v95;
                v104 = 2112;
                v105 = v19;
                _os_log_impl(&dword_22506F000, v73, OS_LOG_TYPE_INFO, "Extracted short token %@ and routing key %{public}@ from URL %@", buf, 0x20u);
              }

              v76 = objc_msgSend_shareTokenMetadatasToFetchByURL(v90, v74, v75);
              objc_msgSend_setObject_forKeyedSubscript_(v76, v77, v45, v19);

              v3 = v90;
              v35 = 0;
              v13 = v89;
              v17 = v37;
              goto LABEL_45;
            }

            if (*v37 != -1)
            {
              dispatch_once(v37, *MEMORY[0x277CBC878]);
            }

            v80 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v83 = v80;
              v86 = objc_msgSend_length(v44, v84, v85);
              *buf = 134218242;
              v101 = v86;
              v102 = 2112;
              v103 = v19;
              _os_log_debug_impl(&dword_22506F000, v83, OS_LOG_TYPE_DEBUG, "Invalid shortSharingTokenData length(%lu) for the URL %@", buf, 0x16u);
            }

            v17 = v37;
          }

          else
          {
            if (*v17 != -1)
            {
              dispatch_once(v17, *MEMORY[0x277CBC878]);
            }

            v78 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v101 = v19;
              _os_log_impl(&dword_22506F000, v78, OS_LOG_TYPE_INFO, "Warn: Couldn't decode the short sharing token for the URL %@", buf, 0xCu);
            }
          }

          v35 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v79, v92, 1017, @"Couldn't parse iCloud Share URL %@", v19);
          objc_msgSend__performCallbackForURL_withMetadata_error_(v3, v81, v19, 0, v35);
LABEL_45:

          v16 = v91;
          goto LABEL_46;
        }

        if (*v17 != -1)
        {
          dispatch_once(v17, *MEMORY[0x277CBC878]);
        }

        v33 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v101 = v19;
          _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "Warn: Couldn't get a short token for the URL %@", buf, 0xCu);
        }

        v35 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v34, v92, 1017, @"Couldn't parse iCloud Share URL %@", v19);
        objc_msgSend__performCallbackForURL_withMetadata_error_(v3, v36, v19, 0, v35);
LABEL_46:

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v82, &v96, v106, 16);
      if (!v16)
      {
LABEL_48:

        goto LABEL_53;
      }
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v87 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v87, OS_LOG_TYPE_INFO, "We have no share URLs to fetch. Giving up.", buf, 2u);
  }

LABEL_53:
  v88 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_setShareMetadataFetchedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDFetchShareMetadataOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:v4];
}

- (void)main
{
  v33 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = v3;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v16 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v15, 1, 0, 0);
    v19 = objc_msgSend_CKPropertiesStyleString(v16, v17, v18);
    v21 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v20, 0, 1, 0);
    v24 = objc_msgSend_CKPropertiesStyleString(v21, v22, v23);
    v25 = 138544130;
    v26 = v14;
    v27 = 2048;
    v28 = self;
    v29 = 2114;
    v30 = v19;
    v31 = 2112;
    v32 = v24;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Starting fetch share metadata operation <%{public}@: %p; %{public}@, %@>", &v25, 0x2Au);
  }

  v6 = objc_msgSend_shareURLsToFetch(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8) == 0;

  objc_msgSend_makeStateTransition_(self, v10, v9);
  v11 = *MEMORY[0x277D85DE8];
}

@end