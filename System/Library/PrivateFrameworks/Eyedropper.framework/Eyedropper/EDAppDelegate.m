@interface EDAppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CGPoint)_lastDisplayLocationForLensView:(id)a3;
- (CGPoint)_startingPointForWindow:(id)a3;
- (EDAppDelegate)init;
- (EDLensView)activeLensView;
- (id)mainScreenLensView;
- (id)mainScreenWindow;
- (void)_enumerateRemoteClientsUsingBlock:(id)a3;
- (void)_sceneDidDisconnect:(id)a3;
- (void)_sceneWillConnect:(id)a3;
- (void)_updateDynamicRangeSamplingModesFromClientSettings;
- (void)_updateLastDisplayLocation:(CGPoint)a3 forLensView:(id)a4;
- (void)beginShowingEyeDropper:(id)a3 settings:(id)a4;
- (void)cancelShowingEyeDropper;
- (void)dismissEyedropper;
- (void)floatEyeDropper;
- (void)hideSystemPointer:(BOOL)a3;
- (void)lensView:(id)a3 didSelectColorsBySamplingMode:(id)a4;
- (void)lensViewDidActivate:(id)a3;
- (void)lockStateChanged;
- (void)performOnAllWindows:(id)a3;
- (void)scene:(id)a3 didUpdateWithDiff:(id)a4 transitionContext:(id)a5 completion:(id)a6;
@end

@implementation EDAppDelegate

- (EDAppDelegate)init
{
  v8.receiver = self;
  v8.super_class = EDAppDelegate;
  v2 = [(EDAppDelegate *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__sceneWillConnect_ name:*MEMORY[0x277D76E70] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel__sceneDidDisconnect_ name:*MEMORY[0x277D76E50] object:0];

    v5 = [MEMORY[0x277CBEB38] dictionary];
    mousePointerServiceAssertionByDisplayIdentifier = v2->_mousePointerServiceAssertionByDisplayIdentifier;
    v2->_mousePointerServiceAssertionByDisplayIdentifier = v5;
  }

  return v2;
}

- (void)_sceneWillConnect:(id)a3
{
  v9 = [a3 object];
  v4 = [v9 delegate];
  v5 = EDDisplayIdentifierForWindowScene(v9);
  sceneDelegateByDisplayIdentifier = self->_sceneDelegateByDisplayIdentifier;
  if (!sceneDelegateByDisplayIdentifier)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = self->_sceneDelegateByDisplayIdentifier;
    self->_sceneDelegateByDisplayIdentifier = v7;

    sceneDelegateByDisplayIdentifier = self->_sceneDelegateByDisplayIdentifier;
  }

  [(NSMutableDictionary *)sceneDelegateByDisplayIdentifier setObject:v4 forKey:v5];
}

- (void)_sceneDidDisconnect:(id)a3
{
  v5 = [a3 object];
  v4 = EDDisplayIdentifierForWindowScene(v5);
  [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier removeObjectForKey:v4];
}

- (id)mainScreenWindow
{
  v2 = [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier objectForKey:EDEmbeddedDisplayIdentifier];
  v3 = [v2 window];

  return v3;
}

- (id)mainScreenLensView
{
  v2 = [(EDAppDelegate *)self mainScreenWindow];
  v3 = [v2 rootViewController];
  v4 = [v3 lensView];

  return v4;
}

