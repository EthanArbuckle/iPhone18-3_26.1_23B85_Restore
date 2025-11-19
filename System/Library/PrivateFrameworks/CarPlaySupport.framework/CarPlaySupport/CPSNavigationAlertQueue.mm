@interface CPSNavigationAlertQueue
- (BOOL)_canBeginAnimatingAlert;
- (BOOL)isDisplayingAlert;
- (CPSApplicationStateMonitor)applicationStateMonitor;
- (CPSNavigationAlertQueue)initWithDelegate:(id)a3 applicationStateMonitor:(id)a4;
- (CPSNavigationAlertQueueDelegate)delegate;
- (CPTemplateDelegate)templateDelegate;
- (void)_clearAlertViewIfNecessaryForDismissedAlertView:(id)a3;
- (void)_startAlertAnimations;
- (void)_visibleAlertTimerFired:(id)a3;
- (void)applicationStateMonitor:(id)a3 didBecomeActive:(BOOL)a4;
- (void)beginAnimatingAlertIfPossible;
- (void)didSelectButton:(id)a3;
- (void)dismissCurrentNavigationAlertAnimated:(BOOL)a3 context:(unint64_t)a4 completion:(id)a5;
- (void)prepareNavigationAlert:(id)a3 templateDelegate:(id)a4 animated:(BOOL)a5;
@end

@implementation CPSNavigationAlertQueue

- (CPSNavigationAlertQueue)initWithDelegate:(id)a3 applicationStateMonitor:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8 = [(CPSNavigationAlertQueue *)v4 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    objc_storeStrong(&v11->_currentAlert, 0);
    objc_storeWeak(&v11->_delegate, location[0]);
    objc_storeWeak(&v11->_applicationStateMonitor, v9);
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (BOOL)isDisplayingAlert
{
  v2 = [(CPSNavigationAlertQueue *)self currentAlert];
  v4 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  return v4;
}

- (void)prepareNavigationAlert:(id)a3 templateDelegate:(id)a4 animated:(BOOL)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = a5;
  v15 = [CPSNavigationAlertView alloc];
  CGRectMake_1();
  v18 = [(CPSNavigationAlertView *)v15 initWithFrame:location[0] navigationAlert:v20 templateDelegate:v22 buttonDelegate:v5, v6, v7, v8];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSNavigationAlertView *)v22->_currentAlertView removeFromSuperview];
  objc_storeStrong(&v22->_currentAlert, location[0]);
  objc_storeStrong(&v22->_currentAlertView, v18);
  objc_storeWeak(&v22->_templateDelegate, v20);
  v16 = [(CPSNavigationAlertQueue *)v22 delegate];
  v17 = objc_opt_respondsToSelector();
  v9 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if (v17)
  {
    v12 = [(CPSNavigationAlertQueue *)v22 delegate];
    [(CPSNavigationAlertQueueDelegate *)v12 navigationAlertQueue:v22 shouldDisplayAlertView:v18 animated:v19];
    v9 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  }

  v11 = [(CPSNavigationAlertQueue *)v22 alertTimer];
  [(NSTimer *)v11 invalidate];
  *&v10 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [(CPSNavigationAlertQueue *)v22 beginAnimatingAlertIfPossible];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissCurrentNavigationAlertAnimated:(BOOL)a3 context:(unint64_t)a4 completion:(id)a5
{
  v28 = self;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v12 = [(CPSNavigationAlertQueue *)v28 alertTimer];
  [(NSTimer *)v12 invalidate];
  *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = [(CPSNavigationAlertQueue *)v28 delegate];
  v14 = objc_opt_respondsToSelector();
  *&v6 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14)
  {
    v23 = [(CPSNavigationAlertQueue *)v28 currentAlertView];
    v11 = [(CPSNavigationAlertQueue *)v28 delegate];
    v7 = v28;
    v8 = v23;
    v9 = v26;
    v10 = v25;
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __84__CPSNavigationAlertQueue_dismissCurrentNavigationAlertAnimated_context_completion___block_invoke;
    v19 = &unk_278D931E8;
    v22 = MEMORY[0x277D82BE0](location);
    v20 = MEMORY[0x277D82BE0](v28);
    v21 = MEMORY[0x277D82BE0](v23);
    [(CPSNavigationAlertQueueDelegate *)v11 navigationAlertQueue:v7 shouldRemoveAlertView:v8 animated:v9 dismissalContext:v10 completion:&v15];
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
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
  v3 = [(CPSNavigationAlertQueue *)self currentAlert];
  v9 = 0;
  v7 = 0;
  v5 = 0;
  LOBYTE(v4) = 0;
  if (v3)
  {
    v10 = [(CPSNavigationAlertQueue *)self applicationStateMonitor];
    v9 = 1;
    LOBYTE(v4) = 0;
    if ([(CPSApplicationStateMonitor *)v10 templateApplicationSceneIsActive])
    {
      v8 = [(CPSNavigationAlertQueue *)self delegate];
      v7 = 1;
      LOBYTE(v4) = 0;
      if (([(CPSNavigationAlertQueueDelegate *)v8 canAnimateNavigationAlert]& 1) != 0)
      {
        v6 = [(CPSNavigationAlertQueue *)self alertTimer];
        v5 = 1;
        v4 = ![(NSTimer *)v6 isValid];
      }
    }
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BD8](v3);
  return v4 & 1;
}

