@interface CKDCompleteParticipantVettingOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (CKDCompleteParticipantVettingOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (id)shortSharingTokenFromFullToken:(id)a3;
- (void)_forceFetchShareMetadata;
- (void)_performAuthKitVerification;
- (void)_reconstructShareURL;
- (void)_reconstructShortToken;
- (void)_verifyOONParticipant;
- (void)main;
@end

@implementation CKDCompleteParticipantVettingOperation

- (CKDCompleteParticipantVettingOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v58.receiver = self;
  v58.super_class = CKDCompleteParticipantVettingOperation;
  v9 = [(CKDOperation *)&v58 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_vettingToken(v6, v7, v8);
    v13 = objc_msgSend_copy(v10, v11, v12);
    vettingToken = v9->_vettingToken;
    v9->_vettingToken = v13;

    v17 = objc_msgSend_vettingEmail(v6, v15, v16);
    v20 = objc_msgSend_copy(v17, v18, v19);
    vettingEmail = v9->_vettingEmail;
    v9->_vettingEmail = v20;

    v24 = objc_msgSend_vettingPhone(v6, v22, v23);
    v27 = objc_msgSend_copy(v24, v25, v26);
    vettingPhone = v9->_vettingPhone;
    v9->_vettingPhone = v27;

    v31 = objc_msgSend_routingKey(v6, v29, v30);
    v34 = objc_msgSend_copy(v31, v32, v33);
    routingKey = v9->_routingKey;
    v9->_routingKey = v34;

    v38 = objc_msgSend_encryptedKey(v6, v36, v37);
    v41 = objc_msgSend_copy(v38, v39, v40);
    encryptedKey = v9->_encryptedKey;
    v9->_encryptedKey = v41;

    v45 = objc_msgSend_baseToken(v6, v43, v44);
    v48 = objc_msgSend_copy(v45, v46, v47);
    baseToken = v9->_baseToken;
    v9->_baseToken = v48;

    v52 = objc_msgSend_displayedHostname(v6, v50, v51);
    v55 = objc_msgSend_copy(v52, v53, v54);
    displayedHostname = v9->_displayedHostname;
    v9->_displayedHostname = v55;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/verify-share-vetting", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        objc_msgSend_setState_(self, v5, 5);
        objc_msgSend__reconstructShareURL(self, v14, v15);
        break;
      case 5:
        objc_msgSend_setState_(self, v5, 6);
        objc_msgSend__verifyOONParticipant(self, v18, v19);
        break;
      case 6:
        objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
        v10 = objc_msgSend_error(self, v8, v9);
        objc_msgSend_finishWithError_(self, v11, v10);

        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        objc_msgSend_setState_(self, v5, 2);
        objc_msgSend__reconstructShortToken(self, v12, v13);
        break;
      case 2:
        objc_msgSend_setState_(self, v5, 3);
        objc_msgSend__performAuthKitVerification(self, v16, v17);
        break;
      case 3:
        objc_msgSend_setState_(self, v5, 4);
        objc_msgSend__forceFetchShareMetadata(self, v6, v7);
        break;
    }
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1uLL:
        objc_msgSendSuper2(&v7, sel_nameForState_, 1, v5.receiver, v5.super_class, v6.receiver, v6.super_class, a1, &OBJC_METACLASS___CKDCompleteParticipantVettingOperation);
        goto LABEL_14;
      case 2uLL:
        v3 = @"Reconstructing short token";
        goto LABEL_18;
      case 3uLL:
        v3 = @"Vetting with AuthKit";
        goto LABEL_18;
    }

LABEL_13:
    objc_msgSendSuper2(&v5, sel_nameForState_, a3, a1, &OBJC_METACLASS___CKDCompleteParticipantVettingOperation, v6.receiver, v6.super_class, v7.receiver, v7.super_class);
    goto LABEL_14;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      v3 = @"Verifying OON key can be swapped";
      goto LABEL_18;
    }

    if (a3 == 0xFFFFFFFF)
    {
      objc_msgSendSuper2(&v6, sel_nameForState_, 0xFFFFFFFFLL, v5.receiver, v5.super_class, a1, &OBJC_METACLASS___CKDCompleteParticipantVettingOperation, v7.receiver, v7.super_class);
      v3 = LABEL_14:;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (a3 == 4)
  {
    v3 = @"Force fetching share metadata";
  }

  else
  {
    v3 = @"Reconstructing share URL";
  }

LABEL_18:

  return v3;
}

