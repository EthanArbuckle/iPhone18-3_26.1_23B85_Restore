@interface CPSNavigationAlertQueue
- (BOOL)_canBeginAnimatingAlert;
- (BOOL)isDisplayingAlert;
- (CPSApplicationStateMonitor)applicationStateMonitor;
- (CPSNavigationAlertQueue)initWithDelegate:(id)delegate applicationStateMonitor:(id)monitor;
- (CPSNavigationAlertQueueDelegate)delegate;
- (CPTemplateDelegate)templateDelegate;
- (void)_clearAlertViewIfNecessaryForDismissedAlertView:(id)view;
- (void)_startAlertAnimations;
- (void)_visibleAlertTimerFired:(id)fired;
- (void)applicationStateMonitor:(id)monitor didBecomeActive:(BOOL)active;
- (void)beginAnimatingAlertIfPossible;
- (void)didSelectButton:(id)button;
- (void)dismissCurrentNavigationAlertAnimated:(BOOL)animated context:(unint64_t)context completion:(id)completion;
- (void)prepareNavigationAlert:(id)alert templateDelegate:(id)delegate animated:(BOOL)animated;
@end

@implementation CPSNavigationAlertQueue

- (CPSNavigationAlertQueue)initWithDelegate:(id)delegate applicationStateMonitor:(id)monitor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v9 = 0;
  objc_storeStrong(&v9, monitor);
  v4 = selfCopy;
  selfCopy = 0;
  v8 = [(CPSNavigationAlertQueue *)v4 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_currentAlert, 0);
    objc_storeWeak(&selfCopy->_delegate, location[0]);
    objc_storeWeak(&selfCopy->_applicationStateMonitor, v9);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (BOOL)isDisplayingAlert
{
  currentAlert = [(CPSNavigationAlertQueue *)self currentAlert];
  v4 = currentAlert != 0;
  MEMORY[0x277D82BD8](currentAlert);
  return v4;
}

- (void)prepareNavigationAlert:(id)alert templateDelegate:(id)delegate animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v20 = 0;
  objc_storeStrong(&v20, delegate);
  animatedCopy = animated;
  v15 = [CPSNavigationAlertView alloc];
  CGRectMake_1();
  v18 = [(CPSNavigationAlertView *)v15 initWithFrame:location[0] navigationAlert:v20 templateDelegate:selfCopy buttonDelegate:v5, v6, v7, v8];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSNavigationAlertView *)selfCopy->_currentAlertView removeFromSuperview];
  objc_storeStrong(&selfCopy->_currentAlert, location[0]);
  objc_storeStrong(&selfCopy->_currentAlertView, v18);
  objc_storeWeak(&selfCopy->_templateDelegate, v20);
  delegate = [(CPSNavigationAlertQueue *)selfCopy delegate];
  v17 = objc_opt_respondsToSelector();
  v9 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v17)
  {
    delegate2 = [(CPSNavigationAlertQueue *)selfCopy delegate];
    [(CPSNavigationAlertQueueDelegate *)delegate2 navigationAlertQueue:selfCopy shouldDisplayAlertView:v18 animated:animatedCopy];
    v9 = MEMORY[0x277D82BD8](delegate2).n128_u64[0];
  }

  alertTimer = [(CPSNavigationAlertQueue *)selfCopy alertTimer];
  [(NSTimer *)alertTimer invalidate];
  *&v10 = MEMORY[0x277D82BD8](alertTimer).n128_u64[0];
  [(CPSNavigationAlertQueue *)selfCopy beginAnimatingAlertIfPossible];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissCurrentNavigationAlertAnimated:(BOOL)animated context:(unint64_t)context completion:(id)completion
{
  selfCopy = self;
  v27 = a2;
  animatedCopy = animated;
  contextCopy = context;
  location = 0;
  objc_storeStrong(&location, completion);
  alertTimer = [(CPSNavigationAlertQueue *)selfCopy alertTimer];
  [(NSTimer *)alertTimer invalidate];
  *&v5 = MEMORY[0x277D82BD8](alertTimer).n128_u64[0];
  delegate = [(CPSNavigationAlertQueue *)selfCopy delegate];
  v14 = objc_opt_respondsToSelector();
  *&v6 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v14)
  {
    currentAlertView = [(CPSNavigationAlertQueue *)selfCopy currentAlertView];
    delegate2 = [(CPSNavigationAlertQueue *)selfCopy delegate];
    v7 = selfCopy;
    v8 = currentAlertView;
    v9 = animatedCopy;
    v10 = contextCopy;
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __84__CPSNavigationAlertQueue_dismissCurrentNavigationAlertAnimated_context_completion___block_invoke;
    v19 = &unk_278D931E8;
    v22 = MEMORY[0x277D82BE0](location);
    v20 = MEMORY[0x277D82BE0](selfCopy);
    v21 = MEMORY[0x277D82BE0](currentAlertView);
    [(CPSNavigationAlertQueueDelegate *)delegate2 navigationAlertQueue:v7 shouldRemoveAlertView:v8 animated:v9 dismissalContext:v10 completion:&v15];
    MEMORY[0x277D82BD8](delegate2);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&currentAlertView, 0);
  }

  objc_storeStrong(&location, 0);
}

