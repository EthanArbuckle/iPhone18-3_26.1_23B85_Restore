@interface DBDashboardStateProvider
- (DBDashboard)dashboard;
- (DBDashboardStateProvider)initWithDashboard:(id)dashboard;
- (void)_refreshObservations;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setActiveBundleIdentifier:(id)identifier;
- (void)setConnectionReady:(BOOL)ready;
- (void)setLockoutState:(unint64_t)state;
- (void)setPageType:(unint64_t)type;
- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState;
@end

@implementation DBDashboardStateProvider

- (DBDashboardStateProvider)initWithDashboard:(id)dashboard
{
  dashboardCopy = dashboard;
  v10.receiver = self;
  v10.super_class = DBDashboardStateProvider;
  v5 = [(DBDashboardStateProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dashboard, dashboardCopy);
    objc_storeStrong(&v6->_activeBundleIdentifier, @"com.apple.CarPlay.dashboard");
    v7 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285B0BC60];
    observers = v6->_observers;
    v6->_observers = v7;
  }

  return v6;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBDashboardStateProvider *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBDashboardStateProvider *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)setConnectionReady:(BOOL)ready
{
  if (self->_connectionReady != ready)
  {
    readyCopy = ready;
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBDashboardStateProvider setConnectionReady:];
    }

    self->_connectionReady = readyCopy;
    [(DBDashboardStateProvider *)self _refreshObservations];
    observers = [(DBDashboardStateProvider *)self observers];
    [observers dashboardStateProvider:self didChangeConnectionReady:readyCopy];
  }
}

- (void)setLockoutState:(unint64_t)state
{
  if (self->_lockoutState != state)
  {
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBDashboardStateProvider setLockoutState:];
    }

    self->_lockoutState = state;
    observers = [(DBDashboardStateProvider *)self observers];
    [observers dashboardStateProvider:self didChangeLockoutState:self->_lockoutState];
  }
}

- (void)setPageType:(unint64_t)type
{
  if (self->_pageType != type)
  {
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBDashboardStateProvider setPageType:];
    }

    self->_pageType = type;
    observers = [(DBDashboardStateProvider *)self observers];
    [observers dashboardStateProvider:self didChangeHomeScreenPageType:self->_pageType];
  }
}

- (void)setActiveBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![DBComparison isValue:self->_activeBundleIdentifier equalTo:identifierCopy])
  {
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DBDashboardStateProvider setActiveBundleIdentifier:];
    }

    v6 = [identifierCopy copy];
    activeBundleIdentifier = self->_activeBundleIdentifier;
    self->_activeBundleIdentifier = v6;

    observers = [(DBDashboardStateProvider *)self observers];
    [observers dashboardStateProvider:self didChangeActiveBundleIdentifier:self->_activeBundleIdentifier];
  }
}

- (void)_refreshObservations
{
  dashboard = [(DBDashboardStateProvider *)self dashboard];
  workspace = [dashboard workspace];
  state = [workspace state];

  if (state)
  {
    dashboard2 = [(DBDashboardStateProvider *)self dashboard];
    workspace2 = [dashboard2 workspace];
    state2 = [workspace2 state];
    activeBundleIdentifier = [state2 activeBundleIdentifier];
    activeBundleIdentifier = self->_activeBundleIdentifier;
    self->_activeBundleIdentifier = activeBundleIdentifier;
  }

  dashboard3 = [(DBDashboardStateProvider *)self dashboard];
  workspace3 = [dashboard3 workspace];
  [workspace3 addObserver:self];
}

- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState
{
  activeBundleIdentifier = [toState activeBundleIdentifier];
  [(DBDashboardStateProvider *)self setActiveBundleIdentifier:activeBundleIdentifier];
}

- (DBDashboard)dashboard
{
  WeakRetained = objc_loadWeakRetained(&self->_dashboard);

  return WeakRetained;
}

@end