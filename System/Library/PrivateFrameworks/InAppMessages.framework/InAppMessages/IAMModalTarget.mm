@interface IAMModalTarget
+ (BOOL)isAnyModalTargetPresentingMessage;
+ (void)initialize;
- (IAMModalTarget)initWithMessageCoordinator:(id)coordinator targetIdentifier:(id)identifier;
- (id)_applicationViewControllerForModalPresentation;
- (void)_handlePresentation:(id)presentation;
- (void)_handlePresentingMessageContextDidExpireBeforePresentation;
- (void)_presentMessage:(id)message messageEntry:(id)entry fromViewController:(id)controller withCompletion:(id)completion;
- (void)_presentWebModalMessageEntry:(id)entry withCompletion:(id)completion;
- (void)_reportMessageDidAppearWithIdentifier:(id)identifier;
- (void)_reportMessageDidDisappearWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)messageCoordinator:(id)coordinator didUpdatePriorityMessage:(id)message fromMessageEntry:(id)entry forTarget:(id)target withCompletion:(id)completion;
- (void)messageGroup:(id)group didReportModalMessagePresentationFailedWithIdentifier:(id)identifier;
- (void)messageGroup:(id)group didReportModalMessageWasDismissedWithIdentifier:(id)identifier;
- (void)messageGroup:(id)group didReportModalMessageWithIdentifier:(id)identifier actionWasPerformedWithIdentifier:(id)withIdentifier;
- (void)presentationControllerDismissalTransitionDidEnd:(id)end;
- (void)setPresentingMessageContext:(id)context;
- (void)webMessagePresentationCoordinatorWebMessageDidFail:(id)fail;
- (void)webMessagePresentationCoordinatorWebMessageDidFinishPresentation:(id)presentation;
- (void)webMessagePresentationCoordinatorWebMessageDidLoad:(id)load;
- (void)webMessagePresentationCoordinatorWebMessageDidReportEvent:(id)event event:(id)a4;
- (void)webMessagePresentationCoordinatorWebMessageDidRequestAction:(id)action actionConfiguration:(id)configuration;
@end

