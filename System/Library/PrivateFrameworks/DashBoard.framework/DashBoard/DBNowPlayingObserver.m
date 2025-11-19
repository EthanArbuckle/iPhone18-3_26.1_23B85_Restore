@interface DBNowPlayingObserver
- (BOOL)_isValidNowPlayingApplication:(id)a3;
- (DBAppHistory)appHistory;
- (DBEnvironmentConfiguration)environment;
- (DBNowPlayingDelegate)delegate;
- (DBNowPlayingObserver)initWithEnvironmentConfiguration:(id)a3;
- (id)nowPlayingLaunchInfoWithSource:(unint64_t)a3;
- (void)_carDidTakeMainAudio:(id)a3;
- (void)_nowPlayingDidChangeToBundleIdentifier:(id)a3;
- (void)_updatePlaybackStateForBundleIdentifier:(id)a3 playing:(BOOL)a4;
- (void)handleVideoStartedFromBundleIdentifier:(id)a3;
- (void)nowPlayingManager:(id)a3 didUpdateSnapshot:(id)a4;
@end

@implementation DBNowPlayingObserver

- (DBNowPlayingObserver)initWithEnvironmentConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DBNowPlayingObserver;
  v5 = [(DBNowPlayingObserver *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = [v4 appHistory];
    objc_storeWeak(&v6->_appHistory, v7);

    v8 = [MEMORY[0x277CF9158] sharedManager];
    [v8 addNowPlayingObserver:v6];

    if ([v4 isVehicleDataSession])
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:v6 selector:sel__carDidTakeMainAudio_ name:*MEMORY[0x277CF8918] object:0];
    }
  }

  return v6;
}

- (void)_carDidTakeMainAudio:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DBNowPlayingObserver__carDidTakeMainAudio___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__DBNowPlayingObserver__carDidTakeMainAudio___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  v3 = [v2 isVehicleDataSession];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _nowPlayingDidChangeToBundleIdentifier:@"com.apple.CarRadio"];
  }
}

- (BOOL)_isValidNowPlayingApplication:(id)a3
{
  v4 = a3;
  v5 = [(DBNowPlayingObserver *)self appHistory];
  v6 = [v4 bundleIdentifier];
  v7 = [v5 appDockCategoryForBundleIdentifier:v6];

  if (v7 == 2)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(DBNowPlayingObserver *)self appHistory];
    v10 = [v4 bundleIdentifier];
    v11 = [v9 policyForBundleIdentifier:v10];

    if ([v11 isCarPlaySupported])
    {
      v8 = v7 == 0;
    }

    else
    {
      v12 = [v4 info];
      v8 = [v12 supportsBackgroundMode:*MEMORY[0x277D76778]];
    }
  }

  return v8;
}

- (id)nowPlayingLaunchInfoWithSource:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(DBNowPlayingObserver *)self nowPlayingApplication];
  v6 = [(DBNowPlayingObserver *)self environment];
  if (![v6 isVehicleDataSession])
  {
    goto LABEL_4;
  }

  v7 = [(DBNowPlayingObserver *)self environment];
  v8 = [v7 session];
  v9 = [v8 carOwnsMainAudio];

  if (v9)
  {
    v6 = +[DBApplicationController sharedInstance];
    v10 = [v6 applicationWithBundleIdentifier:@"com.apple.CarRadio"];

    v5 = v10;
LABEL_4:
  }

  if (v5 || (-[DBNowPlayingObserver appHistory](self, "appHistory"), v11 = objc_claimAutoreleasedReturnValue(), [v11 orderedAppsMatchingDockCategory:2], v12 = objc_claimAutoreleasedReturnValue(), v11, v21[0] = MEMORY[0x277D85DD0], v21[1] = 3221225472, v21[2] = __55__DBNowPlayingObserver_nowPlayingLaunchInfoWithSource___block_invoke, v21[3] = &unk_278F04530, v21[4] = self, objc_msgSend(v12, "bs_firstObjectPassingTest:", v21), v5 = objc_claimAutoreleasedReturnValue(), v12, v5))
  {
    v13 = [v5 bundleIdentifier];
    if ([v13 isEqualToString:@"com.apple.WebKit.WebContent"])
    {
      v14 = DBLogForCategory(0);
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "Now playing app is web content; ignoring.";
LABEL_19:
        _os_log_impl(&dword_248146000, &v14->super, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
      }
    }

    else
    {
      if ([(DBNowPlayingObserver *)self _isValidNowPlayingApplication:v5])
      {
        v14 = objc_alloc_init(DBActivationSettings);
        v16 = [MEMORY[0x277CBEBC0] URLWithString:@"music://cardisplay/show-now-playing"];
        [(DBActivationSettings *)v14 setUrl:v16];

        if (a3)
        {
          v17 = a3;
        }

        else
        {
          v17 = 2;
        }

        [(DBActivationSettings *)v14 setLaunchSource:v17];
        v18 = DBLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v5;
          _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Resolved now playing launch info to %@", buf, 0xCu);
        }

        v19 = [DBApplicationLaunchInfo launchInfoForApplication:v5 withActivationSettings:v14];
        goto LABEL_21;
      }

      v14 = DBLogForCategory(0);
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "Now playing app is not valid for CarPlay; ignoring.";
        goto LABEL_19;
      }
    }

    v19 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "No available audio app for now playing.", buf, 2u);
  }

  v19 = 0;
