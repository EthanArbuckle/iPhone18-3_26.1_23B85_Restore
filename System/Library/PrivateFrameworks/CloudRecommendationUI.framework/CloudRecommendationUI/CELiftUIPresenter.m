@interface CELiftUIPresenter
- (CELiftUIPresenter)initWithURL:(id)a3 account:(id)a4 data:(id)a5;
- (CELiftUIPresenterDelegate)delegate;
- (void)liftUIPresenterDidCancel:(id)a3 userInfo:(id)a4;
- (void)liftUIPresenterDidComplete:(id)a3 userInfo:(id)a4;
@end

@implementation CELiftUIPresenter

- (CELiftUIPresenter)initWithURL:(id)a3 account:(id)a4 data:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CELiftUIPresenter;
  v11 = [(CELiftUIPresenter *)&v17 init];
  if (v11)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v12 = getICQLiftUIPresenterClass_softClass;
    v22 = getICQLiftUIPresenterClass_softClass;
    if (!getICQLiftUIPresenterClass_softClass)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __getICQLiftUIPresenterClass_block_invoke;
      v18[3] = &unk_278DE1BE8;
      v18[4] = &v19;
      __getICQLiftUIPresenterClass_block_invoke(v18);
      v12 = v20[3];
    }

    v13 = v12;
    _Block_object_dispose(&v19, 8);
    v14 = [[v12 alloc] initWithURL:v8 account:v9 data:v10];
    liftUIPresenter = v11->_liftUIPresenter;
    v11->_liftUIPresenter = v14;

    [(ICQLiftUIPresenter *)v11->_liftUIPresenter setDelegate:v11];
  }

  return v11;
}

- (void)liftUIPresenterDidComplete:(id)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = [(CELiftUIPresenter *)self delegate];
  [v6 liftUIPresenterDidCompleteWithUserInfo:v5];
}

- (void)liftUIPresenterDidCancel:(id)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = [(CELiftUIPresenter *)self delegate];
  [v6 liftUIPresenterDidCancelWithUserInfo:v5];
}

- (CELiftUIPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end