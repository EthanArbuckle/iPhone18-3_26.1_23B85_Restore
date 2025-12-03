@interface HUServiceDetailsViewController
+ (id)_buildNetworkSymptomsAnalyticsDataForAccessory:(id)accessory interactionType:(int64_t)type;
+ (id)acceptableItemClasses;
- (BOOL)_allowRowHighlightForItem:(id)item;
- (BOOL)_allowRowSelectionForItem:(id)item;
- (BOOL)_isCameraItem;
- (BOOL)_notifyOfHomeTheaterReconfigurationIfNecessary:(id)necessary;
- (BOOL)_shouldFollowTitleValueTintColorforItem:(id)item;
- (BOOL)_shouldPresentRemoveRouterConfirmation;
- (BOOL)_shouldShowAddButtonForOptionItem:(id)item;
- (BOOL)_shouldShowDetailDisclosureForItem:(id)item;
- (BOOL)_shouldShowHomeTheaterPrompt;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasDetailsActionFor:(id)for item:(id)item;
- (BOOL)itemManager:(id)manager shouldShowControlPanelItem:(id)item;
- (BOOL)itemManager:(id)manager shouldShowSectionTitleForControlPanelItem:(id)item;
- (BOOL)shouldHideFooterBelowSection:(int64_t)section;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HFServiceLikeItem)item;
- (HUPresentationDelegate)presentationDelegate;
- (HUServiceDetailsItemManager)detailsItemManager;
- (HUServiceDetailsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUServiceDetailsViewController)initWithServiceLikeItem:(id)item;
- (NSString)description;
- (id)_characteristicsAffectedByControlItem:(id)item;
- (id)_commitBuilder;
- (id)_commitBuilderFor:(id)for with:(id)with;
- (id)_createMenuWithValues:(id)values cell:(id)cell currentItem:(id)item;
- (id)_currentAssociatedNetworkInfoForFirstPartyAccessory:(id)accessory;
- (id)_magicallyUpdateNavigationStackForNewRootItem:(id)item topViewController:(id)controller;
- (id)_microphoneStatus;
- (id)_primaryStatusTextForLatestResults:(id)results showingSecondaryStatus:(BOOL)status;
- (id)_recoverItemBuilder:(id)builder fromError:(id)error;
- (id)_removeItem;
- (id)_roomForItem:(id)item;
- (id)_roomUpdateBuilderFor:(id)for;
- (id)_secondaryStatusTextForLatestResults:(id)results;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)childServiceEditorModuleController:(id)controller didSelectItem:(id)item;
- (id)createAccessoryDetailInfoListModuleControllerWith:(id)with;
- (id)detailsViewControllerFor:(id)for item:(id)item;
- (id)detailsViewControllerForContainedMediaAccessoryGridViewController:(id)controller item:(id)item;
- (id)detailsViewControllerForContainedServiceGridViewController:(id)controller item:(id)item;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)itemManager:(id)manager sectionFooterForControlPanelItem:(id)item forServiceItem:(id)serviceItem;
- (id)itemManager:(id)manager sectionTitleForControlPanelItem:(id)item forServiceItem:(id)serviceItem;
- (id)itemModuleControllers;
- (id)pickerViewCell:(id)cell titleForValueAtIndex:(int64_t)index;
- (id)showConnectedEcosystems;
- (id)softwareUpdateModuleController:(id)controller dismissViewController:(id)viewController;
- (id)softwareUpdateModuleController:(id)controller navigateToViewController:(id)viewController;
- (int64_t)numberOfValuesForPickerViewCell:(id)cell;
- (unint64_t)automaticDisablingReasonsForItem:(id)item;
- (void)_closeButtonPressed:(id)pressed;
- (void)_didRemoveHomeKitObject:(id)object;
- (void)_didSelectRoomItem:(id)item;
- (void)_executeSilentSoftwareUpdateCheck;
- (void)_exportDiagnosticsForItem:(id)item;
- (void)_fetchAccessoryDiagnosticInfo;
- (void)_identifyHomePod;
- (void)_longPressRecognized:(id)recognized;
- (void)_notifyOfHomePodPairingIfNecessary:(id)necessary;
- (void)_offerToCreateHomeTheaterIfPossible:(id)possible;
- (void)_presentContainedItems;
- (void)_presentEcosystemAccessoryRemoveConfirmation:(id)confirmation;
- (void)_presentGroupPicker;
- (void)_presentHomeAccessoryRemoveConfirmation:(id)confirmation;
- (void)_presentRemoveConfirmation:(id)confirmation;
- (void)_presentRemoveFromGroupConfirmation:(id)confirmation;
- (void)_presentRemoveRouterConfirmation;
- (void)_presentResetHomePodConfirmation:(id)confirmation;
- (void)_presentTriggerEditorForProgrammableSwitchEventOptionItem:(id)item;
- (void)_presentWiFiPickerForItem:(id)item;
- (void)_registerButtonActionHandler:(id)handler item:(id)item;
- (void)_restartGroupedHomePodAccessory;
- (void)_restartHomePod;
- (void)_separateOrUnifyTile;
- (void)_setDismissedHomePodHasNonMemberMediaAccountWarning:(BOOL)warning;
- (void)_setupProgrammableSwitchCell:(id)cell forItem:(id)item;
- (void)_setupWiFiPickerManagerForFirstPartyAccessory:(id)accessory;
- (void)_submitMetricsSymptomsInteractionForAccessory:(id)accessory interactionType:(int64_t)type;
- (void)_updateAssociatedServiceTypeCells;
- (void)_updateCheckedStateForAssociatedServiceTypeCell:(id)cell item:(id)item;
- (void)_updateControlStatusText;
- (void)_updateIconDescriptorAnimated:(BOOL)animated;
- (void)_updateName:(id)name;
- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic;
- (void)accessoryDidUpdateControllable:(id)controllable;
- (void)accessoryDidUpdateServices:(id)services;
- (void)addRoomButtonPressed:(id)pressed;
- (void)beginScan;
- (void)checkForAccessoriesNeedingReprovisioning;
- (void)commitChanges;
- (void)controlPanelController:(id)controller didEndPossibleWritesForControlItem:(id)item;
- (void)controlPanelController:(id)controller willBeginPossibleWritesForControlItem:(id)item;
- (void)dealloc;
- (void)didJoinNewNetwork;
- (void)didRemoveCHIPPairingforAccessory:(id)accessory;
- (void)didSelectHeaderWarningAction:(id)action;
- (void)didSelectHomeAssistantDeviceSplitAccountAction:(unint64_t)action;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)diffableDataItemManager:(id)manager willUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems isInitialLoad:(BOOL)load;
- (void)dismissTriggerActionEditorViewController:(id)controller;
- (void)editRoomViewControllerDidFinish:(id)finish withNewRoom:(id)room;
- (void)endScan;
- (void)handleTimer:(id)timer;
- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path;
- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item;
- (void)itemManager:(id)manager performUpdateRequest:(id)request;
- (void)mediaSystemEditor:(id)editor didAbortDueTo:(id)to;
- (void)mediaSystemEditor:(id)editor didCreate:(id)create;
- (void)moduleController:(id)controller expandModule:(id)module;
- (void)moduleController:(id)controller presentSettingDetailsViewController:(id)viewController;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)pickerViewCell:(id)cell didSelectValueAtIndex:(int64_t)index;
- (void)serviceGroupEditor:(id)editor didCreateServiceGroup:(id)group;
- (void)setShouldIncludeRoomNameInHeaderTitle:(BOOL)title;
- (void)setShouldTrackProgrammableSwitchActivations:(BOOL)activations;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textDidChange:(id)change forTextField:(id)field item:(id)item;
- (void)textFieldDidEndEditing:(id)editing item:(id)item;
- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)updateCurrentWiFiNetwork:(id)network;
- (void)updateScannedWiFiNetworks:(id)networks;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillDismiss;
- (void)wifiPickerViewDidDisappear;
@end

@implementation HUServiceDetailsViewController

- (id)createAccessoryDetailInfoListModuleControllerWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  v6 = HUServiceDetailsViewController.createAccessoryDetailInfoListModuleController(with:)(withCopy);

  return v6;
}

+ (id)acceptableItemClasses
{
  if (_MergedGlobals_6_0 != -1)
  {
    dispatch_once(&_MergedGlobals_6_0, &__block_literal_global_85_0);
  }

  v3 = qword_27C837F50;

  return v3;
}

void __55__HUServiceDetailsViewController_acceptableItemClasses__block_invoke_2()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = qword_27C837F50;
  qword_27C837F50 = v8;
}

- (HUServiceDetailsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithServiceLikeItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:182 description:{@"%s is unavailable; use %@ instead", "-[HUServiceDetailsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUServiceDetailsViewController)initWithServiceLikeItem:(id)item
{
  v102 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  acceptableItemClasses = [objc_opt_class() acceptableItemClasses];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __58__HUServiceDetailsViewController_initWithServiceLikeItem___block_invoke;
  v93[3] = &unk_277DB8AD8;
  v6 = itemCopy;
  v94 = v6;
  if (([acceptableItemClasses na_any:v93] & 1) == 0)
  {
    v7 = objc_opt_class();
    allObjects = [acceptableItemClasses allObjects];
    v9 = [allObjects na_map:&__block_literal_global_107_2];
    v10 = [v9 componentsJoinedByString:@"/"];
    NSLog(&cfstr_RequiresAObjec.isa, v7, v10);
  }

  v11 = [[HUServiceDetailsItemManager alloc] initWithServiceItem:v6 delegate:self];
  v92.receiver = self;
  v92.super_class = HUServiceDetailsViewController;
  v12 = [(HUItemTableViewController *)&v92 initWithItemManager:v11 tableViewStyle:1];
  if (v12)
  {
    v13 = v6;
    v14 = &unk_28251B268;
    if ([v13 conformsToProtocol:v14])
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    isItemGroup = [v16 isItemGroup];
    v12->_isItemGroup = isItemGroup;
    v12->_isMultiServiceAccessory = 0;
    v12->_shouldIncludeRoomNameInHeaderTitle = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v18 = v13;
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      accessory = [v20 accessory];
      v12->_isMultiServiceAccessory = [accessory hf_isMultiServiceAccessory];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_31:
        objc_storeWeak(&v12->_detailsItemManager, v11);
        v53 = [[HUControlPanelController alloc] initWithDelegate:v12];
        controlPanelController = v12->_controlPanelController;
        v12->_controlPanelController = v53;

        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        expandedControlPanelItems = v12->_expandedControlPanelItems;
        v12->_expandedControlPanelItems = weakObjectsHashTable;

        v57 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v12 action:sel__longPressRecognized_];
        longPressRecognizer = v12->_longPressRecognizer;
        v12->_longPressRecognizer = v57;

        [(UILongPressGestureRecognizer *)v12->_longPressRecognizer setDelegate:v12];
        tableView = [(HUServiceDetailsViewController *)v12 tableView];
        [tableView addGestureRecognizer:v12->_longPressRecognizer];

        v60 = objc_alloc_init(HUServiceDetailsTextViewDelegate);
        textViewDelegate = v12->_textViewDelegate;
        v12->_textViewDelegate = v60;

        [(HUServiceDetailsTextViewDelegate *)v12->_textViewDelegate setItemManager:v11];
        [(HUServiceDetailsTextViewDelegate *)v12->_textViewDelegate setViewController:v12];
        namingComponentForHomeKitObject = [v13 namingComponentForHomeKitObject];
        namingComponent = v12->_namingComponent;
        v12->_namingComponent = namingComponentForHomeKitObject;

        mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
        [mEMORY[0x277D146E8] addHomeObserver:v12];

        mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
        [mEMORY[0x277D146E8]2 addAccessoryObserver:v12];

        latestResults = [v13 latestResults];
        v67 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
        [(HUServiceDetailsViewController *)v12 setTitle:v67];

        v68 = objc_alloc_init(HUQuickControlSummaryNavigationBarTitleView);
        [(HUServiceDetailsViewController *)v12 setNavigationBarTitleView:v68];

        if (([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation] & 1) == 0)
        {
          v69 = [[HUBaseIconViewConfiguration alloc] initWithItem:v13 appearance:3];
          navigationBarTitleView = [(HUServiceDetailsViewController *)v12 navigationBarTitleView];
          summaryView = [navigationBarTitleView summaryView];
          baseIconView = [summaryView baseIconView];
          [baseIconView setConfiguration:v69];
        }

        if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
        {
          v73 = [HUQuickControlProxHandOffSummaryViewUpdater alloc];
          navigationBarTitleView2 = [(HUServiceDetailsViewController *)v12 navigationBarTitleView];
          v75 = [(HUQuickControlProxHandOffSummaryViewUpdater *)v73 initWithNavigationBarTitleView:navigationBarTitleView2];
          [(HUServiceDetailsViewController *)v12 setProxHandOffSummaryViewUpdater:v75];
        }

        detailsItemManager = [(HUServiceDetailsViewController *)v12 detailsItemManager];
        sourceItemAccessory = [detailsItemManager sourceItemAccessory];
        [(HUServiceDetailsViewController *)v12 _submitMetricsSymptomsInteractionForAccessory:sourceItemAccessory interactionType:0];

        goto LABEL_36;
      }

      objc_opt_class();
      v22 = v13;
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v20 = v23;

      if (([v20 isHomePod] & 1) != 0 || objc_msgSend(v20, "isHomePodMediaSystem"))
      {
        v24 = objc_opt_new();
        [(HUServiceDetailsViewController *)v12 setRegisteredButtonFutures:v24];

        objc_initWeak(&location, v12);
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __58__HUServiceDetailsViewController_initWithServiceLikeItem___block_invoke_3;
        v88[3] = &unk_277DBED38;
        v90[1] = a2;
        objc_copyWeak(v90, &location);
        v82 = v11;
        v89 = v82;
        [HUHomeFeatureOnboardingUtilities fetchSupportedVoiceRecognitionLanguagesWithCompletion:v88];
        mEMORY[0x277D146E8]3 = [MEMORY[0x277D146E8] sharedDispatcher];
        home = [mEMORY[0x277D146E8]3 home];
        hf_currentUserIsOwner = [home hf_currentUserIsOwner];

        if (hf_currentUserIsOwner)
        {
          mEMORY[0x277D14400] = [MEMORY[0x277D14400] sharedInstance];
          mEMORY[0x277D146E8]4 = [MEMORY[0x277D146E8] sharedDispatcher];
          home2 = [mEMORY[0x277D146E8]4 home];
          uniqueIdentifier = [home2 uniqueIdentifier];
          uUIDString = [uniqueIdentifier UUIDString];
          v83 = [mEMORY[0x277D14400] mediaAccountForHomeIdentifier:uUIDString];

          if (v83)
          {
            v32 = HFLogForCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = NSStringFromSelector(a2);
              mEMORY[0x277D146E8]5 = [MEMORY[0x277D146E8] sharedDispatcher];
              home3 = [mEMORY[0x277D146E8]5 home];
              uniqueIdentifier2 = [home3 uniqueIdentifier];
              uUIDString2 = [uniqueIdentifier2 UUIDString];
              *buf = 138412802;
              v97 = v33;
              v98 = 2112;
              v99 = v83;
              v100 = 2112;
              v101 = uUIDString2;
              _os_log_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_DEFAULT, "%@ Setting media account - [%@]  for home with identifier - [%@]", buf, 0x20u);
            }

            [(HUServiceDetailsItemManager *)v82 setHomeMediaAccount:v83];
            detailsItemManager2 = [(HUServiceDetailsViewController *)v12 detailsItemManager];
            v37 = [detailsItemManager2 reloadAndUpdateAllItemsFromSenderSelector:a2];

            detailsItemManager3 = [(HUServiceDetailsViewController *)v12 detailsItemManager];
            diffableDataSourceDisabled = [detailsItemManager3 diffableDataSourceDisabled];

            if (diffableDataSourceDisabled)
            {
              tableView2 = [(HUServiceDetailsViewController *)v12 tableView];
              v41 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
              [tableView2 reloadSections:v41 withRowAnimation:5];
            }

            else
            {
              itemManager = [(HUItemTableViewController *)v12 itemManager];
              v50 = [itemManager itemSectionForSectionIndex:0];

              if (v50)
              {
                detailsItemManager4 = [(HUServiceDetailsViewController *)v12 detailsItemManager];
                v95 = v50;
                v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
                [detailsItemManager4 reloadUIRepresentationForSections:v52 withAnimation:0];
              }
            }
          }

          else
          {
            mEMORY[0x277D14400]2 = [MEMORY[0x277D14400] sharedInstance];
            mEMORY[0x277D146E8]6 = [MEMORY[0x277D146E8] sharedDispatcher];
            home4 = [mEMORY[0x277D146E8]6 home];
            v45 = [mEMORY[0x277D14400]2 executeHomeMediaAccountFetchForHome:home4];
            accountFuture = v12->_accountFuture;
            v12->_accountFuture = v45;

            v47 = v12->_accountFuture;
            v85[0] = MEMORY[0x277D85DD0];
            v85[1] = 3221225472;
            v85[2] = __58__HUServiceDetailsViewController_initWithServiceLikeItem___block_invoke_175;
            v85[3] = &unk_277DBED60;
            v87[1] = a2;
            objc_copyWeak(v87, &location);
            v86 = v82;
            v48 = [(NAFuture *)v47 addCompletionBlock:v85];

            objc_destroyWeak(v87);
          }
        }

        objc_destroyWeak(v90);
        objc_destroyWeak(&location);
      }
    }

    goto LABEL_31;
  }

LABEL_36:

  return v12;
}

void __58__HUServiceDetailsViewController_initWithServiceLikeItem___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412802;
    v19 = v16;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v5;
    _os_log_debug_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEBUG, "%@ fetchSupportedVoiceRecognitionLanguagesWithCompletion returned (%@) %@", buf, 0x20u);
  }

  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [*(a1 + 32) setSupportedVoiceRecognitionLanguages:v5];
    v10 = [WeakRetained detailsItemManager];
    v11 = [v10 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 48)];

    v12 = [WeakRetained detailsItemManager];
    LODWORD(v10) = [v12 diffableDataSourceDisabled];

    if (v10)
    {
      v9 = [WeakRetained tableView];
      v13 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
      [v9 reloadSections:v13 withRowAnimation:5];
    }

    else
    {
      v14 = [WeakRetained itemManager];
      v9 = [v14 itemSectionForSectionIndex:0];

      if (!v9)
      {
        goto LABEL_11;
      }

      v13 = [WeakRetained detailsItemManager];
      v17 = v9;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      [v13 reloadUIRepresentationForSections:v15 withAnimation:0];
    }

    goto LABEL_11;
  }

  WeakRetained = HFLogForCategory();
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v6;
    _os_log_error_impl(&dword_20CEB6000, WeakRetained, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages [%@]", buf, 0x16u);
LABEL_11:
  }
}

void __58__HUServiceDetailsViewController_initWithServiceLikeItem___block_invoke_175(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(*(a1 + 48));
      v11 = [MEMORY[0x277D146E8] sharedDispatcher];
      v12 = [v11 home];
      v13 = [v12 uniqueIdentifier];
      v14 = [v13 UUIDString];
      *buf = 138412802;
      v20 = v10;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "%@ Error fetching media account for home with identifier [%@] - [%@]", buf, 0x20u);
    }
  }

  else
  {
    v8 = MEMORY[0x277D2C900];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__HUServiceDetailsViewController_initWithServiceLikeItem___block_invoke_177;
    v15[3] = &unk_277DBCAB8;
    objc_copyWeak(v18, (a1 + 40));
    v18[1] = *(a1 + 48);
    v16 = v5;
    v17 = *(a1 + 32);
    v9 = [v8 futureWithBlock:v15];

    objc_destroyWeak(v18);
  }
}

void __58__HUServiceDetailsViewController_initWithServiceLikeItem___block_invoke_177(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 56));
    v7 = *(a1 + 32);
    *buf = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ Setting media account for home with identifier [%@]", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277D146E8] sharedDispatcher];
  v10 = [v9 home];
  v11 = [v10 uniqueIdentifier];
  v12 = [v11 UUIDString];
  v13 = [v8 objectForKey:v12];

  [*(a1 + 40) setHomeMediaAccount:v13];
  v14 = [WeakRetained detailsItemManager];
  v15 = [v14 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 56)];

  v16 = [WeakRetained tableView];
  v17 = [v16 numberOfSections];

  if (v17 >= 1)
  {
    v18 = [WeakRetained detailsItemManager];
    v19 = [v18 diffableDataSourceDisabled];

    if (v19)
    {
      v20 = [WeakRetained tableView];
      v21 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
      [v20 reloadSections:v21 withRowAnimation:5];
    }

    else
    {
      v22 = [WeakRetained itemManager];
      v20 = [v22 itemSectionForSectionIndex:0];

      if (!v20)
      {
LABEL_9:

        goto LABEL_10;
      }

      v21 = [WeakRetained detailsItemManager];
      v24 = v20;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      [v21 reloadUIRepresentationForSections:v23 withAnimation:0];
    }

    goto LABEL_9;
  }

LABEL_10:
  [v3 finishWithNoResult];
}

- (void)dealloc
{
  accountFuture = [(HUServiceDetailsViewController *)self accountFuture];
  [accountFuture cancel];

  v4.receiver = self;
  v4.super_class = HUServiceDetailsViewController;
  [(HUServiceDetailsViewController *)&v4 dealloc];
}

- (void)viewWillDismiss
{
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  [detailsItemManager tearDown];
}

- (NSString)description
{
  objc_opt_class();
  item = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = item;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if ([v5 mediaAccessoryItemType] == 4)
  {
    v6 = [MEMORY[0x277D2C8F8] builderWithObject:self];
    v7 = MEMORY[0x277CCACA8];
    latestResults = [v5 latestResults];
    v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    mediaProfileContainer = [v5 mediaProfileContainer];
    v11 = [v7 stringWithFormat:@"%p '%@' %@'", v5, v9, mediaProfileContainer];

    [v6 appendString:v11 withName:@"HFMediaAccessoryItem"];
    build = [v6 build];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HUServiceDetailsViewController;
    build = [(HUItemTableViewController *)&v14 description];
  }

  return build;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUServiceDetailsVC-viewWillAppear]", buf, 2u);
  }

  v32.receiver = self;
  v32.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v32 viewWillAppear:appearCopy];
  item = [(HUServiceDetailsViewController *)self item];
  if (item)
  {
    v7 = item;
    item2 = [(HUServiceDetailsViewController *)self item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = objc_opt_class();
      item3 = [(HUServiceDetailsViewController *)self item];
      if (item3)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = item3;
        }

        else
        {
          v12 = 0;
        }

        v13 = item3;
        if (v12)
        {
          goto LABEL_12;
        }

        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
        [currentHandler handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v10, objc_opt_class()}];
      }

      v13 = 0;
LABEL_12:

      if (v13)
      {
        detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
        v17 = [detailsItemManager shouldShowDeviceOptionsForAccessoryItem:v13];

        if (v17)
        {
          detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
          [detailsItemManager2 registerKVO];
        }
      }
    }
  }

  [(HUServiceDetailsViewController *)self checkForAccessoriesNeedingReprovisioning];
  navigationController = [(HUServiceDetailsViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v21 = [viewControllers count];

  if (v21 == 1)
  {
    v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__closeButtonPressed_];
    [v22 setAccessibilityIdentifier:@"AccessoryDetails.Close"];
    navigationItem = [(HUServiceDetailsViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v22];

    parentViewController = [(HUServiceDetailsViewController *)self parentViewController];
    navigationItem2 = [parentViewController navigationItem];
    titleView = [navigationItem2 titleView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HUServiceDetailsViewController *)self setNavigationBarTitleView:titleView];
    }

    navigationBarTitleView = [(HUServiceDetailsViewController *)self navigationBarTitleView];
    navigationItem3 = [(HUServiceDetailsViewController *)self navigationItem];
    [navigationItem3 setTitleView:navigationBarTitleView];

    clearColor = [MEMORY[0x277D75348] clearColor];
    navigationBarTitleView2 = [(HUServiceDetailsViewController *)self navigationBarTitleView];
    [navigationBarTitleView2 setBackgroundColor:clearColor];

    navigationController2 = [(HUServiceDetailsViewController *)self navigationController];
    [navigationController2 setDelegate:self];
  }

  [(HUServiceDetailsViewController *)self _updateControlStatusText];
  [(HUServiceDetailsViewController *)self _updateIconDescriptorAnimated:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUServiceDetailsVC-viewDidAppear]", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v9 viewDidAppear:appearCopy];
  [(HUServiceDetailsViewController *)self setShouldTrackProgrammableSwitchActivations:1];
  v6 = MEMORY[0x277D143D8];
  v11 = *MEMORY[0x277D133C8];
  item = [(HUServiceDetailsViewController *)self item];
  v12[0] = item;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v6 sendEvent:33 withData:v8];

  [(HUServiceDetailsViewController *)self _executeSilentSoftwareUpdateCheck];
  [(HUServiceDetailsViewController *)self _fetchAccessoryDiagnosticInfo];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v21.receiver = self;
  v21.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v21 viewWillDisappear:disappear];
  item = [(HUServiceDetailsViewController *)self item];
  if (!item)
  {
    goto LABEL_14;
  }

  v5 = item;
  item2 = [(HUServiceDetailsViewController *)self item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = objc_opt_class();
  item3 = [(HUServiceDetailsViewController *)self item];
  if (item3)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = item3;
    }

    else
    {
      v10 = 0;
    }

    v11 = item3;
    if (v10)
    {
      goto LABEL_10;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_10:

  if (v11)
  {
    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    v15 = [detailsItemManager shouldShowDeviceOptionsForAccessoryItem:v11];

    if (v15)
    {
      detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
      [detailsItemManager2 unregisterKVO];
    }
  }

LABEL_14:
  if ([(HUServiceDetailsViewController *)self isMovingFromParentViewController])
  {
    navigationController = [(HUServiceDetailsViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v19 = [viewControllers count];

    if (v19 >= 2)
    {
      _commitBuilder = [(HUServiceDetailsViewController *)self _commitBuilder];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v5 viewDidDisappear:disappear];
  [(HUServiceDetailsViewController *)self setShouldTrackProgrammableSwitchActivations:0];
  nameItemModuleController = [(HUServiceDetailsViewController *)self nameItemModuleController];
  [nameItemModuleController cancelNameEdit];
}

- (void)setShouldIncludeRoomNameInHeaderTitle:(BOOL)title
{
  if (self->_shouldIncludeRoomNameInHeaderTitle != title)
  {
    self->_shouldIncludeRoomNameInHeaderTitle = title;
    [(HUServiceDetailsViewController *)self _updateControlStatusText];
  }
}

- (void)commitChanges
{
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  nameModule = [detailsItemManager nameModule];
  nameAndIconItem = [nameModule nameAndIconItem];
  v9 = [(HUItemTableViewController *)self textFieldForVisibleItem:nameAndIconItem];

  if (![v9 isEditing] || (objc_msgSend(v9, "endEditing:", 1), objc_msgSend(MEMORY[0x277D14CE8], "isAMac")))
  {
    _commitBuilder = [(HUServiceDetailsViewController *)self _commitBuilder];
    presentationDelegate = [(HUServiceDetailsViewController *)self presentationDelegate];
    v8 = [presentationDelegate finishPresentation:self animated:1];
  }
}

- (void)_closeButtonPressed:(id)pressed
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUServiceDetailsVC-_closeButtonPressed]", v5, 2u);
  }

  [(HUServiceDetailsViewController *)self commitChanges];
}

- (id)_commitBuilderFor:(id)for with:(id)with
{
  v27 = *MEMORY[0x277D85DE8];
  forCopy = for;
  withCopy = with;
  if (!withCopy)
  {
    NSLog(&cfstr_BuilderForItem.isa, forCopy);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = forCopy;
    v25 = 2112;
    v26 = withCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "User committing builder for %@, builder: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  commitItem = [withCopy commitItem];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__HUServiceDetailsViewController__commitBuilderFor_with___block_invoke;
  v20[3] = &unk_277DBBE38;
  objc_copyWeak(&v22, buf);
  v10 = withCopy;
  v21 = v10;
  v11 = [commitItem recover:v20];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__HUServiceDetailsViewController__commitBuilderFor_with___block_invoke_2;
  v18[3] = &unk_277DB94D0;
  objc_copyWeak(&v19, buf);
  v12 = [v11 addFailureBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HUServiceDetailsViewController__commitBuilderFor_with___block_invoke_3;
  v16[3] = &unk_277DBA338;
  v13 = forCopy;
  v17 = v13;
  v14 = [v11 addSuccessBlock:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  return v11;
}

id __57__HUServiceDetailsViewController__commitBuilderFor_with___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _recoverItemBuilder:*(a1 + 32) fromError:v3];

  return v5;
}

void __57__HUServiceDetailsViewController__commitBuilderFor_with___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v15 hf_isHomeKitNamingError];
  v5 = [MEMORY[0x277D14640] sharedHandler];
  if (v4)
  {
    v6 = [WeakRetained isItemGroup];
    v7 = MEMORY[0x277D13C40];
    if (!v6)
    {
      v7 = MEMORY[0x277D13C48];
    }

    v8 = *v7;
    v9 = [v15 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13880]];
    [v5 handleError:v15 operationType:v8 options:v10 retryBlock:0 cancelBlock:0];
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [WeakRetained isItemGroup];
    v13 = MEMORY[0x277D13C40];
    if (!v12)
    {
      v13 = MEMORY[0x277D13C48];
    }

    v14 = *v13;
    v9 = [MEMORY[0x277D14640] descriptionLocalizationKeyForError:v15];
    v10 = [v11 stringWithFormat:@"HFErrorHandler: [Ignore] Operation: %@ encountered error: %@", v14, v9];
    [v5 logError:v15 operationDescription:v10];
  }
}

void __57__HUServiceDetailsViewController__commitBuilderFor_with___block_invoke_3(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = *MEMORY[0x277D13BB0];
  v5[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = [v1 updateWithOptions:v2];
}

- (id)_commitBuilder
{
  navigationItem = [(HUServiceDetailsViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItem = [detailsItemManager sourceItem];

  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  serviceLikeBuilder = [detailsItemManager2 serviceLikeBuilder];

  objc_initWeak(&location, self);
  nameItemModuleController = [(HUServiceDetailsViewController *)self nameItemModuleController];
  prepareForCommit = [nameItemModuleController prepareForCommit];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__HUServiceDetailsViewController__commitBuilder__block_invoke;
  v20[3] = &unk_277DB7530;
  v20[4] = self;
  v11 = [prepareForCommit addCompletionBlock:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HUServiceDetailsViewController__commitBuilder__block_invoke_2;
  v16[3] = &unk_277DBED88;
  objc_copyWeak(&v19, &location);
  v12 = sourceItem;
  v17 = v12;
  v13 = serviceLikeBuilder;
  v18 = v13;
  v14 = [prepareForCommit flatMap:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v14;
}

void __48__HUServiceDetailsViewController__commitBuilder__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  v1 = [v2 rightBarButtonItem];
  [v1 setEnabled:1];
}

id __48__HUServiceDetailsViewController__commitBuilder__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _commitBuilderFor:*(a1 + 32) with:*(a1 + 40)];

  return v3;
}

- (id)_removeItem
{
  v40 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  serviceLikeBuilder = [detailsItemManager serviceLikeBuilder];

  if (serviceLikeBuilder)
  {
    objc_opt_class();
    detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
    sourceItem = [detailsItemManager2 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v8 = sourceItem;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if ([v9 isHomePodMediaSystem])
    {
      [(HUServiceDetailsViewController *)self setRequiresPresentingViewControllerDismissal:1];
      presentationDelegate = [(HUServiceDetailsViewController *)self presentationDelegate];
      futureWithNoResult = [presentationDelegate finishPresentation:self animated:1];
    }

    else
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    navigationItem = [(HUServiceDetailsViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];

    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
      sourceItem2 = [detailsItemManager3 sourceItem];
      *buf = 138412546;
      v37 = sourceItem2;
      v38 = 2112;
      v39 = serviceLikeBuilder;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Preparing to remove item '%@' using builder '%@'", buf, 0x16u);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __45__HUServiceDetailsViewController__removeItem__block_invoke;
    v32[3] = &unk_277DBEDB0;
    v19 = serviceLikeBuilder;
    v33 = v19;
    objc_copyWeak(&v34, &location);
    v20 = [futureWithNoResult flatMap:v32];
    if (!futureWithNoResult)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:612 description:{@"Invalid parameter not satisfying: %@", @"removalFuture"}];
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __45__HUServiceDetailsViewController__removeItem__block_invoke_3;
    v30[3] = &unk_277DB8CA8;
    objc_copyWeak(&v31, &location);
    v21 = [futureWithNoResult addCompletionBlock:v30];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __45__HUServiceDetailsViewController__removeItem__block_invoke_4;
    v27[3] = &unk_277DB9368;
    objc_copyWeak(&v29, &location);
    v28 = v19;
    v22 = [futureWithNoResult addFailureBlock:v27];
    if ([v9 supportsDirectObliteration])
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __45__HUServiceDetailsViewController__removeItem__block_invoke_2_241;
      v26[3] = &unk_277DBA338;
      v26[4] = self;
      v23 = [futureWithNoResult addSuccessBlock:v26];
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v34);
  }

  else
  {
    detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
    sourceItem3 = [detailsItemManager4 sourceItem];
    NSLog(&cfstr_BuilderForItem_0.isa, sourceItem3);

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  objc_destroyWeak(&location);

  return futureWithNoResult;
}

id __45__HUServiceDetailsViewController__removeItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) removeItemFromHome];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HUServiceDetailsViewController__removeItem__block_invoke_2;
  v7[3] = &unk_277DBBE38;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  v5 = [v4 recover:v7];

  objc_destroyWeak(&v9);

  return v5;
}

