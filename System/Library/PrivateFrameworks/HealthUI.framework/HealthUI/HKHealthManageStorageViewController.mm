@interface HKHealthManageStorageViewController
- (HKHealthManageStorageViewController)init;
- (id)specifiers;
- (void)_disableAndDelete:(id)delete;
- (void)_loadCloudSyncStorageStatus;
- (void)confirmDisable:(id)disable;
- (void)hideSpinner;
- (void)showSpinnerMessage:(id)message;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKHealthManageStorageViewController

- (HKHealthManageStorageViewController)init
{
  v8.receiver = self;
  v8.super_class = HKHealthManageStorageViewController;
  v2 = [(HKHealthManageStorageViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_status = 0;
    v4 = objc_alloc_init(MEMORY[0x1E696C1C0]);
    v5 = [objc_alloc(MEMORY[0x1E696BFE0]) initWithHealthStore:v4];
    cloudSyncControl = v3->_cloudSyncControl;
    v3->_cloudSyncControl = v5;

    [(HKHealthManageStorageViewController *)v3 _loadCloudSyncStorageStatus];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = HKHealthManageStorageViewController;
  [(HKHealthManageStorageViewController *)&v7 viewWillAppear:appear];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"HEALTH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  navigationItem = [(HKHealthManageStorageViewController *)self navigationItem];
  [navigationItem setTitle:v5];
}

- (id)specifiers
{
  v2 = *MEMORY[0x1E69C57B8];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
    goto LABEL_16;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v7 = getSTStorageAppHeaderCellClass_softClass;
  v33 = getSTStorageAppHeaderCellClass_softClass;
  if (!getSTStorageAppHeaderCellClass_softClass)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __getSTStorageAppHeaderCellClass_block_invoke;
    v29[3] = &unk_1E81B5C18;
    v29[4] = &v30;
    __getSTStorageAppHeaderCellClass_block_invoke(v29);
    v7 = v31[3];
  }

  v8 = v7;
  _Block_object_dispose(&v30, 8);
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  healthAppNotInstalled = [mEMORY[0x1E696C608] healthAppNotInstalled];

  if (healthAppNotInstalled)
  {
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:@"HEALTH_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v13 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:&stru_1F42FFBE0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    [v13 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
    [v13 setProperty:@"com.apple.graphic-icon.health-data" forKey:*MEMORY[0x1E69C5930]];
    [v13 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5950]];
    [v13 setName:v12];
    [v6 addObject:v13];
  }

  else
  {
    v12 = [v7 specifierForAppIdentifier:@"com.apple.Health"];
    [v6 addObject:v12];
  }

  v14 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"TURN_OFF_AND_DELETE"];
  status = self->_status;
  if (status == 3)
  {
    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = v22;
    v24 = @"HEALTH_SYNC_IS_DISABLED";
  }

  else
  {
    if (status != 2)
    {
      if (status == 1)
      {
        v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v17 = [v16 localizedStringForKey:@"TURN_OFF_AND_DELETE_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        [v14 setProperty:v17 forKey:*MEMORY[0x1E69C5900]];

        [v6 addObject:v14];
        v18 = MEMORY[0x1E69C5748];
        v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v20 = [v19 localizedStringForKey:@"TURN_OFF_AND_DELETE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v21 = [v18 deleteButtonSpecifierWithName:v20 target:self action:sel_confirmDisable_];

        [v21 setProperty:&unk_1F43839A0 forKey:*MEMORY[0x1E69C5818]];
        [v6 addObject:v21];
      }

      goto LABEL_15;
    }

    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = v22;
    v24 = @"TURN_OFF_PROGRESS_MESSAGE";
  }

  v25 = [v22 localizedStringForKey:v24 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v14 setProperty:v25 forKey:*MEMORY[0x1E69C5900]];

  [v6 addObject:v14];
LABEL_15:
  v26 = *(&self->super.super.super.super.super.isa + v2);
  *(&self->super.super.super.super.super.isa + v2) = v6;
  v27 = v6;

  v4 = *(&self->super.super.super.super.super.isa + v2);
LABEL_16:

  return v4;
}

- (void)_loadCloudSyncStorageStatus
{
  cloudSyncControl = self->_cloudSyncControl;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__HKHealthManageStorageViewController__loadCloudSyncStorageStatus__block_invoke;
  v3[3] = &unk_1E81B8598;
  v3[4] = self;
  [(HKCloudSyncControl *)cloudSyncControl fetchCloudSyncStatusWithCompletion:v3];
}

void __66__HKHealthManageStorageViewController__loadCloudSyncStorageStatus__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __66__HKHealthManageStorageViewController__loadCloudSyncStorageStatus__block_invoke_2;
  v2[3] = &unk_1E81B8570;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __66__HKHealthManageStorageViewController__loadCloudSyncStorageStatus__block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 1456))
  {
    v2 = 3;
    if (*(result + 40))
    {
      v2 = 1;
    }

    *(v1 + 1456) = v2;
    return [*(result + 32) reloadSpecifiers];
  }

  return result;
}

