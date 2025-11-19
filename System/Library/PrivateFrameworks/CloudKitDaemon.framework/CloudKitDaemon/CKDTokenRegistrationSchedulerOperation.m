@interface CKDTokenRegistrationSchedulerOperation
- (CKDTokenRegistrationSchedulerOperation)initWithOperationInfo:(id)a3 container:(id)a4 apsToken:(id)a5;
- (void)main;
@end

@implementation CKDTokenRegistrationSchedulerOperation

- (CKDTokenRegistrationSchedulerOperation)initWithOperationInfo:(id)a3 container:(id)a4 apsToken:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CKDTokenRegistrationSchedulerOperation;
  v10 = [(CKDOperation *)&v13 initWithOperationInfo:a3 container:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_apsToken, a5);
  }

  return v11;
}

- (void)main
{
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_createRequest(self, v5, v6);
  objc_msgSend_setRequest_(self, v8, v7);
  objc_initWeak(&location, v7);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_2253B1100;
  v14 = &unk_278547098;
  objc_copyWeak(&v15, &location);
  objc_msgSend_setCompletionBlock_(v7, v9, &v11);
  objc_msgSend_performRequest_(v4, v10, v7, v11, v12, v13, v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

@end