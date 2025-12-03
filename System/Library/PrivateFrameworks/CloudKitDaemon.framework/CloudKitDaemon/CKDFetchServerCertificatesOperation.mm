@interface CKDFetchServerCertificatesOperation
+ (id)nameForState:(unint64_t)state;
- (BOOL)makeStateTransition;
- (id)activityCreate;
- (void)fetchServerCertificates;
@end

@implementation CKDFetchServerCertificatesOperation

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/server-certificates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v10 = objc_msgSend_error(self, v8, v9);
    objc_msgSend_finishWithError_(self, v11, v10);
  }

  else if (v4 == 1)
  {
    objc_msgSend_setState_(self, v5, 2);
    objc_msgSend_fetchServerCertificates(self, v6, v7);
  }

  return 1;
}

+ (id)nameForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"Fetching Server Certificates";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CKDFetchServerCertificatesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  return v5;
}

- (void)fetchServerCertificates
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  ApplePinned = SecPolicyCreateApplePinned();
  v6 = [CKDFetchServerCertificatesURLRequest alloc];
  v8 = objc_msgSend_initWithOperation_verifyWithPolicy_(v6, v7, self, ApplePinned);
  if (ApplePinned)
  {
    CFRelease(ApplePinned);
  }

  objc_initWeak(&location, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2251A3178;
  v15[3] = &unk_2785476F0;
  objc_copyWeak(&v16, &location);
  v15[4] = self;
  objc_msgSend_setCompletionBlock_(v8, v9, v15);
  objc_msgSend_setRequest_(self, v10, v8);
  v13 = objc_msgSend_container(self, v11, v12);
  objc_msgSend_performRequest_(v13, v14, v8);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end