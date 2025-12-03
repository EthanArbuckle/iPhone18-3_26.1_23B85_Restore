@interface DBStatusBarViewController
- (DBStatusBarViewController)initWithStateProvider:(id)provider dataBroadcaster:(id)broadcaster layout:(unint64_t)layout environmentConfiguration:(id)configuration;
- (void)_createStatusBar;
- (void)_subscribeDataTypes;
- (void)dealloc;
- (void)reload;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DBStatusBarViewController

- (DBStatusBarViewController)initWithStateProvider:(id)provider dataBroadcaster:(id)broadcaster layout:(unint64_t)layout environmentConfiguration:(id)configuration
{
  providerCopy = provider;
  broadcasterCopy = broadcaster;
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = DBStatusBarViewController;
  v14 = [(DBStatusBarViewController *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_stateProvider, provider);
    objc_storeStrong(&v15->_dataBroadcaster, broadcaster);
    v15->_layout = layout;
    objc_storeStrong(&v15->_environmentConfiguration, configuration);
    dataBroadcaster = [(DBStatusBarViewController *)v15 dataBroadcaster];
    [dataBroadcaster setReloadable:v15];
  }

  return v15;
}

- (void)dealloc
{
  stateProvider = [(DBStatusBarViewController *)self stateProvider];
  [stateProvider invalidate];

  v4.receiver = self;
  v4.super_class = DBStatusBarViewController;
  [(DBStatusBarViewController *)&v4 dealloc];
}

- (void)_createStatusBar
{
  [self layout];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_0_4(&dword_248146000, v1, v2, "%s layout=%@", v3, v4, v5, v6, 2u);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = DBStatusBarViewController;
  [(DBStatusBarViewController *)&v3 viewDidLoad];
  [(DBStatusBarViewController *)self _createStatusBar];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = DBStatusBarViewController;
  [(DBStatusBarViewController *)&v12 viewDidLayoutSubviews];
  [(UILayoutGuide *)self->_appDockLayoutGuide layoutFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  statusBarView = [(DBStatusBarViewController *)self statusBarView];
  [statusBarView setAvoidanceFrame:{v4, v6, v8, v10}];
}

- (void)_subscribeDataTypes
{
  layout = [(DBStatusBarViewController *)self layout];
  if (layout > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_24839BD28[layout];
  }

  stateProvider = [(DBStatusBarViewController *)self stateProvider];
  [stateProvider subscribeForDataType:v4];
}

- (void)reload
{
  [self layout];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_0_4(&dword_248146000, v1, v2, "%s layout=%@", v3, v4, v5, v6, 2u);
}

@end