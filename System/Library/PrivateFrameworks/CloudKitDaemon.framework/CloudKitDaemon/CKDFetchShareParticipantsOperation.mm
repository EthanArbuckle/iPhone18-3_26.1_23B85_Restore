@interface CKDFetchShareParticipantsOperation
- (CKDFetchShareParticipantsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_fetchIdentities;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleFetchedInfo:(id)info withIdentity:(id)identity error:(id)error;
- (void)finishWithError:(id)error;
- (void)main;
@end

@implementation CKDFetchShareParticipantsOperation

- (CKDFetchShareParticipantsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = CKDFetchShareParticipantsOperation;
  v9 = [(CKDOperation *)&v13 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_userIdentityLookupInfos(infoCopy, v7, v8);
    userIdentityLookupInfos = v9->_userIdentityLookupInfos;
    v9->_userIdentityLookupInfos = v10;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-share-participants", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_handleFetchedInfo:(id)info withIdentity:(id)identity error:(id)error
{
  v63 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  identityCopy = identity;
  errorCopy = error;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v58 = infoCopy;
    v59 = 2112;
    v60 = identityCopy;
    v61 = 2112;
    v62 = errorCopy;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "For fetch info %@, found user identity %@, error %@", buf, 0x20u);
  }

  v14 = objc_msgSend_shareParticipantFetchedBlock(self, v12, v13);

  if (v14)
  {
    if (identityCopy)
    {
      v17 = objc_alloc(MEMORY[0x277CBC6A0]);
      inited = objc_msgSend_initInternalWithUserIdentity_(v17, v18, identityCopy);
      v22 = objc_msgSend_userRecordID(identityCopy, v20, v21);
      v25 = objc_msgSend_recordName(v22, v23, v24);
      v28 = objc_msgSend_container(self, v26, v27);
      v31 = objc_msgSend_orgAdminUserID(v28, v29, v30);
      isEqualToString = objc_msgSend_isEqualToString_(v25, v32, v31);
      objc_msgSend_setIsOrgAdminUser_(inited, v34, isEqualToString);

      v37 = objc_msgSend_userRecordID(identityCopy, v35, v36);
      v40 = objc_msgSend_recordName(v37, v38, v39);
      v43 = objc_msgSend_container(self, v41, v42);
      v46 = objc_msgSend_containerScopedUserID(v43, v44, v45);
      v48 = objc_msgSend_isEqualToString_(v40, v47, v46);
      objc_msgSend_setIsCurrentUser_(inited, v49, v48);
    }

    else
    {
      inited = 0;
    }

    v50 = objc_msgSend_callbackQueue(self, v15, v16);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_225262638;
    v53[3] = &unk_2785463D0;
    v53[4] = self;
    v54 = infoCopy;
    v55 = inited;
    v56 = errorCopy;
    v51 = inited;
    dispatch_async(v50, v53);
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_fetchIdentities
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_usesBackgroundSession(self, a2, v2);
  v7 = objc_msgSend_container(self, v5, v6);
  v10 = v7;
  if (v4)
  {
    objc_msgSend_backgroundPublicIdentityLookupService(v7, v8, v9);
  }

  else
  {
    objc_msgSend_foregroundPublicIdentityLookupService(v7, v8, v9);
  }
  v11 = ;

  v12 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = MEMORY[0x277CBC830];
  v14 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v45 = v11;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Got lookup service for identity fetch operation: %@", buf, 0xCu);
  }

  v15 = [CKDPublicIdentityLookupRequest alloc];
  v18 = objc_msgSend_userIdentityLookupInfos(self, v16, v17);
  v20 = objc_msgSend_initWithOperation_lookupInfos_(v15, v19, self, v18);
  objc_msgSend_setPendingRequest_(self, v21, v20);

  objc_initWeak(&location, self);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_225262A04;
  v41[3] = &unk_27854B468;
  objc_copyWeak(&v42, &location);
  v24 = objc_msgSend_pendingRequest(self, v22, v23);
  objc_msgSend_setPerLookupInfoProgressBlock_(v24, v25, v41);

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_225262A90;
  v39[3] = &unk_278549318;
  objc_copyWeak(&v40, &location);
  v28 = objc_msgSend_pendingRequest(self, v26, v27);
  objc_msgSend_setLookupCompletionBlock_(v28, v29, v39);

  if (*v12 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v30 = *v13;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v38 = objc_msgSend_pendingRequest(self, v31, v32);
    *buf = 138412290;
    v45 = v38;
    _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Scheduling a request %@ to the lookup service", buf, 0xCu);
  }

  v35 = objc_msgSend_pendingRequest(self, v33, v34);
  objc_msgSend_scheduleRequest_(v11, v36, v35);

  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);

  v37 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v4 = objc_msgSend_userIdentityLookupInfos(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Performing identities lookup with the lookup service", v12, 2u);
    }

    objc_msgSend__fetchIdentities(self, v10, v11);
  }

  else
  {

    objc_msgSend_finishWithError_(self, v8, 0);
  }
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setShareParticipantFetchedBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDFetchShareParticipantsOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setPendingRequest_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDFetchShareParticipantsOperation;
  [(CKDOperation *)&v6 finishWithError:errorCopy];
}

@end