- (id)shortSharingTokenFromFullToken:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_UTF8String(v3, v4, v5, 0, 0, 0, 0);
  v8 = objc_msgSend_lengthOfBytesUsingEncoding_(v3, v7, 4);

  CC_SHA256(v6, v8, &v16);
  v10 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, &v16, 16);
  v13 = objc_msgSend_CKBase64URLSafeString(v10, v11, v12);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_reconstructShortToken
{
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_2250740A0;
  v30[4] = sub_2250735DC;
  v31 = 0;
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_account(v4, v5, v6);
  v10 = objc_msgSend_accountType(v7, v8, v9);

  if (v10 == 1)
  {
    v12 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 1002, @"This request requires an authenticated account");
    objc_msgSend_setError_(self, v13, v12);
  }

  else
  {
    objc_initWeak(&location, self);
    v16 = objc_msgSend_stateTransitionGroup(self, v14, v15);
    dispatch_group_enter(v16);

    v19 = objc_msgSend_container(self, v17, v18);
    v22 = objc_msgSend_pcsManager(v19, v20, v21);
    v25 = objc_msgSend_encryptedKey(self, v23, v24);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22522AC0C;
    v27[3] = &unk_27854A830;
    objc_copyWeak(&v28, &location);
    v27[4] = self;
    v27[5] = v30;
    objc_msgSend_createSharePCSFromData_ofType_withService_completionHandler_(v22, v26, v25, 0, 2, v27);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(v30, 8);
}

- (void)_performAuthKitVerification
{
  v47 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v8 = objc_msgSend_vettingToken(self, v6, v7);
    v11 = objc_msgSend_container(self, v9, v10);
    v14 = objc_msgSend_account(v11, v12, v13);
    v17 = objc_msgSend_accountID(v14, v15, v16);
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v17;
    _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_INFO, "Performing vetting on token: %{public}@, for: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v44 = sub_2250740A0;
  v45 = sub_2250735DC;
  v18 = self;
  v46 = v18;
  v21 = objc_msgSend_stateTransitionGroup(v18, v19, v20);
  dispatch_group_enter(v21);

  v24 = objc_msgSend_container(v18, v22, v23);
  v27 = objc_msgSend_account(v24, v25, v26);
  v30 = objc_msgSend_vettingToken(v18, v28, v29);
  v33 = objc_msgSend_vettingEmail(v18, v31, v32);
  v36 = objc_msgSend_vettingPhone(v18, v34, v35);
  v39 = objc_msgSend_container(v18, v37, v38);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_22522B288;
  v42[3] = &unk_27854A858;
  v42[4] = v18;
  v42[5] = buf;
  v42[6] = a2;
  objc_msgSend_validateVettingToken_vettingEmail_vettingPhone_container_completionHandler_(v27, v40, v30, v33, v36, v39, v42);

  _Block_object_dispose(buf, 8);
  v41 = *MEMORY[0x277D85DE8];
}

- (void)_forceFetchShareMetadata
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CBEBC0];
  v5 = MEMORY[0x277CCACA8];
  v6 = *MEMORY[0x277CBC8F0];
  v9 = objc_msgSend_routingKey(self, v7, v8);
  v12 = objc_msgSend_shortToken(self, v10, v11);
  v14 = objc_msgSend_stringWithFormat_(v5, v13, @"https://%@/share/%@%@", v6, v9, v12);
  v16 = objc_msgSend_URLWithString_(v4, v15, v14);

  v25[0] = v16;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v25, 1);
  objc_msgSend_setShareURLsToFetch_(v3, v19, v18);

  objc_msgSend_setShouldFetchRootRecord_(v3, v20, 0);
  v21 = objc_opt_class();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22522B650;
  v24[3] = &unk_278548B60;
  v24[4] = self;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v22, v21, v3, v24);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_reconstructShareURL
{
  v4 = objc_msgSend_shareMetadata(self, a2, v2);
  v7 = objc_msgSend_share(v4, v5, v6);
  v42 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *MEMORY[0x277CBC098]);

  v11 = objc_msgSend_shareMetadata(self, v9, v10);
  v14 = objc_msgSend_share(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, *MEMORY[0x277CBC0A0]);

  v19 = objc_msgSend_container(self, v17, v18);
  v22 = objc_msgSend_containerID(v19, v20, v21);

  v23 = MEMORY[0x277CBC5A0];
  v24 = MEMORY[0x277CCACA8];
  v27 = objc_msgSend_routingKey(self, v25, v26);
  v30 = objc_msgSend_shortToken(self, v28, v29);
  v32 = objc_msgSend_stringWithFormat_(v24, v31, @"%@%@", v27, v30);
  v35 = objc_msgSend_displayedHostname(self, v33, v34);
  v37 = objc_msgSend_shareURLWithShortToken_shareTitle_shareType_containerID_displayedHostname_(v23, v36, v32, v42, v16, v22, v35);

  v40 = objc_msgSend_verifyProgressURLReconstructedBlock(self, v38, v39);
  v41 = v40;
  if (v40)
  {
    (*(v40 + 16))(v40, v37);
  }
}

