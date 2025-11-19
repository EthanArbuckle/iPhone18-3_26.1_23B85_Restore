@interface ECBundlePageController_iOS
- (ECBundlePageController_iOS)initWithPlugIn:(id)a3 contextController:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishLoadForFrame:(id)a4;
@end

@implementation ECBundlePageController_iOS

- (ECBundlePageController_iOS)initWithPlugIn:(id)a3 contextController:(id)a4
{
  v5.receiver = self;
  v5.super_class = ECBundlePageController_iOS;
  return [(ECBundlePageController *)&v5 initWithPlugIn:a3 contextController:a4];
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishLoadForFrame:(id)a4
{
  v8 = a4;
  if (_os_feature_enabled_impl())
  {
    v5 = [(ECBundlePageController *)self webContentObserverProxy];
    [v5 logWebBundleMessage:@"Data detection results are ready"];

    v6 = [(ECBundlePageController *)self webContentObserverProxy];
    v7 = [v8 URL];
    [v6 requestDataDetectionResultsWithBaseURL:v7];
  }
}

@end