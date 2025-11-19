@interface IAMModalTarget
+ (BOOL)isAnyModalTargetPresentingMessage;
+ (void)initialize;
- (IAMModalTarget)initWithMessageCoordinator:(id)a3 targetIdentifier:(id)a4;
- (id)_applicationViewControllerForModalPresentation;
- (void)_handlePresentation:(id)a3;
- (void)_handlePresentingMessageContextDidExpireBeforePresentation;
- (void)_presentMessage:(id)a3 messageEntry:(id)a4 fromViewController:(id)a5 withCompletion:(id)a6;
- (void)_presentWebModalMessageEntry:(id)a3 withCompletion:(id)a4;
- (void)_reportMessageDidAppearWithIdentifier:(id)a3;
- (void)_reportMessageDidDisappearWithIdentifier:(id)a3;
- (void)dealloc;
- (void)messageCoordinator:(id)a3 didUpdatePriorityMessage:(id)a4 fromMessageEntry:(id)a5 forTarget:(id)a6 withCompletion:(id)a7;
- (void)messageGroup:(id)a3 didReportModalMessagePresentationFailedWithIdentifier:(id)a4;
- (void)messageGroup:(id)a3 didReportModalMessageWasDismissedWithIdentifier:(id)a4;
- (void)messageGroup:(id)a3 didReportModalMessageWithIdentifier:(id)a4 actionWasPerformedWithIdentifier:(id)a5;
- (void)presentationControllerDismissalTransitionDidEnd:(id)a3;
- (void)setPresentingMessageContext:(id)a3;
- (void)webMessagePresentationCoordinatorWebMessageDidFail:(id)a3;
- (void)webMessagePresentationCoordinatorWebMessageDidFinishPresentation:(id)a3;
- (void)webMessagePresentationCoordinatorWebMessageDidLoad:(id)a3;
- (void)webMessagePresentationCoordinatorWebMessageDidReportEvent:(id)a3 event:(id)a4;
- (void)webMessagePresentationCoordinatorWebMessageDidRequestAction:(id)a3 actionConfiguration:(id)a4;
@end

@implementation IAMModalTarget

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _allModalTargets = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (IAMModalTarget)initWithMessageCoordinator:(id)a3 targetIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IAMModalTarget;
  v8 = [(IAMModalTarget *)&v11 init];
  if (v8)
  {
    [_allModalTargets addObject:v8];
    objc_storeWeak(&v8->_messageCoordinator, v6);
    objc_storeStrong(&v8->_targetIdentifier, a4);
    messageGroupsByGroupIdentifier = v8->_messageGroupsByGroupIdentifier;
    v8->_messageGroupsByGroupIdentifier = MEMORY[0x277CBEC10];
  }

  return v8;
}

- (void)dealloc
{
  [_allModalTargets removeObject:self];
  v3.receiver = self;
  v3.super_class = IAMModalTarget;
  [(IAMModalTarget *)&v3 dealloc];
}

