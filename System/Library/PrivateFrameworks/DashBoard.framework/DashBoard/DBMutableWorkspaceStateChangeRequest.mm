@interface DBMutableWorkspaceStateChangeRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)activateApplication:(id)application;
- (void)activateApplication:(id)application withSettings:(id)settings;
- (void)activateHomeScreen;
- (void)activateOEMPunchthrough:(id)punchthrough;
- (void)activateSiri;
- (void)activateSiriFloating;
- (void)activateStackedApplication:(id)application;
- (void)activateStackedApplication:(id)application withSettings:(id)settings;
- (void)addChangeItem:(id)item;
- (void)deactivateApplication:(id)application;
- (void)deactivateOEMPunchthrough:(id)punchthrough;
- (void)deactivateSiri;
- (void)destroyApplication:(id)application;
- (void)removeChangeItem:(id)item;
@end

@implementation DBMutableWorkspaceStateChangeRequest

- (void)activateSiri
{
  v3 = objc_alloc_init(DBDashboardWorkspaceStateSiriChangeItem);
  [(DBDashboardWorkspaceStateChangeItem *)v3 setChangeType:0];
  [(DBDashboardWorkspaceStateChangeItem *)v3 setPresentationPreference:2];
  [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v3];
}

- (void)addChangeItem:(id)item
{
  itemCopy = item;
  changeItems = self->super._changeItems;
  v8 = itemCopy;
  if (!changeItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->super._changeItems;
    self->super._changeItems = v6;

    itemCopy = v8;
    changeItems = self->super._changeItems;
  }

  [(NSMutableArray *)changeItems addObject:itemCopy];
}

- (void)removeChangeItem:(id)item
{
  if (item)
  {
    [(NSMutableArray *)self->super._changeItems removeObject:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DBWorkspaceStateChangeRequest alloc];

  return [(DBWorkspaceStateChangeRequest *)v4 _initWithRequest:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DBMutableWorkspaceStateChangeRequest alloc];

  return [(DBWorkspaceStateChangeRequest *)v4 _initWithRequest:self];
}

- (void)deactivateApplication:(id)application
{
  applicationCopy = application;
  if (applicationCopy)
  {
    v5 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:applicationCopy];
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

- (void)destroyApplication:(id)application
{
  applicationCopy = application;
  if (applicationCopy)
  {
    v5 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:applicationCopy];
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

- (void)activateApplication:(id)application
{
  applicationCopy = application;
  if (applicationCopy)
  {
    v5 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:applicationCopy];
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

- (void)activateApplication:(id)application withSettings:(id)settings
{
  applicationCopy = application;
  settingsCopy = settings;
  if (applicationCopy)
  {
    v8 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:applicationCopy];
    [(DBDashboardWorkspaceStateChangeItem *)v8 setChangeType:0];
    [(DBDashboardWorkspaceStateChangeItem *)v8 setPresentationPreference:1];
    [(DBDashboardWorkspaceStateApplicationSceneChangeItem *)v8 setActivationSettings:settingsCopy];
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

- (void)activateStackedApplication:(id)application
{
  applicationCopy = application;
  if (applicationCopy)
  {
    v5 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:applicationCopy];
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

- (void)activateStackedApplication:(id)application withSettings:(id)settings
{
  applicationCopy = application;
  settingsCopy = settings;
  if (applicationCopy)
  {
    v8 = [[DBDashboardWorkspaceStateApplicationSceneChangeItem alloc] initWithApplication:applicationCopy];
    [(DBDashboardWorkspaceStateChangeItem *)v8 setChangeType:0];
    [(DBDashboardWorkspaceStateChangeItem *)v8 setPresentationPreference:2];
    [(DBDashboardWorkspaceStateApplicationSceneChangeItem *)v8 setActivationSettings:settingsCopy];
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

- (void)activateOEMPunchthrough:(id)punchthrough
{
  punchthroughCopy = punchthrough;
  v5 = objc_alloc_init(DBDashboardWorkspaceStateOEMPunchthroughChangeItem);
  [(DBDashboardWorkspaceStateOEMPunchthroughChangeItem *)v5 setOemPunchthroughIdentifier:punchthroughCopy];

  [(DBDashboardWorkspaceStateChangeItem *)v5 setPresentationPreference:2];
  [(DBDashboardWorkspaceStateChangeItem *)v5 setChangeType:0];
  [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v5];
}

- (void)deactivateOEMPunchthrough:(id)punchthrough
{
  punchthroughCopy = punchthrough;
  v5 = objc_alloc_init(DBDashboardWorkspaceStateOEMPunchthroughChangeItem);
  [(DBDashboardWorkspaceStateChangeItem *)v5 setChangeType:1];
  [(DBDashboardWorkspaceStateOEMPunchthroughChangeItem *)v5 setOemPunchthroughIdentifier:punchthroughCopy];

  [(DBMutableWorkspaceStateChangeRequest *)self addChangeItem:v5];
}

@end