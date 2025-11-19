@interface CKRegistrationViewController
+ (BOOL)_refreshAccountKeyCDPSyncingOrWaitingForUser;
+ (BOOL)_shouldShowAuthKitSignIn;
+ (BOOL)shouldShowRegistration;
+ (id)_inProgressRegisteringNonPhoneAccount;
- (CKRegistrationViewController)init;
- (id)accountRegistrar;
- (void)_handleRegistrarCompletion:(BOOL)a3 errorAlertController:(id)a4;
- (void)dealloc;
- (void)keyboardDidShow:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)setErrorPresentationViewController:(id)a3;
- (void)tapToSignInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5;
- (void)updateInsetsForKeyboardFrame:(CGRect)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKRegistrationViewController

+ (BOOL)shouldShowRegistration
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[CKRegistrationViewController _shouldShowAuthKitSignIn];
  v3 = +[CKRegistrationViewController _inProgressRegisteringNonPhoneAccount];

  v4 = +[CKRegistrationViewController _refreshAccountKeyCDPSyncingOrWaitingForUser];
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v2;
  }

  v7 = v6 & !v4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (v7)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      if (v2)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v14 = 138413058;
      v15 = v10;
      if (v3)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      if (v5)
      {
        v9 = @"YES";
      }

      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "shouldShowRegistration: %@, shouldShowAuthKitSignIn: %@, inProgressRegisteringNonPhoneAccount: %@, refreshAccountKeyCDPSyncingOrWaitingForUser: %@", &v14, 0x2Au);
    }
  }

  return v7;
}

+ (BOOL)_refreshAccountKeyCDPSyncingOrWaitingForUser
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5A80] sharedInstance];
  v3 = [MEMORY[0x1E69A5CA0] iMessageService];
  v4 = [v2 bestAccountForService:v3];

  v5 = [v4 registrationFailureReason];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v5 == 29)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if (v5 == 28)
      {
        v7 = @"YES";
      }

      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "refresh account key CDPSyncing: %@, CDPWaitingForUser: %@", &v10, 0x16u);
    }
  }

  return (v5 & 0xFFFFFFFE) == 28;
}

+ (BOOL)_shouldShowAuthKitSignIn
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5A80] sharedInstance];
  v3 = [MEMORY[0x1E69A5C90] iMessageService];
  v4 = [v2 accountsForService:v3];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v7 |= [v11 accountType] == 2;
        v6 |= [v11 registrationStatus] == 5;
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v8);
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (v7)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138412802;
      v21 = v14;
      v22 = 2112;
      if (v6)
      {
        v13 = @"YES";
      }

      v23 = v13;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "hasPhoneNumberAccount: %@, hasRegisteredAccount: %@, all accounts: %@", buf, 0x20u);
    }
  }

  return ((v7 | v6) ^ 1) & 1;
}

+ (id)_inProgressRegisteringNonPhoneAccount
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5A80] sharedInstance];
  v4 = [MEMORY[0x1E69A5C90] iMessageService];
  v5 = [v3 accountsForService:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 accountType];
        v12 = [v10 registrationStatus];
        if (v12 != 5 && v11 != 2 && (v12 - 2) <= 2)
        {
          v7 = v10;
          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

LABEL_14:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CKRegistrationViewController__inProgressRegisteringNonPhoneAccount__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_inProgressRegisteringNonPhoneAccount_onceToken != -1)
  {
    dispatch_once(&_inProgressRegisteringNonPhoneAccount_onceToken, block);
  }

  return v7;
}

void __69__CKRegistrationViewController__inProgressRegisteringNonPhoneAccount__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CKRegistrationViewController__inProgressRegisteringNonPhoneAccount__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

