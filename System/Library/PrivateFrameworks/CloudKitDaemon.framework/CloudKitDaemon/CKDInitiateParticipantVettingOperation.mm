@interface CKDInitiateParticipantVettingOperation
- (CKDInitiateParticipantVettingOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)_addSelfIdentityToShareMetadataPublicPCS:(id)a3 forShareWithURL:(id)a4 error:(id *)a5;
- (id)_encryptedKeyDataWithShareMetadata:(id)a3 error:(id *)a4;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_handleVettingInitiationProgress:(id)a3;
- (void)_sendRequest:(BOOL)a3;
- (void)main;
@end

@implementation CKDInitiateParticipantVettingOperation

- (CKDInitiateParticipantVettingOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = CKDInitiateParticipantVettingOperation;
  v9 = [(CKDOperation *)&v21 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_shareMetadata(v6, v7, v8);
    shareMetadata = v9->_shareMetadata;
    v9->_shareMetadata = v10;

    v14 = objc_msgSend_participantID(v6, v12, v13);
    participantID = v9->_participantID;
    v9->_participantID = v14;

    v18 = objc_msgSend_address(v6, v16, v17);
    address = v9->_address;
    v9->_address = v18;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/vetting-initiate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_handleVettingInitiationProgress:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_callbackQueue(self, v5, v6);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_2252354A4;
  v13 = &unk_278545898;
  v14 = self;
  v15 = v4;
  v8 = v4;
  dispatch_async(v7, &v10);

  objc_msgSend_setError_(self, v9, v8, v10, v11, v12, v13, v14);
}

- (id)_encryptedKeyDataWithShareMetadata:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = MEMORY[0x277CBC830];
  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v12 = v9;
    v15 = objc_msgSend_share(v6, v13, v14);
    v18 = objc_msgSend_recordID(v15, v16, v17);
    v32 = 138412290;
    v33 = v18;
    _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Preparing encrypted key for vetting: adding ourselves to the public PCS for share %@", &v32, 0xCu);
  }

  v19 = objc_msgSend_share(v6, v10, v11);
  v22 = objc_msgSend_URL(v19, v20, v21);
  v24 = objc_msgSend__addSelfIdentityToShareMetadataPublicPCS_forShareWithURL_error_(self, v23, v6, v22, a4);

  if (*a4)
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v31 = *a4;
      v32 = 138412290;
      v33 = v31;
      _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Unable to generate encrypted key to initiate share vetting: %@", &v32, 0xCu);
    }

    v28 = 0;
  }

  else
  {
    v28 = objc_msgSend_publicPCSData(v24, v25, v26);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_addSelfIdentityToShareMetadataPublicPCS:(id)a3 forShareWithURL:(id)a4 error:(id *)a5
{
  v110 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_share(v8, v13, v14);
  v18 = objc_msgSend_publicProtectionData(v15, v16, v17);
  v21 = MEMORY[0x277CBC880];
  v22 = MEMORY[0x277CBC830];
  if (!v18)
  {

    goto LABEL_17;
  }

  v23 = v18;
  v24 = objc_msgSend_privateToken(v8, v19, v20);

  if (!v24)
  {
LABEL_17:
    if (*v21 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v59 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v107 = v9;
      _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_INFO, "Share metadata for the share at URL %@ doesn't have protection data on it, skipping", buf, 0xCu);
    }

    v38 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v60, *MEMORY[0x277CBC120], 5001, @"Share metadata for the share at URL %@ doesn't have protection data on it", v9);
    goto LABEL_34;
  }

  if (*v21 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v25 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_INFO))
  {
    v28 = v25;
    v31 = objc_msgSend_privateToken(v8, v29, v30);
    *buf = 138412546;
    v107 = v9;
    v108 = 2112;
    v109 = v31;
    _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "Preparing public PCS metadata for share at URL %@ using public sharing token %@", buf, 0x16u);
  }

  v32 = objc_msgSend_pcsManager(v12, v26, v27);
  v35 = objc_msgSend_privateToken(v8, v33, v34);
  v105 = 0;
  v37 = objc_msgSend_createSharingIdentityFromData_error_(v32, v36, v35, &v105);
  v38 = v105;

  if (!v37 || v38)
  {
    if (*v21 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v61 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v84 = v61;
      v87 = objc_msgSend_privateToken(v8, v85, v86);
      *buf = 138412546;
      v107 = v87;
      v108 = 2112;
      v109 = v38;
      _os_log_error_impl(&dword_22506F000, v84, OS_LOG_TYPE_ERROR, "Couldn't create a sharing public identity from %@: %@", buf, 0x16u);

      if (!v37)
      {
        goto LABEL_34;
      }
    }

    else if (!v37)
    {
LABEL_34:
      v65 = 0;
      v66 = 0;
      goto LABEL_35;
    }

    v62 = v37;
LABEL_33:
    CFRelease(v62);
    goto LABEL_34;
  }

  v41 = objc_msgSend_pcsManager(v12, v39, v40);
  v44 = objc_msgSend_share(v8, v42, v43);
  v47 = objc_msgSend_publicProtectionData(v44, v45, v46);
  v104 = 0;
  v49 = objc_msgSend_createSharePCSFromData_sharingIdentity_error_(v41, v48, v47, v37, &v104);
  v38 = v104;

  if (!v49 || v38)
  {
    v63 = MEMORY[0x277CBC830];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v64 = *v63;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v88 = v64;
      v91 = objc_msgSend_share(v8, v89, v90);
      v94 = objc_msgSend_publicProtectionData(v91, v92, v93);
      *buf = 138543618;
      v107 = v94;
      v108 = 2112;
      v109 = v37;
      _os_log_error_impl(&dword_22506F000, v88, OS_LOG_TYPE_ERROR, "Couldn't create a public PCS from the PCS data %{public}@ for identity %@", buf, 0x16u);
    }

    CFRelease(v37);
    if (!v49)
    {
      goto LABEL_34;
    }

    v62 = v49;
    goto LABEL_33;
  }

  v52 = objc_msgSend_pcsManager(v12, v50, v51);
  v38 = objc_msgSend_addIdentityForService_toPCS_(v52, v53, 2, v49);

  v56 = MEMORY[0x277CBC880];
  if (v38)
  {
    v57 = MEMORY[0x277CBC830];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v58 = *v57;
    if (os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v107 = v9;
      v108 = 2112;
      v109 = v38;
      _os_log_error_impl(&dword_22506F000, v58, OS_LOG_TYPE_ERROR, "Couldn't add our self identity to the public PCS for share at URL %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v73 = objc_msgSend_pcsManager(v12, v54, v55);
    v103 = 0;
    v66 = objc_msgSend_dataFromSharePCS_pcsBlobType_error_(v73, v74, v49, 0, &v103);
    v38 = v103;

    if (v66 && !v38)
    {
      v77 = objc_msgSend_pcsManager(v12, v75, v76);
      v102 = 0;
      v65 = objc_msgSend_etagFromSharePCS_error_(v77, v78, v49, &v102);
      v38 = v102;

      if (!v65 || v38)
      {
        v79 = MEMORY[0x277CBC830];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v80 = *v79;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v95 = v80;
          v101 = objc_msgSend_share(v8, v96, v97);
          v100 = objc_msgSend_recordID(v101, v98, v99);
          *buf = 138412290;
          v107 = v100;
          _os_log_error_impl(&dword_22506F000, v95, OS_LOG_TYPE_ERROR, "Couldn't get an etag for public PCS data on share %@", buf, 0xCu);
        }

        v65 = 0;
        v66 = 0;
      }

      v57 = MEMORY[0x277CBC830];
      goto LABEL_59;
    }

    v81 = *v56 == -1;
    v57 = MEMORY[0x277CBC830];
    if (!v81)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v82 = *v57;
    if (os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v107 = v9;
      v108 = 2112;
      v109 = v38;
      _os_log_error_impl(&dword_22506F000, v82, OS_LOG_TYPE_ERROR, "Couldn't serialize share public PCS for share at URL %@: %@", buf, 0x16u);
    }
  }

  v65 = 0;
  v66 = 0;
LABEL_59:
  CFRelease(v37);
  CFRelease(v49);
  if (v66)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v83 = *v57;
    if (os_log_type_enabled(*v57, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v107 = v9;
      _os_log_impl(&dword_22506F000, v83, OS_LOG_TYPE_INFO, "Successfully added our public identity to the share's public PCS at %@", buf, 0xCu);
    }
  }

LABEL_35:
  if (a5)
  {
    v67 = v38;
    *a5 = v38;
  }

  if (v66)
  {
    v68 = objc_opt_new();
    objc_msgSend_setPublicPCSData_(v68, v69, v66);
    objc_msgSend_setPublicPCSEtag_(v68, v70, v65);
  }

  else
  {
    v68 = 0;
  }

  v71 = *MEMORY[0x277D85DE8];

  return v68;
}

