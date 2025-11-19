@interface HKMedicationAuthorizationSettingsViewController
+ (id)_cellImageForMedicationType:(id)a3 healthStore:(id)a4;
+ (id)_displayTypeForMedicationType:(id)a3 healthStore:(id)a4;
+ (id)_localizedSourceExplanationWithDescription:(id)a3;
- (BOOL)_enableToggleAtIndexPath:(id)a3;
- (BOOL)_hasActiveMedAuths;
- (BOOL)_hasArchivedMedAuths;
- (BOOL)_isActiveMedicationAuthorizedAtIndexPath:(id)a3;
- (BOOL)_isArchivedMedicationAuthorizedAtIndexPath:(id)a3;
- (HKMedicationAuthorizationSettingsViewController)initWithController:(id)a3 source:(id)a4 healthStore:(id)a5;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_medicationNameForIndexPath:(id)a3;
- (id)_medicationObjectTypeForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configureTableView;
- (void)_displayGuestModeAlertWithCompletion:(id)a3;
- (void)didFinishLoading;
- (void)headerViewDidTapTurnOffAll:(id)a3;
- (void)headerViewDidTapTurnOnAll:(id)a3;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation HKMedicationAuthorizationSettingsViewController

- (HKMedicationAuthorizationSettingsViewController)initWithController:(id)a3 source:(id)a4 healthStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKMedicationAuthorizationSettingsViewController;
  v12 = [(OBTableWelcomeController *)&v15 initWithTitle:&stru_1F42FFBE0 detailText:0 icon:0 adoptTableViewScrollView:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_authorizationController, a3);
    objc_storeStrong(&v13->_source, a4);
    objc_storeStrong(&v13->_healthStore, a5);
  }

  return v13;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HKMedicationAuthorizationSettingsViewController;
  [(OBTableWelcomeController *)&v4 viewDidLoad];
  [(HKMedicationAuthorizationSettingsViewController *)self _configureTableView];
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 setContentInset:{-40.0, 0.0, 0.0, 0.0}];

  [(HKMedicationAuthorizationSettingsViewController *)self setModalInPresentation:1];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"SHARE_DATA_WITH_%@_TITLECASED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
  v9 = [(HKSource *)self->_source name];
  v10 = [v6 stringWithFormat:v8, v9];

  if (a4 == 1)
  {
    v11 = [(HKMedicationAuthorizationController *)self->_authorizationController archivedMedicationAuthorizationStatusViewModels];
    v12 = [HKMedicationAuthorizationStatusViewModel areAllAuthorizedForMedicationViewModels:v11];
    v14 = 0;
    v13 = @"ARCHIVED_MEDICATIONS_SECTION_TITLE";
    goto LABEL_5;
  }

  if (!a4)
  {
    v11 = [(HKMedicationAuthorizationController *)self->_authorizationController activeMedicationAuthorizationStatusViewModels];
    v12 = [HKMedicationAuthorizationStatusViewModel areAllAuthorizedForMedicationViewModels:v11];
    v13 = @"MEDICATIONS_SECTION_TITLE";
    v14 = v10;
LABEL_5:

    v15 = [HKAuthorizationHeaderView alloc];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:v13 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
    v18 = [(HKAuthorizationHeaderView *)v15 initWithTitle:v17 initialStateToTurnOnAll:!v12 categoryTitle:v14];

    [(HKAuthorizationHeaderView *)v18 setTag:a4];
    [(HKAuthorizationHeaderView *)v18 setDelegate:self];
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"AuthorizationSettingsCell"];
  if (!v7)
  {
    v7 = [[HKSwitchTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"AuthorizationSettingsCell"];
    [(HKSwitchTableViewCell *)v7 setDelegate:self];
    [(HKSwitchTableViewCell *)v7 setCentersIcon:1];
    v8 = [(HKSwitchTableViewCell *)v7 textLabel];
    [v8 setNumberOfLines:3];
  }

  v9 = [(HKMedicationAuthorizationSettingsViewController *)self _medicationNameForIndexPath:v6];
  [(HKSwitchTableViewCell *)v7 setDisplayText:v9];

  [(HKSwitchTableViewCell *)v7 setOn:[(HKMedicationAuthorizationSettingsViewController *)self _enableToggleAtIndexPath:v6]];
  v10 = [(HKMedicationAuthorizationSettingsViewController *)self _medicationObjectTypeForIndexPath:v6];

  v11 = [objc_opt_class() _cellImageForMedicationType:v10 healthStore:self->_healthStore];
  [(HKSwitchTableViewCell *)v7 setIconImage:v11];

  return v7;
}