- (EDLensView)activeLensView
{
  activeLensView = self->_activeLensView;
  if (activeLensView)
  {
    v3 = activeLensView;
  }

  else
  {
    v3 = [(EDAppDelegate *)self mainScreenLensView];
  }

  return v3;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.uikit.eyedropperd.service"];
  serviceListener = self->_serviceListener;
  self->_serviceListener = v5;

  [(NSXPCListener *)self->_serviceListener setDelegate:self];
  v7 = [MEMORY[0x277CBEB18] array];
  liveConnections = self->_liveConnections;
  self->_liveConnections = v7;

  v9 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  settingsByConnection = self->_settingsByConnection;
  self->_settingsByConnection = v9;

  v11 = [MEMORY[0x277CCAA78] indexSet];
  activeDynamicRangeSamplingModes = self->_activeDynamicRangeSamplingModes;
  self->_activeDynamicRangeSamplingModes = v11;

  v13 = objc_opt_new();
  pointerClientController = self->_pointerClientController;
  self->_pointerClientController = v13;

  v15 = *MEMORY[0x277D76620];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__EDAppDelegate_application_didFinishLaunchingWithOptions___block_invoke;
  v18[3] = &unk_278FD8448;
  v18[4] = self;
  [v15 _performBlockAfterCATransactionCommits:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__EDAppDelegate_application_didFinishLaunchingWithOptions___block_invoke_2;
  v17[3] = &unk_278FD8470;
  v17[4] = self;
  notify_register_dispatch("com.apple.springboard.lockstate", &self->_notifyTokenLocked, MEMORY[0x277D85CD0], v17);
  return 1;
}

- (void)lockStateChanged
{
  if (self->_notifyTokenLocked != -1)
  {
    if (SBSGetScreenLockStatus())
    {
      [(EDAppDelegate *)self cancelShowingEyeDropper];
      v3 = &__block_literal_global;
    }

    else
    {
      v3 = &__block_literal_global_19;
    }

    [(EDAppDelegate *)self performOnAllWindows:v3];
  }
}

- (void)performOnAllWindows:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier allKeys];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v15 = (v4 + 2);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_mousePointerServiceAssertionByDisplayIdentifier objectForKey:v10, v15];
        if (!v11)
        {
          v12 = [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier objectForKey:v10];
          v13 = v12;
          if (v4)
          {
            v14 = [v12 window];
            v4[2](v4, v14);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285D871D8];
  [v7 setExportedInterface:v8];

  [v7 setExportedObject:self];
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285D87270];
  [v7 setRemoteObjectInterface:v9];

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__EDAppDelegate_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_278FD84B8;
  objc_copyWeak(&v24, &location);
  v10 = v7;
  v23 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_initWeak(&from, v10);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__EDAppDelegate_listener_shouldAcceptNewConnection___block_invoke_2;
  v19[3] = &unk_278FD84E0;
  objc_copyWeak(&v20, &from);
  [v10 setInterruptionHandler:v19];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __52__EDAppDelegate_listener_shouldAcceptNewConnection___block_invoke_3;
  v15 = &unk_278FD8508;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  v16 = self;
  [v10 setInvalidationHandler:&v12];
  [v10 resume];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return 1;
}

void __52__EDAppDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] addObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __52__EDAppDelegate_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __52__EDAppDelegate_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__EDAppDelegate_listener_shouldAcceptNewConnection___block_invoke_4;
  block[3] = &unk_278FD8508;
  objc_copyWeak(&v3, (a1 + 40));
  objc_copyWeak(&v4, (a1 + 48));
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v3);
}

void __52__EDAppDelegate_listener_shouldAcceptNewConnection___block_invoke_4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v2 = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && v2)
  {
    [WeakRetained[4] removeObjectForKey:v2];
    [a1[4] _updateDynamicRangeSamplingModesFromClientSettings];
    [WeakRetained[3] removeObject:v2];
  }
}

- (void)_enumerateRemoteClientsUsingBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_liveConnections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 remoteObjectProxy];
        if (v11)
        {
          v12 = [(NSMapTable *)self->_settingsByConnection objectForKey:v10];
          v4[2](v4, v11, v12);
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)scene:(id)a3 didUpdateWithDiff:(id)a4 transitionContext:(id)a5 completion:(id)a6
{
  v7 = a6;
  v8 = v7;
  if (v7)
  {
    v9 = *MEMORY[0x277D76620];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__EDAppDelegate_scene_didUpdateWithDiff_transitionContext_completion___block_invoke;
    v10[3] = &unk_278FD8530;
    v11 = v7;
    [v9 _scheduleSceneEventResponseForScene:a3 withResponseBlock:v10];
  }
}

void __70__EDAppDelegate_scene_didUpdateWithDiff_transitionContext_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D0AE20]);
  (*(*(a1 + 32) + 16))();
}

- (void)hideSystemPointer:(BOOL)a3
{
  hidePointerAssertion = self->_hidePointerAssertion;
  if (a3)
  {
    if (hidePointerAssertion)
    {
      return;
    }

    v5 = [(PSPointerClientController *)self->_pointerClientController persistentlyHidePointerAssertionForReason:5];
  }

  else
  {
    [(BSInvalidatable *)hidePointerAssertion invalidate];
    v5 = 0;
  }

  self->_hidePointerAssertion = v5;

  MEMORY[0x2821F96F8]();
}

- (CGPoint)_startingPointForWindow:(id)a3
{
  [a3 bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);
  v9 = MidX;
  result.y = MidY;
  result.x = v9;
  return result;
}

- (void)_updateDynamicRangeSamplingModesFromClientSettings
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB58] indexSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMapTable *)self->_settingsByConnection objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addIndex:{objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "headroomMode")}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];
  activeDynamicRangeSamplingModes = self->_activeDynamicRangeSamplingModes;
  self->_activeDynamicRangeSamplingModes = v9;
}

