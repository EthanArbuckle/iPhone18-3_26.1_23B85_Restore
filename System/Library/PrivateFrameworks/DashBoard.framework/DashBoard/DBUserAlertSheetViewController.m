@interface DBUserAlertSheetViewController
- (DBUserAlertSheetViewController)initWithAlert:(id)a3 environmentConfiguration:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation DBUserAlertSheetViewController

- (DBUserAlertSheetViewController)initWithAlert:(id)a3 environmentConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DBUserAlertSheetViewController;
  v9 = [(DBUserAlertSheetViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_alert, a3);
    objc_storeStrong(&v10->_environmentConfiguration, a4);
  }

  return v10;
}

- (void)loadView
{
  v3 = [DBUserAlertSheetView alloc];
  v4 = [(DBUserAlertSheetViewController *)self alert];
  v5 = [(DBUserAlertSheetViewController *)self environmentConfiguration];
  v6 = [(DBUserAlertSheetView *)v3 initWithAlert:v4 environmentConfiguration:v5];

  [(DBUserAlertSheetViewController *)self setView:v6];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = DBLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_INFO, "presenting sheet user alert", v4, 2u);
  }
}

@end