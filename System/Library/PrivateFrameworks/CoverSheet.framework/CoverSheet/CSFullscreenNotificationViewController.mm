@interface CSFullscreenNotificationViewController
- (BOOL)handleEvent:(id)event;
- (CSFullscreenNotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CSNotificationDispatcher)dispatcher;
- (void)_dismissFromSignificantUserInteraction;
- (void)_handleAction:(id)action withName:(id)name;
- (void)_lockButtonPressed:(id)pressed;
- (void)_silencingHardwareButtonPressed:(id)pressed;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)dealloc;
- (void)handlePrimaryActionForView:(id)view;
- (void)handleSecondaryActionForView:(id)view;
- (void)loadView;
- (void)noteDidDismissProgrammatically;
- (void)postNotificationRequest:(id)request;
- (void)updateNotificationRequest:(id)request;
- (void)withdrawNotificationRequest:(id)request;
@end

@implementation CSFullscreenNotificationViewController

- (CSFullscreenNotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = CSFullscreenNotificationViewController;
  v4 = [(CSCoverSheetViewControllerBase *)&v7 initWithNibName:0 bundle:0];
  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__lockButtonPressed_ name:*MEMORY[0x277D67A80] object:0];
    [defaultCenter addObserver:v4 selector:sel__silencingHardwareButtonPressed_ name:*MEMORY[0x277D679D8] object:0];
    [defaultCenter addObserver:v4 selector:sel__silencingHardwareButtonPressed_ name:*MEMORY[0x277D67AF0] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSFullscreenNotificationViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)loadView
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_1();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_8(&dword_21EB05000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_request != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteDidDismissProgrammatically
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    notificationIdentifier = [(NCNotificationRequest *)self->_request notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ received notice of programmatic dismissal for notification %{public}@", &v9, 0x16u);
  }

  [(CSFullscreenNotificationViewController *)self _handleDismissAction];
}

- (void)_handleAction:(id)action withName:(id)name
{
  v31 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  nameCopy = name;
  v8 = *MEMORY[0x277D77DB0];
  v9 = os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT);
  if (actionCopy)
  {
    if (v9)
    {
      v10 = v8;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      notificationIdentifier = [(NCNotificationRequest *)self->_request notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543874;
      v26 = v12;
      v27 = 2114;
      v28 = nameCopy;
      v29 = 2114;
      v30 = un_logDigest;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ performing %{public}@ action for notification %{public}@", buf, 0x20u);
    }

    dispatcher = [(CSFullscreenNotificationViewController *)self dispatcher];
    request = self->_request;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__CSFullscreenNotificationViewController__handleAction_withName___block_invoke;
    v22[3] = &unk_27838BEB0;
    v23 = actionCopy;
    selfCopy = self;
    [dispatcher destination:self performAction:v23 forNotificationRequest:request requestAuthentication:1 withParameters:0 completion:v22];
  }

  else
  {
    if (v9)
    {
      v17 = v8;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      notificationIdentifier2 = [(NCNotificationRequest *)self->_request notificationIdentifier];
      un_logDigest2 = [notificationIdentifier2 un_logDigest];
      *buf = 138543874;
      v26 = v19;
      v27 = 2114;
      v28 = nameCopy;
      v29 = 2114;
      v30 = un_logDigest2;
      _os_log_impl(&dword_21EB05000, v17, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ skipping performing %{public}@ action for notification %{public}@ because it is nil", buf, 0x20u);
    }

    [(CSFullscreenNotificationViewController *)self _dismissFromSignificantUserInteraction];
  }
}

uint64_t __65__CSFullscreenNotificationViewController__handleAction_withName___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldDismissNotification];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 _dismissFromSignificantUserInteraction];
  }

  return result;
}

- (void)_silencingHardwareButtonPressed:(id)pressed
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    notificationIdentifier = [(NCNotificationRequest *)self->_request notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ received hardware button pressed event for notification %{public}@", &v10, 0x16u);
  }

  [(CSFullscreenNotificationViewController *)self _handleSilenceAction];
}

- (void)_lockButtonPressed:(id)pressed
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    notificationIdentifier = [(NCNotificationRequest *)self->_request notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ received lock button pressed event for notification %{public}@", &v10, 0x16u);
  }

  [(CSFullscreenNotificationViewController *)self _handlePrimaryAction];
}

- (void)aggregateAppearance:(id)appearance
{
  v13.receiver = self;
  v13.super_class = CSFullscreenNotificationViewController;
  appearanceCopy = appearance;
  [(CSModalViewControllerBase *)&v13 aggregateAppearance:appearanceCopy];
  v4 = objc_opt_new();
  v5 = [v4 hidden:{0, v13.receiver, v13.super_class}];
  v6 = [v5 vibrantAndCentered:1];
  v7 = [v6 hidesTime:0];
  v8 = [v7 constrainsTimeHeight:1];
  v9 = [v8 priority:40];
  [appearanceCopy addComponent:v9];

  v10 = objc_opt_new();
  v11 = [v10 priority:40];
  v12 = [v11 hidden:1];
  [appearanceCopy addComponent:v12];
}

