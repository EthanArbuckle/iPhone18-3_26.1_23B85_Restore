@interface CKDMarkAssetBrokenURLRequestWrapperOperation
- (id)activityCreate;
- (void)main;
@end

@implementation CKDMarkAssetBrokenURLRequestWrapperOperation

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/break-assets-url-request-wrapper", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  objc_initWeak(&location, self);
  v5 = objc_msgSend_urlRequest(self, v3, v4);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_2251B3A30;
  v21 = &unk_278547098;
  objc_copyWeak(&v22, &location);
  objc_msgSend_setCompletionBlock_(v5, v6, &v18);

  v9 = objc_msgSend_urlRequest(self, v7, v8, v18, v19, v20, v21);
  objc_msgSend_setRequest_(self, v10, v9);

  v13 = objc_msgSend_container(self, v11, v12);
  v16 = objc_msgSend_urlRequest(self, v14, v15);
  objc_msgSend_performRequest_(v13, v17, v16);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

@end