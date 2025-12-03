@interface LACUNManagerSetUpDecorator
- (LACUNManagerDelegate)delegate;
- (LACUNManagerSetUpDecorator)initWithManagerBuilder:(id)builder;
- (LACUNManagerSetUpDecorator)initWithManagerBuilder:(id)builder setupStateProvider:(id)provider;
- (id)responder;
- (void)_registerNotificationObservers;
- (void)_setupResponder;
- (void)cancelAllNotificationsWithCompletion:(id)completion;
- (void)dealloc;
- (void)notificationCenter:(id)center didReceiveNotification:(__CFString *)notification;
- (void)postNotification:(id)notification completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation LACUNManagerSetUpDecorator

- (void)_setupResponder
{
  if (!self->_responder)
  {
    v4 = [(LACUNManagerSetUpDecorator *)self responder:v2];
  }
}

- (LACUNManagerSetUpDecorator)initWithManagerBuilder:(id)builder
{
  builderCopy = builder;
  v5 = +[LACSetUpStateProvider sharedInstance];
  v6 = [(LACUNManagerSetUpDecorator *)self initWithManagerBuilder:builderCopy setupStateProvider:v5];

  return v6;
}

- (LACUNManagerSetUpDecorator)initWithManagerBuilder:(id)builder setupStateProvider:(id)provider
{
  builderCopy = builder;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = LACUNManagerSetUpDecorator;
  v8 = [(LACUNManagerSetUpDecorator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_builderLock._os_unfair_lock_opaque = 0;
    v10 = _Block_copy(builderCopy);
    responderBuilder = v9->_responderBuilder;
    v9->_responderBuilder = v10;

    objc_storeStrong(&v9->_setupStateProvider, provider);
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

- (void)cancelAllNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  responder = [(LACUNManagerSetUpDecorator *)self responder];
  v6 = responder;
  if (responder)
  {
    [responder cancelAllNotificationsWithCompletion:completionCopy];
  }

  else
  {
    v7 = LACLogNotifications();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(LACUNManagerSetUpDecorator *)v7 cancelAllNotificationsWithCompletion:v8, v9, v10, v11, v12, v13, v14];
    }

    if (completionCopy)
    {
      v15 = [LACError errorWithCode:-1000 debugDescription:@"Service not available in Setup"];
      completionCopy[2](completionCopy, v15);
    }
  }
}

- (void)postNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  responder = [(LACUNManagerSetUpDecorator *)self responder];
  v9 = responder;
  if (responder)
  {
    [responder postNotification:notificationCopy completion:completionCopy];
  }

  else
  {
    v10 = LACLogNotifications();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(LACUNManagerSetUpDecorator *)v10 cancelAllNotificationsWithCompletion:v11, v12, v13, v14, v15, v16, v17];
    }

    if (completionCopy)
    {
      v18 = [LACError errorWithCode:-1000 debugDescription:@"Service not available in Setup"];
      completionCopy[2](completionCopy, v18);
    }
  }
}

- (LACUNManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  [(LACUNManager *)self->_responder setDelegate:delegateCopy];
}

- (void)notificationCenter:(id)center didReceiveNotification:(__CFString *)notification
{
  if (LACDarwinNotificationsEqual(notification, @"com.apple.springboard.lockstate"))
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
    delegate = [(LACUNManagerSetUpDecorator *)self delegate];
    [(LACUNManager *)v7 setDelegate:delegate];

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