- (void)messageCoordinator:(id)a3 didUpdatePriorityMessage:(id)a4 fromMessageEntry:(id)a5 forTarget:(id)a6 withCompletion:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13 && v14)
  {
    if (+[IAMModalTarget isAnyModalTargetPresentingMessage])
    {
      v17 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v13 identifier];
        *buf = 138543362;
        v30 = v18;
        _os_log_impl(&dword_254AF4000, v17, OS_LOG_TYPE_DEFAULT, "Unable to display modal message = %{public}@. Another modal message is already being displayed.", buf, 0xCu);
      }

      goto LABEL_7;
    }

    v19 = [v12 applicationContext];
    if (v19)
    {
      if (objc_opt_respondsToSelector() & 1) == 0 || ([v19 allowsModalMessageDisplay])
      {
        v20 = [(IAMModalTarget *)self _applicationViewControllerForModalPresentation];
        if (v20)
        {
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __104__IAMModalTarget_messageCoordinator_didUpdatePriorityMessage_fromMessageEntry_forTarget_withCompletion___block_invoke;
          v27[3] = &unk_2797A7400;
          v28 = v16;
          [(IAMModalTarget *)self _presentMessage:v13 messageEntry:v14 fromViewController:v20 withCompletion:v27];
        }

        else
        {
          v24 = IAMLogCategoryDefault();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v13 identifier];
            *buf = 138543362;
            v30 = v25;
            _os_log_impl(&dword_254AF4000, v24, OS_LOG_TYPE_DEFAULT, "Unable to display modal message = %{public}@. Application context did not provide a view controller from which to present.", buf, 0xCu);
          }

          (*(v16 + 2))(v16, 0);
        }

        goto LABEL_23;
      }

      v21 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v13 identifier];
        *buf = 138543362;
        v30 = v22;
        v23 = "Unable to display modal message = %{public}@. Host app has denied modal presentation.";
        goto LABEL_21;
      }
    }

    else
    {
      v21 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v13 identifier];
        *buf = 138543362;
        v30 = v22;
        v23 = "Unable to display modal message = %{public}@. No application context provided to message coordinator.";
LABEL_21:
        _os_log_impl(&dword_254AF4000, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      }
    }

    (*(v16 + 2))(v16, 0);
LABEL_23:

    goto LABEL_24;
  }

LABEL_7:
  (*(v16 + 2))(v16, 0);
LABEL_24:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)webMessagePresentationCoordinatorWebMessageDidLoad:(id)a3
{
  v4 = a3;
  v5 = [(IAMModalTarget *)self presentingMessageContext];
  if (v5)
  {
    if ([v4 present])
    {
      v6 = [v5 message];
      v7 = [v6 identifier];
      [(IAMModalTarget *)self _reportMessageDidAppearWithIdentifier:v7];
    }

    else
    {
      [(IAMWebMessagePresentationCoordinator *)self->_webMessagePresentationCoordinator setDelegate:0];
      webMessagePresentationCoordinator = self->_webMessagePresentationCoordinator;
      self->_webMessagePresentationCoordinator = 0;

      [(IAMModalTarget *)self setPresentingMessageContext:0];
    }
  }

  else
  {
    v8 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_254AF4000, v8, OS_LOG_TYPE_ERROR, "Unable to present web modal message, no presenting message context.", v10, 2u);
    }
  }
}

- (void)webMessagePresentationCoordinatorWebMessageDidFail:(id)a3
{
  [(IAMWebMessagePresentationCoordinator *)self->_webMessagePresentationCoordinator setDelegate:0];
  webMessagePresentationCoordinator = self->_webMessagePresentationCoordinator;
  self->_webMessagePresentationCoordinator = 0;

  [(IAMModalTarget *)self setPresentingMessageContext:0];
}

- (void)webMessagePresentationCoordinatorWebMessageDidFinishPresentation:(id)a3
{
  [(IAMWebMessagePresentationCoordinator *)self->_webMessagePresentationCoordinator setDelegate:0];
  webMessagePresentationCoordinator = self->_webMessagePresentationCoordinator;
  self->_webMessagePresentationCoordinator = 0;

  v5 = [(IAMModalTarget *)self presentingMessageContext];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 message];
    v8 = [v7 identifier];
    [(IAMModalTarget *)self _reportMessageDidDisappearWithIdentifier:v8];
  }

  else
  {
    v7 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_254AF4000, v7, OS_LOG_TYPE_ERROR, "Unable to report web modal message disappearance, no presenting message context.", v9, 2u);
    }
  }

  [(IAMModalTarget *)self setPresentingMessageContext:0];
}

- (void)webMessagePresentationCoordinatorWebMessageDidReportEvent:(id)a3 event:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  [WeakRetained reportMetricsEvent:v5];
}

