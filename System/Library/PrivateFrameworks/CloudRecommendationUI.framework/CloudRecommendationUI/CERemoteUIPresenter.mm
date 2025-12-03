@interface CERemoteUIPresenter
- (CERemoteUIPresenter)initWithAccount:(id)account presenter:(id)presenter;
- (CERemoteUIPresenterDelegate)delegate;
- (void)remoteUIFlowManager:(id)manager didDismissWithError:(id)error;
@end

@implementation CERemoteUIPresenter

- (CERemoteUIPresenter)initWithAccount:(id)account presenter:(id)presenter
{
  accountCopy = account;
  presenterCopy = presenter;
  v14.receiver = self;
  v14.super_class = CERemoteUIPresenter;
  v8 = [(CERemoteUIPresenter *)&v14 init];
  if (v8)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v9 = getICQUIRemoteUIPresenterClass_softClass;
    v19 = getICQUIRemoteUIPresenterClass_softClass;
    if (!getICQUIRemoteUIPresenterClass_softClass)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __getICQUIRemoteUIPresenterClass_block_invoke;
      v15[3] = &unk_278DE1BE8;
      v15[4] = &v16;
      __getICQUIRemoteUIPresenterClass_block_invoke(v15);
      v9 = v17[3];
    }

    v10 = v9;
    _Block_object_dispose(&v16, 8);
    v11 = [[v9 alloc] initWithAccount:accountCopy presenter:presenterCopy];
    remoteUIPresenter = v8->_remoteUIPresenter;
    v8->_remoteUIPresenter = v11;

    [(ICQUIRemoteUIPresenter *)v8->_remoteUIPresenter setDelegate:v8];
  }

  return v8;
}

- (void)remoteUIFlowManager:(id)manager didDismissWithError:(id)error
{
  errorCopy = error;
  managerCopy = manager;
  delegate = [(CERemoteUIPresenter *)self delegate];
  [delegate remoteUIFlowManager:managerCopy didDismissWithError:errorCopy];
}

- (CERemoteUIPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end