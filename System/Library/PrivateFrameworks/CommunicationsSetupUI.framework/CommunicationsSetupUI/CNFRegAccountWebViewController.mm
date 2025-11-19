@interface CNFRegAccountWebViewController
- (BOOL)_loadURLFromBag;
- (BOOL)canSendURLRequest:(id)a3;
- (BOOL)shouldSetHeadersForRequest:(id)a3;
- (CNFRegAccountWebViewController)initWithRegController:(id)a3;
- (id)_nonModalParentController;
- (id)_viewPortForNormalPresentation;
- (id)clientInfoHeaderValue;
- (id)interfaceLayoutHeaderValue;
- (id)pushTokenHeaderValue;
- (id)securityHeaderValue;
- (id)serviceHeaderValue;
- (id)viewPortHeaderValue;
- (void)_bagLoadTimeout:(id)a3;
- (void)_handleFTServerBagFinishedLoading;
- (void)_reload;
- (void)_reloadDelayed;
- (void)_showGenericErrorWithHandler;
- (void)_showURLDidNotLoadAlert;
- (void)_startBagLoadTimer;
- (void)_startListeningForBagLoad;
- (void)_stopBagLoadTimer;
- (void)_stopListeningForBagLoad;
- (void)dealloc;
- (void)loadView;
- (void)setHeadersForRequest:(id)a3;
- (void)viewDidLoad;
@end

@implementation CNFRegAccountWebViewController

- (CNFRegAccountWebViewController)initWithRegController:(id)a3
{
  v4 = a3;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "CNFRegAccountWebViewController initWithRegController", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v13.receiver = self;
  v13.super_class = CNFRegAccountWebViewController;
  v6 = [(CNFRegServerWebViewController *)&v13 initWithRegController:v4];
  if (v6)
  {
    v7 = [MEMORY[0x277D07DF0] sharedInstance];
    v8 = [v7 isLoaded];
    v9 = [(CNFRegServerWebViewController *)v6 _shouldLog];
    if (v8)
    {
      if (v9)
      {
        v10 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "CNFRegAccountWebViewController bag already loaded", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          IMLogString();
        }
      }
    }

    else
    {
      if (v9)
      {
        v11 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "CNFRegAccountWebViewController starting bag load", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          IMLogString();
        }
      }

      [v7 startBagLoad];
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(NSTimer *)self->_bagLoadTimer invalidate];
  bagLoadTimer = self->_bagLoadTimer;
  self->_bagLoadTimer = 0;

  v5.receiver = self;
  v5.super_class = CNFRegAccountWebViewController;
  [(CNFRegServerWebViewController *)&v5 dealloc];
}

- (void)loadView
{
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "CNFRegAccountWebViewController loadView", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v19.receiver = self;
  v19.super_class = CNFRegAccountWebViewController;
  [(CNFRegServerWebViewController *)&v19 loadView];
  v4 = +[CNFRegAppearanceController globalAppearanceController];
  v5 = [v4 webViewBackgroundColor];
  v6 = [(CNFRegAccountWebViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [v4 webViewIsOpaque];
  v8 = [(CNFRegAccountWebViewController *)self view];
  [v8 setOpaque:v7];

  v9 = [v4 webViewBackgroundView];
  v10 = [(CNFRegAccountWebViewController *)self view];
  [v10 bounds];
  [v9 setFrame:?];

  v11 = [(CNFRegAccountWebViewController *)self view];
  [v11 addSubview:v9];

  v12 = [(CNFRegAccountWebViewController *)self view];
  [v12 sendSubviewToBack:v9];

  v13 = CommunicationsSetupUIBundle();
  v14 = CNFRegStringTableName();
  v15 = [v13 localizedStringForKey:@"FACETIME_ACCOUNT_PAGE_TITLE" value:&stru_2856D3978 table:v14];
  v16 = [(CNFRegAccountWebViewController *)self navigationItem];
  [v16 setTitle:v15];

  v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelTapped];
  v18 = [(CNFRegAccountWebViewController *)self navigationItem];
  [v18 setLeftBarButtonItem:v17];
}

- (void)viewDidLoad
{
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "CNFRegAccountWebViewController viewDidLoad", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v6.receiver = self;
  v6.super_class = CNFRegAccountWebViewController;
  [(CNFRegServerWebViewController *)&v6 viewDidLoad];
  if (![(CNFRegAccountWebViewController *)self _loadURLFromBag])
  {
    [(CNFRegServerWebViewController *)self showSpinner];
    v4 = [MEMORY[0x277D07DF0] sharedInstance];
    v5 = [v4 isLoaded];

    if (v5)
    {
      [(CNFRegAccountWebViewController *)self setFailedBagLoad:1];
    }

    else
    {
      [(CNFRegAccountWebViewController *)self _startListeningForBagLoad];
      [(CNFRegAccountWebViewController *)self _startBagLoadTimer];
    }
  }
}

- (BOOL)shouldSetHeadersForRequest:(id)a3
{
  v3 = [a3 valueForHTTPHeaderField:@"x-protocol-version"];
  v4 = v3 == 0;

  return v4;
}

- (void)setHeadersForRequest:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNFRegAccountWebViewController;
  [(CNFRegServerWebViewController *)&v10 setHeadersForRequest:v4];
  [v4 addValue:@"6" forHTTPHeaderField:@"x-protocol-version"];
  v5 = [(CNFRegAccountWebViewController *)self clientInfoHeaderValue];
  if (v5)
  {
    [v4 addValue:v5 forHTTPHeaderField:@"x-apple-client-info"];
  }

  v6 = [(CNFRegAccountWebViewController *)self viewPortHeaderValue];
  if (v6)
  {
    [v4 addValue:v6 forHTTPHeaderField:@"x-vc-view-res"];
  }

  v7 = [(CNFRegAccountWebViewController *)self securityHeaderValue];
  if (v7)
  {
    [v4 addValue:v7 forHTTPHeaderField:@"x-ds-client-id"];
  }

  v8 = [(CNFRegAccountWebViewController *)self serviceHeaderValue];
  if (v8)
  {
    [v4 addValue:v8 forHTTPHeaderField:@"x-vc-service"];
  }

  v9 = [(CNFRegAccountWebViewController *)self interfaceLayoutHeaderValue];
  if (v9)
  {
    [v4 addValue:v9 forHTTPHeaderField:@"x-vc-ui-layout"];
  }
}

