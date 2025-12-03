@interface CORapportBrowser
- (CORapportBrowser)init;
- (CORapportTransport)sourceTransport;
- (NSString)description;
- (id)_rapportDeviceWithCompanionLinkDevice:(id)device;
- (id)addObserverUsingBlock:(id)block;
- (id)registeredObservers;
- (void)_onqueue_handleActivation:(id)activation;
- (void)_onqueue_handleFoundDevice:(id)device;
- (void)_onqueue_handleLostDevice:(id)device;
- (void)_onqueue_informObserversOfDiscoveredRecord:(id)record;
- (void)_onqueue_informObserversOfLostRecord:(id)record;
- (void)_onqueue_updateListeningPort:(id)port;
- (void)_withLock:(id)lock;
- (void)removeObserver:(id)observer;
- (void)setSourceTransport:(id)transport;
- (void)startWithCompletionHandler:(id)handler;
- (void)stop;
@end

@implementation CORapportBrowser

- (CORapportBrowser)init
{
  v14.receiver = self;
  v14.super_class = CORapportBrowser;
  v2 = [(CORapportBrowser *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(COBrowserObserverSet);
    observerSet = v3->_observerSet;
    v3->_observerSet = v4;

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.coordination.rapportbrowser.%p", v3];
    uTF8String = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(uTF8String, v8);
    workQueue = v3->_workQueue;
    v3->_workQueue = v9;

    v11 = [[COCompanionLinkClientFactory alloc] initWithDispatchQueue:v3->_workQueue];
    companionLinkClientFactory = v3->_companionLinkClientFactory;
    v3->_companionLinkClientFactory = v11;
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  workQueue = [(CORapportBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CORapportBrowser_startWithCompletionHandler___block_invoke;
  v7[3] = &unk_278E173A8;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __47__CORapportBrowser_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 12) == 1)
    {
      v4 = COCoreLogForCategory(14);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v24 = v3;
        _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p Browser is already running", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      *(WeakRetained + 12) = 1;
      v5 = [*(a1 + 32) companionLinkClientFactory];
      v6 = [v5 companionLinkClientForCurrentDevice];
      v7 = v3[4];
      v3[4] = v6;

      v8 = v3[4];
      v9 = [*(a1 + 32) workQueue];
      [v8 setDispatchQueue:v9];

      v10 = v3[4];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __47__CORapportBrowser_startWithCompletionHandler___block_invoke_6;
      v21[3] = &unk_278E158D8;
      objc_copyWeak(&v22, (a1 + 48));
      [v10 setDeviceFoundHandler:v21];
      v11 = v3[4];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __47__CORapportBrowser_startWithCompletionHandler___block_invoke_2;
      v19[3] = &unk_278E158D8;
      objc_copyWeak(&v20, (a1 + 48));
      [v11 setDeviceLostHandler:v19];
      v12 = v3[4];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __47__CORapportBrowser_startWithCompletionHandler___block_invoke_3;
      v17[3] = &unk_278E158D8;
      objc_copyWeak(&v18, (a1 + 48));
      [v12 setLocalDeviceUpdatedHandler:v17];
      [v3 setStartCallback:*(a1 + 40)];
      v13 = v3[4];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__CORapportBrowser_startWithCompletionHandler___block_invoke_4;
      v15[3] = &unk_278E156D8;
      objc_copyWeak(&v16, (a1 + 48));
      [v13 activateWithCompletion:v15];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __47__CORapportBrowser_startWithCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _onqueue_handleFoundDevice:v5];
  }
}

void __47__CORapportBrowser_startWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _onqueue_handleLostDevice:v5];
  }
}

void __47__CORapportBrowser_startWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _onqueue_updateListeningPort:v5];
  }
}

void __47__CORapportBrowser_startWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _onqueue_handleActivation:v5];
  }
}

- (void)stop
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p Stopping browser", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  workQueue = [(CORapportBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__CORapportBrowser_stop__block_invoke;
  block[3] = &unk_278E15B10;
  objc_copyWeak(&v7, buf);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __24__CORapportBrowser_stop__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 12) = 0;
    v3 = WeakRetained;
    [*(WeakRetained + 4) invalidate];
    v2 = v3[4];
    v3[4] = 0;

    WeakRetained = v3;
  }
}

- (id)registeredObservers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__CORapportBrowser_registeredObservers__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(CORapportBrowser *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __39__CORapportBrowser_registeredObservers__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) observerSet];
  v2 = [v6 observers];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)addObserverUsingBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__12;
  v12 = __Block_byref_object_dispose__12;
  v13 = [[COBrowserObserver alloc] initWithBlock:blockCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CORapportBrowser_addObserverUsingBlock___block_invoke;
  v7[3] = &unk_278E15950;
  v7[4] = self;
  v7[5] = &v8;
  [(CORapportBrowser *)self _withLock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __42__CORapportBrowser_addObserverUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observerSet];
  [v2 addObserver:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__CORapportBrowser_removeObserver___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  [(CORapportBrowser *)self _withLock:v6];
}

void __35__CORapportBrowser_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observerSet];
  [v2 removeObserver:*(a1 + 40)];
}

