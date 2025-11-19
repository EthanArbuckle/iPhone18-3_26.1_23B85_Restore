@interface CNFRegServerWebViewController
- (BOOL)_shouldLog;
- (CNFRegServerWebViewController)init;
- (CNFRegServerWebViewController)initWithRegController:(id)a3;
- (id)parentViewControllerForObjectModel:(id)a3;
- (void)_cleanupLoader;
- (void)_popObjectModelAnimated:(BOOL)a3;
- (void)_startTimeoutWithDuration:(double)a3;
- (void)_stopTimeout;
- (void)_timeoutFired:(id)a3;
- (void)applicationWillSuspend;
- (void)cancelButtonPressed:(id)a3;
- (void)dealloc;
- (void)hideSpinner;
- (void)loadURL:(id)a3;
- (void)loadView;
- (void)loader:(id)a3 didFailWithError:(id)a4;
- (void)loader:(id)a3 receivedObjectModel:(id)a4 actionSignal:(unint64_t)a5;
- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5;
- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5;
- (void)objectModelDidChange:(id)a3;
- (void)objectModelPressedBack:(id)a3;
- (void)receivedStatus:(int)a3 appleID:(id)a4 authID:(id)a5 authToken:(id)a6;
- (void)showSpinner;
- (void)startRequiringWifi;
- (void)stopRequiringWifi;
- (void)viewDidLoad;
- (void)viewDidUnload;
@end

@implementation CNFRegServerWebViewController

- (CNFRegServerWebViewController)initWithRegController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNFRegServerWebViewController;
  v5 = [(CNFRegServerWebViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CNFRegServerWebViewController *)v5 setRegController:v4];
  }

  return v6;
}

- (CNFRegServerWebViewController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CNFRegServerWebViewController.m" lineNumber:51 description:{@"Do not directly instantiate a %@, use -initWithRegController: instead", objc_opt_class()}];

  return 0;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = CNFRegServerWebViewController;
  [(CNFRegServerWebViewController *)&v5 loadView];
  v3 = [(CNFRegServerWebViewController *)self view];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v3 setBackgroundColor:v4];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CNFRegServerWebViewController;
  [(CNFRegServerWebViewController *)&v2 viewDidLoad];
}

- (void)viewDidUnload
{
  v2.receiver = self;
  v2.super_class = CNFRegServerWebViewController;
  [(CNFRegServerWebViewController *)&v2 viewDidUnload];
}

- (void)dealloc
{
  [(CNFRegServerWebViewController *)self _stopTimeout];
  [(RUILoader *)self->_loader cancel];
  [(RUILoader *)self->_loader setDelegate:0];
  v3.receiver = self;
  v3.super_class = CNFRegServerWebViewController;
  [(CNFRegServerWebViewController *)&v3 dealloc];
}

- (BOOL)_shouldLog
{
  webControllerFlags = self->_webControllerFlags;
  if ((webControllerFlags & 0x20) == 0)
  {
    if ([MEMORY[0x277CBEBD0] shouldShowCNFRegistrationServerLogs])
    {
      v4 = 96;
    }

    else
    {
      v4 = 32;
    }

    webControllerFlags = v4 | *&self->_webControllerFlags & 0x9F;
    *&self->_webControllerFlags = webControllerFlags;
  }

  return (webControllerFlags >> 6) & 1;
}

- (void)startRequiringWifi
{
  if ((*&self->_webControllerFlags & 0xC) == 4)
  {
    v3 = [(CNFRegServerWebViewController *)self regController];
    [v3 startRequiringWifi];

    *&self->_webControllerFlags |= 8u;
  }
}

- (void)stopRequiringWifi
{
  if ((*&self->_webControllerFlags & 8) != 0)
  {
    v3 = [(CNFRegServerWebViewController *)self regController];
    [v3 stopRequiringWifi];

    *&self->_webControllerFlags &= ~8u;
  }
}

