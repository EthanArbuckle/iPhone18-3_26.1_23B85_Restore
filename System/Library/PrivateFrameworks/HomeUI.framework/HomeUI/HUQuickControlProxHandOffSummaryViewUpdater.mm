@interface HUQuickControlProxHandOffSummaryViewUpdater
- (BOOL)_isHomePodPhoneCallStatusUpdateTimerActive;
- (BOOL)_isHomePodTimerStatusUpdateTimerActive;
- (HUQuickControlProxHandOffSummaryViewUpdater)initWithNavigationBarTitleView:(id)view;
- (void)_invalidateHomePodPhoneCallStatusUpdateTimer;
- (void)_invalidateHomePodTimerStatusUpdateTimer;
- (void)_setupObservableActivityForActivity:(id)activity;
- (void)_startHomePodPhoneCallStatusUpdateTimer;
- (void)_startHomePodTimerStatusUpdateTimer;
- (void)_updateSummaryViewForActivities:(id)activities forProxControlID:(id)d disambiguationContext:(id)context;
- (void)dealloc;
- (void)didUpdateActivities:(id)activities forProxControlID:(id)d disambiguationContext:(id)context;
@end

@implementation HUQuickControlProxHandOffSummaryViewUpdater

- (HUQuickControlProxHandOffSummaryViewUpdater)initWithNavigationBarTitleView:(id)view
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = HUQuickControlProxHandOffSummaryViewUpdater;
  v6 = [(HUQuickControlProxHandOffSummaryViewUpdater *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_titleView, view);
    if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
    {
      mEMORY[0x277D14990] = [MEMORY[0x277D14990] sharedInstance];
      [mEMORY[0x277D14990] addObserver:v7];
      lastActivities = [mEMORY[0x277D14990] lastActivities];
      firstObject = [lastActivities firstObject];
      [(HUQuickControlProxHandOffSummaryViewUpdater *)v7 _setupObservableActivityForActivity:firstObject];

      lastActivities2 = [mEMORY[0x277D14990] lastActivities];
      lastIdentifier = [mEMORY[0x277D14990] lastIdentifier];
      lastDisambiguationContext = [mEMORY[0x277D14990] lastDisambiguationContext];
      [(HUQuickControlProxHandOffSummaryViewUpdater *)v7 _updateSummaryViewForActivities:lastActivities2 forProxControlID:lastIdentifier disambiguationContext:lastDisambiguationContext];
    }
  }

  return v7;
}

- (void)dealloc
{
  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    [(HUQuickControlProxHandOffSummaryViewUpdater *)self _invalidateHomePodPhoneCallStatusUpdateTimer];
    [(HUQuickControlProxHandOffSummaryViewUpdater *)self _invalidateHomePodTimerStatusUpdateTimer];
  }

  v3.receiver = self;
  v3.super_class = HUQuickControlProxHandOffSummaryViewUpdater;
  [(HUQuickControlProxHandOffSummaryViewUpdater *)&v3 dealloc];
}

