@interface CNFRegAccountWebViewController
- (BOOL)_loadURLFromBag;
- (BOOL)canSendURLRequest:(id)request;
- (BOOL)shouldSetHeadersForRequest:(id)request;
- (CNFRegAccountWebViewController)initWithRegController:(id)controller;
- (id)_nonModalParentController;
- (id)_viewPortForNormalPresentation;
- (id)clientInfoHeaderValue;
- (id)interfaceLayoutHeaderValue;
- (id)pushTokenHeaderValue;
- (id)securityHeaderValue;
- (id)serviceHeaderValue;
- (id)viewPortHeaderValue;
- (void)_bagLoadTimeout:(id)timeout;
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
- (void)setHeadersForRequest:(id)request;
- (void)viewDidLoad;
@end

@implementation CNFRegAccountWebViewController

- (CNFRegAccountWebViewController)initWithRegController:(id)controller
{
  controllerCopy = controller;
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
  v6 = [(CNFRegServerWebViewController *)&v13 initWithRegController:controllerCopy];
  if (v6)
  {
    mEMORY[0x277D07DF0] = [MEMORY[0x277D07DF0] sharedInstance];
    isLoaded = [mEMORY[0x277D07DF0] isLoaded];
    _shouldLog = [(CNFRegServerWebViewController *)v6 _shouldLog];
    if (isLoaded)
    {
      if (_shouldLog)
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
      if (_shouldLog)
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

      [mEMORY[0x277D07DF0] startBagLoad];
    }
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
  webViewBackgroundColor = [v4 webViewBackgroundColor];
  view = [(CNFRegAccountWebViewController *)self view];
  [view setBackgroundColor:webViewBackgroundColor];

  webViewIsOpaque = [v4 webViewIsOpaque];
  view2 = [(CNFRegAccountWebViewController *)self view];
  [view2 setOpaque:webViewIsOpaque];

  webViewBackgroundView = [v4 webViewBackgroundView];
  view3 = [(CNFRegAccountWebViewController *)self view];
  [view3 bounds];
  [webViewBackgroundView setFrame:?];

  view4 = [(CNFRegAccountWebViewController *)self view];
  [view4 addSubview:webViewBackgroundView];

  view5 = [(CNFRegAccountWebViewController *)self view];
  [view5 sendSubviewToBack:webViewBackgroundView];

  v13 = CommunicationsSetupUIBundle();
  v14 = CNFRegStringTableName();
  v15 = [v13 localizedStringForKey:@"FACETIME_ACCOUNT_PAGE_TITLE" value:&stru_2856D3978 table:v14];
  navigationItem = [(CNFRegAccountWebViewController *)self navigationItem];
  [navigationItem setTitle:v15];

  v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelTapped];
  navigationItem2 = [(CNFRegAccountWebViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v17];
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
    mEMORY[0x277D07DF0] = [MEMORY[0x277D07DF0] sharedInstance];
    isLoaded = [mEMORY[0x277D07DF0] isLoaded];

    if (isLoaded)
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

- (BOOL)shouldSetHeadersForRequest:(id)request
{
  v3 = [request valueForHTTPHeaderField:@"x-protocol-version"];
  v4 = v3 == 0;

  return v4;
}

- (void)setHeadersForRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = CNFRegAccountWebViewController;
  [(CNFRegServerWebViewController *)&v10 setHeadersForRequest:requestCopy];
  [requestCopy addValue:@"6" forHTTPHeaderField:@"x-protocol-version"];
  clientInfoHeaderValue = [(CNFRegAccountWebViewController *)self clientInfoHeaderValue];
  if (clientInfoHeaderValue)
  {
    [requestCopy addValue:clientInfoHeaderValue forHTTPHeaderField:@"x-apple-client-info"];
  }

  viewPortHeaderValue = [(CNFRegAccountWebViewController *)self viewPortHeaderValue];
  if (viewPortHeaderValue)
  {
    [requestCopy addValue:viewPortHeaderValue forHTTPHeaderField:@"x-vc-view-res"];
  }

  securityHeaderValue = [(CNFRegAccountWebViewController *)self securityHeaderValue];
  if (securityHeaderValue)
  {
    [requestCopy addValue:securityHeaderValue forHTTPHeaderField:@"x-ds-client-id"];
  }

  serviceHeaderValue = [(CNFRegAccountWebViewController *)self serviceHeaderValue];
  if (serviceHeaderValue)
  {
    [requestCopy addValue:serviceHeaderValue forHTTPHeaderField:@"x-vc-service"];
  }

  interfaceLayoutHeaderValue = [(CNFRegAccountWebViewController *)self interfaceLayoutHeaderValue];
  if (interfaceLayoutHeaderValue)
  {
    [requestCopy addValue:interfaceLayoutHeaderValue forHTTPHeaderField:@"x-vc-ui-layout"];
  }
}

- (BOOL)canSendURLRequest:(id)request
{
  requestCopy = request;
  v20.receiver = self;
  v20.super_class = CNFRegAccountWebViewController;
  if (![(CNFRegServerWebViewController *)&v20 canSendURLRequest:requestCopy])
  {
    goto LABEL_45;
  }

  v5 = [requestCopy valueForHTTPHeaderField:@"x-apple-client-info"];

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

  v6 = [requestCopy valueForHTTPHeaderField:@"x-ds-client-id"];

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

  v7 = [requestCopy valueForHTTPHeaderField:@"x-protocol-version"];

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

  v8 = [requestCopy valueForHTTPHeaderField:@"x-vc-service"];

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

  v9 = [requestCopy valueForHTTPHeaderField:@"x-vc-ui-layout"];

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

  v10 = [requestCopy valueForHTTPHeaderField:@"x-vc-view-res"];

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
  bagKey = [(CNFRegAccountWebViewController *)self bagKey];
  cNFRegServerURLOverride = [MEMORY[0x277CBEBD0] CNFRegServerURLOverride];
  if (cNFRegServerURLOverride)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:cNFRegServerURLOverride];
    if (v5)
    {
      v6 = @"defaults override";
    }

    else
    {
      v6 = 0;
    }
  }

  else if (bagKey)
  {
    mEMORY[0x277D07DF0] = [MEMORY[0x277D07DF0] sharedInstance];
    v5 = [mEMORY[0x277D07DF0] urlWithKey:bagKey];

    if (v5)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"bag key {%@}", bagKey];
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
      bagKey = [(CNFRegAccountWebViewController *)self bagKey];
      *buf = 138412290;
      v20 = bagKey;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Server bag finished loading, but could not find url for key : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      bagKey2 = [(CNFRegAccountWebViewController *)self bagKey];
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

