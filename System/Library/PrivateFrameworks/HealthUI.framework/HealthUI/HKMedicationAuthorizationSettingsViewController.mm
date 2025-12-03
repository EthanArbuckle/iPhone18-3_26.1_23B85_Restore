@interface HKMedicationAuthorizationSettingsViewController
+ (id)_cellImageForMedicationType:(id)type healthStore:(id)store;
+ (id)_displayTypeForMedicationType:(id)type healthStore:(id)store;
+ (id)_localizedSourceExplanationWithDescription:(id)description;
- (BOOL)_enableToggleAtIndexPath:(id)path;
- (BOOL)_hasActiveMedAuths;
- (BOOL)_hasArchivedMedAuths;
- (BOOL)_isActiveMedicationAuthorizedAtIndexPath:(id)path;
- (BOOL)_isArchivedMedicationAuthorizedAtIndexPath:(id)path;
- (HKMedicationAuthorizationSettingsViewController)initWithController:(id)controller source:(id)source healthStore:(id)store;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_medicationNameForIndexPath:(id)path;
- (id)_medicationObjectTypeForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureTableView;
- (void)_displayGuestModeAlertWithCompletion:(id)completion;
- (void)didFinishLoading;
- (void)headerViewDidTapTurnOffAll:(id)all;
- (void)headerViewDidTapTurnOnAll:(id)all;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)viewDidLoad;
@end

@implementation HKMedicationAuthorizationSettingsViewController

- (HKMedicationAuthorizationSettingsViewController)initWithController:(id)controller source:(id)source healthStore:(id)store
{
  controllerCopy = controller;
  sourceCopy = source;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = HKMedicationAuthorizationSettingsViewController;
  v12 = [(OBTableWelcomeController *)&v15 initWithTitle:&stru_1F42FFBE0 detailText:0 icon:0 adoptTableViewScrollView:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_authorizationController, controller);
    objc_storeStrong(&v13->_source, source);
    objc_storeStrong(&v13->_healthStore, store);
  }

  return v13;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HKMedicationAuthorizationSettingsViewController;
  [(OBTableWelcomeController *)&v4 viewDidLoad];
  [(HKMedicationAuthorizationSettingsViewController *)self _configureTableView];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setContentInset:{-40.0, 0.0, 0.0, 0.0}];

  [(HKMedicationAuthorizationSettingsViewController *)self setModalInPresentation:1];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"SHARE_DATA_WITH_%@_TITLECASED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
  name = [(HKSource *)self->_source name];
  v10 = [v6 stringWithFormat:v8, name];

  if (section == 1)
  {
    archivedMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)self->_authorizationController archivedMedicationAuthorizationStatusViewModels];
    v12 = [HKMedicationAuthorizationStatusViewModel areAllAuthorizedForMedicationViewModels:archivedMedicationAuthorizationStatusViewModels];
    v14 = 0;
    v13 = @"ARCHIVED_MEDICATIONS_SECTION_TITLE";
    goto LABEL_5;
  }

  if (!section)
  {
    archivedMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)self->_authorizationController activeMedicationAuthorizationStatusViewModels];
    v12 = [HKMedicationAuthorizationStatusViewModel areAllAuthorizedForMedicationViewModels:archivedMedicationAuthorizationStatusViewModels];
    v13 = @"MEDICATIONS_SECTION_TITLE";
    v14 = v10;