- (CKRegistrationViewController)init
{
  v20.receiver = self;
  v20.super_class = CKRegistrationViewController;
  v2 = [(CKRegistrationViewController *)&v20 init];
  if (v2)
  {
    v3 = [CKRegistrationView alloc];
    v4 = [(CKRegistrationView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CKRegistrationView *)v4 setBackgroundColor:v5];

    [(CKRegistrationView *)v4 setAccessibilityIdentifier:@"MadridRegistrationView"];
    [(CKRegistrationViewController *)v2 setView:v4];
    v6 = objc_alloc_init(MEMORY[0x193AF5EC0](@"AKTapToSignInViewController", @"AuthKitUI"));
    akSignInVC = v2->_akSignInVC;
    v2->_akSignInVC = v6;

    [(AKTapToSignInViewController *)v2->_akSignInVC setUsesDarkMode:0];
    [(AKTapToSignInViewController *)v2->_akSignInVC setDelegate:v2];
    v8 = objc_alloc_init(MEMORY[0x193AF5EC0](@"AKAppleIDAuthenticationInAppContext", @"AuthKitUI"));
    [v8 setServiceType:4];
    [v8 setPresentingViewController:v2];
    v9 = objc_alloc_init(MEMORY[0x193AF5EC0](@"ACAccountStore", @"Accounts"));
    v10 = [v9 aa_primaryAppleAccount];
    v11 = [v10 username];
    if ([v11 length])
    {
      [v8 setUsername:v11];
    }

    [(AKTapToSignInViewController *)v2->_akSignInVC setContext:v8];
    v12 = [(AKTapToSignInViewController *)v2->_akSignInVC view];
    [(CKRegistrationView *)v4 setAuthKitSignInView:v12];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v2 selector:sel_keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
    [v13 addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [v13 addObserver:v2 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    v14 = [MEMORY[0x1E69B7D50] linkWithBundleIdentifier:@"com.apple.onboarding.messages"];
    privacyLinkController = v2->_privacyLinkController;
    v2->_privacyLinkController = v14;

    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 signInTintColor];

    if (v17)
    {
      [(OBPrivacyLinkController *)v2->_privacyLinkController setCustomTintColor:v17];
    }

    [(CKRegistrationViewController *)v2 addChildViewController:v2->_privacyLinkController];
    v18 = [(OBPrivacyLinkController *)v2->_privacyLinkController view];
    [(CKRegistrationView *)v4 setPrivacyLinkView:v18];

    [(OBPrivacyLinkController *)v2->_privacyLinkController didMoveToParentViewController:v2];
    [(CKRegistrationViewController *)v2 setModalInPresentation:1];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKRegistrationViewController;
  [(CKRegistrationViewController *)&v4 dealloc];
}

- (id)accountRegistrar
{
  if (accountRegistrar_onceToken != -1)
  {
    [CKRegistrationViewController accountRegistrar];
  }

  v3 = [[accountRegistrar_accountRegistrarClass alloc] initWithServiceType:1 presentationViewController:self];

  return v3;
}

uint64_t __48__CKRegistrationViewController_accountRegistrar__block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"CNFAccountRegistrar", @"CommunicationsSetupUI");
  accountRegistrar_accountRegistrarClass = result;
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CKRegistrationViewController;
  [(CKRegistrationViewController *)&v3 viewDidLoad];
  [(CKRegistrationViewController *)self becomeFirstResponder];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = +[CKRegistrationViewController _inProgressRegisteringNonPhoneAccount];
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__CKRegistrationViewController_viewWillAppear___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = [(CKRegistrationViewController *)self accountRegistrar];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__CKRegistrationViewController_viewWillAppear___block_invoke_2;
    v8[3] = &unk_1E72ECA10;
    v8[4] = self;
    [v6 continueRegistrationForAccount:v5 completionBlock:v8];
  }

  v7.receiver = self;
  v7.super_class = CKRegistrationViewController;
  [(CKRegistrationViewController *)&v7 viewWillAppear:v3];
}

void __47__CKRegistrationViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setSigningIn:1];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 rectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CKRegistrationViewController *)self updateInsetsForKeyboardFrame:v7, v9, v11, v13];
}

- (void)keyboardDidShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 rectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CKRegistrationViewController *)self updateInsetsForKeyboardFrame:v7, v9, v11, v13];
}

- (void)updateInsetsForKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x1E69DCEB0];
  v9 = [(CKRegistrationViewController *)self view];
  [v8 convertRect:v9 toView:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(CKRegistrationViewController *)self view];
  [v18 bounds];
  v29.origin.x = v19;
  v29.origin.y = v20;
  v29.size.width = v21;
  v29.size.height = v22;
  v27.origin.x = v11;
  v27.origin.y = v13;
  v27.size.width = v15;
  v27.size.height = v17;
  v28 = CGRectIntersection(v27, v29);
  v23 = v28.size.height;

  v24 = [(CKRegistrationViewController *)self view];
  [v24 setContentInset:{0.0, 0.0, v23, 0.0}];

  v25 = [(CKRegistrationViewController *)self view];
  [v25 setScrollIndicatorInsets:{0.0, 0.0, v23, 0.0}];
}

