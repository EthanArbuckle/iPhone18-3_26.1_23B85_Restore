@interface CKDShareRequestAccessOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_shareAccessRequest;
- (BOOL)isEmail:(id)email;
- (BOOL)isPhoneNumber:(id)number;
- (BOOL)makeStateTransition;
- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error;
- (CKDShareRequestAccessOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleShareAccessRequestedForURL:(id)l responseCode:(id)code;
- (void)_performCallbackForURL:(id)l error:(id)error;
- (void)main;
@end

@implementation CKDShareRequestAccessOperation

- (CKDShareRequestAccessOperation)initWithOperationInfo:(id)info container:(id)container
{
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v25.receiver = self;
  v25.super_class = CKDShareRequestAccessOperation;
  v7 = [(CKDDatabaseOperation *)&v25 initWithOperationInfo:infoCopy container:container];
  if (v7)
  {
    v8 = objc_opt_new();
    shareURLsToRequestAccessFor = v7->_shareURLsToRequestAccessFor;
    v7->_shareURLsToRequestAccessFor = v8;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = objc_msgSend_shareURLsToRequestAccessFor(infoCopy, v10, v11, 0);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v21, v26, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v12);
          }

          objc_msgSend_addObject_(v7->_shareURLsToRequestAccessFor, v15, *(*(&v21 + 1) + 8 * v18++));
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v21, v26, 16);
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/share-access-request", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 == 2)
  {
    v8 = objc_msgSend_shareURLsToRequestAccessFor(self, v5, v6);
    v11 = objc_msgSend_count(v8, v9, v10);

    if (!v11)
    {
      return 0;
    }

    v13 = 1;
    objc_msgSend_setState_(self, v12, 1);
    return v13;
  }

  if (v4 != 1)
  {
    return 1;
  }

  objc_msgSend_setState_(self, v5, 2);

  return MEMORY[0x2821F9670](self, sel__shareAccessRequest, v7);
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Requesting Access to Shares";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDShareRequestAccessOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_performCallbackForURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  v10 = objc_msgSend_shareURLsToRequestAccessFor(self, v8, v9);
  objc_msgSend_removeObject_(v10, v11, lCopy);

  v14 = objc_msgSend_callbackQueue(self, v12, v13);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225238580;
  block[3] = &unk_278546990;
  block[4] = self;
  v18 = lCopy;
  v19 = errorCopy;
  v15 = errorCopy;
  v16 = lCopy;
  dispatch_async(v14, block);
}

- (void)_handleShareAccessRequestedForURL:(id)l responseCode:(id)code
{
  v53 = *MEMORY[0x277D85DE8];
  lCopy = l;
  codeCopy = code;
  if (objc_msgSend_code(codeCopy, v8, v9) == 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = lCopy;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Sucessfully requested access for share with URL %@", buf, 0xCu);
    }

    objc_msgSend__performCallbackForURL_error_(self, v13, lCopy, 0);
  }

  else
  {
    v14 = objc_msgSend_error(codeCopy, v10, v11);
    v17 = objc_msgSend_serverError(v14, v15, v16);
    v20 = objc_msgSend_type(v17, v18, v19);

    v21 = *MEMORY[0x277CBC878];
    v22 = *MEMORY[0x277CBC880];
    if (v20 == 7)
    {
      if (v22 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v21);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v50 = lCopy;
        _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Zone busy failure for share with url %@.", buf, 0xCu);
      }
    }

    else
    {
      if (v22 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v21);
      }

      v24 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v25 = v24;
        v28 = objc_msgSend_error(codeCopy, v26, v27);
        v31 = objc_msgSend_errorDescription(v28, v29, v30);
        *buf = 138412546;
        v50 = lCopy;
        v51 = 2114;
        v52 = v31;
        _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Error requesting access for share with URL %@: %{public}@", buf, 0x16u);
      }

      v32 = MEMORY[0x277CBC560];
      v33 = *MEMORY[0x277CBC120];
      v34 = sub_2253962A4(codeCopy);
      v37 = objc_msgSend_request(self, v35, v36);
      v38 = sub_225395734(v37, codeCopy);
      v41 = objc_msgSend_error(codeCopy, v39, v40);
      v44 = objc_msgSend_errorDescription(v41, v42, v43);
      v46 = objc_msgSend_errorWithDomain_code_userInfo_format_(v32, v45, v33, v34, v38, @"Error requesting access to share %@: %@", lCopy, v44);

      objc_msgSend__performCallbackForURL_error_(self, v47, lCopy, v46);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEmail:(id)email
{
  v3 = MEMORY[0x277CCAC30];
  emailCopy = email;
  v6 = objc_msgSend_predicateWithFormat_(v3, v5, @"SELF MATCHES %@", @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}");
  v8 = objc_msgSend_evaluateWithObject_(v6, v7, emailCopy);

  return v8;
}

