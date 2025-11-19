@interface DBMutableWorkspaceStateChangeRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)activateApplication:(id)a3;
- (void)activateApplication:(id)a3 withSettings:(id)a4;
- (void)activateHomeScreen;
- (void)activateOEMPunchthrough:(id)a3;
- (void)activateSiri;
- (void)activateSiriFloating;
- (void)activateStackedApplication:(id)a3;
- (void)activateStackedApplication:(id)a3 withSettings:(id)a4;
- (void)addChangeItem:(id)a3;
- (void)deactivateApplication:(id)a3;
- (void)deactivateOEMPunchthrough:(id)a3;
- (void)deactivateSiri;
- (void)destroyApplication:(id)a3;
- (void)removeChangeItem:(id)a3;
@end

@implementation DBMutableWorkspaceStateChangeRequest

- (void)activateSiri
{
  v3 = objc_alloc_init(DBDashboardWorkspaceStateSiriChangeItem);
  [(DBDashboardWorkspaceStateChangeItem *)v3 setChangeType:0];
  [(DBDashboardWorkspaceStateChangeItem *)v3 setPresentationPreference:2];
  [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v3];
}

- (void)addChangeItem:(id)a3
{
  v4 = a3;
  changeItems = self->super._changeItems;
  v8 = v4;
  if (!changeItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->super._changeItems;
    self->super._changeItems = v6;

    v4 = v8;
    changeItems = self->super._changeItems;
  }

  [(NSMutableArray *)changeItems addObject:v4];
}

- (void)removeChangeItem:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->super._changeItems removeObject:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DBWorkspaceStateChangeRequest alloc];

  return [(DBWorkspaceStateChangeRequest *)v4 _initWithRequest:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DBMutableWorkspaceStateChangeRequest alloc];

  return [(DBWorkspaceStateChangeRequest *)v4 _initWithRequest:self];
}

- (void)deactivateApplication:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:v4];
    [(DBDashboardWorkspaceStateChangeItem *)v5 setChangeType:1];
    [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v5];
  }

  else
  {
    v6 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DBMutableWorkspaceStateChangeRequest(Dashboard) deactivateApplication:];
    }
  }
}

- (void)destroyApplication:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:v4];
    [(DBDashboardWorkspaceStateChangeItem *)v5 setChangeType:2];
    [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v5];
  }

  else
  {
    v6 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DBMutableWorkspaceStateChangeRequest(Dashboard) destroyApplication:];
    }
  }
}

- (void)activateApplication:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:v4];
    [(DBDashboardWorkspaceStateChangeItem *)v5 setChangeType:0];
    [(DBDashboardWorkspaceStateChangeItem *)v5 setPresentationPreference:1];
    [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v5];
  }

  else
  {
    v6 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DBMutableWorkspaceStateChangeRequest(Dashboard) activateApplication:];
    }
  }
}

- (void)activateApplication:(id)a3 withSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:v6];
    [(DBDashboardWorkspaceStateChangeItem *)v8 setChangeType:0];
    [(DBDashboardWorkspaceStateChangeItem *)v8 setPresentationPreference:1];
    [(DBDashboardWorkspaceStateApplicationSceneChangeItem *)v8 setActivationSettings:v7];
    [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v8];
  }

  else
  {
    v9 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DBMutableWorkspaceStateChangeRequest(Dashboard) activateApplication:];
    }
  }
}

- (void)activateStackedApplication:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:v4];
    [(DBDashboardWorkspaceStateChangeItem *)v5 setChangeType:0];
    [(DBDashboardWorkspaceStateChangeItem *)v5 setPresentationPreference:2];
    [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v5];
  }

  else
  {
    v6 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DBMutableWorkspaceStateChangeRequest(Dashboard) activateStackedApplication:];
    }
  }
}

- (void)activateStackedApplication:(id)a3 withSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:v6];
    [(DBDashboardWorkspaceStateChangeItem *)v8 setChangeType:0];
    [(DBDashboardWorkspaceStateChangeItem *)v8 setPresentationPreference:2];
    [(DBDashboardWorkspaceStateApplicationSceneChangeItem *)v8 setActivationSettings:v7];
    [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v8];
  }

  else
  {
    v9 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DBMutableWorkspaceStateChangeRequest(Dashboard) activateStackedApplication:];
    }
  }
}

- (void)activateSiriFloating
{
  v3 = objc_alloc_init(DBDashboardWorkspaceStateSiriChangeItem);
  [(DBDashboardWorkspaceStateChangeItem *)v3 setChangeType:0];
  [(DBDashboardWorkspaceStateChangeItem *)v3 setPresentationPreference:2];
  [(DBDashboardWorkspaceStateSiriChangeItem *)v3 setFloating:1];
  [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v3];
}

- (void)deactivateSiri
{
  v3 = objc_alloc_init(DBDashboardWorkspaceStateSiriChangeItem);
  [(DBDashboardWorkspaceStateChangeItem *)v3 setChangeType:1];
  [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v3];
}

- (void)activateHomeScreen
{
  v3 = objc_alloc_init(DBDashboardWorkspaceStateHomescreenChangeItem);
  [(DBDashboardWorkspaceStateChangeItem *)v3 setPresentationPreference:1];
  [(DBDashboardWorkspaceStateChangeItem *)v3 setChangeType:0];
  [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v3];
}

- (void)activateOEMPunchthrough:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(DBDashboardWorkspaceStateOEMPunchthroughChangeItem);
  [(DBDashboardWorkspaceStateOEMPunchthroughChangeItem *)v5 setOemPunchthroughIdentifier:v4];

  [(DBDashboardWorkspaceStateChangeItem *)v5 setPresentationPreference:2];
  [(DBDashboardWorkspaceStateChangeItem *)v5 setChangeType:0];
  [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v5];
}

- (void)deactivateOEMPunchthrough:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(DBDashboardWorkspaceStateOEMPunchthroughChangeItem);
  [(DBDashboardWorkspaceStateChangeItem *)v5 setChangeType:1];
  [(DBDashboardWorkspaceStateOEMPunchthroughChangeItem *)v5 setOemPunchthroughIdentifier:v4];

  [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v5];
}

@end