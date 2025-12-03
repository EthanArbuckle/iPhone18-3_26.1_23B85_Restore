@interface FTRegUtilities
+ (id)serviceWithType:(int64_t)type;
+ (id)standaloneAuthorizationControllerWithRegController:(id)controller authID:(id)d token:(id)token;
+ (id)standaloneNewPasswordControllerWithRegController:(id)controller appleID:(id)d;
+ (void)authorizationController:(id)controller authorizedAccount:(BOOL)account;
+ (void)changePasswordControllerDidCancel:(id)cancel;
+ (void)changePasswordControllerDidFinish:(id)finish withAppleID:(id)d authID:(id)iD authToken:(id)token;
@end

@implementation FTRegUtilities

+ (id)serviceWithType:(int64_t)type
{
  v3 = FTCServiceNameForServiceType();
  v4 = [MEMORY[0x277D18DE0] serviceWithInternalName:v3];

  return v4;
}

+ (id)standaloneAuthorizationControllerWithRegController:(id)controller authID:(id)d token:(id)token
{
  tokenCopy = token;
  dCopy = d;
  controllerCopy = controller;
  v11 = [[CNFRegAccountAuthorizationController alloc] initWithRegController:controllerCopy authID:dCopy token:tokenCopy];

  [(CNFRegAccountAuthorizationController *)v11 setDelegate:self];
  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v11];
  v13 = +[CNFRegAppearanceController globalAppearanceController];
  [v12 setModalPresentationStyle:{objc_msgSend(v13, "modalPresentationStyle")}];
  navigationBarStyle = [v13 navigationBarStyle];
  navigationBar = [v12 navigationBar];
  [navigationBar setBarStyle:navigationBarStyle];

  navigationBarIsTranslucent = [v13 navigationBarIsTranslucent];
  navigationBar2 = [v12 navigationBar];
  [navigationBar2 setTranslucent:navigationBarIsTranslucent];

  return v12;
}

+ (id)standaloneNewPasswordControllerWithRegController:(id)controller appleID:(id)d
{
  dCopy = d;
  controllerCopy = controller;
  v8 = [[CNFRegChangeAccountPasswordController alloc] initWithRegController:controllerCopy appleID:dCopy];

  [(CNFRegChangeAccountPasswordController *)v8 setDelegate:self];
  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  v10 = +[CNFRegAppearanceController globalAppearanceController];
  [v9 setModalPresentationStyle:{objc_msgSend(v10, "modalPresentationStyle")}];
  navigationBarStyle = [v10 navigationBarStyle];
  navigationBar = [v9 navigationBar];
  [navigationBar setBarStyle:navigationBarStyle];

  navigationBarIsTranslucent = [v10 navigationBarIsTranslucent];
  navigationBar2 = [v9 navigationBar];
  [navigationBar2 setTranslucent:navigationBarIsTranslucent];

  return v9;
}

+ (void)changePasswordControllerDidCancel:(id)cancel
{
  presentingViewController = [cancel presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

+ (void)changePasswordControllerDidFinish:(id)finish withAppleID:(id)d authID:(id)iD authToken:(id)token
{
  v30 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  dCopy = d;
  iDCopy = iD;
  tokenCopy = token;
  if ([iDCopy length] && objc_msgSend(tokenCopy, "length"))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = finishCopy;
    regController = [finishCopy regController];
    appleIDAccounts = [regController appleIDAccounts];

    v15 = [appleIDAccounts countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(appleIDAccounts);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          loginDisplayString = [v19 loginDisplayString];
          v21 = [loginDisplayString isEqualToString:dCopy];

          if (v21)
          {
            [v19 updateAuthorizationCredentials:iDCopy token:tokenCopy];
          }
        }

        v16 = [appleIDAccounts countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    finishCopy = v24;
  }

  presentingViewController = [finishCopy presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)authorizationController:(id)controller authorizedAccount:(BOOL)account
{
  presentingViewController = [controller presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end