id __45__HUServiceDetailsViewController__removeItem__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _recoverItemBuilder:*(a1 + 32) fromError:v3];

  return v5;
}

void __45__HUServiceDetailsViewController__removeItem__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationItem];
  v2 = [v1 rightBarButtonItem];
  [v2 setEnabled:1];
}

void __45__HUServiceDetailsViewController__removeItem__block_invoke_4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained detailsItemManager];
    v8 = [v7 sourceItem];
    v9 = *(a1 + 32);
    *buf = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Failed to remove item '%@' using builder '%@': %@", buf, 0x20u);
  }

  v5 = [MEMORY[0x277D14640] sharedHandler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__HUServiceDetailsViewController__removeItem__block_invoke_240;
  v10[3] = &unk_277DB8770;
  objc_copyWeak(&v11, (a1 + 40));
  [v5 handleError:v3 retryBlock:v10 cancelBlock:0];

  objc_destroyWeak(&v11);
}

void __45__HUServiceDetailsViewController__removeItem__block_invoke_240(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _removeItem];
}

void __45__HUServiceDetailsViewController__removeItem__block_invoke_2_241(uint64_t a1)
{
  v1 = [*(a1 + 32) detailsItemManager];
  [v1 resetAccessory];
}

- (void)_restartHomePod
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped restart HomePod", &v7, 0x16u);
  }

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  [detailsItemManager restartAccessory];
}

- (void)_updateCheckedStateForAssociatedServiceTypeCell:(id)cell item:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  if ([detailsItemManager showAssociatedServiceTypeList])
  {
    detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
    selectedAssociatedServiceTypeItem = [detailsItemManager2 selectedAssociatedServiceTypeItem];
    [cellCopy setChecked:{objc_msgSend(selectedAssociatedServiceTypeItem, "isEqual:", itemCopy)}];
  }

  else
  {
    [cellCopy setChecked:0];
  }
}

- (void)addRoomButtonPressed:(id)pressed
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUServiceDetailsVC-addRoomButtonPressed]", v11, 2u);
  }

  v5 = objc_alloc(MEMORY[0x277D149D8]);
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  v8 = [v5 initWithExistingObject:0 inHome:home];

  v9 = [[HUEditRoomViewController alloc] initWithRoomBuilder:v8 presentationDelegate:self addRoomDelegate:0];
  v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
  [v10 setModalPresentationStyle:2];
  [(HUServiceDetailsViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (HFServiceLikeItem)item
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];

  return sourceItem;
}

- (void)_updateControlStatusText
{
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  headerItem = [detailsItemManager headerItem];

  latestResults = [headerItem latestResults];

  if (!latestResults)
  {
    item = [(HUServiceDetailsViewController *)self item];

    headerItem = item;
  }

  navigationBarTitleView = [(HUServiceDetailsViewController *)self navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];

  if (([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
  {
    latestResults2 = [headerItem latestResults];
    v9 = [(HUServiceDetailsViewController *)self _primaryStatusTextForLatestResults:latestResults2 showingSecondaryStatus:1];
    [summaryView setPrimaryText:v9];

    latestResults3 = [headerItem latestResults];
    v11 = [(HUServiceDetailsViewController *)self _secondaryStatusTextForLatestResults:latestResults3];

    if (v11)
    {
      v12 = summaryView;
      v13 = v11;
LABEL_6:
      [v12 setSecondaryText:v13];
LABEL_11:

      goto LABEL_12;
    }

    detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
    sourceItemAccessory = [detailsItemManager2 sourceItemAccessory];
    hf_siriEndpointProfile = [sourceItemAccessory hf_siriEndpointProfile];
    if (hf_siriEndpointProfile)
    {
    }

    else
    {
      detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
      sourceItemIsHomePod = [detailsItemManager3 sourceItemIsHomePod];

      if (!sourceItemIsHomePod)
      {
        v12 = summaryView;
        v13 = 0;
        goto LABEL_6;
      }
    }

    _microphoneStatus = [(HUServiceDetailsViewController *)self _microphoneStatus];
    [summaryView setMicrophoneStatusText:_microphoneStatus];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_updateIconDescriptorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  item = [(HUServiceDetailsViewController *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  if (([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation] & 1) == 0)
  {
    v9 = [[HUBaseIconViewConfiguration alloc] initWithItem:item appearance:3];
    navigationBarTitleView = [(HUServiceDetailsViewController *)self navigationBarTitleView];
    summaryView = [navigationBarTitleView summaryView];
    baseIconView = [summaryView baseIconView];
    [baseIconView setConfiguration:v9];

    goto LABEL_12;
  }

  latestResults2 = [item latestResults];
  v8 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D140C8]];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    latestResults3 = [item latestResults];
    v9 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D14068]];

    if (!v9)
    {
      goto LABEL_7;
    }
  }

  if ([(HUBaseIconViewConfiguration *)v9 integerValue]!= 2)
  {
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    goto LABEL_11;
  }

LABEL_7:
  v14 = 1;
LABEL_11:
  navigationBarTitleView2 = [(HUServiceDetailsViewController *)self navigationBarTitleView];
  summaryView2 = [navigationBarTitleView2 summaryView];
  navigationBarTitleView = [summaryView2 iconView];

  [navigationBarTitleView updateWithIconDescriptor:v6 displayStyle:v14 animated:animatedCopy];
LABEL_12:
}

- (id)_primaryStatusTextForLatestResults:(id)results showingSecondaryStatus:(BOOL)status
{
  statusCopy = status;
  v24 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[HUServiceDetailsViewController _primaryStatusTextForLatestResults:showingSecondaryStatus:]";
    v20 = 2112;
    v21 = resultsCopy;
    v22 = 1024;
    v23 = statusCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_INFO, "%s %@ %d", &v18, 0x1Cu);
  }

  if (!statusCopy)
  {
    v15 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E40]];
    if (v15)
    {
      goto LABEL_15;
    }

    v15 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E68]];
    if (v15)
    {
      goto LABEL_15;
    }
  }

  v8 = *MEMORY[0x277D13F00];
  v9 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13F00]];
  serviceName = [v9 serviceName];
  v11 = [serviceName length];

  if (!v11)
  {
    item = [(HUServiceDetailsViewController *)self item];
    latestResults = [item latestResults];
    v14 = [latestResults objectForKeyedSubscript:v8];

    v9 = v14;
  }

  if ([(HUServiceDetailsViewController *)self shouldIncludeRoomNameInHeaderTitle])
  {
    [v9 composedString];
  }

  else
  {
    [v9 serviceName];
  }
  v16 = ;

  if (!v16)
  {
    v15 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
    if (!v15)
    {
      v15 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    }

LABEL_15:
    v16 = v15;
  }

  return v16;
}

- (id)_secondaryStatusTextForLatestResults:(id)results
{
  resultsCopy = results;
  v4 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E40]];
  if (!v4)
  {
    v4 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E38]];
    if (!v4)
    {
      v4 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
      if (!v4)
      {
        v4 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      }
    }
  }

  v5 = v4;

  return v5;
}

- (id)_microphoneStatus
{
  v3 = objc_opt_new();
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItemAccessory = [detailsItemManager sourceItemAccessory];
  mediaProfile = [sourceItemAccessory mediaProfile];
  hf_mediaAccessoryCommonSettingsManager = [mediaProfile hf_mediaAccessoryCommonSettingsManager];

  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItemAccessory2 = [detailsItemManager2 sourceItemAccessory];
  hf_siriEndpointProfile = [sourceItemAccessory2 hf_siriEndpointProfile];
  manuallyDisabled = [hf_siriEndpointProfile manuallyDisabled];

  v12 = [hf_mediaAccessoryCommonSettingsManager settingValueForKeyPath:*MEMORY[0x277D133B0]];
  bOOLValue = [v12 BOOLValue];

  view = [(HUServiceDetailsViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItemIsHomePod = [detailsItemManager3 sourceItemIsHomePod];

  if (sourceItemIsHomePod)
  {
    objc_opt_class();
    detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
    sourceItem = [detailsItemManager4 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v20 = sourceItem;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    isSiriDisabled = [v21 isSiriDisabled];
    bOOLValue = isSiriDisabled ^ 1;
  }

  if (manuallyDisabled & 1 | ((bOOLValue & 1) == 0))
  {
    if (manuallyDisabled)
    {
      v23 = _HULocalizedStringWithDefaultValue(@"HUSiriEndpoint_MicrophoneOff", @"HUSiriEndpoint_MicrophoneOff", 1);
    }

    else
    {
      itemManager = [(HUItemTableViewController *)self itemManager];
      home = [itemManager home];
      v26 = HULocalizedSiriTriggerPhrase(home);
      v23 = HULocalizedStringWithFormat(@"HUSiriEndpoint_HeySiriTurnedOff", @"%@", v27, v28, v29, v30, v31, v32, v26);
    }

    v33 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v23];
    v34 = objc_alloc(MEMORY[0x277CCA898]);
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%1s", ""];
    v36 = [v34 initWithString:v35];

    v37 = MEMORY[0x277D755B8];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    v39 = [v37 hu_mutedMicrophoneImageWithTintColor:systemGrayColor];

    v40 = objc_opt_new();
    [v40 setImage:v39];
    v41 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v40];
    v42 = v41;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v43 = v33;
    }

    else
    {
      v43 = v41;
    }

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v44 = v41;
    }

    else
    {
      v44 = v33;
    }

    [v3 appendAttributedString:v43];
    [v3 appendAttributedString:v36];
    [v3 appendAttributedString:v44];
  }

  return v3;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  nameModule = [detailsItemManager nameModule];

  if (nameModule == moduleCopy)
  {
    v18 = [[HUNameItemModuleController alloc] initWithModule:moduleCopy host:self];
    [(HUServiceDetailsViewController *)self setNameItemModuleController:v18];

    nameItemModuleController = [(HUServiceDetailsViewController *)self nameItemModuleController];
    [nameItemModuleController setNameFieldHasClearButton:1];

    itemManager = [(HUItemTableViewController *)self itemManager];
    home = [itemManager home];
    hf_currentUserIsRestrictedGuest = [home hf_currentUserIsRestrictedGuest];
    nameItemModuleController2 = [(HUServiceDetailsViewController *)self nameItemModuleController];
    [nameItemModuleController2 setNameFieldHasClearButton:hf_currentUserIsRestrictedGuest ^ 1u];

    nameItemModuleController3 = [(HUServiceDetailsViewController *)self nameItemModuleController];
  }

  else
  {
    detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
    accessoryRepresentableItemModule = [detailsItemManager2 accessoryRepresentableItemModule];

    if (accessoryRepresentableItemModule == moduleCopy)
    {
      nameItemModuleController3 = [(HUServiceDetailsViewController *)self createAccessoryDetailInfoListModuleControllerWith:moduleCopy];
    }

    else
    {
      detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
      sceneAndTriggerModule = [detailsItemManager3 sceneAndTriggerModule];

      if (sceneAndTriggerModule == moduleCopy)
      {
        v25 = [(HUItemModuleController *)[HUAssociatedSceneAndTriggerModuleController alloc] initWithModule:moduleCopy];
        [(HUServiceDetailsViewController *)self setSceneAndTriggerModuleController:v25];

        nameItemModuleController3 = [(HUServiceDetailsViewController *)self sceneAndTriggerModuleController];
      }

      else
      {
        detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
        relatedTriggerItemModule = [detailsItemManager4 relatedTriggerItemModule];

        if (relatedTriggerItemModule == moduleCopy)
        {
          associatedTriggerModuleController = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
          v27 = [[HUAvailableRelatedTriggerItemModuleController alloc] initWithModule:moduleCopy];
          [(HUServiceDetailsViewController *)self setAssociatedTriggerModuleController:v27];

          associatedTriggerModuleController2 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
          [associatedTriggerModuleController2 setHost:self];

          associatedTriggerModuleController3 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
          [associatedTriggerModuleController updatePresentedViewControllerForNewModuleController:associatedTriggerModuleController3];

          associatedTriggerModuleController4 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];

          goto LABEL_13;
        }

        detailsItemManager5 = [(HUServiceDetailsViewController *)self detailsItemManager];
        connectedServicesItemModule = [detailsItemManager5 connectedServicesItemModule];

        if (connectedServicesItemModule != moduleCopy)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:862 description:{@"Unexpected module %@", moduleCopy}];

          associatedTriggerModuleController4 = 0;
          goto LABEL_13;
        }

        v30 = [(HUItemModuleController *)[HUMatterConnectedServicesItemModuleController alloc] initWithModule:moduleCopy];
        [(HUServiceDetailsViewController *)self setConnectedServicesItemModuleController:v30];

        nameItemModuleController3 = [(HUServiceDetailsViewController *)self connectedServicesItemModuleController];
      }
    }
  }

  associatedTriggerModuleController4 = nameItemModuleController3;
LABEL_13:

  return associatedTriggerModuleController4;
}

- (id)itemModuleControllers
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v86.receiver = self;
  v86.super_class = HUServiceDetailsViewController;
  itemModuleControllers = [(HUItemTableViewController *)&v86 itemModuleControllers];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 unionSet:itemModuleControllers];

  associatedTriggerModuleController = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
  if (!associatedTriggerModuleController)
  {
    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    relatedTriggerItemModule = [detailsItemManager relatedTriggerItemModule];

    if (!relatedTriggerItemModule)
    {
      goto LABEL_5;
    }

    v8 = [HUAvailableRelatedTriggerItemModuleController alloc];
    detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
    relatedTriggerItemModule2 = [detailsItemManager2 relatedTriggerItemModule];
    v11 = [(HUAvailableRelatedTriggerItemModuleController *)v8 initWithModule:relatedTriggerItemModule2];
    [(HUServiceDetailsViewController *)self setAssociatedTriggerModuleController:v11];

    associatedTriggerModuleController = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
    [associatedTriggerModuleController setHost:self];
  }

LABEL_5:
  associatedTriggerModuleController2 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:associatedTriggerModuleController2];

  accessorySettingsItemModuleController = [(HUServiceDetailsViewController *)self accessorySettingsItemModuleController];
  if (!accessorySettingsItemModuleController)
  {
    detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
    accessorySettingsItemModule = [detailsItemManager3 accessorySettingsItemModule];

    if (!accessorySettingsItemModule)
    {
      goto LABEL_9;
    }

    v16 = [HUAccessorySettingsItemModuleController alloc];
    accessorySettingsItemModuleController = [(HUServiceDetailsViewController *)self detailsItemManager];
    accessorySettingsItemModule2 = [accessorySettingsItemModuleController accessorySettingsItemModule];
    v18 = [(HUAccessorySettingsItemModuleController *)v16 initWithModule:accessorySettingsItemModule2 delegate:self];
    [(HUServiceDetailsViewController *)self setAccessorySettingsItemModuleController:v18];
  }

LABEL_9:
  accessorySettingsItemModuleController2 = [(HUServiceDetailsViewController *)self accessorySettingsItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:accessorySettingsItemModuleController2];

  detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  homeKitAccessorySettingsModules = [detailsItemManager4 homeKitAccessorySettingsModules];

  if (homeKitAccessorySettingsModules)
  {
    v81 = v3;
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      detailsItemManager5 = [(HUServiceDetailsViewController *)self detailsItemManager];
      homeKitAccessorySettingsModules2 = [detailsItemManager5 homeKitAccessorySettingsModules];
      *buf = 138412290;
      v88 = homeKitAccessorySettingsModules2;
      _os_log_debug_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEBUG, "Creating Item Module Controllers from  homeKitAccessorySettingsModules = [%@]", buf, 0xCu);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    detailsItemManager6 = [(HUServiceDetailsViewController *)self detailsItemManager];
    homeKitAccessorySettingsModules3 = [detailsItemManager6 homeKitAccessorySettingsModules];

    v25 = [homeKitAccessorySettingsModules3 countByEnumeratingWithState:&v82 objects:v91 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v83;
      do
      {
        v28 = 0;
        do
        {
          if (*v83 != v27)
          {
            objc_enumerationMutation(homeKitAccessorySettingsModules3);
          }

          v29 = *(*(&v82 + 1) + 8 * v28);
          objc_opt_class();
          v30 = v29;
          if (objc_opt_isKindOfClass())
          {
            v31 = v30;
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;

          if (v32)
          {
            moduleToModuleControllerMap = [(HUServiceDetailsViewController *)self moduleToModuleControllerMap];
            v34 = [moduleToModuleControllerMap objectForKey:v32];

            if (!v34)
            {
              v35 = [[HUHomeKitAccessorySettingsItemModuleController alloc] initWithModule:v32 delegate:self];
              moduleToModuleControllerMap2 = [(HUServiceDetailsViewController *)self moduleToModuleControllerMap];

              if (!moduleToModuleControllerMap2)
              {
                strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                [(HUServiceDetailsViewController *)self setModuleToModuleControllerMap:strongToStrongObjectsMapTable];
              }

              v38 = HFLogForCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v88 = v35;
                v89 = 2112;
                v90 = v32;
                _os_log_debug_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_DEBUG, "Setting moduleController = [%@] for Module = [%@] in moduleToModuleControllerMap", buf, 0x16u);
              }

              moduleToModuleControllerMap3 = [(HUServiceDetailsViewController *)self moduleToModuleControllerMap];
              [moduleToModuleControllerMap3 setObject:v35 forKey:v32];
            }
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [homeKitAccessorySettingsModules3 countByEnumeratingWithState:&v82 objects:v91 count:16];
      }

      while (v26);
    }

    moduleToModuleControllerMap4 = [(HUServiceDetailsViewController *)self moduleToModuleControllerMap];
    objectEnumerator = [moduleToModuleControllerMap4 objectEnumerator];

    nextObject = [objectEnumerator nextObject];
    v3 = v81;
    if (nextObject)
    {
      v43 = nextObject;
      do
      {
        [(HUHomeKitAccessorySettingsItemModuleController *)v81 na_safeAddObject:v43];
        nextObject2 = [objectEnumerator nextObject];

        v43 = nextObject2;
      }

      while (nextObject2);
    }
  }

  v45 = HFLogForCategory();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v88 = v3;
    _os_log_debug_impl(&dword_20CEB6000, v45, OS_LOG_TYPE_DEBUG, "itemModuleControllers = [%@]", buf, 0xCu);
  }

  softwareUpdateItemModuleController = [(HUServiceDetailsViewController *)self softwareUpdateItemModuleController];
  if (softwareUpdateItemModuleController)
  {
    goto LABEL_38;
  }

  detailsItemManager7 = [(HUServiceDetailsViewController *)self detailsItemManager];
  softwareUpdateItemModule = [detailsItemManager7 softwareUpdateItemModule];

  if (softwareUpdateItemModule)
  {
    v49 = [HUSoftwareUpdateItemModuleController alloc];
    softwareUpdateItemModuleController = [(HUServiceDetailsViewController *)self detailsItemManager];
    softwareUpdateItemModule2 = [softwareUpdateItemModuleController softwareUpdateItemModule];
    v51 = [(HUSoftwareUpdateItemModuleController *)v49 initWithModule:softwareUpdateItemModule2 delegate:self expandableTextViewCellDelegate:self];
    [(HUServiceDetailsViewController *)self setSoftwareUpdateItemModuleController:v51];

LABEL_38:
  }

  softwareUpdateItemModuleController2 = [(HUServiceDetailsViewController *)self softwareUpdateItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:softwareUpdateItemModuleController2];

  detailsItemManager8 = [(HUServiceDetailsViewController *)self detailsItemManager];
  valveEditorItemModule = [detailsItemManager8 valveEditorItemModule];

  if (valveEditorItemModule)
  {
    valveEditorItemModuleController = [(HUServiceDetailsViewController *)self valveEditorItemModuleController];

    if (!valveEditorItemModuleController)
    {
      v56 = [[HUChildServiceItemModuleController alloc] initWithModule:valveEditorItemModule delegate:self];
      [(HUServiceDetailsViewController *)self setValveEditorItemModuleController:v56];
    }
  }

  valveEditorItemModuleController2 = [(HUServiceDetailsViewController *)self valveEditorItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:valveEditorItemModuleController2];

  detailsItemManager9 = [(HUServiceDetailsViewController *)self detailsItemManager];
  accessoryServicesEditorItemModule = [detailsItemManager9 accessoryServicesEditorItemModule];

  if (accessoryServicesEditorItemModule)
  {
    accessoryServicesEditorItemModuleController = [(HUServiceDetailsViewController *)self accessoryServicesEditorItemModuleController];
    if (!accessoryServicesEditorItemModuleController)
    {
      if (![(HUServiceDetailsViewController *)self isMultiServiceAccessory])
      {
        goto LABEL_47;
      }

      accessoryServicesEditorItemModuleController = [[HUChildServiceItemModuleController alloc] initWithModule:accessoryServicesEditorItemModule delegate:self];
      [(HUServiceDetailsViewController *)self setAccessoryServicesEditorItemModuleController:accessoryServicesEditorItemModuleController];
    }
  }

LABEL_47:
  accessoryServicesEditorItemModuleController2 = [(HUServiceDetailsViewController *)self accessoryServicesEditorItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:accessoryServicesEditorItemModuleController2];

  televisionSettingsItemModuleController = [(HUServiceDetailsViewController *)self televisionSettingsItemModuleController];
  if (televisionSettingsItemModuleController)
  {
LABEL_50:

    goto LABEL_51;
  }

  detailsItemManager10 = [(HUServiceDetailsViewController *)self detailsItemManager];
  televisionSettingsItemModule = [detailsItemManager10 televisionSettingsItemModule];

  if (televisionSettingsItemModule)
  {
    v65 = [HUTelevisionSettingsItemModuleController alloc];
    televisionSettingsItemModuleController = [(HUServiceDetailsViewController *)self detailsItemManager];
    televisionSettingsItemModule2 = [televisionSettingsItemModuleController televisionSettingsItemModule];
    v67 = [(HUItemModuleController *)v65 initWithModule:televisionSettingsItemModule2];
    [(HUServiceDetailsViewController *)self setTelevisionSettingsItemModuleController:v67];

    goto LABEL_50;
  }

LABEL_51:
  televisionSettingsItemModuleController2 = [(HUServiceDetailsViewController *)self televisionSettingsItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:televisionSettingsItemModuleController2];

  detailsItemManager11 = [(HUServiceDetailsViewController *)self detailsItemManager];
  inputSourceItemModule = [detailsItemManager11 inputSourceItemModule];

  if (inputSourceItemModule)
  {
    inputSourceItemModuleController = [(HUServiceDetailsViewController *)self inputSourceItemModuleController];
    if (!inputSourceItemModuleController || (v72 = inputSourceItemModuleController, -[HUServiceDetailsViewController inputSourceItemModuleController](self, "inputSourceItemModuleController"), v73 = objc_claimAutoreleasedReturnValue(), [v73 module], v74 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v74, "isEqual:", inputSourceItemModule), v74, v73, v72, (v75 & 1) == 0))
    {
      v76 = [[HUChildServiceItemModuleController alloc] initWithModule:inputSourceItemModule delegate:self];
      [(HUServiceDetailsViewController *)self setInputSourceItemModuleController:v76];
    }
  }

  inputSourceItemModuleController2 = [(HUServiceDetailsViewController *)self inputSourceItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:inputSourceItemModuleController2];

  return v3;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  headerItem = [detailsItemManager headerItem];
  v8 = [itemCopy isEqual:headerItem];

  if (v8)
  {
    goto LABEL_8;
  }

  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  symptomsTitleItem = [detailsItemManager2 symptomsTitleItem];
  v11 = [itemCopy isEqual:symptomsTitleItem];

  if (v11)
  {
    goto LABEL_8;
  }

  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  symptomsWiFiPickerItem = [detailsItemManager3 symptomsWiFiPickerItem];
  if ([itemCopy isEqual:symptomsWiFiPickerItem])
  {
    goto LABEL_16;
  }

  detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  symptomsLearnMoreItem = [detailsItemManager4 symptomsLearnMoreItem];
  v16 = [itemCopy isEqual:symptomsLearnMoreItem];

  if (v16)
  {
    goto LABEL_8;
  }

  detailsItemManager5 = [(HUServiceDetailsViewController *)self detailsItemManager];
  splitMediaAccountTitleItem = [detailsItemManager5 splitMediaAccountTitleItem];
  v21 = [itemCopy isEqual:splitMediaAccountTitleItem];

  if (v21)
  {
    goto LABEL_8;
  }

  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  symptomsWiFiPickerItem = [detailsItemManager3 splitMediaAccountUseDefaultAccountItem];
  if ([itemCopy isEqual:symptomsWiFiPickerItem])
  {
    goto LABEL_16;
  }

  detailsItemManager6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  splitMediaAccountSignoutAccountItem = [detailsItemManager6 splitMediaAccountSignoutAccountItem];
  v24 = [itemCopy isEqual:splitMediaAccountSignoutAccountItem];

  if (v24)
  {
LABEL_8:
    v17 = objc_opt_class();
    goto LABEL_9;
  }

  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  symptomsWiFiPickerItem = [detailsItemManager3 favoriteItem];
  if ([itemCopy isEqual:symptomsWiFiPickerItem])
  {
LABEL_16:

    goto LABEL_8;
  }

  detailsItemManager7 = [(HUServiceDetailsViewController *)self detailsItemManager];
  showInHomeDashboardItem = [detailsItemManager7 showInHomeDashboardItem];
  v27 = [itemCopy isEqual:showInHomeDashboardItem];

  if (v27)
  {
    goto LABEL_8;
  }

  detailsItemManager8 = [(HUServiceDetailsViewController *)self detailsItemManager];
  pairingModeItem = [detailsItemManager8 pairingModeItem];
  v30 = [itemCopy isEqual:pairingModeItem];

  if (v30)
  {
    goto LABEL_8;
  }

  detailsItemManager9 = [(HUServiceDetailsViewController *)self detailsItemManager];
  exportDiagnosticsItem = [detailsItemManager9 exportDiagnosticsItem];
  v33 = [itemCopy isEqual:exportDiagnosticsItem];

  if (v33)
  {
    goto LABEL_8;
  }

  detailsItemManager10 = [(HUServiceDetailsViewController *)self detailsItemManager];
  removeFromGroupItem = [detailsItemManager10 removeFromGroupItem];
  v36 = [itemCopy isEqual:removeFromGroupItem];

  if (v36)
  {
    goto LABEL_8;
  }

  detailsItemManager11 = [(HUServiceDetailsViewController *)self detailsItemManager];
  removeItem = [detailsItemManager11 removeItem];
  v39 = [itemCopy isEqual:removeItem];

  if (v39)
  {
    goto LABEL_8;
  }

  detailsItemManager12 = [(HUServiceDetailsViewController *)self detailsItemManager];
  resetItem = [detailsItemManager12 resetItem];
  v42 = [itemCopy isEqual:resetItem];

  if (v42)
  {
    goto LABEL_8;
  }

  detailsItemManager13 = [(HUServiceDetailsViewController *)self detailsItemManager];
  restartItem = [detailsItemManager13 restartItem];
  v45 = [itemCopy isEqual:restartItem];

  if (v45)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    detailsItemManager14 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v48 = [detailsItemManager14 isCharacteristicStateItem:itemCopy];

    if (v48)
    {
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
    symptomsWiFiPickerItem = [detailsItemManager3 addGroupItem];
    if ([itemCopy isEqual:symptomsWiFiPickerItem])
    {
      goto LABEL_16;
    }

    detailsItemManager15 = [(HUServiceDetailsViewController *)self detailsItemManager];
    createNewRoomItem = [detailsItemManager15 createNewRoomItem];
    if ([itemCopy isEqual:createNewRoomItem])
    {
      goto LABEL_44;
    }

    detailsItemManager16 = [(HUServiceDetailsViewController *)self detailsItemManager];
    separateTileItem = [detailsItemManager16 separateTileItem];
    if (([itemCopy isEqual:separateTileItem] & 1) == 0)
    {
      detailsItemManager17 = [(HUServiceDetailsViewController *)self detailsItemManager];
      collectDiagnosticsItem = [detailsItemManager17 collectDiagnosticsItem];
      if (([itemCopy isEqual:collectDiagnosticsItem] & 1) == 0)
      {
        detailsItemManager18 = [(HUServiceDetailsViewController *)self detailsItemManager];
        identifyHomePodItem = [detailsItemManager18 identifyHomePodItem];
        v69 = [itemCopy isEqual:identifyHomePodItem];

        if (v69)
        {
          goto LABEL_8;
        }

        detailsItemManager19 = [(HUServiceDetailsViewController *)self detailsItemManager];
        roomItem = [detailsItemManager19 roomItem];
        v57 = [itemCopy isEqual:roomItem];

        if (v57)
        {
          [MEMORY[0x277D14CE8] useMacIdiom];
          goto LABEL_8;
        }

        detailsItemManager20 = [(HUServiceDetailsViewController *)self detailsItemManager];
        roomListItem = [detailsItemManager20 roomListItem];
        v60 = [itemCopy isEqual:roomListItem];

        if (v60)
        {
          goto LABEL_8;
        }

        detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
        symptomsWiFiPickerItem = [detailsItemManager3 cameraStatusLightItem];
        if ([itemCopy isEqual:symptomsWiFiPickerItem])
        {
          goto LABEL_16;
        }

        detailsItemManager15 = [(HUServiceDetailsViewController *)self detailsItemManager];
        createNewRoomItem = [detailsItemManager15 cameraNightModeItem];
        if (([itemCopy isEqual:createNewRoomItem] & 1) == 0)
        {
          detailsItemManager21 = [(HUServiceDetailsViewController *)self detailsItemManager];
          cameraDoorbellChimeMuteItem = [detailsItemManager21 cameraDoorbellChimeMuteItem];
          v63 = [itemCopy isEqual:cameraDoorbellChimeMuteItem];

          if ((v63 & 1) == 0)
          {
            detailsItemManager22 = [(HUServiceDetailsViewController *)self detailsItemManager];
            lockAddHomeKeyToWalletItem = [detailsItemManager22 lockAddHomeKeyToWalletItem];
            v66 = [itemCopy isEqual:lockAddHomeKeyToWalletItem];

            if (!v66)
            {
              detailsItemManager23 = [(HUServiceDetailsViewController *)self detailsItemManager];
              [detailsItemManager23 supportsWiFiStrengthDisplay:itemCopy];
            }
          }

          goto LABEL_8;
        }

        goto LABEL_44;
      }
    }

LABEL_44:
    goto LABEL_16;
  }

  controlPanelController = [(HUServiceDetailsViewController *)self controlPanelController];
  v17 = [controlPanelController cellClassForItem:itemCopy];

