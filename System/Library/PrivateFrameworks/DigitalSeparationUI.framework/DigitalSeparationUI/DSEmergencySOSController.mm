@interface DSEmergencySOSController
- (BOOL)hasAppWithKappaApproved;
- (BOOL)maybeRetryDueToError:(id)error withReason:(id)reason;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (DSEmergencySOSController)init;
- (DSNavigationDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_showMaxContactsAlert;
- (void)chooseNewEmergencyContact;
- (void)emergencyContactFlow:(id)flow didSelectContact:(id)contact;
- (void)gatherEmergencyContacts;
- (void)removeEmergencyContact:(id)contact;
- (void)revokeKappaPermission;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateKappaBundleID;
- (void)viewDidLoad;
@end

@implementation DSEmergencySOSController

- (DSEmergencySOSController)init
{
  v3 = MEMORY[0x277D755B8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:@"EmergencySOSIcon" inBundle:v4];

  v6 = DSUILocStringForKey(@"EMERGENCY_SOS_DETAIL");
  if ([MEMORY[0x277D495A8] isKappaUnmasked] && objc_msgSend(MEMORY[0x277D495A8], "isKappaDetectionSupportedOnCurrentDevice"))
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v8 = [defaultWorkspace applicationIsInstalled:@"com.apple.MobileSMS"];

    if (v8)
    {
      v9 = @"EMERGENCY_SOS_DETAIL_WITH_CRASH";
    }

    else
    {
      v9 = @"EMERGENCY_SOS_DETAIL_IMESSAGES_DELETED";
    }

    v10 = DSUILocStringForKeyInTable(v9, @"DigitalSeparationUI-SYDRO_FEATURES");

    v6 = v10;
  }

  v11 = DSUILocStringForKey(@"EMERGENCY_SOS");
  v24.receiver = self;
  v24.super_class = DSEmergencySOSController;
  v12 = [(DSTableWelcomeController *)&v24 initWithTitle:v11 detailText:v6 icon:v5 adoptTableViewScrollView:1 shouldShowSearchBar:0];

  if (v12)
  {
    v13 = os_log_create("com.apple.DigitalSeparation", "DSEmergencySOSController");
    v14 = DSLog_18;
    DSLog_18 = v13;

    v15 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    healthStore = v12->_healthStore;
    v12->_healthStore = v15;

    v17 = [objc_alloc(MEMORY[0x277CCD5E8]) initWithHealthStore:v12->_healthStore];
    medicalIDStore = v12->_medicalIDStore;
    v12->_medicalIDStore = v17;

    v19 = objc_alloc_init(MEMORY[0x277D054D0]);
    v20 = [objc_alloc(MEMORY[0x277D05480]) initWithTCCStore:v19];
    appSharing = v12->_appSharing;
    v12->_appSharing = v20;

    kappaApprovedAppID = v12->_kappaApprovedAppID;
    v12->_kappaApprovedAppID = 0;
  }

  return v12;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = DSEmergencySOSController;
  [(DSTableWelcomeController *)&v15 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = DSUILocStringForKey(@"BACK_TO_UPDATE_APPLEID");
  v5 = [v3 initWithTitle:v4 style:0 target:0 action:0];

  navigationController = [(DSEmergencySOSController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  topItem = [navigationBar topItem];
  [topItem setBackBarButtonItem:v5];

  delegate = [(DSEmergencySOSController *)self delegate];
  if (delegate)
  {
    v10 = DSUILocStringForKey(@"CONTINUE");
    v11 = [DSUIUtilities setUpBoldButtonForController:self title:v10 target:delegate selector:sel_pushNextPane];
    [(DSTableWelcomeController *)self setBoldButton:v11];
  }

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setEditing:1];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setAllowsSelectionDuringEditing:1];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setAllowsMultipleSelectionDuringEditing:0];

  self->_hasRetriedEmergencyContactFetch = 0;
  [(DSEmergencySOSController *)self gatherEmergencyContacts];
  [(DSEmergencySOSController *)self updateKappaBundleID];
}

- (void)updateKappaBundleID
{
  appSharing = [(DSEmergencySOSController *)self appSharing];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__DSEmergencySOSController_updateKappaBundleID__block_invoke;
  v4[3] = &unk_278F75FC8;
  v4[4] = self;
  [appSharing approvedBundleIdForKappa:MEMORY[0x277D85CD0] handler:v4];
}