- (void)showSpinner
{
  v17 = [(CNFRegServerWebViewController *)self view];
  [v17 bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  loadingView = self->_loadingView;
  if (!loadingView)
  {
    v12 = [[CNFRegLoadingView alloc] initWithFrame:v3, v4, v5, v6];
    v13 = self->_loadingView;
    self->_loadingView = v12;

    loadingView = self->_loadingView;
  }

  v14 = [(CNFRegLoadingView *)loadingView superview];
  v15 = [(CNFRegServerWebViewController *)self view];

  v16 = v17;
  if (v14 != v15)
  {
    [(CNFRegLoadingView *)self->_loadingView setFrame:v7, v8, v9, v10];
    [v17 addSubview:self->_loadingView];
    v16 = v17;
  }
}

- (void)hideSpinner
{
  [(CNFRegLoadingView *)self->_loadingView removeFromSuperview];
  loadingView = self->_loadingView;
  self->_loadingView = 0;
}

- (void)loadURL:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "LoadURL: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v16 = v4;
      IMLogString();
    }
  }

  if (([(CNFRegServerWebViewController *)self isViewLoaded]& 1) == 0)
  {
    [(CNFRegServerWebViewController *)self loadView];
  }

  [(CNFRegServerWebViewController *)self showSpinner];
  v6 = [(CNFRegServerWebViewController *)self overrideURLForURL:v4];
  if (v6 != v4 && [(CNFRegServerWebViewController *)self _shouldLog])
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v4;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Overriding URL: {%@} => {%@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v17 = v4;
      v19 = v6;
      IMLogString();
    }
  }

  v8 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v6 cachePolicy:1 timeoutInterval:30.0];
  if ([(CNFRegServerWebViewController *)self shouldSetHeadersForRequest:v8])
  {
    [(CNFRegServerWebViewController *)self setHeadersForRequest:v8];
  }

  if ([(CNFRegServerWebViewController *)self _shouldLog:v17])
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 allHTTPHeaderFields];
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Request headers : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v18 = [v8 allHTTPHeaderFields];
      IMLogString();
    }
  }

  if ([(CNFRegServerWebViewController *)self canSendURLRequest:v8, v18])
  {
    [v8 setValue:@"Preferences" forHTTPHeaderField:@"User-Agent"];
    [v8 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    v11 = objc_alloc_init(MEMORY[0x277D461D0]);
    loader = self->_loader;
    self->_loader = v11;

    [(RUILoader *)self->_loader setDelegate:self];
    [(RUILoader *)self->_loader loadXMLUIWithRequest:v8];
    if ([(CNFRegServerWebViewController *)self _shouldLog])
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Finished loadingXMLUIWithRequest.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }
  }

  else
  {
    if ([(CNFRegServerWebViewController *)self _shouldLog])
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "ERROR: Not allowed to send URL request, bailing", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }

    [(CNFRegServerWebViewController *)self hideSpinner];
    *&self->_webControllerFlags &= 0xFCu;
    self->_webControllerFlags.timedOut = 1;
    [(CNFRegServerWebViewController *)self _handleTimeout];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupLoader
{
  [(RUILoader *)self->_loader cancel];
  [(RUILoader *)self->_loader setDelegate:0];
  loader = self->_loader;
  self->_loader = 0;
}

- (void)_popObjectModelAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(NSMutableArray *)self->_objectModels count])
  {
    [CNFRegServerWebViewController _popObjectModelAnimated:];
  }

  v16 = [(NSMutableArray *)self->_objectModels lastObject];
  v5 = [v16 displayedPages];
  v6 = [v5 count];
  v7 = v6 - 1;
  if (v6 >= 1)
  {
    do
    {
      v8 = [v5 objectAtIndex:v7];
      v9 = [(CNFRegServerWebViewController *)self navigationController];
      v10 = [v9 topViewController];

      if (v10 == v8)
      {
        v11 = [(CNFRegServerWebViewController *)self navigationController];
        v12 = v11;
        if (v7)
        {
          v13 = 0;
        }

        else
        {
          v13 = v3;
        }

        v14 = [v11 popViewControllerAnimated:v13];
      }

      v15 = v7-- + 1;
    }

    while (v15 > 1);
  }

  [v16 setDelegate:0];
  [(NSMutableArray *)self->_objectModels removeLastObject];
}