- (BOOL)canSendURLRequest:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CNFRegAccountWebViewController;
  if (![(CNFRegServerWebViewController *)&v20 canSendURLRequest:v4])
  {
    goto LABEL_45;
  }

  v5 = [v4 valueForHTTPHeaderField:@"x-apple-client-info"];

  if (!v5)
  {
    if (![(CNFRegServerWebViewController *)self _shouldLog])
    {
      goto LABEL_45;
    }

    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "No client info for request, denying send", v19, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || (IMShouldLog() & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_44:
    IMLogString();
LABEL_45:
    v11 = 0;
    goto LABEL_46;
  }

  v6 = [v4 valueForHTTPHeaderField:@"x-ds-client-id"];

  if (!v6)
  {
    if (![(CNFRegServerWebViewController *)self _shouldLog])
    {
      goto LABEL_45;
    }

    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "No security header for request, denying send", v19, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || (IMShouldLog() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v7 = [v4 valueForHTTPHeaderField:@"x-protocol-version"];

  if (!v7)
  {
    if (![(CNFRegServerWebViewController *)self _shouldLog])
    {
      goto LABEL_45;
    }

    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "No protocol header for request, denying send", v19, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || (IMShouldLog() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v8 = [v4 valueForHTTPHeaderField:@"x-vc-service"];

  if (!v8)
  {
    if (![(CNFRegServerWebViewController *)self _shouldLog])
    {
      goto LABEL_45;
    }

    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "No service header for request, denying send", v19, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || (IMShouldLog() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v9 = [v4 valueForHTTPHeaderField:@"x-vc-ui-layout"];

  if (!v9)
  {
    if (![(CNFRegServerWebViewController *)self _shouldLog])
    {
      goto LABEL_45;
    }

    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_DEFAULT, "No layout header for request, denying send", v19, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || (IMShouldLog() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v10 = [v4 valueForHTTPHeaderField:@"x-vc-view-res"];

  if (!v10)
  {
    if (![(CNFRegServerWebViewController *)self _shouldLog])
    {
      goto LABEL_45;
    }

    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_DEFAULT, "No viewport header for request, denying send", v19, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || (IMShouldLog() & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v11 = 1;
LABEL_46:

  return v11;
}

- (void)_reload
{
  if (![(CNFRegServerWebViewController *)self isLoading])
  {

    [(CNFRegAccountWebViewController *)self _loadURLFromBag];
  }
}

- (void)_reloadDelayed
{
  [(CNFRegAccountWebViewController *)self _stopCurrentReload];

  [(CNFRegAccountWebViewController *)self performSelector:sel__reload withObject:0 afterDelay:0.0];
}

- (BOOL)_loadURLFromBag
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(CNFRegAccountWebViewController *)self bagKey];
  v4 = [MEMORY[0x277CBEBD0] CNFRegServerURLOverride];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    if (v5)
    {
      v6 = @"defaults override";
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v3)
  {
    v12 = [MEMORY[0x277D07DF0] sharedInstance];
    v5 = [v12 urlWithKey:v3];

    if (v5)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"bag key {%@}", v3];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Found url via %@ : %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    [(CNFRegServerWebViewController *)self loadURL:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_showURLDidNotLoadAlert
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CNFRegAccountWebViewController *)self bagKey];
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Server bag finished loading, but could not find url for key : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v17 = [(CNFRegAccountWebViewController *)self bagKey];
      IMLogString();
    }
  }

  v5 = CommunicationsSetupUIBundle();
  v6 = CNFRegStringTableName();
  v7 = [v5 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v6];

  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_GENERIC" value:&stru_2856D3978 table:v9];

  v11 = CommunicationsSetupUIBundle();
  v12 = CNFRegStringTableName();
  v13 = [v11 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v12];

  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v10 preferredStyle:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__CNFRegAccountWebViewController__showURLDidNotLoadAlert__block_invoke;
  v18[3] = &unk_278DE8328;
  v18[4] = self;
  v15 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:0 handler:v18];
  [v14 addAction:v15];

  [(CNFRegAccountWebViewController *)self presentViewController:v14 animated:1 completion:0];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_bagLoadTimeout:(id)a3
{
  v4 = a3;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Bag load timed out", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  [(CNFRegAccountWebViewController *)self _stopBagLoadTimer];
  [(CNFRegAccountWebViewController *)self _stopListeningForBagLoad];
  [(CNFRegAccountWebViewController *)self _showURLDidNotLoadAlert];
}

- (void)_startBagLoadTimer
{
  if (!self->_bagLoadTimer)
  {
    v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__bagLoadTimeout_ selector:0 userInfo:0 repeats:15.0];
    bagLoadTimer = self->_bagLoadTimer;
    self->_bagLoadTimer = v3;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_stopBagLoadTimer
{
  bagLoadTimer = self->_bagLoadTimer;
  if (bagLoadTimer)
  {
    [(NSTimer *)bagLoadTimer invalidate];
    v4 = self->_bagLoadTimer;
    self->_bagLoadTimer = 0;
  }
}

- (void)_handleFTServerBagFinishedLoading
{
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Server bag finished loading", v4, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  if ([(CNFRegAccountWebViewController *)self _loadURLFromBag])
  {
    [(CNFRegAccountWebViewController *)self _stopListeningForBagLoad];
    [(CNFRegAccountWebViewController *)self _stopBagLoadTimer];
  }

  else
  {
    [(CNFRegAccountWebViewController *)self _showURLDidNotLoadAlert];
  }
}

- (void)_startListeningForBagLoad
{
  if (!self->_listeningForBagLoad)
  {
    if ([(CNFRegServerWebViewController *)self _shouldLog])
    {
      v3 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Started listening for bag load", v6, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (IMShouldLog())
        {
          IMLogString();
        }
      }
    }

    v4 = [MEMORY[0x277D07DF0] sharedInstance];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__handleFTServerBagFinishedLoading name:*MEMORY[0x277D07D98] object:v4];
    self->_listeningForBagLoad = 1;
  }
}

- (void)_stopListeningForBagLoad
{
  if (self->_listeningForBagLoad)
  {
    if ([(CNFRegServerWebViewController *)self _shouldLog])
    {
      v3 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Stopped listening for bag load", v6, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (IMShouldLog())
        {
          IMLogString();
        }
      }
    }

    v4 = [MEMORY[0x277D07DF0] sharedInstance];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x277D07D98] object:v4];
    self->_listeningForBagLoad = 0;
  }
}

- (void)_showGenericErrorWithHandler
{
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "_showGenericErrorWithHandler", v15, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  v6 = [v4 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v5];

  v7 = CommunicationsSetupUIBundle();
  v8 = CNFRegStringTableName();
  v9 = [v7 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_GENERIC" value:&stru_2856D3978 table:v8];

  v10 = CommunicationsSetupUIBundle();
  v11 = CNFRegStringTableName();
  v12 = [v10 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v11];

  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v9 preferredStyle:1];
  v14 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:0 handler:0];
  [v13 addAction:v14];

  [(CNFRegAccountWebViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (id)_nonModalParentController
{
  v2 = [(CNFRegAccountWebViewController *)self parentViewController];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_viewPortForNormalPresentation
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = [(CNFRegAccountWebViewController *)self _nonModalParentController];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(CNFRegAccountWebViewController *)self navigationController];
      v12 = [v11 navigationBar];
      [v12 defaultSizeForOrientation:1];
      v14 = v13;

      v7 = v7 - v14;
    }
  }

  if (v9 == 1)
  {
    v15 = 320.0;
  }

  else
  {
    v15 = v5;
  }

  v16 = [(CNFRegAccountWebViewController *)self _viewPortStringForSize:v15, v7];

  return v16;
}

