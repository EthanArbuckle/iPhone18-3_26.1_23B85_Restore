@interface LACUNManagerSetUpDecorator
- (LACUNManagerDelegate)delegate;
- (LACUNManagerSetUpDecorator)initWithManagerBuilder:(id)a3;
- (LACUNManagerSetUpDecorator)initWithManagerBuilder:(id)a3 setupStateProvider:(id)a4;
- (id)responder;
- (void)_registerNotificationObservers;
- (void)_setupResponder;
- (void)cancelAllNotificationsWithCompletion:(id)a3;
- (void)dealloc;
- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4;
- (void)postNotification:(id)a3 completion:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation LACUNManagerSetUpDecorator

- (void)_setupResponder
{
  if (!self->_responder)
  {
    v4 = [(LACUNManagerSetUpDecorator *)self responder:v2];
  }
}

- (LACUNManagerSetUpDecorator)initWithManagerBuilder:(id)a3
{
  v4 = a3;
  v5 = +[LACSetUpStateProvider sharedInstance];
  v6 = [(LACUNManagerSetUpDecorator *)self initWithManagerBuilder:v4 setupStateProvider:v5];

  return v6;
}

- (LACUNManagerSetUpDecorator)initWithManagerBuilder:(id)a3 setupStateProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = LACUNManagerSetUpDecorator;
  v8 = [(LACUNManagerSetUpDecorator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_builderLock._os_unfair_lock_opaque = 0;
    v10 = _Block_copy(v6);
    responderBuilder = v9->_responderBuilder;
    v9->_responderBuilder = v10;

    objc_storeStrong(&v9->_setupStateProvider, a4);
    [(LACUNManagerSetUpDecorator *)v9 _setupResponder];
    [(LACUNManagerSetUpDecorator *)v9 _registerNotificationObservers];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[LACDarwinNotificationCenter sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = LACUNManagerSetUpDecorator;
  [(LACUNManagerSetUpDecorator *)&v4 dealloc];
}

- (void)cancelAllNotificationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(LACUNManagerSetUpDecorator *)self responder];
  v6 = v5;
  if (v5)
  {
    [v5 cancelAllNotificationsWithCompletion:v4];
  }

  else
  {
    v7 = LACLogNotifications();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(LACUNManagerSetUpDecorator *)v7 cancelAllNotificationsWithCompletion:v8, v9, v10, v11, v12, v13, v14];
    }

    if (v4)
    {
      v15 = [LACError errorWithCode:-1000 debugDescription:@"Service not available in Setup"];
      v4[2](v4, v15);
    }
  }
}

- (void)postNotification:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LACUNManagerSetUpDecorator *)self responder];
  v9 = v8;
  if (v8)
  {
    [v8 postNotification:v6 completion:v7];
  }

  else
  {
    v10 = LACLogNotifications();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(LACUNManagerSetUpDecorator *)v10 cancelAllNotificationsWithCompletion:v11, v12, v13, v14, v15, v16, v17];
    }

    if (v7)
    {
      v18 = [LACError errorWithCode:-1000 debugDescription:@"Service not available in Setup"];
      v7[2](v7, v18);
    }
  }
}

- (LACUNManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  [(LACUNManager *)self->_responder setDelegate:v4];
}

- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4
{
  if (LACDarwinNotificationsEqual(a4, @"com.apple.springboard.lockstate"))
  {

    [(LACUNManagerSetUpDecorator *)self _setupResponder];
  }
}

- (void)_registerNotificationObservers
{
  v3 = +[LACDarwinNotificationCenter sharedInstance];
  [v3 addObserver:self notification:@"com.apple.springboard.lockstate"];
}

- (id)responder
{
  if ([(LACSetUpStateProvider *)self->_setupStateProvider hasCompletedSetup])
  {
    os_unfair_lock_lock(&self->_builderLock);
    responder = self->_responder;
    if (responder)
    {
      v4 = responder;
    }

    else
    {
      v4 = (*(self->_responderBuilder + 2))();
    }

    v6 = self->_responder;
    self->_responder = v4;

    v7 = self->_responder;
    v8 = [(LACUNManagerSetUpDecorator *)self delegate];
    [(LACUNManager *)v7 setDelegate:v8];

    v9 = LACLogNotifications();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Did create notification manager", v11, 2u);
    }

    os_unfair_lock_unlock(&self->_builderLock);
    v5 = self->_responder;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end