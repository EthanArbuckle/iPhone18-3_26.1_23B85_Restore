@interface CPSApplicationStateMonitor
- (BOOL)_sceneIsForeground:(id)a3;
- (BOOL)canPostNavigationAlertNotification;
- (BOOL)isApplicationActive;
- (BOOL)templateApplicationSceneIsActive;
- (CPSApplicationStateMonitor)init;
- (UIWindowScene)windowSceneForGuidanceWidgetScene;
- (UIWindowScene)windowSceneForMapWidgetScene;
- (UIWindowScene)windowSceneForTemplateApplicationScene;
- (void)_observeScene:(id)a3;
- (void)_sceneActivated:(id)a3;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)addApplicationStateObserver:(id)a3;
- (void)dealloc;
- (void)removeApplicationStateObserver:(id)a3;
- (void)setWindowSceneForGuidanceWidgetScene:(id)a3;
- (void)setWindowSceneForMapWidgetScene:(id)a3;
- (void)setWindowSceneForTemplateApplicationScene:(id)a3;
@end

@implementation CPSApplicationStateMonitor

- (CPSApplicationStateMonitor)init
{
  v11 = a2;
  v12 = 0;
  v10.receiver = self;
  v10.super_class = CPSApplicationStateMonitor;
  v9 = [(CPSApplicationStateMonitor *)&v10 init];
  v12 = v9;
  objc_storeStrong(&v12, v9);
  if (v9)
  {
    v2 = dispatch_queue_create("com.apple.carplaysupport.observerqueue", 0);
    stateObserverQueue = v12->_stateObserverQueue;
    v12->_stateObserverQueue = v2;
    MEMORY[0x277D82BD8](stateObserverQueue);
    v4 = objc_alloc(MEMORY[0x277CF89C0]);
    v5 = [v4 initWithProtocol:&unk_285607C30 callbackQueue:v12->_stateObserverQueue];
    stateObservers = v12->_stateObservers;
    v12->_stateObservers = v5;
    MEMORY[0x277D82BD8](stateObservers);
  }

  v8 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (void)_observeScene:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:v7 selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x277D76E80] object:location[0]];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:v7 selector:sel__sceneActivated_ name:*MEMORY[0x277D76E48] object:location[0]];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:v7 selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:location[0]];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)setWindowSceneForGuidanceWidgetScene:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v8->_windowSceneForGuidanceWidgetScene);
  v5 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v5)
  {
    objc_storeWeak(&v8->_windowSceneForGuidanceWidgetScene, location[0]);
    v3 = v8;
    v4 = objc_loadWeakRetained(&v8->_windowSceneForGuidanceWidgetScene);
    [(CPSApplicationStateMonitor *)v3 _observeScene:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)setWindowSceneForMapWidgetScene:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v8->_windowSceneForMapWidgetScene);
  v5 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v5)
  {
    objc_storeWeak(&v8->_windowSceneForMapWidgetScene, location[0]);
    v3 = v8;
    v4 = objc_loadWeakRetained(&v8->_windowSceneForMapWidgetScene);
    [(CPSApplicationStateMonitor *)v3 _observeScene:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)setWindowSceneForTemplateApplicationScene:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v8->_windowSceneForTemplateApplicationScene);
  v5 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v5)
  {
    objc_storeWeak(&v8->_windowSceneForTemplateApplicationScene, location[0]);
    v3 = v8;
    v4 = objc_loadWeakRetained(&v8->_windowSceneForTemplateApplicationScene);
    [(CPSApplicationStateMonitor *)v3 _observeScene:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:v6];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = CPSApplicationStateMonitor;
  [(CPSApplicationStateMonitor *)&v4 dealloc];
}

- (void)addApplicationStateObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CARObserverHashTable *)v4->_stateObservers addObserver:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeApplicationStateObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CARObserverHashTable *)v4->_stateObservers removeObserver:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)isApplicationActive
{
  v4 = [(CPSApplicationStateMonitor *)self windowSceneForTemplateApplicationScene];
  v5 = [(CPSApplicationStateMonitor *)self _sceneIsForeground:?];
  v6 = [(CPSApplicationStateMonitor *)self windowSceneForGuidanceWidgetScene];
  v10 = [(CPSApplicationStateMonitor *)self _sceneIsForeground:?];
  v7 = [(CPSApplicationStateMonitor *)self windowSceneForMapWidgetScene];
  v8 = [(CPSApplicationStateMonitor *)self _sceneIsForeground:?];
  MEMORY[0x277D82BD8](v7);
  v9 = 1;
  if (!v5)
  {
    v9 = 1;
    if (!v10)
    {
      v9 = v8;
    }
  }

  return v9 & 1;
}

- (BOOL)_sceneIsForeground:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v4 = 1;
    if ([location[0] activationState])
    {
      v4 = [location[0] activationState] == 1;
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)canPostNavigationAlertNotification
{
  v4 = [(CPSApplicationStateMonitor *)self windowSceneForTemplateApplicationScene];
  v5 = ![(CPSApplicationStateMonitor *)self _sceneIsForeground:?];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (BOOL)templateApplicationSceneIsActive
{
  v4 = [(CPSApplicationStateMonitor *)self windowSceneForTemplateApplicationScene];
  v5 = 0;
  if (v4)
  {
    v6 = [(CPSApplicationStateMonitor *)self windowSceneForTemplateApplicationScene];
    v5 = 1;
    v3 = [(CPSApplicationStateMonitor *)self _sceneIsForeground:?];
  }

  else
  {
    v3 = 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v4);
  return v3;
}

- (void)_sceneWillEnterForeground:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSApplicationStateMonitor *)v4 _notifyObserversForeground:[(CPSApplicationStateMonitor *)v4 isApplicationActive]];
  objc_storeStrong(location, 0);
}

- (void)_sceneActivated:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSApplicationStateMonitor *)v4 _notifyObserversForeground:[(CPSApplicationStateMonitor *)v4 isApplicationActive]];
  objc_storeStrong(location, 0);
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSApplicationStateMonitor *)v4 _notifyObserversForeground:[(CPSApplicationStateMonitor *)v4 isApplicationActive]];
  objc_storeStrong(location, 0);
}

- (UIWindowScene)windowSceneForTemplateApplicationScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneForTemplateApplicationScene);

  return WeakRetained;
}

- (UIWindowScene)windowSceneForMapWidgetScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneForMapWidgetScene);

  return WeakRetained;
}

- (UIWindowScene)windowSceneForGuidanceWidgetScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneForGuidanceWidgetScene);

  return WeakRetained;
}

@end