- (void)aggregateBehavior:(id)behavior
{
  v4.receiver = self;
  v4.super_class = CSFullscreenNotificationViewController;
  behaviorCopy = behavior;
  [(CSModalViewControllerBase *)&v4 aggregateBehavior:behaviorCopy];
  [behaviorCopy removeRestrictedCapabilities:{2, v4.receiver, v4.super_class}];
  [behaviorCopy addRestrictedCapabilities:16781312];
  [behaviorCopy setIdleTimerMode:1];
  [behaviorCopy setIdleTimerDuration:12];
  [behaviorCopy setIdleWarnMode:2];
}

- (BOOL)handleEvent:(id)event
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = CSFullscreenNotificationViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v15, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    type = [eventCopy type];
    if (type != 27 && type != 9)
    {
      isConsumable = 0;
      goto LABEL_10;
    }

    v6 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromCoverSheetEventType([eventCopy type]);
      notificationIdentifier = [(NCNotificationRequest *)self->_request notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = un_logDigest;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ received %{public}@ event for notification %{public}@", buf, 0x20u);
    }

    [(CSFullscreenNotificationViewController *)self _handleDismissAction];
  }

  isConsumable = [eventCopy isConsumable];
LABEL_10:

  return isConsumable;
}

- (void)handlePrimaryActionForView:(id)view
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    notificationIdentifier = [(NCNotificationRequest *)self->_request notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ received primary button tap event for notification %{public}@", &v10, 0x16u);
  }

  [(CSFullscreenNotificationViewController *)self _handlePrimaryAction];
}

- (void)handleSecondaryActionForView:(id)view
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    notificationIdentifier = [(NCNotificationRequest *)self->_request notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ received secondary button tap event for notification %{public}@", &v10, 0x16u);
  }

  [(CSFullscreenNotificationViewController *)self _handleSecondaryAction];
}

- (void)postNotificationRequest:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (self->_request)
  {
    [CSFullscreenNotificationViewController postNotificationRequest:a2];
  }

  v7 = requestCopy;
  NSClassFromString(&cfstr_Ncnotification_0.isa);
  if (!v7)
  {
    [CSFullscreenNotificationViewController postNotificationRequest:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CSFullscreenNotificationViewController postNotificationRequest:a2];
  }

  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    notificationIdentifier = [v7 notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v26 = 138543618;
    v27 = v11;
    v28 = 2114;
    v29 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ presenting notification %{public}@", &v26, 0x16u);
  }

  objc_storeStrong(&self->_request, request);
  supplementaryActions = [v7 supplementaryActions];
  v15 = [supplementaryActions objectForKey:*MEMORY[0x277D77DA0]];

  if ([v15 count])
  {
    v16 = [v15 objectAtIndex:0];
    primaryAction = self->_primaryAction;
    self->_primaryAction = v16;
  }

  if ([v15 count] >= 2)
  {
    v18 = [v15 objectAtIndex:1];
    secondaryAction = self->_secondaryAction;
    self->_secondaryAction = v18;
  }

  if (!self->_primaryAction)
  {
    objc_storeStrong(&self->_primaryAction, self->_secondaryAction);
    clearAction = [(NCNotificationRequest *)self->_request clearAction];
    v21 = self->_secondaryAction;
    self->_secondaryAction = clearAction;
  }

  silenceAction = [(NCNotificationRequest *)self->_request silenceAction];
  silenceAction = self->_silenceAction;
  self->_silenceAction = silenceAction;

  clearAction2 = [(NCNotificationRequest *)self->_request clearAction];
  dismissAction = self->_dismissAction;
  self->_dismissAction = clearAction2;
}

- (void)updateNotificationRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    requestCopy = request;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    notificationIdentifier = [requestCopy notificationIdentifier];

    un_logDigest = [notificationIdentifier un_logDigest];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ does not support updating notification %{public}@", &v11, 0x16u);
  }
}

- (void)withdrawNotificationRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    requestCopy = request;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    notificationIdentifier = [requestCopy notificationIdentifier];

    un_logDigest = [notificationIdentifier un_logDigest];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ withdrawing notification %{public}@", &v11, 0x16u);
  }
}

- (void)_dismissFromSignificantUserInteraction
{
  v3 = [CSAction actionWithType:4];
  [(CSCoverSheetViewControllerBase *)self sendAction:v3];

  [(CSCoverSheetViewControllerBase *)self dismiss];
}

- (CSNotificationDispatcher)dispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatcher);

  return WeakRetained;
}

- (void)postNotificationRequest:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_1();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_8(&dword_21EB05000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_request == nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)postNotificationRequest:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_1();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_8(&dword_21EB05000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NCNotificationRequestClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)postNotificationRequest:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_1();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_8(&dword_21EB05000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end