LABEL_9:

  return v17;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HUServiceDetailsViewController *)self _setupProgrammableSwitchCell:cellCopy forItem:itemCopy];
    }
  }

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  splitMediaAccountTitleItem = [detailsItemManager splitMediaAccountTitleItem];
  v11 = splitMediaAccountTitleItem;
  if (splitMediaAccountTitleItem == itemCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    v13 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    detailsItemManager = v14;

    v15 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76988] traits:32770];
    [detailsItemManager setTitleFont:v15];

    [detailsItemManager setMaxNumberOfTitleLines:0];
    v16 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76968] traits:0x8000];
    [detailsItemManager setDescriptionFont:v16];

    [detailsItemManager setMaxNumberOfDescriptionLines:0];
    [detailsItemManager setHideIcon:1];
    [detailsItemManager setSelectionStyle:0];
  }

  else
  {
  }

LABEL_12:
  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  symptomsTitleItem = [detailsItemManager2 symptomsTitleItem];
  v19 = symptomsTitleItem;
  if (symptomsTitleItem == itemCopy)
  {
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    objc_opt_class();
    v21 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    detailsItemManager2 = v22;

    v23 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76918] traits:32770];
    [detailsItemManager2 setTitleFont:v23];

    [detailsItemManager2 setMaxNumberOfTitleLines:0];
    v24 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769D0] traits:0x8000];
    [detailsItemManager2 setDescriptionFont:v24];

    [detailsItemManager2 setMaxNumberOfDescriptionLines:0];
    [detailsItemManager2 setHideIcon:1];
    [detailsItemManager2 setSelectionStyle:0];
    [detailsItemManager2 setTitleLabelBottomPadding:4.0];
    [detailsItemManager2 setContainerViewBottomPadding:4.0];
  }

  else
  {
  }

LABEL_20:
  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  symptomsWiFiPickerItem = [detailsItemManager3 symptomsWiFiPickerItem];
  if (symptomsWiFiPickerItem == itemCopy)
  {
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();

    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    objc_opt_class();
    v28 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    symptomsWiFiPickerItem = v29;

    [symptomsWiFiPickerItem setAccessoryType:1];
    detailsItemManager3 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76918] traits:0x8000];
    [symptomsWiFiPickerItem setFont:detailsItemManager3];
  }

LABEL_27:
  detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  symptomsLearnMoreItem = [detailsItemManager4 symptomsLearnMoreItem];
  if (symptomsLearnMoreItem != itemCopy)
  {
LABEL_33:

    goto LABEL_34;
  }

  objc_opt_class();
  v32 = objc_opt_isKindOfClass();

  if (v32)
  {
    objc_opt_class();
    v33 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;

    detailsItemManager4 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.right"];
    symptomsLearnMoreItem = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:detailsItemManager4];
    systemMidGrayColor = [MEMORY[0x277D75348] systemMidGrayColor];
    [symptomsLearnMoreItem setTintColor:systemMidGrayColor];

    [v35 setAccessoryView:symptomsLearnMoreItem];
    v37 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76918] traits:0x8000];
    [v35 setFont:v37];

    goto LABEL_33;
  }

LABEL_34:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    detailsItemManager5 = [(HUServiceDetailsViewController *)self detailsItemManager];
    roomItem = [detailsItemManager5 roomItem];
    v40 = [itemCopy isEqual:roomItem];

    if (v40)
    {
      objc_opt_class();
      v106 = cellCopy;
      v41 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;

      v105 = v43;
      [v43 setItem:itemCopy];
      detailsItemManager6 = [(HUServiceDetailsViewController *)self detailsItemManager];
      serviceLikeBuilder = [detailsItemManager6 serviceLikeBuilder];
      room = [serviceLikeBuilder room];
      v46Room = [room room];
      uniqueIdentifier = [v46Room uniqueIdentifier];
      v49 = uniqueIdentifier;
      if (uniqueIdentifier)
      {
        uniqueIdentifier2 = uniqueIdentifier;
      }

      else
      {
        item = [(HUServiceDetailsViewController *)self item];
        accessories = [item accessories];
        anyObject = [accessories anyObject];
        room2 = [anyObject room];
        uniqueIdentifier2 = [room2 uniqueIdentifier];
      }

      detailsItemManager7 = [(HUServiceDetailsViewController *)self detailsItemManager];
      orderedRoomSectionItems = [detailsItemManager7 orderedRoomSectionItems];
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __62__HUServiceDetailsViewController_setupCell_forItem_indexPath___block_invoke;
      v107[3] = &unk_277DB85D8;
      v108 = uniqueIdentifier2;
      v55 = uniqueIdentifier2;
      v56 = [orderedRoomSectionItems na_firstObjectPassingTest:v107];

      detailsItemManager8 = [(HUServiceDetailsViewController *)self detailsItemManager];
      orderedRoomSectionItems2 = [detailsItemManager8 orderedRoomSectionItems];
      v59 = [orderedRoomSectionItems2 copy];
      v60 = [(HUServiceDetailsViewController *)self _createMenuWithValues:v59 cell:v105 currentItem:v56];
      button = [v105 button];
      [button setMenu:v60];

      cellCopy = v106;
    }
  }

  detailsItemManager9 = [(HUServiceDetailsViewController *)self detailsItemManager];
  roomListItem = [detailsItemManager9 roomListItem];

  if (roomListItem == itemCopy)
  {
    objc_opt_class();
    v93 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v94 = v93;
    }

    else
    {
      v94 = 0;
    }

    v73 = v94;

    [v73 setDelegate:self];
    goto LABEL_83;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v64 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v66 = v65;

    traitCollection = [(HUServiceDetailsViewController *)self traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [v66 _setCornerRadius:?];

    textViewDelegate = [(HUServiceDetailsViewController *)self textViewDelegate];
    messageTextView = [v66 messageTextView];
    [messageTextView setDelegate:textViewDelegate];

    actionButton = [v66 actionButton];
    [actionButton removeTarget:self action:sel_didSelectHeaderWarningAction_ forControlEvents:64];

    actionButton2 = [v66 actionButton];

    [actionButton2 addTarget:self action:sel_didSelectHeaderWarningAction_ forControlEvents:64];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      controlPanelController = [(HUServiceDetailsViewController *)self controlPanelController];
      [controlPanelController setupCell:cellCopy forItem:itemCopy];

      objc_opt_class();
      v73 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v74 = v73;
      }

      else
      {
        v74 = 0;
      }

      v75 = v74;

      if (v75)
      {
        expandedControlPanelItems = [(HUServiceDetailsViewController *)self expandedControlPanelItems];
        [v75 setWheelViewVisible:{objc_msgSend(expandedControlPanelItems, "containsObject:", itemCopy)}];
      }

      else
      {
        v73 = 0;
      }

LABEL_83:

      goto LABEL_84;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v77 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v78 = v77;
      }

      else
      {
        v78 = 0;
      }

      v79 = v78;

      [v79 setValueColorFollowsTintColor:{-[HUServiceDetailsViewController _shouldFollowTitleValueTintColorforItem:](self, "_shouldFollowTitleValueTintColorforItem:", itemCopy)}];
      detailsItemManager10 = [(HUServiceDetailsViewController *)self detailsItemManager];
      accessoryInfoItemProvider = [detailsItemManager10 accessoryInfoItemProvider];
      items = [accessoryInfoItemProvider items];
      [v79 setAllowCopyValueToPasteboard:{objc_msgSend(items, "containsObject:", itemCopy)}];
    }

    v73 = cellCopy;
    detailsItemManager11 = [(HUServiceDetailsViewController *)self detailsItemManager];
    pairingModeItem = [detailsItemManager11 pairingModeItem];
    v85 = [itemCopy isEqual:pairingModeItem];

    if (v85)
    {
      [v73 setDestructive:0];
    }

    detailsItemManager12 = [(HUServiceDetailsViewController *)self detailsItemManager];
    removeItem = [detailsItemManager12 removeItem];
    v88 = [itemCopy isEqual:removeItem];

    if (v88)
    {
      [v73 setDestructive:1];
    }

    detailsItemManager13 = [(HUServiceDetailsViewController *)self detailsItemManager];
    resetItem = [detailsItemManager13 resetItem];
    if ([itemCopy isEqual:resetItem])
    {
      item2 = [(HUServiceDetailsViewController *)self item];
      objc_opt_class();
      v92 = objc_opt_isKindOfClass();

      if (v92)
      {
        [v73 setDestructive:0];
      }
    }

    else
    {
    }

    detailsItemManager14 = [(HUServiceDetailsViewController *)self detailsItemManager];
    restartItem = [detailsItemManager14 restartItem];
    if ([itemCopy isEqual:restartItem])
    {
      item3 = [(HUServiceDetailsViewController *)self item];
      objc_opt_class();
      v98 = objc_opt_isKindOfClass();

      if (v98)
      {
        [v73 setDestructive:0];
      }
    }

    else
    {
    }

    detailsItemManager15 = [(HUServiceDetailsViewController *)self detailsItemManager];
    exportDiagnosticsItem = [detailsItemManager15 exportDiagnosticsItem];
    if ([itemCopy isEqual:exportDiagnosticsItem])
    {
      item4 = [(HUServiceDetailsViewController *)self item];
      objc_opt_class();
      v102 = objc_opt_isKindOfClass();

      if (v102)
      {
        [v73 setDestructive:0];
      }
    }

    else
    {
    }

    [v73 setAccessoryType:{-[HUServiceDetailsViewController _shouldShowDetailDisclosureForItem:](self, "_shouldShowDetailDisclosureForItem:", itemCopy)}];
    [v73 setHideIcon:1];
    goto LABEL_83;
  }

LABEL_84:
}

uint64_t __62__HUServiceDetailsViewController_setupCell_forItem_indexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14090]];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (BOOL)_shouldFollowTitleValueTintColorforItem:(id)item
{
  itemCopy = item;
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  accessoryInfoItemProvider = [detailsItemManager accessoryInfoItemProvider];
  items = [accessoryInfoItemProvider items];
  v8 = [items containsObject:itemCopy];

  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v10 = [detailsItemManager2 isCharacteristicStateItem:itemCopy];

  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  homeTheaterAudioOutputItem = [detailsItemManager3 homeTheaterAudioOutputItem];

  detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  managedConfigurationProfilesItem = [detailsItemManager4 managedConfigurationProfilesItem];

  v15 = 0;
  if ((v8 & 1) == 0 && (v10 & 1) == 0)
  {
    v15 = homeTheaterAudioOutputItem != itemCopy && managedConfigurationProfilesItem != itemCopy;
  }

  return v15;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  v96.receiver = self;
  v96.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v96 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HUServiceDetailsViewController *)self _setupProgrammableSwitchCell:cellCopy forItem:itemCopy];
      goto LABEL_20;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      controlPanelController = [(HUServiceDetailsViewController *)self controlPanelController];
      [controlPanelController updateCell:cellCopy forItem:itemCopy animated:animatedCopy];

      goto LABEL_20;
    }
  }

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  favoriteItem = [detailsItemManager favoriteItem];
  if ([itemCopy isEqual:favoriteItem])
  {
    goto LABEL_14;
  }

  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  showInHomeDashboardItem = [detailsItemManager2 showInHomeDashboardItem];
  if ([itemCopy isEqual:showInHomeDashboardItem])
  {
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v91 = pathCopy;
  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  cameraStatusLightItem = [detailsItemManager3 cameraStatusLightItem];
  if ([itemCopy isEqual:cameraStatusLightItem])
  {
LABEL_12:

    pathCopy = v91;
    goto LABEL_13;
  }

  detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  cameraNightModeItem = [detailsItemManager4 cameraNightModeItem];
  if ([itemCopy isEqual:cameraNightModeItem])
  {

    goto LABEL_12;
  }

  detailsItemManager5 = [(HUServiceDetailsViewController *)self detailsItemManager];
  cameraDoorbellChimeMuteItem = [detailsItemManager5 cameraDoorbellChimeMuteItem];
  v87 = [itemCopy isEqual:cameraDoorbellChimeMuteItem];

  pathCopy = v91;
  if ((v87 & 1) == 0)
  {
    detailsItemManager6 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v25 = [detailsItemManager6 isCharacteristicStateItem:itemCopy];

    if (v25)
    {
      latestResults = [itemCopy latestResults];
      v27 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

      itemManager = [(HUItemTableViewController *)self itemManager];
      v29 = [itemManager displayedItemsInSection:{objc_msgSend(v91, "section")}];
      v30 = [v29 count];

      if (v30 >= 2)
      {
        latestResults2 = [itemCopy latestResults];
        v32 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E80]];
        v33 = v32;
        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = v27;
        }

        v35 = v34;

        v27 = v35;
      }

      v36 = cellCopy;
      [v36 setTitleText:v27];
      latestResults3 = [itemCopy latestResults];
      v38 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      v39 = [v38 stringWithAttributes:MEMORY[0x277CBEC10]];
      string = [v39 string];
      [v36 setValueText:string];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSLog(&cfstr_WrongCellClass.isa);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = cellCopy;
        latestResults4 = [itemCopy latestResults];
        v42 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
        textLabel = [v27 textLabel];
        [textLabel setText:v42];

        latestResults5 = [itemCopy latestResults];
        v45 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v27 setAccessibilityIdentifier:v45];

        [(HUServiceDetailsViewController *)self _updateCheckedStateForAssociatedServiceTypeCell:v27 item:itemCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v90 = cellCopy;
          detailsItemManager7 = [(HUServiceDetailsViewController *)self detailsItemManager];
          serviceLikeBuilder = [detailsItemManager7 serviceLikeBuilder];
          room = [serviceLikeBuilder room];
          v48Room = [room room];
          uniqueIdentifier = [v48Room uniqueIdentifier];
          v51 = uniqueIdentifier;
          if (uniqueIdentifier)
          {
            v52 = uniqueIdentifier;
          }

          else
          {
            item = [(HUServiceDetailsViewController *)self item];
            accessories = [item accessories];
            anyObject = [accessories anyObject];
            room2 = [anyObject room];
            [room2 uniqueIdentifier];
            v65 = v88 = detailsItemManager7;

            v52 = v65;
            detailsItemManager7 = v88;

            pathCopy = v91;
          }

          detailsItemManager8 = [(HUServiceDetailsViewController *)self detailsItemManager];
          orderedRoomSectionItems = [detailsItemManager8 orderedRoomSectionItems];
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __72__HUServiceDetailsViewController_updateCell_forItem_indexPath_animated___block_invoke;
          v94[3] = &unk_277DBEDD8;
          v68 = v52;
          v95 = v68;
          v69 = [orderedRoomSectionItems indexOfObjectPassingTest:v94];

          if ((v69 & 0x8000000000000000) == 0 && v69 < [(HUServiceDetailsViewController *)self numberOfValuesForPickerViewCell:v90])
          {
            [v90 setSelectedIndex:v69 animated:0];
          }

          goto LABEL_20;
        }

        detailsItemManager9 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v54 = [detailsItemManager9 canToggleAccessoryInfoItem:itemCopy];

        if (v54)
        {
          [cellCopy setSelectionStyle:0];
          goto LABEL_20;
        }

        detailsItemManager10 = [(HUServiceDetailsViewController *)self detailsItemManager];
        lockAddHomeKeyToWalletItem = [detailsItemManager10 lockAddHomeKeyToWalletItem];
        v57 = [itemCopy isEqual:lockAddHomeKeyToWalletItem];

        if (v57)
        {
          valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
          latestResults6 = [itemCopy latestResults];
          v59 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
          [valueCellConfiguration setText:v59];

          hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
          textProperties = [valueCellConfiguration textProperties];
          [textProperties setColor:hf_keyColor];

          hu_walletAppIconImage = [MEMORY[0x277D755B8] hu_walletAppIconImage];
          [valueCellConfiguration setImage:hu_walletAppIconImage];

          [cellCopy setContentConfiguration:valueCellConfiguration];
          goto LABEL_19;
        }

        detailsItemManager11 = [(HUServiceDetailsViewController *)self detailsItemManager];
        exportDiagnosticsItem = [detailsItemManager11 exportDiagnosticsItem];
        v72 = [itemCopy isEqual:exportDiagnosticsItem];

        if (!v72)
        {
          goto LABEL_20;
        }

        objc_opt_class();
        v73 = cellCopy;
        if (objc_opt_isKindOfClass())
        {
          v74 = v73;
        }

        else
        {
          v74 = 0;
        }

        v27 = v74;

        latestResults7 = [itemCopy latestResults];
        v76 = [latestResults7 objectForKeyedSubscript:*MEMORY[0x277D13D30]];

        if (v76)
        {
          v77 = [v76 isFinished] ^ 1;
        }

        else
        {
          v77 = 0;
        }

        objc_opt_class();
        accessoryView = [v27 accessoryView];
        if (objc_opt_isKindOfClass())
        {
          v79 = accessoryView;
        }

        else
        {
          v79 = 0;
        }

        v80 = v79;

        if (v77)
        {
          if (v80)
          {
            v81 = accessoryView;

            [v27 setDisabled:1];
            [v81 startAnimating];
            [(HUServiceDetailsViewController *)self _registerButtonActionHandler:v76 item:itemCopy];
            v80 = v81;
          }

          else
          {
            v92[0] = MEMORY[0x277D85DD0];
            v92[1] = 3221225472;
            v92[2] = __72__HUServiceDetailsViewController_updateCell_forItem_indexPath_animated___block_invoke_2;
            v92[3] = &unk_277DBEE00;
            v82 = v27;
            v93 = v82;
            v80 = __72__HUServiceDetailsViewController_updateCell_forItem_indexPath_animated___block_invoke_2(v92);
            [v82 setDisabled:1];
            [v80 startAnimating];
            [(HUServiceDetailsViewController *)self _registerButtonActionHandler:v76 item:itemCopy];
          }
        }

        else
        {
          [v27 setDisabled:0];
          [v80 stopAnimating];
        }
      }
    }

    goto LABEL_20;
  }

LABEL_15:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_WrongCellClass.isa);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = cellCopy;
    [v21 setDelegate:self];
    valueCellConfiguration = [itemCopy latestResults];
    v23 = [valueCellConfiguration objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v21 setAccessibilityIdentifier:v23];

LABEL_19:
  }

LABEL_20:
}

uint64_t __72__HUServiceDetailsViewController_updateCell_forItem_indexPath_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14090]];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

id __72__HUServiceDetailsViewController_updateCell_forItem_indexPath_animated___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [*(a1 + 32) setAccessoryView:v2];

  return v2;
}

- (void)_registerButtonActionHandler:(id)handler item:(id)item
{
  handlerCopy = handler;
  itemCopy = item;
  registeredButtonFutures = [(HUServiceDetailsViewController *)self registeredButtonFutures];
  v10 = [registeredButtonFutures containsObject:handlerCopy];

  if ((v10 & 1) == 0)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__HUServiceDetailsViewController__registerButtonActionHandler_item___block_invoke;
    aBlock[3] = &unk_277DBEE28;
    objc_copyWeak(v25, &location);
    v24 = itemCopy;
    v25[1] = a2;
    v11 = _Block_copy(aBlock);
    objc_initWeak(&from, handlerCopy);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __68__HUServiceDetailsViewController__registerButtonActionHandler_item___block_invoke_2;
    v18 = &unk_277DBEE50;
    objc_copyWeak(&v20, &location);
    v12 = v11;
    v19 = v12;
    objc_copyWeak(&v21, &from);
    v13 = [handlerCopy addCompletionBlock:&v15];
    v14 = [(HUServiceDetailsViewController *)self registeredButtonFutures:v15];
    [v14 na_safeAddObject:handlerCopy];

    v12[2](v12);
    objc_destroyWeak(&v21);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&from);

    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
  }
}

void __68__HUServiceDetailsViewController__registerButtonActionHandler_item___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained detailsItemManager];
  v4 = MEMORY[0x277D14788];
  v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  v6 = [v4 requestToUpdateItems:v5 senderSelector:*(a1 + 48)];
  v7 = [v3 performItemUpdateRequest:v6];

  v8 = [WeakRetained detailsItemManager];
  v10[0] = *(a1 + 32);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v8 reloadUIRepresentationForItems:v9 withAnimation:0];
}

void __68__HUServiceDetailsViewController__registerButtonActionHandler_item___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v8)
  {
    v5 = [MEMORY[0x277D14640] sharedHandler];
    [v5 handleError:v8];
  }

  (*(*(a1 + 32) + 16))();
  v6 = [WeakRetained registeredButtonFutures];
  v7 = objc_loadWeakRetained((a1 + 48));
  [v6 removeObject:v7];
}

- (id)_createMenuWithValues:(id)values cell:(id)cell currentItem:(id)item
{
  valuesCopy = values;
  cellCopy = cell;
  itemCopy = item;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __73__HUServiceDetailsViewController__createMenuWithValues_cell_currentItem___block_invoke;
  v21 = &unk_277DBEEA0;
  objc_copyWeak(&v26, &location);
  v12 = valuesCopy;
  v22 = v12;
  v13 = cellCopy;
  v23 = v13;
  v14 = itemCopy;
  v24 = v14;
  v15 = v11;
  v25 = v15;
  [v12 enumerateObjectsUsingBlock:&v18];
  v16 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 children:{v15, v18, v19, v20, v21}];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v16;
}

void __73__HUServiceDetailsViewController__createMenuWithValues_cell_currentItem___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = [v5 latestResults];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v9 = MEMORY[0x277D750C8];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __73__HUServiceDetailsViewController__createMenuWithValues_cell_currentItem___block_invoke_2;
  v15 = &unk_277DBEE78;
  v10 = *(a1 + 32);
  v19 = a3;
  v16 = v10;
  v17 = WeakRetained;
  v18 = *(a1 + 40);
  v11 = [v9 actionWithTitle:v8 image:0 identifier:0 handler:&v12];
  [v11 setState:{objc_msgSend(*(a1 + 32), "indexOfObject:", *(a1 + 48), v12, v13, v14, v15) == a3}];
  [*(a1 + 56) addObject:v11];
}

void __73__HUServiceDetailsViewController__createMenuWithValues_cell_currentItem___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 56)];
  [*(a1 + 40) _didSelectRoomItem:v4];
  v2 = [*(a1 + 40) _createMenuWithValues:*(a1 + 32) cell:*(a1 + 48) currentItem:v4];
  v3 = [*(a1 + 48) button];
  [v3 setMenu:v2];
}

- (void)_updateName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    serviceLikeBuilder = [detailsItemManager serviceLikeBuilder];
    name = [serviceLikeBuilder name];
    v7 = [nameCopy isEqualToString:name];

    if ((v7 & 1) == 0)
    {
      [(HUServiceDetailsViewController *)self setTitle:nameCopy];
      detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
      serviceLikeBuilder2 = [detailsItemManager2 serviceLikeBuilder];
      [serviceLikeBuilder2 setName:nameCopy];

      v10 = objc_alloc_init(MEMORY[0x277D14D40]);
      v11 = [MEMORY[0x277D14B50] policyWithDecision:0];
      [v10 setReadPolicy:v11];

      detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v13 = MEMORY[0x277CBEB98];
      WeakRetained = objc_loadWeakRetained(&self->_detailsItemManager);
      headerItem = [WeakRetained headerItem];
      v16 = objc_loadWeakRetained(&self->_detailsItemManager);
      sourceItem = [v16 sourceItem];
      v18 = [v13 setWithObjects:{headerItem, sourceItem, 0}];
      v19 = [detailsItemManager3 _updateResultsForItems:v18 context:v10];
    }
  }
}