- (void)_updateSummaryViewForActivities:(id)activities forProxControlID:(id)d disambiguationContext:(id)context
{
  v67 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  dCopy = d;
  v57 = activitiesCopy;
  if ([activitiesCopy count])
  {
    v9 = [activitiesCopy objectAtIndexedSubscript:0];
    v10 = &unk_2825BD660;
    if ([v9 conformsToProtocol:v10])
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  activityString = [(__CFString *)v12 activityString];
  v14 = activityString;
  if (activityString)
  {
    v15 = activityString;
  }

  else
  {
    v15 = _HULocalizedStringWithDefaultValue(@"HUQuickControlProxHandoffSummaryNotPlaying", @"HUQuickControlProxHandoffSummaryNotPlaying", 1);
  }

  v16 = v15;

  objc_opt_class();
  v17 = dCopy;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  objc_opt_class();
  v20 = v17;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  assetType = [v23 assetType];
  lastActivity = [(HUQuickControlProxHandOffSummaryViewUpdater *)self lastActivity];
  v25 = [lastActivity isEqual:v12];

  v26 = HFLogForCategory();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v27)
    {
      *buf = 138412290;
      v60 = v12;
      _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "NOT Updating summary view for PCActivity = [%@]", buf, 0xCu);
    }
  }

  else
  {
    if (v27)
    {
      *buf = 138412546;
      v60 = v16;
      v61 = 2112;
      v62 = v12;
      _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "Updating summary view with secondary text [%@] for activity %@", buf, 0x16u);
    }

    titleView = [(HUQuickControlProxHandOffSummaryViewUpdater *)self titleView];
    summaryView = [titleView summaryView];
    [summaryView setSecondaryText:v16];

    if ([(HUQuickControlProxHandOffSummaryViewUpdater *)self _isHomePodPhoneCallStatusUpdateTimerActive]&& ([(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodPhoneCallActivity], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
    {
      [(HUQuickControlProxHandOffSummaryViewUpdater *)self _invalidateHomePodPhoneCallStatusUpdateTimer];
    }

    else if (![(HUQuickControlProxHandOffSummaryViewUpdater *)self _isHomePodPhoneCallStatusUpdateTimerActive])
    {
      homePodPhoneCallActivity = [(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodPhoneCallActivity];

      if (homePodPhoneCallActivity)
      {
        [(HUQuickControlProxHandOffSummaryViewUpdater *)self _startHomePodPhoneCallStatusUpdateTimer];
      }
    }

    if ([(HUQuickControlProxHandOffSummaryViewUpdater *)self _isHomePodTimerStatusUpdateTimerActive]&& ([(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodTimerActivity], v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
    {
      [(HUQuickControlProxHandOffSummaryViewUpdater *)self _invalidateHomePodTimerStatusUpdateTimer];
    }

    else if (![(HUQuickControlProxHandOffSummaryViewUpdater *)self _isHomePodTimerStatusUpdateTimerActive])
    {
      homePodTimerActivity = [(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodTimerActivity];

      if (homePodTimerActivity)
      {
        [(HUQuickControlProxHandOffSummaryViewUpdater *)self _startHomePodTimerStatusUpdateTimer];
      }
    }
  }

  v56 = v16;
  if (v19)
  {
    v34 = v19;
  }

  else
  {
    v34 = v22;
  }

  deviceName = [v34 deviceName];
  v55 = v22;
  titleView2 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self titleView];
  summaryView2 = [titleView2 summaryView];
  primaryText = [summaryView2 primaryText];
  v39 = [primaryText isEqualToString:deviceName];

  if ((v39 & 1) == 0)
  {
    v40 = HFLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = deviceName;
      _os_log_impl(&dword_20CEB6000, v40, OS_LOG_TYPE_DEFAULT, "Updating summary view with values - Primary Text [%@]", buf, 0xCu);
    }

    titleView3 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self titleView];
    summaryView3 = [titleView3 summaryView];
    [summaryView3 setPrimaryText:deviceName];
  }

  v43 = assetType;
  if (assetType)
  {
    titleView4 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self titleView];
    summaryView4 = [titleView4 summaryView];
    image = [summaryView4 image];
    if (image)
    {
      v47 = image;
      lastActivity2 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self lastActivity];
      v49 = [lastActivity2 isEqual:v12];

      v43 = assetType;
      if (v49)
      {
        goto LABEL_55;
      }
    }

    else
    {
    }

    v50 = [MEMORY[0x277D435D0] composedImageFor:v12 assetType:v43];
    v51 = HFLogForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      if (v43 >= 9)
      {
        v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", v43];
      }

      else
      {
        v52 = off_277DB90D8[v43 - 1];
      }

      *buf = 138413058;
      v60 = v50;
      v61 = 2112;
      v62 = v52;
      v63 = 2112;
      v64 = v20;
      v65 = 2112;
      v66 = v12;
      _os_log_impl(&dword_20CEB6000, v51, OS_LOG_TYPE_DEFAULT, "Updating summary view with Image = [%@] assetType = [%@] identifier = [%@] activity = [%@]", buf, 0x2Au);
    }

    titleView5 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self titleView];
    summaryView5 = [titleView5 summaryView];
    [summaryView5 setImage:v50];
  }

LABEL_55:
  [(HUQuickControlProxHandOffSummaryViewUpdater *)self setLastActivity:v12];
}

- (void)_startHomePodPhoneCallStatusUpdateTimer
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  [(HUQuickControlProxHandOffSummaryViewUpdater *)self setPhoneCallStatusUpdateTimer:v4];

  v5 = dispatch_time(0, 0);
  objc_initWeak(&location, self);
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@ Starting *HomePod* Phone Call Status Update Timer", buf, 0xCu);
  }

  phoneCallStatusUpdateTimer = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __86__HUQuickControlProxHandOffSummaryViewUpdater__startHomePodPhoneCallStatusUpdateTimer__block_invoke;
  handler[3] = &unk_277DB90B8;
  objc_copyWeak(v12, &location);
  v12[1] = a2;
  dispatch_source_set_event_handler(phoneCallStatusUpdateTimer, handler);

  phoneCallStatusUpdateTimer2 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
  dispatch_source_set_timer(phoneCallStatusUpdateTimer2, v5, 0x3B9ACA00uLL, 0);

  phoneCallStatusUpdateTimer3 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
  dispatch_resume(phoneCallStatusUpdateTimer3);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __86__HUQuickControlProxHandOffSummaryViewUpdater__startHomePodPhoneCallStatusUpdateTimer__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@ Now Updating *HomePod* Phone Call Status...", &v9, 0xCu);
  }

  v5 = [WeakRetained titleView];
  v6 = [v5 summaryView];
  v7 = [WeakRetained homePodPhoneCallActivity];
  v8 = [v7 activityString];
  [v6 setSecondaryText:v8];
}

- (void)_invalidateHomePodPhoneCallStatusUpdateTimer
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ Cancelling *HomePod* Phone Call Status Update Timer", &v7, 0xCu);
  }

  if ([(HUQuickControlProxHandOffSummaryViewUpdater *)self _isHomePodPhoneCallStatusUpdateTimerActive])
  {
    phoneCallStatusUpdateTimer = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
    dispatch_source_cancel(phoneCallStatusUpdateTimer);
  }

  [(HUQuickControlProxHandOffSummaryViewUpdater *)self setPhoneCallStatusUpdateTimer:0];
}