- (void)_startAlertAnimations
{
  v8 = [(CPSNavigationAlertQueue *)self currentAlert];
  [(CPNavigationAlert *)v8 duration];
  v9 = v2;
  MEMORY[0x277D82BD8](v8);
  if (v9 > 0.0)
  {
    v5 = MEMORY[0x277CBEBB8];
    v6 = [(CPSNavigationAlertQueue *)self currentAlert];
    [(CPNavigationAlert *)v6 duration];
    v3 = [v5 scheduledTimerWithTimeInterval:self target:sel__visibleAlertTimerFired_ selector:0 userInfo:0 repeats:?];
    alertTimer = self->_alertTimer;
    self->_alertTimer = v3;
    MEMORY[0x277D82BD8](alertTimer);
    v7 = [(CPSNavigationAlertQueue *)self currentAlertView];
    [(CPSNavigationAlertView *)v7 startAnimating];
    MEMORY[0x277D82BD8](v7);
  }
}

- (void)_visibleAlertTimerFired:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [(CPSNavigationAlertQueue *)v18 currentAlertView];
  v7 = [(CPSNavigationAlertQueue *)v18 delegate];
  v8 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSNavigationAlertQueue *)v18 delegate];
    v4 = v18;
    v5 = v16;
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __51__CPSNavigationAlertQueue__visibleAlertTimerFired___block_invoke;
    v13 = &unk_278D910D8;
    v14 = MEMORY[0x277D82BE0](v18);
    v15 = MEMORY[0x277D82BE0](v16);
    [(CPSNavigationAlertQueueDelegate *)v6 navigationAlertQueue:v4 shouldRemoveAlertView:v5 animated:1 dismissalContext:0 completion:&v9];
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_clearAlertViewIfNecessaryForDismissedAlertView:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_currentAlertView == location[0])
  {
    objc_storeStrong(&v4->_currentAlertView, 0);
    objc_storeStrong(&v4->_currentAlert, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)didSelectButton:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = [(CPSNavigationAlertQueue *)v33 currentAlert];
  MEMORY[0x277D82BD8](v24);
  if (v24)
  {
    v3 = objc_opt_class();
    v30 = CPSSafeCast_14(v3, location[0]);
    v29 = [v30 titleForState:0];
    v28 = 0;
    v22 = [(CPSNavigationAlertQueue *)v33 currentAlert];
    v21 = [(CPNavigationAlert *)v22 primaryAction];
    v20 = [(CPAlertAction *)v21 title];
    v23 = [v29 isEqualToString:?];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    *&v4 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    if (v23)
    {
      v19 = [(CPSNavigationAlertQueue *)v33 currentAlert];
      v18 = [(CPNavigationAlert *)v19 primaryAction];
      v5 = [(CPAlertAction *)v18 identifier];
      v6 = v28;
      v28 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v18);
      v7 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    }

    else
    {
      v16 = [(CPSNavigationAlertQueue *)v33 currentAlert];
      v15 = [(CPNavigationAlert *)v16 secondaryAction];
      v14 = [(CPAlertAction *)v15 title];
      v17 = [v29 isEqualToString:?];
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      *&v8 = MEMORY[0x277D82BD8](v16).n128_u64[0];
      if (v17)
      {
        v13 = [(CPSNavigationAlertQueue *)v33 currentAlert];
        v12 = [(CPNavigationAlert *)v13 secondaryAction];
        v9 = [(CPAlertAction *)v12 identifier];
        v10 = v28;
        v28 = v9;
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v12);
        v7 = MEMORY[0x277D82BD8](v13).n128_u64[0];
      }

      else
      {
        v27 = CarPlaySupportGeneralLogging();
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v35, v33);
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
        __os_log_helper_16_2_2_8_64_8_64(v34, v33, v28);
        _os_log_impl(&dword_242FE8000, v25, OS_LOG_TYPE_DEFAULT, "%@: button selected with UUID: %@", v34, 0x16u);
      }

      objc_storeStrong(&v25, 0);
      v11 = [(CPSNavigationAlertQueue *)v33 templateDelegate];
      [(CPTemplateDelegate *)v11 handleActionForControlIdentifier:v28];
      v7 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    }

    [(CPSNavigationAlertQueue *)v33 dismissCurrentNavigationAlertAnimated:1 context:1 completion:*&v7];
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

- (void)applicationStateMonitor:(id)a3 didBecomeActive:(BOOL)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __67__CPSNavigationAlertQueue_applicationStateMonitor_didBecomeActive___block_invoke;
  v12 = &unk_278D913E8;
  v13 = MEMORY[0x277D82BE0](v16);
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