- (void)textDidChange:(id)change forTextField:(id)field item:(id)item
{
  changeCopy = change;
  itemCopy = item;
  objc_opt_class();
  v8 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10 || ([v10 service], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hf_isChildService"), v11, (v12 & 1) == 0))
  {
    [(HUServiceDetailsViewController *)self _updateName:changeCopy];
  }
}

- (void)textFieldDidEndEditing:(id)editing item:(id)item
{
  editingCopy = editing;
  itemCopy = item;
  objc_initWeak(&location, self);
  _commitBuilder = [(HUServiceDetailsViewController *)self _commitBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HUServiceDetailsViewController_textFieldDidEndEditing_item___block_invoke;
  v10[3] = &unk_277DB8CA8;
  objc_copyWeak(&v11, &location);
  v9 = [_commitBuilder addCompletionBlock:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __62__HUServiceDetailsViewController_textFieldDidEndEditing_item___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (([a3 hf_isHomeKitNamingError] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_alloc_init(MEMORY[0x277D14D40]);
    v5 = [MEMORY[0x277D14B50] policyWithDecision:0];
    [v4 setReadPolicy:v5];

    v6 = [WeakRetained detailsItemManager];
    v7 = MEMORY[0x277CBEB98];
    v8 = [WeakRetained detailsItemManager];
    v9 = [v8 headerItem];
    v10 = [WeakRetained detailsItemManager];
    v11 = [v10 sourceItem];
    v12 = [WeakRetained detailsItemManager];
    v13 = [v12 nameModule];
    v14 = [v13 nameAndIconItem];
    v15 = [v7 setWithObjects:{v9, v11, v14, 0}];
    v16 = [v6 _updateResultsForItems:v15 context:v4];
  }
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)section
{
  v14.receiver = self;
  v14.super_class = HUServiceDetailsViewController;
  v5 = [(HUItemTableViewController *)&v14 shouldHideHeaderAboveSection:?];
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [detailsItemManager displayedSectionIdentifierForSectionIndex:section];
  v8 = v5 | [v7 isEqualToString:@"HUServiceDetailsHeaderSectionIdentifier"];

  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v10 = [detailsItemManager2 displayedSectionIdentifierForSectionIndex:section];
  LODWORD(v7) = [v10 isEqualToString:@"HUServiceDetailsFirmwareUpdateSectionPromptIdentifier"];

  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v12 = [detailsItemManager3 displayedSectionIdentifierForSectionIndex:section];
  LODWORD(detailsItemManager2) = v7 | [v12 isEqualToString:@"HUServiceDetailsFirmwareUpdateAppStoreSectionIdentifier"];

  return v8 | detailsItemManager2;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)section
{
  v14.receiver = self;
  v14.super_class = HUServiceDetailsViewController;
  v5 = [(HUItemTableViewController *)&v14 shouldHideHeaderAboveSection:?];
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [detailsItemManager displayedSectionIdentifierForSectionIndex:section];
  v8 = v5 | [v7 isEqualToString:@"HUServiceDetailsHeaderSectionIdentifier"];

  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v10 = [detailsItemManager2 displayedSectionIdentifierForSectionIndex:section];
  LODWORD(v7) = [v10 isEqualToString:@"HUServiceDetailsFirmwareUpdateSectionPromptIdentifier"];

  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v12 = [detailsItemManager3 displayedSectionIdentifierForSectionIndex:section];
  LODWORD(detailsItemManager2) = v7 | [v12 isEqualToString:@"HUServiceDetailsFirmwareUpdateAppStoreSectionIdentifier"];

  return v8 | detailsItemManager2;
}

- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = HUServiceDetailsViewController;
  cellCopy = cell;
  LOBYTE(path) = [(HUItemTableViewController *)&v8 shouldHideSeparatorsForCell:cellCopy indexPath:path];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (path | isKindOfClass) & 1;
}

- (unint64_t)automaticDisablingReasonsForItem:(id)item
{
  v12.receiver = self;
  v12.super_class = HUServiceDetailsViewController;
  itemCopy = item;
  v5 = [(HUItemTableViewController *)&v12 automaticDisablingReasonsForItem:itemCopy];
  v6 = [(HUServiceDetailsViewController *)self detailsItemManager:v12.receiver];
  showContainedItems = [v6 showContainedItems];

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  statusAndNotificationItem = [detailsItemManager statusAndNotificationItem];

  if (showContainedItems == itemCopy || statusAndNotificationItem == itemCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (void)_updateAssociatedServiceTypeCells
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  tableView = [(HUServiceDetailsViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v5 = [indexPathsForVisibleRows countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        itemManager = [(HUItemTableViewController *)self itemManager];
        v11 = [itemManager displayedItemAtIndexPath:v9];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          tableView2 = [(HUServiceDetailsViewController *)self tableView];
          v13 = [tableView2 cellForRowAtIndexPath:v9];
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          [(HUServiceDetailsViewController *)self _updateCheckedStateForAssociatedServiceTypeCell:v15 item:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [indexPathsForVisibleRows countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v13 itemManager:manager didUpdateResultsForItem:itemCopy atIndexPath:path];
  WeakRetained = objc_loadWeakRetained(&self->_detailsItemManager);
  headerItem = [WeakRetained headerItem];

  if (headerItem == itemCopy)
  {
    latestResults = [itemCopy latestResults];
    v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [(HUServiceDetailsViewController *)self setTitle:v12];
  }

  [(HUServiceDetailsViewController *)self _updateControlStatusText];
  [(HUServiceDetailsViewController *)self _updateIconDescriptorAnimated:1];
}

- (BOOL)_isCameraItem
{
  item = [(HUServiceDetailsViewController *)self item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (viewControllerCopy == self)
  {
    v8 = 0;
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  navigationBarTitleView = [(HUServiceDetailsViewController *)self navigationBarTitleView];
  [navigationBarTitleView setHidden:v8 & 1];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  v9 = [detailsItemManager displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([(HUServiceDetailsViewController *)self _allowRowSelectionForItem:v9])
    {
      LOBYTE(v13) = 1;
      goto LABEL_20;
    }

LABEL_17:
    LOBYTE(v13) = 0;
    goto LABEL_20;
  }

  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_17;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allControlViews = [v10 allControlViews];
  allObjects = [allControlViews allObjects];

  v13 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(allObjects);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 canBeHighlighted] && !objc_msgSend(v16, "isDisabled"))
        {
          LOBYTE(v13) = 1;
          goto LABEL_19;
        }
      }

      v13 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

LABEL_20:
  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v310[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v299.receiver = self;
  v299.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v299 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  v9 = [detailsItemManager displayedItemAtIndexPath:pathCopy];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  internalDebuggingItem = [detailsItemManager2 internalDebuggingItem];
  v12 = v9 == internalDebuggingItem;

  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v14 = detailsItemManager3;
  if (v12)
  {
    sourceItemHomeKitObject = [detailsItemManager3 sourceItemHomeKitObject];

    navigationController = [(HUServiceDetailsViewController *)self navigationController];
    v28 = [[HUAccessoryDebugViewController alloc] initWithHomeKitObject:sourceItemHomeKitObject];
    v29 = [navigationController hu_pushPreloadableViewController:v28 animated:1];

    goto LABEL_63;
  }

  audioSettingsItem = [detailsItemManager3 audioSettingsItem];
  v16 = v9 == audioSettingsItem;

  if (v16)
  {
    item = [(HUServiceDetailsViewController *)self item];
    latestResults = [item latestResults];
    v32 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13BD0]];
    if ([v32 conformsToProtocol:&unk_2825BCB38])
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    sourceItemAccessory4 = v33;

    if (![sourceItemAccessory4 hf_showsAudioSettings])
    {
      goto LABEL_165;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_165;
    }

    v35 = objc_alloc(MEMORY[0x277D14830]);
    itemManager = [(HUItemTableViewController *)self itemManager];
    home = [itemManager home];
    v38 = [v35 initWithExistingObject:sourceItemAccessory4 inHome:home];

    v39 = objc_opt_class();
    item2 = [(HUServiceDetailsViewController *)self item];
    if (item2)
    {
      if (objc_opt_isKindOfClass())
      {
        v41 = item2;
      }

      else
      {
        v41 = 0;
      }

      v42 = item2;
      if (v41)
      {
        goto LABEL_25;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v44 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v39, objc_opt_class()}];
    }

    v42 = 0;
LABEL_25:

    v45 = [[HUMediaAccessoryAudioSettingsViewController alloc] initWithMediaSystemBuilder:v38 mediaAccessoryItem:v42];
    [(HUMediaAccessoryAudioSettingsViewController *)v45 setPresentationDelegate:self];
    navigationController2 = [(HUServiceDetailsViewController *)self navigationController];
    v47 = [navigationController2 hu_pushPreloadableViewController:v45 animated:1];

    goto LABEL_165;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_opt_class();
    v18 = v9;
    if (v18)
    {
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v18;
      if (v19)
      {
        goto LABEL_11;
      }

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler2 handleFailureInFunction:v22 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];
    }

    v20 = 0;
LABEL_11:

    v23 = [HUAccessorySettingsDetailsViewControllerFactory viewControllerForGroup:v20];
    navigationController3 = [(HUServiceDetailsViewController *)self navigationController];
    v25 = [navigationController3 hu_pushPreloadableViewController:v23 animated:1];

    goto LABEL_63;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v48 = v9;
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;

    anyObject = objc_opt_new();
    [anyObject addObject:*MEMORY[0x277D13990]];
    [anyObject addObject:*MEMORY[0x277D138C0]];
    [anyObject addObject:*MEMORY[0x277D138C8]];
    [anyObject addObject:*MEMORY[0x277D138B8]];
    settingKeyPath = [v50 settingKeyPath];
    v53 = [anyObject na_safeContainsObject:settingKeyPath];

    if (v53)
    {
      v54 = [HUAccessorySettingsDetailsViewControllerFactory viewControllerForSettingItem:v50];
      navigationController4 = [(HUServiceDetailsViewController *)self navigationController];
      v56 = [navigationController4 hu_pushPreloadableViewController:v54 animated:1];
    }

    goto LABEL_62;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = objc_opt_class();
    v58 = v9;
    if (v58)
    {
      if (objc_opt_isKindOfClass())
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      v50 = v58;
      if (v59)
      {
LABEL_43:

        controlItems = [v50 controlItems];
        anyObject = [controlItems anyObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          expandedControlPanelItems = [(HUServiceDetailsViewController *)self expandedControlPanelItems];
          v64 = [expandedControlPanelItems containsObject:v50];

          expandedControlPanelItems2 = [(HUServiceDetailsViewController *)self expandedControlPanelItems];
          v66 = expandedControlPanelItems2;
          if (v64)
          {
            [expandedControlPanelItems2 removeObject:v50];
          }

          else
          {
            [expandedControlPanelItems2 addObject:v50];
          }

          detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
          diffableDataSourceDisabled = [detailsItemManager4 diffableDataSourceDisabled];

          if (diffableDataSourceDisabled)
          {
            tableView = [(HUServiceDetailsViewController *)self tableView];
            v310[0] = pathCopy;
            navigationController5 = [MEMORY[0x277CBEA60] arrayWithObjects:v310 count:1];
            [(HUTemperatureUnitPickerViewController *)tableView reloadRowsAtIndexPaths:navigationController5 withRowAnimation:0];
          }

          else
          {
            tableView = [(HUServiceDetailsViewController *)self detailsItemManager];
            v309 = v50;
            navigationController5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v309 count:1];
            [(HUTemperatureUnitPickerViewController *)tableView reloadUIRepresentationForItems:navigationController5 withAnimation:1];
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_62:

            goto LABEL_63;
          }

          v84 = anyObject;
          tableView = [[HUTemperatureUnitPickerViewController alloc] initWithUnitItem:v84];

          navigationController5 = [(HUServiceDetailsViewController *)self navigationController];
          [navigationController5 pushViewController:tableView animated:1];
        }

        goto LABEL_62;
      }

      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler3 handleFailureInFunction:v61 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v57, objc_opt_class()}];
    }

    v50 = 0;
    goto LABEL_43;
  }

  detailsItemManager5 = [(HUServiceDetailsViewController *)self detailsItemManager];
  roomItem = [detailsItemManager5 roomItem];
  v69 = [v9 isEqual:roomItem];

  detailsItemManager6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v50 = detailsItemManager6;
  if (!v69)
  {
    associatedServiceTypeItem = [detailsItemManager6 associatedServiceTypeItem];
    v80 = [v9 isEqual:associatedServiceTypeItem];

    detailsItemManager7 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v82 = detailsItemManager7;
    if (v80)
    {
      [detailsItemManager7 setShowAssociatedServiceTypeList:1];

      detailsItemManager8 = [(HUServiceDetailsViewController *)self detailsItemManager];
      [detailsItemManager8 setShowRoomsList:0];

      goto LABEL_63;
    }

    createNewRoomItem = [detailsItemManager7 createNewRoomItem];
    v88 = [v9 isEqual:createNewRoomItem];

    if (v88)
    {
      [(HUServiceDetailsViewController *)self addRoomButtonPressed:viewCopy];
      goto LABEL_63;
    }

    detailsItemManager9 = [(HUServiceDetailsViewController *)self detailsItemManager];
    addGroupItem = [detailsItemManager9 addGroupItem];
    v93 = [v9 isEqual:addGroupItem];

    if (v93)
    {
      [(HUServiceDetailsViewController *)self _presentGroupPicker];
      goto LABEL_63;
    }

    detailsItemManager10 = [(HUServiceDetailsViewController *)self detailsItemManager];
    identifyHomePodItem = [detailsItemManager10 identifyHomePodItem];
    v96 = [v9 isEqual:identifyHomePodItem];

    if (v96)
    {
      [(HUServiceDetailsViewController *)self _identifyHomePod];
      goto LABEL_63;
    }

    detailsItemManager11 = [(HUServiceDetailsViewController *)self detailsItemManager];
    separateTileItem = [detailsItemManager11 separateTileItem];
    v99 = [v9 isEqual:separateTileItem];

    if (v99)
    {
      [(HUServiceDetailsViewController *)self _separateOrUnifyTile];
      goto LABEL_63;
    }

    detailsItemManager12 = [(HUServiceDetailsViewController *)self detailsItemManager];
    showContainedItems = [detailsItemManager12 showContainedItems];
    v102 = [v9 isEqual:showContainedItems];

    if (v102)
    {
      [(HUServiceDetailsViewController *)self _presentContainedItems];
      goto LABEL_63;
    }

    detailsItemManager13 = [(HUServiceDetailsViewController *)self detailsItemManager];
    lockPinCodesItem = [detailsItemManager13 lockPinCodesItem];
    v105 = v9 == lockPinCodesItem;

    detailsItemManager14 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v107 = detailsItemManager14;
    if (v105)
    {
      lockPinCodesItem2 = [detailsItemManager14 lockPinCodesItem];
      latestResults2 = [lockPinCodesItem2 latestResults];
      v119 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
      bOOLValue = [v119 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
        itemManager2 = [(HUItemTableViewController *)self itemManager];
        home2 = [itemManager2 home];
        v124 = [mEMORY[0x277D146E8] pinCodeManagerForHome:home2];

        fetchFromAccessoryCache = [v124 fetchFromAccessoryCache];
        detailsItemManager15 = [(HUServiceDetailsViewController *)self detailsItemManager];
        sourceItemAccessory = [detailsItemManager15 sourceItemAccessory];

        itemManager3 = [(HUItemTableViewController *)self itemManager];
        home3 = [itemManager3 home];

        v130 = [HUUsersAndGuestsPinCodeViewController alloc];
        item3 = [(HUServiceDetailsViewController *)self item];
        v132 = [(HUUsersAndGuestsPinCodeViewController *)v130 initWithSourceItem:item3 pinCodeManager:v124 home:home3 forAccessory:sourceItemAccessory];

        navigationController6 = [(HUServiceDetailsViewController *)self navigationController];
        v134 = [navigationController6 hu_pushPreloadableViewController:v132 animated:1];
      }

      goto LABEL_63;
    }

    statusAndNotificationItem = [detailsItemManager14 statusAndNotificationItem];
    v109 = [v9 isEqual:statusAndNotificationItem];

    if (v109)
    {
      v110 = [HUStatusAndNotificationsViewController alloc];
      item4 = [(HUServiceDetailsViewController *)self item];
      itemManager4 = [(HUItemTableViewController *)self itemManager];
      home4 = [itemManager4 home];
      v114 = [(HUStatusAndNotificationsViewController *)v110 initWithServiceItem:item4 inHome:home4 displayingDetails:1];

      navigationController7 = [(HUServiceDetailsViewController *)self navigationController];
      v116 = [navigationController7 hu_pushPreloadableViewController:v114 animated:1];

      goto LABEL_63;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v135 = objc_alloc(MEMORY[0x277D14398]);
      actionSet = [v9 actionSet];
      home5 = [(HUServiceDetailsViewController *)self home];
      v138 = [v135 initWithExistingObject:actionSet inHome:home5];

      v139 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v138 mode:0];
      [(HUSceneActionEditorViewController *)v139 setShowCancelButton:0];
      [(HUSceneActionEditorViewController *)v139 setPresentationDelegate:self];
      navigationController8 = [(HUServiceDetailsViewController *)self navigationController];
      v141 = [navigationController8 hu_pushPreloadableViewController:v139 animated:1];

      goto LABEL_63;
    }

    detailsItemManager16 = [(HUServiceDetailsViewController *)self detailsItemManager];
    pairingModeItem = [detailsItemManager16 pairingModeItem];
    v144 = [v9 isEqual:pairingModeItem];

    if (v144)
    {
      item5 = [(HUServiceDetailsViewController *)self item];
      accessories = [item5 accessories];
      anyObject2 = [accessories anyObject];
      objc_initWeak(&location, anyObject2);

      v148 = objc_loadWeakRetained(&location);
      LODWORD(item5) = v148 == 0;

      if (item5)
      {
        v156 = HFLogForCategory();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          item6 = [(HUServiceDetailsViewController *)self item];
          *from = 138412290;
          *&from[4] = item6;
          _os_log_error_impl(&dword_20CEB6000, v156, OS_LOG_TYPE_ERROR, "Attempted to activate pairing mode for chip accessory but found nil accessory %@", from, 0xCu);
        }

        v157 = [MEMORY[0x277CCA9B8] hf_errorWithCode:38];
        mEMORY[0x277D14640] = [MEMORY[0x277D14640] sharedHandler];
        [mEMORY[0x277D14640] handleError:v157];
      }

      else
      {
        objc_initWeak(from, self);
        v149 = objc_loadWeakRetained(&location);
        v295[0] = MEMORY[0x277D85DD0];
        v295[1] = 3221225472;
        v295[2] = __68__HUServiceDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
        v295[3] = &unk_277DBEEC8;
        objc_copyWeak(&v296, &location);
        objc_copyWeak(&v297, from);
        [v149 activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion:v295];

        objc_destroyWeak(&v297);
        objc_destroyWeak(&v296);
        objc_destroyWeak(from);
      }

      objc_destroyWeak(&location);
      goto LABEL_63;
    }

    detailsItemManager17 = [(HUServiceDetailsViewController *)self detailsItemManager];
    exportDiagnosticsItem = [detailsItemManager17 exportDiagnosticsItem];
    v152 = [v9 isEqual:exportDiagnosticsItem];

    if (v152)
    {
      [(HUServiceDetailsViewController *)self _exportDiagnosticsForItem:v9];
      goto LABEL_63;
    }

    detailsItemManager18 = [(HUServiceDetailsViewController *)self detailsItemManager];
    removeItem = [detailsItemManager18 removeItem];
    v155 = [v9 isEqual:removeItem];

    if (v155)
    {
      [(HUServiceDetailsViewController *)self _presentRemoveConfirmation:pathCopy];
      goto LABEL_63;
    }

    detailsItemManager19 = [(HUServiceDetailsViewController *)self detailsItemManager];
    removeFromGroupItem = [detailsItemManager19 removeFromGroupItem];
    v161 = [v9 isEqual:removeFromGroupItem];

    if (v161)
    {
      [(HUServiceDetailsViewController *)self _presentRemoveFromGroupConfirmation:pathCopy];
      goto LABEL_63;
    }

    detailsItemManager20 = [(HUServiceDetailsViewController *)self detailsItemManager];
    resetItem = [detailsItemManager20 resetItem];
    v164 = [v9 isEqual:resetItem];

    if (v164)
    {
      [(HUServiceDetailsViewController *)self _presentResetHomePodConfirmation:pathCopy];
      goto LABEL_63;
    }

    detailsItemManager21 = [(HUServiceDetailsViewController *)self detailsItemManager];
    restartItem = [detailsItemManager21 restartItem];
    v167 = [v9 isEqual:restartItem];

    if (v167)
    {
      [(HUServiceDetailsViewController *)self _restartGroupedHomePodAccessory];
      goto LABEL_63;
    }

    detailsItemManager22 = [(HUServiceDetailsViewController *)self detailsItemManager];
    accessoryItem = [detailsItemManager22 accessoryItem];
    v170 = [v9 isEqual:accessoryItem];

    if (v170)
    {
      detailsItemManager23 = [(HUServiceDetailsViewController *)self detailsItemManager];
      sourceItemAccessory2 = [detailsItemManager23 sourceItemAccessory];

      hf_owningBridgeAccessory = [sourceItemAccessory2 hf_owningBridgeAccessory];
      if ([sourceItemAccessory2 hf_isBridge])
      {
        if (([sourceItemAccessory2 hf_isPureBridge] & 1) == 0)
        {
          detailsItemManager24 = [(HUServiceDetailsViewController *)self detailsItemManager];
          sourceItemIsService = [detailsItemManager24 sourceItemIsService];

          if (sourceItemIsService)
          {
            v176 = sourceItemAccessory2;

            hf_owningBridgeAccessory = v176;
          }
        }
      }

      hf_primaryService = [hf_owningBridgeAccessory hf_primaryService];
      hf_isVisibleAsBridge = [hf_owningBridgeAccessory hf_isVisibleAsBridge];
      if (hf_primaryService)
      {
        v179 = hf_isVisibleAsBridge;
      }

      else
      {
        v179 = 1;
      }

      if (v179 & 1) != 0 || ([hf_owningBridgeAccessory hf_showAsIndividualServices] & 1) == 0 && (objc_msgSend(hf_owningBridgeAccessory, "hf_isMultiServiceAccessory"))
      {
        v180 = objc_alloc(MEMORY[0x277D142E8]);
        item7 = [(HUServiceDetailsViewController *)self item];
        valueSource = [item7 valueSource];
        v183 = [v180 initWithAccessory:hf_owningBridgeAccessory valueSource:valueSource];
      }

      else
      {
        v194 = MEMORY[0x277D14AC8];
        item7 = [(HUServiceDetailsViewController *)self item];
        valueSource = [item7 valueSource];
        v183 = [v194 serviceItemForService:hf_primaryService valueSource:valueSource];
      }

      v195 = v183;

      v196 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:v195];
      [(HUServiceDetailsViewController *)v196 setPresentationDelegate:self];
      navigationController9 = [(HUServiceDetailsViewController *)self navigationController];
      v198 = [navigationController9 hu_pushPreloadableViewController:v196 animated:1];

      goto LABEL_63;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      detailsItemManager25 = [(HUServiceDetailsViewController *)self detailsItemManager];
      showAssociatedServiceTypeList = [detailsItemManager25 showAssociatedServiceTypeList];

      if (showAssociatedServiceTypeList)
      {
        detailsItemManager27 = v9;
        latestResults3 = [detailsItemManager27 latestResults];
        v189 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D136E0]];

        if (!v189)
        {
          NSLog(&cfstr_AssociatedServ.isa, detailsItemManager27);
        }

        detailsItemManager26 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v191 = [detailsItemManager26 selectAssociatedServiceType:v189];

        objc_initWeak(from, self);
        v293[0] = MEMORY[0x277D85DD0];
        v293[1] = 3221225472;
        v293[2] = __68__HUServiceDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_584;
        v293[3] = &unk_277DB99B8;
        objc_copyWeak(&v294, from);
        v192 = [v191 addSuccessBlock:v293];
        v193 = [v191 addFailureBlock:&__block_literal_global_586];
        objc_destroyWeak(&v294);
        objc_destroyWeak(from);
      }

      else
      {
        detailsItemManager27 = [(HUServiceDetailsViewController *)self detailsItemManager];
        [detailsItemManager27 setShowAssociatedServiceTypeList:1];
      }

      [(HUServiceDetailsViewController *)self _updateAssociatedServiceTypeCells];
      goto LABEL_63;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HUServiceDetailsViewController *)self _presentTriggerEditorForProgrammableSwitchEventOptionItem:v9];
      goto LABEL_63;
    }

    detailsItemManager28 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v200 = [detailsItemManager28 canShowWiFiPickerForItem:v9];

    if (v200)
    {
      [(HUServiceDetailsViewController *)self _presentWiFiPickerForItem:v9];
      goto LABEL_63;
    }

    detailsItemManager29 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v202 = [detailsItemManager29 canToggleAccessoryInfoItem:v9];

    detailsItemManager30 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v204 = detailsItemManager30;
    if (v202)
    {
      [detailsItemManager30 toggleAccessoryInfoItem:v9];

      goto LABEL_63;
    }

    symptomsLearnMoreItem = [detailsItemManager30 symptomsLearnMoreItem];
    v206 = v9 == symptomsLearnMoreItem;

    detailsItemManager31 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v208 = detailsItemManager31;
    if (v206)
    {
      sourceItem = [detailsItemManager31 sourceItem];
      latestResults4 = [sourceItem latestResults];
      v231 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D13F48]];

      mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
      v233 = [mEMORY[0x277D148E8] openURL:v231];

      detailsItemManager32 = [(HUServiceDetailsViewController *)self detailsItemManager];
      sourceItemAccessory3 = [detailsItemManager32 sourceItemAccessory];
      [(HUServiceDetailsViewController *)self _submitMetricsSymptomsInteractionForAccessory:sourceItemAccessory3 interactionType:1];

      goto LABEL_63;
    }

    splitMediaAccountUseDefaultAccountItem = [detailsItemManager31 splitMediaAccountUseDefaultAccountItem];
    v210 = v9 == splitMediaAccountUseDefaultAccountItem;

    if (v210)
    {
      [(HUServiceDetailsViewController *)self didSelectHomeAssistantDeviceSplitAccountAction:1];
      goto LABEL_63;
    }

    detailsItemManager33 = [(HUServiceDetailsViewController *)self detailsItemManager];
    splitMediaAccountSignoutAccountItem = [detailsItemManager33 splitMediaAccountSignoutAccountItem];
    v213 = v9 == splitMediaAccountSignoutAccountItem;

    if (v213)
    {
      [(HUServiceDetailsViewController *)self didSelectHomeAssistantDeviceSplitAccountAction:2];
      goto LABEL_63;
    }

    detailsItemManager34 = [(HUServiceDetailsViewController *)self detailsItemManager];
    homeTheaterAudioOutputItem = [detailsItemManager34 homeTheaterAudioOutputItem];
    v216 = v9 == homeTheaterAudioOutputItem;

    if (v216)
    {
      objc_opt_class();
      item8 = [(HUServiceDetailsViewController *)self item];
      if (objc_opt_isKindOfClass())
      {
        v237 = item8;
      }

      else
      {
        v237 = 0;
      }

      sourceItemAccessory4 = v237;

      if (sourceItemAccessory4)
      {
        v238 = [[HUHomeTheaterAudioViewController alloc] initWithMediaAccessoryItem:sourceItemAccessory4];
        navigationController10 = [(HUServiceDetailsViewController *)self navigationController];
        v240 = [navigationController10 hu_pushPreloadableViewController:v238 animated:1];
      }
    }

    else
    {
      detailsItemManager35 = [(HUServiceDetailsViewController *)self detailsItemManager];
      cameraActivityZonesItem = [detailsItemManager35 cameraActivityZonesItem];
      v219 = v9 == cameraActivityZonesItem;

      if (v219)
      {
        objc_opt_class();
        detailsItemManager36 = [(HUServiceDetailsViewController *)self detailsItemManager];
        sourceItem2 = [detailsItemManager36 sourceItem];
        if (objc_opt_isKindOfClass())
        {
          v243 = sourceItem2;
        }

        else
        {
          v243 = 0;
        }

        v50 = v243;

        if (v50)
        {
          v244 = [HUCameraActivityZoneEditorViewController alloc];
          profile = [v50 profile];
          anyObject = [(HUCameraActivityZoneEditorViewController *)v244 initWithCameraProfile:profile];

          v246 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:anyObject];
          [v246 setToolbarHidden:0];
          [v246 setModalPresentationStyle:2];
          [(HUServiceDetailsViewController *)self presentViewController:v246 animated:1 completion:0];
        }

        else
        {
          anyObject = HFLogForCategory();
          if (os_log_type_enabled(anyObject, OS_LOG_TYPE_ERROR))
          {
            *from = 138412290;
            *&from[4] = v9;
            _os_log_error_impl(&dword_20CEB6000, anyObject, OS_LOG_TYPE_ERROR, "Unable to launch editor for invalid item:%@", from, 0xCu);
          }
        }

        goto LABEL_62;
      }

      detailsItemManager37 = [(HUServiceDetailsViewController *)self detailsItemManager];
      cameraRecordingOptionsItem = [detailsItemManager37 cameraRecordingOptionsItem];
      v222 = [v9 isEqual:cameraRecordingOptionsItem];

      if (v222)
      {
        navigationController11 = [(HUServiceDetailsViewController *)self navigationController];
        v224 = [HUCameraRecordingOptionsTableViewController alloc];
        detailsItemManager38 = [(HUServiceDetailsViewController *)self detailsItemManager];
        sourceItem3 = [detailsItemManager38 sourceItem];
        v227 = [(HUCameraRecordingOptionsTableViewController *)v224 initWithServiceLikeItem:sourceItem3];
        v228 = [navigationController11 hu_pushPreloadableViewController:v227 animated:1];

        goto LABEL_63;
      }

      detailsItemManager39 = [(HUServiceDetailsViewController *)self detailsItemManager];
      cameraFaceRecognitionItem = [detailsItemManager39 cameraFaceRecognitionItem];
      v249 = [v9 isEqual:cameraFaceRecognitionItem];

      if (v249)
      {
        v250 = [HUFaceRecognitionLibraryListViewController alloc];
        itemManager5 = [(HUItemTableViewController *)self itemManager];
        home6 = [itemManager5 home];
        v253 = [(HUFaceRecognitionLibraryListViewController *)v250 initWithHome:home6];

        navigationController12 = [(HUServiceDetailsViewController *)self navigationController];
        v255 = [navigationController12 hu_pushPreloadableViewController:v253 animated:1];

        goto LABEL_63;
      }

      detailsItemManager40 = [(HUServiceDetailsViewController *)self detailsItemManager];
      collectDiagnosticsItem = [detailsItemManager40 collectDiagnosticsItem];
      v258 = v9 == collectDiagnosticsItem;

      if (v258)
      {
        v278 = [HUAccessoryDiagnosticsViewController alloc];
        item9 = [(HUServiceDetailsViewController *)self item];
        v280 = [(HUAccessoryDiagnosticsViewController *)v278 initWithSourceItem:item9];

        navigationController13 = [(HUServiceDetailsViewController *)self navigationController];
        v282 = [navigationController13 hu_pushPreloadableViewController:v280 animated:1];

        goto LABEL_63;
      }

      detailsItemManager41 = [(HUServiceDetailsViewController *)self detailsItemManager];
      lockAddHomeKeyToWalletItem = [detailsItemManager41 lockAddHomeKeyToWalletItem];
      v261 = [v9 isEqual:lockAddHomeKeyToWalletItem];

      detailsItemManager42 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v263 = detailsItemManager42;
      if (v261)
      {
        sourceItem4 = [detailsItemManager42 sourceItem];
        v265 = [sourceItem4 conformsToProtocol:&unk_28251B0C8];

        if (v265)
        {
          detailsItemManager43 = [(HUServiceDetailsViewController *)self detailsItemManager];
          sourceItem5 = [detailsItemManager43 sourceItem];

          home7 = [sourceItem5 home];
          v269 = HFLogForCategory();
          if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
          {
            v270 = [objc_opt_class() description];
            *from = 138413314;
            *&from[4] = v270;
            v301 = 2080;
            v302 = "[HUServiceDetailsViewController tableView:didSelectRowAtIndexPath:]";
            v303 = 2112;
            v304 = v9;
            v305 = 2112;
            v306 = sourceItem5;
            v307 = 2112;
            v308 = home7;
            _os_log_impl(&dword_20CEB6000, v269, OS_LOG_TYPE_DEFAULT, "(%@:%s) user tapped %@ of %@ in home %@", from, 0x34u);
          }

          v271 = [viewCopy cellForRowAtIndexPath:pathCopy];
          objc_opt_class();
          v272 = v271;
          if (objc_opt_isKindOfClass())
          {
            v273 = v272;
          }

          else
          {
            v273 = 0;
          }

          v274 = v273;

          [v274 setShowSpinner:1];
          v275 = [MEMORY[0x277D14D08] handleAddOrShowHomeKeyButtonTapForHome:home7];
          v291[0] = MEMORY[0x277D85DD0];
          v291[1] = 3221225472;
          v291[2] = __68__HUServiceDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_618;
          v291[3] = &unk_277DB7530;
          v292 = v274;
          v276 = v274;
          v277 = [v275 addCompletionBlock:v291];
        }

        goto LABEL_63;
      }

      managedConfigurationProfilesItem = [detailsItemManager42 managedConfigurationProfilesItem];
      v284 = [v9 isEqual:managedConfigurationProfilesItem];

      if (!v284)
      {
        goto LABEL_63;
      }

      objc_opt_class();
      itemManager6 = [(HUItemTableViewController *)self itemManager];
      if (objc_opt_isKindOfClass())
      {
        v286 = itemManager6;
      }

      else
      {
        v286 = 0;
      }

      v287 = v286;

      sourceItemAccessory4 = [v287 sourceItemAccessory];

      if (sourceItemAccessory4)
      {
        v288 = [[HUManagedConfigurationProfilesViewController alloc] initWithAccessory:sourceItemAccessory4];
        navigationController14 = [(HUServiceDetailsViewController *)self navigationController];
        [navigationController14 pushViewController:v288 animated:1];
      }
    }

LABEL_165:

    goto LABEL_63;
  }

  anyObject = [detailsItemManager6 home];
  if (([anyObject hf_currentUserIsAdministrator]& 1) == 0)
  {
    goto LABEL_62;
  }

  detailsItemManager44 = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItem6 = [detailsItemManager44 sourceItem];
  latestResults5 = [sourceItem6 latestResults];
  v74 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D14148]];
  bOOLValue2 = [v74 BOOLValue];

  if ((bOOLValue2 & 1) == 0)
  {
    [(HUServiceDetailsViewController *)self setIsPresentingRoomsList:1];
    detailsItemManager45 = [(HUServiceDetailsViewController *)self detailsItemManager];
    showRoomsList = [detailsItemManager45 showRoomsList];
    detailsItemManager46 = [(HUServiceDetailsViewController *)self detailsItemManager];
    [detailsItemManager46 setShowRoomsList:showRoomsList ^ 1u];

    detailsItemManager47 = [(HUServiceDetailsViewController *)self detailsItemManager];
    [detailsItemManager47 setShowAssociatedServiceTypeList:0];
  }

LABEL_63:
}

void __68__HUServiceDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v39 = v5;
  if (v4)
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v6 = qword_27C837F58;
    v46 = qword_27C837F58;
    if (!qword_27C837F58)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMTRSetupPayloadClass_block_invoke;
      v48 = &unk_277DB7768;
      v49[0] = &v43;
      __getMTRSetupPayloadClass_block_invoke(buf);
      v6 = v44[3];
    }

    v7 = v6;
    _Block_object_dispose(&v43, 8);
    v8 = [v6 setupPayloadWithOnboardingPayload:v4 error:0];
    v9 = [v8 manualEntryCode];
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      *buf = 138413058;
      *&buf[4] = WeakRetained;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      *&buf[22] = 2112;
      v48 = v8;
      LOWORD(v49[0]) = 2112;
      *(v49 + 2) = v9;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Successfully activated pairing mode for CHIP accessory: %@, setupPayloadString: %@, payload: %@, manual pairing code: %@", buf, 0x2Au);
    }

    v12 = [HUStringDisplayFormatter stringByApplyingCodeFormatToString:v9];
    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 name];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = _HULocalizedStringWithDefaultValue(@"HUAccessoryTitle", @"HUAccessoryTitle", 1);
    }

    v18 = v16;

    v19 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsPairingModeItem_Alert_Title", @"HUServiceDetailsPairingModeItem_Alert_Title", 1);
    v26 = HULocalizedStringWithFormat(@"HUServiceDetailsPairingModeItem_Alert_Body", @"%@%@", v20, v21, v22, v23, v24, v25, v18);
    v27 = [MEMORY[0x277D75110] alertControllerWithTitle:v19 message:v26 preferredStyle:1];
    v28 = MEMORY[0x277D750F8];
    v29 = _HULocalizedStringWithDefaultValue(@"HUAlertDismiss", @"HUAlertDismiss", 1);
    v30 = [v28 actionWithTitle:v29 style:0 handler:&__block_literal_global_573];
    [v27 addAction:v30];

    v31 = MEMORY[0x277D750F8];
    v32 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsPairingModeItem_Alert_Copy_Button_Title", @"HUServiceDetailsPairingModeItem_Alert_Copy_Button_Title", 1);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __68__HUServiceDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_577;
    v41[3] = &unk_277DB7600;
    v42 = v9;
    v33 = v9;
    v34 = [v31 actionWithTitle:v32 style:0 handler:v41];
    [v27 addAction:v34];

    v35 = objc_loadWeakRetained((a1 + 40));
    v36 = [v35 hf_topmostViewController];
    [v36 presentViewController:v27 animated:1 completion:0];
  }

  else
  {
    if (v5)
    {
      v17 = v5;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    }

    v8 = v17;
    v37 = HFLogForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_loadWeakRetained((a1 + 32));
      *buf = 138412546;
      *&buf[4] = v38;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_error_impl(&dword_20CEB6000, v37, OS_LOG_TYPE_ERROR, "Encountered error activating pairing mode for CHIP accessory: %@ error: %@", buf, 0x16u);
    }

    v12 = [MEMORY[0x277D14640] sharedHandler];
    [v12 handleError:v8];
  }
}

void __68__HUServiceDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_570()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[HUServiceDetailsViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'Dismiss' from alert", &v1, 0xCu);
  }
}

void __68__HUServiceDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_577(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v7 = 136315394;
    v8 = "[HUServiceDetailsViewController tableView:didSelectRowAtIndexPath:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from alert", &v7, 0x16u);
  }

  v6 = [MEMORY[0x277D75810] generalPasteboard];
  [v6 setString:*(a1 + 32)];
}

void __68__HUServiceDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_584(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained detailsItemManager];
  [v1 setShowAssociatedServiceTypeList:0];

  [WeakRetained _updateAssociatedServiceTypeCells];
}

void __68__HUServiceDetailsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 logError:v3 operationDescription:@"HUServiceDetailsViewController.updateAssociatedServiceType"];
}

- (void)diffableDataItemManager:(id)manager willUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems isInitialLoad:(BOOL)load
{
  loadCopy = load;
  v16.receiver = self;
  v16.super_class = HUServiceDetailsViewController;
  removeItemsCopy = removeItems;
  addItemsCopy = addItems;
  [(HUItemTableViewController *)&v16 diffableDataItemManager:manager willUpdateItems:items addItems:addItemsCopy removeItems:removeItemsCopy isInitialLoad:loadCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __109__HUServiceDetailsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke;
  v15[3] = &unk_277DBAF68;
  v15[4] = self;
  [removeItemsCopy na_each:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__HUServiceDetailsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke_2;
  v14[3] = &unk_277DBAF68;
  v14[4] = self;
  [addItemsCopy na_each:v14];
}

void __109__HUServiceDetailsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v7 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) controlPanelController];
    [v6 removeItem:v5];
  }
}

void __109__HUServiceDetailsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) controlPanelController];
    v7 = [v6 allItems];
    v8 = [v7 containsObject:v5];

    if ((v8 & 1) == 0)
    {
      v9 = [*(a1 + 32) controlPanelController];
      [v9 addItem:v5];
    }
  }
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  v13.receiver = self;
  v13.super_class = HUServiceDetailsViewController;
  itemsCopy = items;
  [(HUItemTableViewController *)&v13 diffableDataItemManager:manager didUpdateItems:itemsCopy addItems:addItems removeItems:removeItems];
  inputSourceItemModuleController = [(HUServiceDetailsViewController *)self inputSourceItemModuleController];
  [inputSourceItemModuleController updateAllConfigurationDisabled];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HUServiceDetailsViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke;
  v12[3] = &unk_277DBAF68;
  v12[4] = self;
  [itemsCopy na_each:v12];
}

void __94__HUServiceDetailsViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1272));
  v4 = [WeakRetained headerItem];

  if (v4 == v7)
  {
    v5 = [v7 latestResults];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [*(a1 + 32) setTitle:v6];
  }

  [*(a1 + 32) _updateControlStatusText];
  [*(a1 + 32) _updateIconDescriptorAnimated:1];
}

