@interface IAMWebMessagePresentationCoordinator
- (BOOL)present;
- (IAMWebMessagePresentationCoordinator)initWithWebMessageEntry:(id)entry webArchiveURL:(id)l;
- (IAMWebMessagePresentationCoordinatorDelegate)delegate;
- (id)presentingViewController;
- (void)_dismissModalViewController:(id)controller;
- (void)_handleOpenURL:(id)l;
- (void)_handleWebMessageDismissed;
- (void)_modalViewControllerDismissalTransitionDidEnd:(id)end;
- (void)load;
- (void)viewController:(id)controller didReportDismissalAction:(int64_t)action;
- (void)webMessageControllerWebViewDidReportEvent:(id)event event:(id)a4;
- (void)webMessageControllerWebViewDidRequestAction:(id)action actionConfiguration:(id)configuration options:(id)options;
- (void)webMessageControllerWebViewDidRequestOpenURL:(id)l url:(id)url options:(id)options;
@end

@implementation IAMWebMessagePresentationCoordinator

- (IAMWebMessagePresentationCoordinator)initWithWebMessageEntry:(id)entry webArchiveURL:(id)l
{
  entryCopy = entry;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = IAMWebMessagePresentationCoordinator;
  v9 = [(IAMWebMessagePresentationCoordinator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webMessageEntry, entry);
    v11 = [lCopy copy];
    webArchiveURL = v10->_webArchiveURL;
    v10->_webArchiveURL = v11;

    v10->_isPresenting = 0;
  }

  return v10;
}

- (id)presentingViewController
{
  delegate = [(IAMWebMessagePresentationCoordinator *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(IAMWebMessagePresentationCoordinator *)self delegate];
    v6 = [delegate2 viewControllerForModalPresentationUsingCoordinator:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)load
{
  v3 = objc_opt_new();
  [(IAMWebMessagePresentationCoordinator *)self setWebMessageController:v3];

  webMessageController = [(IAMWebMessagePresentationCoordinator *)self webMessageController];
  [webMessageController setDelegate:self];

  webMessageController2 = [(IAMWebMessagePresentationCoordinator *)self webMessageController];
  webMessageEntry = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
  webArchiveURL = self->_webArchiveURL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__IAMWebMessagePresentationCoordinator_load__block_invoke;
  v8[3] = &unk_2797A6FD0;
  v8[4] = self;
  [webMessageController2 loadMessageFromMessageEntry:webMessageEntry withWebArchiveURL:webArchiveURL completionHandler:v8];
}

void __44__IAMWebMessagePresentationCoordinator_load__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IAMLogCategoryDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) webMessageEntry];
      v7 = [v6 applicationMessage];
      v8 = [v7 identifier];
      v9 = [*(*(a1 + 32) + 8) absoluteString];
      v18 = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = v3;
      _os_log_impl(&dword_254AF4000, v5, OS_LOG_TYPE_ERROR, "WebView for message identifier = %{public}@ - webArchiveURL = %{public}@, did fail navigation with error = %{public}@", &v18, 0x20u);
    }

    v10 = [*(a1 + 32) delegate];
    [v10 webMessagePresentationCoordinatorWebMessageDidFail:*(a1 + 32)];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) webMessageEntry];
    v12 = [v11 applicationMessage];
    v13 = [v12 identifier];
    v14 = [*(*(a1 + 32) + 8) absoluteString];
    v18 = 138543618;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    _os_log_impl(&dword_254AF4000, v5, OS_LOG_TYPE_DEFAULT, "WebView for message identifier = %{public}@, did load with webArchiveURL = %{public}@", &v18, 0x16u);
  }

  v15 = [*(a1 + 32) delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v10 = [*(a1 + 32) delegate];
    [v10 webMessagePresentationCoordinatorWebMessageDidLoad:*(a1 + 32)];
LABEL_9:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)present
{
  v30 = *MEMORY[0x277D85DE8];
  presentingViewController = [(IAMWebMessagePresentationCoordinator *)self presentingViewController];
  v4 = presentingViewController;
  if (!presentingViewController)
  {
    v6 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      webMessageEntry = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
      applicationMessage = [webMessageEntry applicationMessage];
      identifier = [applicationMessage identifier];
      *buf = 138412290;
      v27 = identifier;
      v10 = "Presenting View Controller or presentation method not provided for message with identifier = %@";
      goto LABEL_7;
    }

LABEL_8:

    [(IAMWebMessagePresentationCoordinator *)self setIsPresenting:0];
    v11 = 0;
    goto LABEL_12;
  }

  presentedViewController = [presentingViewController presentedViewController];

  if (presentedViewController)
  {
    v6 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      webMessageEntry = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
      applicationMessage = [webMessageEntry applicationMessage];
      identifier = [applicationMessage identifier];
      *buf = 138412290;
      v27 = identifier;
      v10 = "Presenting View Controller is already presenting another View Controller = %@";
LABEL_7:
      _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v12 = [IAMModalWebMessageViewController alloc];
  webMessageController = [(IAMWebMessagePresentationCoordinator *)self webMessageController];
  webView = [webMessageController webView];
  v15 = [(IAMModalWebMessageViewController *)v12 initWithWebView:webView];

  applicationMessage2 = [(ICInAppMessageEntry *)self->_webMessageEntry applicationMessage];
  -[IAMModalWebMessageViewController setShouldDisplayCloseButton:](v15, "setShouldDisplayCloseButton:", [applicationMessage2 hasCloseButton]);
  [(IAMModalWebMessageViewController *)v15 setMetricsDelegate:self];
  v17 = objc_opt_new();
  [v17 setShouldPresentFullscreen:{objc_msgSend(applicationMessage2, "modalPresentationStyle") == 1}];
  [v17 setMetricsDelegate:self];
  [v17 setContentViewController:v15];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 setModalPresentationCapturesStatusBarAppearance:1];
  [v4 presentViewController:v17 animated:1 completion:0];
  [defaultCenter addObserver:self selector:sel__modalViewControllerDismissalTransitionDidEnd_ name:*MEMORY[0x277D76E30] object:v17];
  v19 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    webMessageEntry2 = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
    applicationMessage3 = [webMessageEntry2 applicationMessage];
    identifier2 = [applicationMessage3 identifier];
    absoluteString = [(NSURL *)self->_webArchiveURL absoluteString];
    *buf = 138543618;
    v27 = identifier2;
    v28 = 2114;
    v29 = absoluteString;
    _os_log_impl(&dword_254AF4000, v19, OS_LOG_TYPE_DEFAULT, "WebView for message identifier = %{public}@, did present with webArchiveURL = %{public}@", buf, 0x16u);
  }

  v11 = 1;
  [(IAMWebMessagePresentationCoordinator *)self setIsPresenting:1];