- (void)keyboardWillHide:(id)a3
{
  v4 = [(CKRegistrationViewController *)self view];
  [v4 setContentInset:{0.0, 0.0, 0.0, 0.0}];

  v5 = [(CKRegistrationViewController *)self view];
  [v5 setScrollIndicatorInsets:{0.0, 0.0, 0.0, 0.0}];
}

- (void)tapToSignInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "AKTapToSignInViewController callback with error: %@", buf, 0xCu);
    }
  }

  if (v10)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__CKRegistrationViewController_tapToSignInViewController_didAuthenticateWithResults_error___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v10;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Could not authenticate: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "AKTapToSignInViewController obtained results", buf, 2u);
      }
    }

    if (!tapToSignInViewController_didAuthenticateWithResults_error___AKAuthenticationUsernameKey)
    {
      v14 = MEMORY[0x193AF5ED0]("AKAuthenticationUsernameKey", @"AuthKit");
      if (v14)
      {
        v15 = *v14;
      }

      else
      {
        v15 = 0;
      }

      objc_storeStrong(&tapToSignInViewController_didAuthenticateWithResults_error___AKAuthenticationUsernameKey, v15);
    }

    if (!tapToSignInViewController_didAuthenticateWithResults_error___AKAuthenticationPasswordKey)
    {
      v16 = MEMORY[0x193AF5ED0]("AKAuthenticationPasswordKey", @"AuthKit");
      if (v16)
      {
        v17 = *v16;
      }

      else
      {
        v17 = 0;
      }

      objc_storeStrong(&tapToSignInViewController_didAuthenticateWithResults_error___AKAuthenticationPasswordKey, v17);
    }

    v18 = [v9 objectForKey:tapToSignInViewController_didAuthenticateWithResults_error___AKAuthenticationUsernameKey];
    v19 = [v9 objectForKey:tapToSignInViewController_didAuthenticateWithResults_error___AKAuthenticationPasswordKey];
    v20 = v19;
    if (v18 && v19)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "AKTapToSignInViewController results had username+password", buf, 2u);
        }
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __91__CKRegistrationViewController_tapToSignInViewController_didAuthenticateWithResults_error___block_invoke_96;
      v28[3] = &unk_1E72EBA18;
      v28[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v28);
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Registering", buf, 2u);
        }
      }

      v23 = [(CKRegistrationViewController *)self accountRegistrar];
      v24 = [MEMORY[0x1E69A5CA0] iMessageService];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __91__CKRegistrationViewController_tapToSignInViewController_didAuthenticateWithResults_error___block_invoke_97;
      v27[3] = &unk_1E72ECA10;
      v27[4] = self;
      [v23 registerAccountWithUsername:v18 password:v20 service:v24 completionBlock:v27];
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __91__CKRegistrationViewController_tapToSignInViewController_didAuthenticateWithResults_error___block_invoke_2;
      v26[3] = &unk_1E72EBA18;
      v26[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v26);
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Authentication handler: Missing either username or password", buf, 2u);
        }
      }
    }
  }
}

void __91__CKRegistrationViewController_tapToSignInViewController_didAuthenticateWithResults_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setSigningIn:0];
}

void __91__CKRegistrationViewController_tapToSignInViewController_didAuthenticateWithResults_error___block_invoke_96(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setSigningIn:1];
}

void __91__CKRegistrationViewController_tapToSignInViewController_didAuthenticateWithResults_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setSigningIn:0];
}

- (void)_handleRegistrarCompletion:(BOOL)a3 errorAlertController:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Handling registration callback", buf, 2u);
    }
  }

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Success! Calling completion block", buf, 2u);
      }
    }

    v9 = [(CKRegistrationViewController *)self completionBlock];

    if (v9)
    {
      v10 = [(CKRegistrationViewController *)self completionBlock];
      v10[2](v10, 1);
    }
  }

  else if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failure. showing error alert", buf, 2u);
      }
    }

    [(CKRegistrationViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__CKRegistrationViewController__handleRegistrarCompletion_errorAlertController___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__CKRegistrationViewController__handleRegistrarCompletion_errorAlertController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setSigningIn:0];
}

- (void)setErrorPresentationViewController:(id)a3
{
  akSignInVC = self->_akSignInVC;
  v4 = a3;
  v5 = [(AKTapToSignInViewController *)akSignInVC context];
  [v5 setPresentingViewController:v4];
}

@end