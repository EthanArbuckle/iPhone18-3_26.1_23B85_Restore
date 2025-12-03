@interface CRSUIStatusBarStyleService
- (BOOL)isSiriPresentation;
- (BOOL)isStandByScreen;
- (CRSUIStatusBarStyleService)init;
- (int64_t)colorVariant;
- (int64_t)interfaceStyle;
- (void)_connectionQueue_addConnection:(id)connection;
- (void)_connectionQueue_removeConnection:(id)connection;
- (void)addObserver:(id)observer;
- (void)clientAcquireForSiriPresentationWithFenceHandle:(id)handle animationSettings:(id)settings;
- (void)clientAcquireForStandByScreenWithFenceHandle:(id)handle animationSettings:(id)settings;
- (void)clientAcquireWithInterfaceStyle:(id)style colorVariant:(id)variant fenceHandle:(id)handle animationSettings:(id)settings;
- (void)clientReliquishWithFenceHandle:(id)handle animationSettings:(id)settings;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)removeObserver:(id)observer;
@end

@implementation CRSUIStatusBarStyleService

- (int64_t)interfaceStyle
{
  os_unfair_lock_lock(&self->_lock);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  lock_assertions = self->_lock_assertions;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__CRSUIStatusBarStyleService_interfaceStyle__block_invoke;
  v6[3] = &unk_278DA10A0;
  v6[4] = &v7;
  [(NSMutableArray *)lock_assertions enumerateObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_lock);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __44__CRSUIStatusBarStyleService_interfaceStyle__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 interfaceStyle])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 interfaceStyle];
    *a4 = 1;
  }
}

- (int64_t)colorVariant
{
  os_unfair_lock_lock(&self->_lock);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  lock_assertions = self->_lock_assertions;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CRSUIStatusBarStyleService_colorVariant__block_invoke;
  v6[3] = &unk_278DA10A0;
  v6[4] = &v7;
  [(NSMutableArray *)lock_assertions enumerateObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_lock);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __42__CRSUIStatusBarStyleService_colorVariant__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 colorVariant] != -1)
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 colorVariant];
    *a4 = 1;
  }
}

- (BOOL)isSiriPresentation
{
  os_unfair_lock_lock(&self->_lock);
  lastObject = [(NSMutableArray *)self->_lock_assertions lastObject];
  isSiriPresentation = [lastObject isSiriPresentation];
  os_unfair_lock_unlock(&self->_lock);

  return isSiriPresentation;
}

- (BOOL)isStandByScreen
{
  os_unfair_lock_lock(&self->_lock);
  lastObject = [(NSMutableArray *)self->_lock_assertions lastObject];
  isStandByScreen = [lastObject isStandByScreen];
  os_unfair_lock_unlock(&self->_lock);

  return isStandByScreen;
}

- (CRSUIStatusBarStyleService)init
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = CRSUIStatusBarStyleService;
  v2 = [(CRSUIStatusBarStyleService *)&v22 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285609010];
    observers = v2->_observers;
    v2->_observers = v3;

    serial = [MEMORY[0x277CF0C18] serial];
    v6 = BSDispatchQueueCreate();
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v6;

    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    connections = v2->_connections;
    v2->_connections = v8;

    v2->_lock._os_unfair_lock_opaque = 0;
    v10 = objc_opt_new();
    lock_assertions = v2->_lock_assertions;
    v2->_lock_assertions = v10;

    v12 = MEMORY[0x277CF32A0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __34__CRSUIStatusBarStyleService_init__block_invoke;
    v20[3] = &unk_278DA0B08;
    v13 = v2;
    v21 = v13;
    v14 = [v12 listenerWithConfigurator:v20];
    v15 = v13[4];
    v13[4] = v14;

    v16 = CRSUILogForCategory(1uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v13[4];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_243218000, v16, OS_LOG_TYPE_DEFAULT, "Activating listener! %@", buf, 0xCu);
    }

    [v13[4] activate];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