- (void)beginShowingEyeDropper:(id)a3 settings:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  if (!v6)
  {
    v6 = EDEmbeddedDisplayIdentifier;
  }

  v8 = [MEMORY[0x277CCAE80] currentConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__EDAppDelegate_beginShowingEyeDropper_settings___block_invoke;
  v12[3] = &unk_278FD8558;
  objc_copyWeak(&v17, &location);
  v13 = v8;
  v14 = v7;
  v15 = self;
  v16 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v12);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __49__EDAppDelegate_beginShowingEyeDropper_settings___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      [WeakRetained[4] setObject:*(a1 + 40) forKey:?];
      [*(a1 + 48) _updateDynamicRangeSamplingModesFromClientSettings];
    }

    [*(a1 + 48) performOnAllWindows:&__block_literal_global_78];
    v33 = [v3[12] objectForKey:*(a1 + 56)];
    v4 = [v33 lensView];
    [v4 lastPosition];
    if (v6 == *MEMORY[0x277CBF348] && v5 == *(MEMORY[0x277CBF348] + 8))
    {
      v8 = *(a1 + 48);
      v9 = [v4 window];
      [v8 _startingPointForWindow:v9];
      [v4 setLastPosition:?];
    }

    v34 = a1;
    *(v3 + 64) = 0;
    *(v3 + 65) = 0;
    [v4 setFloatingMode:{0, v4}];
    if (!v3[7])
    {
      v10 = objc_alloc(MEMORY[0x277CF07A8]);
      v11 = [v3 mainScreenWindow];
      v12 = [v11 _contextId];
      v13 = objc_opt_new();
      v14 = [v10 initWithContextID:v12 displayUUID:0 identifier:2 policy:v13];
      v15 = v3[7];
      v3[7] = v14;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v3[12] allKeys];
    v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      v19 = 0x27EF3D000uLL;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = *(v19 + 1048);
          v23 = [*(v3 + v22) objectForKey:v21];
          if (!v23)
          {
            v24 = [v3[12] objectForKey:v21];
            v36 = v24;
            v25 = [MEMORY[0x277CF0720] sharedInstance];
            if ([v21 isEqualToString:EDEmbeddedDisplayIdentifier])
            {
              v26 = 0;
            }

            else
            {
              v26 = v21;
            }

            [v24 window];
            v27 = v17;
            v28 = v18;
            v29 = v3;
            v31 = v30 = v19;
            v23 = [v25 requestGlobalMouseEventsForDisplay:v26 targetContextID:{objc_msgSend(v31, "_contextId")}];

            v19 = v30;
            v3 = v29;
            v18 = v28;
            v17 = v27;

            [*(v3 + v22) setObject:v23 forKey:v21];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v17);
    }

    [*(v34 + 48) hideSystemPointer:1];
  }
}

- (void)cancelShowingEyeDropper
{
  [(EDAppDelegate *)self hideSystemPointer:0];
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__EDAppDelegate_cancelShowingEyeDropper__block_invoke;
  v3[3] = &unk_278FD84E0;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __40__EDAppDelegate_cancelShowingEyeDropper__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained dismissEyedropper];
    *(v2 + 64) = 0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(v2 + 12) allValues];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) resetTouchesBeganTime];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_updateLastDisplayLocation:(CGPoint)a3 forLensView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v15 = v7;
  if (!self->_lastDisplayLocationByDisplayIdentifier)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    lastDisplayLocationByDisplayIdentifier = self->_lastDisplayLocationByDisplayIdentifier;
    self->_lastDisplayLocationByDisplayIdentifier = v8;

    v7 = v15;
  }

  v10 = [v7 window];
  v11 = [v10 windowScene];
  v12 = EDDisplayIdentifierForWindowScene(v11);

  if (v12)
  {
    v13 = self->_lastDisplayLocationByDisplayIdentifier;
    v14 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
    [(NSMutableDictionary *)v13 setObject:v14 forKey:v12];
  }
}

