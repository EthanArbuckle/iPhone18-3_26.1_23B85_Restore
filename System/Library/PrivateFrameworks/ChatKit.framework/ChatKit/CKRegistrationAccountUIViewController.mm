@interface CKRegistrationAccountUIViewController
- (CGSize)preferredContentSize;
- (id)_account;
- (id)_accountRegistrar;
- (id)authenticationContext;
- (void)_processAuthenticationResults:(id)results authCompletion:(id)completion;
- (void)_registerAccountWithUsername:(id)username password:(id)password authCompletion:(id)completion;
- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results;
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

  _account = [(CKRegistrationAccountUIViewController *)self _account];
  username = [_account username];
  [(AAUISignInViewController *)self->_authViewController setUsername:username];

  [(AAUISignInViewController *)self->_authViewController setShowServiceIcons:0];
  [(AAUISignInViewController *)self->_authViewController setTableViewStyle:2];
  v7 = self->_authViewController;
  v8 = +[CKUIBehavior sharedBehaviors];
  signInAppIconImage = [v8 signInAppIconImage];
  [(AAUISignInViewController *)v7 setHeaderImage:signInAppIconImage];

  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"IMESSAGE_REGISTRATION_BLURB_NO_NEWLINE" value:&stru_1F04268F8 table:@"ChatKit"];
  [(AAUISignInViewController *)self->_authViewController setMessageLabel:v11];

  [(AAUISignInViewController *)self->_authViewController setPrivacyLinkIdentifiers:&unk_1F04E66F0];
  v12 = +[CKUIBehavior sharedBehaviors];
  signInTintColor = [v12 signInTintColor];
  [(AAUISignInViewController *)self->_authViewController setTintColor:signInTintColor];

  [(AAUISignInViewController *)self->_authViewController setDelegate:self];
  [(CKRegistrationAccountUIViewController *)self addChildViewController:self->_authViewController];
  view = [(CKRegistrationAccountUIViewController *)self view];
  view2 = [(AAUISignInViewController *)self->_authViewController view];
  [view addSubview:view2];

  [(AAUISignInViewController *)self->_authViewController didMoveToParentViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKRegistrationAccountUIViewController;
  [(CKRegistrationAccountUIViewController *)&v5 viewWillLayoutSubviews];
  view = [(AAUISignInViewController *)self->_authViewController view];
  view2 = [(CKRegistrationAccountUIViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
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

- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results
{
  controllerCopy = controller;
  resultsCopy = results;
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
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (id)_accountRegistrar
{
  v2 = [objc_alloc(MEMORY[0x193AF5EC0](@"CNFAccountRegistrar" @"CommunicationsSetupUI"))];

  return v2;
}

- (void)_registerAccountWithUsername:(id)username password:(id)password authCompletion:(id)completion
{
  usernameCopy = username;
  passwordCopy = password;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Registering", buf, 2u);
    }
  }

  _accountRegistrar = [(CKRegistrationAccountUIViewController *)self _accountRegistrar];
  iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__CKRegistrationAccountUIViewController__registerAccountWithUsername_password_authCompletion___block_invoke;
  v15[3] = &unk_1E72EBAD8;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [_accountRegistrar registerAccountWithUsername:usernameCopy password:passwordCopy service:iMessageService completionBlock:v15];
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

- (void)_processAuthenticationResults:(id)results authCompletion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
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

  v12 = [resultsCopy objectForKey:_processAuthenticationResults_authCompletion___AKAuthenticationUsernameKey];
  v13 = [resultsCopy objectForKey:_processAuthenticationResults_authCompletion___AKAuthenticationPasswordKey];
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

    [(CKRegistrationAccountUIViewController *)self _registerAccountWithUsername:v12 password:v13 authCompletion:completionCopy];
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

    completionCopy[2](completionCopy, 0);
  }
}

@end