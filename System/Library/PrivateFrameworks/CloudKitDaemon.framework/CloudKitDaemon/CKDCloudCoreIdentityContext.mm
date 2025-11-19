@interface CKDCloudCoreIdentityContext
- (CKDCloudCoreIdentityContext)initWithWatcher:(id)a3 service:(id)a4 account:(id)a5;
- (CKDPCSIdentityChangeWatcher)delegate;
@end

@implementation CKDCloudCoreIdentityContext

- (CKDCloudCoreIdentityContext)initWithWatcher:(id)a3 service:(id)a4 account:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = CKDCloudCoreIdentityContext;
  v11 = [(CKDCloudCoreIdentityContext *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    v15 = objc_msgSend_token(v8, v13, v14);
    token = v12->_token;
    v12->_token = v15;

    v19 = objc_msgSend_copy(v9, v17, v18);
    service = v12->_service;
    v12->_service = v19;

    objc_storeStrong(&v12->_account, a5);
  }

  return v12;
}

- (CKDPCSIdentityChangeWatcher)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end