- (void)main
{
  v53[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_shareMetadata(self, a2, v2);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_participantID(self, v5, v6);
    v11 = objc_msgSend_length(v8, v9, v10);

    if (v11)
    {
      v13 = objc_msgSend_encryptedKey(self, v5, v12);

      if (!v13)
      {
        v16 = objc_msgSend_shareMetadata(self, v14, v15);
        v51 = 0;
        v18 = objc_msgSend__encryptedKeyDataWithShareMetadata_error_(self, v17, v16, &v51);
        v19 = v51;
        objc_msgSend_setEncryptedKey_(self, v20, v18);

        v23 = objc_msgSend_encryptedKey(self, v21, v22);

        if (!v23)
        {
          v50 = MEMORY[0x277CBC560];
          v27 = *MEMORY[0x277CBC120];
          v52 = *MEMORY[0x277CCA7E8];
          v53[0] = v19;
          v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v53, &v52, 1);
          v31 = objc_msgSend_shareMetadata(self, v29, v30);
          v34 = objc_msgSend_shareMetadata(self, v32, v33);
          v37 = objc_msgSend_privateToken(v34, v35, v36);
          v40 = objc_msgSend_shareMetadata(self, v38, v39);
          v43 = objc_msgSend_share(v40, v41, v42);
          v46 = objc_msgSend_publicProtectionData(v43, v44, v45);
          v48 = objc_msgSend_errorWithDomain_code_userInfo_format_(v50, v47, v27, 5005, v28, @"Unable to create public PCS blob using metadata %@ (private token was: %@, share's public PCS blob was %@)", v31, v37, v46);
          objc_msgSend_finishWithError_(self, v49, v48);

          goto LABEL_7;
        }
      }

      objc_msgSend__sendRequest_(self, v14, 0);
LABEL_7:
      v25 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  objc_msgSend_finishWithError_(self, v5, 0);
}

- (void)_sendRequest:(BOOL)a3
{
  v3 = a3;
  v50 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v38 = @"first";
    if (v3)
    {
      v38 = @"second";
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v38;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Sending initiate vetting request, this is a %{public}@ attempt", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x2020000000;
  v49 = 1;
  v6 = [CKDInitiateParticipantVettingURLRequest alloc];
  v9 = objc_msgSend_shareMetadata(self, v7, v8);
  v12 = objc_msgSend_share(v9, v10, v11);
  v15 = objc_msgSend_recordID(v12, v13, v14);
  v18 = objc_msgSend_encryptedKey(self, v16, v17);
  v21 = objc_msgSend_participantID(self, v19, v20);
  v24 = objc_msgSend_shareMetadata(self, v22, v23);
  v27 = objc_msgSend_baseToken(v24, v25, v26);
  v29 = objc_msgSend_initWithOperation_shareRecordID_encryptedKey_participantID_baseToken_(v6, v28, self, v15, v18, v21, v27);

  objc_initWeak(&location, self);
  objc_initWeak(&from, v29);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_225236574;
  v42[3] = &unk_27854AB00;
  objc_copyWeak(&v43, &location);
  v44 = v3;
  v42[4] = self;
  v42[5] = &buf;
  objc_msgSend_setVettingInitiationRequestCompletionBlock_(v29, v30, v42);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_225236ADC;
  v39[3] = &unk_27854AB28;
  v39[4] = &buf;
  objc_copyWeak(&v40, &location);
  objc_copyWeak(&v41, &from);
  objc_msgSend_setCompletionBlock_(v29, v31, v39);
  objc_msgSend_setRequest_(self, v32, v29);
  v35 = objc_msgSend_container(self, v33, v34);
  objc_msgSend_performRequest_(v35, v36, v29);

  objc_destroyWeak(&v41);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  v37 = *MEMORY[0x277D85DE8];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  objc_msgSend_setParticipantVettingProgressBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDInitiateParticipantVettingOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:v4];
}

@end