LABEL_22:

  return v19;
}

uint64_t __55__DBNowPlayingObserver_nowPlayingLaunchInfoWithSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) environment];
  v5 = [v4 isVehicleDataSession];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 bundleIdentifier];
    v6 = [v7 isEqualToString:@"com.apple.CarRadio"] ^ 1;
  }

  return v6;
}

- (void)handleVideoStartedFromBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "video started, updating now playing", v6, 2u);
  }

  [(DBNowPlayingObserver *)self _nowPlayingDidChangeToBundleIdentifier:v4];
}

- (void)_nowPlayingDidChangeToBundleIdentifier:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Resolved now playing identifier to %@", buf, 0xCu);
  }

  v24 = 0;
  v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v24];
  v7 = v24;
  if (v6)
  {
    v8 = [v6 applicationState];
    v9 = [v8 isValid];

    if (v9)
    {
      v10 = [v6 applicationState];
      v11 = [v10 isRestricted];

      if (v11)
      {
        v12 = DBLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = "Now playing application is restricted; ignoring.";
LABEL_12:
          _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
        }
      }

      else
      {
        v14 = [(DBNowPlayingObserver *)self nowPlayingApplication];
        v12 = [v14 bundleIdentifier];

        if ([v12 isEqualToString:v4])
        {
          v15 = DBLogForCategory(0);
          if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, &v15->super, OS_LOG_TYPE_DEFAULT, "No changes to now playing bundle identifier.", buf, 2u);
          }
        }

        else
        {
          v16 = +[DBApplicationController sharedInstance];
          v15 = [v16 applicationWithBundleIdentifier:v4];

          if (!v15)
          {
            v17 = [[DBApplicationInfo alloc] initWithApplicationRecord:v6];
            v15 = [[DBApplication alloc] initWithApplicationInfo:v17];
          }

          v18 = [(DBNowPlayingObserver *)self _isValidNowPlayingApplication:v15];
          v19 = DBLogForCategory(0);
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            if (v20)
            {
              *buf = 138412290;
              v26 = v15;
              _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "Updated now playing to %@", buf, 0xCu);
            }

            [(DBNowPlayingObserver *)self setNowPlayingApplication:v15];
            v21 = [(DBNowPlayingObserver *)self delegate];
            v22 = objc_opt_respondsToSelector();

            if (v22)
            {
              v23[0] = MEMORY[0x277D85DD0];
              v23[1] = 3221225472;
              v23[2] = __63__DBNowPlayingObserver__nowPlayingDidChangeToBundleIdentifier___block_invoke;
              v23[3] = &unk_278F01580;
              v23[4] = self;
              dispatch_async(MEMORY[0x277D85CD0], v23);
            }
          }

          else
          {
            if (v20)
            {
              *buf = 0;
              _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "Now playing app is not valid for CarPlay; ignoring.", buf, 2u);
            }
          }
        }
      }
    }

    else
    {
      v12 = DBLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "No available now playing app record.";
        goto LABEL_12;
      }
    }
  }

  else
  {
    v12 = DBLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(DBNowPlayingObserver *)v7 _nowPlayingDidChangeToBundleIdentifier:v12];
    }
  }
}

void __63__DBNowPlayingObserver__nowPlayingDidChangeToBundleIdentifier___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 nowPlayingApplication];
  [v4 nowPlayingObserver:v2 didChangeNowPlayingApplication:v3];
}

- (void)_updatePlaybackStateForBundleIdentifier:(id)a3 playing:(BOOL)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
  v8 = [v7 applicationState];
  v9 = [v8 isValid];

  if (v9)
  {
    v10 = +[DBApplicationController sharedInstance];
    v11 = [v10 applicationWithBundleIdentifier:v6];

    self->_playing = a4;
    v12 = [(DBNowPlayingObserver *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__DBNowPlayingObserver__updatePlaybackStateForBundleIdentifier_playing___block_invoke;
      block[3] = &unk_278F03FE0;
      block[4] = self;
      v16 = a4;
      v15 = v11;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __72__DBNowPlayingObserver__updatePlaybackStateForBundleIdentifier_playing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 nowPlayingObserver:*(a1 + 32) didUpdatePlaybackState:*(a1 + 48) inApplication:*(a1 + 40)];
}

- (void)nowPlayingManager:(id)a3 didUpdateSnapshot:(id)a4
{
  v5 = a4;
  v7 = [v5 bundleIdentifier];
  [(DBNowPlayingObserver *)self _nowPlayingDidChangeToBundleIdentifier:v7];
  v6 = [v5 state];

  [(DBNowPlayingObserver *)self _updatePlaybackStateForBundleIdentifier:v7 playing:v6 == 2];
}

- (DBAppHistory)appHistory
{
  WeakRetained = objc_loadWeakRetained(&self->_appHistory);

  return WeakRetained;
}

- (DBEnvironmentConfiguration)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (DBNowPlayingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_nowPlayingDidChangeToBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Error looking up now playing application record: %@", &v2, 0xCu);
}

@end