void __34__CRSUIStatusBarStyleService_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CarPlay.StatusBar"];
  v3 = +[CRSUIStatusBarStyleSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSUIStatusBarStyleService *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRSUIStatusBarStyleService *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)invalidate
{
  listener = [(CRSUIStatusBarStyleService *)self listener];
  [listener invalidate];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = CRSUILogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = connectionCopy;
    _os_log_impl(&dword_243218000, v7, OS_LOG_TYPE_INFO, "Received connection! %@", buf, 0xCu);
  }

  remoteProcess = [connectionCopy remoteProcess];
  v9 = [remoteProcess hasEntitlement:@"com.apple.private.CarPlayUIServices.status-bar-style"];

  if (v9)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__CRSUIStatusBarStyleService_listener_didReceiveConnection_withContext___block_invoke;
    v17[3] = &unk_278DA10F0;
    v17[4] = self;
    [connectionCopy configureConnection:v17];
    v10 = CRSUILogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = connectionCopy;
      _os_log_impl(&dword_243218000, v10, OS_LOG_TYPE_DEFAULT, "Activating connection... %@", buf, 0xCu);
    }

    connectionQueue = [(CRSUIStatusBarStyleService *)self connectionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__CRSUIStatusBarStyleService_listener_didReceiveConnection_withContext___block_invoke_118;
    block[3] = &unk_278DA0D18;
    block[4] = self;
    v12 = connectionCopy;
    v16 = v12;
    dispatch_async(connectionQueue, block);

    [v12 activate];
  }

  else
  {
    v13 = CRSUILogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CRSUIStatusBarStyleService listener:connectionCopy didReceiveConnection:v13 withContext:?];
    }

    [connectionCopy invalidate];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __72__CRSUIStatusBarStyleService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSUIStatusBarStyleSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSUIStatusBarStyleSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CRSUIStatusBarStyleService_listener_didReceiveConnection_withContext___block_invoke_2;
  v7[3] = &unk_278DA10C8;
  v7[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v7];
  v6 = [*(a1 + 32) connectionQueue];
  [v3 setTargetQueue:v6];
}

void __72__CRSUIStatusBarStyleService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CRSUILogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(v3, v4);
  }

  [*(a1 + 32) _connectionQueue_removeConnection:v3];
}

- (void)clientAcquireWithInterfaceStyle:(id)style colorVariant:(id)variant fenceHandle:(id)handle animationSettings:(id)settings
{
  v39 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  variantCopy = variant;
  handleCopy = handle;
  settingsCopy = settings;
  connectionQueue = [(CRSUIStatusBarStyleService *)self connectionQueue];
  BSDispatchQueueAssert();

  os_unfair_lock_lock(&self->_lock);
  v15 = CRSUILogForCategory(1uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = styleCopy;
    v37 = 2112;
    v38 = variantCopy;
    _os_log_impl(&dword_243218000, v15, OS_LOG_TYPE_DEFAULT, "Received override request! Style: %@, color variant: %@", buf, 0x16u);
  }

  if (styleCopy)
  {
    integerValue = [styleCopy integerValue];
    if (variantCopy)
    {
LABEL_5:
      integerValue2 = [variantCopy integerValue];
      goto LABEL_8;
    }
  }

  else
  {
    integerValue = 0;
    if (variantCopy)
    {
      goto LABEL_5;
    }
  }

  integerValue2 = -1;
LABEL_8:
  currentContext = [MEMORY[0x277CF3280] currentContext];
  instance = [currentContext instance];
  v20 = instance;
  if (instance)
  {
    v28 = handleCopy;
    lock_assertions = self->_lock_assertions;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __105__CRSUIStatusBarStyleService_clientAcquireWithInterfaceStyle_colorVariant_fenceHandle_animationSettings___block_invoke;
    v33[3] = &unk_278DA1118;
    v22 = instance;
    v34 = v22;
    v23 = [(NSMutableArray *)lock_assertions indexOfObjectPassingTest:v33];
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_lock_assertions removeObjectAtIndex:v23];
    }

    v24 = objc_alloc_init(CRSUIStatusBarStyleAssertionData);
    [(CRSUIStatusBarStyleAssertionData *)v24 setIdentifier:v22];
    [(CRSUIStatusBarStyleAssertionData *)v24 setInterfaceStyle:integerValue];
    [(CRSUIStatusBarStyleAssertionData *)v24 setColorVariant:integerValue2];
    [(NSMutableArray *)self->_lock_assertions addObject:v24];

    handleCopy = v28;
  }

  os_unfair_lock_unlock(&self->_lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__CRSUIStatusBarStyleService_clientAcquireWithInterfaceStyle_colorVariant_fenceHandle_animationSettings___block_invoke_2;
  block[3] = &unk_278DA1140;
  v30 = handleCopy;
  selfCopy = self;
  v32 = settingsCopy;
  v25 = settingsCopy;
  v26 = handleCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __105__CRSUIStatusBarStyleService_clientAcquireWithInterfaceStyle_colorVariant_fenceHandle_animationSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __105__CRSUIStatusBarStyleService_clientAcquireWithInterfaceStyle_colorVariant_fenceHandle_animationSettings___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x277D75DA8] _synchronizeDrawingWithFence:*(a1 + 32)];
  v2 = [*(a1 + 40) observers];
  [v2 statusBarStyleServiceUpdatedOverride:*(a1 + 40) animationSettings:*(a1 + 48)];
}