- (id)viewPortHeaderValue
{
  v2 = self;
  v3 = [(CNFRegAccountWebViewController *)v2 _nonModalParentController];
  v4 = v3;
  v5 = v2;
  if (v3)
  {
    v5 = v3;
  }

  if ([(CNFRegAccountWebViewController *)v5 modalPresentationStyle]== 2)
  {
    [(CNFRegAccountWebViewController *)v2 _viewPortForFormSheetPresentation];
  }

  else
  {
    [(CNFRegAccountWebViewController *)v2 _viewPortForNormalPresentation];
  }
  v6 = ;

  return v6;
}

- (id)securityHeaderValue
{
  v2 = CUTWeakLinkClass();
  if (v2)
  {
    v2 = [v2 appleIDClientIdentifier];
  }

  return v2;
}

- (id)pushTokenHeaderValue
{
  v2 = CUTWeakLinkClass();
  if (v2)
  {
    if (pushTokenHeaderValue__pred__APSEnvironmentProduction != -1)
    {
      [CNFRegAccountWebViewController pushTokenHeaderValue];
    }

    v3 = [v2 alloc];
    v4 = [v3 initWithEnvironmentName:pushTokenHeaderValue__APSEnvironmentProduction queue:MEMORY[0x277D85CD0]];
    v2 = [v4 publicToken];
  }

  return v2;
}