- (CGPoint)_lastDisplayLocationForLensView:(id)a3
{
  v4 = [a3 window];
  v5 = [v4 windowScene];
  v6 = EDDisplayIdentifierForWindowScene(v5);

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_lastDisplayLocationByDisplayIdentifier objectForKey:v6];
    [v7 CGPointValue];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = *MEMORY[0x277CBF348];
    v11 = *(MEMORY[0x277CBF348] + 8);
  }

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)floatEyeDropper
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__EDAppDelegate_floatEyeDropper__block_invoke;
  block[3] = &unk_278FD84B8;
  objc_copyWeak(&v4, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __32__EDAppDelegate_floatEyeDropper__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(WeakRetained + 65) & 1) == 0)
    {
      v4 = [WeakRetained activeLensView];
      v5 = [v4 isActive];

      if ((v5 & 1) == 0)
      {
        [v3 hideSystemPointer:0];
        *(v3 + 64) = 1;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v6 = [v3[12] allValues];
        v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v37;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v37 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v36 + 1) + 8 * i);
              v12 = [v11 lensView];
              [v12 setFloatingMode:1];

              v13 = [v11 window];
              v14 = [v13 layer];
              [v14 setHitTestsAsOpaque:1];
            }

            v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v8);
        }

        v15 = [v3 activeLensView];
        v16 = [v15 window];
        v17 = [v16 screen];
        [v17 bounds];
        v19 = v18;
        v21 = v20;

        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        if (v22 - *(v3 + 9) >= 10.0)
        {
          v25 = v19 * 0.5;
          v27 = v21 * 0.5;
        }

        else
        {
          v23 = [v3 activeLensView];
          [v3 _lastDisplayLocationForLensView:v23];
          v25 = v24;
          v27 = v26;
        }

        if (v25 == *MEMORY[0x277CBF348] && v27 == *(MEMORY[0x277CBF348] + 8))
        {
          v28 = *(a1 + 32);
          v29 = [v3 activeLensView];
          v30 = [v29 window];
          [v28 _startingPointForWindow:v30];
          v25 = v31;
          v27 = v32;
        }

        v33 = [v3 activeLensView];
        [v33 updateCenterOffsetAtTouchDown:{v25, v27}];

        v34 = [v3 activeLensView];
        [v34 presentAtLocation:{v25, v27}];

        v35 = [v3 activeLensView];
        [v35 setActive:1];
      }
    }
  }
}

- (void)lensView:(id)a3 didSelectColorsBySamplingMode:(id)a4
{
  v6 = a4;
  self->_selectedColor = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__EDAppDelegate_lensView_didSelectColorsBySamplingMode___block_invoke;
  v9[3] = &unk_278FD8580;
  v10 = v6;
  v7 = v6;
  v8 = a3;
  [(EDAppDelegate *)self _enumerateRemoteClientsUsingBlock:v9];
  [v8 lastPosition];
  [(EDAppDelegate *)self _updateLastDisplayLocation:v8 forLensView:?];
}

void __56__EDAppDelegate_lensView_didSelectColorsBySamplingMode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a2;
  v13 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "headroomMode")}];
  v8 = *(a1 + 32);
  v9 = MEMORY[0x277CCABB0];
  v10 = [v6 headroomMode];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 objectForKey:v11];

  [v7 eyedropperDidSelectColor:v12];
}

- (void)lensViewDidActivate:(id)a3
{
  v5 = a3;
  activeLensView = self->_activeLensView;
  if (activeLensView != v5)
  {
    v14 = v5;
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
    v9 = v8;
    v10 = *MEMORY[0x277CBF348];
    if (activeLensView)
    {
      [(EDLensView *)activeLensView centerOffsetAtTouchDown];
      v10 = v11;
      v9 = v12;
      [(EDLensView *)self->_activeLensView setActive:0];
    }

    objc_storeStrong(&self->_activeLensView, a3);
    v13 = v10 == v7 && v9 == v8;
    v5 = v14;
    if (!v13)
    {
      activeLensView = [(EDLensView *)self->_activeLensView setCenterOffsetAtTouchDown:v10, v9];
      v5 = v14;
    }
  }

  MEMORY[0x2821F96F8](activeLensView, v5);
}

- (void)dismissEyedropper
{
  v42 = *MEMORY[0x277D85DE8];
  if (!self->_selectedColor)
  {
    [(EDAppDelegate *)self _enumerateRemoteClientsUsingBlock:&__block_literal_global_87];
  }

  v3 = [(EDAppDelegate *)self activeLensView];
  [v3 setActive:0];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_lastDismissedTime = v4;
  if (self->_isFloating)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier allValues];
    v6 = [v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v35 + 1) + 8 * i) window];
          v11 = [v10 layer];
          [v11 setHitTestsAsOpaque:0];
        }

        v7 = [v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v7);
    }
  }

  [(EDAppDelegate *)self hideSystemPointer:0];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = self->_liveConnections;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v31 + 1) + 8 * j) invalidate];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v14);
  }

  touchStream = self->_touchStream;
  if (touchStream)
  {
    [(BKSTouchStream *)touchStream invalidate];
    v18 = self->_touchStream;
    self->_touchStream = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = [(NSMutableDictionary *)self->_sceneDelegateByDisplayIdentifier allKeys];
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v27 + 1) + 8 * k);
        v25 = [(NSMutableDictionary *)self->_mousePointerServiceAssertionByDisplayIdentifier objectForKey:v24];
        v26 = v25;
        if (v25)
        {
          [v25 invalidate];
          [(NSMutableDictionary *)self->_mousePointerServiceAssertionByDisplayIdentifier removeObjectForKey:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v21);
  }
}

@end