- (void)clientAcquireForSiriPresentationWithFenceHandle:(id)handle animationSettings:(id)settings
{
  handleCopy = handle;
  settingsCopy = settings;
  connectionQueue = [(CRSUIStatusBarStyleService *)self connectionQueue];
  BSDispatchQueueAssert();

  os_unfair_lock_lock(&self->_lock);
  v9 = CRSUILogForCategory(1uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243218000, v9, OS_LOG_TYPE_DEFAULT, "Received Siri presentation override request!", buf, 2u);
  }

  currentContext = [MEMORY[0x277CF3280] currentContext];
  instance = [currentContext instance];
  v12 = instance;
  if (instance)
  {
    lock_assertions = self->_lock_assertions;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __96__CRSUIStatusBarStyleService_clientAcquireForSiriPresentationWithFenceHandle_animationSettings___block_invoke;
    v23[3] = &unk_278DA1118;
    v14 = instance;
    v24 = v14;
    v15 = [(NSMutableArray *)lock_assertions indexOfObjectPassingTest:v23];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_lock_assertions removeObjectAtIndex:v15];
    }

    v16 = objc_alloc_init(CRSUIStatusBarStyleAssertionData);
    [(CRSUIStatusBarStyleAssertionData *)v16 setIdentifier:v14];
    [(CRSUIStatusBarStyleAssertionData *)v16 setInterfaceStyle:0];
    [(CRSUIStatusBarStyleAssertionData *)v16 setColorVariant:-1];
    [(CRSUIStatusBarStyleAssertionData *)v16 setSiriPresentation:1];
    [(NSMutableArray *)self->_lock_assertions addObject:v16];
  }

  os_unfair_lock_unlock(&self->_lock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__CRSUIStatusBarStyleService_clientAcquireForSiriPresentationWithFenceHandle_animationSettings___block_invoke_2;
  v19[3] = &unk_278DA1140;
  v20 = handleCopy;
  selfCopy = self;
  v22 = settingsCopy;
  v17 = settingsCopy;
  v18 = handleCopy;
  dispatch_async(MEMORY[0x277D85CD0], v19);
}

uint64_t __96__CRSUIStatusBarStyleService_clientAcquireForSiriPresentationWithFenceHandle_animationSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __96__CRSUIStatusBarStyleService_clientAcquireForSiriPresentationWithFenceHandle_animationSettings___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x277D75DA8] _synchronizeDrawingWithFence:*(a1 + 32)];
  v2 = [*(a1 + 40) observers];
  [v2 statusBarStyleServiceUpdatedOverride:*(a1 + 40) animationSettings:*(a1 + 48)];
}

- (void)clientAcquireForStandByScreenWithFenceHandle:(id)handle animationSettings:(id)settings
{
  handleCopy = handle;
  settingsCopy = settings;
  connectionQueue = [(CRSUIStatusBarStyleService *)self connectionQueue];
  BSDispatchQueueAssert();

  os_unfair_lock_lock(&self->_lock);
  v9 = CRSUILogForCategory(1uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243218000, v9, OS_LOG_TYPE_DEFAULT, "Received StandBy override request!", buf, 2u);
  }

  currentContext = [MEMORY[0x277CF3280] currentContext];
  instance = [currentContext instance];
  v12 = instance;
  if (instance)
  {
    lock_assertions = self->_lock_assertions;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __93__CRSUIStatusBarStyleService_clientAcquireForStandByScreenWithFenceHandle_animationSettings___block_invoke;
    v23[3] = &unk_278DA1118;
    v14 = instance;
    v24 = v14;
    v15 = [(NSMutableArray *)lock_assertions indexOfObjectPassingTest:v23];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_lock_assertions removeObjectAtIndex:v15];
    }

    v16 = objc_alloc_init(CRSUIStatusBarStyleAssertionData);
    [(CRSUIStatusBarStyleAssertionData *)v16 setIdentifier:v14];
    [(CRSUIStatusBarStyleAssertionData *)v16 setInterfaceStyle:2];
    [(CRSUIStatusBarStyleAssertionData *)v16 setColorVariant:1];
    [(CRSUIStatusBarStyleAssertionData *)v16 setSiriPresentation:0];
    [(CRSUIStatusBarStyleAssertionData *)v16 setStandByScreen:1];
    [(NSMutableArray *)self->_lock_assertions addObject:v16];
  }

  os_unfair_lock_unlock(&self->_lock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__CRSUIStatusBarStyleService_clientAcquireForStandByScreenWithFenceHandle_animationSettings___block_invoke_2;
  v19[3] = &unk_278DA1140;
  v20 = handleCopy;
  selfCopy = self;
  v22 = settingsCopy;
  v17 = settingsCopy;
  v18 = handleCopy;
  dispatch_async(MEMORY[0x277D85CD0], v19);
}

