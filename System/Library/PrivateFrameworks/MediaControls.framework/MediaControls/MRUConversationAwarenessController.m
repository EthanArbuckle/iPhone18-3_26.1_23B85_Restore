@interface MRUConversationAwarenessController
- (MRUConversationAwarenessController)initWithOutputDeviceRouteController:(id)a3;
- (MRUConversationAwarenessControllerDelegate)delegate;
- (void)setConversationAwarenessEnabled:(BOOL)a3 completion:(id)a4;
- (void)systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)a3;
- (void)updateConversationAwarenessEnabled;
- (void)updateConversationAwarenessSupported;
@end

@implementation MRUConversationAwarenessController

- (void)updateConversationAwarenessEnabled
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v4 = [v3 logicalLeaderOutputDevice];
  v5 = [v4 isConversationDetectionEnabled];
  if (self->_conversationAwarenessEnabled != v5)
  {
    v6 = v5;
    self->_conversationAwarenessEnabled = v5;
    v7 = MCLogCategoryVolume();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543874;
      v10 = objc_opt_class();
      v11 = 1024;
      v12 = v6;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ conversation detection enabled: %{BOOL}u | device: %{public}@", &v9, 0x1Cu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained conversationAwarenessController:self didChangeConversationAwarenessEnabled:v6];
  }
}

- (void)updateConversationAwarenessSupported
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v4 = [v3 logicalLeaderOutputDevice];
  if ([(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController isSplitRoute])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 supportsConversationDetection];
  }

  if (self->_conversationAwarenessSupported != v5)
  {
    self->_conversationAwarenessSupported = v5;
    v6 = MCLogCategoryVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543874;
      v9 = objc_opt_class();
      v10 = 1024;
      v11 = v5;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ conversation detection supported: %{BOOL}u | device: %{public}@", &v8, 0x1Cu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained conversationAwarenessController:self didChangeConversationAwarenessSupported:v5];
  }
}

- (MRUConversationAwarenessController)initWithOutputDeviceRouteController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUConversationAwarenessController;
  v6 = [(MRUConversationAwarenessController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDeviceRouteController, a3);
    [(MRUSystemOutputDeviceRouteController *)v7->_outputDeviceRouteController add:v7];
    [(MRUConversationAwarenessController *)v7 updateConversationAwarenessSupported];
    [(MRUConversationAwarenessController *)v7 updateConversationAwarenessEnabled];
  }

  return v7;
}

- (void)setConversationAwarenessEnabled:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_conversationAwarenessEnabled != v4)
  {
    self->_conversationAwarenessEnabled = v4;
    v7 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
    v8 = [v7 logicalLeaderOutputDevice];
    v9 = MCLogCategoryVolume();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v18 = objc_opt_class();
      v19 = 1024;
      v20 = v4;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ conversation detection enabled changed: %{BOOL}u | device: %{public}@", buf, 0x1Cu);
    }

    objc_initWeak(buf, self);
    v10 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController systemRoute];
    v11 = [v10 endpoint];

    v12 = [v7 routeUID];
    v13 = MEMORY[0x1E69E96A0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__MRUConversationAwarenessController_setConversationAwarenessEnabled_completion___block_invoke;
    v14[3] = &unk_1E7664418;
    objc_copyWeak(&v16, buf);
    v15 = v6;
    [v11 setConversationDetectionEnabled:v4 outputDeviceUID:v12 queue:MEMORY[0x1E69E96A0] completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __81__MRUConversationAwarenessController_setConversationAwarenessEnabled_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 userInfo];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  [v6 code];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained updateConversationAwarenessEnabled];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)a3
{
  [(MRUConversationAwarenessController *)self updateConversationAwarenessSupported];

  [(MRUConversationAwarenessController *)self updateConversationAwarenessEnabled];
}

- (MRUConversationAwarenessControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end