void __54__CNFRegAccountWebViewController_pushTokenHeaderValue__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&pushTokenHeaderValue__APSEnvironmentProduction, v1);
}

- (id)serviceHeaderValue
{
  v2 = [(CNFRegServerWebViewController *)self regController];
  v3 = [v2 serviceType];

  if (v3 > 2)
  {
    return 0;
  }

  else
  {
    return off_278DE8700[v3];
  }
}

- (id)interfaceLayoutHeaderValue
{
  if (interfaceLayoutHeaderValue_onceToken != -1)
  {
    [CNFRegAccountWebViewController interfaceLayoutHeaderValue];
  }

  if (interfaceLayoutHeaderValue_isInPreferences)
  {
    v2 = @"k2-settings3";
  }

  else
  {
    v2 = @"k2-app3";
  }

  v3 = @"p2-settings3";
  if (!interfaceLayoutHeaderValue_isInPreferences)
  {
    v3 = @"p2-app3";
  }

  if (interfaceLayoutHeaderValue_isAniPad)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void __60__CNFRegAccountWebViewController_interfaceLayoutHeaderValue__block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  Identifier = CFBundleGetIdentifier(MainBundle);
  if (Identifier)
  {
    v2 = CFEqual(Identifier, @"com.apple.Preferences") != 0;
  }

  else
  {
    v2 = 0;
  }

  interfaceLayoutHeaderValue_isInPreferences = v2;
  v3 = [MEMORY[0x277D75418] currentDevice];
  interfaceLayoutHeaderValue_isAniPad = [v3 userInterfaceIdiom] == 1;
}

- (id)clientInfoHeaderValue
{
  if (clientInfoHeaderValue_once != -1)
  {
    [CNFRegAccountWebViewController clientInfoHeaderValue];
  }

  v3 = clientInfoHeaderValue_clientInfo;

  return v3;
}

void __55__CNFRegAccountWebViewController_clientInfoHeaderValue__block_invoke()
{
  v22 = [MEMORY[0x277D07DB0] sharedInstance];
  v0 = MEMORY[0x277CCACA8];
  v1 = [v22 model];
  v2 = [v0 stringWithFormat:@"<%@> ", v1];
  v3 = clientInfoHeaderValue_clientInfo;
  clientInfoHeaderValue_clientInfo = v2;

  v4 = clientInfoHeaderValue_clientInfo;
  v5 = [v22 productName];
  v6 = [v22 productVersion];
  v7 = [v22 productBuildVersion];
  v8 = [v4 stringByAppendingFormat:@"<%@%@;%@> ", v5, v6, v7];;
  v9 = clientInfoHeaderValue_clientInfo;
  clientInfoHeaderValue_clientInfo = v8;

  v10 = CommunicationsSetupUIBundle();
  v11 = [v10 infoDictionary];

  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 infoDictionary];

  v14 = *MEMORY[0x277CBED38];
  v15 = [v11 objectForKey:*MEMORY[0x277CBED38]];
  v16 = *MEMORY[0x277CBED58];
  v17 = [v11 objectForKey:*MEMORY[0x277CBED58]];
  v18 = [v13 objectForKey:v14];
  v19 = [v13 objectForKey:v16];
  v20 = [clientInfoHeaderValue_clientInfo stringByAppendingFormat:@"<%@/%@ (%@/%@)>", v15, v17, v18, v19];
  v21 = clientInfoHeaderValue_clientInfo;
  clientInfoHeaderValue_clientInfo = v20;
}

@end