- (void)itemManager:(id)manager performUpdateRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  requestCopy = request;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  changes = [requestCopy changes];
  itemOperations = [changes itemOperations];

  v9 = [itemOperations countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(itemOperations);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        objc_opt_class();
        item = [v13 item];
        if (objc_opt_isKindOfClass())
        {
          v15 = item;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16)
        {
          if ([v13 type] == 1)
          {
            controlPanelController = [(HUServiceDetailsViewController *)self controlPanelController];
            [controlPanelController addItem:v16];
          }

          else
          {
            if ([v13 type] != 2)
            {
              goto LABEL_15;
            }

            controlPanelController = [(HUServiceDetailsViewController *)self controlPanelController];
            [controlPanelController removeItem:v16];
          }
        }

LABEL_15:

        ++v12;
      }

      while (v10 != v12);
      v10 = [itemOperations countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v19.receiver = self;
  v19.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v19 itemManager:managerCopy performUpdateRequest:requestCopy];
}

- (BOOL)itemManager:(id)manager shouldShowControlPanelItem:(id)item
{
  itemCopy = item;
  controlPanelController = [(HUServiceDetailsViewController *)self controlPanelController];
  v7 = [controlPanelController shouldDisplayItem:itemCopy];

  return v7;
}

- (BOOL)itemManager:(id)manager shouldShowSectionTitleForControlPanelItem:(id)item
{
  itemCopy = item;
  controlPanelController = [(HUServiceDetailsViewController *)self controlPanelController];
  v7 = [controlPanelController shouldShowSectionTitleForItem:itemCopy];

  return v7;
}

- (id)itemManager:(id)manager sectionTitleForControlPanelItem:(id)item forServiceItem:(id)serviceItem
{
  serviceItemCopy = serviceItem;
  itemCopy = item;
  controlPanelController = [(HUServiceDetailsViewController *)self controlPanelController];
  v10 = [controlPanelController sectionTitleForItem:itemCopy forSourceItem:serviceItemCopy];

  return v10;
}

- (id)itemManager:(id)manager sectionFooterForControlPanelItem:(id)item forServiceItem:(id)serviceItem
{
  serviceItemCopy = serviceItem;
  itemCopy = item;
  controlPanelController = [(HUServiceDetailsViewController *)self controlPanelController];
  v10 = [controlPanelController sectionFooterForItem:itemCopy forSourceItem:serviceItemCopy];

  return v10;
}

- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [(HUServiceDetailsViewController *)self _roomForItem:item];
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  serviceLikeBuilder = [detailsItemManager serviceLikeBuilder];
  room = [serviceLikeBuilder room];
  v8Room = [room room];
  uniqueIdentifier = [v8Room uniqueIdentifier];

  if (!uniqueIdentifier)
  {
    detailsItemManager4 = HFLogForCategory();
    if (os_log_type_enabled(detailsItemManager4, OS_LOG_TYPE_DEFAULT))
    {
      detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
      serviceLikeBuilder2 = [detailsItemManager2 serviceLikeBuilder];
      v24 = 136315394;
      v25 = "[HUServiceDetailsViewController itemManager:didUpdateResultsForSourceItem:]";
      v26 = 2112;
      v27 = serviceLikeBuilder2;
      _os_log_impl(&dword_20CEB6000, detailsItemManager4, OS_LOG_TYPE_DEFAULT, "%s The source item has been changed, but we can't confirm that the room has changed because the self.detailsItemManager.serviceLikeBuilder (%@) has a nil room - which seems wrong.", &v24, 0x16u);
    }

    goto LABEL_9;
  }

  uniqueIdentifier2 = [v5 uniqueIdentifier];

  if (uniqueIdentifier2)
  {
    detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
    serviceLikeBuilder3 = [detailsItemManager3 serviceLikeBuilder];
    room2 = [serviceLikeBuilder3 room];
    v14Room = [room2 room];
    uniqueIdentifier3 = [v14Room uniqueIdentifier];
    uniqueIdentifier4 = [v5 uniqueIdentifier];
    v18 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if ((v18 & 1) == 0)
    {
      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        name = [v5 name];
        v24 = 136315394;
        v25 = "[HUServiceDetailsViewController itemManager:didUpdateResultsForSourceItem:]";
        v26 = 2112;
        v27 = name;
        _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%s The room has changed to (%@), thus the items in this view are stale. Resetting.", &v24, 0x16u);
      }

      detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
      [detailsItemManager4 resetServiceLikeItemBuilder];
LABEL_9:
    }
  }
}

- (int64_t)numberOfValuesForPickerViewCell:(id)cell
{
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  orderedRoomSectionItems = [detailsItemManager orderedRoomSectionItems];
  v5 = [orderedRoomSectionItems count];

  return v5;
}

- (void)pickerViewCell:(id)cell didSelectValueAtIndex:(int64_t)index
{
  if ([(HUServiceDetailsViewController *)self isPresentingRoomsList])
  {

    [(HUServiceDetailsViewController *)self setIsPresentingRoomsList:0];
  }

  else
  {
    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    orderedRoomSectionItems = [detailsItemManager orderedRoomSectionItems];
    v8 = [orderedRoomSectionItems count];

    if (v8 > index)
    {
      detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
      orderedRoomSectionItems2 = [detailsItemManager2 orderedRoomSectionItems];
      v11 = [orderedRoomSectionItems2 objectAtIndexedSubscript:index];

      [(HUServiceDetailsViewController *)self _didSelectRoomItem:v11];
    }
  }
}

- (id)pickerViewCell:(id)cell titleForValueAtIndex:(int64_t)index
{
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  orderedRoomSectionItems = [detailsItemManager orderedRoomSectionItems];
  v8 = [orderedRoomSectionItems count];

  if (v8 <= index)
  {
    v13 = 0;
  }

  else
  {
    detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
    orderedRoomSectionItems2 = [detailsItemManager2 orderedRoomSectionItems];
    v11 = [orderedRoomSectionItems2 objectAtIndexedSubscript:index];

    latestResults = [v11 latestResults];
    v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  return v13;
}

- (id)_characteristicsAffectedByControlItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  characteristicOptions = [itemCopy characteristicOptions];
  v6 = [characteristicOptions objectForKeyedSubscript:&unk_282491988];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        valueSource = [itemCopy valueSource];
        v13 = [valueSource allCharacteristicsForCharacteristicType:v11];
        [v4 unionSet:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)controlPanelController:(id)controller willBeginPossibleWritesForControlItem:(id)item
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [(HUServiceDetailsViewController *)self _characteristicsAffectedByControlItem:itemCopy];

  [itemManager beginSuppressingUpdatesForCharacteristics:v6 withReason:@"serviceDetailsControlInteraction"];
}

- (void)controlPanelController:(id)controller didEndPossibleWritesForControlItem:(id)item
{
  v4 = [(HUItemTableViewController *)self itemManager:controller];
  [v4 endSuppressingUpdatesForCharacteristicsWithReason:@"serviceDetailsControlInteraction" updateAffectedItems:1];
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  animatedCopy = animated;
  presentationCopy = presentation;
  if ([presentationCopy conformsToProtocol:&unk_2824C3AE0])
  {
    v7 = presentationCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v8 requiresPresentingViewControllerDismissal])
  {
    [(HUServiceDetailsViewController *)self setRequiresPresentingViewControllerDismissal:1];
    presentationDelegate = [(HUServiceDetailsViewController *)self presentationDelegate];
    v10 = [presentationDelegate finishPresentation:self animated:animatedCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      futureWithNoResult = [(UIViewController *)self hu_dismissViewControllerAnimated:animatedCopy];
    }

    else
    {
      navigationController = [(HUServiceDetailsViewController *)self navigationController];
      v14 = [navigationController popViewControllerAnimated:animatedCopy];

      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v10 = futureWithNoResult;
  }

  return v10;
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  tableView = [(HUServiceDetailsViewController *)self tableView];
  v41 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:v41];

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  favoriteItem = [detailsItemManager favoriteItem];
  v12 = [v9 isEqual:favoriteItem];

  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v14 = detailsItemManager2;
  if (v12)
  {
    serviceLikeBuilder = [detailsItemManager2 serviceLikeBuilder];

    [serviceLikeBuilder setIsFavorite:onCopy];
LABEL_5:
    commitItem = [serviceLikeBuilder commitItem];
LABEL_6:

    goto LABEL_7;
  }

  showInHomeDashboardItem = [detailsItemManager2 showInHomeDashboardItem];
  v17 = [v9 isEqual:showInHomeDashboardItem];

  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v19 = detailsItemManager3;
  if (v17)
  {
    serviceLikeBuilder = [detailsItemManager3 serviceLikeBuilder];

    [serviceLikeBuilder setShowInHomeDashboard:onCopy];
    goto LABEL_5;
  }

  cameraStatusLightItem = [detailsItemManager3 cameraStatusLightItem];
  v34 = [v9 isEqual:cameraStatusLightItem];

  detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  serviceLikeBuilder = detailsItemManager4;
  if (v34)
  {
    [detailsItemManager4 updateCameraStatusLight:onCopy];
    goto LABEL_6;
  }

  cameraNightModeItem = [detailsItemManager4 cameraNightModeItem];
  v37 = [v9 isEqual:cameraNightModeItem];

  detailsItemManager5 = [(HUServiceDetailsViewController *)self detailsItemManager];
  serviceLikeBuilder = detailsItemManager5;
  if (v37)
  {
    [detailsItemManager5 updateCameraNightMode:onCopy];
    goto LABEL_6;
  }

  cameraDoorbellChimeMuteItem = [detailsItemManager5 cameraDoorbellChimeMuteItem];
  v40 = [v9 isEqual:cameraDoorbellChimeMuteItem];

  if (v40)
  {
    serviceLikeBuilder = [(HUServiceDetailsViewController *)self detailsItemManager];
    [serviceLikeBuilder updateDoorbellChimeMuteMode:onCopy];
    goto LABEL_6;
  }

LABEL_7:
  latestResults = [v9 latestResults];
  v22 = *MEMORY[0x277D13F68];
  v23 = [latestResults objectForKey:*MEMORY[0x277D13F68]];

  if (v23)
  {
    latestResults2 = [v9 latestResults];
    v25 = [latestResults2 objectForKeyedSubscript:v22];
  }

  else
  {
    v25 = 0;
  }

  v26 = v9;
  if ([v26 conformsToProtocol:&unk_2825080B8])
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  if (![v25 length] && v28)
  {
    itemTitleLocalizationKey = [v28 itemTitleLocalizationKey];

    v25 = itemTitleLocalizationKey;
  }

  v30 = MEMORY[0x277D143D8];
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  sourceItem = [itemManager2 sourceItem];
  [v30 sendSwitchCellToggleEventForItem:sourceItem isOn:onCopy title:v25 fromSourceViewController:self];
}

- (void)mediaSystemEditor:(id)editor didCreate:(id)create
{
  editorCopy = editor;
  createCopy = create;
  if (!createCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:2120 description:{@"Invalid parameter not satisfying: %@", @"mediaSystem"}];
  }

  v8 = objc_alloc(MEMORY[0x277D147E8]);
  item = [(HUServiceDetailsViewController *)self item];
  valueSource = [item valueSource];
  v11 = [v8 initWithValueSource:valueSource mediaProfileContainer:createCopy];

  v12 = objc_alloc(MEMORY[0x277D14830]);
  home = [createCopy home];
  v14 = [v12 initWithExistingObject:createCopy inHome:home];

  v15 = [[HUMediaAccessoryAudioSettingsViewController alloc] initWithMediaSystemBuilder:v14 mediaAccessoryItem:v11];
  [(HUMediaAccessoryAudioSettingsViewController *)v15 setPresentationDelegate:self];
  v16 = [(HUServiceDetailsViewController *)self _magicallyUpdateNavigationStackForNewRootItem:v11 topViewController:v15];
  [editorCopy setPresentationDelegate:v16];
}

- (void)mediaSystemEditor:(id)editor didAbortDueTo:(id)to
{
  toCopy = to;
  editorCopy = editor;
  mediaProfile = [toCopy mediaProfile];

  if (!mediaProfile)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:2134 description:{@"Invalid parameter not satisfying: %@", @"accessoryNeedingUpdate.mediaProfile"}];
  }

  v10 = [toCopy hf_fetchAvailableSoftwareUpdateWithOptions:0];
  v11 = objc_alloc(MEMORY[0x277D147E8]);
  item = [(HUServiceDetailsViewController *)self item];
  valueSource = [item valueSource];
  mediaProfile2 = [toCopy mediaProfile];

  v17 = [v11 initWithValueSource:valueSource mediaProfileContainer:mediaProfile2];
  v15 = [(HUServiceDetailsViewController *)self _magicallyUpdateNavigationStackForNewRootItem:v17 topViewController:0];
  [editorCopy setPresentationDelegate:v15];
}

- (void)serviceGroupEditor:(id)editor didCreateServiceGroup:(id)group
{
  editorCopy = editor;
  groupCopy = group;
  if (!groupCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:2147 description:{@"Invalid parameter not satisfying: %@", @"serviceGroup"}];
  }

  v8 = objc_alloc(MEMORY[0x277D14AB0]);
  item = [(HUServiceDetailsViewController *)self item];
  valueSource = [item valueSource];
  v11 = [v8 initWithValueSource:valueSource serviceGroup:groupCopy];

  v12 = [(HUServiceDetailsViewController *)self _magicallyUpdateNavigationStackForNewRootItem:v11 topViewController:0];
  [editorCopy setPresentationDelegate:v12];
}

- (id)_magicallyUpdateNavigationStackForNewRootItem:(id)item topViewController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:2163 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v9 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:itemCopy];
  presentationDelegate = [(HUServiceDetailsViewController *)self presentationDelegate];
  [(HUServiceDetailsViewController *)v9 setPresentationDelegate:presentationDelegate];

  [(HUServiceDetailsViewController *)v9 setRequiresPresentingViewControllerDismissal:0];
  v11 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
  [v11 na_safeAddObject:controllerCopy];
  navigationController = [(HUServiceDetailsViewController *)self navigationController];
  presentingViewController = [(HUServiceDetailsViewController *)self presentingViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    presentingViewController2 = [(HUServiceDetailsViewController *)self presentingViewController];
    if (objc_opt_isKindOfClass())
    {
      v16 = presentingViewController2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    viewControllers = [v17 viewControllers];
    v19 = [viewControllers na_firstObjectPassingTest:&__block_literal_global_668];

    quickControlViewController = [v19 quickControlViewController];
    presentationDelegate2 = [quickControlViewController presentationDelegate];
    [(HUServiceDetailsViewController *)v9 setPresentationDelegate:presentationDelegate2];

    navigationController = v17;
  }

  [navigationController setViewControllers:v11 animated:0];

  return v9;
}

uint64_t __98__HUServiceDetailsViewController__magicallyUpdateNavigationStackForNewRootItem_topViewController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)detailsViewControllerFor:(id)for item:(id)item
{
  forCopy = for;
  itemCopy = item;
  v7 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:itemCopy];

  serviceContainingItem = [forCopy serviceContainingItem];
  objc_opt_class();
  LOBYTE(itemCopy) = objc_opt_isKindOfClass();

  if (itemCopy)
  {
    detailsItemManager = [(HUServiceDetailsViewController *)v7 detailsItemManager];
    [detailsItemManager setShouldHideAccessoryItem:1];
  }

  else
  {
    serviceContainingItem2 = [forCopy serviceContainingItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_6;
    }

    detailsItemManager = [(HUServiceDetailsViewController *)v7 detailsItemManager];
    [detailsItemManager setShouldHideSeparateTileItem:1];
  }

LABEL_6:

  return v7;
}

- (BOOL)hasDetailsActionFor:(id)for item:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_28251B0C8])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)detailsViewControllerForContainedMediaAccessoryGridViewController:(id)controller item:(id)item
{
  itemCopy = item;
  v5 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:itemCopy];

  return v5;
}

- (id)detailsViewControllerForContainedServiceGridViewController:(id)controller item:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  v7 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:itemCopy];

  serviceContainerItem = [controllerCopy serviceContainerItem];
  objc_opt_class();
  LOBYTE(itemCopy) = objc_opt_isKindOfClass();

  if (itemCopy)
  {
    detailsItemManager = [(HUServiceDetailsViewController *)v7 detailsItemManager];
    [detailsItemManager setShouldHideAccessoryItem:1];
  }

  else
  {
    serviceContainerItem2 = [controllerCopy serviceContainerItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_6;
    }

    detailsItemManager = [(HUServiceDetailsViewController *)v7 detailsItemManager];
    [detailsItemManager setShouldHideSeparateTileItem:1];
  }

LABEL_6:

  return v7;
}

- (void)editRoomViewControllerDidFinish:(id)finish withNewRoom:(id)room
{
  finishCopy = finish;
  roomCopy = room;
  if (roomCopy)
  {
    v8 = objc_alloc(MEMORY[0x277D149D8]);
    home = [roomCopy home];
    v10 = [v8 initWithExistingObject:roomCopy inHome:home];

    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    v12 = [detailsItemManager selectRoom:v10];

    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__HUServiceDetailsViewController_editRoomViewControllerDidFinish_withNewRoom___block_invoke;
    v17[3] = &unk_277DB99B8;
    objc_copyWeak(&v18, &location);
    v13 = [v12 addSuccessBlock:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);

    [(HUServiceDetailsViewController *)self dismissViewControllerAnimated:1 completion:0];
    if (v12)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __78__HUServiceDetailsViewController_editRoomViewControllerDidFinish_withNewRoom___block_invoke_2;
      v15[3] = &unk_277DB7E68;
      v15[4] = self;
      v16 = roomCopy;
      v14 = [v12 addSuccessBlock:v15];
    }
  }

  else
  {
    [(HUServiceDetailsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

void __78__HUServiceDetailsViewController_editRoomViewControllerDidFinish_withNewRoom___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained detailsItemManager];
  [v1 setShowRoomsList:0];
}

void __78__HUServiceDetailsViewController_editRoomViewControllerDidFinish_withNewRoom___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 _notifyOfHomeTheaterReconfigurationIfNecessary:v2];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  tableView = [(HUServiceDetailsViewController *)self tableView];
  [beginCopy locationInView:tableView];
  v7 = v6;
  v9 = v8;

  tableView2 = [(HUServiceDetailsViewController *)self tableView];
  v11 = [tableView2 indexPathForRowAtPoint:{v7, v9}];

  if (v11)
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    v13 = [itemManager displayedItemAtIndexPath:v11];

    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    accessoryInfoItemProvider = [detailsItemManager accessoryInfoItemProvider];
    items = [accessoryInfoItemProvider items];
    v17 = [items containsObject:v13];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_longPressRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if ([recognizedCopy state] == 1)
  {
    tableView = [(HUServiceDetailsViewController *)self tableView];
    [recognizedCopy locationInView:tableView];
    v6 = v5;
    v8 = v7;

    tableView2 = [(HUServiceDetailsViewController *)self tableView];
    v10 = [tableView2 indexPathForRowAtPoint:{v6, v8}];

    objc_opt_class();
    tableView3 = [(HUServiceDetailsViewController *)self tableView];
    v12 = [tableView3 cellForRowAtIndexPath:v10];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14 && [v14 allowCopyValueToPasteboard])
    {
      mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
      [v14 becomeFirstResponder];
      view = [(HUServiceDetailsViewController *)self view];
      [v14 frame];
      [mEMORY[0x277D75718] showMenuFromView:view rect:?];
    }
  }
}

- (BOOL)_allowRowSelectionForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([itemCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (-[HUServiceDetailsViewController detailsItemManager](self, "detailsItemManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "canToggleAccessoryInfoItem:", itemCopy), v5, (v6))
  {
    v7 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    addGroupItem = [detailsItemManager addGroupItem];
    [v9 na_safeAddObject:addGroupItem];

    detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
    identifyHomePodItem = [detailsItemManager2 identifyHomePodItem];
    [v9 na_safeAddObject:identifyHomePodItem];

    detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
    separateTileItem = [detailsItemManager3 separateTileItem];
    [v9 na_safeAddObject:separateTileItem];

    detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
    showContainedItems = [detailsItemManager4 showContainedItems];
    [v9 na_safeAddObject:showContainedItems];

    detailsItemManager5 = [(HUServiceDetailsViewController *)self detailsItemManager];
    createNewRoomItem = [detailsItemManager5 createNewRoomItem];
    [v9 na_safeAddObject:createNewRoomItem];

    detailsItemManager6 = [(HUServiceDetailsViewController *)self detailsItemManager];
    pairingModeItem = [detailsItemManager6 pairingModeItem];
    [v9 na_safeAddObject:pairingModeItem];

    detailsItemManager7 = [(HUServiceDetailsViewController *)self detailsItemManager];
    exportDiagnosticsItem = [detailsItemManager7 exportDiagnosticsItem];
    v24 = [itemCopy isEqual:exportDiagnosticsItem];

    if (v24)
    {
      latestResults = [itemCopy latestResults];
      v26 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13D30]];

      if (!v26 || [v26 isFinished])
      {
        detailsItemManager8 = [(HUServiceDetailsViewController *)self detailsItemManager];
        exportDiagnosticsItem2 = [detailsItemManager8 exportDiagnosticsItem];
        [v9 na_safeAddObject:exportDiagnosticsItem2];
      }
    }

    detailsItemManager9 = [(HUServiceDetailsViewController *)self detailsItemManager];
    removeItem = [detailsItemManager9 removeItem];
    [v9 na_safeAddObject:removeItem];

    detailsItemManager10 = [(HUServiceDetailsViewController *)self detailsItemManager];
    removeFromGroupItem = [detailsItemManager10 removeFromGroupItem];
    [v9 na_safeAddObject:removeFromGroupItem];

    detailsItemManager11 = [(HUServiceDetailsViewController *)self detailsItemManager];
    resetItem = [detailsItemManager11 resetItem];
    [v9 na_safeAddObject:resetItem];

    detailsItemManager12 = [(HUServiceDetailsViewController *)self detailsItemManager];
    restartItem = [detailsItemManager12 restartItem];
    [v9 na_safeAddObject:restartItem];

    detailsItemManager13 = [(HUServiceDetailsViewController *)self detailsItemManager];
    accessoryItem = [detailsItemManager13 accessoryItem];
    [v9 na_safeAddObject:accessoryItem];

    detailsItemManager14 = [(HUServiceDetailsViewController *)self detailsItemManager];
    alarmItem = [detailsItemManager14 alarmItem];
    [v9 na_safeAddObject:alarmItem];

    detailsItemManager15 = [(HUServiceDetailsViewController *)self detailsItemManager];
    lockPinCodesItem = [detailsItemManager15 lockPinCodesItem];
    [v9 na_safeAddObject:lockPinCodesItem];

    detailsItemManager16 = [(HUServiceDetailsViewController *)self detailsItemManager];
    statusAndNotificationItem = [detailsItemManager16 statusAndNotificationItem];
    [v9 na_safeAddObject:statusAndNotificationItem];

    detailsItemManager17 = [(HUServiceDetailsViewController *)self detailsItemManager];
    homeTheaterAudioOutputItem = [detailsItemManager17 homeTheaterAudioOutputItem];
    [v9 na_safeAddObject:homeTheaterAudioOutputItem];

    detailsItemManager18 = [(HUServiceDetailsViewController *)self detailsItemManager];
    managedConfigurationProfilesItem = [detailsItemManager18 managedConfigurationProfilesItem];
    [v9 na_safeAddObject:managedConfigurationProfilesItem];

    detailsItemManager19 = [(HUServiceDetailsViewController *)self detailsItemManager];
    roomItem = [detailsItemManager19 roomItem];
    [v9 na_safeAddObject:roomItem];

    detailsItemManager20 = [(HUServiceDetailsViewController *)self detailsItemManager];
    associatedServiceTypeItem = [detailsItemManager20 associatedServiceTypeItem];
    [v9 na_safeAddObject:associatedServiceTypeItem];

    detailsItemManager21 = [(HUServiceDetailsViewController *)self detailsItemManager];
    audioSettingsItem = [detailsItemManager21 audioSettingsItem];
    [v9 na_safeAddObject:audioSettingsItem];

    detailsItemManager22 = [(HUServiceDetailsViewController *)self detailsItemManager];
    internalDebuggingItem = [detailsItemManager22 internalDebuggingItem];
    [v9 na_safeAddObject:internalDebuggingItem];

    detailsItemManager23 = [(HUServiceDetailsViewController *)self detailsItemManager];
    symptomsLearnMoreItem = [detailsItemManager23 symptomsLearnMoreItem];
    [v9 na_safeAddObject:symptomsLearnMoreItem];

    detailsItemManager24 = [(HUServiceDetailsViewController *)self detailsItemManager];
    symptomsWiFiPickerItem = [detailsItemManager24 symptomsWiFiPickerItem];
    [v9 na_safeAddObject:symptomsWiFiPickerItem];

    detailsItemManager25 = [(HUServiceDetailsViewController *)self detailsItemManager];
    splitMediaAccountUseDefaultAccountItem = [detailsItemManager25 splitMediaAccountUseDefaultAccountItem];
    [v9 na_safeAddObject:splitMediaAccountUseDefaultAccountItem];

    detailsItemManager26 = [(HUServiceDetailsViewController *)self detailsItemManager];
    splitMediaAccountSignoutAccountItem = [detailsItemManager26 splitMediaAccountSignoutAccountItem];
    [v9 na_safeAddObject:splitMediaAccountSignoutAccountItem];

    detailsItemManager27 = [(HUServiceDetailsViewController *)self detailsItemManager];
    cameraActivityZonesItem = [detailsItemManager27 cameraActivityZonesItem];
    [v9 na_safeAddObject:cameraActivityZonesItem];

    detailsItemManager28 = [(HUServiceDetailsViewController *)self detailsItemManager];
    cameraRecordingOptionsItem = [detailsItemManager28 cameraRecordingOptionsItem];
    [v9 na_safeAddObject:cameraRecordingOptionsItem];

    detailsItemManager29 = [(HUServiceDetailsViewController *)self detailsItemManager];
    cameraFaceRecognitionItem = [detailsItemManager29 cameraFaceRecognitionItem];
    [v9 na_safeAddObject:cameraFaceRecognitionItem];

    detailsItemManager30 = [(HUServiceDetailsViewController *)self detailsItemManager];
    collectDiagnosticsItem = [detailsItemManager30 collectDiagnosticsItem];
    [v9 na_safeAddObject:collectDiagnosticsItem];

    detailsItemManager31 = [(HUServiceDetailsViewController *)self detailsItemManager];
    lockAddHomeKeyToWalletItem = [detailsItemManager31 lockAddHomeKeyToWalletItem];
    [v9 na_safeAddObject:lockAddHomeKeyToWalletItem];

    if ([v9 containsObject:itemCopy])
    {
      v7 = 1;
    }

    else
    {
      v75 = [(HUItemTableViewController *)self moduleControllerForItem:itemCopy];
      v76 = v75;
      if (v75 && ([v75 canSelectItem:itemCopy] & 1) != 0 || (-[HUServiceDetailsViewController detailsItemManager](self, "detailsItemManager"), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v77, "existingRoomItemProvider"), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v78, "items"), v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v79, "containsObject:", itemCopy), v79, v78, v77, (v80 & 1) != 0))
      {
        v7 = 1;
      }

      else
      {
        detailsItemManager32 = [(HUServiceDetailsViewController *)self detailsItemManager];
        suggestedRoomItemProvider = [detailsItemManager32 suggestedRoomItemProvider];
        items = [suggestedRoomItemProvider items];
        v7 = [items containsObject:itemCopy];
      }
    }
  }

  return v7;
}

- (BOOL)_allowRowHighlightForItem:(id)item
{
  itemCopy = item;
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  v6 = [detailsItemManager canToggleAccessoryInfoItem:itemCopy];

  v7 = (v6 & 1) == 0 && [(HUServiceDetailsViewController *)self _allowRowSelectionForItem:itemCopy];
  return v7;
}

- (BOOL)_shouldShowDetailDisclosureForItem:(id)item
{
  itemCopy = item;
  v5 = [MEMORY[0x277CBEB58] set];
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  showContainedItems = [detailsItemManager showContainedItems];
  [v5 na_safeAddObject:showContainedItems];

  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  accessoryItem = [detailsItemManager2 accessoryItem];
  [v5 na_safeAddObject:accessoryItem];

  detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  alarmItem = [detailsItemManager3 alarmItem];
  [v5 na_safeAddObject:alarmItem];

  detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  lockPinCodesItem = [detailsItemManager4 lockPinCodesItem];
  [v5 na_safeAddObject:lockPinCodesItem];

  detailsItemManager5 = [(HUServiceDetailsViewController *)self detailsItemManager];
  statusAndNotificationItem = [detailsItemManager5 statusAndNotificationItem];
  [v5 na_safeAddObject:statusAndNotificationItem];

  detailsItemManager6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  homeTheaterAudioOutputItem = [detailsItemManager6 homeTheaterAudioOutputItem];
  [v5 na_safeAddObject:homeTheaterAudioOutputItem];

  detailsItemManager7 = [(HUServiceDetailsViewController *)self detailsItemManager];
  audioSettingsItem = [detailsItemManager7 audioSettingsItem];
  [v5 na_safeAddObject:audioSettingsItem];

  detailsItemManager8 = [(HUServiceDetailsViewController *)self detailsItemManager];
  internalDebuggingItem = [detailsItemManager8 internalDebuggingItem];
  [v5 na_safeAddObject:internalDebuggingItem];

  detailsItemManager9 = [(HUServiceDetailsViewController *)self detailsItemManager];
  cameraRecordingOptionsItem = [detailsItemManager9 cameraRecordingOptionsItem];
  [v5 na_safeAddObject:cameraRecordingOptionsItem];

  detailsItemManager10 = [(HUServiceDetailsViewController *)self detailsItemManager];
  cameraFaceRecognitionItem = [detailsItemManager10 cameraFaceRecognitionItem];
  [v5 na_safeAddObject:cameraFaceRecognitionItem];

  detailsItemManager11 = [(HUServiceDetailsViewController *)self detailsItemManager];
  cameraActivityZonesItem = [detailsItemManager11 cameraActivityZonesItem];
  [v5 na_safeAddObject:cameraActivityZonesItem];

  if ([v5 containsObject:itemCopy])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LODWORD(self) = ![(HUServiceDetailsViewController *)self _shouldShowAddButtonForOptionItem:itemCopy];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      detailsItemManager12 = [(HUServiceDetailsViewController *)self detailsItemManager];
      LOBYTE(self) = [detailsItemManager12 canShowWiFiPickerForItem:itemCopy];
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

LABEL_5:

  return self;
}

- (BOOL)_shouldShowAddButtonForOptionItem:(id)item
{
  itemCopy = item;
  characteristics = [itemCopy characteristics];
  anyObject = [characteristics anyObject];

  triggerValue = [itemCopy triggerValue];
  v7 = [anyObject hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:triggerValue];

  latestResults = [itemCopy latestResults];

  v9 = [latestResults objectForKey:@"itemIsEditable"];
  bOOLValue = [v9 BOOLValue];

  return (v7 == 0) & bOOLValue;
}

- (void)checkForAccessoriesNeedingReprovisioning
{
  v13 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  itemManager = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v4 = itemManager;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  sourceItemAccessory = [v5 sourceItemAccessory];

  home = [sourceItemAccessory home];
  if (![sourceItemAccessory accessoryReprovisionState])
  {
    if (![sourceItemAccessory hf_needsReprovisioningCheck])
    {
      goto LABEL_10;
    }

    [home startSearchForAccessoriesNeedingReprovisioning];
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = sourceItemAccessory;
    v11 = 2048;
    accessoryReprovisionState = [sourceItemAccessory accessoryReprovisionState];
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "checkForAccessoriesNeedingReprovisioning accessory %@ state %lu", &v9, 0x16u);
  }

LABEL_10:
}

- (void)_restartGroupedHomePodAccessory
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[HUServiceDetailsViewController _restartGroupedHomePodAccessory]";
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  [detailsItemManager restartAccessory];
}