void __47__DSEmergencySOSController_updateKappaBundleID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) setKappaApprovedAppID:v4];

  v5 = [*(a1 + 32) tableView];
  [v5 reloadData];
}

- (BOOL)maybeRetryDueToError:(id)error withReason:(id)reason
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  reasonCopy = reason;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]] || objc_msgSend(errorCopy, "code") != 4097)
  {

    goto LABEL_8;
  }

  hasRetriedEmergencyContactFetch = [(DSEmergencySOSController *)self hasRetriedEmergencyContactFetch];

  if (hasRetriedEmergencyContactFetch)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  errorCopy = [reasonCopy stringByAppendingFormat:@" %@", errorCopy];
  v11 = DSLog_18;
  if (os_log_type_enabled(DSLog_18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = errorCopy;
    _os_log_impl(&dword_248C7E000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v12 = 1;
  [(DSEmergencySOSController *)self setHasRetriedEmergencyContactFetch:1];
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DSEmergencySOSController_maybeRetryDueToError_withReason___block_invoke;
  block[3] = &unk_278F75230;
  objc_copyWeak(&v17, buf);
  v13 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void __60__DSEmergencySOSController_maybeRetryDueToError_withReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained gatherEmergencyContacts];
}

- (void)gatherEmergencyContacts
{
  boldButton = [(DSTableWelcomeController *)self boldButton];
  [boldButton showsBusyIndicator];

  objc_initWeak(&location, self);
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  medicalIDStore = self->_medicalIDStore;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke;
  v13[3] = &unk_278F75FF0;
  objc_copyWeak(&v15, &location);
  v6 = v4;
  v14 = v6;
  [(HKMedicalIDStore *)medicalIDStore fetchMedicalIDDataWithCompletion:v13];
  dispatch_group_enter(v6);
  v7 = self->_medicalIDStore;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke_389;
  v10[3] = &unk_278F76018;
  objc_copyWeak(&v12, &location);
  v8 = v6;
  v11 = v8;
  [(HKMedicalIDStore *)v7 fetchMedicalIDEmergencyContactsWithCompletion:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke_2;
  v9[3] = &unk_278F75408;
  v9[4] = self;
  dispatch_group_notify(v8, MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

void __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(DSLog_18, OS_LOG_TYPE_ERROR))
    {
      __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke_cold_1();
    }

    if (([WeakRetained maybeRetryDueToError:v6 withReason:@"Retrying medicalIDData fetch."] & 1) == 0)
    {
LABEL_6:
      if (v5)
      {
        [WeakRetained setMedicalIDData:v5];
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x277CCDDF0]);
        [WeakRetained setMedicalIDData:v8];
      }

      dispatch_group_leave(*(a1 + 32));
    }
  }
}

void __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke_389(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(DSLog_18, OS_LOG_TYPE_ERROR))
    {
      __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke_389_cold_1();
    }

    if (([WeakRetained maybeRetryDueToError:v6 withReason:@"Retrying emergencyContacts fetch."] & 1) == 0)
    {
LABEL_6:
      v8 = DSLog_18;
      if (os_log_type_enabled(DSLog_18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&dword_248C7E000, v8, OS_LOG_TYPE_INFO, "Fetched emergencyContacts: %@ ", buf, 0xCu);
      }

      objc_initWeak(buf, WeakRetained);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke_393;
      v10[3] = &unk_278F752A8;
      objc_copyWeak(&v12, buf);
      v11 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v10);
      dispatch_group_leave(*(a1 + 32));

      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke_393(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setEmergencyContacts:v1];
}

