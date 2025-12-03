@interface CKDFetchSubscriptionsOperation
- (CKDFetchSubscriptionsOperation)initWithOperationInfo:(id)info container:(id)container;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleSubscriptionFetched:(id)fetched withID:(id)d responseCode:(id)code;
- (void)main;
@end

@implementation CKDFetchSubscriptionsOperation

- (CKDFetchSubscriptionsOperation)initWithOperationInfo:(id)info container:(id)container
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = CKDFetchSubscriptionsOperation;
  v9 = [(CKDDatabaseOperation *)&v15 initWithOperationInfo:infoCopy container:container];
  if (v9)
  {
    v10 = objc_msgSend_subscriptionIDs(infoCopy, v7, v8);
    subscriptionIDs = v9->_subscriptionIDs;
    v9->_subscriptionIDs = v10;

    v9->_isFetchAllSubscriptionsOperation = objc_msgSend_isFetchAllSubscriptionsOperation(infoCopy, v12, v13);
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-subscriptions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_handleSubscriptionFetched:(id)fetched withID:(id)d responseCode:(id)code
{
  fetchedCopy = fetched;
  dCopy = d;
  codeCopy = code;
  v13 = objc_msgSend_code(codeCopy, v11, v12);
  v16 = MEMORY[0x277CBC120];
  if (v13 == 1)
  {
    v17 = 0;
  }

  else
  {
    v18 = MEMORY[0x277CBC560];
    v19 = *MEMORY[0x277CBC120];
    v20 = sub_2253962A4(codeCopy);
    v23 = objc_msgSend_request(self, v21, v22);
    v24 = sub_225395734(v23, codeCopy);
    v17 = objc_msgSend_errorWithDomain_code_userInfo_format_(v18, v25, v19, v20, v24, @"Error fetching subscription %@", dCopy);
  }

  if (!(fetchedCopy | v17))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Unexpectedly received no subscription but also a successful error code", buf, 2u);
    }

    v27 = MEMORY[0x277CBC560];
    v28 = *v16;
    v29 = sub_2253962A4(codeCopy);
    v32 = objc_msgSend_request(self, v30, v31);
    v33 = sub_225395734(v32, codeCopy);
    v17 = objc_msgSend_errorWithDomain_code_userInfo_format_(v27, v34, v28, v29, v33, @"Error fetching subscription %@", dCopy);
  }

  v35 = objc_msgSend_callbackQueue(self, v14, v15);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252399B4;
  block[3] = &unk_2785463D0;
  block[4] = self;
  v40 = fetchedCopy;
  v41 = dCopy;
  v42 = v17;
  v36 = v17;
  v37 = dCopy;
  v38 = fetchedCopy;
  dispatch_async(v35, block);
}

- (void)main
{
  v4 = objc_msgSend_subscriptionIDs(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {

LABEL_4:
    objc_initWeak(&location, self);
    v11 = [CKDFetchSubscriptionsURLRequest alloc];
    v14 = objc_msgSend_subscriptionIDs(self, v12, v13);
    v16 = objc_msgSend_initWithOperation_subscriptionIDs_(v11, v15, self, v14);

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_225239CFC;
    v34[3] = &unk_27854AB50;
    objc_copyWeak(&v35, &location);
    objc_msgSend_setSubscriptionFetchedBlock_(v16, v17, v34);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_225239D88;
    v32[3] = &unk_27854AB78;
    objc_copyWeak(&v33, &location);
    objc_msgSend_setErrorFetchingAllSubscriptionsBlock_(v16, v18, v32);
    objc_initWeak(&from, v16);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_225239FB8;
    v28 = &unk_278548748;
    objc_copyWeak(&v29, &location);
    objc_copyWeak(&v30, &from);
    objc_msgSend_setCompletionBlock_(v16, v19, &v25);
    objc_msgSend_setRequest_(self, v20, v16, v25, v26, v27, v28);
    v23 = objc_msgSend_container(self, v21, v22);
    objc_msgSend_performRequest_(v23, v24, v16);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);

    objc_destroyWeak(&location);
    return;
  }

  AllSubscriptionsOperation = objc_msgSend_isFetchAllSubscriptionsOperation(self, v7, v8);

  if (AllSubscriptionsOperation)
  {
    goto LABEL_4;
  }

  objc_msgSend_finishWithError_(self, v10, 0);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  objc_msgSend_setSubscriptionFetchedProgressBlock_(self, v5, 0);
  v6.receiver = self;
  v6.super_class = CKDFetchSubscriptionsOperation;
  [(CKDOperation *)&v6 _finishOnCallbackQueueWithError:errorCopy];
}

@end