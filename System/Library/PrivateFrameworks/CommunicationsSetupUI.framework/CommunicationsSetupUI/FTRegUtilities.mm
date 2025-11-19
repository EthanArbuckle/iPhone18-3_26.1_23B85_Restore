@interface FTRegUtilities
+ (id)serviceWithType:(int64_t)a3;
+ (id)standaloneAuthorizationControllerWithRegController:(id)a3 authID:(id)a4 token:(id)a5;
+ (id)standaloneNewPasswordControllerWithRegController:(id)a3 appleID:(id)a4;
+ (void)authorizationController:(id)a3 authorizedAccount:(BOOL)a4;
+ (void)changePasswordControllerDidCancel:(id)a3;
+ (void)changePasswordControllerDidFinish:(id)a3 withAppleID:(id)a4 authID:(id)a5 authToken:(id)a6;
@end

@implementation FTRegUtilities

+ (id)serviceWithType:(int64_t)a3
{
  v3 = FTCServiceNameForServiceType();
  v4 = [MEMORY[0x277D18DE0] serviceWithInternalName:v3];

  return v4;
}

+ (id)standaloneAuthorizationControllerWithRegController:(id)a3 authID:(id)a4 token:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CNFRegAccountAuthorizationController alloc] initWithRegController:v10 authID:v9 token:v8];

  [(CNFRegAccountAuthorizationController *)v11 setDelegate:a1];
  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v11];
  v13 = +[CNFRegAppearanceController globalAppearanceController];
  [v12 setModalPresentationStyle:{objc_msgSend(v13, "modalPresentationStyle")}];
  v14 = [v13 navigationBarStyle];
  v15 = [v12 navigationBar];
  [v15 setBarStyle:v14];

  v16 = [v13 navigationBarIsTranslucent];
  v17 = [v12 navigationBar];
  [v17 setTranslucent:v16];

  return v12;
}

+ (id)standaloneNewPasswordControllerWithRegController:(id)a3 appleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CNFRegChangeAccountPasswordController alloc] initWithRegController:v7 appleID:v6];

  [(CNFRegChangeAccountPasswordController *)v8 setDelegate:a1];
  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  v10 = +[CNFRegAppearanceController globalAppearanceController];
  [v9 setModalPresentationStyle:{objc_msgSend(v10, "modalPresentationStyle")}];
  v11 = [v10 navigationBarStyle];
  v12 = [v9 navigationBar];
  [v12 setBarStyle:v11];

  v13 = [v10 navigationBarIsTranslucent];
  v14 = [v9 navigationBar];
  [v14 setTranslucent:v13];

  return v9;
}

+ (void)changePasswordControllerDidCancel:(id)a3
{
  v3 = [a3 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

+ (void)changePasswordControllerDidFinish:(id)a3 withAppleID:(id)a4 authID:(id)a5 authToken:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 length] && objc_msgSend(v12, "length"))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v9;
    v13 = [v9 regController];
    v14 = [v13 appleIDAccounts];

    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = [v19 loginDisplayString];
          v21 = [v20 isEqualToString:v10];

          if (v21)
          {
            [v19 updateAuthorizationCredentials:v11 token:v12];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    v9 = v24;
  }

  v22 = [v9 presentingViewController];
  [v22 dismissViewControllerAnimated:1 completion:0];

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)authorizationController:(id)a3 authorizedAccount:(BOOL)a4
{
  v4 = [a3 presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

@end