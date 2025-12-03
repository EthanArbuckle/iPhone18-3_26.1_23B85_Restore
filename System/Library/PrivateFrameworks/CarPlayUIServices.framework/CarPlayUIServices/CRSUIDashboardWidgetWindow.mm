@interface CRSUIDashboardWidgetWindow
- (BOOL)invalidated;
- (CRSUIDashboardWidgetWindow)initWithWindowScene:(id)scene;
- (UIColor)focusHighlightColor;
- (id)_clientFocusableItemForItem:(id)item;
- (id)_focusableItemForClientItem:(id)item;
- (void)_invalidateConnection;
- (void)_lock_invalidateConnection;
- (void)_lock_invalidateCurrentFocusableItems;
- (void)_windowDidCreateContext:(id)context;
- (void)dealloc;
- (void)hostFocusableItem:(id)item focused:(BOOL)focused;
- (void)hostFocusableItem:(id)item pressed:(BOOL)pressed;
- (void)hostSelectedFocusableItem:(id)item;
- (void)hostSetWidgetSizes:(id)sizes;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setContentReady;
- (void)setFocusableViews:(id)views;
- (void)setInvalidated:(BOOL)invalidated;
@end

@implementation CRSUIDashboardWidgetWindow

- (CRSUIDashboardWidgetWindow)initWithWindowScene:(id)scene
{
  v32[2] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v31.receiver = self;
  v31.super_class = CRSUIDashboardWidgetWindow;
  v5 = [(CRSUIWindow *)&v31 initWithWindowScene:sceneCopy];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [[CRSUIDashboardWidgetWindowProxy alloc] initWithDelegate:v5];
    exportedObject = v6->_exportedObject;
    v6->_exportedObject = v7;

    objc_opt_class();
    _FBSScene = [sceneCopy _FBSScene];
    settings = [_FBSScene settings];
    if (settings && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = settings;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v25 = objc_alloc_init(MEMORY[0x277CCAEA0]);
      endpoint = [v11 endpoint];
      [v25 _setEndpoint:endpoint];

      v13 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v25];
      v24 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2856090D0];
      v14 = MEMORY[0x277CBEB98];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      [v24 setClasses:v16 forSelector:sel_clientSetFocusableItems_ argumentIndex:0 ofReply:0];

      [v13 setRemoteObjectInterface:v24];
      v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2855FD340];
      v18 = MEMORY[0x277CBEB98];
      v32[0] = objc_opt_class();
      v32[1] = objc_opt_class();
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
      v20 = [v18 setWithArray:v19];
      [v17 setClasses:v20 forSelector:sel_hostSetWidgetSizes_ argumentIndex:0 ofReply:0];

      [v13 setExportedInterface:v17];
      [v13 setExportedObject:v6->_exportedObject];
      objc_initWeak(&location, v6);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __50__CRSUIDashboardWidgetWindow_initWithWindowScene___block_invoke;
      v28[3] = &unk_278DA11B8;
      objc_copyWeak(&v29, &location);
      [v13 setInterruptionHandler:v28];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __50__CRSUIDashboardWidgetWindow_initWithWindowScene___block_invoke_2;
      v26[3] = &unk_278DA11B8;
      objc_copyWeak(&v27, &location);
      [v13 setInvalidationHandler:v26];
      [v13 resume];
      [(CRSUIDashboardWidgetWindow *)v6 setDashboardWindowServiceConnection:v13];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel__windowDidCreateContext_ name:@"_UIWindowDidCreateContextNotification" object:v6];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

void __50__CRSUIDashboardWidgetWindow_initWithWindowScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

void __50__CRSUIDashboardWidgetWindow_initWithWindowScene___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

- (BOOL)invalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