- (id)parentViewControllerForObjectModel:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CNFRegServerWebViewController *)self navigationController];
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Asked for parentViewControllerForObjectModel %@  returned %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      [(CNFRegServerWebViewController *)self navigationController];
      v11 = v10 = v4;
      IMLogString();
    }
  }

  v7 = [(CNFRegServerWebViewController *)self navigationController:v10];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)objectModelPressedBack:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "objectModelPressedback: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v10 = v4;
      IMLogString();
    }
  }

  [(CNFRegServerWebViewController *)self _cleanupLoader];
  v6 = [(NSMutableArray *)self->_objectModels lastObject];
  if (([v6 goBack] & 1) == 0)
  {
    v7 = [(CNFRegServerWebViewController *)self navigationController];
    v8 = [v7 popViewControllerAnimated:1];

    [(NSMutableArray *)self->_objectModels removeLastObject];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)objectModelDidChange:(id)a3
{
  v4 = a3;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "objectModelDidChange", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)cancelButtonPressed:(id)a3
{
  v4 = a3;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Cancel pressed!", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  [(CNFRegServerWebViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)loader:(id)a3 receivedObjectModel:(id)a4 actionSignal:(unint64_t)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v56 = a5;
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "loader received object model, actionsignal = %lu", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v54 = a5;
      IMLogString();
    }
  }

  if (!self->_objectModels)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objectModels = self->_objectModels;
    self->_objectModels = v11;

    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:1];
  }

  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v14 = [v9 clientInfo];

      if (v14)
      {
        v15 = [v9 clientInfo];
        v16 = [v15 objectForKey:@"status"];

        if (v16)
        {
          v17 = [v9 clientInfo];
          v18 = [v17 objectForKey:@"status"];
          v19 = [v18 intValue];
        }

        else
        {
          v19 = 0xFFFFFFFFLL;
        }

        v36 = [v9 clientInfo];
        v37 = [v36 objectForKey:@"apple-id"];

        if (v37)
        {
          v38 = [v9 clientInfo];
          v39 = [v38 objectForKey:@"apple-id"];
          v40 = [v39 stringByRemovingPercentEncoding];
        }

        else
        {
          v40 = 0;
        }

        v41 = [v9 clientInfo];
        v42 = [v41 objectForKey:@"profile-id"];

        if (v42)
        {
          v43 = [v9 clientInfo];
          v44 = [v43 objectForKey:@"profile-id"];
          v45 = [v44 stringByRemovingPercentEncoding];
        }

        else
        {
          v45 = 0;
        }

        v46 = [v9 clientInfo];
        v47 = [v46 objectForKey:@"auth-token"];

        if (v47)
        {
          v48 = [v9 clientInfo];
          v49 = [v48 objectForKey:@"auth-token"];
          v50 = [v49 stringByRemovingPercentEncoding];
        }

        else
        {
          v50 = 0;
        }

        [(CNFRegServerWebViewController *)self receivedStatus:v19 appleID:v40 authID:v45 authToken:v50];
        if ([(CNFRegServerWebViewController *)self _shouldLog])
        {
          v51 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [v9 clientInfo];
            *buf = 138412290;
            v56 = v52;
            _os_log_impl(&dword_243BE5000, v51, OS_LOG_TYPE_DEFAULT, "Received clientInfo %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            v54 = [v9 clientInfo];
            IMLogString();
          }
        }
      }

      else
      {
        if ([(NSMutableArray *)self->_objectModels count])
        {
          [(NSMutableArray *)self->_objectModels removeLastObject];
        }

        [v9 setDelegate:{self, v54}];
        [(NSMutableArray *)self->_objectModels addObject:v9];
        if ([(NSMutableArray *)self->_objectModels count]== 1)
        {
          v20 = [v9 defaultPages];
          v21 = [v20 objectAtIndex:0];

          v22 = MEMORY[0x277CBEAC0];
          v23 = CommunicationsSetupUIBundle();
          v24 = CNFRegStringTableName();
          v25 = [v23 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v24];
          v26 = [v22 dictionaryWithObjectsAndKeys:{v25, @"label", @"cancel", @"name", @"buttonBarItem", @"type", 0}];

          v27 = objc_alloc_init(MEMORY[0x277D461B8]);
          [v27 setAttributes:v26];
          [v21 setLeftNavigationBarButtonItem:v27];
          v28 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
          v29 = [(CNFRegServerWebViewController *)self navigationController];
          v30 = [v29 navigationItem];
          [v30 setLeftBarButtonItem:v28];
        }

        v31 = [(CNFRegServerWebViewController *)self navigationController];
        [v9 presentInParentViewController:v31 animated:0];

        v32 = [(CNFRegServerWebViewController *)self navigationController];
        v33 = [v32 viewControllers];
        v34 = [v33 mutableCopy];

        if ([v34 count] >= 3)
        {
          [v34 removeObjectAtIndex:{objc_msgSend(v34, "count") - 2}];
        }

        v35 = [(CNFRegServerWebViewController *)self navigationController];
        [v35 setViewControllers:v34];
      }

      goto LABEL_46;
    }

    if (a5 == 4)
    {
      [(CNFRegServerWebViewController *)self _popObjectModelAnimated:1];
      goto LABEL_46;
    }

    if (a5 != 5)
    {
      goto LABEL_46;
    }

    goto LABEL_16;
  }

  if (a5 != 1)
  {
    if (a5 != 2)
    {
LABEL_46:
      [(CNFRegServerWebViewController *)self _cleanupLoader];
      goto LABEL_47;
    }

LABEL_16:
    [v9 setDelegate:{self, v54}];
    [(NSMutableArray *)self->_objectModels addObject:v9];
    v13 = [(CNFRegServerWebViewController *)self navigationController];
    [v9 presentInParentViewController:v13 animated:0];

    goto LABEL_46;
  }

  [(CNFRegServerWebViewController *)self _cleanupLoader];
  [(CNFRegServerWebViewController *)self dismissViewControllerAnimated:1 completion:0];
