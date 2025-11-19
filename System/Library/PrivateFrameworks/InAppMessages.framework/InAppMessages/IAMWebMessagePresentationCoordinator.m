@interface IAMWebMessagePresentationCoordinator
- (BOOL)present;
- (IAMWebMessagePresentationCoordinator)initWithWebMessageEntry:(id)a3 webArchiveURL:(id)a4;
- (IAMWebMessagePresentationCoordinatorDelegate)delegate;
- (id)presentingViewController;
- (void)_dismissModalViewController:(id)a3;
- (void)_handleOpenURL:(id)a3;
- (void)_handleWebMessageDismissed;
- (void)_modalViewControllerDismissalTransitionDidEnd:(id)a3;
- (void)load;
- (void)viewController:(id)a3 didReportDismissalAction:(int64_t)a4;
- (void)webMessageControllerWebViewDidReportEvent:(id)a3 event:(id)a4;
- (void)webMessageControllerWebViewDidRequestAction:(id)a3 actionConfiguration:(id)a4 options:(id)a5;
- (void)webMessageControllerWebViewDidRequestOpenURL:(id)a3 url:(id)a4 options:(id)a5;
@end

@implementation IAMWebMessagePresentationCoordinator

- (IAMWebMessagePresentationCoordinator)initWithWebMessageEntry:(id)a3 webArchiveURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IAMWebMessagePresentationCoordinator;
  v9 = [(IAMWebMessagePresentationCoordinator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webMessageEntry, a3);
    v11 = [v8 copy];
    webArchiveURL = v10->_webArchiveURL;
    v10->_webArchiveURL = v11;

    v10->_isPresenting = 0;
  }

  return v10;
}

- (id)presentingViewController
{
  v3 = [(IAMWebMessagePresentationCoordinator *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(IAMWebMessagePresentationCoordinator *)self delegate];
    v6 = [v5 viewControllerForModalPresentationUsingCoordinator:self];
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

  v4 = [(IAMWebMessagePresentationCoordinator *)self webMessageController];
  [v4 setDelegate:self];

  v5 = [(IAMWebMessagePresentationCoordinator *)self webMessageController];
  v6 = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
  webArchiveURL = self->_webArchiveURL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__IAMWebMessagePresentationCoordinator_load__block_invoke;
  v8[3] = &unk_2797A6FD0;
  v8[4] = self;
  [v5 loadMessageFromMessageEntry:v6 withWebArchiveURL:webArchiveURL completionHandler:v8];
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
  v3 = [(IAMWebMessagePresentationCoordinator *)self presentingViewController];
  v4 = v3;
  if (!v3)
  {
    v6 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
      v8 = [v7 applicationMessage];
      v9 = [v8 identifier];
      *buf = 138412290;
      v27 = v9;
      v10 = "Presenting View Controller or presentation method not provided for message with identifier = %@";
      goto LABEL_7;
    }

LABEL_8:

    [(IAMWebMessagePresentationCoordinator *)self setIsPresenting:0];
    v11 = 0;
    goto LABEL_12;
  }

  v5 = [v3 presentedViewController];

  if (v5)
  {
    v6 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
      v8 = [v7 applicationMessage];
      v9 = [v8 identifier];
      *buf = 138412290;
      v27 = v9;
      v10 = "Presenting View Controller is already presenting another View Controller = %@";
LABEL_7:
      _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v12 = [IAMModalWebMessageViewController alloc];
  v13 = [(IAMWebMessagePresentationCoordinator *)self webMessageController];
  v14 = [v13 webView];
  v15 = [(IAMModalWebMessageViewController *)v12 initWithWebView:v14];

  v16 = [(ICInAppMessageEntry *)self->_webMessageEntry applicationMessage];
  -[IAMModalWebMessageViewController setShouldDisplayCloseButton:](v15, "setShouldDisplayCloseButton:", [v16 hasCloseButton]);
  [(IAMModalWebMessageViewController *)v15 setMetricsDelegate:self];
  v17 = objc_opt_new();
  [v17 setShouldPresentFullscreen:{objc_msgSend(v16, "modalPresentationStyle") == 1}];
  [v17 setMetricsDelegate:self];
  [v17 setContentViewController:v15];
  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 setModalPresentationCapturesStatusBarAppearance:1];
  [v4 presentViewController:v17 animated:1 completion:0];
  [v18 addObserver:self selector:sel__modalViewControllerDismissalTransitionDidEnd_ name:*MEMORY[0x277D76E30] object:v17];
  v19 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
    v20 = [v25 applicationMessage];
    v21 = [v20 identifier];
    v22 = [(NSURL *)self->_webArchiveURL absoluteString];
    *buf = 138543618;
    v27 = v21;
    v28 = 2114;
    v29 = v22;
    _os_log_impl(&dword_254AF4000, v19, OS_LOG_TYPE_DEFAULT, "WebView for message identifier = %{public}@, did present with webArchiveURL = %{public}@", buf, 0x16u);
  }

  v11 = 1;
  [(IAMWebMessagePresentationCoordinator *)self setIsPresenting:1];