- (void)showSpinnerMessage:(id)message
{
  messageCopy = message;
  view = [(HKHealthManageStorageViewController *)self view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  v7 = objc_alloc_init(MEMORY[0x1E69DCE40]);
  spinnerView = self->_spinnerView;
  self->_spinnerView = v7;

  [(UIProgressHUD *)self->_spinnerView setAutoresizingMask:45];
  [(UIProgressHUD *)self->_spinnerView setFontSize:16];
  [(UIProgressHUD *)self->_spinnerView setText:messageCopy];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  rootController = [(HKHealthManageStorageViewController *)self rootController];
  v12 = rootController;
  if (userInterfaceIdiom == 1)
  {
    parentViewController = [rootController parentViewController];
    view2 = [parentViewController view];
  }

  else
  {
    view2 = [rootController view];
  }

  [(UIProgressHUD *)self->_spinnerView showInView:view2];
}

- (void)hideSpinner
{
  [(UIProgressHUD *)self->_spinnerView hide];
  spinnerView = self->_spinnerView;
  self->_spinnerView = 0;

  view = [(HKHealthManageStorageViewController *)self view];
  window = [view window];
  [window setUserInteractionEnabled:1];
}

- (void)confirmDisable:(id)disable
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69C56F0]);
  v12[0] = *MEMORY[0x1E69C5890];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"TURN_OFF_AND_DELETE_PROMPT_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v13[0] = v6;
  v12[1] = *MEMORY[0x1E69C5888];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"TURN_OFF_AND_DELETE_PROMPT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v13[1] = v8;
  v12[2] = *MEMORY[0x1E69C5868];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"TURN_OFF_AND_DELETE_PROMPT_CANCEL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v13[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v4 setupWithDictionary:v11];

  [v4 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5870]];
  [v4 setTarget:self];
  [v4 setConfirmationAction:sel__disableAndDelete_];
  [(HKHealthManageStorageViewController *)self showConfirmationViewForSpecifier:v4];
}

- (void)_disableAndDelete:(id)delete
{
  if (self->_status == 1)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_status = 2;
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"TURN_OFF_PROGRESS_MESSAGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(HKHealthManageStorageViewController *)self showSpinnerMessage:v7];

    cloudSyncControl = self->_cloudSyncControl;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__HKHealthManageStorageViewController__disableAndDelete___block_invoke;
    v9[3] = &unk_1E81B59C0;
    v9[4] = self;
    [(HKCloudSyncControl *)cloudSyncControl disableCloudSyncAndDeleteAllCloudDataWithCompletion:v9];
    [(HKHealthManageStorageViewController *)self reloadSpecifiers];
  }
}

void __57__HKHealthManageStorageViewController__disableAndDelete___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__HKHealthManageStorageViewController__disableAndDelete___block_invoke_2;
  v2[3] = &unk_1E81B8570;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __57__HKHealthManageStorageViewController__disableAndDelete___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) hideSpinner];
  v2 = 3;
  if (!*(a1 + 40))
  {
    v2 = 1;
  }

  *(*(a1 + 32) + 1456) = v2;
  v3 = *(a1 + 32);

  return [v3 reloadSpecifiers];
}

@end