- (void)_verifyOONParticipant
{
  v105 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_shareMetadata(self, a2, v2);
  v8 = objc_msgSend_callingParticipant(v5, v6, v7);
  v11 = objc_msgSend_privateToken(v5, v9, v10);
  if (!v11)
  {
    goto LABEL_5;
  }

  v14 = v11;
  v15 = objc_msgSend_callingParticipant(v5, v12, v13);
  v18 = objc_msgSend_userIdentity(v15, v16, v17);
  v21 = objc_msgSend_outOfNetworkPrivateKey(v18, v19, v20);

  if (v21)
  {
    v90 = a2;
    v93 = v8;
    v24 = objc_msgSend_container(self, v22, v23);
    v27 = objc_msgSend_pcsManager(v24, v25, v26);
    v30 = objc_msgSend_callingParticipant(v5, v28, v29);
    v33 = objc_msgSend_userIdentity(v30, v31, v32);
    v36 = objc_msgSend_outOfNetworkPrivateKey(v33, v34, v35);
    v39 = objc_msgSend_privateToken(v5, v37, v38);
    v42 = objc_msgSend_callingParticipant(v5, v40, v41);
    objc_msgSend_protectionInfo(v42, v43, v44);
    v45 = v91 = self;
    v98 = 0;
    v47 = objc_msgSend_createProtectionInfoFromOONPrivateKey_privateToken_OONProtectionInfo_error_(v27, v46, v36, v39, v45, &v98);
    v92 = v98;

    if (v47)
    {
      v50 = objc_msgSend_stateTransitionGroup(v91, v48, v49);
      dispatch_group_enter(v50);

      v53 = objc_msgSend_container(v91, v51, v52);
      v56 = objc_msgSend_pcsManager(v53, v54, v55);
      v59 = objc_msgSend_share(v5, v57, v58);
      v62 = objc_msgSend_invitedProtectionData(v59, v60, v61);
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = sub_22522C1C0;
      v94[3] = &unk_27854A8A8;
      v97 = v90;
      v94[4] = v91;
      v8 = v93;
      v95 = v93;
      v96 = v5;
      objc_msgSend_canDecryptInvitedProtectionData_participantProtectionInfo_serviceType_completionHandler_(v56, v63, v62, v47, 2, v94);

      v64 = v92;
    }

    else
    {
      v64 = v92;
      v8 = v93;
      if (!v92)
      {
        v88 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v48, v49);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v88, v89, v90, v91, @"CKDCompleteParticipantVettingOperation.m", 290, @"OON key-swap failed, but without error");
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v74 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v78 = v74;
        v81 = objc_msgSend_participantID(v93, v79, v80);
        v84 = objc_msgSend_share(v5, v82, v83);
        v87 = objc_msgSend_recordID(v84, v85, v86);
        *buf = 138412802;
        v100 = v81;
        v101 = 2112;
        v102 = v87;
        v103 = 2112;
        v104 = v92;
        _os_log_error_impl(&dword_22506F000, v78, OS_LOG_TYPE_ERROR, "Failed to create protection info in OON key-swap for participantID: %@, recordID: %@, error: %@", buf, 0x20u);
      }

      v76 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v75, *MEMORY[0x277CBC120], 8009, v92, @"Dryrun OON keyswap failed");
      objc_msgSend_setError_(v91, v77, v76);
    }
  }

  else
  {
LABEL_5:
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v65 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v67 = v65;
      v70 = objc_msgSend_privateToken(v5, v68, v69);
      v71 = "outOfNetworkPrivateKey";
      if (!v70)
      {
        v71 = "privateToken";
      }

      *buf = 136315138;
      v100 = v71;
      _os_log_impl(&dword_22506F000, v67, OS_LOG_TYPE_INFO, "OON keyswap: Not swapping OON keys as %s is missing", buf, 0xCu);
    }

    v64 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v66, *MEMORY[0x277CBC120], 8009, @"We don't have the necessary keys to perform an OON key swap");
    objc_msgSend_setError_(self, v72, v64);
  }

  v73 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v4 = objc_msgSend_vettingToken(self, a2, v2);
  v5 = v4 == 0;

  objc_msgSend_makeStateTransition_(self, v6, v5);
}

@end