- (void)webMessagePresentationCoordinatorWebMessageDidRequestAction:(id)a3 actionConfiguration:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_DEFAULT, "Web modal message requested action = %{public}@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  v8 = [WeakRetained applicationContext];

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = objc_loadWeakRetained(&self->_messageCoordinator);
    [v8 messageCoordinator:v9 didRequestAction:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)messageGroup:(id)a3 didReportModalMessageWithIdentifier:(id)a4 actionWasPerformedWithIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  [WeakRetained reportMessageWithIdentifier:v8 actionWasPerformedWithIdentifier:v7 fromTargetWithIdentifier:self->_targetIdentifier];
}

- (void)messageGroup:(id)a3 didReportModalMessagePresentationFailedWithIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v6 groupIdentifier];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_254AF4000, v8, OS_LOG_TYPE_ERROR, "Message group with identifier = %{public}@ reported failure to present modal message with identifier = %{public}@.", &v11, 0x16u);
  }

  [(IAMModalTarget *)self setPresentingMessageContext:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)messageGroup:(id)a3 didReportModalMessageWasDismissedWithIdentifier:(id)a4
{
  [(IAMModalTarget *)self _reportMessageDidDisappearWithIdentifier:a4];

  [(IAMModalTarget *)self setPresentingMessageContext:0];
}

- (void)setPresentingMessageContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  p_presentingMessageContext = &self->_presentingMessageContext;
  presentingMessageContext = self->_presentingMessageContext;
  if (presentingMessageContext != v5)
  {
    if (presentingMessageContext)
    {
      v8 = [(IAMPresentingModalMessageContext *)presentingMessageContext messageGroup];
      v9 = v8;
      if (v8)
      {
        [v8 setInternalDelegate:0];
      }

      v10 = [(IAMPresentingModalMessageContext *)*p_presentingMessageContext presentationExpirationTimer];
      v11 = v10;
      if (v10)
      {
        [v10 invalidate];
      }

      v12 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(IAMPresentingModalMessageContext *)*p_presentingMessageContext message];
        v14 = [v13 identifier];
        v21 = 138543362;
        v22 = v14;
        _os_log_impl(&dword_254AF4000, v12, OS_LOG_TYPE_DEFAULT, "Finishing presentation of message with identifier = %{public}@.", &v21, 0xCu);
      }
    }

    if (v5)
    {
      v15 = [(IAMPresentingModalMessageContext *)v5 messageGroup];
      v16 = v15;
      if (v15)
      {
        [v15 setInternalDelegate:self];
      }

      v17 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(IAMPresentingModalMessageContext *)v5 message];
        v19 = [v18 identifier];
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_254AF4000, v17, OS_LOG_TYPE_DEFAULT, "Starting presentation of message with identifier = %{public}@.", &v21, 0xCu);
      }
    }

    objc_storeStrong(p_presentingMessageContext, a3);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_reportMessageDidAppearWithIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_254AF4000, v5, OS_LOG_TYPE_DEFAULT, "Modal message appeared with identifier = %{public}@.", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  [WeakRetained reportMessageDidAppearWithIdentifier:v4 fromTargetWithIdentifier:self->_targetIdentifier];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_reportMessageDidDisappearWithIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_254AF4000, v5, OS_LOG_TYPE_DEFAULT, "Modal message disappeared with identifier = %{public}@.", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  [WeakRetained reportMessageDidDisappearWithIdentifier:v4 fromTargetWithIdentifier:self->_targetIdentifier];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_presentMessage:(id)a3 messageEntry:(id)a4 fromViewController:(id)a5 withCompletion:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 applicationMessage];
  v15 = [v14 hasWebArchiveURL];

  if (v15)
  {
    v16 = [[IAMPresentingModalMessageContext alloc] initWithMessage:v10 messageGroup:0 presentingViewController:v12 presentationExpirationTimer:0 presentationHandler:0];
    [(IAMModalTarget *)self setPresentingMessageContext:v16];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __81__IAMModalTarget__presentMessage_messageEntry_fromViewController_withCompletion___block_invoke;
    v33[3] = &unk_2797A7400;
    v34 = v13;
    [(IAMModalTarget *)self _presentWebModalMessageEntry:v11 withCompletion:v33];
    v17 = v34;
  }

  else
  {
    v17 = [v10 messageGroupIdentifier];
    v18 = [(NSDictionary *)self->_messageGroupsByGroupIdentifier objectForKeyedSubscript:v17];
    v19 = v18;
    if (v18)
    {
      if ([v18 shouldPerformModalMessagePresentation])
      {
        v20 = [[IAMPresentingModalMessageContext alloc] initWithMessage:v10 messageGroup:v19 presentingViewController:v12 presentationExpirationTimer:0 presentationHandler:0];
        [(IAMModalTarget *)self setPresentingMessageContext:v20];

        [v19 performModalMessagePresentation:v10 fromViewController:v12];
        (*(v13 + 2))(v13, 1);
      }

      else
      {
        objc_initWeak(buf, self);
        v23 = MEMORY[0x277CBEBB8];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __81__IAMModalTarget__presentMessage_messageEntry_fromViewController_withCompletion___block_invoke_12;
        v31[3] = &unk_2797A7450;
        objc_copyWeak(&v32, buf);
        v24 = [v23 scheduledTimerWithTimeInterval:0 repeats:v31 block:5.0];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __81__IAMModalTarget__presentMessage_messageEntry_fromViewController_withCompletion___block_invoke_3;
        v29[3] = &unk_2797A7478;
        objc_copyWeak(&v30, buf);
        v25 = MEMORY[0x259C23D00](v29);
        v26 = [[IAMPresentingModalMessageContext alloc] initWithMessage:v10 messageGroup:v19 presentingViewController:v12 presentationExpirationTimer:v24 presentationHandler:v25];
        [(IAMModalTarget *)self setPresentingMessageContext:v26];

        v27 = [(IAMPresentingModalMessageContext *)self->_presentingMessageContext presentationHandler];
        [v19 viewControllerForModalMessagePresentation:v10 completion:v27];

        (*(v13 + 2))(v13, 1);
        objc_destroyWeak(&v30);

        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v21 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v10 identifier];
        *buf = 138543618;
        v36 = v22;
        v37 = 2114;
        v38 = v17;
        _os_log_impl(&dword_254AF4000, v21, OS_LOG_TYPE_DEFAULT, "Unable to display modal message = %{public}@. No message group for identifier = %{public}@.", buf, 0x16u);
      }

      (*(v13 + 2))(v13, 0);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __81__IAMModalTarget__presentMessage_messageEntry_fromViewController_withCompletion___block_invoke_12(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__IAMModalTarget__presentMessage_messageEntry_fromViewController_withCompletion___block_invoke_2;
  block[3] = &unk_2797A7428;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __81__IAMModalTarget__presentMessage_messageEntry_fromViewController_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePresentingMessageContextDidExpireBeforePresentation];
}

