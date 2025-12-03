@interface CKDCloudCoreIdentityContext
- (CKDCloudCoreIdentityContext)initWithWatcher:(id)watcher service:(id)service account:(id)account;
- (CKDPCSIdentityChangeWatcher)delegate;
@end

@implementation CKDCloudCoreIdentityContext

- (CKDCloudCoreIdentityContext)initWithWatcher:(id)watcher service:(id)service account:(id)account
{
  watcherCopy = watcher;
  serviceCopy = service;
  accountCopy = account;
  v22.receiver = self;
  v22.super_class = CKDCloudCoreIdentityContext;
  v11 = [(CKDCloudCoreIdentityContext *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, watcherCopy);
    v15 = objc_msgSend_token(watcherCopy, v13, v14);
    token = v12->_token;
    v12->_token = v15;

    v19 = objc_msgSend_copy(serviceCopy, v17, v18);
    service = v12->_service;
    v12->_service = v19;

    objc_storeStrong(&v12->_account, account);
  }

  return v12;
}

- (CKDPCSIdentityChangeWatcher)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end