- (BOOL)isPhoneNumber:(id)number
{
  v3 = MEMORY[0x277CCAC30];
  numberCopy = number;
  v6 = objc_msgSend_predicateWithFormat_(v3, v5, @"SELF MATCHES %@", @"^\\+?[0-9]{6,15}$");
  v8 = objc_msgSend_evaluateWithObject_(v6, v7, numberCopy);

  return v8;
}

- (BOOL)_shareAccessRequest
{
  v147 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_shareURLsToRequestAccessFor(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_container(self, v7, v8);
    v12 = objc_msgSend_account(v9, v10, v11);

    v117 = v12 != 0;
    if (v12)
    {
      v116 = objc_msgSend_container(self, v13, v14);
      v125 = objc_opt_new();
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      obj = objc_msgSend_shareURLsToRequestAccessFor(self, v15, v16);
      v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v133, v146, 16);
      if (v126)
      {
        v124 = *v134;
        do
        {
          v18 = 0;
          do
          {
            if (*v134 != v124)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v133 + 1) + 8 * v18);
            v20 = objc_opt_new();
            v21 = objc_alloc(MEMORY[0x277CCACE0]);
            v23 = objc_msgSend_initWithURL_resolvingAgainstBaseURL_(v21, v22, v19, 0);
            v26 = objc_msgSend_path(v23, v24, v25);
            v29 = objc_msgSend_lastPathComponent(v26, v27, v28);
            v31 = objc_msgSend_substringFromIndex_(v29, v30, 3);

            memset(md, 0, sizeof(md));
            v34 = objc_msgSend_UTF8String(v31, v32, v33);
            v36 = objc_msgSend_lengthOfBytesUsingEncoding_(v31, v35, 4);
            CC_SHA256(v34, v36, md);
            v38 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v37, md, 32);
            objc_msgSend_setShortTokenHash_(v20, v39, v38);

            v42 = objc_msgSend_path(v23, v40, v41);
            v45 = objc_msgSend_lastPathComponent(v42, v43, v44);
            v47 = objc_msgSend_substringToIndex_(v45, v46, 3);
            objc_msgSend_setRoutingKey_(v20, v48, v47);

            v49 = objc_alloc_init(CKDPUserInformationRequestAccess);
            v50 = objc_alloc_init(CKDPContactInformation);
            v53 = objc_msgSend_fullName(v12, v51, v52);
            v56 = objc_msgSend_givenName(v53, v54, v55);
            objc_msgSend_setFirstName_(v50, v57, v56);

            v60 = objc_msgSend_fullName(v12, v58, v59);
            v63 = objc_msgSend_familyName(v60, v61, v62);
            objc_msgSend_setLastName_(v50, v64, v63);

            v67 = objc_msgSend_username(v12, v65, v66);
            LODWORD(v63) = objc_msgSend_isEmail_(self, v68, v67);

            if (v63)
            {
              v71 = objc_msgSend_username(v12, v69, v70);
              objc_msgSend_setEmailAddress_(v50, v72, v71);
            }

            v73 = objc_msgSend_username(v12, v69, v70, v116);
            isPhoneNumber = objc_msgSend_isPhoneNumber_(self, v74, v73);

            if (isPhoneNumber)
            {
              v78 = objc_msgSend_username(v12, v76, v77);
              objc_msgSend_setPhoneNumber_(v50, v79, v78);
            }

            v80 = objc_msgSend_accountID(v12, v76, v77);
            objc_msgSend_setContainerScopedUserId_(v50, v81, v80);

            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v82 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              log = v82;
              v122 = objc_msgSend_fullName(v12, v88, v89);
              v119 = objc_msgSend_givenName(v122, v90, v91);
              v121 = objc_msgSend_fullName(v12, v92, v93);
              v118 = objc_msgSend_familyName(v121, v94, v95);
              v98 = objc_msgSend_username(v12, v96, v97);
              v101 = objc_msgSend_accountID(v12, v99, v100);
              *buf = 138413058;
              v138 = v119;
              v139 = 2112;
              v140 = v118;
              v141 = 2112;
              v142 = v98;
              v143 = 2112;
              v144 = v101;
              _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Account info for requester. First Name: %@ Family Name: %@ Username: %@ AccountID %@", buf, 0x2Au);
            }

            objc_msgSend_setContactInformation_(v49, v83, v50);
            objc_msgSend_setUserInformationRequestAccess_(v20, v84, v49);
            objc_msgSend_setShareURL_(v20, v85, v19);
            objc_msgSend_addObject_(v125, v86, v20);

            ++v18;
          }

          while (v126 != v18);
          v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v87, &v133, v146, 16);
        }

        while (v126);
      }

      v102 = [CKDShareAccessRequestURLRequest alloc];
      v104 = objc_msgSend_initWithOperation_shareMetadatasToRequestAccess_(v102, v103, self, v125);
      objc_initWeak(buf, self);
      objc_initWeak(md, v104);
      v107 = objc_msgSend_stateTransitionGroup(self, v105, v106);
      dispatch_group_enter(v107);

      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = sub_225239238;
      v131[3] = &unk_27854A8D0;
      objc_copyWeak(&v132, buf);
      objc_msgSend_setShareAccessRequestedBlock_(v104, v108, v131);
      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = sub_2252392B0;
      v128[3] = &unk_278548748;
      objc_copyWeak(&v129, buf);
      objc_copyWeak(&v130, md);
      objc_msgSend_setCompletionBlock_(v104, v109, v128);
      objc_msgSend_setRequest_(self, v110, v104);
      objc_msgSend_performRequest_(v116, v111, v104);
      objc_destroyWeak(&v130);
      objc_destroyWeak(&v129);
      objc_destroyWeak(&v132);
      objc_destroyWeak(md);
      objc_destroyWeak(buf);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v113 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22506F000, v113, OS_LOG_TYPE_INFO, "User does not have a valid account to request access for", buf, 2u);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v112 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v112, OS_LOG_TYPE_INFO, "No share URLs to request access for", buf, 2u);
    }

    v117 = 0;
  }

  v114 = *MEMORY[0x277D85DE8];
  return v117;
}

- (void)main
{
  v4 = objc_msgSend_shareURLsToRequestAccessFor(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) == 0;

  objc_msgSend_makeStateTransition_(self, v8, v7);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setShareRequestAccessCompletionBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDShareRequestAccessOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error
{
  containerCopy = container;
  v15.receiver = self;
  v15.super_class = CKDShareRequestAccessOperation;
  if ([(CKDOperation *)&v15 validateAgainstLiveContainer:containerCopy error:error])
  {
    objc_msgSend_clientSDKVersion(containerCopy, v7, v8);
    if (!CKLinkCheck168f06831e5b4d3ab6cc64d69a8cc447() || (*MEMORY[0x277CBC810] != 1 ? (v11 = MEMORY[0x277CBEC10]) : (objc_msgSend_unitTestOverrides(self, v9, v10), v11 = objc_claimAutoreleasedReturnValue()), objc_msgSend_entitlements(containerCopy, v9, v10), v13 = objc_claimAutoreleasedReturnValue(), v12 = CKCanUseShareAccessRequestsWithEntitlements(), v13, v11, v12))
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

@end