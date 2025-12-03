@interface CNFRegServerWebViewController
- (BOOL)_shouldLog;
- (CNFRegServerWebViewController)init;
- (CNFRegServerWebViewController)initWithRegController:(id)controller;
- (id)parentViewControllerForObjectModel:(id)model;
- (void)_cleanupLoader;
- (void)_popObjectModelAnimated:(BOOL)animated;
- (void)_startTimeoutWithDuration:(double)duration;
- (void)_stopTimeout;
- (void)_timeoutFired:(id)fired;
- (void)applicationWillSuspend;
- (void)cancelButtonPressed:(id)pressed;
- (void)dealloc;
- (void)hideSpinner;
- (void)loadURL:(id)l;
- (void)loadView;
- (void)loader:(id)loader didFailWithError:(id)error;
- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal;
- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes;
- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method;
- (void)objectModelDidChange:(id)change;
- (void)objectModelPressedBack:(id)back;
- (void)receivedStatus:(int)status appleID:(id)d authID:(id)iD authToken:(id)token;
- (void)showSpinner;
- (void)startRequiringWifi;
- (void)stopRequiringWifi;
- (void)viewDidLoad;
- (void)viewDidUnload;
@end

@implementation CNFRegServerWebViewController

- (CNFRegServerWebViewController)initWithRegController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CNFRegServerWebViewController;
  v5 = [(CNFRegServerWebViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CNFRegServerWebViewController *)v5 setRegController:controllerCopy];
  }

  return v6;
}

- (CNFRegServerWebViewController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CNFRegServerWebViewController.m" lineNumber:51 description:{@"Do not directly instantiate a %@, use -initWithRegController: instead", objc_opt_class()}];

  return 0;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = CNFRegServerWebViewController;
  [(CNFRegServerWebViewController *)&v5 loadView];
  view = [(CNFRegServerWebViewController *)self view];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [view setBackgroundColor:whiteColor];
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
    regController = [(CNFRegServerWebViewController *)self regController];
    [regController startRequiringWifi];

    *&self->_webControllerFlags |= 8u;
  }
}

- (void)stopRequiringWifi
{
  if ((*&self->_webControllerFlags & 8) != 0)
  {
    regController = [(CNFRegServerWebViewController *)self regController];
    [regController stopRequiringWifi];

    *&self->_webControllerFlags &= ~8u;
  }
}

- (void)showSpinner
{
  view = [(CNFRegServerWebViewController *)self view];
  [view bounds];
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

  superview = [(CNFRegLoadingView *)loadingView superview];
  view2 = [(CNFRegServerWebViewController *)self view];

  v16 = view;
  if (superview != view2)
  {
    [(CNFRegLoadingView *)self->_loadingView setFrame:v7, v8, v9, v10];
    [view addSubview:self->_loadingView];
    v16 = view;
  }
}

- (void)hideSpinner
{
  [(CNFRegLoadingView *)self->_loadingView removeFromSuperview];
  loadingView = self->_loadingView;
  self->_loadingView = 0;
}

- (void)loadURL:(id)l
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = lCopy;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "LoadURL: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v16 = lCopy;
      IMLogString();
    }
  }

  if (([(CNFRegServerWebViewController *)self isViewLoaded]& 1) == 0)
  {
    [(CNFRegServerWebViewController *)self loadView];
  }

  [(CNFRegServerWebViewController *)self showSpinner];
  v6 = [(CNFRegServerWebViewController *)self overrideURLForURL:lCopy];
  if (v6 != lCopy && [(CNFRegServerWebViewController *)self _shouldLog])
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = lCopy;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Overriding URL: {%@} => {%@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v17 = lCopy;
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
      allHTTPHeaderFields = [v8 allHTTPHeaderFields];
      *buf = 138412290;
      v21 = allHTTPHeaderFields;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Request headers : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      allHTTPHeaderFields2 = [v8 allHTTPHeaderFields];
      IMLogString();
    }
  }

  if ([(CNFRegServerWebViewController *)self canSendURLRequest:v8, allHTTPHeaderFields2])
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

- (void)_popObjectModelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(NSMutableArray *)self->_objectModels count])
  {
    [CNFRegServerWebViewController _popObjectModelAnimated:];
  }

  lastObject = [(NSMutableArray *)self->_objectModels lastObject];
  displayedPages = [lastObject displayedPages];
  v6 = [displayedPages count];
  v7 = v6 - 1;
  if (v6 >= 1)
  {
    do
    {
      v8 = [displayedPages objectAtIndex:v7];
      navigationController = [(CNFRegServerWebViewController *)self navigationController];
      topViewController = [navigationController topViewController];

      if (topViewController == v8)
      {
        navigationController2 = [(CNFRegServerWebViewController *)self navigationController];
        v12 = navigationController2;
        if (v7)
        {
          v13 = 0;
        }

        else
        {
          v13 = animatedCopy;
        }

        v14 = [navigationController2 popViewControllerAnimated:v13];
      }

      v15 = v7-- + 1;
    }

    while (v15 > 1);
  }

  [lastObject setDelegate:0];
  [(NSMutableArray *)self->_objectModels removeLastObject];
}

