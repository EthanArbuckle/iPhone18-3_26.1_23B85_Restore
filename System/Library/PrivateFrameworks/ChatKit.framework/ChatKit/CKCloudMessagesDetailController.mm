@interface CKCloudMessagesDetailController
+ (id)specifier;
- (BOOL)_isCloudEnabled;
- (BOOL)_isSyncingWithCloud;
- (CKCloudMessagesDetailController)init;
- (id)cloudDocsSpecifiers;
- (id)dataSize:(id)size;
- (id)specifiers;
- (void)_displayiCloudErrorMessage;
- (void)connectToDaemon;
- (void)dealloc;
- (void)disableAndDelete:(id)delete;
- (void)disconnectFromDaemon;
- (void)hideSpinner;
- (void)setEnabledDidReturned:(id)returned;
- (void)showSpinnerMessage:(id)message;
- (void)tryToDisableAllDevicesDidReturn:(id)return;
- (void)undoDelete:(id)delete;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKCloudMessagesDetailController

- (void)showSpinnerMessage:(id)message
{
  messageCopy = message;
  view = [(CKCloudMessagesDetailController *)self view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  v7 = objc_alloc_init(MEMORY[0x1E69DCE40]);
  cloudKitProgressView = self->_cloudKitProgressView;
  self->_cloudKitProgressView = v7;

  [(UIProgressHUD *)self->_cloudKitProgressView setAutoresizingMask:45];
  [(UIProgressHUD *)self->_cloudKitProgressView setFontSize:16];
  [(UIProgressHUD *)self->_cloudKitProgressView setText:messageCopy];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  rootController = [(CKCloudMessagesDetailController *)self rootController];
  v12 = rootController;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    parentViewController = [rootController parentViewController];
    view2 = [parentViewController view];
  }

  else
  {
    view2 = [rootController view];
  }

  [(UIProgressHUD *)self->_cloudKitProgressView showInView:view2];
  view3 = [(CKCloudMessagesDetailController *)self view];
  window2 = [view3 window];

  [window2 setUserInteractionEnabled:0];
}

- (void)hideSpinner
{
  view = [(CKCloudMessagesDetailController *)self view];
  window = [view window];

  [(UIProgressHUD *)self->_cloudKitProgressView hide];
  cloudKitProgressView = self->_cloudKitProgressView;
  self->_cloudKitProgressView = 0;

  [window setUserInteractionEnabled:1];
}

+ (id)specifier
{
  v2 = MEMORY[0x1E69C5748];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MESSAGES" value:&stru_1F04268F8 table:@"General"];
  v5 = [v2 preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  return v5;
}

- (CKCloudMessagesDetailController)init
{
  v6.receiver = self;
  v6.super_class = CKCloudMessagesDetailController;
  v2 = [(CKCloudMessagesDetailController *)&v6 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_setEnabledDidReturned_ name:@"com.apple.IMCore.IMCloudKitHooks.SetEnabledReturned" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_tryToDisableAllDevicesDidReturn_ name:@"com.apple.IMCore.IMCloudKitHooks.tryToDisableAllDevicesReturned" object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(CKCloudMessagesDetailController *)self disconnectFromDaemon];
  v3.receiver = self;
  v3.super_class = CKCloudMessagesDetailController;
  [(CKCloudMessagesDetailController *)&v3 dealloc];
}

- (id)cloudDocsSpecifiers
{
  if (!self->_plugin)
  {
    v3 = objc_alloc_init(CKStoragePlugin);
    plugin = self->_plugin;
    self->_plugin = &v3->super;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(STStoragePlugin *)self->_plugin performSelector:sel_cloudDocumentSpecifiers withObject:self];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CKCloudMessagesDetailController;
  [(CKCloudMessagesDetailController *)&v7 viewWillAppear:appear];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"MESSAGES" value:&stru_1F04268F8 table:@"General"];
  navigationItem = [(CKCloudMessagesDetailController *)self navigationItem];
  [navigationItem setTitle:v5];
}

- (id)dataSize:(id)size
{
  v3 = [size propertyForKey:*MEMORY[0x1E69D4860]];
  [v3 longLongValue];
  v4 = NSLocalizedFileSizeDescription();

  return v4;
}

