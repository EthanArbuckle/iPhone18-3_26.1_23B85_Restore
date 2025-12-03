@interface OBPrivacyCombinedController
+ (void)presentPrivacyCombinedControllerOverController:(id)controller dismissHandler:(id)handler;
- (OBPrivacyCombinedController)initWithBundles:(id)bundles;
@end

@implementation OBPrivacyCombinedController

- (OBPrivacyCombinedController)initWithBundles:(id)bundles
{
  bundlesCopy = bundles;
  if ([(OBPrivacyCombinedController *)self isMemberOfClass:objc_opt_class()])
  {
    v5 = [[OBPrivacyCombinedController_iOS alloc] initWithBundles:bundlesCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OBPrivacyCombinedController;
    v5 = [(OBTableWelcomeController *)&v8 initWithTitle:&stru_1F2CE9518 detailText:0 icon:0 adoptTableViewScrollView:1];
  }

  [(OBWelcomeController *)v5 setTemplateType:1];
  v6 = +[OBCapabilities sharedCapabilities];
  -[OBPrivacyCombinedController setAllowsOpeningSafari:](v5, "setAllowsOpeningSafari:", [v6 preventOpeningSafari] ^ 1);

  return &v5->super;
}

+ (void)presentPrivacyCombinedControllerOverController:(id)controller dismissHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  v7 = +[OBPrivacyPresenter presenterForPrivacyUnifiedAbout];
  [v7 setDismissHandler:handlerCopy];

  [v7 setPresentingViewController:controllerCopy];
  [v7 setModalPresentationStyle:0];
  [v7 present];
}

void __50__OBPrivacyCombinedController_iOS_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 deselectRowAtIndexPath:*(a1 + 40) animated:1];
}

void __50__OBPrivacyCombinedController_iOS_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    v3 = [*(a1 + 32) tableView];
    [v3 selectRowAtIndexPath:*(a1 + 40) animated:0 scrollPosition:0];
  }
}

@end