- (id)parentViewControllerForObjectModel:(id)model
{
  v16 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      navigationController = [(CNFRegServerWebViewController *)self navigationController];
      *buf = 138412546;
      v13 = modelCopy;
      v14 = 2112;
      v15 = navigationController;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Asked for parentViewControllerForObjectModel %@  returned %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      [(CNFRegServerWebViewController *)self navigationController];
      v11 = v10 = modelCopy;
      IMLogString();
    }
  }

  v7 = [(CNFRegServerWebViewController *)self navigationController:v10];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)objectModelPressedBack:(id)back
{
  v13 = *MEMORY[0x277D85DE8];
  backCopy = back;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = backCopy;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "objectModelPressedback: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v10 = backCopy;
      IMLogString();
    }
  }

  [(CNFRegServerWebViewController *)self _cleanupLoader];
  lastObject = [(NSMutableArray *)self->_objectModels lastObject];
  if (([lastObject goBack] & 1) == 0)
  {
    navigationController = [(CNFRegServerWebViewController *)self navigationController];
    v8 = [navigationController popViewControllerAnimated:1];

    [(NSMutableArray *)self->_objectModels removeLastObject];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)objectModelDidChange:(id)change
{
  changeCopy = change;
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

- (void)cancelButtonPressed:(id)pressed
{
  pressedCopy = pressed;
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

- (void)loader:(id)loader receivedObjectModel:(id)model actionSignal:(unint64_t)signal
{
  v57 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  modelCopy = model;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      signalCopy = signal;
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "loader received object model, actionsignal = %lu", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      signalCopy2 = signal;
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

  if (signal > 2)
  {
    if (signal == 3)
    {
      clientInfo = [modelCopy clientInfo];

      if (clientInfo)
      {
        clientInfo2 = [modelCopy clientInfo];
        v16 = [clientInfo2 objectForKey:@"status"];

        if (v16)
        {
          clientInfo3 = [modelCopy clientInfo];
          v18 = [clientInfo3 objectForKey:@"status"];
          intValue = [v18 intValue];
        }

        else
        {
          intValue = 0xFFFFFFFFLL;
        }

        clientInfo4 = [modelCopy clientInfo];
        v37 = [clientInfo4 objectForKey:@"apple-id"];

        if (v37)
        {
          clientInfo5 = [modelCopy clientInfo];
          v39 = [clientInfo5 objectForKey:@"apple-id"];
          stringByRemovingPercentEncoding = [v39 stringByRemovingPercentEncoding];
        }

        else
        {
          stringByRemovingPercentEncoding = 0;
        }

        clientInfo6 = [modelCopy clientInfo];
        v42 = [clientInfo6 objectForKey:@"profile-id"];

        if (v42)
        {
          clientInfo7 = [modelCopy clientInfo];
          v44 = [clientInfo7 objectForKey:@"profile-id"];
          stringByRemovingPercentEncoding2 = [v44 stringByRemovingPercentEncoding];
        }

        else
        {
          stringByRemovingPercentEncoding2 = 0;
        }

        clientInfo8 = [modelCopy clientInfo];
        v47 = [clientInfo8 objectForKey:@"auth-token"];

        if (v47)
        {
          clientInfo9 = [modelCopy clientInfo];
          v49 = [clientInfo9 objectForKey:@"auth-token"];
          stringByRemovingPercentEncoding3 = [v49 stringByRemovingPercentEncoding];
        }

        else
        {
          stringByRemovingPercentEncoding3 = 0;
        }

        [(CNFRegServerWebViewController *)self receivedStatus:intValue appleID:stringByRemovingPercentEncoding authID:stringByRemovingPercentEncoding2 authToken:stringByRemovingPercentEncoding3];
        if ([(CNFRegServerWebViewController *)self _shouldLog])
        {
          v51 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            clientInfo10 = [modelCopy clientInfo];
            *buf = 138412290;
            signalCopy = clientInfo10;
            _os_log_impl(&dword_243BE5000, v51, OS_LOG_TYPE_DEFAULT, "Received clientInfo %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            signalCopy2 = [modelCopy clientInfo];
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

        [modelCopy setDelegate:{self, signalCopy2}];
        [(NSMutableArray *)self->_objectModels addObject:modelCopy];
        if ([(NSMutableArray *)self->_objectModels count]== 1)
        {
          defaultPages = [modelCopy defaultPages];
          v21 = [defaultPages objectAtIndex:0];

          v22 = MEMORY[0x277CBEAC0];
          v23 = CommunicationsSetupUIBundle();
          v24 = CNFRegStringTableName();
          v25 = [v23 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v24];
          v26 = [v22 dictionaryWithObjectsAndKeys:{v25, @"label", @"cancel", @"name", @"buttonBarItem", @"type", 0}];

          v27 = objc_alloc_init(MEMORY[0x277D461B8]);
          [v27 setAttributes:v26];
          [v21 setLeftNavigationBarButtonItem:v27];
          v28 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed_];
          navigationController = [(CNFRegServerWebViewController *)self navigationController];
          navigationItem = [navigationController navigationItem];
          [navigationItem setLeftBarButtonItem:v28];
        }

        navigationController2 = [(CNFRegServerWebViewController *)self navigationController];
        [modelCopy presentInParentViewController:navigationController2 animated:0];

        navigationController3 = [(CNFRegServerWebViewController *)self navigationController];
        viewControllers = [navigationController3 viewControllers];
        v34 = [viewControllers mutableCopy];

        if ([v34 count] >= 3)
        {
          [v34 removeObjectAtIndex:{objc_msgSend(v34, "count") - 2}];
        }

        navigationController4 = [(CNFRegServerWebViewController *)self navigationController];
        [navigationController4 setViewControllers:v34];
      }

      goto LABEL_46;
    }

    if (signal == 4)
    {
      [(CNFRegServerWebViewController *)self _popObjectModelAnimated:1];
      goto LABEL_46;
    }

    if (signal != 5)
    {
      goto LABEL_46;
    }

    goto LABEL_16;
  }

  if (signal != 1)
  {
    if (signal != 2)
    {
LABEL_46:
      [(CNFRegServerWebViewController *)self _cleanupLoader];
      goto LABEL_47;
    }

LABEL_16:
    [modelCopy setDelegate:{self, signalCopy2}];
    [(NSMutableArray *)self->_objectModels addObject:modelCopy];
    navigationController5 = [(CNFRegServerWebViewController *)self navigationController];
    [modelCopy presentInParentViewController:navigationController5 animated:0];

    goto LABEL_46;
  }

  [(CNFRegServerWebViewController *)self _cleanupLoader];
  [(CNFRegServerWebViewController *)self dismissViewControllerAnimated:1 completion:0];
LABEL_47:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method
{
  v31 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  linkCopy = link;
  methodCopy = method;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = linkCopy;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "objectModel:pressedLink: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v27 = linkCopy;
      IMLogString();
    }
  }

  if (!linkCopy)
  {
    goto LABEL_9;
  }

  v12 = [(RUILoader *)self->_loader URL];
  absoluteURL = [v12 absoluteURL];
  absoluteURL2 = [linkCopy absoluteURL];
  v15 = [absoluteURL isEqual:absoluteURL2];

  if ((v15 & 1) == 0)
  {
LABEL_9:
    [(CNFRegServerWebViewController *)self _cleanupLoader];
    lowercaseString = [methodCopy lowercaseString];
    v17 = [lowercaseString isEqualToString:@"post"];

    if (v17)
    {
      postbackData = [modelCopy postbackData];
    }

    else
    {
      postbackData = 0;
    }

    v19 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:linkCopy cachePolicy:1 timeoutInterval:30.0];
    v20 = v19;
    if (postbackData)
    {
      [v19 setHTTPBody:postbackData];
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
        allHTTPHeaderFields = [v20 allHTTPHeaderFields];
        *buf = 138412290;
        v30 = allHTTPHeaderFields;
        _os_log_impl(&dword_243BE5000, v21, OS_LOG_TYPE_DEFAULT, "Request headers : %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        allHTTPHeaderFields2 = [v20 allHTTPHeaderFields];
        IMLogString();
      }
    }

    if ([(CNFRegServerWebViewController *)self canSendURLRequest:v20, allHTTPHeaderFields2])
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

- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes
{
  v22 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  buttonCopy = button;
  attributesCopy = attributes;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = buttonCopy;
      v20 = 2112;
      v21 = attributesCopy;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "objectModel:pressedButton: %@ attributes: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v16 = buttonCopy;
      v17 = attributesCopy;
      IMLogString();
    }
  }

  if ([buttonCopy isEqual:{@"cancel", v16, v17}])
  {
    [(CNFRegServerWebViewController *)self cancelButtonPressed:0];
  }

  else
  {
    v12 = [attributesCopy objectForKey:@"url"];
    if ([v12 length])
    {
      v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128] openURL:v13 withCompletionHandler:0];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)loader:(id)loader didFailWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  errorCopy = error;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = errorCopy;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Loader reported Error %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v10 = errorCopy;
      IMLogString();
    }
  }

  [(CNFRegServerWebViewController *)self _cleanupLoader];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)receivedStatus:(int)status appleID:(id)d authID:(id)iD authToken:(id)token
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  tokenCopy = token;
  if ([(CNFRegServerWebViewController *)self _shouldLog])
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Received status - this should be overridden by a subclass! I'm a %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_startTimeoutWithDuration:(double)duration
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
        durationCopy = duration;
        _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Starting timeout timer with duration %0.2f", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        durationCopy2 = duration;
        IMLogString();
      }
    }

    self->_webControllerFlags.timedOut = 0;
    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timeoutFired_ selector:0 userInfo:0 repeats:{duration, *&durationCopy2}];
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

- (void)_timeoutFired:(id)fired
{
  firedCopy = fired;
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