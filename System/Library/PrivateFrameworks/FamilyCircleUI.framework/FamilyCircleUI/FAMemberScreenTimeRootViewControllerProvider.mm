@interface FAMemberScreenTimeRootViewControllerProvider
+ (void)requestRootViewControllerForDSID:(id)d presentingViewController:(id)controller completionHandler:(id)handler;
@end

@implementation FAMemberScreenTimeRootViewControllerProvider

+ (void)requestRootViewControllerForDSID:(id)d presentingViewController:(id)controller completionHandler:(id)handler
{
  dCopy = d;
  controllerCopy = controller;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v10 = getSTRootViewControllerProviderClass_softClass;
  v16 = getSTRootViewControllerProviderClass_softClass;
  if (!getSTRootViewControllerProviderClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getSTRootViewControllerProviderClass_block_invoke;
    v12[3] = &unk_2782F2988;
    v12[4] = &v13;
    __getSTRootViewControllerProviderClass_block_invoke(v12);
    v10 = v14[3];
  }

  v11 = v10;
  _Block_object_dispose(&v13, 8);
  [v10 requestRootViewControllerForDSID:dCopy presentingViewController:controllerCopy completionHandler:handlerCopy];
}

@end