LABEL_5:

    v15 = [HKAuthorizationHeaderView alloc];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:v13 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-HealthConcept"];
    v18 = [(HKAuthorizationHeaderView *)v15 initWithTitle:v17 initialStateToTurnOnAll:!v12 categoryTitle:v14];

    [(HKAuthorizationHeaderView *)v18 setTag:section];
    [(HKAuthorizationHeaderView *)v18 setDelegate:self];
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"AuthorizationSettingsCell"];
  if (!v7)
  {
    v7 = [[HKSwitchTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"AuthorizationSettingsCell"];
    [(HKSwitchTableViewCell *)v7 setDelegate:self];
    [(HKSwitchTableViewCell *)v7 setCentersIcon:1];
    textLabel = [(HKSwitchTableViewCell *)v7 textLabel];
    [textLabel setNumberOfLines:3];
  }

  v9 = [(HKMedicationAuthorizationSettingsViewController *)self _medicationNameForIndexPath:pathCopy];
  [(HKSwitchTableViewCell *)v7 setDisplayText:v9];

  [(HKSwitchTableViewCell *)v7 setOn:[(HKMedicationAuthorizationSettingsViewController *)self _enableToggleAtIndexPath:pathCopy]];
  v10 = [(HKMedicationAuthorizationSettingsViewController *)self _medicationObjectTypeForIndexPath:pathCopy];

  v11 = [objc_opt_class() _cellImageForMedicationType:v10 healthStore:self->_healthStore];
  [(HKSwitchTableViewCell *)v7 setIconImage:v11];

  return v7;
}

+ (id)_displayTypeForMedicationType:(id)type healthStore:(id)store
{
  typeCopy = type;
  v6 = [HKDisplayTypeController sharedInstanceForHealthStore:store];
  v7 = [v6 displayTypeForObjectType:typeCopy];

  return v7;
}

+ (id)_cellImageForMedicationType:(id)type healthStore:(id)store
{
  storeCopy = store;
  typeCopy = type;
  v7 = [objc_opt_class() _displayTypeForMedicationType:typeCopy healthStore:storeCopy];

  listIcon = [v7 listIcon];

  return listIcon;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    archivedMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)self->_authorizationController archivedMedicationAuthorizationStatusViewModels];
  }

  else
  {
    if (section)
    {
      v9 = 0;
      goto LABEL_7;
    }

    archivedMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)self->_authorizationController activeMedicationAuthorizationStatusViewModels];
  }

  v8 = archivedMedicationAuthorizationStatusViewModels;
  v9 = [archivedMedicationAuthorizationStatusViewModels count];

LABEL_7:
  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  _hasActiveMedAuths = [(HKMedicationAuthorizationSettingsViewController *)self _hasActiveMedAuths];
  _hasArchivedMedAuths = [(HKMedicationAuthorizationSettingsViewController *)self _hasArchivedMedAuths];
  v6 = 1;
  if (_hasActiveMedAuths)
  {
    v6 = 2;
  }

  if (_hasArchivedMedAuths)
  {
    return v6;
  }

  else
  {
    return _hasActiveMedAuths;
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1 || !section && [(HKMedicationAuthorizationSettingsViewController *)self _showSourceExplanationInActiveMedSectionFooter])
  {
    v7 = [objc_opt_class() _localizedSourceExplanationWithDescription:self->_shareDescription];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (section == 1)
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

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  valueCopy = value;
  changedCopy = changed;
  tableView = [(OBTableWelcomeController *)self tableView];
  v10 = [tableView indexPathForCell:changedCopy];

  section = [v10 section];
  if (section == 1)
  {
    -[HKMedicationAuthorizationController updateArchivedMedicationViewModelAtIndex:authorized:](self->_authorizationController, "updateArchivedMedicationViewModelAtIndex:authorized:", [v10 row], valueCopy);
  }

  else if (!section)
  {
    -[HKMedicationAuthorizationController updateActiveMedicationViewModelAtIndex:authorized:](self->_authorizationController, "updateActiveMedicationViewModelAtIndex:authorized:", [v10 row], valueCopy);
  }

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 reloadData];
}

- (void)didFinishLoading
{
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)headerViewDidTapTurnOnAll:(id)all
{
  v4 = [all tag];
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
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadSections:v7 withRowAnimation:5];
}

- (void)headerViewDidTapTurnOffAll:(id)all
{
  v4 = [all tag];
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
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadSections:v7 withRowAnimation:5];
}

- (void)_configureTableView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDelegate:self];

  traitCollection = [(HKMedicationAuthorizationSettingsViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    view = [(HKMedicationAuthorizationSettingsViewController *)self view];
    [view setBackgroundColor:systemGroupedBackgroundColor];

    view2 = [(HKMedicationAuthorizationSettingsViewController *)self view];
    backgroundColor = [view2 backgroundColor];
    tableView3 = [(OBTableWelcomeController *)self tableView];
    [tableView3 setBackgroundColor:backgroundColor];
  }

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 hk_onboardingListEdgeInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 _setSectionContentInset:{v16, v18, v20, v22}];

  v24 = *MEMORY[0x1E69DE3D0];
  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setRowHeight:v24];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setEstimatedRowHeight:70.0];
}

