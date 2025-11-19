@interface DRLayoutMonitor
- (BOOL)containsSceneIdentifier:(id)a3;
- (DRLayoutMonitor)initWithDisplayIdentity:(id)a3;
- (void)dealloc;
- (void)updateSceneIdentifiersWithLayout:(id)a3;
@end

@implementation DRLayoutMonitor

- (DRLayoutMonitor)initWithDisplayIdentity:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = DRLayoutMonitor;
  v6 = [(DRLayoutMonitor *)&v19 init];
  if (v6)
  {
    if ([v5 isMainDisplay])
    {
      v7 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    }

    else
    {
      v8 = SBSCreateLayoutServiceEndpointForExternalDisplay();
      v7 = [FBSDisplayLayoutMonitorConfiguration configurationWithEndpoint:v8];
    }

    objc_initWeak(&location, v6);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10000DC8C;
    v16 = &unk_100054EF0;
    objc_copyWeak(&v17, &location);
    [v7 setTransitionHandler:&v13];
    v6->_lock._os_unfair_lock_opaque = 0;
    v9 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v7, v13, v14, v15, v16];
    displayLayoutMonitor = v6->_displayLayoutMonitor;
    v6->_displayLayoutMonitor = v9;

    objc_storeStrong(&v6->_displayIdentity, a3);
    v11 = [(FBSDisplayLayoutMonitor *)v6->_displayLayoutMonitor currentLayout];
    [(DRLayoutMonitor *)v6 updateSceneIdentifiersWithLayout:v11];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (BOOL)containsSceneIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSSet *)self->_sceneIdentifiers containsObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)updateSceneIdentifiersWithLayout:(id)a3
{
  v4 = a3;
  v5 = [v4 elements];
  v6 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v5 count]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v4 elements];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) identifier];
        [(NSSet *)v6 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  os_unfair_lock_lock(&self->_lock);
  sceneIdentifiers = self->_sceneIdentifiers;
  self->_sceneIdentifiers = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_displayLayoutMonitor invalidate];
  v3.receiver = self;
  v3.super_class = DRLayoutMonitor;
  [(DRLayoutMonitor *)&v3 dealloc];
}

@end