void __81__IAMModalTarget__presentMessage_messageEntry_fromViewController_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__IAMModalTarget__presentMessage_messageEntry_fromViewController_withCompletion___block_invoke_4;
  v5[3] = &unk_2797A7020;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __81__IAMModalTarget__presentMessage_messageEntry_fromViewController_withCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePresentation:*(a1 + 32)];
}

- (id)_applicationViewControllerForModalPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  v4 = [WeakRetained applicationContext];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_messageCoordinator);
    v7 = [v6 applicationContext];
    v8 = [v7 viewControllerForModalPresentation];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_presentWebModalMessageEntry:(id)a3 withCompletion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 applicationMessage];
  v9 = [v6 cachedLocationForResourceWithIdentifier:*MEMORY[0x277D7F920]];
  if (v9)
  {
    goto LABEL_6;
  }

  v10 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v8 identifier];
    v24 = 138543362;
    v25 = v11;
    _os_log_impl(&dword_254AF4000, v10, OS_LOG_TYPE_ERROR, "Unable to display message: %{public}@ webarchive from cache. Attempting to find webarchive in host bundle", &v24, 0xCu);
  }

  v12 = [v8 webArchiveURL];
  v13 = [v12 lastPathComponent];
  v9 = [v13 stringByDeletingPathExtension];

  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 URLForResource:v9 withExtension:@"webarchive"];
  v16 = [v15 URLByStandardizingPath];

  if (v16)
  {
    v17 = [v16 absoluteString];

    v9 = v17;
LABEL_6:
    v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
    v19 = [[IAMWebMessagePresentationCoordinator alloc] initWithWebMessageEntry:v6 webArchiveURL:v18];
    webMessagePresentationCoordinator = self->_webMessagePresentationCoordinator;
    self->_webMessagePresentationCoordinator = v19;

    [(IAMWebMessagePresentationCoordinator *)self->_webMessagePresentationCoordinator setDelegate:self];
    [(IAMWebMessagePresentationCoordinator *)self->_webMessagePresentationCoordinator load];
    v7[2](v7, 1);

    goto LABEL_7;
  }

  [(IAMModalTarget *)self setPresentingMessageContext:0];
  v22 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = [v8 identifier];
    v24 = 138543618;
    v25 = v23;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&dword_254AF4000, v22, OS_LOG_TYPE_ERROR, "Unable to display message = %{public}@ and webarchive = %{public}@ No local webarchive in bundle.", &v24, 0x16u);
  }

  v7[2](v7, 0);