- (void)_presentResetHomePodConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  v5 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRestartHomePodAlertButtonTitle", @"HUServiceDetailsRestartHomePodAlertButtonTitle", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceName", @"HUServiceDetailsRemoveDeviceName", 1);
  v7 = [(UITableViewController *)self hu_actionSheetWithTitle:0 message:0 indexPath:confirmationCopy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__HUServiceDetailsViewController__presentResetHomePodConfirmation___block_invoke;
  v18[3] = &unk_277DB7600;
  v18[4] = self;
  v8 = [MEMORY[0x277D750F8] actionWithTitle:v5 style:0 handler:v18];
  [v7 addAction:v8];

  v9 = MEMORY[0x277D750F8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__HUServiceDetailsViewController__presentResetHomePodConfirmation___block_invoke_677;
  v16[3] = &unk_277DBBD90;
  v16[4] = self;
  v17 = confirmationCopy;
  v10 = confirmationCopy;
  v11 = [v9 actionWithTitle:v6 style:2 handler:v16];
  [v7 addAction:v11];

  v12 = MEMORY[0x277D750F8];
  v13 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertCancelButton", @"HUServiceDetailsRemoveDeviceAlertCancelButton", 1);
  v14 = [v12 actionWithTitle:v13 style:1 handler:&__block_literal_global_683];
  [v7 addAction:v14];

  hf_topmostViewController = [(HUServiceDetailsViewController *)self hf_topmostViewController];
  [hf_topmostViewController presentViewController:v7 animated:1 completion:0];
}

void __67__HUServiceDetailsViewController__presentResetHomePodConfirmation___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v6 = 136315394;
    v7 = "[HUServiceDetailsViewController _presentResetHomePodConfirmation:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped restart homepod button '%@' from alert", &v6, 0x16u);
  }

  [*(a1 + 32) _restartHomePod];
}

void __67__HUServiceDetailsViewController__presentResetHomePodConfirmation___block_invoke_677(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v6 = 136315394;
    v7 = "[HUServiceDetailsViewController _presentResetHomePodConfirmation:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped remove accessory '%@' from alert", &v6, 0x16u);
  }

  [*(a1 + 32) _presentRemoveConfirmation:*(a1 + 40)];
}

void __67__HUServiceDetailsViewController__presentResetHomePodConfirmation___block_invoke_681(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 title];
    v5 = 136315394;
    v6 = "[HUServiceDetailsViewController _presentResetHomePodConfirmation:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped remove device '%@' from alert", &v5, 0x16u);
  }
}

- (void)_exportDiagnosticsForItem:(id)item
{
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[HUServiceDetailsViewController _exportDiagnosticsForItem:]";
    v25 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%s(%@)initiating 'Export Diagnostics'", buf, 0x16u);
  }

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItemAccessory = [detailsItemManager sourceItemAccessory];
  mediaProfile = [sourceItemAccessory mediaProfile];

  hf_settingsAdapterManager = [mediaProfile hf_settingsAdapterManager];
  v10 = [hf_settingsAdapterManager adapterForIdentifier:*MEMORY[0x277D13320]];
  v11 = &unk_2825BD7E0;
  if ([v10 conformsToProtocol:v11])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    NSLog(&cfstr_AdapterDoesnTE.isa);
  }

  v14 = [v13 handleButtonPressForEntity:0];
  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Sysdiagnose request sent", buf, 2u);
  }

  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HUServiceDetailsViewController__exportDiagnosticsForItem___block_invoke;
  v19[3] = &unk_277DBED88;
  objc_copyWeak(&v22, buf);
  v16 = itemCopy;
  v20 = v16;
  v17 = v13;
  v21 = v17;
  v18 = [v14 flatMap:v19];
  [(HUServiceDetailsViewController *)self _registerButtonActionHandler:v14 item:v16];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

id __60__HUServiceDetailsViewController__exportDiagnosticsForItem___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Sysdiagnose request completed with results: %@", buf, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x277D546D8]);
  v10 = HFLocalizedString();
  v38 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v12 = [v9 initWithActivityItems:v11 applicationActivities:0];

  v13 = [WeakRetained tableView];
  v14 = [WeakRetained itemManager];
  v15 = [v14 indexPathForItem:*(a1 + 32)];
  v16 = [v13 cellForRowAtIndexPath:v15];

  v17 = [v12 popoverPresentationController];
  [v17 setSourceView:v16];

  [v16 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v12 popoverPresentationController];
  [v26 setSourceRect:{v19, v21, v23, v25}];

  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __60__HUServiceDetailsViewController__exportDiagnosticsForItem___block_invoke_699;
  v34 = &unk_277DB8810;
  v35 = v12;
  v36 = *(a1 + 40);
  v37 = v7;
  v27 = v7;
  v28 = v12;
  [WeakRetained presentViewController:v28 animated:0 completion:&v31];
  v29 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v29;
}

void __60__HUServiceDetailsViewController__exportDiagnosticsForItem___block_invoke_699(id *a1)
{
  v2 = [a1[4] presentingViewController];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__HUServiceDetailsViewController__exportDiagnosticsForItem___block_invoke_2;
  v3[3] = &unk_277DB7558;
  v4 = a1[5];
  v5 = a1[6];
  [v2 dismissViewControllerAnimated:0 completion:v3];
}

void __60__HUServiceDetailsViewController__exportDiagnosticsForItem___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D14CE8] deviceAirDropIdentifier];
  if (v2)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Share Sheet has generated AirPlayId (%@) making 'airdrop sysdiagnose' request...", &v8, 0xCu);
    }

    objc_opt_class();
    v4 = *(a1 + 32);
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [v6 airDropSysdiagnose:*(a1 + 40)];
  }

  else
  {
    NSLog(&cfstr_AirdropIdentif.isa);
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "Share Sheet failed to generate AirPlayID", &v8, 2u);
    }
  }
}

- (void)_presentRemoveFromGroupConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  namingComponent = [(HUServiceDetailsViewController *)self namingComponent];
  name = [namingComponent name];
  v13 = HULocalizedStringWithFormat(@"HURemoveFromGroupMessage", @"%@", v7, v8, v9, v10, v11, v12, name);

  v14 = [(UITableViewController *)self hu_actionSheetWithTitle:0 message:v13 indexPath:confirmationCopy];

  v15 = MEMORY[0x277D750F8];
  v16 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__HUServiceDetailsViewController__presentRemoveFromGroupConfirmation___block_invoke;
  v22[3] = &unk_277DB7600;
  v22[4] = self;
  v17 = [v15 actionWithTitle:v16 style:2 handler:v22];
  [v14 addAction:v17];

  v18 = MEMORY[0x277D750F8];
  v19 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v20 = [v18 actionWithTitle:v19 style:1 handler:&__block_literal_global_715];
  [v14 addAction:v20];

  hf_topmostViewController = [(HUServiceDetailsViewController *)self hf_topmostViewController];
  [hf_topmostViewController presentViewController:v14 animated:1 completion:0];
}

void __70__HUServiceDetailsViewController__presentRemoveFromGroupConfirmation___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v7 = 136315394;
    v8 = "[HUServiceDetailsViewController _presentRemoveFromGroupConfirmation:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped remove button '%@' from alert", &v7, 0x16u);
  }

  v6 = [*(a1 + 32) _removeFromGroup];
}

void __70__HUServiceDetailsViewController__presentRemoveFromGroupConfirmation___block_invoke_713(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 title];
    v5 = 136315394;
    v6 = "[HUServiceDetailsViewController _presentRemoveFromGroupConfirmation:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped cancel button '%@' from alert", &v5, 0x16u);
  }
}

- (void)_presentRemoveConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItemAccessory = [detailsItemManager sourceItemAccessory];
  supportsCHIP = [sourceItemAccessory supportsCHIP];

  if (supportsCHIP)
  {
    [(HUServiceDetailsViewController *)self _presentEcosystemAccessoryRemoveConfirmation:confirmationCopy];
  }

  else
  {
    [(HUServiceDetailsViewController *)self _presentHomeAccessoryRemoveConfirmation:confirmationCopy];
  }
}

- (void)_presentEcosystemAccessoryRemoveConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  objc_initWeak(&location, self);
  objc_opt_class();
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  connectedServicesItemModule = [detailsItemManager connectedServicesItemModule];
  connectedServicesItemProvider = [connectedServicesItemModule connectedServicesItemProvider];
  if (objc_opt_isKindOfClass())
  {
    v8 = connectedServicesItemProvider;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  connectedEcosystemsFuture = [v9 connectedEcosystemsFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke;
  v13[3] = &unk_277DBEF18;
  objc_copyWeak(&v15, &location);
  v11 = confirmationCopy;
  v14 = v11;
  v12 = [connectedEcosystemsFuture addCompletionBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [HUMatterAccessoryRemovalHelper alloc];
  v9 = [WeakRetained item];
  v10 = [v5 allKeys];
  v11 = [(HUMatterAccessoryRemovalHelper *)v8 initWithItem:v9 connectedEcosystems:v10];

  if ([(HUMatterAccessoryRemovalHelper *)v11 shouldUseEcosystemRemovalConfirmation])
  {
    v12 = [WeakRetained namingComponent];
    v13 = [v12 name];
    [(HUMatterAccessoryRemovalHelper *)v11 matterAccessoryGenerateRemovalConfirmationForAccessoryName:v13];

    v14 = [(HUMatterAccessoryRemovalHelper *)v11 title];
    v15 = [WeakRetained hu_actionSheetWithTitle:0 message:v14 indexPath:*(a1 + 32)];

    v16 = MEMORY[0x277D750F8];
    v17 = [(HUMatterAccessoryRemovalHelper *)v11 removalActionTitle];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_2;
    v31[3] = &unk_277DBB800;
    objc_copyWeak(&v34, (a1 + 40));
    v18 = v11;
    v32 = v18;
    v33 = *(a1 + 32);
    v19 = [v16 actionWithTitle:v17 style:2 handler:v31];
    [v15 addAction:v19];

    v20 = MEMORY[0x277D750F8];
    v21 = [(HUMatterAccessoryRemovalHelper *)v18 resetAllActionTitle];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_722;
    v27[3] = &unk_277DBB800;
    objc_copyWeak(&v30, (a1 + 40));
    v28 = v18;
    v29 = *(a1 + 32);
    v22 = [v20 actionWithTitle:v21 style:2 handler:v27];
    [v15 addAction:v22];

    v23 = MEMORY[0x277D750F8];
    v24 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertCancelButton", @"HUServiceDetailsRemoveDeviceAlertCancelButton", 1);
    v25 = [v23 actionWithTitle:v24 style:1 handler:&__block_literal_global_730];
    [v15 addAction:v25];

    v26 = [WeakRetained hf_topmostViewController];
    [v26 presentViewController:v15 animated:1 completion:0];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v34);
  }

  else
  {
    [WeakRetained _presentHomeAccessoryRemoveConfirmation:*(a1 + 32)];
  }
}

void __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[HUServiceDetailsViewController _presentEcosystemAccessoryRemoveConfirmation:]_block_invoke_2";
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from alert", buf, 0x16u);
  }

  v6 = [*(a1 + 32) removalActionConfirmationTitle];
  v7 = [WeakRetained hu_actionSheetWithTitle:0 message:v6 indexPath:*(a1 + 40)];

  v8 = MEMORY[0x277D750F8];
  v9 = [*(a1 + 32) removalActionConfirmationButtonTitle];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_718;
  v15[3] = &unk_277DBEEF0;
  objc_copyWeak(&v16, (a1 + 48));
  v10 = [v8 actionWithTitle:v9 style:2 handler:v15];
  [v7 addAction:v10];

  v11 = MEMORY[0x277D750F8];
  v12 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertCancelButton", @"HUServiceDetailsRemoveDeviceAlertCancelButton", 1);
  v13 = [v11 actionWithTitle:v12 style:1 handler:&__block_literal_global_721];
  [v7 addAction:v13];

  v14 = [WeakRetained hf_topmostViewController];
  [v14 presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v16);
}

void __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_718(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[HUServiceDetailsViewController _presentEcosystemAccessoryRemoveConfirmation:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User tapped removal '%{public}@' from alert", &v7, 0x16u);
  }

  v6 = [WeakRetained _removeItem];
}

void __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_719(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[HUServiceDetailsViewController _presentEcosystemAccessoryRemoveConfirmation:]_block_invoke";
    v6 = 2114;
    v7 = v2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped remove device '%{public}@' from alert", &v4, 0x16u);
  }
}

void __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_722(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 title];
    *buf = 136315394;
    v19 = "[HUServiceDetailsViewController _presentEcosystemAccessoryRemoveConfirmation:]_block_invoke";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User tapped reset all action '%@' from alert", buf, 0x16u);
  }

  v7 = [*(a1 + 32) resetAllActionConfirmationTitle];
  v8 = [WeakRetained hu_actionSheetWithTitle:0 message:v7 indexPath:*(a1 + 40)];

  v9 = MEMORY[0x277D750F8];
  v10 = [*(a1 + 32) resetAllActionConfirmationButtonTitle];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_723;
  v16[3] = &unk_277DBEEF0;
  objc_copyWeak(&v17, (a1 + 48));
  v11 = [v9 actionWithTitle:v10 style:2 handler:v16];
  [v8 addAction:v11];

  v12 = MEMORY[0x277D750F8];
  v13 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertCancelButton", @"HUServiceDetailsRemoveDeviceAlertCancelButton", 1);
  v14 = [v12 actionWithTitle:v13 style:1 handler:&__block_literal_global_727];
  [v8 addAction:v14];

  v15 = [WeakRetained hf_topmostViewController];
  [v15 presentViewController:v8 animated:1 completion:0];

  objc_destroyWeak(&v17);
}

void __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_723(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 title];
    *buf = 136315394;
    v14 = "[HUServiceDetailsViewController _presentEcosystemAccessoryRemoveConfirmation:]_block_invoke";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%s) User tapped reset all action confirmation button '%@' from alert", buf, 0x16u);
  }

  v7 = [WeakRetained itemManager];
  v8 = [v7 home];
  v9 = [WeakRetained item];
  v10 = [v9 accessories];
  v11 = [v10 anyObject];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_724;
  v12[3] = &unk_277DB8C00;
  v12[4] = WeakRetained;
  [v8 resetAndRemoveAllCHIPPairingsFromAccessory:v11 completion:v12];
}

void __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_724(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setRequiresPresentingViewControllerDismissal:1];
  v4 = [*(a1 + 32) presentationDelegate];
  v5 = [v4 finishPresentation:*(a1 + 32) animated:1];

  v6 = HFLogForCategory();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "failed to remove accessory from all connected ecosystems, error: %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Removed accessory from all connected ecosystems", &v8, 2u);
  }
}

void __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_725(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[HUServiceDetailsViewController _presentEcosystemAccessoryRemoveConfirmation:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from alert", &v4, 0x16u);
  }
}

void __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke_728(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[HUServiceDetailsViewController _presentEcosystemAccessoryRemoveConfirmation:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from alert", &v4, 0x16u);
  }
}

- (void)_presentHomeAccessoryRemoveConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  item = [(HUServiceDetailsViewController *)self item];
  if ([item conformsToProtocol:&unk_28251B268])
  {
    v6 = item;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveGroupAlertTitle", @"HUServiceDetailsRemoveGroupAlertTitle", 1);
  v9 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveGroupAlertButton", @"HUServiceDetailsRemoveGroupAlertButton", 1);
  objc_opt_class();
  item2 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v11 = item2;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  isItemGroup = [v7 isItemGroup];
  if ((isItemGroup & 1) == 0)
  {
    v117 = confirmationCopy;
    namingComponent = [(HUServiceDetailsViewController *)self namingComponent];
    name = [namingComponent name];
    v22 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveDeviceAlertTitle", @"%@", v16, v17, v18, v19, v20, v21, name);

    v23 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);

    objc_opt_class();
    item3 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v25 = item3;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    profile = [v26 profile];

    LODWORD(v26) = [profile hf_supportsRecordingEvents];
    if (v26)
    {
      namingComponent2 = [(HUServiceDetailsViewController *)self namingComponent];
      name2 = [namingComponent2 name];
      v36 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveCameraWithClipsAlertTitle", @"%@", v30, v31, v32, v33, v34, v35, name2);

      v37 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertRemoveCameraButton", @"HUServiceDetailsRemoveDeviceAlertRemoveCameraButton", 1);

      v23 = v37;
      v22 = v36;
    }

    v116 = v23;
    objc_opt_class();
    item4 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v39 = item4;
    }

    else
    {
      v39 = 0;
    }

    if (v39)
    {
      v40 = MEMORY[0x277CCACA8];
      v41 = HULocalizedWiFiString(@"HUServiceDetailsRemoveRouterAlertTitle");
      namingComponent3 = [(HUServiceDetailsViewController *)self namingComponent];
      name3 = [namingComponent3 name];
      v44 = [v40 stringWithValidatedFormat:v41 validFormatSpecifiers:@"%@" error:0, name3];

      v22 = v44;
    }

    accessories = [v12 accessories];
    v46 = [accessories na_any:&__block_literal_global_752];

    accessories2 = [v12 accessories];
    v48 = [accessories2 na_firstObjectPassingTest:&__block_literal_global_754];
    hf_displayName = [v48 hf_displayName];

    if (v46)
    {
      v56 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveHomePodAlertTitle", @"%@", v50, v51, v52, v53, v54, v55, hf_displayName);

      v22 = v56;
    }

    objc_opt_class();
    item5 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v58 = item5;
    }

    else
    {
      v58 = 0;
    }

    v59 = v58;

    if (v59)
    {
      service = [v59 service];
      accessory = [service accessory];
      hf_isHomePod = [accessory hf_isHomePod];

      if (hf_isHomePod)
      {
        service2 = [v59 service];
        accessory2 = [service2 accessory];
        hf_displayName2 = [accessory2 hf_displayName];

        service3 = [v59 service];
        name4 = [service3 name];

        v74 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveAccessoryWithServiceAlertTitle", @"%@%@", v68, v69, v70, v71, v72, v73, name4);

        hf_displayName = hf_displayName2;
        v22 = v74;
      }
    }

    accessories3 = [v12 accessories];
    allObjects = [accessories3 allObjects];
    firstObject = [allObjects firstObject];

    home = [v12 home];
    hf_enabledResidentDevices = [home hf_enabledResidentDevices];
    if ([hf_enabledResidentDevices count] != 1)
    {
      goto LABEL_31;
    }

    v80 = v12;
    v81 = hf_displayName;
    v114 = v80;
    v115 = v22;
    home2 = [v80 home];
    hf_enabledResidentDevices2 = [home2 hf_enabledResidentDevices];
    hf_linkedResidentDevice = [firstObject hf_linkedResidentDevice];
    v85 = [hf_enabledResidentDevices2 containsObject:hf_linkedResidentDevice];

    if (v85)
    {
      hf_displayName = v81;
      if (([firstObject hf_isHomePod] & 1) != 0 || objc_msgSend(firstObject, "hf_isAppleTV"))
      {
        home = [firstObject hf_displayName];
        v22 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveLastResidentAlertTitle", @"%@", v86, v87, v88, v89, v90, v91, home);
        v12 = v114;
        hf_enabledResidentDevices = v115;
LABEL_31:

LABEL_34:
        v8 = v22;
        v9 = v116;
        confirmationCopy = v117;
        goto LABEL_35;
      }
    }

    else
    {
      hf_displayName = v81;
    }

    v12 = v114;
    v22 = v115;
    goto LABEL_34;
  }

LABEL_35:
  item6 = [(HUServiceDetailsViewController *)self item];
  accessories4 = [item6 accessories];
  v94 = [accessories4 na_any:&__block_literal_global_765];

  if (v94)
  {
    v113 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertTitleManualNetworkReconfiguration", @"HUServiceDetailsRemoveDeviceAlertTitleManualNetworkReconfiguration", 1);
    v101 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveDeviceAlertTitleManualNetworkReconfiguration_Format", @"%@%@", v95, v96, v97, v98, v99, v100, v8);

    v8 = v101;
  }

  if ([v12 mediaAccessoryItemType] == 4)
  {
    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    home3 = [detailsItemManager home];
    mediaProfileContainer = [v12 mediaProfileContainer];
    v105 = [home3 hf_relatedHomeTheaterMediaProfileContainerFor:mediaProfileContainer];

    if (v105)
    {
      v106 = _HULocalizedStringWithDefaultValue(@"HUBreakHomeTheaterAlert_Body", @"HUBreakHomeTheaterAlert_Body", 1);

      v8 = v106;
    }
  }

  v107 = [(UITableViewController *)self hu_actionSheetWithTitle:0 message:v8 indexPath:confirmationCopy];
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __74__HUServiceDetailsViewController__presentHomeAccessoryRemoveConfirmation___block_invoke_5;
  v118[3] = &unk_277DB7600;
  v118[4] = self;
  v108 = [MEMORY[0x277D750F8] actionWithTitle:v9 style:2 handler:v118];
  [v107 addAction:v108];

  v109 = MEMORY[0x277D750F8];
  v110 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertCancelButton", @"HUServiceDetailsRemoveDeviceAlertCancelButton", 1);
  v111 = [v109 actionWithTitle:v110 style:1 handler:&__block_literal_global_780];
  [v107 addAction:v111];

  hf_topmostViewController = [(HUServiceDetailsViewController *)self hf_topmostViewController];
  [hf_topmostViewController presentViewController:v107 animated:1 completion:0];
}

uint64_t __74__HUServiceDetailsViewController__presentHomeAccessoryRemoveConfirmation___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 category];
  v3 = [v2 categoryType];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCE8B0]];

  return v4;
}

uint64_t __74__HUServiceDetailsViewController__presentHomeAccessoryRemoveConfirmation___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 hf_networkConfigurationProfiles];
  v3 = [v2 na_any:&__block_literal_global_768];

  return v3;
}

void __74__HUServiceDetailsViewController__presentHomeAccessoryRemoveConfirmation___block_invoke_5(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[HUServiceDetailsViewController _presentHomeAccessoryRemoveConfirmation:]_block_invoke_5";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from alert", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) _shouldPresentRemoveRouterConfirmation];
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _presentRemoveRouterConfirmation];
  }

  else
  {
    v7 = [v6 _removeItem];
  }
}

void __74__HUServiceDetailsViewController__presentHomeAccessoryRemoveConfirmation___block_invoke_778(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[HUServiceDetailsViewController _presentHomeAccessoryRemoveConfirmation:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%@' from alert", &v4, 0x16u);
  }
}

- (BOOL)_shouldPresentRemoveRouterConfirmation
{
  objc_opt_class();
  item = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = item;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    home = [itemManager home];
    hf_accessoriesRequiringManualWiFiReconfiguration = [home hf_accessoriesRequiringManualWiFiReconfiguration];
    v9 = [hf_accessoriesRequiringManualWiFiReconfiguration count] != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_presentRemoveRouterConfirmation
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__HUServiceDetailsViewController__presentRemoveRouterConfirmation__block_invoke;
  aBlock[3] = &unk_277DBEEF0;
  objc_copyWeak(&v29, &location);
  v3 = _Block_copy(aBlock);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __66__HUServiceDetailsViewController__presentRemoveRouterConfirmation__block_invoke_2;
  v26 = &unk_277DBEEF0;
  objc_copyWeak(&v27, &location);
  v4 = _Block_copy(&v23);
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  hf_accessoriesRequiringManualWiFiReconfiguration = [home hf_accessoriesRequiringManualWiFiReconfiguration];
  v8 = [hf_accessoriesRequiringManualWiFiReconfiguration count];

  v9 = HULocalizedWiFiString(@"HUNetworkRouterRemoveAlertTitle");
  v10 = MEMORY[0x277CCACA8];
  v11 = HULocalizedWiFiString(@"HUNetworkRouterRemoveAlertDescriptionFormat");
  v12 = [v10 localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%ld" error:0, v8, v23, v24, v25, v26];

  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v12 preferredStyle:1];
  v14 = MEMORY[0x277D750F8];
  v15 = _HULocalizedStringWithDefaultValue(@"HUNetworkRouterRemoveAlertButtonRemove", @"HUNetworkRouterRemoveAlertButtonRemove", 1);
  v16 = [v14 actionWithTitle:v15 style:2 handler:v3];
  [v13 addAction:v16];

  v17 = MEMORY[0x277D750F8];
  v18 = _HULocalizedStringWithDefaultValue(@"HUNetworkRouterRemoveAlertButtonMoreInformation", @"HUNetworkRouterRemoveAlertButtonMoreInformation", 1);
  v19 = [v17 actionWithTitle:v18 style:0 handler:v4];
  [v13 addAction:v19];

  v20 = MEMORY[0x277D750F8];
  v21 = _HULocalizedStringWithDefaultValue(@"HUNetworkRouterRemoveAlertButtonCancel", @"HUNetworkRouterRemoveAlertButtonCancel", 1);
  v22 = [v20 actionWithTitle:v21 style:1 handler:0];
  [v13 addAction:v22];

  [(HUServiceDetailsViewController *)self presentViewController:v13 animated:1 completion:0];
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __66__HUServiceDetailsViewController__presentRemoveRouterConfirmation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _removeItem];
}

void __66__HUServiceDetailsViewController__presentRemoveRouterConfirmation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [HURemoveNetworkRouterMoreInformationViewController alloc];
  v2 = [WeakRetained itemManager];
  v3 = [v2 home];
  v4 = [(HURemoveNetworkRouterMoreInformationViewController *)v1 initWithHome:v3];

  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
  [WeakRetained presentViewController:v5 animated:1 completion:0];
}

- (id)_roomForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_28251B0C8])
  {
    v4 = itemCopy;
  }

  else
  {
    v4 = 0;
  }

  homeKitObject = [v4 homeKitObject];

  if ([homeKitObject conformsToProtocol:&unk_282547DB8])
  {
    v6 = homeKitObject;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    hf_parentRoom = [v7 hf_parentRoom];
  }

  else
  {
    hf_parentRoom = 0;
  }

  return hf_parentRoom;
}

- (void)_presentWiFiPickerForItem:(id)item
{
  v38 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  pickerManager = [(HUServiceDetailsViewController *)self pickerManager];

  if (pickerManager)
  {
    sourceItemAccessory = HFLogForCategory();
    if (os_log_type_enabled(sourceItemAccessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, sourceItemAccessory, OS_LOG_TYPE_ERROR, "Picker is already presented. Returning.", buf, 2u);
    }

LABEL_17:

    goto LABEL_18;
  }

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  v8 = [detailsItemManager canShowWiFiPickerForItem:itemCopy];

  if (v8)
  {
    detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
    sourceItemAccessory = [detailsItemManager2 sourceItemAccessory];

    objc_opt_class();
    item = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v11 = item;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    mediaProfileContainer = [v12 mediaProfileContainer];
    mediaAccessoryItemType = [v12 mediaAccessoryItemType];

    if (mediaAccessoryItemType == 4)
    {
      topSymptomsHandlerAccessory = [mediaProfileContainer topSymptomsHandlerAccessory];

      sourceItemAccessory = topSymptomsHandlerAccessory;
    }

    [(HUServiceDetailsViewController *)self _setupWiFiPickerManagerForFirstPartyAccessory:sourceItemAccessory];
    pickerManager2 = [(HUServiceDetailsViewController *)self pickerManager];
    presentingViewController = [pickerManager2 presentingViewController];

    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = presentingViewController;
      v32 = 2112;
      v33 = sourceItemAccessory;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Now presenting WiFi Picker VC %@ for %@", buf, 0x16u);
    }

    detailsItemManager3 = [(HUServiceDetailsViewController *)self detailsItemManager];
    symptomsWiFiPickerItem = [detailsItemManager3 symptomsWiFiPickerItem];
    v21 = [itemCopy isEqual:symptomsWiFiPickerItem];

    if (v21)
    {
      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        detailsItemManager4 = [(HUServiceDetailsViewController *)self detailsItemManager];
        symptomsWiFiPickerItem2 = [detailsItemManager4 symptomsWiFiPickerItem];
        symptomsHandler = [sourceItemAccessory symptomsHandler];
        hf_symptomsSortedByPriority = [symptomsHandler hf_symptomsSortedByPriority];
        firstObject = [hf_symptomsSortedByPriority firstObject];
        *buf = 138413058;
        selfCopy = self;
        v32 = 2112;
        v33 = symptomsWiFiPickerItem2;
        v34 = 2112;
        v35 = firstObject;
        v36 = 2112;
        v37 = sourceItemAccessory;
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@: User tapped symptomsWiFiPickerItem: %@ for symptom: %@ for accessory: %@", buf, 0x2Au);
      }
    }

    v27 = HFLocalizedWiFiString();
    [(HUServiceDetailsViewController *)presentingViewController setTitle:v27];

    navigationController = [(HUServiceDetailsViewController *)self navigationController];
    [navigationController pushViewController:presentingViewController animated:1];

    [(HUServiceDetailsViewController *)self _submitMetricsSymptomsInteractionForAccessory:sourceItemAccessory interactionType:2];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_setupWiFiPickerManagerForFirstPartyAccessory:(id)accessory
{
  v23 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  pickerManager = [(HUServiceDetailsViewController *)self pickerManager];

  if (pickerManager)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Picker Manager already setup. Returning.", &v17, 2u);
    }
  }

  else
  {
    v6 = [(HUServiceDetailsViewController *)self _currentAssociatedNetworkInfoForFirstPartyAccessory:accessoryCopy];
    v7 = objc_alloc(MEMORY[0x277D7BB58]);
    v8 = [v7 initWithNetworks:MEMORY[0x277CBEBF8] currentNetwork:v6];
    hf_displayName = [accessoryCopy hf_displayName];
    [v8 setAccessoryName:hf_displayName];

    v10 = [_TtC6HomeUI21HomeWiFiPickerContext alloc];
    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    home = [detailsItemManager home];
    v13 = [(HomeWiFiPickerContext *)v10 initWithMediaAccessory:accessoryCopy home:home delegate:self];
    wifiPickerContext = self->_wifiPickerContext;
    self->_wifiPickerContext = v13;

    v15 = [objc_alloc(MEMORY[0x277D7BB60]) initWithConfiguration:v8 context:self->_wifiPickerContext];
    [(HUServiceDetailsViewController *)self setPickerManager:v15];

    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      v18 = accessoryCopy;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Setting up WiFi Picker for accessory [%@], currentlyAssociatedNetworkInfo [%@], configuration [%@]", &v17, 0x20u);
    }
  }
}

- (id)_currentAssociatedNetworkInfoForFirstPartyAccessory:(id)accessory
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  wifiNetworkInfo = [accessoryCopy wifiNetworkInfo];
  if (wifiNetworkInfo)
  {
    goto LABEL_5;
  }

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  diagnosticInfoManager = [mEMORY[0x277D146E8] diagnosticInfoManager];
  wifiNetworkInfo = [diagnosticInfoManager wifiNetworkInfoForAccessory:accessoryCopy];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = wifiNetworkInfo;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Using wifiInfo from diagnosticInfoManager: %@", &v14, 0xCu);
  }

  if (wifiNetworkInfo)
  {
LABEL_5:
    v8 = objc_alloc(MEMORY[0x277D7BB50]);
    sSID = [wifiNetworkInfo SSID];
    mACAddress = [wifiNetworkInfo MACAddress];
    formattedString = [mACAddress formattedString];
    v12 = [v8 initWithSSID:sSID securityType:0 rssi:0 macAddress:formattedString];
  }

  else
  {
    sSID = HFLogForCategory();
    if (os_log_type_enabled(sSID, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_20CEB6000, sSID, OS_LOG_TYPE_ERROR, "Error: currentlyAssociatedNetwork not found", &v14, 2u);
    }

    wifiNetworkInfo = 0;
    v12 = 0;
  }

  return v12;
}

- (void)beginScan
{
  pickerManager = [(HUServiceDetailsViewController *)self pickerManager];
  [pickerManager beginScan];
}

- (void)endScan
{
  pickerManager = [(HUServiceDetailsViewController *)self pickerManager];
  [pickerManager endScan];
}

- (void)didJoinNewNetwork
{
  if (_os_feature_enabled_impl())
  {
    if (HFSuppressNetworkDiagnosticsSymptoms())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__HUServiceDetailsViewController_didJoinNewNetwork__block_invoke;
      block[3] = &unk_277DB8488;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __51__HUServiceDetailsViewController_didJoinNewNetwork__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "Joined new network successfully. Hiding network diagnostics symptoms now.", &v12, 2u);
  }

  objc_opt_class();
  v3 = [*(a1 + 32) detailsItemManager];
  v4 = [v3 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 mediaProfileContainer];

  v8 = [v7 topSymptomsHandlerAccessory];
  [v8 hf_toggleSymptomsToShowAfterWiFiPickerFix:1];
  v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
  v10 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_handleTimer_ selector:v9 userInfo:0 repeats:120.0];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Timer to hide Network Diagnostics symptoms has started for accessory: %@ with timer: %@", &v12, 0x16u);
  }
}

