@interface CNFRegSplashSignInController
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_controllerToPresentOn;
- (id)_existingLearnMoreViewForSection:(int64_t)section;
- (id)_existingLearnMoreViewForSpecifier:(id)specifier;
- (id)specifierList;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_handleTimeout;
- (void)dealloc;
- (void)tapToSignInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error;
- (void)viewDidLoad;
@end

@implementation CNFRegSplashSignInController

- (id)_controllerToPresentOn
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  windows = [mEMORY[0x277D75128] windows];
  firstObject = [windows firstObject];
  rootViewController = [firstObject rootViewController];

  v6 = rootViewController;
  presentedViewController = [v6 presentedViewController];

  presentedViewController2 = v6;
  if (presentedViewController)
  {
    presentedViewController2 = [v6 presentedViewController];
  }

  return presentedViewController2;
}

- (void)dealloc
{
  [(AKTapToSignInViewController *)self->_akSignInVC setDelegate:0];
  v3.receiver = self;
  v3.super_class = CNFRegSplashSignInController;
  [(CNFRegSignInController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = CNFRegSplashSignInController;
  [(CNFRegSignInController *)&v18 viewDidLoad];
  v3 = MEMORY[0x277D755B8];
  v4 = CommunicationsSetupUIBundle();
  v5 = [v3 imageNamed:@"splash-top-glow" inBundle:v4];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
    [v6 setAutoresizingMask:5];
    table = [(CNFRegSplashSignInController *)self table];
    backgroundView = [table backgroundView];

    [v6 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [backgroundView bounds];
    MidX = CGRectGetMidX(v19);
    v20.origin.x = v10;
    v20.origin.y = v12;
    v20.size.width = v14;
    v20.size.height = v16;
    [v6 setFrame:{floor(MidX + CGRectGetWidth(v20) * -0.5), 0.0, v14, v16}];
    [backgroundView addSubview:v6];
  }
}

- (id)specifierList
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    regController = [(CNFRegListController *)self regController];
    [regController refreshSystemAccount];

    regController2 = [(CNFRegListController *)self regController];
    hasSystemAccount = [regController2 hasSystemAccount];

    if (hasSystemAccount)
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "We have a system account available, using it", v15, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      self->super._useSystemAccount = 1;
    }

    array = [MEMORY[0x277CBEB18] array];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:v11 forKey:*MEMORY[0x277D3FFA0]];
    if (emptyGroupSpecifier)
    {
      [array insertObject:emptyGroupSpecifier atIndex:0];
    }

    v13 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.super.isa + v3) = array;

    [(CNFRegFirstRunController *)self _stopValidationModeAnimated:0];
    v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_handleTimeout
{
  v3.receiver = self;
  v3.super_class = CNFRegSplashSignInController;
  [(CNFRegSignInController *)&v3 _handleTimeout];
  [(CNFRegSigninLearnMoreView *)self->_signInView setSigningIn:0];
}

- (id)_existingLearnMoreViewForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = specifierCopy;
  if (specifierCopy && !*&specifierCopy[*MEMORY[0x277D3FC90]])
  {
    v6 = [specifierCopy propertyForKey:*MEMORY[0x277D3FFB0]];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_existingLearnMoreViewForSection:(int64_t)section
{
  v4 = [(CNFRegSplashSignInController *)self indexOfGroup:section];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v4];
    v5 = [(CNFRegSplashSignInController *)self _existingLearnMoreViewForSpecifier:v6];
  }

  return v5;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(CNFRegSplashSignInController *)self _existingLearnMoreViewForSection:section];
  v23.receiver = self;
  v23.super_class = CNFRegSplashSignInController;
  [(CNFRegListController *)&v23 tableView:viewCopy heightForHeaderInSection:section];
  if (!v7)
  {
    v7 = [(CNFRegSplashSignInController *)self _existingLearnMoreViewForSection:section];
    regController = [(CNFRegListController *)self regController];
    [v7 setServiceType:{objc_msgSend(regController, "serviceType")}];

    objc_storeStrong(&self->_signInView, v7);
    if (!self->_akSignInVC)
    {
      v10 = objc_alloc_init(MEMORY[0x277CF03C8]);
      akSignInVC = self->_akSignInVC;
      self->_akSignInVC = v10;

      [(AKTapToSignInViewController *)self->_akSignInVC setUsesDarkMode:1];
      [(AKTapToSignInViewController *)self->_akSignInVC setDelegate:self];
      v12 = objc_alloc_init(MEMORY[0x277CF0380]);
      _controllerToPresentOn = [(CNFRegSplashSignInController *)self _controllerToPresentOn];
      [v12 setPresentingViewController:_controllerToPresentOn];

      v21 = objc_alloc_init(CUTWeakLinkClass());
      aa_primaryAppleAccount = [v21 aa_primaryAppleAccount];
      username = [aa_primaryAppleAccount username];
      if ([username length])
      {
        [v12 setUsername:username];
        [v12 setReason:username];
      }

      [(AKTapToSignInViewController *)self->_akSignInVC setContext:v12];
      v19 = v12;
      signInView = self->_signInView;
      view = [(AKTapToSignInViewController *)self->_akSignInVC view];
      [(CNFRegSigninLearnMoreView *)signInView setAuthKitSignInView:view];
    }

    [(CNFRegSigninLearnMoreView *)self->_signInView setController:self];
    v22.receiver = self;
    v22.super_class = CNFRegSplashSignInController;
    [(CNFRegListController *)&v22 tableView:viewCopy heightForHeaderInSection:section];
  }

  v17 = v8;

  return v17;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v9.receiver = self;
  v9.super_class = CNFRegSplashSignInController;
  v5 = [(CNFRegListController *)&v9 tableView:view viewForHeaderInSection:section];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      regController = [(CNFRegListController *)self regController];
      [v6 setServiceType:{objc_msgSend(regController, "serviceType")}];
    }
  }

  return v5;
}

- (void)tapToSignInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__CNFRegSplashSignInController_tapToSignInViewController_didAuthenticateWithResults_error___block_invoke;
  block[3] = &unk_278DE80D8;
  v12 = errorCopy;
  selfCopy = self;
  v14 = resultsCopy;
  v9 = resultsCopy;
  v10 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __91__CNFRegSplashSignInController_tapToSignInViewController_didAuthenticateWithResults_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 1640) setSigningIn:0];
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Could not authenticate: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v10 = *(a1 + 32);
      IMLogString();
    }
  }

  else
  {
    v4 = [*(a1 + 48) objectForKey:*MEMORY[0x277CEFFD8]];
    v5 = [*(a1 + 48) objectForKey:*MEMORY[0x277CEFFC8]];
    v6 = *(a1 + 40);
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      [v6[205] setSigningIn:0];
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Authentication handler: Missing either username or password", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }

    else
    {
      [v6 signInWithUsername:v4 password:v5];
      [*(*(a1 + 40) + 1640) setSigningIn:1];
      [*(*(a1 + 40) + 1640) setNeedsDisplay];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end