- (id)_medicationNameForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  if (section == 1)
  {
    archivedMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)self->_authorizationController archivedMedicationAuthorizationStatusViewModels];
    goto LABEL_5;
  }

  if (!section)
  {
    archivedMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)self->_authorizationController activeMedicationAuthorizationStatusViewModels];
LABEL_5:
    v8 = archivedMedicationAuthorizationStatusViewModels;
    v9 = [archivedMedicationAuthorizationStatusViewModels objectAtIndexedSubscript:v5];

    medicationName = [v9 medicationName];

    goto LABEL_7;
  }

  medicationName = &stru_1F42FFBE0;
LABEL_7:

  return medicationName;
}

- (id)_medicationObjectTypeForIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  section = [pathCopy section];
  if (section == 1)
  {
    archivedMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)self->_authorizationController archivedMedicationAuthorizationStatusViewModels];
    goto LABEL_5;
  }

  if (!section)
  {
    archivedMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)self->_authorizationController activeMedicationAuthorizationStatusViewModels];
LABEL_5:
    v9 = archivedMedicationAuthorizationStatusViewModels;
    currentHandler = [archivedMedicationAuthorizationStatusViewModels objectAtIndexedSubscript:v6];

    type = [currentHandler type];
    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKMedicationAuthorizationSettingsViewController.m" lineNumber:373 description:{@"Unexpected section: %i", objc_msgSend(pathCopy, "section")}];
  type = 0;
LABEL_7:

  return type;
}

- (BOOL)_enableToggleAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == 1)
  {
    v6 = [(HKMedicationAuthorizationSettingsViewController *)self _isArchivedMedicationAuthorizedAtIndexPath:pathCopy];
  }

  else
  {
    if (section)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = [(HKMedicationAuthorizationSettingsViewController *)self _isActiveMedicationAuthorizedAtIndexPath:pathCopy];
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (BOOL)_isActiveMedicationAuthorizedAtIndexPath:(id)path
{
  authorizationController = self->_authorizationController;
  pathCopy = path;
  activeMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)authorizationController activeMedicationAuthorizationStatusViewModels];
  v6 = [pathCopy row];

  v7 = [activeMedicationAuthorizationStatusViewModels objectAtIndexedSubscript:v6];

  LOBYTE(activeMedicationAuthorizationStatusViewModels) = [v7 isAuthorized];
  return activeMedicationAuthorizationStatusViewModels;
}

- (BOOL)_isArchivedMedicationAuthorizedAtIndexPath:(id)path
{
  authorizationController = self->_authorizationController;
  pathCopy = path;
  archivedMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)authorizationController archivedMedicationAuthorizationStatusViewModels];
  v6 = [pathCopy row];

  v7 = [archivedMedicationAuthorizationStatusViewModels objectAtIndexedSubscript:v6];

  LOBYTE(archivedMedicationAuthorizationStatusViewModels) = [v7 isAuthorized];
  return archivedMedicationAuthorizationStatusViewModels;
}

- (void)_displayGuestModeAlertWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v17 = completionCopy;
  v13 = completionCopy;
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
  activeMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)self->_authorizationController activeMedicationAuthorizationStatusViewModels];
  v3 = [activeMedicationAuthorizationStatusViewModels count] != 0;

  return v3;
}

- (BOOL)_hasArchivedMedAuths
{
  archivedMedicationAuthorizationStatusViewModels = [(HKMedicationAuthorizationController *)self->_authorizationController archivedMedicationAuthorizationStatusViewModels];
  v3 = [archivedMedicationAuthorizationStatusViewModels count] != 0;

  return v3;
}

+ (id)_localizedSourceExplanationWithDescription:(id)description
{
  descriptionCopy = description;
  v4 = descriptionCopy;
  if (descriptionCopy && [descriptionCopy length])
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