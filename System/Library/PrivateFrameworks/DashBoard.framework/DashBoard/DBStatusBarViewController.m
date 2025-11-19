@interface DBStatusBarViewController
- (DBStatusBarViewController)initWithStateProvider:(id)a3 dataBroadcaster:(id)a4 layout:(unint64_t)a5 environmentConfiguration:(id)a6;
- (void)_createStatusBar;
- (void)_subscribeDataTypes;
- (void)dealloc;
- (void)reload;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DBStatusBarViewController

- (DBStatusBarViewController)initWithStateProvider:(id)a3 dataBroadcaster:(id)a4 layout:(unint64_t)a5 environmentConfiguration:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = DBStatusBarViewController;
  v14 = [(DBStatusBarViewController *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_stateProvider, a3);
    objc_storeStrong(&v15->_dataBroadcaster, a4);
    v15->_layout = a5;
    objc_storeStrong(&v15->_environmentConfiguration, a6);
    v16 = [(DBStatusBarViewController *)v15 dataBroadcaster];
    [v16 setReloadable:v15];
  }

  return v15;
}

- (void)dealloc
{
  v3 = [(DBStatusBarViewController *)self stateProvider];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = DBStatusBarViewController;
  [(DBStatusBarViewController *)&v4 dealloc];
}

- (void)_createStatusBar
{
  [a1 layout];
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
  v11 = [(DBStatusBarViewController *)self statusBarView];
  [v11 setAvoidanceFrame:{v4, v6, v8, v10}];
}

- (void)_subscribeDataTypes
{
  v3 = [(DBStatusBarViewController *)self layout];
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_24839BD28[v3];
  }

  v5 = [(DBStatusBarViewController *)self stateProvider];
  [v5 subscribeForDataType:v4];
}

- (void)reload
{
  [a1 layout];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_0_4(&dword_248146000, v1, v2, "%s layout=%@", v3, v4, v5, v6, 2u);
}

@end