@implementation IAMModalTarget

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _allModalTargets = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (IAMModalTarget)initWithMessageCoordinator:(id)coordinator targetIdentifier:(id)identifier
{
  coordinatorCopy = coordinator;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = IAMModalTarget;
  v8 = [(IAMModalTarget *)&v11 init];
  if (v8)
  {
    [_allModalTargets addObject:v8];
    objc_storeWeak(&v8->_messageCoordinator, coordinatorCopy);
    objc_storeStrong(&v8->_targetIdentifier, identifier);
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

- (void)messageCoordinator:(id)coordinator didUpdatePriorityMessage:(id)message fromMessageEntry:(id)entry forTarget:(id)target withCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  messageCopy = message;
  entryCopy = entry;
  targetCopy = target;
  completionCopy = completion;
  if (messageCopy && entryCopy)
  {
    if (+[IAMModalTarget isAnyModalTargetPresentingMessage])
    {
      v17 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [messageCopy identifier];
        *buf = 138543362;
        v30 = identifier;
        _os_log_impl(&dword_254AF4000, v17, OS_LOG_TYPE_DEFAULT, "Unable to display modal message = %{public}@. Another modal message is already being displayed.", buf, 0xCu);
      }

      goto LABEL_7;
    }

    applicationContext = [coordinatorCopy applicationContext];
    if (applicationContext)
    {
      if (objc_opt_respondsToSelector() & 1) == 0 || ([applicationContext allowsModalMessageDisplay])
      {
        _applicationViewControllerForModalPresentation = [(IAMModalTarget *)self _applicationViewControllerForModalPresentation];
        if (_applicationViewControllerForModalPresentation)
        {
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __104__IAMModalTarget_messageCoordinator_didUpdatePriorityMessage_fromMessageEntry_forTarget_withCompletion___block_invoke;
          v27[3] = &unk_2797A7400;
          v28 = completionCopy;
          [(IAMModalTarget *)self _presentMessage:messageCopy messageEntry:entryCopy fromViewController:_applicationViewControllerForModalPresentation withCompletion:v27];
        }

        else
        {
          v24 = IAMLogCategoryDefault();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [messageCopy identifier];
            *buf = 138543362;
            v30 = identifier2;
            _os_log_impl(&dword_254AF4000, v24, OS_LOG_TYPE_DEFAULT, "Unable to display modal message = %{public}@. Application context did not provide a view controller from which to present.", buf, 0xCu);
          }

          (*(completionCopy + 2))(completionCopy, 0);
        }

        goto LABEL_23;
      }

      v21 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [messageCopy identifier];
        *buf = 138543362;
        v30 = identifier3;
        v23 = "Unable to display modal message = %{public}@. Host app has denied modal presentation.";
        goto LABEL_21;
      }
    }

    else
    {
      v21 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [messageCopy identifier];
        *buf = 138543362;
        v30 = identifier3;
        v23 = "Unable to display modal message = %{public}@. No application context provided to message coordinator.";
LABEL_21:
        _os_log_impl(&dword_254AF4000, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
LABEL_23:

    goto LABEL_24;
  }

LABEL_7:
  (*(completionCopy + 2))(completionCopy, 0);
LABEL_24:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)webMessagePresentationCoordinatorWebMessageDidLoad:(id)load
{
  loadCopy = load;
  presentingMessageContext = [(IAMModalTarget *)self presentingMessageContext];
  if (presentingMessageContext)
  {
    if ([loadCopy present])
    {
      message = [presentingMessageContext message];
      identifier = [message identifier];
      [(IAMModalTarget *)self _reportMessageDidAppearWithIdentifier:identifier];
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

- (void)webMessagePresentationCoordinatorWebMessageDidFail:(id)fail
{
  [(IAMWebMessagePresentationCoordinator *)self->_webMessagePresentationCoordinator setDelegate:0];
  webMessagePresentationCoordinator = self->_webMessagePresentationCoordinator;
  self->_webMessagePresentationCoordinator = 0;

  [(IAMModalTarget *)self setPresentingMessageContext:0];
}

- (void)webMessagePresentationCoordinatorWebMessageDidFinishPresentation:(id)presentation
{
  [(IAMWebMessagePresentationCoordinator *)self->_webMessagePresentationCoordinator setDelegate:0];
  webMessagePresentationCoordinator = self->_webMessagePresentationCoordinator;
  self->_webMessagePresentationCoordinator = 0;

  presentingMessageContext = [(IAMModalTarget *)self presentingMessageContext];
  v6 = presentingMessageContext;
  if (presentingMessageContext)
  {
    message = [presentingMessageContext message];
    identifier = [message identifier];
    [(IAMModalTarget *)self _reportMessageDidDisappearWithIdentifier:identifier];
  }

  else
  {
    message = IAMLogCategoryDefault();
    if (os_log_type_enabled(message, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_254AF4000, message, OS_LOG_TYPE_ERROR, "Unable to report web modal message disappearance, no presenting message context.", v9, 2u);
    }
  }

  [(IAMModalTarget *)self setPresentingMessageContext:0];
}

- (void)webMessagePresentationCoordinatorWebMessageDidReportEvent:(id)event event:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  [WeakRetained reportMetricsEvent:v5];
}

- (void)webMessagePresentationCoordinatorWebMessageDidRequestAction:(id)action actionConfiguration:(id)configuration
{
  v13 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = configurationCopy;
    _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_DEFAULT, "Web modal message requested action = %{public}@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  applicationContext = [WeakRetained applicationContext];

  if (applicationContext && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = objc_loadWeakRetained(&self->_messageCoordinator);
    [applicationContext messageCoordinator:v9 didRequestAction:configurationCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)messageGroup:(id)group didReportModalMessageWithIdentifier:(id)identifier actionWasPerformedWithIdentifier:(id)withIdentifier
{
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  [WeakRetained reportMessageWithIdentifier:identifierCopy actionWasPerformedWithIdentifier:withIdentifierCopy fromTargetWithIdentifier:self->_targetIdentifier];
}

- (void)messageGroup:(id)group didReportModalMessagePresentationFailedWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  identifierCopy = identifier;
  v8 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    groupIdentifier = [groupCopy groupIdentifier];
    v11 = 138543618;
    v12 = groupIdentifier;
    v13 = 2114;
    v14 = identifierCopy;
    _os_log_impl(&dword_254AF4000, v8, OS_LOG_TYPE_ERROR, "Message group with identifier = %{public}@ reported failure to present modal message with identifier = %{public}@.", &v11, 0x16u);
  }

  [(IAMModalTarget *)self setPresentingMessageContext:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)messageGroup:(id)group didReportModalMessageWasDismissedWithIdentifier:(id)identifier
{
  [(IAMModalTarget *)self _reportMessageDidDisappearWithIdentifier:identifier];

  [(IAMModalTarget *)self setPresentingMessageContext:0];
}

- (void)setPresentingMessageContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  p_presentingMessageContext = &self->_presentingMessageContext;
  presentingMessageContext = self->_presentingMessageContext;
  if (presentingMessageContext != contextCopy)
  {
    if (presentingMessageContext)
    {
      messageGroup = [(IAMPresentingModalMessageContext *)presentingMessageContext messageGroup];
      v9 = messageGroup;
      if (messageGroup)
      {
        [messageGroup setInternalDelegate:0];
      }

      presentationExpirationTimer = [(IAMPresentingModalMessageContext *)*p_presentingMessageContext presentationExpirationTimer];
      v11 = presentationExpirationTimer;
      if (presentationExpirationTimer)
      {
        [presentationExpirationTimer invalidate];
      }

      v12 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        message = [(IAMPresentingModalMessageContext *)*p_presentingMessageContext message];
        identifier = [message identifier];
        v21 = 138543362;
        v22 = identifier;
        _os_log_impl(&dword_254AF4000, v12, OS_LOG_TYPE_DEFAULT, "Finishing presentation of message with identifier = %{public}@.", &v21, 0xCu);
      }
    }

    if (contextCopy)
    {
      messageGroup2 = [(IAMPresentingModalMessageContext *)contextCopy messageGroup];
      v16 = messageGroup2;
      if (messageGroup2)
      {
        [messageGroup2 setInternalDelegate:self];
      }

      v17 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        message2 = [(IAMPresentingModalMessageContext *)contextCopy message];
        identifier2 = [message2 identifier];
        v21 = 138543362;
        v22 = identifier2;
        _os_log_impl(&dword_254AF4000, v17, OS_LOG_TYPE_DEFAULT, "Starting presentation of message with identifier = %{public}@.", &v21, 0xCu);
      }
    }

    objc_storeStrong(p_presentingMessageContext, context);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_reportMessageDidAppearWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = identifierCopy;
    _os_log_impl(&dword_254AF4000, v5, OS_LOG_TYPE_DEFAULT, "Modal message appeared with identifier = %{public}@.", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  [WeakRetained reportMessageDidAppearWithIdentifier:identifierCopy fromTargetWithIdentifier:self->_targetIdentifier];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_reportMessageDidDisappearWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = identifierCopy;
    _os_log_impl(&dword_254AF4000, v5, OS_LOG_TYPE_DEFAULT, "Modal message disappeared with identifier = %{public}@.", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  [WeakRetained reportMessageDidDisappearWithIdentifier:identifierCopy fromTargetWithIdentifier:self->_targetIdentifier];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_presentMessage:(id)message messageEntry:(id)entry fromViewController:(id)controller withCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entryCopy = entry;
  controllerCopy = controller;
  completionCopy = completion;
  applicationMessage = [entryCopy applicationMessage];
  hasWebArchiveURL = [applicationMessage hasWebArchiveURL];

  if (hasWebArchiveURL)
  {
    v16 = [[IAMPresentingModalMessageContext alloc] initWithMessage:messageCopy messageGroup:0 presentingViewController:controllerCopy presentationExpirationTimer:0 presentationHandler:0];
    [(IAMModalTarget *)self setPresentingMessageContext:v16];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __81__IAMModalTarget__presentMessage_messageEntry_fromViewController_withCompletion___block_invoke;
    v33[3] = &unk_2797A7400;
    v34 = completionCopy;
    [(IAMModalTarget *)self _presentWebModalMessageEntry:entryCopy withCompletion:v33];
    messageGroupIdentifier = v34;
  }

  else
  {
    messageGroupIdentifier = [messageCopy messageGroupIdentifier];
    v18 = [(NSDictionary *)self->_messageGroupsByGroupIdentifier objectForKeyedSubscript:messageGroupIdentifier];
    v19 = v18;
    if (v18)
    {
      if ([v18 shouldPerformModalMessagePresentation])
      {
        v20 = [[IAMPresentingModalMessageContext alloc] initWithMessage:messageCopy messageGroup:v19 presentingViewController:controllerCopy presentationExpirationTimer:0 presentationHandler:0];
        [(IAMModalTarget *)self setPresentingMessageContext:v20];

        [v19 performModalMessagePresentation:messageCopy fromViewController:controllerCopy];
        (*(completionCopy + 2))(completionCopy, 1);
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
        v26 = [[IAMPresentingModalMessageContext alloc] initWithMessage:messageCopy messageGroup:v19 presentingViewController:controllerCopy presentationExpirationTimer:v24 presentationHandler:v25];
        [(IAMModalTarget *)self setPresentingMessageContext:v26];

        presentationHandler = [(IAMPresentingModalMessageContext *)self->_presentingMessageContext presentationHandler];
        [v19 viewControllerForModalMessagePresentation:messageCopy completion:presentationHandler];

        (*(completionCopy + 2))(completionCopy, 1);
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
        identifier = [messageCopy identifier];
        *buf = 138543618;
        v36 = identifier;
        v37 = 2114;
        v38 = messageGroupIdentifier;
        _os_log_impl(&dword_254AF4000, v21, OS_LOG_TYPE_DEFAULT, "Unable to display modal message = %{public}@. No message group for identifier = %{public}@.", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0);
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
  applicationContext = [WeakRetained applicationContext];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_messageCoordinator);
    applicationContext2 = [v6 applicationContext];
    viewControllerForModalPresentation = [applicationContext2 viewControllerForModalPresentation];
  }

  else
  {
    viewControllerForModalPresentation = 0;
  }

  return viewControllerForModalPresentation;
}

- (void)_presentWebModalMessageEntry:(id)entry withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  completionCopy = completion;
  applicationMessage = [entryCopy applicationMessage];
  stringByDeletingPathExtension = [entryCopy cachedLocationForResourceWithIdentifier:*MEMORY[0x277D7F920]];
  if (stringByDeletingPathExtension)
  {
    goto LABEL_6;
  }

  v10 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    identifier = [applicationMessage identifier];
    v24 = 138543362;
    v25 = identifier;
    _os_log_impl(&dword_254AF4000, v10, OS_LOG_TYPE_ERROR, "Unable to display message: %{public}@ webarchive from cache. Attempting to find webarchive in host bundle", &v24, 0xCu);
  }

  webArchiveURL = [applicationMessage webArchiveURL];
  lastPathComponent = [webArchiveURL lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle URLForResource:stringByDeletingPathExtension withExtension:@"webarchive"];
  uRLByStandardizingPath = [v15 URLByStandardizingPath];

  if (uRLByStandardizingPath)
  {
    absoluteString = [uRLByStandardizingPath absoluteString];

    stringByDeletingPathExtension = absoluteString;
LABEL_6:
    v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:stringByDeletingPathExtension];
    v19 = [[IAMWebMessagePresentationCoordinator alloc] initWithWebMessageEntry:entryCopy webArchiveURL:v18];
    webMessagePresentationCoordinator = self->_webMessagePresentationCoordinator;
    self->_webMessagePresentationCoordinator = v19;

    [(IAMWebMessagePresentationCoordinator *)self->_webMessagePresentationCoordinator setDelegate:self];
    [(IAMWebMessagePresentationCoordinator *)self->_webMessagePresentationCoordinator load];
    completionCopy[2](completionCopy, 1);

    goto LABEL_7;
  }

  [(IAMModalTarget *)self setPresentingMessageContext:0];
  v22 = IAMLogCategoryDefault();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    identifier2 = [applicationMessage identifier];
    v24 = 138543618;
    v25 = identifier2;
    v26 = 2114;
    v27 = stringByDeletingPathExtension;
    _os_log_impl(&dword_254AF4000, v22, OS_LOG_TYPE_ERROR, "Unable to display message = %{public}@ and webarchive = %{public}@ No local webarchive in bundle.", &v24, 0x16u);
  }

  completionCopy[2](completionCopy, 0);
LABEL_7:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handlePresentingMessageContextDidExpireBeforePresentation
{
  v11 = *MEMORY[0x277D85DE8];
  presentingMessageContext = [(IAMModalTarget *)self presentingMessageContext];
  v4 = presentingMessageContext;
  if (presentingMessageContext)
  {
    message = [presentingMessageContext message];
    v6 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      identifier = [message identifier];
      v9 = 138543362;
      v10 = identifier;
      _os_log_impl(&dword_254AF4000, v6, OS_LOG_TYPE_ERROR, "Couldn't present modal message with identifier = %{public}@, view controller to present not provided before context expired.", &v9, 0xCu);
    }
  }

  [(IAMModalTarget *)self setPresentingMessageContext:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handlePresentation:(id)presentation
{
  v18 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  presentingMessageContext = [(IAMModalTarget *)self presentingMessageContext];
  v6 = presentingMessageContext;
  if (presentingMessageContext)
  {
    presentationExpirationTimer = [presentingMessageContext presentationExpirationTimer];
    [presentationExpirationTimer invalidate];

    presentingViewController = [v6 presentingViewController];
    message = [v6 message];
    if (presentationCopy)
    {
      if (presentingViewController)
      {
        [presentingViewController presentViewController:presentationCopy animated:1 completion:0];
        identifier = [message identifier];
        [(IAMModalTarget *)self _reportMessageDidAppearWithIdentifier:identifier];

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:self selector:sel_presentationControllerDismissalTransitionDidEnd_ name:*MEMORY[0x277D76E30] object:presentationCopy];

LABEL_13:
        goto LABEL_14;
      }

      v12 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [message identifier];
        v16 = 138543362;
        v17 = identifier2;
        v14 = "Couldn't present modal message with identifier = %{public}@, presenting view controller has been deallocated.";
        goto LABEL_11;
      }
    }

    else
    {
      v12 = IAMLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [message identifier];
        v16 = 138543362;
        v17 = identifier2;
        v14 = "Couldn't present modal message with identifier = %{public}@, no view controller to present.";
LABEL_11:
        _os_log_impl(&dword_254AF4000, v12, OS_LOG_TYPE_DEFAULT, v14, &v16, 0xCu);
      }
    }

    [(IAMModalTarget *)self setPresentingMessageContext:0];
    goto LABEL_13;
  }

  presentingViewController = IAMLogCategoryDefault();
  if (os_log_type_enabled(presentingViewController, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_254AF4000, presentingViewController, OS_LOG_TYPE_ERROR, "Couldn't present modal message, no presenting message context.", &v16, 2u);
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)presentationControllerDismissalTransitionDidEnd:(id)end
{
  endCopy = end;
  userInfo = [endCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76E28]];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *MEMORY[0x277D76E30];
    object = [endCopy object];
    [defaultCenter removeObserver:self name:v9 object:object];

    presentingMessageContext = [(IAMModalTarget *)self presentingMessageContext];
    v12 = presentingMessageContext;
    if (presentingMessageContext)
    {
      message = [presentingMessageContext message];
      identifier = [message identifier];
      [(IAMModalTarget *)self _reportMessageDidDisappearWithIdentifier:identifier];

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