@interface CKDDeclineSharesOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)_declineShares;
- (BOOL)makeStateTransition;
- (CKDDeclineSharesOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleShareURLDeclined:(id)declined responseCode:(id)code;
- (void)_performCallbackForURL:(id)l error:(id)error;
- (void)main;
@end

@implementation CKDDeclineSharesOperation

- (CKDDeclineSharesOperation)initWithOperationInfo:(id)info container:(id)container
{
  v46 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v44.receiver = self;
  v44.super_class = CKDDeclineSharesOperation;
  v7 = [(CKDDatabaseOperation *)&v44 initWithOperationInfo:infoCopy container:container];
  if (v7)
  {
    v8 = objc_opt_new();
    clientProvidedMetadatasByURL = v7->_clientProvidedMetadatasByURL;
    v7->_clientProvidedMetadatasByURL = v8;

    v10 = objc_opt_new();
    shareURLsToDecline = v7->_shareURLsToDecline;
    v7->_shareURLsToDecline = v10;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = infoCopy;
    obj = objc_msgSend_shareMetadatasToDecline(infoCopy, v12, v13);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v40, v45, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v41;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v40 + 1) + 8 * i);
          v22 = v7->_clientProvidedMetadatasByURL;
          v23 = objc_msgSend_share(v21, v16, v17);
          v26 = objc_msgSend_URL(v23, v24, v25);
          objc_msgSend_setObject_forKeyedSubscript_(v22, v27, v21, v26);

          v28 = v7->_shareURLsToDecline;
          v31 = objc_msgSend_share(v21, v29, v30);
          v34 = objc_msgSend_URL(v31, v32, v33);
          objc_msgSend_addObject_(v28, v35, v34);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v40, v45, 16);
      }

      while (v18);
    }

    infoCopy = v38;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/decline-shares", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 == 2)
  {
    v8 = objc_msgSend_shareURLsToDecline(self, v5, v6);
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

  return MEMORY[0x2821F9670](self, sel__declineShares, v7);
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Declining Shares";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDDeclineSharesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)_performCallbackForURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  v10 = objc_msgSend_shareURLsToDecline(self, v8, v9);
  objc_msgSend_removeObject_(v10, v11, lCopy);

  v14 = objc_msgSend_clientProvidedMetadatasByURL(self, v12, v13);
  objc_msgSend_removeObjectForKey_(v14, v15, lCopy);

  v18 = objc_msgSend_callbackQueue(self, v16, v17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22522CB0C;
  block[3] = &unk_278546990;
  block[4] = self;
  v22 = lCopy;
  v23 = errorCopy;
  v19 = errorCopy;
  v20 = lCopy;
  dispatch_async(v18, block);
}

- (void)_handleShareURLDeclined:(id)declined responseCode:(id)code
{
  v53 = *MEMORY[0x277D85DE8];
  declinedCopy = declined;
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
      v50 = declinedCopy;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Share with URL %@ was successfully declined", buf, 0xCu);
    }

    objc_msgSend__performCallbackForURL_error_(self, v13, declinedCopy, 0);
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
        v50 = declinedCopy;
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
        v50 = declinedCopy;
        v51 = 2114;
        v52 = v31;
        _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Error declining share with URL %@: %{public}@", buf, 0x16u);
      }

      v32 = MEMORY[0x277CBC560];
      v33 = *MEMORY[0x277CBC120];
      v34 = sub_2253962A4(codeCopy);
      v37 = objc_msgSend_request(self, v35, v36);
      v38 = sub_225395734(v37, codeCopy);
      v41 = objc_msgSend_error(codeCopy, v39, v40);
      v44 = objc_msgSend_errorDescription(v41, v42, v43);
      v46 = objc_msgSend_errorWithDomain_code_userInfo_format_(v32, v45, v33, v34, v38, @"Error declining share %@: %@", declinedCopy, v44);

      objc_msgSend__performCallbackForURL_error_(self, v47, declinedCopy, v46);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (BOOL)_declineShares
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_shareURLsToDecline(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v68 = objc_msgSend_container(self, v8, v9);
    v69 = objc_opt_new();
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v12 = objc_msgSend_clientProvidedMetadatasByURL(self, v10, v11);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v77, v81, 16);
    if (v16)
    {
      v17 = *v78;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v78 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v77 + 1) + 8 * i);
          v20 = objc_msgSend_clientProvidedMetadatasByURL(self, v14, v15);
          v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v19);

          if (objc_msgSend_participantRole(v22, v23, v24) != 4)
          {
            v25 = objc_opt_new();
            objc_msgSend_setShareURL_(v25, v26, v19);
            v29 = objc_msgSend_share(v22, v27, v28);
            v32 = objc_msgSend_recordID(v29, v30, v31);
            objc_msgSend_setShareRecordID_(v25, v33, v32);

            v36 = objc_msgSend_options(v68, v34, v35);
            LODWORD(v32) = objc_msgSend_useAnonymousToServerShareParticipants(v36, v37, v38);

            if (v32)
            {
              v47 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v39, v40);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, a2, self, @"CKDDeclineSharesOperation.m", 139, @"Anonymous to Apple shares not supported by decline");
            }

            v41 = objc_msgSend_callingParticipant(v22, v39, v40);
            v44 = objc_msgSend_participantID(v41, v42, v43);
            objc_msgSend_setParticipantID_(v25, v45, v44);

            objc_msgSend_addObject_(v69, v46, v25);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v77, v81, 16);
      }

      while (v16);
    }

    v51 = objc_msgSend_count(v69, v49, v50);
    v52 = v51 != 0;
    if (v51)
    {
      v53 = [CKDDeclineSharesURLRequest alloc];
      v55 = objc_msgSend_initWithOperation_shareMetadatasToDecline_(v53, v54, self, v69);
      objc_initWeak(location, self);
      objc_initWeak(&from, v55);
      v58 = objc_msgSend_stateTransitionGroup(self, v56, v57);
      dispatch_group_enter(v58);

      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = sub_22522D3F4;
      v73[3] = &unk_27854A8D0;
      objc_copyWeak(&v74, location);
      objc_msgSend_setShareDeclinedBlock_(v55, v59, v73);
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = sub_22522D46C;
      v70[3] = &unk_278548748;
      objc_copyWeak(&v71, location);
      objc_copyWeak(&v72, &from);
      objc_msgSend_setCompletionBlock_(v55, v60, v70);
      objc_msgSend_setRequest_(self, v61, v55);
      objc_msgSend_performRequest_(v68, v62, v55);
      objc_destroyWeak(&v72);
      objc_destroyWeak(&v71);
      objc_destroyWeak(&v74);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v64 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_22506F000, v64, OS_LOG_TYPE_INFO, "No shares to decline", location, 2u);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v63 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_22506F000, v63, OS_LOG_TYPE_INFO, "No shares to decline", location, 2u);
    }

    v52 = 0;
  }

  v65 = *MEMORY[0x277D85DE8];
  return v52;
}

- (void)main
{
  v4 = objc_msgSend_shareURLsToDecline(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) == 0;

  objc_msgSend_makeStateTransition_(self, v8, v7);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setDeclineCompletionBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDDeclineSharesOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

@end