LABEL_12:
  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_modalViewControllerDismissalTransitionDidEnd:(id)end
{
  endCopy = end;
  userInfo = [endCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76E28]];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D76E30];
    object = [endCopy object];
    [defaultCenter removeObserver:self name:v8 object:object];

    [(IAMWebMessagePresentationCoordinator *)self _handleWebMessageDismissed];
  }
}

- (void)_handleWebMessageDismissed
{
  v17 = *MEMORY[0x277D85DE8];
  modalViewControllerDismissedCompletion = self->_modalViewControllerDismissedCompletion;
  if (modalViewControllerDismissedCompletion)
  {
    modalViewControllerDismissedCompletion[2](modalViewControllerDismissedCompletion, a2);
    v4 = self->_modalViewControllerDismissedCompletion;
    self->_modalViewControllerDismissedCompletion = 0;
  }

  webMessageController = [(IAMWebMessagePresentationCoordinator *)self webMessageController];
  [webMessageController unregisterExportedObjectInterface];

  webMessageController2 = [(IAMWebMessagePresentationCoordinator *)self webMessageController];
  [webMessageController2 setDelegate:0];

  [(IAMWebMessagePresentationCoordinator *)self setWebMessageController:0];
  v7 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    webMessageEntry = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
    applicationMessage = [webMessageEntry applicationMessage];
    identifier = [applicationMessage identifier];
    v15 = 138543362;
    v16 = identifier;
    _os_log_impl(&dword_254AF4000, v7, OS_LOG_TYPE_DEFAULT, "WebView for message identifier = %{public}@, did finish presentation.", &v15, 0xCu);
  }

  delegate = [(IAMWebMessagePresentationCoordinator *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(IAMWebMessagePresentationCoordinator *)self delegate];
    [delegate2 webMessagePresentationCoordinatorWebMessageDidFinishPresentation:self];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenURL:(id)l
{
  lCopy = l;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if ([mEMORY[0x277D75128] canOpenURL:lCopy])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__IAMWebMessagePresentationCoordinator__handleOpenURL___block_invoke;
    v5[3] = &unk_2797A6FF8;
    v6 = lCopy;
    [mEMORY[0x277D75128] openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:v5];
  }
}