uint64_t __93__CRSUIStatusBarStyleService_clientAcquireForStandByScreenWithFenceHandle_animationSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __93__CRSUIStatusBarStyleService_clientAcquireForStandByScreenWithFenceHandle_animationSettings___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x277D75DA8] _synchronizeDrawingWithFence:*(a1 + 32)];
  v2 = [*(a1 + 40) observers];
  [v2 statusBarStyleServiceUpdatedOverride:*(a1 + 40) animationSettings:*(a1 + 48)];
}

- (void)clientReliquishWithFenceHandle:(id)handle animationSettings:(id)settings
{
  handleCopy = handle;
  settingsCopy = settings;
  connectionQueue = [(CRSUIStatusBarStyleService *)self connectionQueue];
  BSDispatchQueueAssert();

  os_unfair_lock_lock(&self->_lock);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  instance = [currentContext instance];
  v11 = instance;
  if (instance)
  {
    lock_assertions = self->_lock_assertions;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__CRSUIStatusBarStyleService_clientReliquishWithFenceHandle_animationSettings___block_invoke;
    v20[3] = &unk_278DA1118;
    v21 = instance;
    v13 = [(NSMutableArray *)lock_assertions indexOfObjectPassingTest:v20];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_lock_assertions removeObjectAtIndex:v13];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__CRSUIStatusBarStyleService_clientReliquishWithFenceHandle_animationSettings___block_invoke_2;
  v16[3] = &unk_278DA1140;
  v17 = handleCopy;
  selfCopy = self;
  v19 = settingsCopy;
  v14 = settingsCopy;
  v15 = handleCopy;
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

uint64_t __79__CRSUIStatusBarStyleService_clientReliquishWithFenceHandle_animationSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __79__CRSUIStatusBarStyleService_clientReliquishWithFenceHandle_animationSettings___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x277D75DA8] _synchronizeDrawingWithFence:*(a1 + 32)];
  v2 = [*(a1 + 40) observers];
  [v2 statusBarStyleServiceUpdatedOverride:*(a1 + 40) animationSettings:*(a1 + 48)];
}

- (void)_connectionQueue_addConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(CRSUIStatusBarStyleService *)self connections];
  [connections addObject:connectionCopy];
}

- (void)_connectionQueue_removeConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(CRSUIStatusBarStyleService *)self connections];
  [connections removeObject:connectionCopy];

  os_unfair_lock_lock(&self->_lock);
  instance = [connectionCopy instance];

  if (instance)
  {
    lock_assertions = self->_lock_assertions;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__CRSUIStatusBarStyleService__connectionQueue_removeConnection___block_invoke;
    v10[3] = &unk_278DA1118;
    v11 = instance;
    v8 = [(NSMutableArray *)lock_assertions indexOfObjectPassingTest:v10];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_lock_assertions removeObjectAtIndex:v8];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__CRSUIStatusBarStyleService__connectionQueue_removeConnection___block_invoke_2;
  v9[3] = &unk_278DA0FC8;
  v9[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __64__CRSUIStatusBarStyleService__connectionQueue_removeConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __64__CRSUIStatusBarStyleService__connectionQueue_removeConnection___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 statusBarStyleServiceUpdatedOverride:*(a1 + 32) animationSettings:0];
}

- (void)listener:(void *)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 remoteProcess];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_243218000, a2, OS_LOG_TYPE_ERROR, "Process does not have the required entitlement: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end