@interface CERemoteUIPresenter
- (CERemoteUIPresenter)initWithAccount:(id)a3 presenter:(id)a4;
- (CERemoteUIPresenterDelegate)delegate;
- (void)remoteUIFlowManager:(id)a3 didDismissWithError:(id)a4;
@end

@implementation CERemoteUIPresenter

- (CERemoteUIPresenter)initWithAccount:(id)a3 presenter:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v11 = [[v9 alloc] initWithAccount:v6 presenter:v7];
    remoteUIPresenter = v8->_remoteUIPresenter;
    v8->_remoteUIPresenter = v11;

    [(ICQUIRemoteUIPresenter *)v8->_remoteUIPresenter setDelegate:v8];
  }

  return v8;
}

- (void)remoteUIFlowManager:(id)a3 didDismissWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CERemoteUIPresenter *)self delegate];
  [v8 remoteUIFlowManager:v7 didDismissWithError:v6];
}

- (CERemoteUIPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end