- (void)handleTimer:(id)timer
{
  v9 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  if (_os_feature_enabled_impl())
  {
    userInfo = [timerCopy userInfo];
    anyObject = [userInfo anyObject];
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = anyObject;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Timer to hide Network Diagnostics symptoms has ended accessory: %@", &v7, 0xCu);
    }

    [anyObject hf_toggleSymptomsToShowAfterWiFiPickerFix:0];
  }
}

- (void)updateCurrentWiFiNetwork:(id)network
{
  networkCopy = network;
  pickerManager = [(HUServiceDetailsViewController *)self pickerManager];
  [pickerManager updateCurrentNetwork:networkCopy];
}

- (void)updateScannedWiFiNetworks:(id)networks
{
  networksCopy = networks;
  pickerManager = [(HUServiceDetailsViewController *)self pickerManager];
  [pickerManager updateScannedNetworks:networksCopy];
}

- (void)wifiPickerViewDidDisappear
{
  [(HUServiceDetailsViewController *)self setWifiPickerContext:0];

  [(HUServiceDetailsViewController *)self setPickerManager:0];
}

- (void)_presentTriggerEditorForProgrammableSwitchEventOptionItem:(id)item
{
  itemCopy = item;
  characteristics = [itemCopy characteristics];
  anyObject = [characteristics anyObject];
  hf_home = [anyObject hf_home];

  characteristics2 = [itemCopy characteristics];
  v8 = [characteristics2 na_firstObjectPassingTest:&__block_literal_global_814];

  if (v8)
  {
    if ([hf_home hf_currentUserIsAdministrator])
    {
      latestResults = [itemCopy latestResults];
      v10 = [latestResults objectForKey:@"itemIsEditable"];
      bOOLValue = [v10 BOOLValue];

      if (bOOLValue)
      {
        triggerValue = [itemCopy triggerValue];
        v13 = [v8 hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:triggerValue];

        v14 = [HUTriggerBuilderContext alloc];
        latestResults2 = [itemCopy latestResults];
        v16 = [latestResults2 objectForKey:@"triggerBuilderContext"];
        v17 = [(HUTriggerBuilderContext *)v14 initWithTriggerBuilderContext:v16];

        if (v13)
        {
          v18 = [objc_alloc(MEMORY[0x277D14668]) initWithExistingObject:v13 inHome:hf_home context:v17];
          v19 = [[HUTriggerSummaryViewController alloc] initWithTriggerBuilder:v18 mode:1 isPresentedModally:1 delegate:self];
        }

        else
        {
          home = [(HUServiceDetailsViewController *)self home];
          hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

          if (hf_currentUserIsAdministrator)
          {
            NSLog(&cfstr_UserIsNotAnAdm.isa);
            v19 = 0;
            v18 = 0;
          }

          else
          {
            v18 = [objc_alloc(MEMORY[0x277D14668]) initWithHome:hf_home context:v17];
            characteristicInterface = [v18 characteristicInterface];
            triggerValue2 = [itemCopy triggerValue];
            [characteristicInterface setCharacteristic:v8 triggerValue:triggerValue2];

            v19 = [[HUTriggerActionPickerViewController alloc] initWithTriggerBuilder:v18 mode:0 delegate:self];
            v24 = objc_alloc(MEMORY[0x277D751E0]);
            v25 = _HULocalizedStringWithDefaultValue(@"HUProgrammableSwitchTriggerSetupCancelTitle", @"HUProgrammableSwitchTriggerSetupCancelTitle", 1);
            v34 = [v24 initWithTitle:v25 style:2 target:self action:sel_dismissTriggerActionEditorViewController_];

            v26 = MEMORY[0x277CBEB18];
            navigationItem = [(HUTriggerSummaryViewController *)v19 navigationItem];
            leftBarButtonItems = [navigationItem leftBarButtonItems];
            v29 = [v26 arrayWithArray:leftBarButtonItems];

            [v29 addObject:v34];
            navigationItem2 = [(HUTriggerSummaryViewController *)v19 navigationItem];
            [navigationItem2 setLeftBarButtonItems:v29];
          }
        }

        [v18 setShouldMarkTriggerAsHomeAppCreated:{1, v34}];
        v31 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v19];
        [v31 setModalPresentationStyle:2];
        navigationController = [(HUServiceDetailsViewController *)self navigationController];
        v33 = [navigationController hu_presentPreloadableViewController:v31 animated:1];
      }
    }
  }

  else
  {
    NSLog(&cfstr_UnableToFindHu.isa);
    [hf_home hf_currentUserIsAdministrator];
  }
}

uint64_t __92__HUServiceDetailsViewController__presentTriggerEditorForProgrammableSwitchEventOptionItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 characteristicType];
  if ([v3 isEqualToString:*MEMORY[0x277CCF910]])
  {
    v4 = [MEMORY[0x277CD1D90] hf_programmableSwitchServiceTypes];
    v5 = [v2 service];
    v6 = [v5 serviceType];
    v7 = [v4 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder
{
  editorCopy = editor;
  navigationController = [(HUServiceDetailsViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v8 = [viewControllers containsObject:editorCopy];

  if (v8)
  {
    navigationController2 = [(HUServiceDetailsViewController *)self navigationController];
    v10 = [navigationController2 popToRootViewControllerAnimated:1];
    goto LABEL_11;
  }

  presentedViewController = [(HUServiceDetailsViewController *)self presentedViewController];
  navigationController3 = [editorCopy navigationController];
  v13 = presentedViewController;
  v14 = navigationController3;
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_8;
  }

  if (v13)
  {
    v16 = [v13 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    navigationController2 = [(HUServiceDetailsViewController *)self navigationController];
    [navigationController2 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_11;
  }

LABEL_10:
  navigationController2 = [MEMORY[0x277CCA890] currentHandler];
  [navigationController2 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:3047 description:@"triggerEditor:didFinishWithTriggerBuilder: shouldn't get here.  Ever."];
LABEL_11:
}

- (void)dismissTriggerActionEditorViewController:(id)controller
{
  navigationController = [(HUServiceDetailsViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_setupProgrammableSwitchCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  characteristics = [itemCopy characteristics];
  anyObject = [characteristics anyObject];

  triggerValue = [itemCopy triggerValue];
  v9 = [anyObject hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:triggerValue];

  latestResults = [itemCopy latestResults];
  v11 = [latestResults objectForKey:@"itemIsEditable"];
  bOOLValue = [v11 BOOLValue];

  latestResults2 = [itemCopy latestResults];

  v14 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D140D0]];
  LODWORD(v11) = [v14 BOOLValue];

  [cellCopy setHideIcon:1];
  [cellCopy setDisabled:bOOLValue ^ 1];
  [cellCopy setHideDescriptionIcon:v11 ^ 1];
  if ([cellCopy isDisabled])
  {
    v15 = 0;
  }

  else
  {
    v15 = 3;
  }

  [cellCopy setSelectionStyle:v15];
  hu_exclamationMarkImage = [MEMORY[0x277D755B8] hu_exclamationMarkImage];
  [cellCopy setDescriptionIcon:hu_exclamationMarkImage];

  [cellCopy setIconForegroundColorFollowsTintColor:1];
  [cellCopy setAccessoryView:0];
  [cellCopy setAccessoryType:bOOLValue];
  if (!v9 && bOOLValue)
  {
    v17 = objc_opt_new();
    [v17 _setTextColorFollowsTintColor:1];
    v18 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsProgrammableSwitchAdd", @"HUServiceDetailsProgrammableSwitchAdd", 1);
    [v17 setText:v18];

    [v17 sizeToFit];
    [cellCopy setAccessoryView:v17];
  }
}

- (void)setShouldTrackProgrammableSwitchActivations:(BOOL)activations
{
  if (self->_shouldTrackProgrammableSwitchActivations != activations)
  {
    self->_shouldTrackProgrammableSwitchActivations = activations;
  }
}

- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic
{
  serviceCopy = service;
  characteristicCopy = characteristic;
  if ([(HUServiceDetailsViewController *)self shouldTrackProgrammableSwitchActivations])
  {
    hf_programmableSwitchServiceTypes = [MEMORY[0x277CD1D90] hf_programmableSwitchServiceTypes];
    serviceType = [serviceCopy serviceType];
    if (([hf_programmableSwitchServiceTypes containsObject:serviceType] & 1) == 0)
    {
      goto LABEL_7;
    }

    characteristicType = [characteristicCopy characteristicType];
    v12 = [characteristicType isEqualToString:*MEMORY[0x277CCF910]];

    if (v12)
    {
      v13 = +[HOActivationManager sharedInstance];
      hf_programmableSwitchServiceTypes = [v13 lastEnteredForegroundDate];

      valueUpdatedTime = [characteristicCopy valueUpdatedTime];
      v15 = [valueUpdatedTime compare:hf_programmableSwitchServiceTypes];

      if (v15 == -1)
      {
LABEL_8:

        goto LABEL_9;
      }

      serviceType = [characteristicCopy value];
      if (serviceType)
      {
        itemManager = [(HUItemTableViewController *)self itemManager];
        allDisplayedItems = [itemManager allDisplayedItems];
        v19 = MEMORY[0x277D85DD0];
        v20 = 3221225472;
        v21 = __84__HUServiceDetailsViewController_accessory_service_didUpdateValueForCharacteristic___block_invoke;
        v22 = &unk_277DB95B0;
        v23 = characteristicCopy;
        v24 = serviceType;
        v18 = [allDisplayedItems na_firstObjectPassingTest:&v19];

        [(HUItemTableViewController *)self highlightItemAnimated:v18, v19, v20, v21, v22];
      }

LABEL_7:

      goto LABEL_8;
    }
  }

LABEL_9:
}

BOOL __84__HUServiceDetailsViewController_accessory_service_didUpdateValueForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && ([v6 characteristics], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", *(a1 + 32)), v7, v8))
  {
    v9 = [v6 triggerValue];
    v10 = [v9 compare:*(a1 + 40)] == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)softwareUpdateModuleController:(id)controller dismissViewController:(id)viewController
{
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HUServiceDetailsViewController_softwareUpdateModuleController_dismissViewController___block_invoke;
  v8[3] = &unk_277DB8488;
  v6 = v5;
  v9 = v6;
  [(HUServiceDetailsViewController *)self dismissViewControllerAnimated:1 completion:v8];

  return v6;
}

- (id)softwareUpdateModuleController:(id)controller navigateToViewController:(id)viewController
{
  viewControllerCopy = viewController;
  navigationController = [(HUServiceDetailsViewController *)self navigationController];
  v7 = [navigationController hu_pushPreloadableViewController:viewControllerCopy animated:1];

  return v7;
}

- (void)didRemoveCHIPPairingforAccessory:(id)accessory
{
  v25 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = accessoryCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Receive CHIPPairing removal for: %@", &v23, 0xCu);
  }

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItem = [detailsItemManager sourceItem];
  if ([sourceItem conformsToProtocol:&unk_2824C0788])
  {
    v8 = sourceItem;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  homeKitObject = [v9 homeKitObject];

  if ([homeKitObject isEqual:accessoryCopy] & 1) != 0 || (v14 = objc_msgSend(homeKitObject, "isEqual:", accessoryCopy), accessoryCopy) && (v14 & 1) == 0 && ((objc_msgSend(accessoryCopy, "cameraProfiles"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "containsObject:", homeKitObject), v15, (v16) || (objc_msgSend(accessoryCopy, "mediaProfile"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqual:", homeKitObject), v17, (v18) || (objc_msgSend(accessoryCopy, "profiles"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "containsObject:", homeKitObject), v19, (v20) || (objc_msgSend(accessoryCopy, "services"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "containsObject:", homeKitObject), v21, v22)))
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = homeKitObject;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Dismissing card after CHIPPairing removal of currently displayed homekitObject: %@", &v23, 0xCu);
    }

    [(HUServiceDetailsViewController *)self setRequiresPresentingViewControllerDismissal:1];
    presentationDelegate = [(HUServiceDetailsViewController *)self presentationDelegate];
    v13 = [presentationDelegate finishPresentation:self animated:1];
  }
}

- (id)childServiceEditorModuleController:(id)controller didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    navigationController2 = [[HUValveEditorViewController alloc] initWithSourceItem:v8 editorMode:0];
    navigationController = [(HUServiceDetailsViewController *)self navigationController];
    v11 = [navigationController hu_pushPreloadableViewController:navigationController2 animated:1];
  }

  else
  {
    v8 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:itemCopy];
    navigationController2 = [(HUServiceDetailsViewController *)self navigationController];
    v11 = [(HUValveEditorViewController *)navigationController2 hu_pushPreloadableViewController:v8 animated:1];
  }

  return v11;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  length = range.length;
  location = range.location;
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  viewCopy = view;
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = lCopy;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v17, 0x16u);
  }

  textViewDelegate = [(HUServiceDetailsViewController *)self textViewDelegate];
  v15 = [textViewDelegate textView:viewCopy shouldInteractWithURL:lCopy inRange:location interaction:{length, interaction}];

  return v15;
}

- (void)moduleController:(id)controller expandModule:(id)module
{
  v13 = *MEMORY[0x277D85DE8];
  moduleCopy = module;
  v6 = [[HUHomeKitAccessorySettingsDetailsViewController alloc] initWithCollapsedAccessorySettingItemModule:moduleCopy];
  navigationController = [(HUServiceDetailsViewController *)self navigationController];
  v8 = [navigationController hu_pushPreloadableViewController:v6 animated:1];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = moduleCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Now expanding module [%@] to show settings", &v11, 0xCu);
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = moduleCopy;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "User tapped to expand module %@", &v11, 0xCu);
  }
}

- (void)moduleController:(id)controller presentSettingDetailsViewController:(id)viewController
{
  v12 = *MEMORY[0x277D85DE8];
  viewControllerCopy = viewController;
  if (viewControllerCopy)
  {
    navigationController = [(HUServiceDetailsViewController *)self navigationController];
    v7 = [navigationController hu_pushPreloadableViewController:viewControllerCopy animated:1];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = viewControllerCopy;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Now presenting settings details view controller [%@]", &v10, 0xCu);
    }

    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = viewControllerCopy;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "User tapped to present settings details view controller [%@]", &v10, 0xCu);
    }
  }
}

- (void)_presentContainedItems
{
  isItemGroup = [(HUServiceDetailsViewController *)self isItemGroup];
  if (isItemGroup)
  {
    v6 = a2;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    item = [(HUServiceDetailsViewController *)self item];
    if ([item conformsToProtocol:&unk_282587E50])
    {
      v6 = a2;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      item2 = [(HUServiceDetailsViewController *)self item];
      v25 = item2;
      if ([item2 conformsToProtocol:&unk_282587D40])
      {
        v6 = a2;
        v7 = 0;
        v8 = 1;
      }

      else
      {
        item3 = [(HUServiceDetailsViewController *)self item];
        if (([item3 conformsToProtocol:&unk_28251B268] & 1) == 0)
        {

LABEL_17:
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          item4 = [(HUServiceDetailsViewController *)self item];
          [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:3240 description:{@"Selected 'showContainedServices' row, but the displayed item doesn't conform to the right protocols: %@", item4}];

          goto LABEL_18;
        }

        v24 = item3;
        v6 = a2;
        v7 = 1;
        v8 = 1;
      }
    }
  }

  item5 = [(HUServiceDetailsViewController *)self item];
  v12 = [item5 conformsToProtocol:&unk_2824C0828];

  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v8)
  {
LABEL_13:
  }

LABEL_14:
  if (!isItemGroup)
  {
  }

  a2 = v6;
  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  objc_opt_class();
  item6 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v16 = item6;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;

  item7 = [(HUServiceDetailsViewController *)self item];
  if ([item7 conformsToProtocol:&unk_282587E50])
  {

LABEL_24:
    item8 = [(HUServiceDetailsViewController *)self item];
    goto LABEL_26;
  }

  item9 = [(HUServiceDetailsViewController *)self item];
  v19 = [item9 conformsToProtocol:&unk_282587D40];

  if (v19)
  {
    goto LABEL_24;
  }

  item8 = 0;
LABEL_26:
  if (v26 | item8)
  {
    v21 = [[HUContainedAccessoryElementsGridViewController alloc] initWithServiceContainingItem:item8 mediaItem:v26 isPresentedModally:0 shouldGroupByRoom:1 valueSource:0];
    [(HUContainedAccessoryElementsGridViewController *)v21 setServiceGridDelegate:self];
    [(HUContainedAccessoryElementsGridViewController *)v21 setPresentationDelegate:self];
    navigationController = [(HUServiceDetailsViewController *)self navigationController];
    v23 = [navigationController hu_pushPreloadableViewController:v21 animated:1];
  }

  else
  {
    item8 = [MEMORY[0x277CCA890] currentHandler];
    [item8 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:3292 description:@"Unable to present grouped accessory view controller; please file a radar on Home App | New Bugs"];
  }
}

- (void)_presentGroupPicker
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    item = [(HUServiceDetailsViewController *)self item];
    v24 = 136315650;
    v25 = "[HUServiceDetailsViewController _presentGroupPicker]";
    v26 = 2112;
    selfCopy = self;
    v28 = 2112;
    v29 = item;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "User selected %s(%@) for %@", &v24, 0x20u);
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || ([(HUServiceDetailsViewController *)self item], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) == 0))
  {
    item2 = [(HUServiceDetailsViewController *)self item];
    services = [item2 services];

    objc_opt_class();
    item3 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v16 = item3;
    }

    else
    {
      v16 = 0;
    }

    v12 = v16;

    if (v12)
    {
      accessory = [(HUMediaSystemEditorViewController *)v12 accessory];
      hf_groupableServices = [accessory hf_groupableServices];

      services = hf_groupableServices;
    }

    allObjects = [services allObjects];
    itemManager = [(HUItemTableViewController *)self itemManager];
    home = [itemManager home];
    v22 = [HUServiceGroupEditorViewController forCreatingNewServiceGroupWithServices:allObjects inHome:home];

    [v22 setPresentationDelegate:self];
    [v22 setServiceGroupEditorDelegate:self];
    v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v22];
  }

  else
  {
    item4 = [(HUServiceDetailsViewController *)self item];
    services = [item4 accessories];

    v9 = [HUMediaSystemEditorViewController alloc];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    home2 = [itemManager2 home];
    v12 = [(HUMediaSystemEditorViewController *)v9 initWithAccessories:services home:home2];

    [(HUMediaSystemEditorViewController *)v12 setPresentationDelegate:self];
    [(HUMediaSystemEditorViewController *)v12 setDelegate:self];
    v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
  }

  [v13 setModalPresentationStyle:2];
  v23 = [(UIViewController *)self hu_presentPreloadableViewController:v13 animated:1];
}

- (void)_identifyHomePod
{
  v23 = *MEMORY[0x277D85DE8];
  homePodIdentifyFuture = [(HUServiceDetailsViewController *)self homePodIdentifyFuture];
  if (homePodIdentifyFuture && (v5 = homePodIdentifyFuture, -[HUServiceDetailsViewController homePodIdentifyFuture](self, "homePodIdentifyFuture"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isFinished], v6, v5, (v7 & 1) == 0))
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      homePodIdentifyFuture2 = [(HUServiceDetailsViewController *)self homePodIdentifyFuture];
      homePodIdentifyFuture3 = [(HUServiceDetailsViewController *)self homePodIdentifyFuture];
      *buf = 138413058;
      selfCopy = self;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = homePodIdentifyFuture2;
      v21 = 1024;
      isFinished = [homePodIdentifyFuture3 isFinished];
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Ignoring because previous Identify future not completed: %@ isFinished = %{BOOL}d", buf, 0x26u);
    }
  }

  else
  {
    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    sourceItemAccessory = [detailsItemManager sourceItemAccessory];

    hf_identifyHomePod = [sourceItemAccessory hf_identifyHomePod];
    [(HUServiceDetailsViewController *)self setHomePodIdentifyFuture:hf_identifyHomePod];
  }
}

- (void)_separateOrUnifyTile
{
  v32 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  item = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = item;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  item2 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v7 = item2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  item3 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v10 = item3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v5)
  {
    accessory = [v5 accessory];
    if (!accessory)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v8)
    {
      service = [v8 service];
    }

    else
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      service = [v11 profile];
    }

    v14 = service;
    accessory = [service accessory];

    if (!accessory)
    {
      goto LABEL_23;
    }
  }

  hf_showAsIndividualServices = [accessory hf_showAsIndividualServices];
  v16 = [accessory hf_setShowAsIndividualServices:hf_showAsIndividualServices ^ 1u];
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"YES";
    if (hf_showAsIndividualServices)
    {
      v18 = @"NO";
    }

    *buf = 138412546;
    v29 = accessory;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Service Details Updating accessory %@ to show individual services %@", buf, 0x16u);
  }

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __54__HUServiceDetailsViewController__separateOrUnifyTile__block_invoke;
  v25 = &unk_277DB7E68;
  v26 = accessory;
  selfCopy = self;
  v19 = accessory;
  v20 = [v16 addSuccessBlock:&v22];
  v21 = [v16 addFailureBlock:{&__block_literal_global_879, v22, v23, v24, v25}];

LABEL_23:
}

void __54__HUServiceDetailsViewController__separateOrUnifyTile__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HUServiceDetailsViewController__separateOrUnifyTile__block_invoke_2;
  v15[3] = &unk_277DBEF60;
  v16 = *(a1 + 32);
  [v2 dispatchAccessoryObserverMessage:v15 sender:0];

  v3 = [*(a1 + 40) presentationDelegate];
  v4 = [v3 finishPresentation:*(a1 + 40) animated:1];

  if (([*(a1 + 40) shouldDisableAdditionalDismissalForTogglingSeparatingTiles] & 1) == 0)
  {
    v5 = [*(a1 + 40) presentingViewController];
    v6 = [v5 presentingViewController];

    if (v6)
    {
      do
      {
        v7 = [v5 childViewControllers];
        v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_877];

        if (v8)
        {
          objc_opt_class();
          v9 = v8;
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;

          v12 = [v11 requestDismissal];
        }

        else
        {
          [v5 dismissViewControllerAnimated:1 completion:0];
        }

        v13 = [v5 presentingViewController];

        v14 = [v13 presentingViewController];

        v5 = v13;
      }

      while (v14);
    }

    else
    {
      v13 = v5;
    }
  }
}

void __54__HUServiceDetailsViewController__separateOrUnifyTile__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryDidUpdateApplicationData:*(a1 + 32)];
  }
}

uint64_t __54__HUServiceDetailsViewController__separateOrUnifyTile__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __54__HUServiceDetailsViewController__separateOrUnifyTile__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

- (void)_didSelectRoomItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    serviceLikeBuilder = [detailsItemManager serviceLikeBuilder];
    room = [serviceLikeBuilder room];

    latestResults = [itemCopy latestResults];
    v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14088]];

    v7Room = [room room];
    uniqueIdentifier = [v7Room uniqueIdentifier];
    room2 = [v9 room];
    uniqueIdentifier2 = [room2 uniqueIdentifier];
    v14 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if ((v14 & 1) == 0)
    {
      detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v16 = [detailsItemManager2 selectRoom:v9];

      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __53__HUServiceDetailsViewController__didSelectRoomItem___block_invoke;
      v26 = &unk_277DB7E68;
      selfCopy = self;
      v28 = v9;
      v17 = [v16 addSuccessBlock:&v23];
      v18 = [(HUServiceDetailsViewController *)self detailsItemManager:v23];
      suggestedRoomItemProvider = [v18 suggestedRoomItemProvider];
      items = [suggestedRoomItemProvider items];
      v21 = [items containsObject:itemCopy];

      if (v21)
      {
        v22 = [v16 addFailureBlock:&__block_literal_global_881];
      }
    }
  }
}

void __53__HUServiceDetailsViewController__didSelectRoomItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) room];
  [v2 _notifyOfHomePodPairingIfNecessary:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) name];
  LOBYTE(v4) = [v4 _notifyOfHomeTheaterReconfigurationIfNecessary:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) room];
    [v6 _offerToCreateHomeTheaterIfPossible:v7];
  }
}

void __53__HUServiceDetailsViewController__didSelectRoomItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3 operationType:*MEMORY[0x277D13BE8] options:0 retryBlock:0 cancelBlock:0];
}

- (void)_notifyOfHomePodPairingIfNecessary:(id)necessary
{
  v47 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];

  objc_opt_class();
  item = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v9 = item;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    mediaProfileContainer = [v10 mediaProfileContainer];
    accessories = [mediaProfileContainer accessories];
    v13 = [accessories count];

    if (v13 <= 1 && [mediaProfileContainer hf_supportsStereoPairing])
    {
      hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
      supportedStereoPairVersions = [hf_backingAccessory supportedStereoPairVersions];

      if (supportedStereoPairVersions)
      {
        v16 = MEMORY[0x277CBEB98];
        v17 = [necessaryCopy availableHomePodsSupportingStereoPairingVersions:supportedStereoPairVersions];
        v18 = [v16 setWithArray:v17];

        accessories2 = [v10 accessories];
        v20 = [v18 na_setByRemovingObjectsFromSet:accessories2];

        v21 = [v20 na_any:&__block_literal_global_883];
        if ([v20 count] && (v21 & 1) == 0)
        {
          v22 = MEMORY[0x277D75110];
          v23 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsViewControllerHomePodRoomChangePromptTitle", @"HUServiceDetailsViewControllerHomePodRoomChangePromptTitle", 1);
          v24 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsViewControllerHomePodRoomChangePromptMessage", @"HUServiceDetailsViewControllerHomePodRoomChangePromptMessage", 1);
          v25 = [v22 alertControllerWithTitle:v23 message:v24 preferredStyle:1];

          objc_initWeak(location, self);
          v26 = MEMORY[0x277D750F8];
          v27 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsViewControllerHomePodRoomChangePromptActionUseAsPair", @"HUServiceDetailsViewControllerHomePodRoomChangePromptActionUseAsPair", 1);
          v34 = MEMORY[0x277D85DD0];
          v35 = 3221225472;
          v36 = __69__HUServiceDetailsViewController__notifyOfHomePodPairingIfNecessary___block_invoke_2;
          v37 = &unk_277DBBFE0;
          objc_copyWeak(&v41, location);
          v38 = v20;
          v39 = v10;
          v40 = home;
          v28 = [v26 actionWithTitle:v27 style:0 handler:&v34];
          [v25 addAction:{v28, v34, v35, v36, v37}];

          v29 = MEMORY[0x277D750F8];
          v30 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsViewControllerHomePodRoomChangePromptActionNotNow", @"HUServiceDetailsViewControllerHomePodRoomChangePromptActionNotNow", 1);
          v31 = [v29 actionWithTitle:v30 style:0 handler:0];
          [v25 addAction:v31];

          hf_topmostViewController = [(HUServiceDetailsViewController *)self hf_topmostViewController];
          [hf_topmostViewController presentViewController:v25 animated:1 completion:0];

          objc_destroyWeak(&v41);
          objc_destroyWeak(location);
        }
      }

      else
      {
        v18 = HFLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v33 = NSStringFromSelector(a2);
          *location = 138412802;
          *&location[4] = self;
          v43 = 2112;
          v44 = v33;
          v45 = 2112;
          v46 = mediaProfileContainer;
          _os_log_error_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_ERROR, "%@:%@ HomePod has no stereo pairing versions: %@", location, 0x20u);
        }
      }
    }
  }
}

void __69__HUServiceDetailsViewController__notifyOfHomePodPairingIfNecessary___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained _commitBuilder];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__HUServiceDetailsViewController__notifyOfHomePodPairingIfNecessary___block_invoke_3;
  v5[3] = &unk_277DBEFB0;
  v6 = a1[4];
  v7 = a1[5];
  v8 = WeakRetained;
  v9 = a1[6];
  v4 = [v3 addSuccessBlock:v5];
}

void __69__HUServiceDetailsViewController__notifyOfHomePodPairingIfNecessary___block_invoke_3(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count] == 1 && (v2 = MEMORY[0x277CBEB98], objc_msgSend(*(a1 + 40), "accessories"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "anyObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "anyObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "setWithObjects:", v4, v5, 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = +[HUMediaSystemEditorUtilities wouldPairingAccessoriesNecessitateConfiguration:](HUMediaSystemEditorUtilities, "wouldPairingAccessoriesNecessitateConfiguration:", v6), v6, v5, v4, v3, !v7))
  {
    v16 = objc_alloc(MEMORY[0x277D14830]);
    v17 = [*(a1 + 32) anyObject];
    v18 = [v17 home];
    v11 = [v16 initWithHome:v18];

    v19 = [*(a1 + 32) anyObject];
    [v11 addAccessory:v19];

    v20 = [*(a1 + 40) accessories];
    v21 = [v20 anyObject];
    [v11 addAccessory:v21];

    v22 = objc_alloc(MEMORY[0x277D149D8]);
    v23 = [*(a1 + 32) anyObject];
    v24 = [v23 room];
    v25 = [*(a1 + 32) anyObject];
    v26 = [v25 home];
    v27 = [v22 initWithExistingObject:v24 inHome:v26];
    [v11 setRoom:v27];

    v28 = [v11 commitItem];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __69__HUServiceDetailsViewController__notifyOfHomePodPairingIfNecessary___block_invoke_4;
    v33[3] = &unk_277DBEF88;
    v33[4] = *(a1 + 48);
    v29 = [v28 addCompletionBlock:v33];
  }

  else
  {
    v8 = [HUMediaSystemEditorViewController alloc];
    v9 = [*(a1 + 40) accessories];
    v10 = [(HUMediaSystemEditorViewController *)v8 initWithAccessories:v9 home:*(a1 + 56)];

    v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
    [(HUMediaSystemEditorViewController *)v10 setPresentationDelegate:*(a1 + 48)];
    v34[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [v11 setViewControllers:v12];

    [v11 setModalPresentationStyle:2];
    v13 = [*(a1 + 48) hu_presentPreloadableViewController:v11 animated:1];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __69__HUServiceDetailsViewController__notifyOfHomePodPairingIfNecessary___block_invoke_5;
    v30[3] = &unk_277DB7E68;
    v31 = *(a1 + 32);
    v32 = v10;
    v14 = v10;
    v15 = [v13 addSuccessBlock:v30];
  }
}

void __69__HUServiceDetailsViewController__notifyOfHomePodPairingIfNecessary___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v5 = [MEMORY[0x277D14640] sharedHandler];
    [v5 handleError:v6];
  }

  else
  {
    [*(a1 + 32) mediaSystemEditor:0 didCreate:a2];
  }
}

void __69__HUServiceDetailsViewController__notifyOfHomePodPairingIfNecessary___block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) count] == 1)
  {
    v2 = [*(a1 + 32) anyObject];
    [*(a1 + 40) createMediaSystemWithAccessory:v2];
  }
}