- (id)specifiers
{
  v2 = *MEMORY[0x1E69C57B8];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (!v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v7 = [defaultWorkspace applicationIsInstalled:@"com.apple.MobileSMS"];

    if (v7)
    {
      v8 = [MEMORY[0x1E69D4850] specifierForAppIdentifier:@"com.apple.MobileSMS"];
      if (!v8)
      {

        v42 = 0;
        goto LABEL_22;
      }

      v9 = v8;
      [array addObject:v8];
    }

    v10 = *MEMORY[0x1E69D4860];
    v11 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x1E69C5808]) propertyForKey:*MEMORY[0x1E69D4860]];
    v12 = 0x1E696A000uLL;
    if (v11)
    {
      v13 = MEMORY[0x1E69C5748];
      v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"DOCUMENTS_AND_DATA" value:&stru_1F04268F8 table:@"General"];
      v16 = [v13 preferenceSpecifierNamed:v15 target:self set:0 get:sel_dataSize_ detail:0 cell:4 edit:0];

      [v16 setProperty:v11 forKey:v10];
      [array addObject:v16];
    }

    mEMORY[0x1E69A5B20] = [MEMORY[0x1E69A5B20] sharedInstance];
    eligibleForTruthZone = [mEMORY[0x1E69A5B20] eligibleForTruthZone];

    mEMORY[0x1E69A5B20]2 = [MEMORY[0x1E69A5B20] sharedInstance];
    isInExitState = [mEMORY[0x1E69A5B20]2 isInExitState];

    if (eligibleForTruthZone)
    {
      v59 = v11;
      v21 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"DISABLE_AND_DELETE"];
      if (isInExitState)
      {
        mEMORY[0x1E69A5B20]3 = [MEMORY[0x1E69A5B20] sharedInstance];
        exitDate = [mEMORY[0x1E69A5B20]3 exitDate];

        v24 = [exitDate dateByAddingTimeInterval:2678400.0];
        v25 = objc_alloc(MEMORY[0x1E695DEE8]);
        v26 = [v25 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
        date = [MEMORY[0x1E695DF00] date];
        v57 = v26;
        v58 = v24;
        v28 = [v26 components:16 fromDate:date toDate:v24 options:0];

        v29 = [v28 day];
        if (v29 < 0)
        {
          v36 = 0;
        }

        else
        {
          v30 = v29;
          v31 = array;
          v32 = MEMORY[0x1E696AEC0];
          v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v34 = [v33 localizedStringForKey:@"MIC_WILL_DELETE_DESCRIPTION_FORMAT" value:&stru_1F04268F8 table:@"General"];
          v35 = v32;
          array = v31;
          v12 = 0x1E696A000;
          v36 = [v35 stringWithFormat:v34, v30];
        }

        [v21 setProperty:v36 forKey:*MEMORY[0x1E69C5900]];
        [array addObject:v21];
        v43 = MEMORY[0x1E69C5748];
        v44 = [*(v12 + 2792) bundleForClass:objc_opt_class()];
        [v44 localizedStringForKey:@"UNDO_DELETE" value:&stru_1F04268F8 table:@"General"];
        v46 = v45 = array;
        v47 = [v43 preferenceSpecifierNamed:v46 target:self set:0 get:0 detail:0 cell:13 edit:0];

        array = v45;
        [v47 setButtonAction:sel_undoDelete_];
        [v47 setProperty:&unk_1F04E8520 forKey:*MEMORY[0x1E69C5818]];
        [v45 addObject:v47];
      }

      else
      {
        v37 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v38 = [v37 localizedStringForKey:@"DISABLE_AND_DELETE_DESCRIPTION" value:&stru_1F04268F8 table:@"General"];
        [v21 setProperty:v38 forKey:*MEMORY[0x1E69C5900]];

        [array addObject:v21];
        v39 = MEMORY[0x1E69C5748];
        v40 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v41 = [v40 localizedStringForKey:@"DISABLE_AND_DELETE" value:&stru_1F04268F8 table:@"General"];
        exitDate = [v39 deleteButtonSpecifierWithName:v41 target:self action:sel_disableAndDelete_];

        [array addObject:exitDate];
      }

      v11 = v59;
    }

    cloudDocsSpecifiers = [(CKCloudMessagesDetailController *)self cloudDocsSpecifiers];
    _isSyncingWithCloud = [(CKCloudMessagesDetailController *)self _isSyncingWithCloud];
    _isCloudEnabled = [(CKCloudMessagesDetailController *)self _isCloudEnabled];
    if ([cloudDocsSpecifiers count] && !_isSyncingWithCloud && _isCloudEnabled)
    {
      v51 = MEMORY[0x1E69C5748];
      v52 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v53 = [v52 localizedStringForKey:@"MESSAGES" value:&stru_1F04268F8 table:@"General"];
      v54 = [v51 groupSpecifierWithName:v53];
      [array addObject:v54];

      [array addObjectsFromArray:cloudDocsSpecifiers];
    }

    v55 = *(&self->super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.isa + v2) = array;

    v3 = *(&self->super.super.super.super.super.isa + v2);
  }

  v42 = v3;
LABEL_22:

  return v42;
}