LABEL_47:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v9;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "objectModel:pressedLink: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v27 = v9;
      IMLogString();
    }
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  v12 = [(RUILoader *)self->_loader URL];
  v13 = [v12 absoluteURL];
  v14 = [v9 absoluteURL];
  v15 = [v13 isEqual:v14];

  if ((v15 & 1) == 0)
  {
LABEL_9:
    [(CNFRegServerWebViewController *)self _cleanupLoader];
    v16 = [v10 lowercaseString];
    v17 = [v16 isEqualToString:@"post"];

    if (v17)
    {
      v18 = [v8 postbackData];
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v9 cachePolicy:1 timeoutInterval:30.0];
    v20 = v19;
    if (v18)
    {
      [v19 setHTTPBody:v18];
      [v20 setHTTPMethod:@"POST"];
      [v20 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    }

    if ([(CNFRegServerWebViewController *)self shouldSetHeadersForRequest:v20])
    {
      [(CNFRegServerWebViewController *)self setHeadersForRequest:v20];
    }

    if ([(CNFRegServerWebViewController *)self _shouldLog])
    {
      v21 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v20 allHTTPHeaderFields];
        *buf = 138412290;
        v30 = v22;
        _os_log_impl(&dword_243BE5000, v21, OS_LOG_TYPE_DEFAULT, "Request headers : %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v28 = [v20 allHTTPHeaderFields];
        IMLogString();
      }
    }

    if ([(CNFRegServerWebViewController *)self canSendURLRequest:v20, v28])
    {
      [v20 setValue:@"Preferences" forHTTPHeaderField:@"User-Agent"];
      v23 = objc_alloc_init(MEMORY[0x277D461D0]);
      loader = self->_loader;
      self->_loader = v23;

      [(RUILoader *)self->_loader setDelegate:self];
      [(RUILoader *)self->_loader loadXMLUIWithRequest:v20];
      if ([(CNFRegServerWebViewController *)self _shouldLog])
      {
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v25, OS_LOG_TYPE_DEFAULT, "Finished loadingXMLUIWithRequest.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          IMLogString();
        }
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "objectModel:pressedButton: %@ attributes: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v16 = v9;
      v17 = v10;
      IMLogString();
    }
  }

  if ([v9 isEqual:{@"cancel", v16, v17}])
  {
    [(CNFRegServerWebViewController *)self cancelButtonPressed:0];
  }

  else
  {
    v12 = [v10 objectForKey:@"url"];
    if ([v12 length])
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
      v14 = [MEMORY[0x277D75128] sharedApplication];
      [v14 openURL:v13 withCompletionHandler:0];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)loader:(id)a3 didFailWithError:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Loader reported Error %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v10 = v7;
      IMLogString();
    }
  }

  [(CNFRegServerWebViewController *)self _cleanupLoader];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)receivedStatus:(int)a3 appleID:(id)a4 authID:(id)a5 authToken:(id)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = self;
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Received status - this should be overridden by a subclass! I'm a %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_startTimeoutWithDuration:(double)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_timeoutTimer)
  {
    if ([(CNFRegServerWebViewController *)self _shouldLog])
    {
      v5 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v11 = a3;
        _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Starting timeout timer with duration %0.2f", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v9 = a3;
        IMLogString();
      }
    }

    self->_webControllerFlags.timedOut = 0;
    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timeoutFired_ selector:0 userInfo:0 repeats:{a3, *&v9}];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopTimeout
{
  if (self->_timeoutTimer)
  {
    if ([(CNFRegServerWebViewController *)self _shouldLog])
    {
      v3 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Stopping timeout timer", v5, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (IMShouldLog())
        {
          IMLogString();
        }
      }
    }

    [(NSTimer *)self->_timeoutTimer invalidate];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }
}

- (void)_timeoutFired:(id)a3
{
  v4 = a3;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Timeout timer fired", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  [(CNFRegServerWebViewController *)self _stopTimeout];
  self->_webControllerFlags.timedOut = 1;
  [(CNFRegServerWebViewController *)self _handleTimeout];
}

- (void)applicationWillSuspend
{
  v3.receiver = self;
  v3.super_class = CNFRegServerWebViewController;
  [(CNFRegServerWebViewController *)&v3 applicationWillSuspend];
  [(CNFRegServerWebViewController *)self _stopTimeout];
  [(CNFRegServerWebViewController *)self dismissViewControllerAnimated:0 completion:0];
}

@end