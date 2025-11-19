@interface DBDashboardStateProvider
- (DBDashboard)dashboard;
- (DBDashboardStateProvider)initWithDashboard:(id)a3;
- (void)_refreshObservations;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setActiveBundleIdentifier:(id)a3;
- (void)setConnectionReady:(BOOL)a3;
- (void)setLockoutState:(unint64_t)a3;
- (void)setPageType:(unint64_t)a3;
- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5;
@end

@implementation DBDashboardStateProvider

- (DBDashboardStateProvider)initWithDashboard:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DBDashboardStateProvider;
  v5 = [(DBDashboardStateProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dashboard, v4);
    objc_storeStrong(&v6->_activeBundleIdentifier, @"com.apple.CarPlay.dashboard");
    v7 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285B0BC60];
    observers = v6->_observers;
    v6->_observers = v7;
  }

  return v6;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardStateProvider *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardStateProvider *)self observers];
  [v5 removeObserver:v4];
}

- (void)setConnectionReady:(BOOL)a3
{
  if (self->_connectionReady != a3)
  {
    v3 = a3;
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBDashboardStateProvider setConnectionReady:];
    }

    self->_connectionReady = v3;
    [(DBDashboardStateProvider *)self _refreshObservations];
    v6 = [(DBDashboardStateProvider *)self observers];
    [v6 dashboardStateProvider:self didChangeConnectionReady:v3];
  }
}

- (void)setLockoutState:(unint64_t)a3
{
  if (self->_lockoutState != a3)
  {
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBDashboardStateProvider setLockoutState:];
    }

    self->_lockoutState = a3;
    v6 = [(DBDashboardStateProvider *)self observers];
    [v6 dashboardStateProvider:self didChangeLockoutState:self->_lockoutState];
  }
}

- (void)setPageType:(unint64_t)a3
{
  if (self->_pageType != a3)
  {
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBDashboardStateProvider setPageType:];
    }

    self->_pageType = a3;
    v6 = [(DBDashboardStateProvider *)self observers];
    [v6 dashboardStateProvider:self didChangeHomeScreenPageType:self->_pageType];
  }
}

- (void)setActiveBundleIdentifier:(id)a3
{
  v4 = a3;
  if (![DBComparison isValue:self->_activeBundleIdentifier equalTo:v4])
  {
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBDashboardStateProvider setActiveBundleIdentifier:];
    }

    v6 = [v4 copy];
    activeBundleIdentifier = self->_activeBundleIdentifier;
    self->_activeBundleIdentifier = v6;

    v8 = [(DBDashboardStateProvider *)self observers];
    [v8 dashboardStateProvider:self didChangeActiveBundleIdentifier:self->_activeBundleIdentifier];
  }
}

- (void)_refreshObservations
{
  v3 = [(DBDashboardStateProvider *)self dashboard];
  v4 = [v3 workspace];
  v5 = [v4 state];

  if (v5)
  {
    v6 = [(DBDashboardStateProvider *)self dashboard];
    v7 = [v6 workspace];
    v8 = [v7 state];
    v9 = [v8 activeBundleIdentifier];
    activeBundleIdentifier = self->_activeBundleIdentifier;
    self->_activeBundleIdentifier = v9;
  }

  v12 = [(DBDashboardStateProvider *)self dashboard];
  v11 = [v12 workspace];
  [v11 addObserver:self];
}

- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5
{
  v6 = [a5 activeBundleIdentifier];
  [(DBDashboardStateProvider *)self setActiveBundleIdentifier:v6];
}

- (DBDashboard)dashboard
{
  WeakRetained = objc_loadWeakRetained(&self->_dashboard);

  return WeakRetained;
}

@end