- (BOOL)_notifyOfHomeTheaterReconfigurationIfNecessary:(id)necessary
{
  v64 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if ([(HUServiceDetailsViewController *)self _shouldShowHomeTheaterPrompt])
  {
    v6 = MEMORY[0x277D14810];
    item = [(HUServiceDetailsViewController *)self item];
    v8 = [v6 mediaProfileContainerForItem:item forTopLevel:1];

    v43 = [MEMORY[0x277D14810] isAppleTV:v8];
    itemManager = [(HUItemTableViewController *)self itemManager];
    home = [itemManager home];
    v11 = [home hf_relatedHomeTheaterMediaProfileContainerFor:v8];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138413058;
      selfCopy2 = self;
      v58 = 2112;
      v59 = v13;
      v60 = 2112;
      v61 = v8;
      v62 = 2112;
      v63 = v11;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_INFO, "%@:%@ Looking for Odeon config. mediaProfileContainer: %@ relatedHomeTheaterMediaProfileContainer: %@", buf, 0x2Au);
    }

    objc_opt_class();
    item2 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v15 = item2;
    }

    else
    {
      v15 = 0;
    }

    v16 = v11 != 0;
    v17 = HFLogForCategory();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v18)
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        selfCopy2 = v19;
        v58 = 2112;
        v59 = v8;
        v60 = 2112;
        v61 = v11;
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@: Moving A, which is in a home theater group with B:\n\tA: %@\n\tB: %@", buf, 0x20u);
      }

      v26 = @"HUMoveHomeTheaterAlert_HomePod_Sensor_Body";
      if (!v15)
      {
        v26 = @"HUMoveHomeTheaterAlert_HomePod_Body";
      }

      if (v43)
      {
        v27 = @"HUMoveHomeTheaterAlert_AppleTV_Body";
      }

      else
      {
        v27 = v26;
      }

      if (v43)
      {
        v28 = @"HUMoveHomeTheaterAlert_AppleTV_Button";
      }

      else
      {
        v28 = @"HUMoveHomeTheaterAlert_HomePod_Button";
      }

      v17 = HULocalizedStringWithFormat(v27, @"%@", v20, v21, v22, v23, v24, v25, necessaryCopy);
      _HULocalizedStringWithDefaultValue(v28, v28, 1);
      v29 = v44 = v8;
      v30 = MEMORY[0x277D75110];
      v31 = _HULocalizedStringWithDefaultValue(@"HUMoveHomeTheaterAlert_Title", @"HUMoveHomeTheaterAlert_Title", 1);
      [v30 alertControllerWithTitle:v31 message:v17 preferredStyle:1];
      v32 = v45 = necessaryCopy;

      v33 = MEMORY[0x277D750F8];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke;
      v51[3] = &unk_277DBF000;
      v51[4] = self;
      v54 = a2;
      v34 = v44;
      v52 = v34;
      v55 = v43;
      v35 = v11;
      v53 = v35;
      v36 = [v33 actionWithTitle:v29 style:0 handler:v51];
      [v32 addAction:v36];

      v37 = MEMORY[0x277D750F8];
      v38 = _HULocalizedStringWithDefaultValue(@"HUMoveHomeTheaterAlert_All_Button", @"HUMoveHomeTheaterAlert_All_Button", 1);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke_920;
      v46[3] = &unk_277DBF0A0;
      v46[4] = self;
      v50 = a2;
      v47 = v45;
      v48 = v34;
      v49 = v35;
      v39 = [v37 actionWithTitle:v38 style:0 handler:v46];
      [v32 addAction:v39];

      hf_topmostViewController = [(HUServiceDetailsViewController *)self hf_topmostViewController];
      [hf_topmostViewController presentViewController:v32 animated:1 completion:0];

      necessaryCopy = v45;
      v8 = v44;
      v16 = 1;
    }

    else if (v18)
    {
      v41 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy2 = self;
      v58 = 2112;
      v59 = v41;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ Did not find any related Home Theaters, skipping move prompt.", buf, 0x16u);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(*(a1 + 56));
    v5 = *(a1 + 40);
    *buf = 138412802;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@:%@ Moving home theater accessory %@ out of group.", buf, 0x20u);
  }

  v6 = 48;
  if (*(a1 + 64))
  {
    v6 = 40;
  }

  v7 = [*(a1 + v6) hf_backingAccessory];
  v8 = [v7 audioDestinationController];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke_916;
  v12[3] = &unk_277DBEFD8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v13 = v8;
  v14 = v10;
  v12[4] = v9;
  v11 = v8;
  [v11 updateDestination:0 completionHandler:v12];
}

void __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke_916(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 48));
    v7 = *(a1 + 40);
    v8 = 138413058;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ AppleTV destination controller %@ destination cleared, with error: %@", &v8, 0x2Au);
  }
}

void __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke_920(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(*(a1 + 64));
    v5 = *(a1 + 40);
    *buf = 138412802;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@:%@ Moving all home theater accessories in this group to room: %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) _roomUpdateBuilderFor:*(a1 + 48)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke_921;
  v13[3] = &unk_277DBF078;
  v16 = *(a1 + 64);
  v12 = *(a1 + 32);
  v7 = *(&v12 + 1);
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v14 = v12;
  v15 = v10;
  v11 = [v6 addSuccessBlock:v13];
}

void __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke_921(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 64));
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) accessories];
    *buf = 138413058;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v26 = v7;
    LOWORD(v27) = 2048;
    *(&v27 + 2) = [v8 count];
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_INFO, "%@:%@ Moved accessory to room. accessory: %@ room: %lu", buf, 0x2Au);
  }

  v9 = [*(a1 + 48) accessories];
  v10 = [v9 count] == 0;

  if (!v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = __Block_byref_object_copy__17;
    *&v27 = __Block_byref_object_dispose__17;
    *(&v27 + 1) = 0;
    v11 = [*(a1 + 56) accessories];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke_922;
    v24[3] = &unk_277DBF028;
    v24[4] = buf;
    [v11 na_any:v24];

    if (*(*&buf[8] + 40))
    {
      v12 = objc_alloc(MEMORY[0x277D149D8]);
      v13 = *(*&buf[8] + 40);
      v14 = [v13 home];
      v15 = [v12 initWithExistingObject:v13 inHome:v14];

      v16 = [*(a1 + 48) accessories];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke_2;
      v20[3] = &unk_277DBF050;
      v17 = *(a1 + 64);
      v20[4] = *(a1 + 32);
      v22 = buf;
      v23 = v17;
      v18 = v15;
      v21 = v18;
      [v16 na_each:v20];

      v19 = [v18 commitItem];
      _Block_object_dispose(buf, 8);
    }

    else
    {
      _Block_object_dispose(buf, 8);
    }
  }
}

BOOL __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke_922(uint64_t a1, void *a2)
{
  v3 = [a2 room];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

void __81__HUServiceDetailsViewController__notifyOfHomeTheaterReconfigurationIfNecessary___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 56));
    v7 = [*(*(*(a1 + 48) + 8) + 40) name];
    v8 = 138413058;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_INFO, "%@:%@ Moving %@ to room %@", &v8, 0x2Au);
  }

  [*(a1 + 40) addAccessory:v3];
}

- (void)_offerToCreateHomeTheaterIfPossible:(id)possible
{
  v50 = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  if (possibleCopy && [(HUServiceDetailsViewController *)self _shouldShowHomeTheaterPrompt])
  {
    objc_opt_class();
    item = [(HUServiceDetailsViewController *)self item];
    v7 = (objc_opt_isKindOfClass() & 1) != 0 ? item : 0;
    v8 = v7;

    if (!v8)
    {
      v9 = MEMORY[0x277D14810];
      item2 = [(HUServiceDetailsViewController *)self item];
      v11 = [v9 mediaProfileContainerForItem:item2 forTopLevel:1];

      v12 = [MEMORY[0x277D14810] isAppleTV:v11];
      v13 = [possibleCopy availableHomeTheaterMediaPartnerFor:v11];
      if ([v13 hf_supportsHomeTheater])
      {
        v14 = HFLogForCategory();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            v16 = NSStringFromSelector(a2);
            *buf = 138413058;
            selfCopy2 = self;
            v44 = 2112;
            v45 = v16;
            v46 = 2112;
            v47 = v11;
            v48 = 2112;
            v49 = v13;
            _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Moving A into room with B:\n\tA: %@\n\tB: %@", buf, 0x2Au);
          }

          if (v12)
          {
            v17 = @"HUCreateHomeTheaterAlert_AppleTV_Title";
          }

          else
          {
            v17 = @"HUCreateHomeTheaterAlert_HomePod_Title";
          }

          v14 = _HULocalizedStringWithDefaultValue(v17, v17, 1);
          v18 = MEMORY[0x277D75110];
          v19 = _HULocalizedStringWithDefaultValue(@"HUCreateHomeTheaterAlert_Body", @"HUCreateHomeTheaterAlert_Body", 1);
          v36 = [v18 alertControllerWithTitle:v14 message:v19 preferredStyle:1];

          objc_initWeak(buf, self);
          v20 = MEMORY[0x277D750F8];
          v21 = _HULocalizedStringWithDefaultValue(@"HUCreateHomeTheaterAlert_Use_Button", @"HUCreateHomeTheaterAlert_Use_Button", 1);
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __70__HUServiceDetailsViewController__offerToCreateHomeTheaterIfPossible___block_invoke;
          v37[3] = &unk_277DBF0F0;
          objc_copyWeak(v40, buf);
          v38 = v11;
          v41 = v12;
          v39 = v13;
          v40[1] = a2;
          v22 = [v20 actionWithTitle:v21 style:0 handler:v37];
          [v36 addAction:v22];

          v23 = MEMORY[0x277D750F8];
          v24 = _HULocalizedStringWithDefaultValue(@"HUCreateHomeTheaterAlert_DontUse_Button", @"HUCreateHomeTheaterAlert_DontUse_Button", 1);
          v25 = [v23 actionWithTitle:v24 style:0 handler:0];
          [v36 addAction:v25];

          hf_topmostViewController = [(HUServiceDetailsViewController *)self hf_topmostViewController];
          [hf_topmostViewController presentViewController:v36 animated:1 completion:0];

          v27 = objc_alloc(MEMORY[0x277D14C98]);
          itemManager = [(HUItemTableViewController *)self itemManager];
          home = [itemManager home];
          itemManager2 = [(HUItemTableViewController *)self itemManager];
          home2 = [itemManager2 home];
          currentUser = [home2 currentUser];
          v33 = [v27 initWithHome:home user:currentUser nameStyle:0];

          v34 = [v33 setDismissHomeTheaterOnboarding:1];
          objc_destroyWeak(v40);
          objc_destroyWeak(buf);
        }

        else if (v15)
        {
          v35 = NSStringFromSelector(a2);
          *buf = 138412546;
          selfCopy2 = self;
          v44 = 2112;
          v45 = v35;
          _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Did not find any Home Theater candidates, skipping creation prompt.", buf, 0x16u);
        }
      }
    }
  }
}

void __70__HUServiceDetailsViewController__offerToCreateHomeTheaterIfPossible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _roomUpdateBuilderFor:*(a1 + 32)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__HUServiceDetailsViewController__offerToCreateHomeTheaterIfPossible___block_invoke_2;
  v5[3] = &unk_277DBF0C8;
  v10 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = WeakRetained;
  v9 = *(a1 + 56);
  v4 = [v3 addSuccessBlock:v5];
}

void __70__HUServiceDetailsViewController__offerToCreateHomeTheaterIfPossible___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 64))
  {
    v4 = 32;
  }

  else
  {
    v4 = 40;
  }

  if (*(a1 + 64))
  {
    v5 = 40;
  }

  else
  {
    v5 = 32;
  }

  if (*(a1 + 64))
  {
    v6 = @"AppleTV to room with available HomePod or HomePod Stereo Pair";
  }

  else
  {
    v6 = @"HomePod or HomePod Stereo Pair to room with available AppleTV";
  }

  v7 = [*(a1 + v4) hf_backingAccessory];
  v8 = [v7 audioDestinationController];

  v9 = [*(a1 + v5) hf_destination];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    v12 = NSStringFromSelector(*(a1 + 56));
    *buf = 138413314;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Moving %@: audioDestinationController = %@ new destination = %@", buf, 0x34u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HUServiceDetailsViewController__offerToCreateHomeTheaterIfPossible___block_invoke_942;
  v15[3] = &unk_277DBEFD8;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v16 = v6;
  v17 = v14;
  v15[4] = v13;
  [v8 updateDestination:v9 options:1 completionHandler:v15];
}

void __70__HUServiceDetailsViewController__offerToCreateHomeTheaterIfPossible___block_invoke_942(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 48));
    v7 = *(a1 + 40);
    v8 = 138413058;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ Moved %@ with error: %@", &v8, 0x2Au);
  }
}

- (id)_roomUpdateBuilderFor:(id)for
{
  v31 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if ([MEMORY[0x277D14810] isHomePodMediaSystem:forCopy] && (-[HUServiceDetailsViewController detailsItemManager](self, "detailsItemManager"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "serviceLikeBuilder"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_class(), LOBYTE(v8) = objc_msgSend(v8, "isEqual:", objc_opt_class()), v7, v6, (v8 & 1) == 0))
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
      serviceLikeBuilder = [detailsItemManager serviceLikeBuilder];
      v25 = 138412802;
      selfCopy = self;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = objc_opt_class();
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Using HFMediaSystemBuilder instead of %@ to commit changes.", &v25, 0x20u);
    }

    v14 = objc_alloc(MEMORY[0x277D14830]);
    itemManager = [(HUItemTableViewController *)self itemManager];
    home = [itemManager home];
    v17 = [v14 initWithExistingObject:forCopy inHome:home];

    detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
    serviceLikeBuilder2 = [detailsItemManager2 serviceLikeBuilder];
    room = [serviceLikeBuilder2 room];
    [v17 setRoom:room];

    objc_opt_class();
    item = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v22 = item;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    _commitBuilder = [(HUServiceDetailsViewController *)self _commitBuilderFor:v23 with:v17];
  }

  else
  {
    _commitBuilder = [(HUServiceDetailsViewController *)self _commitBuilder];
  }

  return _commitBuilder;
}

- (BOOL)_shouldShowHomeTheaterPrompt
{
  v2 = MEMORY[0x277D14810];
  item = [(HUServiceDetailsViewController *)self item];
  v4 = [v2 mediaProfileContainerForItem:item forTopLevel:1];

  if (v4)
  {
    hf_supportsHomeTheater = [v4 hf_supportsHomeTheater];
  }

  else
  {
    hf_supportsHomeTheater = 0;
  }

  return hf_supportsHomeTheater;
}

- (void)_executeSilentSoftwareUpdateCheck
{
  item = [(HUServiceDetailsViewController *)self item];
  if ([item conformsToProtocol:&unk_28251B2F8])
  {
    v3 = item;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  accessoriesSupportingSoftwareUpdate = [v4 accessoriesSupportingSoftwareUpdate];

  if ([accessoriesSupportingSoftwareUpdate count])
  {
    anyObject = [accessoriesSupportingSoftwareUpdate anyObject];
    home = [anyObject home];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__HUServiceDetailsViewController__executeSilentSoftwareUpdateCheck__block_invoke;
    v10[3] = &unk_277DB8EC0;
    v11 = home;
    v8 = home;
    if (([accessoriesSupportingSoftwareUpdate na_all:v10] & 1) == 0)
    {
      NSLog(&cfstr_AccessoriesSho.isa);
    }

    v9 = +[HUSoftwareUpdateUIManager sharedManager];
    [v9 startSilentBackgroundCheckForHome:v8];
  }
}

BOOL __67__HUServiceDetailsViewController__executeSilentSoftwareUpdateCheck__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 home];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_fetchAccessoryDiagnosticInfo
{
  v26 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  item = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = item;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  home = [mEMORY[0x277D146E8] home];
  if ([home hf_currentUserIsOwner])
  {
  }

  else
  {
    mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
    home2 = [mEMORY[0x277D146E8]2 home];
    hf_currentUserIsAdministrator = [home2 hf_currentUserIsAdministrator];

    if (!hf_currentUserIsAdministrator)
    {
      goto LABEL_9;
    }
  }

  if (v5)
  {
    accessories = [v5 accessories];
    [accessories na_each:&__block_literal_global_956];
    goto LABEL_11;
  }

LABEL_9:
  accessories = HFLogForCategory();
  if (os_log_type_enabled(accessories, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x277CCABB0];
    mEMORY[0x277D146E8]3 = [MEMORY[0x277D146E8] sharedDispatcher];
    home3 = [mEMORY[0x277D146E8]3 home];
    v15 = [v12 numberWithBool:{objc_msgSend(home3, "hf_currentUserIsOwner")}];
    v16 = MEMORY[0x277CCABB0];
    mEMORY[0x277D146E8]4 = [MEMORY[0x277D146E8] sharedDispatcher];
    home4 = [mEMORY[0x277D146E8]4 home];
    v19 = [v16 numberWithBool:{objc_msgSend(home4, "hf_currentUserIsAdministrator")}];
    v20 = 138412802;
    v21 = v15;
    v22 = 2112;
    v23 = v19;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_20CEB6000, accessories, OS_LOG_TYPE_DEFAULT, "Not fetching diagnostic info: [isOwner:%@], [isAdmin:%@], [mediaAccessoryItem:%@]", &v20, 0x20u);
  }

LABEL_11:
}

void __63__HUServiceDetailsViewController__fetchAccessoryDiagnosticInfo__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 hf_linkedResidentDevice];
  if (v2)
  {
    v3 = [MEMORY[0x277D146E8] sharedDispatcher];
    v4 = [v3 diagnosticInfoManager];
    v5 = [v4 fetchDiagnosticInfoForFirstPartyAccessory:v6];
  }
}

- (void)didSelectHeaderWarningAction:(id)action
{
  v67 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: User tapped header warning/symptom", buf, 0xCu);
  }

  objc_opt_class();
  itemManager = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v8 = itemManager;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  sourceItemAccessory = [v9 sourceItemAccessory];
  hf_needsReprovisioningCheck = [sourceItemAccessory hf_needsReprovisioningCheck];

  if (hf_needsReprovisioningCheck)
  {
    sourceItemAccessory2 = [v9 sourceItemAccessory];
    home = [sourceItemAccessory2 home];

    sourceItemAccessory3 = [v9 sourceItemAccessory];
    [(HUServiceDetailsViewController *)home hf_startReprovisioningAccessory:sourceItemAccessory3];

    v15 = MEMORY[0x277CBEB98];
    sourceItem = [v9 sourceItem];
    mEMORY[0x277D148E8] = [v15 setWithObject:sourceItem];
    v18 = [v9 updateResultsForItems:mEMORY[0x277D148E8] senderSelector:a2];
LABEL_37:

    goto LABEL_38;
  }

  objc_opt_class();
  headerItem = [v9 headerItem];
  latestResults = [headerItem latestResults];
  v21 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140C0]];
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  home = v22;

  selfCopy2 = self;
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  sourceItem2 = [itemManager2 sourceItem];
  latestResults2 = [sourceItem2 latestResults];
  sourceItem = [latestResults2 objectForKey:*MEMORY[0x277D13BD0]];

  if (!sourceItem)
  {
    obj = [v9 sourceItem];
    accessories = [obj accessories];
    sourceItem = [accessories anyObject];
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  if ([(HUServiceDetailsViewController *)home type]== 1 || [(HUServiceDetailsViewController *)home type]== 2 || [(HUServiceDetailsViewController *)home type]== 20)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [sourceItem accessories];
    v26 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v26)
    {
      v27 = v26;
      v49 = v21;
      v50 = sourceItem;
      v51 = actionCopy;
      v28 = *v57;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v57 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v56 + 1) + 8 * i);
          symptomsHandler = [v30 symptomsHandler];
          symptoms = [symptomsHandler symptoms];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __63__HUServiceDetailsViewController_didSelectHeaderWarningAction___block_invoke;
          v54[3] = &unk_277DBF138;
          v55 = home;
          v33 = [symptoms na_firstObjectPassingTest:v54];

          if (v33)
          {
            sourceItem = v30;

            accessories = v55;
            actionCopy = v51;
            v21 = v49;
            goto LABEL_26;
          }
        }

        v27 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }

      actionCopy = v51;
      v21 = v49;
    }

    goto LABEL_27;
  }

LABEL_28:
  v35 = HFLogForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    type = [(HUServiceDetailsViewController *)home type];
    *buf = 138412802;
    selfCopy = home;
    v62 = 2048;
    v63 = type;
    v64 = 2112;
    v65 = sourceItem;
    _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "Trying to fix symptom %@ (type %lu) for object %@", buf, 0x20u);
  }

  if (sourceItem)
  {
    if ([(HUServiceDetailsViewController *)home type]== 7)
    {
      v37 = HFLocalizedString();
      mEMORY[0x277D148E8] = [MEMORY[0x277D75110] hu_actionSheetWithTitle:v37 message:0 anchorView:actionCopy];
      v38 = MEMORY[0x277D750F8];
      v39 = HFLocalizedString();
      v40 = [v38 actionWithTitle:v39 style:0 handler:&__block_literal_global_967];
      [mEMORY[0x277D148E8] addAction:v40];

      v41 = MEMORY[0x277D750F8];
      v42 = HFLocalizedString();
      v43 = [v41 actionWithTitle:v42 style:0 handler:&__block_literal_global_976];
      [mEMORY[0x277D148E8] addAction:v43];

      v44 = MEMORY[0x277D750F8];
      v45 = HFLocalizedString();
      v46 = [v44 actionWithTitle:v45 style:1 handler:0];
      [mEMORY[0x277D148E8] addAction:v46];

      [(HUServiceDetailsViewController *)selfCopy2 presentViewController:mEMORY[0x277D148E8] animated:0 completion:0];
      goto LABEL_37;
    }

    if ([(HUServiceDetailsViewController *)home type]== 14)
    {
      mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
      hf_wifiSettingsURL = [MEMORY[0x277CBEBC0] hf_wifiSettingsURL];
      v48 = [mEMORY[0x277D148E8] openURL:hf_wifiSettingsURL];

      goto LABEL_37;
    }

    if (home)
    {
      mEMORY[0x277D148E8] = [MEMORY[0x277D14B80] sharedManager];
      [mEMORY[0x277D148E8] fixSymptom:home forFixableObject:sourceItem presentingViewController:selfCopy2];
      home = v21;
      goto LABEL_37;
    }
  }

LABEL_38:
}

void __63__HUServiceDetailsViewController_didSelectHeaderWarningAction___block_invoke_965()
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com"];
  v0 = [MEMORY[0x277D148E8] sharedInstance];
  v1 = [v0 openURL:v2];
}

void __63__HUServiceDetailsViewController_didSelectHeaderWarningAction___block_invoke_2()
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"tel://800-692-7753"];
  v0 = [MEMORY[0x277D148E8] sharedInstance];
  v1 = [v0 openURL:v2];
}

- (id)_recoverItemBuilder:(id)builder fromError:(id)error
{
  errorCopy = error;
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItem = [detailsItemManager sourceItem];
  if ([sourceItem conformsToProtocol:&unk_2824C0788])
  {
    v8 = sourceItem;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  homeKitObject = [v9 homeKitObject];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([homeKitObject hf_isValidObject] & 1) == 0)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithError:errorCopy];
  }

  v12 = futureWithNoResult;

  return v12;
}

- (void)accessoryDidUpdateControllable:(id)controllable
{
  controllableCopy = controllable;
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItem = [detailsItemManager sourceItem];
  if ([sourceItem conformsToProtocol:&unk_2824C0788])
  {
    v8 = sourceItem;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  homeKitObject = [v9 homeKitObject];

  detailsItemManager2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItem2 = [detailsItemManager2 sourceItem];
  if ([sourceItem2 conformsToProtocol:&unk_28251AC90])
  {
    v13 = sourceItem2;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  accessoryRepresentableObject = [v14 accessoryRepresentableObject];

  if (accessoryRepresentableObject || ((accessoryRepresentableObject = homeKitObject, ![accessoryRepresentableObject conformsToProtocol:&unk_2825BCA78]) ? (v16 = 0) : (v16 = accessoryRepresentableObject), v17 = v16, accessoryRepresentableObject, v17))
  {
    hf_associatedAccessories = [accessoryRepresentableObject hf_associatedAccessories];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__HUServiceDetailsViewController_accessoryDidUpdateControllable___block_invoke;
    v22[3] = &unk_277DB8EC0;
    v23 = controllableCopy;
    v19 = [hf_associatedAccessories na_any:v22];

    if (v19)
    {
      itemManager = [(HUItemTableViewController *)self itemManager];
      v21 = [itemManager reloadAndUpdateAllItemsFromSenderSelector:a2];
    }
  }
}

uint64_t __65__HUServiceDetailsViewController_accessoryDidUpdateControllable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) uniqueIdentifier];
    v6 = [v3 uniqueIdentifier];
    v4 = [v5 isEqual:v6];
  }

  return v4;
}

- (void)accessoryDidUpdateServices:(id)services
{
  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItem = [detailsItemManager sourceItem];
  if ([sourceItem conformsToProtocol:&unk_2824C0788])
  {
    v6 = sourceItem;
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;

  v7 = v11;
  if (v11)
  {
    objc_opt_class();
    homeKitObject = [v11 homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v9 = homeKitObject;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10 && ([v10 hf_isValidObject] & 1) == 0)
    {
      [(HUServiceDetailsViewController *)self _didRemoveHomeKitObject:v10];
    }

    v7 = v11;
  }
}

- (void)_didRemoveHomeKitObject:(id)object
{
  v28 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:4009 description:{@"Invalid parameter not satisfying: %@", @"homeKitObject"}];
  }

  detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
  sourceItem = [detailsItemManager sourceItem];
  if ([sourceItem conformsToProtocol:&unk_2824C0788])
  {
    v8 = sourceItem;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  homeKitObject = [v9 homeKitObject];

  if (homeKitObject == objectCopy)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  v11 = objectCopy;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    cameraProfiles = [v13 cameraProfiles];
    v15 = [cameraProfiles containsObject:homeKitObject];

    if (v15 & 1) != 0 || ([v13 mediaProfile], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", homeKitObject), v16, (v17) || (objc_msgSend(v13, "profiles"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", homeKitObject), v18, v19))
    {

LABEL_15:
      if ([objectCopy hf_isValidObject])
      {
        NSLog(&cfstr_ThisObjectIsVa.isa);
      }

      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = objectCopy;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "HomeKit Object '%@' was removed; dismissing presented serviceDetailsViewController", buf, 0xCu);
      }

      [(HUServiceDetailsViewController *)self setRequiresPresentingViewControllerDismissal:1];
      presentationDelegate = [(HUServiceDetailsViewController *)self presentationDelegate];
      v22 = [presentationDelegate finishPresentation:self animated:1];
      goto LABEL_20;
    }

    services = [v13 services];
    v24 = [services containsObject:homeKitObject];

    if (v24)
    {
      goto LABEL_15;
    }
  }

  presentationDelegate = HFLogForCategory();
  if (os_log_type_enabled(presentationDelegate, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v11;
    _os_log_impl(&dword_20CEB6000, presentationDelegate, OS_LOG_TYPE_DEFAULT, "HomeKit Object '%@' was not removed; Unable to validate backing source item.", buf, 0xCu);
  }

LABEL_20:
}

- (void)didSelectHomeAssistantDeviceSplitAccountAction:(unint64_t)action
{
  if (action != 1)
  {
    if (action != 2)
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "Invalid split, media account action", v15, 2u);
      }

      goto LABEL_10;
    }

    detailsItemManager = [(HUServiceDetailsViewController *)self detailsItemManager];
    sourceItemIsHomePod = [detailsItemManager sourceItemIsHomePod];

    if (sourceItemIsHomePod)
    {
      objc_opt_class();
      item = [(HUServiceDetailsViewController *)self item];
      if (objc_opt_isKindOfClass())
      {
        v7 = item;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      v9 = MEMORY[0x277D143F8];
      mediaProfileContainer = [v8 mediaProfileContainer];
      accessories = [mediaProfileContainer accessories];
      v12 = [v9 logoutAccessories:accessories];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __81__HUServiceDetailsViewController_didSelectHomeAssistantDeviceSplitAccountAction___block_invoke;
      v16[3] = &unk_277DB7720;
      v17 = v8;
      selfCopy = self;
      v13 = v8;
      v14 = [v12 addCompletionBlock:v16];

LABEL_10:
    }
  }

  [(HUServiceDetailsViewController *)self _setDismissedHomePodHasNonMemberMediaAccountWarning:1];
}

void __81__HUServiceDetailsViewController_didSelectHomeAssistantDeviceSplitAccountAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) mediaProfileContainer];
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error logging out media account for [%@]:[%@]", &v7, 0x16u);
    }

    [*(a1 + 40) _setDismissedHomePodHasNonMemberMediaAccountWarning:0];
  }
}

- (void)_setDismissedHomePodHasNonMemberMediaAccountWarning:(BOOL)warning
{
  warningCopy = warning;
  objc_opt_class();
  item = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v7 = item;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  mediaProfileContainer = [v8 mediaProfileContainer];

  hf_settingsValueManager = [mediaProfileContainer hf_settingsValueManager];
  settings = [hf_settingsValueManager settings];

  v12 = [settings hf_accessorySettingAtKeyPath:*MEMORY[0x277D138E8]];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:warningCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__HUServiceDetailsViewController__setDismissedHomePodHasNonMemberMediaAccountWarning___block_invoke;
  v14[3] = &unk_277DB8E70;
  v14[4] = self;
  v14[5] = a2;
  [v12 updateValue:v13 completionHandler:v14];
}

void __86__HUServiceDetailsViewController__setDismissedHomePodHasNonMemberMediaAccountWarning___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Error setting HFHMSettingKeyPath_DismissedHomePodHasNonMemberMediaAccountWarning to YES", location, 2u);
    }
  }

  else
  {
    objc_initWeak(location, *(a1 + 32));
    v5 = MEMORY[0x277D2C900];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__HUServiceDetailsViewController__setDismissedHomePodHasNonMemberMediaAccountWarning___block_invoke_2;
    v7[3] = &unk_277DBF160;
    objc_copyWeak(v8, location);
    v8[1] = *(a1 + 40);
    v6 = [v5 futureWithBlock:v7];
    objc_destroyWeak(v8);
    objc_destroyWeak(location);
  }
}

void __86__HUServiceDetailsViewController__setDismissedHomePodHasNonMemberMediaAccountWarning___block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained detailsItemManager];
  v4 = [v3 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 40)];

  v5 = [WeakRetained detailsItemManager];
  LODWORD(v3) = [v5 diffableDataSourceDisabled];

  if (v3)
  {
    v6 = [WeakRetained tableView];
    v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [v6 reloadSections:v7 withRowAnimation:5];
LABEL_5:

    goto LABEL_6;
  }

  v8 = [WeakRetained itemManager];
  v6 = [v8 itemSectionForSectionIndex:0];

  if (v6)
  {
    v7 = [WeakRetained detailsItemManager];
    v10[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v7 reloadUIRepresentationForSections:v9 withAnimation:0];

    goto LABEL_5;
  }

LABEL_6:
}

- (id)showConnectedEcosystems
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HUServiceDetailsViewController_showConnectedEcosystems__block_invoke;
  v7[3] = &unk_277DB7580;
  v7[4] = self;
  v3 = [MEMORY[0x277D2C900] futureWithBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HUServiceDetailsViewController_showConnectedEcosystems__block_invoke_2;
  v6[3] = &unk_277DBF188;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

void __57__HUServiceDetailsViewController_showConnectedEcosystems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HUMatterConnectedServicesViewController alloc];
  v5 = [*(a1 + 32) detailsItemManager];
  v6 = [v5 connectedServicesItemModule];
  v7 = [v6 connectedServicesItemProvider];
  v8 = [(HUMatterConnectedServicesViewController *)v4 initWithConnectedServicesItemProvider:v7];

  [(HUMatterConnectedServicesViewController *)v8 setDelegate:*(a1 + 32)];
  [v3 finishWithResult:v8];
}

id __57__HUServiceDetailsViewController_showConnectedEcosystems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 navigationController];
  v5 = [v4 hu_pushPreloadableViewController:v3 animated:1];

  return v5;
}

+ (id)_buildNetworkSymptomsAnalyticsDataForAccessory:(id)accessory interactionType:(int64_t)type
{
  accessoryCopy = accessory;
  if ([accessoryCopy hf_isHomePod] && (objc_msgSend(accessoryCopy, "home"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "homeLocationStatus"), v6, v7 == 1))
  {
    symptomsHandler = [accessoryCopy symptomsHandler];
    hf_symptomsSortedByPriority = [symptomsHandler hf_symptomsSortedByPriority];

    v10 = [MEMORY[0x277CD1E88] hf_nextSymptomAfterInternetOutageInSortedList:hf_symptomsSortedByPriority];
    v11 = v10;
    if (v10 && [MEMORY[0x277CD1E80] hf_isNetworkDiagnosticsIssueForSymptomType:{objc_msgSend(v10, "type")}] && objc_msgSend(v11, "type") != 114)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "type")}];
      [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277D13648]];

      [dictionary setObject:&unk_2824919A0 forKeyedSubscript:*MEMORY[0x277D13628]];
      if (type <= 2)
      {
        v16 = qword_277DBF1C0[type];
        v17 = qword_277DBF1D8[type];
        v18 = qword_277DBF1F0[type];
        [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277D13638]];
        [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277D13630]];
        [dictionary setObject:v18 forKeyedSubscript:*MEMORY[0x277D13640]];
      }

      v12 = [dictionary copy];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_submitMetricsSymptomsInteractionForAccessory:(id)accessory interactionType:(int64_t)type
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [HUServiceDetailsViewController _buildNetworkSymptomsAnalyticsDataForAccessory:accessory interactionType:type];
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Sending HFAnalyticsEventTypeNetworkSymptomsInteraction with data=%@", &v6, 0xCu);
    }

    [MEMORY[0x277D143D8] sendEvent:59 withData:v4];
  }
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HUServiceDetailsItemManager)detailsItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsItemManager);

  return WeakRetained;
}

@end