- (void)_bagLoadTimeout:(id)timeout
{
  timeoutCopy = timeout;
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

    mEMORY[0x277D07DF0] = [MEMORY[0x277D07DF0] sharedInstance];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleFTServerBagFinishedLoading name:*MEMORY[0x277D07D98] object:mEMORY[0x277D07DF0]];
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

    mEMORY[0x277D07DF0] = [MEMORY[0x277D07DF0] sharedInstance];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D07D98] object:mEMORY[0x277D07DF0]];
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
  parentViewController = [(CNFRegAccountWebViewController *)self parentViewController];
  if (parentViewController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = parentViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_viewPortForNormalPresentation
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  _nonModalParentController = [(CNFRegAccountWebViewController *)self _nonModalParentController];
  if (_nonModalParentController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      navigationController = [(CNFRegAccountWebViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar defaultSizeForOrientation:1];
      v14 = v13;

      v7 = v7 - v14;
    }
  }

  if (userInterfaceIdiom == 1)
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
  selfCopy = self;
  _nonModalParentController = [(CNFRegAccountWebViewController *)selfCopy _nonModalParentController];
  v4 = _nonModalParentController;
  v5 = selfCopy;
  if (_nonModalParentController)
  {
    v5 = _nonModalParentController;
  }

  if ([(CNFRegAccountWebViewController *)v5 modalPresentationStyle]== 2)
  {
    [(CNFRegAccountWebViewController *)selfCopy _viewPortForFormSheetPresentation];
  }

  else
  {
    [(CNFRegAccountWebViewController *)selfCopy _viewPortForNormalPresentation];
  }
  v6 = ;

  return v6;
}

- (id)securityHeaderValue
{
  appleIDClientIdentifier = CUTWeakLinkClass();
  if (appleIDClientIdentifier)
  {
    appleIDClientIdentifier = [appleIDClientIdentifier appleIDClientIdentifier];
  }

  return appleIDClientIdentifier;
}

- (id)pushTokenHeaderValue
{
  publicToken = CUTWeakLinkClass();
  if (publicToken)
  {
    if (pushTokenHeaderValue__pred__APSEnvironmentProduction != -1)
    {
      [CNFRegAccountWebViewController pushTokenHeaderValue];
    }

    v3 = [publicToken alloc];
    v4 = [v3 initWithEnvironmentName:pushTokenHeaderValue__APSEnvironmentProduction queue:MEMORY[0x277D85CD0]];
    publicToken = [v4 publicToken];
  }

  return publicToken;
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
  regController = [(CNFRegServerWebViewController *)self regController];
  serviceType = [regController serviceType];

  if (serviceType > 2)
  {
    return 0;
  }

  else
  {
    return off_278DE8700[serviceType];
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