LABEL_7:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handlePresentingMessageContextDidExpireBeforePresentation
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(IAMModalTarget *)self presentingMessageContext];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 message];
    v6 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 identifier];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_ERROR, "Couldn't present modal message with identifier = %{public}@, view controller to present not provided before context expired.", &v9, 0xCu);
    }
  }

  [(IAMModalTarget *)self setPresentingMessageContext:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handlePresentation:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IAMModalTarget *)self presentingMessageContext];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 presentationExpirationTimer];
    [v7 invalidate];

    v8 = [v6 presentingViewController];
    v9 = [v6 message];
    if (v4)
    {
      if (v8)
      {
        [v8 presentViewController:v4 animated:1 completion:0];
        v10 = [v9 identifier];
        [(IAMModalTarget *)self _reportMessageDidAppearWithIdentifier:v10];

        v11 = [MEMORY[0x277CCAB98] defaultCenter];
        [v11 addObserver:self selector:sel_presentationControllerDismissalTransitionDidEnd_ name:*MEMORY[0x277D76E30] object:v4];

LABEL_13:
        goto LABEL_14;
      }

      v12 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v9 identifier];
        v16 = 138543362;
        v17 = v13;
        v14 = "Couldn't present modal message with identifier = %{public}@, presenting view controller has been deallocated.";
        goto LABEL_11;
      }
    }

    else
    {
      v12 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v9 identifier];
        v16 = 138543362;
        v17 = v13;
        v14 = "Couldn't present modal message with identifier = %{public}@, no view controller to present.";
LABEL_11:
        _os_log_impl(&dword_254AF4000, v12, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
      }
    }

    [(IAMModalTarget *)self setPresentingMessageContext:0];
    goto LABEL_13;
  }

  v8 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_254AF4000, v8, OS_LOG_TYPE_ERROR, "Couldn't present modal message, no presenting message context.", &v16, 2u);
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)presentationControllerDismissalTransitionDidEnd:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76E28]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *MEMORY[0x277D76E30];
    v10 = [v4 object];
    [v8 removeObserver:self name:v9 object:v10];

    v11 = [(IAMModalTarget *)self presentingMessageContext];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 message];
      v14 = [v13 identifier];
      [(IAMModalTarget *)self _reportMessageDidDisappearWithIdentifier:v14];

      [(IAMModalTarget *)self setPresentingMessageContext:0];
    }

    else
    {
      v15 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_impl(&dword_254AF4000, v15, OS_LOG_TYPE_ERROR, "Unable to report modal message disappearance, no presenting message context.", v16, 2u);
      }
    }
  }
}

+ (BOOL)isAnyModalTargetPresentingMessage
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = _allModalTargets;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(*(&v8 + 1) + 8 * i) + 24))
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

@end