- (void)disableAndDelete:(id)delete
{
  deleteCopy = delete;
  [(CKCloudMessagesDetailController *)self connectToDaemon];
  v4 = MEMORY[0x1E69DC648];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DISABLE_ALERT_CANCEL" value:&stru_1F04268F8 table:@"General"];
  v7 = [v4 actionWithTitle:v6 style:1 handler:0];

  v8 = MEMORY[0x1E69DC648];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"DISABLE_ALERT_DELETE_MESSAGES" value:&stru_1F04268F8 table:@"General"];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __52__CKCloudMessagesDetailController_disableAndDelete___block_invoke;
  v30[3] = &unk_1E72EBFE8;
  v30[4] = self;
  v11 = [v8 actionWithTitle:v10 style:2 handler:v30];

  v12 = MEMORY[0x1E69DC650];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"DISABLE_ALERT_TITLE" value:&stru_1F04268F8 table:@"General"];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"DISABLE_ALERT_MESSAGE" value:&stru_1F04268F8 table:@"General"];
  v17 = [v12 alertControllerWithTitle:v14 message:v16 preferredStyle:0];

  [v17 addAction:v7];
  [v17 addAction:v11];
  v18 = [(CKCloudMessagesDetailController *)self cachedCellForSpecifier:deleteCopy];

  if (v18)
  {
    popoverPresentationController = [v17 popoverPresentationController];
    [popoverPresentationController setSourceView:v18];

    [v18 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    popoverPresentationController2 = [v17 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v21, v23, v25, v27}];
  }

  [(CKCloudMessagesDetailController *)self presentViewController:v17 animated:1 completion:0];
}

void __52__CKCloudMessagesDetailController_disableAndDelete___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ICLOUD_TURNING_OFF" value:&stru_1F04268F8 table:@"General"];
  [v1 showSpinnerMessage:v3];

  v4 = [MEMORY[0x1E69A5B20] sharedInstance];
  [v4 tryToDisableAllDevices];
}

- (void)tryToDisableAllDevicesDidReturn:(id)return
{
  userInfo = [return userInfo];
  [(CKCloudMessagesDetailController *)self hideSpinner];
  v4 = [userInfo objectForKeyedSubscript:@"ResultSuccess"];
  bOOLValue = [v4 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [(CKCloudMessagesDetailController *)self _displayiCloudErrorMessage];
  }

  [(CKCloudMessagesDetailController *)self reloadSpecifiers];
}

- (void)_displayiCloudErrorMessage
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v3 localizedStringForKey:@"EXIT_ICLOUD_ERROR_TITLE" value:&stru_1F04268F8 table:@"General"];

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"EXIT_ICLOUD_ERROR_MESSAGE" value:&stru_1F04268F8 table:@"General"];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"EXIT_ICLOUD_ERROR_CONFIRM" value:&stru_1F04268F8 table:@"General"];

  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v5 preferredStyle:1];
  v9 = [MEMORY[0x1E69DC648] actionWithTitle:v7 style:0 handler:0];
  [v8 addAction:v9];

  [(CKCloudMessagesDetailController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)undoDelete:(id)delete
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ICLOUD_TURNING_ON" value:&stru_1F04268F8 table:@"General"];
  [(CKCloudMessagesDetailController *)self showSpinnerMessage:v5];

  mEMORY[0x1E69A5B20] = [MEMORY[0x1E69A5B20] sharedInstance];
  [mEMORY[0x1E69A5B20] setEnabled:1];
}

- (void)setEnabledDidReturned:(id)returned
{
  userInfo = [returned userInfo];
  [(CKCloudMessagesDetailController *)self hideSpinner];
  v4 = [userInfo objectForKeyedSubscript:@"ResultSuccess"];
  bOOLValue = [v4 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [(CKCloudMessagesDetailController *)self _displayiCloudErrorMessage];
  }

  [(CKCloudMessagesDetailController *)self reloadSpecifiers];
}

- (void)connectToDaemon
{
  daemonConnection = [(CKCloudMessagesDetailController *)self daemonConnection];

  if (!daemonConnection)
  {
    mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [mEMORY[0x1E69A5B50] multiplexedConnectionWithLabel:v6 capabilities:512 context:0];
    [(CKCloudMessagesDetailController *)self setDaemonConnection:v7];

    daemonConnection2 = [(CKCloudMessagesDetailController *)self daemonConnection];
    [daemonConnection2 connectWithCompletion:&__block_literal_global_264];
  }
}

void __50__CKCloudMessagesDetailController_connectToDaemon__block_invoke()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "connected to daemon", v1, 2u);
    }
  }
}

- (void)disconnectFromDaemon
{
  daemonConnection = [(CKCloudMessagesDetailController *)self daemonConnection];
  [daemonConnection invalidate];

  [(CKCloudMessagesDetailController *)self setDaemonConnection:0];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "disconnected from daemon", v5, 2u);
    }
  }
}

- (BOOL)_isSyncingWithCloud
{
  mEMORY[0x1E69A5B20] = [MEMORY[0x1E69A5B20] sharedInstance];
  isSyncing = [mEMORY[0x1E69A5B20] isSyncing];

  return isSyncing;
}

- (BOOL)_isCloudEnabled
{
  mEMORY[0x1E69A5B20] = [MEMORY[0x1E69A5B20] sharedInstance];
  isEnabled = [mEMORY[0x1E69A5B20] isEnabled];

  return isEnabled;
}

@end