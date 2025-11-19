@interface CKRegistrationAccountUIViewController
- (CGSize)preferredContentSize;
- (id)_account;
- (id)_accountRegistrar;
- (id)authenticationContext;
- (void)_processAuthenticationResults:(id)a3 authCompletion:(id)a4;
- (void)_registerAccountWithUsername:(id)a3 password:(id)a4 authCompletion:(id)a5;
- (void)signInViewController:(id)a3 didCompleteWithAuthenticationResults:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CKRegistrationAccountUIViewController

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = CKRegistrationAccountUIViewController;
  [(CKRegistrationAccountUIViewController *)&v16 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E698BB50]);
  authViewController = self->_authViewController;
  self->_authViewController = v3;

  v5 = [(CKRegistrationAccountUIViewController *)self _account];
  v6 = [v5 username];
  [(AAUISignInViewController *)self->_authViewController setUsername:v6];

  [(AAUISignInViewController *)self->_authViewController setShowServiceIcons:0];
  [(AAUISignInViewController *)self->_authViewController setTableViewStyle:2];
  v7 = self->_authViewController;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 signInAppIconImage];
  [(AAUISignInViewController *)v7 setHeaderImage:v9];

  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"IMESSAGE_REGISTRATION_BLURB_NO_NEWLINE" value:&stru_1F04268F8 table:@"ChatKit"];
  [(AAUISignInViewController *)self->_authViewController setMessageLabel:v11];

  [(AAUISignInViewController *)self->_authViewController setPrivacyLinkIdentifiers:&unk_1F04E66F0];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 signInTintColor];
  [(AAUISignInViewController *)self->_authViewController setTintColor:v13];

  [(AAUISignInViewController *)self->_authViewController setDelegate:self];
  [(CKRegistrationAccountUIViewController *)self addChildViewController:self->_authViewController];
  v14 = [(CKRegistrationAccountUIViewController *)self view];
  v15 = [(AAUISignInViewController *)self->_authViewController view];
  [v14 addSubview:v15];

  [(AAUISignInViewController *)self->_authViewController didMoveToParentViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKRegistrationAccountUIViewController;
  [(CKRegistrationAccountUIViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(AAUISignInViewController *)self->_authViewController view];
  v4 = [(CKRegistrationAccountUIViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];
}

- (CGSize)preferredContentSize
{
  [(AAUISignInViewController *)self->_authViewController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)authenticationContext
{
  v3 = objc_alloc_init(MEMORY[0x193AF5EC0](@"AKAppleIDAuthenticationInAppContext", @"AuthKitUI"));
  [v3 setServiceType:4];
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"MADRID" value:&stru_1F04268F8 table:@"ChatKit"];
  [v3 setTitle:v5];

  [v3 setPresentingViewController:self];
  [v3 setShouldOfferSecurityUpgrade:0];
  [v3 setShouldUpdatePersistentServiceTokens:1];
  [v3 setAuthenticationType:2];

  return v3;
}

- (void)signInViewController:(id)a3 didCompleteWithAuthenticationResults:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "didCompleteWithAuthenticationResults", v8, 2u);
    }
  }
}

- (id)_account
{
  v2 = objc_alloc_init(MEMORY[0x193AF5EC0](@"ACAccountStore", @"Accounts"));
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

- (id)_accountRegistrar
{
  v2 = [objc_alloc(MEMORY[0x193AF5EC0](@"CNFAccountRegistrar" @"CommunicationsSetupUI"))];

  return v2;
}

- (void)_registerAccountWithUsername:(id)a3 password:(id)a4 authCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Registering", buf, 2u);
    }
  }

  v12 = [(CKRegistrationAccountUIViewController *)self _accountRegistrar];
  v13 = [MEMORY[0x1E69A5CA0] iMessageService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__CKRegistrationAccountUIViewController__registerAccountWithUsername_password_authCompletion___block_invoke;
  v15[3] = &unk_1E72EBAD8;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v12 registerAccountWithUsername:v8 password:v9 service:v13 completionBlock:v15];
}

void __94__CKRegistrationAccountUIViewController__registerAccountWithUsername_password_authCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__CKRegistrationAccountUIViewController__registerAccountWithUsername_password_authCompletion___block_invoke_2;
  v8[3] = &unk_1E72EBAB0;
  v11 = a2;
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v8[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __94__CKRegistrationAccountUIViewController__registerAccountWithUsername_password_authCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 16);
  if (*(a1 + 56) == 1)
  {
    v2();
    v3 = *(*(*(a1 + 32) + 992) + 16);

    return v3();
  }

  else
  {
    v2();
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 presentViewController:v6 animated:1 completion:0];
  }
}

- (void)_processAuthenticationResults:(id)a3 authCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!_processAuthenticationResults_authCompletion___AKAuthenticationUsernameKey)
  {
    v8 = MEMORY[0x193AF5ED0]("AKAuthenticationUsernameKey", @"AuthKit");
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(&_processAuthenticationResults_authCompletion___AKAuthenticationUsernameKey, v9);
  }

  if (!_processAuthenticationResults_authCompletion___AKAuthenticationPasswordKey)
  {
    v10 = MEMORY[0x193AF5ED0]("AKAuthenticationPasswordKey", @"AuthKit");
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&_processAuthenticationResults_authCompletion___AKAuthenticationPasswordKey, v11);
  }

  v12 = [v6 objectForKey:_processAuthenticationResults_authCompletion___AKAuthenticationUsernameKey];
  v13 = [v6 objectForKey:_processAuthenticationResults_authCompletion___AKAuthenticationPasswordKey];
  v14 = IMOSLoggingEnabled();
  if (v12 && v13)
  {
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "AAUISignInViewController results had username+password", buf, 2u);
      }
    }

    [(CKRegistrationAccountUIViewController *)self _registerAccountWithUsername:v12 password:v13 authCompletion:v7];
  }

  else
  {
    if (v14)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "AAUISignInViewController handler: Missing either username or password", v17, 2u);
      }
    }

    v7[2](v7, 0);
  }
}

@end