+ (id)_displayTypeForMedicationType:(id)a3 healthStore:(id)a4
{
  v5 = a3;
  v6 = [HKDisplayTypeController sharedInstanceForHealthStore:a4];
  v7 = [v6 displayTypeForObjectType:v5];

  return v7;
}

+ (id)_cellImageForMedicationType:(id)a3 healthStore:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _displayTypeForMedicationType:v6 healthStore:v5];

  v8 = [v7 listIcon];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(HKMedicationAuthorizationController *)self->_authorizationController archivedMedicationAuthorizationStatusViewModels];
  }

  else
  {
    if (a4)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v7 = [(HKMedicationAuthorizationController *)self->_authorizationController activeMedicationAuthorizationStatusViewModels];
  }

  v8 = v7;
  v9 = [v7 count];

LABEL_7:
  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(HKMedicationAuthorizationSettingsViewController *)self _hasActiveMedAuths];
  v5 = [(HKMedicationAuthorizationSettingsViewController *)self _hasArchivedMedAuths];
  v6 = 1;
  if (v4)
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1 || !a4 && [(HKMedicationAuthorizationSettingsViewController *)self _showSourceExplanationInActiveMedSectionFooter])
  {
    v7 = [objc_opt_class() _localizedSourceExplanationWithDescription:self->_shareDescription];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      v6 = 28.0;
    }

    else
    {
      v6 = HKUIOnePixel();
    }
  }

  else
  {
    v6 = 54.0;
  }

  return v6;
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(OBTableWelcomeController *)self tableView];
  v10 = [v7 indexPathForCell:v6];

  v8 = [v10 section];
  if (v8 == 1)
  {
    -[HKMedicationAuthorizationController updateArchivedMedicationViewModelAtIndex:authorized:](self->_authorizationController, "updateArchivedMedicationViewModelAtIndex:authorized:", [v10 row], v4);
  }

  else if (!v8)
  {
    -[HKMedicationAuthorizationController updateActiveMedicationViewModelAtIndex:authorized:](self->_authorizationController, "updateActiveMedicationViewModelAtIndex:authorized:", [v10 row], v4);
  }

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 reloadData];
}

- (void)didFinishLoading
{
  v2 = [(OBTableWelcomeController *)self tableView];
  [v2 reloadData];
}

- (void)headerViewDidTapTurnOnAll:(id)a3
{
  v4 = [a3 tag];
  v5 = v4;
  if (v4 == 1)
  {
    [(HKMedicationAuthorizationController *)self->_authorizationController updateAllArchivedMedicationViewModelsToAuthorized];
  }

  else
  {
    if (v4)
    {
      return;
    }

    [(HKMedicationAuthorizationController *)self->_authorizationController updateAllActiveMedicationViewModelsToAuthorized];
  }

  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5];
  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 reloadSections:v7 withRowAnimation:5];
}

- (void)headerViewDidTapTurnOffAll:(id)a3
{
  v4 = [a3 tag];
  v5 = v4;
  if (v4 == 1)
  {
    [(HKMedicationAuthorizationController *)self->_authorizationController updateAllArchivedMedicationViewModelsToDenied];
  }

  else
  {
    if (v4)
    {
      return;
    }

    [(HKMedicationAuthorizationController *)self->_authorizationController updateAllActiveMedicationViewModelsToDenied];
  }

  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5];
  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 reloadSections:v7 withRowAnimation:5];
}

- (void)_configureTableView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setDataSource:self];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setDelegate:self];

  v7 = [(HKMedicationAuthorizationSettingsViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 6)
  {
    v9 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    v10 = [(HKMedicationAuthorizationSettingsViewController *)self view];
    [v10 setBackgroundColor:v9];

    v11 = [(HKMedicationAuthorizationSettingsViewController *)self view];
    v12 = [v11 backgroundColor];
    v13 = [(OBTableWelcomeController *)self tableView];
    [v13 setBackgroundColor:v12];
  }

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 hk_onboardingListEdgeInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(OBTableWelcomeController *)self tableView];
  [v23 _setSectionContentInset:{v16, v18, v20, v22}];

  v24 = *MEMORY[0x1E69DE3D0];
  v25 = [(OBTableWelcomeController *)self tableView];
  [v25 setRowHeight:v24];

  v26 = [(OBTableWelcomeController *)self tableView];
  [v26 setEstimatedRowHeight:70.0];
}

