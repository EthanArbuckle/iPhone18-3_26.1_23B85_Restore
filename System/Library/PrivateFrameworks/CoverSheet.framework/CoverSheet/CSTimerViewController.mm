@interface CSTimerViewController
- (BOOL)isEndDateValid;
- (CSTimerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CSTimerViewControllerDelegate)delegate;
- (NSString)timerText;
- (void)_nextTimerChanged:(id)changed;
- (void)_startTimer;
- (void)_stopTimerNotifyingDelegate:(BOOL)delegate;
- (void)_updateNextTimer;
- (void)_updateTimerFired;
- (void)_updateTimerLabelView;
- (void)dealloc;
- (void)loadView;
- (void)setEnabled:(BOOL)enabled;
- (void)setEndDate:(id)date;
@end

@implementation CSTimerViewController

- (void)_startTimer
{
  v14 = *MEMORY[0x277D85DE8];
  [(CSTimerViewController *)self _stopTimerNotifyingDelegate:0];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "Starting update timer...", &v12, 2u);
  }

  if (self->_enabled && [(CSTimerViewController *)self isEndDateValid])
  {
    v4 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__updateTimerFired selector:0 userInfo:1 repeats:1.0];
    updateTimer = self->_updateTimer;
    self->_updateTimer = v4;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_updateTimer forMode:*MEMORY[0x277CBE738]];

    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_updateTimer;
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEFAULT, "Started update timer: %{public}@", &v12, 0xCu);
    }

    [(CSTimerViewController *)self _updateTimerLabelView];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained timerControllerDidStartTimer:self];

    [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  }

  else
  {
    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      endDate = self->_endDate;
      v12 = 138543362;
      v13 = endDate;
      _os_log_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEFAULT, "Unable to start update timer with end date: %{public}@", &v12, 0xCu);
    }
  }
}

- (BOOL)isEndDateValid
{
  endDate = self->_endDate;
  if (endDate)
  {
    [(NSDate *)endDate timeIntervalSinceNow];
    LOBYTE(endDate) = v3 > 0.0;
  }

  return endDate;
}

- (CSTimerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = CSTimerViewController;
  v4 = [(CSCoverSheetViewControllerBase *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D29740]);
    timerManager = v4->_timerManager;
    v4->_timerManager = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__nextTimerChanged_ name:*MEMORY[0x277D29680] object:0];

    [(CSTimerViewController *)v4 _updateNextTimer];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CSTimerViewController *)self _stopTimer];
  v4.receiver = self;
  v4.super_class = CSTimerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(CSTimerView);
  [(CSTimerViewController *)self setView:v3];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    if (enabled)
    {
      [(CSTimerViewController *)self _startTimer];
    }

    else
    {
      [(CSTimerViewController *)self _stopTimer];
    }
  }
}

- (void)setEndDate:(id)date
{
  dateCopy = date;
  if (self->_endDate != dateCopy)
  {
    v7 = dateCopy;
    objc_storeStrong(&self->_endDate, date);
    timerView = [(CSTimerViewController *)self timerView];
    [timerView setEndDate:v7];

    if (v7)
    {
      [(CSTimerViewController *)self _startTimer];
    }

    else
    {
      [(CSTimerViewController *)self _stopTimer];
    }

    dateCopy = v7;
  }
}

- (NSString)timerText
{
  timerView = [(CSTimerViewController *)self timerView];
  timerText = [timerView timerText];

  return timerText;
}

- (void)_stopTimerNotifyingDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v12 = *MEMORY[0x277D85DE8];
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    updateTimer = self->_updateTimer;
    v10 = 138412290;
    v11 = updateTimer;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Stopping update timer: %@", &v10, 0xCu);
  }

  v7 = self->_updateTimer;
  if (v7)
  {
    [(NSTimer *)v7 invalidate];
    v8 = self->_updateTimer;
    self->_updateTimer = 0;

    if (delegateCopy)
    {
      delegate = [(CSTimerViewController *)self delegate];
      [delegate timerControllerDidStopTimer:self];
    }

    [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  }
}

- (void)_updateTimerFired
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    endDate = self->_endDate;
    v6 = 138543362;
    v7 = endDate;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "Update timer fired with end date: %{public}@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained timerControllerDidUpdateTimer:self];

  [(CSTimerViewController *)self _updateTimerLabelView];
  if (![(CSTimerViewController *)self isEndDateValid])
  {
    [(CSTimerViewController *)self setEndDate:0];
  }
}

- (void)_updateTimerLabelView
{
  timerView = [(CSTimerViewController *)self timerView];
  [timerView updateTimerLabel];

  timerView2 = [(CSTimerViewController *)self timerView];
  [timerView2 sizeToFit];
}

- (void)_nextTimerChanged:(id)changed
{
  v8 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = changedCopy;
    _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Received next timer changed notification: %{public}@", &v6, 0xCu);
  }

  [(CSTimerViewController *)self _updateNextTimer];
}

- (void)_updateNextTimer
{
  nextTimer = [(MTTimerManager *)self->_timerManager nextTimer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__CSTimerViewController__updateNextTimer__block_invoke;
  v5[3] = &unk_27838D640;
  v5[4] = self;
  v4 = [nextTimer addCompletionBlock:v5];
}

void __41__CSTimerViewController__updateNextTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__CSTimerViewController__updateNextTimer__block_invoke_2;
  v6[3] = &unk_27838B838;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __41__CSTimerViewController__updateNextTimer__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 nextTrigger];
  v8 = SBLogDashBoard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_DEFAULT, "Setting next timer: %{public}@ with trigger: %{public}@", &v11, 0x16u);
  }

  v9 = *(a1 + 40);
  v10 = [v7 triggerDate];
  [v9 setEndDate:v10];
}

- (CSTimerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end