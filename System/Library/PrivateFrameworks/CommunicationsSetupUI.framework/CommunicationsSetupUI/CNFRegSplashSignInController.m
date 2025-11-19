@interface CNFRegSplashSignInController
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_controllerToPresentOn;
- (id)_existingLearnMoreViewForSection:(int64_t)a3;
- (id)_existingLearnMoreViewForSpecifier:(id)a3;
- (id)specifierList;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_handleTimeout;
- (void)dealloc;
- (void)tapToSignInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5;
- (void)viewDidLoad;
@end

@implementation CNFRegSplashSignInController

- (id)_controllerToPresentOn
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 windows];
  v4 = [v3 firstObject];
  v5 = [v4 rootViewController];

  v6 = v5;
  v7 = [v6 presentedViewController];

  v8 = v6;
  if (v7)
  {
    v8 = [v6 presentedViewController];
  }

  return v8;
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
    v7 = [(CNFRegSplashSignInController *)self table];
    v8 = [v7 backgroundView];

    [v6 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v8 bounds];
    MidX = CGRectGetMidX(v19);
    v20.origin.x = v10;
    v20.origin.y = v12;
    v20.size.width = v14;
    v20.size.height = v16;
    [v6 setFrame:{floor(MidX + CGRectGetWidth(v20) * -0.5), 0.0, v14, v16}];
    [v8 addSubview:v6];
  }
}

- (id)specifierList
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(CNFRegListController *)self regController];
    [v5 refreshSystemAccount];

    v6 = [(CNFRegListController *)self regController];
    v7 = [v6 hasSystemAccount];

    if (v7)
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

    v9 = [MEMORY[0x277CBEB18] array];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v12 setProperty:v11 forKey:*MEMORY[0x277D3FFA0]];
    if (v12)
    {
      [v9 insertObject:v12 atIndex:0];
    }

    v13 = *(&self->super.super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.super.isa + v3) = v9;

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

- (id)_existingLearnMoreViewForSpecifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && !*&v3[*MEMORY[0x277D3FC90]])
  {
    v6 = [v3 propertyForKey:*MEMORY[0x277D3FFB0]];
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

- (id)_existingLearnMoreViewForSection:(int64_t)a3
{
  v4 = [(CNFRegSplashSignInController *)self indexOfGroup:a3];
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNFRegSplashSignInController *)self _existingLearnMoreViewForSection:a4];
  v23.receiver = self;
  v23.super_class = CNFRegSplashSignInController;
  [(CNFRegListController *)&v23 tableView:v6 heightForHeaderInSection:a4];
  if (!v7)
  {
    v7 = [(CNFRegSplashSignInController *)self _existingLearnMoreViewForSection:a4];
    v9 = [(CNFRegListController *)self regController];
    [v7 setServiceType:{objc_msgSend(v9, "serviceType")}];

    objc_storeStrong(&self->_signInView, v7);
    if (!self->_akSignInVC)
    {
      v10 = objc_alloc_init(MEMORY[0x277CF03C8]);
      akSignInVC = self->_akSignInVC;
      self->_akSignInVC = v10;

      [(AKTapToSignInViewController *)self->_akSignInVC setUsesDarkMode:1];
      [(AKTapToSignInViewController *)self->_akSignInVC setDelegate:self];
      v12 = objc_alloc_init(MEMORY[0x277CF0380]);
      v13 = [(CNFRegSplashSignInController *)self _controllerToPresentOn];
      [v12 setPresentingViewController:v13];

      v21 = objc_alloc_init(CUTWeakLinkClass());
      v20 = [v21 aa_primaryAppleAccount];
      v14 = [v20 username];
      if ([v14 length])
      {
        [v12 setUsername:v14];
        [v12 setReason:v14];
      }

      [(AKTapToSignInViewController *)self->_akSignInVC setContext:v12];
      v19 = v12;
      signInView = self->_signInView;
      v16 = [(AKTapToSignInViewController *)self->_akSignInVC view];
      [(CNFRegSigninLearnMoreView *)signInView setAuthKitSignInView:v16];
    }

    [(CNFRegSigninLearnMoreView *)self->_signInView setController:self];
    v22.receiver = self;
    v22.super_class = CNFRegSplashSignInController;
    [(CNFRegListController *)&v22 tableView:v6 heightForHeaderInSection:a4];
  }

  v17 = v8;

  return v17;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = CNFRegSplashSignInController;
  v5 = [(CNFRegListController *)&v9 tableView:a3 viewForHeaderInSection:a4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(CNFRegListController *)self regController];
      [v6 setServiceType:{objc_msgSend(v7, "serviceType")}];
    }
  }

  return v5;
}

- (void)tapToSignInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__CNFRegSplashSignInController_tapToSignInViewController_didAuthenticateWithResults_error___block_invoke;
  block[3] = &unk_278DE80D8;
  v12 = v8;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v8;
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