void __55__IAMWebMessagePresentationCoordinator__handleOpenURL___block_invoke(uint64_t a1, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = IAMLogCategoryDefault();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) absoluteString];
      v11 = 138543362;
      v12 = v6;
      v7 = "Did open URL = %{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_254AF4000, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) absoluteString];
    v11 = 138543362;
    v12 = v6;
    v7 = "Unable to open URL = %{public}@";
    v8 = v5;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_dismissModalViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    if (self->_modalViewControllerDismissedCompletion)
    {
      v6 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_ERROR, "Web modal dismissed with more than one completion handler.", v10, 2u);
      }
    }

    else
    {
      v7 = MEMORY[0x259C23D00](controllerCopy);
      modalViewControllerDismissedCompletion = self->_modalViewControllerDismissedCompletion;
      self->_modalViewControllerDismissedCompletion = v7;
    }
  }

  presentingViewController = [(IAMWebMessagePresentationCoordinator *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)webMessageControllerWebViewDidReportEvent:(id)event event:(id)a4
{
  v8 = a4;
  delegate = [(IAMWebMessagePresentationCoordinator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(IAMWebMessagePresentationCoordinator *)self delegate];
    [delegate2 webMessagePresentationCoordinatorWebMessageDidReportEvent:self event:v8];
  }
}

- (void)webMessageControllerWebViewDidRequestOpenURL:(id)l url:(id)url options:(id)options
{
  lCopy = l;
  urlCopy = url;
  optionsCopy = options;
  presentingViewController = [(IAMWebMessagePresentationCoordinator *)self presentingViewController];

  if (presentingViewController && optionsCopy && ([optionsCopy objectForKey:*MEMORY[0x277D1B280]], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, v13))
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__IAMWebMessagePresentationCoordinator_webMessageControllerWebViewDidRequestOpenURL_url_options___block_invoke;
    v14[3] = &unk_2797A7020;
    objc_copyWeak(&v16, &location);
    v15 = urlCopy;
    [(IAMWebMessagePresentationCoordinator *)self _dismissModalViewController:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(IAMWebMessagePresentationCoordinator *)self _handleOpenURL:urlCopy];
  }
}

void __97__IAMWebMessagePresentationCoordinator_webMessageControllerWebViewDidRequestOpenURL_url_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleOpenURL:*(a1 + 32)];
}

- (void)webMessageControllerWebViewDidRequestAction:(id)action actionConfiguration:(id)configuration options:(id)options
{
  configurationCopy = configuration;
  optionsCopy = options;
  delegate = [(IAMWebMessagePresentationCoordinator *)self delegate];
  v10 = objc_opt_respondsToSelector();

  presentingViewController = [(IAMWebMessagePresentationCoordinator *)self presentingViewController];
  v12 = presentingViewController;
  if (optionsCopy && presentingViewController)
  {
    v13 = [optionsCopy objectForKey:*MEMORY[0x277D1B288]];
    bOOLValue = [v13 BOOLValue];

    if (bOOLValue)
    {
      if (v10)
      {
        objc_initWeak(&location, self);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __112__IAMWebMessagePresentationCoordinator_webMessageControllerWebViewDidRequestAction_actionConfiguration_options___block_invoke;
        v16[3] = &unk_2797A7020;
        objc_copyWeak(&v18, &location);
        v17 = configurationCopy;
        delegate2 = MEMORY[0x259C23D00](v16);

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        delegate2 = 0;
      }

      [(IAMWebMessagePresentationCoordinator *)self _dismissModalViewController:delegate2];
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (v10)
  {
    delegate2 = [(IAMWebMessagePresentationCoordinator *)self delegate];
    [delegate2 webMessagePresentationCoordinatorWebMessageDidRequestAction:self actionConfiguration:configurationCopy];
LABEL_11:
  }
}

void __112__IAMWebMessagePresentationCoordinator_webMessageControllerWebViewDidRequestAction_actionConfiguration_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 webMessagePresentationCoordinatorWebMessageDidRequestAction:WeakRetained actionConfiguration:*(a1 + 32)];
}

- (void)viewController:(id)controller didReportDismissalAction:(int64_t)action
{
  webMessageEntry = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
  applicationMessage = [webMessageEntry applicationMessage];
  contentPagesCount = [applicationMessage contentPagesCount];

  if (!contentPagesCount)
  {
    return;
  }

  webMessageEntry2 = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
  applicationMessage2 = [webMessageEntry2 applicationMessage];
  v17 = [applicationMessage2 contentPagesAtIndex:0];

  if (action == 1)
  {
    if ([v17 hasCardClickEvent])
    {
      cardClickEvent = [v17 cardClickEvent];
      goto LABEL_9;
    }
  }

  else if (!action && [v17 hasCloseClickEvent])
  {
    cardClickEvent = [v17 closeClickEvent];
LABEL_9:
    v12 = cardClickEvent;
    reportableDictionary = [cardClickEvent reportableDictionary];

    if (reportableDictionary)
    {
      delegate = [(IAMWebMessagePresentationCoordinator *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        delegate2 = [(IAMWebMessagePresentationCoordinator *)self delegate];
        [delegate2 webMessagePresentationCoordinatorWebMessageDidReportEvent:self event:reportableDictionary];
      }
    }

    goto LABEL_13;
  }

  reportableDictionary = 0;
LABEL_13:
}

- (IAMWebMessagePresentationCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end