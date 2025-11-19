@interface HUQuickControlProxHandOffSummaryViewUpdater
- (BOOL)_isHomePodPhoneCallStatusUpdateTimerActive;
- (BOOL)_isHomePodTimerStatusUpdateTimerActive;
- (HUQuickControlProxHandOffSummaryViewUpdater)initWithNavigationBarTitleView:(id)a3;
- (void)_invalidateHomePodPhoneCallStatusUpdateTimer;
- (void)_invalidateHomePodTimerStatusUpdateTimer;
- (void)_setupObservableActivityForActivity:(id)a3;
- (void)_startHomePodPhoneCallStatusUpdateTimer;
- (void)_startHomePodTimerStatusUpdateTimer;
- (void)_updateSummaryViewForActivities:(id)a3 forProxControlID:(id)a4 disambiguationContext:(id)a5;
- (void)dealloc;
- (void)didUpdateActivities:(id)a3 forProxControlID:(id)a4 disambiguationContext:(id)a5;
@end

@implementation HUQuickControlProxHandOffSummaryViewUpdater

- (HUQuickControlProxHandOffSummaryViewUpdater)initWithNavigationBarTitleView:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HUQuickControlProxHandOffSummaryViewUpdater;
  v6 = [(HUQuickControlProxHandOffSummaryViewUpdater *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_titleView, a3);
    if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
    {
      v8 = [MEMORY[0x277D14990] sharedInstance];
      [v8 addObserver:v7];
      v9 = [v8 lastActivities];
      v10 = [v9 firstObject];
      [(HUQuickControlProxHandOffSummaryViewUpdater *)v7 _setupObservableActivityForActivity:v10];

      v11 = [v8 lastActivities];
      v12 = [v8 lastIdentifier];
      v13 = [v8 lastDisambiguationContext];
      [(HUQuickControlProxHandOffSummaryViewUpdater *)v7 _updateSummaryViewForActivities:v11 forProxControlID:v12 disambiguationContext:v13];
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

- (void)_updateSummaryViewForActivities:(id)a3 forProxControlID:(id)a4 disambiguationContext:(id)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v57 = v7;
  if ([v7 count])
  {
    v9 = [v7 objectAtIndexedSubscript:0];
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

  v13 = [(__CFString *)v12 activityString];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = _HULocalizedStringWithDefaultValue(@"HUQuickControlProxHandoffSummaryNotPlaying", @"HUQuickControlProxHandoffSummaryNotPlaying", 1);
  }

  v16 = v15;

  objc_opt_class();
  v17 = v8;
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

  v58 = [v23 assetType];
  v24 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self lastActivity];
  v25 = [v24 isEqual:v12];

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

    v28 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self titleView];
    v29 = [v28 summaryView];
    [v29 setSecondaryText:v16];

    if ([(HUQuickControlProxHandOffSummaryViewUpdater *)self _isHomePodPhoneCallStatusUpdateTimerActive]&& ([(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodPhoneCallActivity], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
    {
      [(HUQuickControlProxHandOffSummaryViewUpdater *)self _invalidateHomePodPhoneCallStatusUpdateTimer];
    }

    else if (![(HUQuickControlProxHandOffSummaryViewUpdater *)self _isHomePodPhoneCallStatusUpdateTimerActive])
    {
      v31 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodPhoneCallActivity];

      if (v31)
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
      v33 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodTimerActivity];

      if (v33)
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

  v35 = [v34 deviceName];
  v55 = v22;
  v36 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self titleView];
  v37 = [v36 summaryView];
  v38 = [v37 primaryText];
  v39 = [v38 isEqualToString:v35];

  if ((v39 & 1) == 0)
  {
    v40 = HFLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v35;
      _os_log_impl(&dword_20CEB6000, v40, OS_LOG_TYPE_DEFAULT, "Updating summary view with values - Primary Text [%@]", buf, 0xCu);
    }

    v41 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self titleView];
    v42 = [v41 summaryView];
    [v42 setPrimaryText:v35];
  }

  v43 = v58;
  if (v58)
  {
    v44 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self titleView];
    v45 = [v44 summaryView];
    v46 = [v45 image];
    if (v46)
    {
      v47 = v46;
      v48 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self lastActivity];
      v49 = [v48 isEqual:v12];

      v43 = v58;
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

    v53 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self titleView];
    v54 = [v53 summaryView];
    [v54 setImage:v50];
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

  v8 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __86__HUQuickControlProxHandOffSummaryViewUpdater__startHomePodPhoneCallStatusUpdateTimer__block_invoke;
  handler[3] = &unk_277DB90B8;
  objc_copyWeak(v12, &location);
  v12[1] = a2;
  dispatch_source_set_event_handler(v8, handler);

  v9 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
  dispatch_source_set_timer(v9, v5, 0x3B9ACA00uLL, 0);

  v10 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
  dispatch_resume(v10);

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
    v6 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
    dispatch_source_cancel(v6);
  }

  [(HUQuickControlProxHandOffSummaryViewUpdater *)self setPhoneCallStatusUpdateTimer:0];
}

