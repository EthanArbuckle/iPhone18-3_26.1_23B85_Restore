@interface HUSessionManager
- (HUSessionManager)init;
- (HUSessionManagerDelegate)delegate;
- (void)dealloc;
- (void)userLoggedOut:(id)a3;
@end

@implementation HUSessionManager

- (HUSessionManager)init
{
  v5.receiver = self;
  v5.super_class = HUSessionManager;
  v2 = [(HUSessionManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HUSessionManager *)v2 registerForSessionNotifications];
  }

  return v3;
}

- (void)dealloc
{
  [(HUSessionManager *)self unregisterForSessionNotifications];
  v3.receiver = self;
  v3.super_class = HUSessionManager;
  [(HUSessionManager *)&v3 dealloc];
}

- (void)userLoggedOut:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = HCLogHearingHandoff();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "System status has changed userLoggedOut: %@", &v11, 0xCu);
  }

  v7 = [(HUSessionManager *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(HUSessionManager *)self delegate];
    [v9 handleSessionMessage:3 completion:0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (HUSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end