- (BOOL)_isHomePodPhoneCallStatusUpdateTimerActive
{
  phoneCallStatusUpdateTimer = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
  if (phoneCallStatusUpdateTimer)
  {
    phoneCallStatusUpdateTimer2 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
    v5 = dispatch_source_testcancel(phoneCallStatusUpdateTimer2) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_startHomePodTimerStatusUpdateTimer
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  [(HUQuickControlProxHandOffSummaryViewUpdater *)self setTimerStatusUpdateTimer:v4];

  v5 = dispatch_time(0, 0);
  objc_initWeak(&location, self);
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@ Starting *HomePod* MobileTimer Status Update Timer", buf, 0xCu);
  }

  timerStatusUpdateTimer = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __82__HUQuickControlProxHandOffSummaryViewUpdater__startHomePodTimerStatusUpdateTimer__block_invoke;
  handler[3] = &unk_277DB90B8;
  objc_copyWeak(v12, &location);
  v12[1] = a2;
  dispatch_source_set_event_handler(timerStatusUpdateTimer, handler);

  timerStatusUpdateTimer2 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
  dispatch_source_set_timer(timerStatusUpdateTimer2, v5, 0x3B9ACA00uLL, 0);

  timerStatusUpdateTimer3 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
  dispatch_resume(timerStatusUpdateTimer3);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __82__HUQuickControlProxHandOffSummaryViewUpdater__startHomePodTimerStatusUpdateTimer__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@ Now Updating *HomePod* MobileTimer Status...", &v9, 0xCu);
  }

  v5 = [WeakRetained titleView];
  v6 = [v5 summaryView];
  v7 = [WeakRetained homePodTimerActivity];
  v8 = [v7 activityString];
  [v6 setSecondaryText:v8];
}

- (void)_invalidateHomePodTimerStatusUpdateTimer
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ Cancelling *HomePod* MobileTimer Status Update Timer", &v7, 0xCu);
  }

  if ([(HUQuickControlProxHandOffSummaryViewUpdater *)self _isHomePodTimerStatusUpdateTimerActive])
  {
    timerStatusUpdateTimer = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
    dispatch_source_cancel(timerStatusUpdateTimer);
  }

  [(HUQuickControlProxHandOffSummaryViewUpdater *)self setTimerStatusUpdateTimer:0];
}

- (BOOL)_isHomePodTimerStatusUpdateTimerActive
{
  timerStatusUpdateTimer = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
  if (timerStatusUpdateTimer)
  {
    timerStatusUpdateTimer2 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
    v5 = dispatch_source_testcancel(timerStatusUpdateTimer2) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setupObservableActivityForActivity:(id)activity
{
  v24 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v7 = [activityType isEqualToString:*MEMORY[0x277D43608]];

  if (v7)
  {
    objc_opt_class();
    v8 = activityCopy;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    [(HUQuickControlProxHandOffSummaryViewUpdater *)self setHomePodPhoneCallActivity:v10];
    v11 = HFLogForCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v12 = NSStringFromSelector(a2);
    homePodPhoneCallActivity = [(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodPhoneCallActivity];
    v20 = 138412546;
    v21 = v12;
    v22 = 2112;
    v23 = homePodPhoneCallActivity;
    v14 = "%@ Found HomePod Phone Call Activity = [%@]";
LABEL_13:
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, v14, &v20, 0x16u);

LABEL_14:
    goto LABEL_15;
  }

  activityType2 = [activityCopy activityType];
  v16 = [activityType2 isEqualToString:*MEMORY[0x277D43610]];

  if (v16)
  {
    objc_opt_class();
    v17 = activityCopy;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    [(HUQuickControlProxHandOffSummaryViewUpdater *)self setHomePodTimerActivity:v19];
    v11 = HFLogForCategory();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v12 = NSStringFromSelector(a2);
    homePodPhoneCallActivity = [(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodTimerActivity];
    v20 = 138412546;
    v21 = v12;
    v22 = 2112;
    v23 = homePodPhoneCallActivity;
    v14 = "%@ Found HomePod MobileTimer Activity = [%@]";
    goto LABEL_13;
  }

LABEL_15:
}

- (void)didUpdateActivities:(id)activities forProxControlID:(id)d disambiguationContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  dCopy = d;
  contextCopy = context;
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v15 = 138413058;
    v16 = v13;
    v17 = 2112;
    v18 = activitiesCopy;
    v19 = 2112;
    v20 = dCopy;
    v21 = 2112;
    v22 = contextCopy;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@ didUpdateActivities = %@ forProxControlID = %@ disambiguationContext = %@", &v15, 0x2Au);
  }

  firstObject = [activitiesCopy firstObject];
  [(HUQuickControlProxHandOffSummaryViewUpdater *)self _setupObservableActivityForActivity:firstObject];

  [(HUQuickControlProxHandOffSummaryViewUpdater *)self _updateSummaryViewForActivities:activitiesCopy forProxControlID:dCopy disambiguationContext:contextCopy];
}

@end