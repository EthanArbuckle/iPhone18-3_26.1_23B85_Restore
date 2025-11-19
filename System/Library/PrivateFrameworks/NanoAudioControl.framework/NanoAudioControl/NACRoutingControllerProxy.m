@interface NACRoutingControllerProxy
- (NACRoutingControllerDelegate)delegate;
- (NACRoutingControllerProxy)initWithAudioCategory:(id)a3;
- (void)_applicationDidBecomeActiveNotification:(id)a3;
- (void)_applicationWillResignActiveNotification:(id)a3;
- (void)_audioRoutesDidChange;
- (void)beginObservingRoutes;
- (void)dealloc;
- (void)endObservingRoutes;
- (void)pickAudioRoute:(id)a3;
@end

@implementation NACRoutingControllerProxy

- (NACRoutingControllerProxy)initWithAudioCategory:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NACRoutingControllerProxy;
  v6 = [(NACRoutingControllerProxy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, a3);
    v8 = +[NACXPCClient sharedClient];
    xpcClient = v7->_xpcClient;
    v7->_xpcClient = v8;
  }

  return v7;
}

- (void)dealloc
{
  [(NACRoutingControllerProxy *)self endObservingRoutes];
  v3.receiver = self;
  v3.super_class = NACRoutingControllerProxy;
  [(NACRoutingControllerProxy *)&v3 dealloc];
}

- (void)beginObservingRoutes
{
  if (!self->_isObserving)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _NACAudioRoutesDidChangeNotification, @"NACAudioRoutesDidChangeNotification", 0, 0);
    [(NACXPCClient *)self->_xpcClient beginObservingAudioRoutesForCategory:self->_category];
    self->_isObserving = 1;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__applicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];
    [v5 addObserver:self selector:sel__applicationWillResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];
    [(NACRoutingControllerProxy *)self _audioRoutesDidChange];
  }
}

- (void)endObservingRoutes
{
  if (self->_isObserving)
  {
    [(NACXPCClient *)self->_xpcClient endObservingAudioRoutesForCategory:self->_category];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self];

    self->_isObserving = 0;
  }
}

- (void)pickAudioRoute:(id)a3
{
  xpcClient = self->_xpcClient;
  v5 = [a3 uniqueIdentifier];
  [(NACXPCClient *)xpcClient pickAudioRouteWithIdentifier:v5 category:self->_category];
}

- (void)_audioRoutesDidChange
{
  objc_initWeak(&location, self);
  xpcClient = self->_xpcClient;
  category = self->_category;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__NACRoutingControllerProxy__audioRoutesDidChange__block_invoke;
  v5[3] = &unk_27992BAE0;
  objc_copyWeak(&v6, &location);
  [(NACXPCClient *)xpcClient audioRoutesForCategory:category result:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__NACRoutingControllerProxy__audioRoutesDidChange__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [NACAudioRoute audioRoutesFromBuffers:v3];
    v6 = WeakRetained[5];
    WeakRetained[5] = v5;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = WeakRetained[5];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 isPicked])
          {
            objc_storeStrong(WeakRetained + 6, v12);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__NACRoutingControllerProxy__audioRoutesDidChange__block_invoke_2;
    block[3] = &unk_27992B4E8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __50__NACRoutingControllerProxy__audioRoutesDidChange__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v4 routingControllerDidUpdateAvailableRoutes:*(a1 + 32)];
  }
}

- (void)_applicationDidBecomeActiveNotification:(id)a3
{
  if (self->_isObserving)
  {
    [(NACXPCClient *)self->_xpcClient beginObservingAudioRoutesForCategory:self->_category];
  }
}

- (void)_applicationWillResignActiveNotification:(id)a3
{
  if (self->_isObserving)
  {
    [(NACXPCClient *)self->_xpcClient endObservingAudioRoutesForCategory:self->_category];
  }
}

- (NACRoutingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end