- (id)_medicationNameForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  if (v6 == 1)
  {
    v7 = [(HKMedicationAuthorizationController *)self->_authorizationController archivedMedicationAuthorizationStatusViewModels];
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = [(HKMedicationAuthorizationController *)self->_authorizationController activeMedicationAuthorizationStatusViewModels];
LABEL_5:
    v8 = v7;
    v9 = [v7 objectAtIndexedSubscript:v5];

    v10 = [v9 medicationName];

    goto LABEL_7;
  }

  v10 = &stru_1F42FFBE0;
LABEL_7:

  return v10;
}

- (id)_medicationObjectTypeForIndexPath:(id)a3
{
  v5 = a3;
  v6 = [v5 row];
  v7 = [v5 section];
  if (v7 == 1)
  {
    v8 = [(HKMedicationAuthorizationController *)self->_authorizationController archivedMedicationAuthorizationStatusViewModels];
    goto LABEL_5;
  }

  if (!v7)
  {
    v8 = [(HKMedicationAuthorizationController *)self->_authorizationController activeMedicationAuthorizationStatusViewModels];
LABEL_5:
    v9 = v8;
    v10 = [v8 objectAtIndexedSubscript:v6];

    v11 = [v10 type];
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"HKMedicationAuthorizationSettingsViewController.m" lineNumber:373 description:{@"Unexpected section: %i", objc_msgSend(v5, "section")}];
  v11 = 0;
LABEL_7:

  return v11;
}

- (BOOL)_enableToggleAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 == 1)
  {
    v6 = [(HKMedicationAuthorizationSettingsViewController *)self _isArchivedMedicationAuthorizedAtIndexPath:v4];
  }

  else
  {
    if (v5)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = [(HKMedicationAuthorizationSettingsViewController *)self _isActiveMedicationAuthorizedAtIndexPath:v4];
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (BOOL)_isActiveMedicationAuthorizedAtIndexPath:(id)a3
{
  authorizationController = self->_authorizationController;
  v4 = a3;
  v5 = [(HKMedicationAuthorizationController *)authorizationController activeMedicationAuthorizationStatusViewModels];
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  LOBYTE(v5) = [v7 isAuthorized];
  return v5;
}

- (BOOL)_isArchivedMedicationAuthorizedAtIndexPath:(id)a3
{
  authorizationController = self->_authorizationController;
  v4 = a3;
  v5 = [(HKMedicationAuthorizationController *)authorizationController archivedMedicationAuthorizationStatusViewModels];
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  LOBYTE(v5) = [v7 isAuthorized];
  return v5;
}

- (void)_displayGuestModeAlertWithCompletion:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69DC650];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"GUEST_MODE_CHANGE_AUTHORIZATION_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"SHARE_ALERT_OK" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__HKMedicationAuthorizationSettingsViewController__displayGuestModeAlertWithCompletion___block_invoke;
  v16[3] = &unk_1E81B8440;
  v17 = v3;
  v13 = v3;
  v14 = [v10 actionWithTitle:v12 style:0 handler:v16];

  [v9 addAction:v14];
  [(HKMedicationAuthorizationSettingsViewController *)self presentViewController:v9 animated:1 completion:0];
}

uint64_t __88__HKMedicationAuthorizationSettingsViewController__displayGuestModeAlertWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_hasActiveMedAuths
{
  v2 = [(HKMedicationAuthorizationController *)self->_authorizationController activeMedicationAuthorizationStatusViewModels];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_hasArchivedMedAuths
{
  v2 = [(HKMedicationAuthorizationController *)self->_authorizationController archivedMedicationAuthorizationStatusViewModels];
  v3 = [v2 count] != 0;

  return v3;
}

+ (id)_localizedSourceExplanationWithDescription:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"APP_EXPLANATION_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:v6, v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end