uint64_t __84__CPSNavigationAlertQueue_dismissCurrentNavigationAlertAnimated_context_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  return [*(a1 + 32) _clearAlertViewIfNecessaryForDismissedAlertView:*(a1 + 40)];
}

- (void)beginAnimatingAlertIfPossible
{
  if ([(CPSNavigationAlertQueue *)self _canBeginAnimatingAlert])
  {
    [(CPSNavigationAlertQueue *)self _startAlertAnimations];
  }
}

- (BOOL)_canBeginAnimatingAlert
{
  currentAlert = [(CPSNavigationAlertQueue *)self currentAlert];
  v9 = 0;
  v7 = 0;
  v5 = 0;
  LOBYTE(v4) = 0;
  if (currentAlert)
  {
    applicationStateMonitor = [(CPSNavigationAlertQueue *)self applicationStateMonitor];
    v9 = 1;
    LOBYTE(v4) = 0;
    if ([(CPSApplicationStateMonitor *)applicationStateMonitor templateApplicationSceneIsActive])
    {
      delegate = [(CPSNavigationAlertQueue *)self delegate];
      v7 = 1;
      LOBYTE(v4) = 0;
      if (([(CPSNavigationAlertQueueDelegate *)delegate canAnimateNavigationAlert]& 1) != 0)
      {
        alertTimer = [(CPSNavigationAlertQueue *)self alertTimer];
        v5 = 1;
        v4 = ![(NSTimer *)alertTimer isValid];
      }
    }
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](alertTimer);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](delegate);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](applicationStateMonitor);
  }

  MEMORY[0x277D82BD8](currentAlert);
  return v4 & 1;
}

- (void)_startAlertAnimations
{
  currentAlert = [(CPSNavigationAlertQueue *)self currentAlert];
  [(CPNavigationAlert *)currentAlert duration];
  v9 = v2;
  MEMORY[0x277D82BD8](currentAlert);
  if (v9 > 0.0)
  {
    v5 = MEMORY[0x277CBEBB8];
    currentAlert2 = [(CPSNavigationAlertQueue *)self currentAlert];
    [(CPNavigationAlert *)currentAlert2 duration];
    v3 = [v5 scheduledTimerWithTimeInterval:self target:sel__visibleAlertTimerFired_ selector:0 userInfo:0 repeats:?];
    alertTimer = self->_alertTimer;
    self->_alertTimer = v3;
    MEMORY[0x277D82BD8](alertTimer);
    currentAlertView = [(CPSNavigationAlertQueue *)self currentAlertView];
    [(CPSNavigationAlertView *)currentAlertView startAnimating];
    MEMORY[0x277D82BD8](currentAlertView);
  }
}

- (void)_visibleAlertTimerFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  currentAlertView = [(CPSNavigationAlertQueue *)selfCopy currentAlertView];
  delegate = [(CPSNavigationAlertQueue *)selfCopy delegate];
  v8 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v8)
  {
    delegate2 = [(CPSNavigationAlertQueue *)selfCopy delegate];
    v4 = selfCopy;
    v5 = currentAlertView;
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __51__CPSNavigationAlertQueue__visibleAlertTimerFired___block_invoke;
    v13 = &unk_278D910D8;
    v14 = MEMORY[0x277D82BE0](selfCopy);
    v15 = MEMORY[0x277D82BE0](currentAlertView);
    [(CPSNavigationAlertQueueDelegate *)delegate2 navigationAlertQueue:v4 shouldRemoveAlertView:v5 animated:1 dismissalContext:0 completion:&v9];
    MEMORY[0x277D82BD8](delegate2);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&currentAlertView, 0);
  objc_storeStrong(location, 0);
}