void __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) boldButton];
  [v2 hidesBusyIndicator];

  v3 = [*(a1 + 32) tableView];
  [v3 reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(DSEmergencySOSController *)self hasAppWithKappaApproved])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section == 1)
  {
    return 1;
  }

  emergencyContacts = [(DSEmergencySOSController *)self emergencyContacts];
  v4 = [emergencyContacts count] + 1;

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section == 1)
  {
    DSUILocStringForKeyInTable(@"CAR_CRASH_TABLE_TITLE", @"DigitalSeparationUI-SYDRO_FEATURES");
  }

  else
  {
    DSUILocStringForKey(@"EMERGENCY_SOS_TABLE_TITLE");
  }
  v4 = ;

  return v4;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section == 1)
  {
    v5 = DSUILocStringForKeyInTable(@"CAR_CRASH_TABLE_DETAIL", @"DigitalSeparationUI-SYDRO_FEATURES");
  }

  else
  {
    v5 = &stru_285BA4988;
  }

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = objc_alloc_init(MEMORY[0x277D75B48]);
  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  [v6 setIsAccessibilityElement:1];
  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [v6 setBackgroundColor:tertiarySystemFillColor];

  textProperties = [valueCellConfiguration textProperties];
  [textProperties setNumberOfLines:0];

  textProperties2 = [valueCellConfiguration textProperties];
  [textProperties2 setLineBreakMode:0];

  if ([pathCopy section])
  {
    if ([(DSEmergencySOSController *)self hasAppWithKappaApproved])
    {
      kappaApprovedAppID = [(DSEmergencySOSController *)self kappaApprovedAppID];
      v12 = displayNameForApp();
      [valueCellConfiguration setText:v12];

      kappaApprovedAppID2 = [(DSEmergencySOSController *)self kappaApprovedAppID];
      v14 = [DSUIUtilities appIconForAppID:kappaApprovedAppID2 format:0];
      [valueCellConfiguration setImage:v14];
    }
  }

  else
  {
    v15 = [pathCopy row];
    emergencyContacts = [(DSEmergencySOSController *)self emergencyContacts];
    v17 = [emergencyContacts count];

    if (v15 >= v17)
    {
      v24 = DSUILocStringForKey(@"ADD_EMERGENCY_CONTACT");
      [valueCellConfiguration setText:v24];

      textProperties3 = [valueCellConfiguration textProperties];
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      [textProperties3 setColor:systemBlueColor];

      accessibilityTraits = [v6 accessibilityTraits];
      [v6 setAccessibilityTraits:*MEMORY[0x277D76548] | accessibilityTraits];
    }

    else
    {
      emergencyContacts2 = [(DSEmergencySOSController *)self emergencyContacts];
      v19 = [emergencyContacts2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      name = [v19 name];
      [valueCellConfiguration setText:name];

      emergencyContacts3 = [(DSEmergencySOSController *)self emergencyContacts];
      v22 = [emergencyContacts3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      phoneNumber = [v22 phoneNumber];
      [valueCellConfiguration setSecondaryText:phoneNumber];

      [valueCellConfiguration setPrefersSideBySideTextAndSecondaryText:0];
    }
  }

  [v6 setContentConfiguration:valueCellConfiguration];

  return v6;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v6 = 1;
  }

  else
  {
    v7 = [pathCopy row];
    emergencyContacts = [(DSEmergencySOSController *)self emergencyContacts];
    v9 = [emergencyContacts count];

    if (v7 == v9)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v6 = 0;
  }

  else
  {
    v7 = [pathCopy row];
    emergencyContacts = [(DSEmergencySOSController *)self emergencyContacts];
    v6 = v7 == [emergencyContacts count];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
  [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

  if (![pathCopy section])
  {
    v8 = [pathCopy row];
    emergencyContacts = [(DSEmergencySOSController *)self emergencyContacts];
    v10 = [emergencyContacts count];

    if (v8 == v10)
    {
      [(DSEmergencySOSController *)self chooseNewEmergencyContact];
    }
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    [(DSEmergencySOSController *)self revokeKappaPermission];
  }

  else if (style == 2)
  {
    [(DSEmergencySOSController *)self chooseNewEmergencyContact];
  }

  else if (style == 1)
  {
    emergencyContacts = [(DSEmergencySOSController *)self emergencyContacts];
    v8 = [emergencyContacts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    [(DSEmergencySOSController *)self removeEmergencyContact:v8];
  }
}

- (void)_showMaxContactsAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = DSUILocStringForKey(@"MAX_SOS_CONTACTS_TITLE");
  v8 = [v3 alertControllerWithTitle:v4 message:0 preferredStyle:1];

  v5 = MEMORY[0x277D750F8];
  v6 = DSUILocStringForKey(@"OK");
  v7 = [v5 actionWithTitle:v6 style:1 handler:&__block_literal_global_22];
  [v8 addAction:v7];

  [(DSEmergencySOSController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)removeEmergencyContact:(id)contact
{
  contactCopy = contact;
  objc_initWeak(&location, self);
  medicalIDStore = [(DSEmergencySOSController *)self medicalIDStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__DSEmergencySOSController_removeEmergencyContact___block_invoke;
  v6[3] = &unk_278F75EB0;
  objc_copyWeak(&v7, &location);
  [medicalIDStore removeEmergencyContact:contactCopy completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __51__DSEmergencySOSController_removeEmergencyContact___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__DSEmergencySOSController_removeEmergencyContact___block_invoke_2;
    block[3] = &unk_278F75230;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v8);
  }

  else if (v5 && os_log_type_enabled(DSLog_18, OS_LOG_TYPE_ERROR))
  {
    __51__DSEmergencySOSController_removeEmergencyContact___block_invoke_cold_1();
  }
}

void __51__DSEmergencySOSController_removeEmergencyContact___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained gatherEmergencyContacts];
}

- (void)chooseNewEmergencyContact
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = getHKMedicalIDEmergencyContactFlowClass_softClass;
  v15 = getHKMedicalIDEmergencyContactFlowClass_softClass;
  if (!getHKMedicalIDEmergencyContactFlowClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getHKMedicalIDEmergencyContactFlowClass_block_invoke;
    v11[3] = &unk_278F75430;
    v11[4] = &v12;
    __getHKMedicalIDEmergencyContactFlowClass_block_invoke(v11);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  v5 = [v3 alloc];
  medicalIDData = [(DSEmergencySOSController *)self medicalIDData];
  v7 = [v5 initWithPresentingViewController:self forMedicalIDData:medicalIDData];
  contactFlow = self->_contactFlow;
  self->_contactFlow = v7;

  contactFlow = [(DSEmergencySOSController *)self contactFlow];
  [contactFlow setDelegate:self];

  contactFlow2 = [(DSEmergencySOSController *)self contactFlow];
  [contactFlow2 presentEmergencyContactFlow];
}

- (void)emergencyContactFlow:(id)flow didSelectContact:(id)contact
{
  v20[1] = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  contactCopy = contact;
  if (([MEMORY[0x277D495A8] isAllowedToMessageSOSContacts] & 1) == 0)
  {
    [MEMORY[0x277D495A8] setAllowedToMessageSOSContacts:1];
  }

  medicalIDData = [(DSEmergencySOSController *)self medicalIDData];
  emergencyContacts = [medicalIDData emergencyContacts];
  if (emergencyContacts)
  {
    medicalIDData2 = [(DSEmergencySOSController *)self medicalIDData];
    emergencyContacts2 = [medicalIDData2 emergencyContacts];
    v12 = [emergencyContacts2 arrayByAddingObject:contactCopy];
  }

  else
  {
    v20[0] = contactCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  }

  medicalIDData3 = [(DSEmergencySOSController *)self medicalIDData];
  [medicalIDData3 setEmergencyContacts:v12];

  objc_initWeak(&location, self);
  medicalIDStore = [(DSEmergencySOSController *)self medicalIDStore];
  medicalIDData4 = [(DSEmergencySOSController *)self medicalIDData];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__DSEmergencySOSController_emergencyContactFlow_didSelectContact___block_invoke;
  v17[3] = &unk_278F75EB0;
  objc_copyWeak(&v18, &location);
  [medicalIDStore updateMedicalIDData:medicalIDData4 completion:v17];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x277D85DE8];
}

void __66__DSEmergencySOSController_emergencyContactFlow_didSelectContact___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5 && os_log_type_enabled(DSLog_18, OS_LOG_TYPE_ERROR))
  {
    __66__DSEmergencySOSController_emergencyContactFlow_didSelectContact___block_invoke_cold_1();
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a2)
  {
LABEL_4:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__DSEmergencySOSController_emergencyContactFlow_didSelectContact___block_invoke_424;
    block[3] = &unk_278F75230;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v7);
  }

LABEL_5:
}

void __66__DSEmergencySOSController_emergencyContactFlow_didSelectContact___block_invoke_424(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained gatherEmergencyContacts];
}

- (void)revokeKappaPermission
{
  v3 = *MEMORY[0x277D6C140];
  kappaApprovedAppID = [(DSEmergencySOSController *)self kappaApprovedAppID];
  TCCAccessResetForBundleId();

  [(DSEmergencySOSController *)self updateKappaBundleID];
}

- (BOOL)hasAppWithKappaApproved
{
  kappaApprovedAppID = [(DSEmergencySOSController *)self kappaApprovedAppID];
  v3 = kappaApprovedAppID != 0;

  return v3;
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error fetching medicalIDData: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__DSEmergencySOSController_gatherEmergencyContacts__block_invoke_389_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error fetching emergencyContacts: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__DSEmergencySOSController_removeEmergencyContact___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error removing emergencyContact: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__DSEmergencySOSController_emergencyContactFlow_didSelectContact___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error updating medicalIDData error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end