- (BOOL)_isHomePodPhoneCallStatusUpdateTimerActive
{
  v3 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
  if (v3)
  {
    v4 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self phoneCallStatusUpdateTimer];
    v5 = dispatch_source_testcancel(v4) == 0;
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

  v8 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __82__HUQuickControlProxHandOffSummaryViewUpdater__startHomePodTimerStatusUpdateTimer__block_invoke;
  handler[3] = &unk_277DB90B8;
  objc_copyWeak(v12, &location);
  v12[1] = a2;
  dispatch_source_set_event_handler(v8, handler);

  v9 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
  dispatch_source_set_timer(v9, v5, 0x3B9ACA00uLL, 0);

  v10 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
  dispatch_resume(v10);

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
    v6 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
    dispatch_source_cancel(v6);
  }

  [(HUQuickControlProxHandOffSummaryViewUpdater *)self setTimerStatusUpdateTimer:0];
}

- (BOOL)_isHomePodTimerStatusUpdateTimerActive
{
  v3 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
  if (v3)
  {
    v4 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self timerStatusUpdateTimer];
    v5 = dispatch_source_testcancel(v4) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setupObservableActivityForActivity:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 activityType];
  v7 = [v6 isEqualToString:*MEMORY[0x277D43608]];

  if (v7)
  {
    objc_opt_class();
    v8 = v5;
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
    v13 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodPhoneCallActivity];
    v20 = 138412546;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v14 = "%@ Found HomePod Phone Call Activity = [%@]";
LABEL_13:
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, v14, &v20, 0x16u);

LABEL_14:
    goto LABEL_15;
  }

  v15 = [v5 activityType];
  v16 = [v15 isEqualToString:*MEMORY[0x277D43610]];

  if (v16)
  {
    objc_opt_class();
    v17 = v5;
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
    v13 = [(HUQuickControlProxHandOffSummaryViewUpdater *)self homePodTimerActivity];
    v20 = 138412546;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v14 = "%@ Found HomePod MobileTimer Activity = [%@]";
    goto LABEL_13;
  }

LABEL_15:
}

- (void)didUpdateActivities:(id)a3 forProxControlID:(id)a4 disambiguationContext:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v15 = 138413058;
    v16 = v13;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@ didUpdateActivities = %@ forProxControlID = %@ disambiguationContext = %@", &v15, 0x2Au);
  }

  v14 = [v9 firstObject];
  [(HUQuickControlProxHandOffSummaryViewUpdater *)self _setupObservableActivityForActivity:v14];

  [(HUQuickControlProxHandOffSummaryViewUpdater *)self _updateSummaryViewForActivities:v9 forProxControlID:v10 disambiguationContext:v11];
}

@end