@interface ECBundlePageController_iOS
- (ECBundlePageController_iOS)initWithPlugIn:(id)in contextController:(id)controller;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame;
@end

@implementation ECBundlePageController_iOS

- (ECBundlePageController_iOS)initWithPlugIn:(id)in contextController:(id)controller
{
  v5.receiver = self;
  v5.super_class = ECBundlePageController_iOS;
  return [(ECBundlePageController *)&v5 initWithPlugIn:in contextController:controller];
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame
{
  frameCopy = frame;
  if (_os_feature_enabled_impl())
  {
    webContentObserverProxy = [(ECBundlePageController *)self webContentObserverProxy];
    [webContentObserverProxy logWebBundleMessage:@"Data detection results are ready"];

    webContentObserverProxy2 = [(ECBundlePageController *)self webContentObserverProxy];
    v7 = [frameCopy URL];
    [webContentObserverProxy2 requestDataDetectionResultsWithBaseURL:v7];
  }
}

@end