- (void)setInvalidated:(BOOL)invalidated
{
  os_unfair_lock_lock(&self->_lock);
  self->_invalidated = invalidated;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  invalidated = [(CRSUIDashboardWidgetWindow *)self invalidated];
  v4 = CRSUILogForCategory(3uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (invalidated)
  {
    if (v5)
    {
      v8 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_243218000, v4, OS_LOG_TYPE_DEFAULT, "Window: %{public}@ already invalidated", &v8, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v8 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_243218000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating window: %{public}@", &v8, 0xCu);
    }

    [(CRSUIDashboardWidgetWindow *)self setInvalidated:1];
    os_unfair_lock_lock(&self->_lock);
    [(CRSUIDashboardWidgetWindow *)self _lock_invalidateCurrentFocusableItems];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    [(CRSUIDashboardWidgetWindow *)self _lock_invalidateConnection];
    os_unfair_lock_unlock(&self->_lock);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  if (![(CRSUIDashboardWidgetWindow *)self invalidated])
  {
    v3 = CRSUILogForCategory(3uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Window: %{public}@ not invalidated in dealloc", buf, 0xCu);
    }

    [(CRSUIDashboardWidgetWindow *)self invalidate];
  }

  v5.receiver = self;
  v5.super_class = CRSUIDashboardWidgetWindow;
  [(CRSUIDashboardWidgetWindow *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setFocusableViews:(id)views
{
  viewsCopy = views;
  if ([(CRSUIDashboardWidgetWindow *)self invalidated])
  {
    v5 = CRSUILogForCategory(3uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CRSUIDashboardWidgetWindow setFocusableViews:v5];
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    [(CRSUIDashboardWidgetWindow *)self _lock_invalidateCurrentFocusableItems];
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __48__CRSUIDashboardWidgetWindow_setFocusableViews___block_invoke;
    v13 = &unk_278DA11E0;
    selfCopy = self;
    v15 = v6;
    v5 = v6;
    [viewsCopy enumerateObjectsUsingBlock:&v10];
    os_unfair_lock_lock(&self->_lock);
    [(CRSUIDashboardWidgetWindow *)self setFocusableItems:v5, v10, v11, v12, v13, selfCopy];
    dashboardWindowServiceConnection = [(CRSUIDashboardWidgetWindow *)self dashboardWindowServiceConnection];
    remoteObjectProxy = [dashboardWindowServiceConnection remoteObjectProxy];
    focusableItems = [(CRSUIDashboardWidgetWindow *)self focusableItems];
    [remoteObjectProxy clientSetFocusableItems:focusableItems];

    os_unfair_lock_unlock(&self->_lock);
    [(CRSUIDashboardWidgetWindow *)self setContentReady];
  }
}

void __48__CRSUIDashboardWidgetWindow_setFocusableViews___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = [[CRSDashboardFocusableItem alloc] initWithFocusableView:v3];
  [v3 addObserver:*(a1 + 32) forKeyPath:@"frame" options:1 context:0];
  v4 = *(a1 + 32);
  [v3 bounds];
  [v4 convertRect:v3 fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CRSDashboardFocusableItem *)v13 setFrameInWindow:v6, v8, v10, v12];
  [*(a1 + 40) addObject:v13];
}

- (UIColor)focusHighlightColor
{
  if ([(CRSUIDashboardWidgetWindow *)self useSystemPrimaryFocusColor])
  {
    [MEMORY[0x277D75348] _carSystemPrimaryColor];
  }

  else
  {
    [MEMORY[0x277D75348] _carSystemFocusColor];
  }
  v2 = ;

  return v2;
}

- (void)setContentReady
{
  v10 = *MEMORY[0x277D85DE8];
  invalidated = [(CRSUIDashboardWidgetWindow *)self invalidated];
  v4 = CRSUILogForCategory(3uLL);
  dashboardWindowServiceConnection = v4;
  if (invalidated)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CRSUIDashboardWidgetWindow *)dashboardWindowServiceConnection setContentReady];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_243218000, dashboardWindowServiceConnection, OS_LOG_TYPE_DEFAULT, "Window: %{public}@ has content ready", &v8, 0xCu);
    }

    dashboardWindowServiceConnection = [(CRSUIDashboardWidgetWindow *)self dashboardWindowServiceConnection];
    remoteObjectProxy = [dashboardWindowServiceConnection remoteObjectProxy];
    [remoteObjectProxy clientSetContentReady];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_windowDidCreateContext:(id)context
{
  object = [context object];
  if (object == self)
  {
    v7 = object;
    dashboardWindowServiceConnection = [(CRSUIDashboardWidgetWindow *)self dashboardWindowServiceConnection];
    remoteObjectProxy = [dashboardWindowServiceConnection remoteObjectProxy];
    [remoteObjectProxy updateContextId:{-[CRSUIDashboardWidgetWindow _contextId](self, "_contextId")}];

    object = v7;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"frame"])
  {
    objc_opt_class();
    v13 = objectCopy;
    if (v13 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(CRSUIDashboardWidgetWindow *)self _focusableItemForClientItem:v14];
    [v14 bounds];
    [(CRSUIDashboardWidgetWindow *)self convertRect:v14 fromView:?];
    [v15 setFrameInWindow:?];
    os_unfair_lock_lock(&self->_lock);
    dashboardWindowServiceConnection = [(CRSUIDashboardWidgetWindow *)self dashboardWindowServiceConnection];
    remoteObjectProxy = [dashboardWindowServiceConnection remoteObjectProxy];
    focusableItems = [(CRSUIDashboardWidgetWindow *)self focusableItems];
    [remoteObjectProxy clientSetFocusableItems:focusableItems];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v19.receiver = self;
    v19.super_class = CRSUIDashboardWidgetWindow;
    [(CRSUIDashboardWidgetWindow *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)hostFocusableItem:(id)item focused:(BOOL)focused
{
  itemCopy = item;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CRSUIDashboardWidgetWindow_hostFocusableItem_focused___block_invoke;
  block[3] = &unk_278DA1208;
  block[4] = self;
  v9 = itemCopy;
  focusedCopy = focused;
  v7 = itemCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__CRSUIDashboardWidgetWindow_hostFocusableItem_focused___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientFocusableItemForItem:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 focusableItemFocused:*(a1 + 48)];
    v2 = v3;
  }
}

