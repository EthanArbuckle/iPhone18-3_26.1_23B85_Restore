@interface CPSApplicationStateMonitor
- (BOOL)_sceneIsForeground:(id)foreground;
- (BOOL)canPostNavigationAlertNotification;
- (BOOL)isApplicationActive;
- (BOOL)templateApplicationSceneIsActive;
- (CPSApplicationStateMonitor)init;
- (UIWindowScene)windowSceneForGuidanceWidgetScene;
- (UIWindowScene)windowSceneForMapWidgetScene;
- (UIWindowScene)windowSceneForTemplateApplicationScene;
- (void)_observeScene:(id)scene;
- (void)_sceneActivated:(id)activated;
- (void)_sceneDidEnterBackground:(id)background;
- (void)_sceneWillEnterForeground:(id)foreground;
- (void)addApplicationStateObserver:(id)observer;
- (void)dealloc;
- (void)removeApplicationStateObserver:(id)observer;
- (void)setWindowSceneForGuidanceWidgetScene:(id)scene;
- (void)setWindowSceneForMapWidgetScene:(id)scene;
- (void)setWindowSceneForTemplateApplicationScene:(id)scene;
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

- (void)_observeScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x277D76E80] object:location[0]];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:selfCopy selector:sel__sceneActivated_ name:*MEMORY[0x277D76E48] object:location[0]];
  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:selfCopy selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:location[0]];
  MEMORY[0x277D82BD8](defaultCenter3);
  objc_storeStrong(location, 0);
}

- (void)setWindowSceneForGuidanceWidgetScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_windowSceneForGuidanceWidgetScene);
  v5 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v5)
  {
    objc_storeWeak(&selfCopy->_windowSceneForGuidanceWidgetScene, location[0]);
    v3 = selfCopy;
    v4 = objc_loadWeakRetained(&selfCopy->_windowSceneForGuidanceWidgetScene);
    [(CPSApplicationStateMonitor *)v3 _observeScene:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)setWindowSceneForMapWidgetScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_windowSceneForMapWidgetScene);
  v5 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v5)
  {
    objc_storeWeak(&selfCopy->_windowSceneForMapWidgetScene, location[0]);
    v3 = selfCopy;
    v4 = objc_loadWeakRetained(&selfCopy->_windowSceneForMapWidgetScene);
    [(CPSApplicationStateMonitor *)v3 _observeScene:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)setWindowSceneForTemplateApplicationScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_windowSceneForTemplateApplicationScene);
  v5 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v5)
  {
    objc_storeWeak(&selfCopy->_windowSceneForTemplateApplicationScene, location[0]);
    v3 = selfCopy;
    v4 = objc_loadWeakRetained(&selfCopy->_windowSceneForTemplateApplicationScene);
    [(CPSApplicationStateMonitor *)v3 _observeScene:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
  *&v2 = MEMORY[0x277D82BD8](defaultCenter).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = CPSApplicationStateMonitor;
  [(CPSApplicationStateMonitor *)&v4 dealloc];
}

- (void)addApplicationStateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(CARObserverHashTable *)selfCopy->_stateObservers addObserver:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeApplicationStateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(CARObserverHashTable *)selfCopy->_stateObservers removeObserver:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)isApplicationActive
{
  windowSceneForTemplateApplicationScene = [(CPSApplicationStateMonitor *)self windowSceneForTemplateApplicationScene];
  v5 = [(CPSApplicationStateMonitor *)self _sceneIsForeground:?];
  windowSceneForGuidanceWidgetScene = [(CPSApplicationStateMonitor *)self windowSceneForGuidanceWidgetScene];
  v10 = [(CPSApplicationStateMonitor *)self _sceneIsForeground:?];
  windowSceneForMapWidgetScene = [(CPSApplicationStateMonitor *)self windowSceneForMapWidgetScene];
  v8 = [(CPSApplicationStateMonitor *)self _sceneIsForeground:?];
  MEMORY[0x277D82BD8](windowSceneForMapWidgetScene);
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

- (BOOL)_sceneIsForeground:(id)foreground
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, foreground);
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
  windowSceneForTemplateApplicationScene = [(CPSApplicationStateMonitor *)self windowSceneForTemplateApplicationScene];
  v5 = ![(CPSApplicationStateMonitor *)self _sceneIsForeground:?];
  MEMORY[0x277D82BD8](windowSceneForTemplateApplicationScene);
  return v5;
}

- (BOOL)templateApplicationSceneIsActive
{
  windowSceneForTemplateApplicationScene = [(CPSApplicationStateMonitor *)self windowSceneForTemplateApplicationScene];
  v5 = 0;
  if (windowSceneForTemplateApplicationScene)
  {
    windowSceneForTemplateApplicationScene2 = [(CPSApplicationStateMonitor *)self windowSceneForTemplateApplicationScene];
    v5 = 1;
    v3 = [(CPSApplicationStateMonitor *)self _sceneIsForeground:?];
  }

  else
  {
    v3 = 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](windowSceneForTemplateApplicationScene2);
  }

  MEMORY[0x277D82BD8](windowSceneForTemplateApplicationScene);
  return v3;
}

- (void)_sceneWillEnterForeground:(id)foreground
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, foreground);
  [(CPSApplicationStateMonitor *)selfCopy _notifyObserversForeground:[(CPSApplicationStateMonitor *)selfCopy isApplicationActive]];
  objc_storeStrong(location, 0);
}

- (void)_sceneActivated:(id)activated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activated);
  [(CPSApplicationStateMonitor *)selfCopy _notifyObserversForeground:[(CPSApplicationStateMonitor *)selfCopy isApplicationActive]];
  objc_storeStrong(location, 0);
}

- (void)_sceneDidEnterBackground:(id)background
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, background);
  [(CPSApplicationStateMonitor *)selfCopy _notifyObserversForeground:[(CPSApplicationStateMonitor *)selfCopy isApplicationActive]];
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