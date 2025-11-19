@interface CSDeviceUnblockViewModel
- (CSDeviceBlockViewController)blockViewController;
- (CSDeviceUnblockViewModel)initWithUnblockPolicy:(id)a3 blockViewController:(id)a4;
- (id)_localizedProductName;
- (id)_localizedStringForKey:(id)a3;
- (id)lastBackupTime;
- (void)lastBackupTime;
@end

@implementation CSDeviceUnblockViewModel

- (CSDeviceUnblockViewModel)initWithUnblockPolicy:(id)a3 blockViewController:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CSDeviceUnblockViewModel;
  v9 = [(CSDeviceUnblockViewModel *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unblockPolicy, a3);
    objc_storeWeak(&v10->_blockViewController, v8);
    v11 = [v8 findMyAccount];
    account = v10->_account;
    v10->_account = v11;

    v13 = SBLogDashBoard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(ACAccount *)v10->_account aa_altDSID];
      v15 = [(ACAccount *)v10->_account aa_primaryEmail];
      *buf = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, "_account is: %@, apple id: %@", buf, 0x16u);
    }
  }

  return v10;
}

- (id)_localizedProductName
{
  v2 = [MEMORY[0x277CF0CA8] sharedInstance];
  v3 = [v2 localizedProductName];

  return v3;
}

- (id)_localizedStringForKey:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_28302FDA0 table:@"CoverSheet"];

  return v6;
}

- (id)lastBackupTime
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "Obtaining the last backup date", buf, 2u);
  }

  account = self->_account;
  if (!account)
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CSDeviceUnblockViewModel *)v8 lastBackupTime];
    }

    goto LABEL_13;
  }

  if (([(ACAccount *)account isEnabledForDataclass:*MEMORY[0x277CB90C8]]& 1) == 0)
  {
    v8 = SBLogDashBoard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CSDeviceUnblockViewModel *)v8 lastBackupTime];
    }

LABEL_13:
    v10 = 0;
    goto LABEL_23;
  }

  v5 = objc_alloc(MEMORY[0x277D28A40]);
  v6 = self->_account;
  v22 = 0;
  v7 = [v5 initWithAccount:v6 delegate:self eventQueue:MEMORY[0x277D85CD0] error:&v22];
  v8 = v22;
  if (v8)
  {
    v9 = SBLogDashBoard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CSDeviceUnblockViewModel *)v8 lastBackupTime];
    }

    v10 = 0;
  }

  else
  {
    v21 = 0;
    v11 = [v7 dateOfLastBackupWithError:&v21];
    v12 = v21;
    if (v11)
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"LOCKSCREEN_LAST_BACKUP_TITLE" value:&stru_28302FDA0 table:@"CoverSheet"];

      v15 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v15 setDoesRelativeDateFormatting:1];
      [v15 setDateStyle:1];
      [v15 setTimeStyle:1];
      v16 = MEMORY[0x277CCACA8];
      v17 = [v15 stringFromDate:v11];
      v18 = [v16 localizedStringWithFormat:@"%@: %@", v14, v17];

      v19 = SBLogDashBoard();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v18;
        _os_log_impl(&dword_21EB05000, v19, OS_LOG_TYPE_DEFAULT, "Last successful backup: %@", buf, 0xCu);
      }

      v9 = v18;
    }

    else
    {
      v14 = SBLogDashBoard();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "No backup found!", buf, 2u);
      }

      v9 = 0;
    }

    v10 = v9;
  }

LABEL_23:

  return v10;
}

- (CSDeviceBlockViewController)blockViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_blockViewController);

  return WeakRetained;
}

- (void)lastBackupTime
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*a2 username];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_21EB05000, a3, OS_LOG_TYPE_ERROR, "Error initializing MBManager: %@, for user: %@", &v6, 0x16u);
}

@end