- (void)setSourceTransport:(id)transport
{
  transportCopy = transport;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__CORapportBrowser_setSourceTransport___block_invoke;
  v10[3] = &unk_278E156B0;
  v10[4] = self;
  v11 = transportCopy;
  v5 = transportCopy;
  [(CORapportBrowser *)self _withLock:v10];
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__CORapportBrowser_setSourceTransport___block_invoke_2;
  v7[3] = &unk_278E15B10;
  objc_copyWeak(&v8, &location);
  dispatch_async(workQueue, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __39__CORapportBrowser_setSourceTransport___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained listener];
    v4 = [v3 activeDevices];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__CORapportBrowser_setSourceTransport___block_invoke_3;
    v5[3] = &unk_278E173D0;
    v5[4] = v2;
    [v4 enumerateObjectsUsingBlock:v5];
  }
}

- (CORapportTransport)sourceTransport
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__CORapportBrowser_sourceTransport__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(CORapportBrowser *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __35__CORapportBrowser_sourceTransport__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (id)_rapportDeviceWithCompanionLinkDevice:(id)device
{
  deviceCopy = device;
  sourceTransport = [(CORapportBrowser *)self sourceTransport];
  v6 = [[CORapportDevice alloc] initWithCompanionLinkDevice:deviceCopy sourceTransport:sourceTransport];
  objc_initWeak(&location, v6);
  companionLinkClientFactory = [(CORapportBrowser *)self companionLinkClientFactory];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__CORapportBrowser__rapportDeviceWithCompanionLinkDevice___block_invoke;
  v11[3] = &unk_278E173F8;
  objc_copyWeak(&v14, &location);
  v8 = companionLinkClientFactory;
  v12 = v8;
  v9 = sourceTransport;
  v13 = v9;
  [(CORapportDevice *)v6 setCompanionLinkProvider:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v6;
}

id __58__CORapportBrowser__rapportDeviceWithCompanionLinkDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained device];
    v6 = [v3 IDSIdentifier];
    v7 = [v4 companionLinkClientForDevice:v5 withIDSIdentifier:v6];

    v8 = [*(a1 + 40) client];
    v9 = [v8 dispatchQueue];
    [v7 setDispatchQueue:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_onqueue_updateListeningPort:(id)port
{
  dispatch_assert_queue_V2(self->_workQueue);
  if (port)
  {

    [(CORapportBrowser *)self _onqueue_handleActivation:0];
  }
}

- (void)_onqueue_handleActivation:(id)activation
{
  v16 = *MEMORY[0x277D85DE8];
  activationCopy = activation;
  dispatch_assert_queue_V2(self->_workQueue);
  if (!self->_activated)
  {
    startCallback = [(CORapportBrowser *)self startCallback];
    v6 = startCallback;
    if (activationCopy && startCallback)
    {
      (*(startCallback + 16))(startCallback, activationCopy);
      [(CORapportBrowser *)self setStartCallback:0];
    }

    else
    {
      listener = [(CORapportBrowser *)self listener];
      localDevice = [listener localDevice];

      listeningPort = [localDevice listeningPort];
      if (listeningPort >= 1)
      {
        v10 = listeningPort;
        if (listeningPort != [(CORapportBrowser *)self listeningPort])
        {
          self->_listeningPort = v10;
        }
      }

      localDevice2 = [(COCompanionLinkClientProtocol *)self->_listener localDevice];

      if (localDevice2)
      {
        self->_activated = 1;
        if (v6)
        {
          v6[2](v6, 0);
          [(CORapportBrowser *)self setStartCallback:0];
        }

        v12 = [[CORapportCurrentDevice alloc] initWithClient:self->_listener browser:self];
        [(CORapportBrowser *)self _onqueue_informObserversOfDiscoveredRecord:v12];
      }

      else
      {
        v12 = COCoreLogForCategory(14);
        if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_244378000, &v12->super, OS_LOG_TYPE_DEFAULT, "%@ deferring activation, don't have local device yet", &v14, 0xCu);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleFoundDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy5 = self;
    v28 = 2112;
    v29 = deviceCopy;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p Rapport Browser found device %@", buf, 0x16u);
  }

  if (!self->_started)
  {
    v7 = COCoreLogForCategory(14);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 134217984;
    selfCopy5 = self;
    v18 = "%p Rapport Browser is not running";
LABEL_23:
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
    goto LABEL_29;
  }

  if (!self->_activated)
  {
    v7 = COCoreLogForCategory(14);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 134217984;
    selfCopy5 = self;
    v18 = "%p Rapport Browser not started completely";
    goto LABEL_23;
  }

  sourceTransport = [(CORapportBrowser *)self sourceTransport];

  if (!sourceTransport)
  {
    v7 = COCoreLogForCategory(14);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 134217984;
    selfCopy5 = self;
    v18 = "%p source transport not established yet";
    goto LABEL_23;
  }

  v7 = [(CORapportBrowser *)self _rapportDeviceWithCompanionLinkDevice:deviceCopy];
  homeKitIdentifier = [v7 HomeKitIdentifier];

  if (!homeKitIdentifier)
  {
    iDSIdentifier = [v7 IDSIdentifier];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    listener = [(CORapportBrowser *)self listener];
    activeDevices = [listener activeDevices];

    v12 = [activeDevices countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(activeDevices);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          idsDeviceIdentifier = [v16 idsDeviceIdentifier];
          if (idsDeviceIdentifier && ![iDSIdentifier compare:idsDeviceIdentifier options:1])
          {
            homeKitIdentifier2 = [v16 homeKitIdentifier];
            [v7 setHomeKitIdentifier:homeKitIdentifier2];
            v20 = COCoreLogForCategory(14);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              selfCopy5 = self;
              v28 = 2112;
              v29 = homeKitIdentifier2;
              v30 = 2048;
              v31 = v7;
              _os_log_impl(&dword_244378000, v20, OS_LOG_TYPE_DEFAULT, "%@ used fallback to get HomeKit identifier(%@) for device %p", buf, 0x20u);
            }

            goto LABEL_27;
          }
        }

        v13 = [activeDevices countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:
  }

  [(CORapportBrowser *)self _onqueue_informObserversOfDiscoveredRecord:v7];
LABEL_29:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleLostDevice:(id)device
{
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    selfCopy4 = self;
    v12 = 2112;
    v13 = deviceCopy;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p Rapport Browser lost device %@", &v10, 0x16u);
  }

  sourceTransport = [(CORapportBrowser *)self sourceTransport];
  if (!sourceTransport)
  {
    v7 = COCoreLogForCategory(14);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = 134217984;
    selfCopy4 = self;
    v8 = "%p Rapport Browser doesn't have source transport";
LABEL_13:
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 0xCu);
    goto LABEL_14;
  }

  if (!self->_started)
  {
    v7 = COCoreLogForCategory(14);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = 134217984;
    selfCopy4 = self;
    v8 = "%p Rapport Browser is not running";
    goto LABEL_13;
  }

  if (!self->_activated)
  {
    v7 = COCoreLogForCategory(14);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = 134217984;
    selfCopy4 = self;
    v8 = "%p Rapport Browser not started completely";
    goto LABEL_13;
  }

  v7 = [(CORapportBrowser *)self _rapportDeviceWithCompanionLinkDevice:deviceCopy];
  [(CORapportBrowser *)self _onqueue_informObserversOfLostRecord:v7];
LABEL_14:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_informObserversOfDiscoveredRecord:(id)record
{
  recordCopy = record;
  dispatch_assert_queue_V2(self->_workQueue);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__12;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__CORapportBrowser__onqueue_informObserversOfDiscoveredRecord___block_invoke;
  v9[3] = &unk_278E15638;
  v9[4] = self;
  v9[5] = &v10;
  [(CORapportBrowser *)self _withLock:v9];
  v5 = v11[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CORapportBrowser__onqueue_informObserversOfDiscoveredRecord___block_invoke_2;
  v7[3] = &unk_278E16310;
  v6 = recordCopy;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(&v10, 8);
}

void __63__CORapportBrowser__onqueue_informObserversOfDiscoveredRecord___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) observerSet];
  v2 = [v6 observers];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __63__CORapportBrowser__onqueue_informObserversOfDiscoveredRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 block];
  v3[2](v3, 1, *(a1 + 32));
}

- (void)_onqueue_informObserversOfLostRecord:(id)record
{
  recordCopy = record;
  dispatch_assert_queue_V2(self->_workQueue);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__12;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__CORapportBrowser__onqueue_informObserversOfLostRecord___block_invoke;
  v9[3] = &unk_278E15638;
  v9[4] = self;
  v9[5] = &v10;
  [(CORapportBrowser *)self _withLock:v9];
  v5 = v11[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__CORapportBrowser__onqueue_informObserversOfLostRecord___block_invoke_2;
  v7[3] = &unk_278E16310;
  v6 = recordCopy;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(&v10, 8);
}

void __57__CORapportBrowser__onqueue_informObserversOfLostRecord___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) observerSet];
  v2 = [v5 observers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __57__CORapportBrowser__onqueue_informObserversOfLostRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 block];
  (*(v3 + 2))(v3, 0, *(a1 + 32));
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

@end