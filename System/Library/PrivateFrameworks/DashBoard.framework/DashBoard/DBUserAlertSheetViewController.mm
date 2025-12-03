@interface DBUserAlertSheetViewController
- (DBUserAlertSheetViewController)initWithAlert:(id)alert environmentConfiguration:(id)configuration;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation DBUserAlertSheetViewController

- (DBUserAlertSheetViewController)initWithAlert:(id)alert environmentConfiguration:(id)configuration
{
  alertCopy = alert;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = DBUserAlertSheetViewController;
  v9 = [(DBUserAlertSheetViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alert, alert);
    objc_storeStrong(&v10->_environmentConfiguration, configuration);
  }

  return v10;
}

- (void)loadView
{
  v3 = [DBUserAlertSheetView alloc];
  alert = [(DBUserAlertSheetViewController *)self alert];
  environmentConfiguration = [(DBUserAlertSheetViewController *)self environmentConfiguration];
  v6 = [(DBUserAlertSheetView *)v3 initWithAlert:alert environmentConfiguration:environmentConfiguration];

  [(DBUserAlertSheetViewController *)self setView:v6];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3 = DBLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_INFO, "presenting sheet user alert", v4, 2u);
  }
}

@end