- (void)hostFocusableItem:(id)item pressed:(BOOL)pressed
{
  itemCopy = item;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CRSUIDashboardWidgetWindow_hostFocusableItem_pressed___block_invoke;
  block[3] = &unk_278DA1208;
  block[4] = self;
  v9 = itemCopy;
  pressedCopy = pressed;
  v7 = itemCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__CRSUIDashboardWidgetWindow_hostFocusableItem_pressed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientFocusableItemForItem:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 focusableItemPressed:*(a1 + 48)];
    v2 = v3;
  }
}

- (void)hostSelectedFocusableItem:(id)item
{
  itemCopy = item;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__CRSUIDashboardWidgetWindow_hostSelectedFocusableItem___block_invoke;
  v6[3] = &unk_278DA0D18;
  v6[4] = self;
  v7 = itemCopy;
  v5 = itemCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__CRSUIDashboardWidgetWindow_hostSelectedFocusableItem___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _clientFocusableItemForItem:*(a1 + 40)];
  if (v1)
  {
    v2 = v1;
    [v1 focusableItemSelected];
    v1 = v2;
  }
}

- (void)hostSetWidgetSizes:(id)sizes
{
  sizesCopy = sizes;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CRSUIDashboardWidgetWindow_hostSetWidgetSizes___block_invoke;
  v6[3] = &unk_278DA0D18;
  v6[4] = self;
  v7 = sizesCopy;
  v5 = sizesCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __64__CRSUIDashboardWidgetWindow_hostSetUseSystemPrimaryFocusColor___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:CRSUIDashboardWidgetWindowFocusHighlightColorDidChangeNotification object:*(a1 + 32)];
}

- (id)_focusableItemForClientItem:(id)item
{
  itemCopy = item;
  os_unfair_lock_lock(&self->_lock);
  focusableItems = [(CRSUIDashboardWidgetWindow *)self focusableItems];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__CRSUIDashboardWidgetWindow__focusableItemForClientItem___block_invoke;
  v11[3] = &unk_278DA1230;
  v12 = itemCopy;
  v6 = itemCopy;
  v7 = [focusableItems indexOfObjectPassingTest:v11];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    focusableItems2 = [(CRSUIDashboardWidgetWindow *)self focusableItems];
    v8 = [focusableItems2 objectAtIndex:v7];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

BOOL __58__CRSUIDashboardWidgetWindow__focusableItemForClientItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 focusProvidingItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)_clientFocusableItemForItem:(id)item
{
  itemCopy = item;
  os_unfair_lock_lock(&self->_lock);
  focusableItems = [(CRSUIDashboardWidgetWindow *)self focusableItems];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__CRSUIDashboardWidgetWindow__clientFocusableItemForItem___block_invoke;
  v12[3] = &unk_278DA1230;
  v13 = itemCopy;
  v6 = itemCopy;
  v7 = [focusableItems indexOfObjectPassingTest:v12];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    focusProvidingItem = 0;
  }

  else
  {
    focusableItems2 = [(CRSUIDashboardWidgetWindow *)self focusableItems];
    v10 = [focusableItems2 objectAtIndex:v7];
    focusProvidingItem = [v10 focusProvidingItem];
  }

  os_unfair_lock_unlock(&self->_lock);

  return focusProvidingItem;
}

uint64_t __58__CRSUIDashboardWidgetWindow__clientFocusableItemForItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (void)_lock_invalidateCurrentFocusableItems
{
  v3 = CRSUILogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating focusable items", buf, 2u);
  }

  focusableItems = [(CRSUIDashboardWidgetWindow *)self focusableItems];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__CRSUIDashboardWidgetWindow__lock_invalidateCurrentFocusableItems__block_invoke;
  v5[3] = &unk_278DA1258;
  v5[4] = self;
  [focusableItems enumerateObjectsUsingBlock:v5];

  [(CRSUIDashboardWidgetWindow *)self setFocusableItems:0];
}

void __67__CRSUIDashboardWidgetWindow__lock_invalidateCurrentFocusableItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 focusProvidingItem];
  [v3 removeObserver:*(a1 + 32) forKeyPath:@"frame"];
}

- (void)_invalidateConnection
{
  os_unfair_lock_lock(&self->_lock);
  [(CRSUIDashboardWidgetWindow *)self _lock_invalidateConnection];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_invalidateConnection
{
  v3 = CRSUILogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection", v6, 2u);
  }

  dashboardWindowServiceConnection = [(CRSUIDashboardWidgetWindow *)self dashboardWindowServiceConnection];
  [dashboardWindowServiceConnection setExportedObject:0];

  dashboardWindowServiceConnection2 = [(CRSUIDashboardWidgetWindow *)self dashboardWindowServiceConnection];
  [dashboardWindowServiceConnection2 invalidate];

  [(CRSUIDashboardWidgetWindow *)self setDashboardWindowServiceConnection:0];
}

@end