LABEL_12:
  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_modalViewControllerDismissalTransitionDidEnd:(id)a3
{
  v10 = a3;
  v4 = [v10 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D76E28]];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D76E30];
    v9 = [v10 object];
    [v7 removeObserver:self name:v8 object:v9];

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

  v5 = [(IAMWebMessagePresentationCoordinator *)self webMessageController];
  [v5 unregisterExportedObjectInterface];

  v6 = [(IAMWebMessagePresentationCoordinator *)self webMessageController];
  [v6 setDelegate:0];

  [(IAMWebMessagePresentationCoordinator *)self setWebMessageController:0];
  v7 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
    v9 = [v8 applicationMessage];
    v10 = [v9 identifier];
    v15 = 138543362;
    v16 = v10;
    _os_log_impl(&dword_254AF4000, v7, OS_LOG_TYPE_DEFAULT, "WebView for message identifier = %{public}@, did finish presentation.", &v15, 0xCu);
  }

  v11 = [(IAMWebMessagePresentationCoordinator *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(IAMWebMessagePresentationCoordinator *)self delegate];
    [v13 webMessagePresentationCoordinatorWebMessageDidFinishPresentation:self];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleOpenURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  if ([v4 canOpenURL:v3])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__IAMWebMessagePresentationCoordinator__handleOpenURL___block_invoke;
    v5[3] = &unk_2797A6FF8;
    v6 = v3;
    [v4 openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:v5];
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

- (void)_dismissModalViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
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
      v7 = MEMORY[0x259C23D00](v4);
      modalViewControllerDismissedCompletion = self->_modalViewControllerDismissedCompletion;
      self->_modalViewControllerDismissedCompletion = v7;
    }
  }

  v9 = [(IAMWebMessagePresentationCoordinator *)self presentingViewController];
  [v9 dismissViewControllerAnimated:1 completion:0];
}

- (void)webMessageControllerWebViewDidReportEvent:(id)a3 event:(id)a4
{
  v8 = a4;
  v5 = [(IAMWebMessagePresentationCoordinator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IAMWebMessagePresentationCoordinator *)self delegate];
    [v7 webMessagePresentationCoordinatorWebMessageDidReportEvent:self event:v8];
  }
}

- (void)webMessageControllerWebViewDidRequestOpenURL:(id)a3 url:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IAMWebMessagePresentationCoordinator *)self presentingViewController];

  if (v11 && v10 && ([v10 objectForKey:*MEMORY[0x277D1B280]], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, v13))
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__IAMWebMessagePresentationCoordinator_webMessageControllerWebViewDidRequestOpenURL_url_options___block_invoke;
    v14[3] = &unk_2797A7020;
    objc_copyWeak(&v16, &location);
    v15 = v9;
    [(IAMWebMessagePresentationCoordinator *)self _dismissModalViewController:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(IAMWebMessagePresentationCoordinator *)self _handleOpenURL:v9];
  }
}

void __97__IAMWebMessagePresentationCoordinator_webMessageControllerWebViewDidRequestOpenURL_url_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleOpenURL:*(a1 + 32)];
}

- (void)webMessageControllerWebViewDidRequestAction:(id)a3 actionConfiguration:(id)a4 options:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(IAMWebMessagePresentationCoordinator *)self delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = [(IAMWebMessagePresentationCoordinator *)self presentingViewController];
  v12 = v11;
  if (v8 && v11)
  {
    v13 = [v8 objectForKey:*MEMORY[0x277D1B288]];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      if (v10)
      {
        objc_initWeak(&location, self);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __112__IAMWebMessagePresentationCoordinator_webMessageControllerWebViewDidRequestAction_actionConfiguration_options___block_invoke;
        v16[3] = &unk_2797A7020;
        objc_copyWeak(&v18, &location);
        v17 = v7;
        v15 = MEMORY[0x259C23D00](v16);

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        v15 = 0;
      }

      [(IAMWebMessagePresentationCoordinator *)self _dismissModalViewController:v15];
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (v10)
  {
    v15 = [(IAMWebMessagePresentationCoordinator *)self delegate];
    [v15 webMessagePresentationCoordinatorWebMessageDidRequestAction:self actionConfiguration:v7];
LABEL_11:
  }
}

void __112__IAMWebMessagePresentationCoordinator_webMessageControllerWebViewDidRequestAction_actionConfiguration_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 webMessagePresentationCoordinatorWebMessageDidRequestAction:WeakRetained actionConfiguration:*(a1 + 32)];
}

- (void)viewController:(id)a3 didReportDismissalAction:(int64_t)a4
{
  v6 = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
  v7 = [v6 applicationMessage];
  v8 = [v7 contentPagesCount];

  if (!v8)
  {
    return;
  }

  v9 = [(IAMWebMessagePresentationCoordinator *)self webMessageEntry];
  v10 = [v9 applicationMessage];
  v17 = [v10 contentPagesAtIndex:0];

  if (a4 == 1)
  {
    if ([v17 hasCardClickEvent])
    {
      v11 = [v17 cardClickEvent];
      goto LABEL_9;
    }
  }

  else if (!a4 && [v17 hasCloseClickEvent])
  {
    v11 = [v17 closeClickEvent];
LABEL_9:
    v12 = v11;
    v13 = [v11 reportableDictionary];

    if (v13)
    {
      v14 = [(IAMWebMessagePresentationCoordinator *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [(IAMWebMessagePresentationCoordinator *)self delegate];
        [v16 webMessagePresentationCoordinatorWebMessageDidReportEvent:self event:v13];
      }
    }

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:
}

- (IAMWebMessagePresentationCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end