- (void)_clearAlertViewIfNecessaryForDismissedAlertView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (selfCopy->_currentAlertView == location[0])
  {
    objc_storeStrong(&selfCopy->_currentAlertView, 0);
    objc_storeStrong(&selfCopy->_currentAlert, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)didSelectButton:(id)button
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  currentAlert = [(CPSNavigationAlertQueue *)selfCopy currentAlert];
  MEMORY[0x277D82BD8](currentAlert);
  if (currentAlert)
  {
    v3 = objc_opt_class();
    v30 = CPSSafeCast_14(v3, location[0]);
    v29 = [v30 titleForState:0];
    v28 = 0;
    currentAlert2 = [(CPSNavigationAlertQueue *)selfCopy currentAlert];
    primaryAction = [(CPNavigationAlert *)currentAlert2 primaryAction];
    title = [(CPAlertAction *)primaryAction title];
    v23 = [v29 isEqualToString:?];
    MEMORY[0x277D82BD8](title);
    MEMORY[0x277D82BD8](primaryAction);
    *&v4 = MEMORY[0x277D82BD8](currentAlert2).n128_u64[0];
    if (v23)
    {
      currentAlert3 = [(CPSNavigationAlertQueue *)selfCopy currentAlert];
      primaryAction2 = [(CPNavigationAlert *)currentAlert3 primaryAction];
      identifier = [(CPAlertAction *)primaryAction2 identifier];
      v6 = v28;
      v28 = identifier;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](primaryAction2);
      v7 = MEMORY[0x277D82BD8](currentAlert3).n128_u64[0];
    }

    else
    {
      currentAlert4 = [(CPSNavigationAlertQueue *)selfCopy currentAlert];
      secondaryAction = [(CPNavigationAlert *)currentAlert4 secondaryAction];
      title2 = [(CPAlertAction *)secondaryAction title];
      v17 = [v29 isEqualToString:?];
      MEMORY[0x277D82BD8](title2);
      MEMORY[0x277D82BD8](secondaryAction);
      *&v8 = MEMORY[0x277D82BD8](currentAlert4).n128_u64[0];
      if (v17)
      {
        currentAlert5 = [(CPSNavigationAlertQueue *)selfCopy currentAlert];
        secondaryAction2 = [(CPNavigationAlert *)currentAlert5 secondaryAction];
        identifier2 = [(CPAlertAction *)secondaryAction2 identifier];
        v10 = v28;
        v28 = identifier2;
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](secondaryAction2);
        v7 = MEMORY[0x277D82BD8](currentAlert5).n128_u64[0];
      }

      else
      {
        v27 = CarPlaySupportGeneralLogging();
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v35, selfCopy);
          _os_log_impl(&dword_242FE8000, v27, v26, "%@: dismissing alert with close button", v35, 0xCu);
        }

        objc_storeStrong(&v27, 0);
      }
    }

    if (v28)
    {
      v25 = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_64_8_64(v34, selfCopy, v28);
        _os_log_impl(&dword_242FE8000, v25, OS_LOG_TYPE_DEFAULT, "%@: button selected with UUID: %@", v34, 0x16u);
      }

      objc_storeStrong(&v25, 0);
      templateDelegate = [(CPSNavigationAlertQueue *)selfCopy templateDelegate];
      [(CPTemplateDelegate *)templateDelegate handleActionForControlIdentifier:v28];
      v7 = MEMORY[0x277D82BD8](templateDelegate).n128_u64[0];
    }

    [(CPSNavigationAlertQueue *)selfCopy dismissCurrentNavigationAlertAnimated:1 context:1 completion:*&v7];
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)applicationStateMonitor:(id)monitor didBecomeActive:(BOOL)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, monitor);
  activeCopy = active;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __67__CPSNavigationAlertQueue_applicationStateMonitor_didBecomeActive___block_invoke;
  v12 = &unk_278D913E8;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

uint64_t __67__CPSNavigationAlertQueue_applicationStateMonitor_didBecomeActive___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _canBeginAnimatingAlert];
  if (result)
  {
    return [*(a1 + 32) _startAlertAnimations];
  }

  return result;
}

- (CPSNavigationAlertQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CPTemplateDelegate)templateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_templateDelegate);

  return WeakRetained;
}

- (CPSApplicationStateMonitor)applicationStateMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationStateMonitor);

  return WeakRetained;
}

@end