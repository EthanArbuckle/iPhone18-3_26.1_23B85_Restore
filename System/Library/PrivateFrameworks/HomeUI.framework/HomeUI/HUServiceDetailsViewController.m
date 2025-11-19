@interface HUServiceDetailsViewController
+ (id)_buildNetworkSymptomsAnalyticsDataForAccessory:(id)a3 interactionType:(int64_t)a4;
+ (id)acceptableItemClasses;
- (BOOL)_allowRowHighlightForItem:(id)a3;
- (BOOL)_allowRowSelectionForItem:(id)a3;
- (BOOL)_isCameraItem;
- (BOOL)_notifyOfHomeTheaterReconfigurationIfNecessary:(id)a3;
- (BOOL)_shouldFollowTitleValueTintColorforItem:(id)a3;
- (BOOL)_shouldPresentRemoveRouterConfirmation;
- (BOOL)_shouldShowAddButtonForOptionItem:(id)a3;
- (BOOL)_shouldShowDetailDisclosureForItem:(id)a3;
- (BOOL)_shouldShowHomeTheaterPrompt;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasDetailsActionFor:(id)a3 item:(id)a4;
- (BOOL)itemManager:(id)a3 shouldShowControlPanelItem:(id)a4;
- (BOOL)itemManager:(id)a3 shouldShowSectionTitleForControlPanelItem:(id)a4;
- (BOOL)shouldHideFooterBelowSection:(int64_t)a3;
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HFServiceLikeItem)item;
- (HUPresentationDelegate)presentationDelegate;
- (HUServiceDetailsItemManager)detailsItemManager;
- (HUServiceDetailsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUServiceDetailsViewController)initWithServiceLikeItem:(id)a3;
- (NSString)description;
- (id)_characteristicsAffectedByControlItem:(id)a3;
- (id)_commitBuilder;
- (id)_commitBuilderFor:(id)a3 with:(id)a4;
- (id)_createMenuWithValues:(id)a3 cell:(id)a4 currentItem:(id)a5;
- (id)_currentAssociatedNetworkInfoForFirstPartyAccessory:(id)a3;
- (id)_magicallyUpdateNavigationStackForNewRootItem:(id)a3 topViewController:(id)a4;
- (id)_microphoneStatus;
- (id)_primaryStatusTextForLatestResults:(id)a3 showingSecondaryStatus:(BOOL)a4;
- (id)_recoverItemBuilder:(id)a3 fromError:(id)a4;
- (id)_removeItem;
- (id)_roomForItem:(id)a3;
- (id)_roomUpdateBuilderFor:(id)a3;
- (id)_secondaryStatusTextForLatestResults:(id)a3;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)childServiceEditorModuleController:(id)a3 didSelectItem:(id)a4;
- (id)createAccessoryDetailInfoListModuleControllerWith:(id)a3;
- (id)detailsViewControllerFor:(id)a3 item:(id)a4;
- (id)detailsViewControllerForContainedMediaAccessoryGridViewController:(id)a3 item:(id)a4;
- (id)detailsViewControllerForContainedServiceGridViewController:(id)a3 item:(id)a4;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)itemManager:(id)a3 sectionFooterForControlPanelItem:(id)a4 forServiceItem:(id)a5;
- (id)itemManager:(id)a3 sectionTitleForControlPanelItem:(id)a4 forServiceItem:(id)a5;
- (id)itemModuleControllers;
- (id)pickerViewCell:(id)a3 titleForValueAtIndex:(int64_t)a4;
- (id)showConnectedEcosystems;
- (id)softwareUpdateModuleController:(id)a3 dismissViewController:(id)a4;
- (id)softwareUpdateModuleController:(id)a3 navigateToViewController:(id)a4;
- (int64_t)numberOfValuesForPickerViewCell:(id)a3;
- (unint64_t)automaticDisablingReasonsForItem:(id)a3;
- (void)_closeButtonPressed:(id)a3;
- (void)_didRemoveHomeKitObject:(id)a3;
- (void)_didSelectRoomItem:(id)a3;
- (void)_executeSilentSoftwareUpdateCheck;
- (void)_exportDiagnosticsForItem:(id)a3;
- (void)_fetchAccessoryDiagnosticInfo;
- (void)_identifyHomePod;
- (void)_longPressRecognized:(id)a3;
- (void)_notifyOfHomePodPairingIfNecessary:(id)a3;
- (void)_offerToCreateHomeTheaterIfPossible:(id)a3;
- (void)_presentContainedItems;
- (void)_presentEcosystemAccessoryRemoveConfirmation:(id)a3;
- (void)_presentGroupPicker;
- (void)_presentHomeAccessoryRemoveConfirmation:(id)a3;
- (void)_presentRemoveConfirmation:(id)a3;
- (void)_presentRemoveFromGroupConfirmation:(id)a3;
- (void)_presentRemoveRouterConfirmation;
- (void)_presentResetHomePodConfirmation:(id)a3;
- (void)_presentTriggerEditorForProgrammableSwitchEventOptionItem:(id)a3;
- (void)_presentWiFiPickerForItem:(id)a3;
- (void)_registerButtonActionHandler:(id)a3 item:(id)a4;
- (void)_restartGroupedHomePodAccessory;
- (void)_restartHomePod;
- (void)_separateOrUnifyTile;
- (void)_setDismissedHomePodHasNonMemberMediaAccountWarning:(BOOL)a3;
- (void)_setupProgrammableSwitchCell:(id)a3 forItem:(id)a4;
- (void)_setupWiFiPickerManagerForFirstPartyAccessory:(id)a3;
- (void)_submitMetricsSymptomsInteractionForAccessory:(id)a3 interactionType:(int64_t)a4;
- (void)_updateAssociatedServiceTypeCells;
- (void)_updateCheckedStateForAssociatedServiceTypeCell:(id)a3 item:(id)a4;
- (void)_updateControlStatusText;
- (void)_updateIconDescriptorAnimated:(BOOL)a3;
- (void)_updateName:(id)a3;
- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5;
- (void)accessoryDidUpdateControllable:(id)a3;
- (void)accessoryDidUpdateServices:(id)a3;
- (void)addRoomButtonPressed:(id)a3;
- (void)beginScan;
- (void)checkForAccessoriesNeedingReprovisioning;
- (void)commitChanges;
- (void)controlPanelController:(id)a3 didEndPossibleWritesForControlItem:(id)a4;
- (void)controlPanelController:(id)a3 willBeginPossibleWritesForControlItem:(id)a4;
- (void)dealloc;
- (void)didJoinNewNetwork;
- (void)didRemoveCHIPPairingforAccessory:(id)a3;
- (void)didSelectHeaderWarningAction:(id)a3;
- (void)didSelectHomeAssistantDeviceSplitAccountAction:(unint64_t)a3;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)diffableDataItemManager:(id)a3 willUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6 isInitialLoad:(BOOL)a7;
- (void)dismissTriggerActionEditorViewController:(id)a3;
- (void)editRoomViewControllerDidFinish:(id)a3 withNewRoom:(id)a4;
- (void)endScan;
- (void)handleTimer:(id)a3;
- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5;
- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4;
- (void)itemManager:(id)a3 performUpdateRequest:(id)a4;
- (void)mediaSystemEditor:(id)a3 didAbortDueTo:(id)a4;
- (void)mediaSystemEditor:(id)a3 didCreate:(id)a4;
- (void)moduleController:(id)a3 expandModule:(id)a4;
- (void)moduleController:(id)a3 presentSettingDetailsViewController:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)pickerViewCell:(id)a3 didSelectValueAtIndex:(int64_t)a4;
- (void)serviceGroupEditor:(id)a3 didCreateServiceGroup:(id)a4;
- (void)setShouldIncludeRoomNameInHeaderTitle:(BOOL)a3;
- (void)setShouldTrackProgrammableSwitchActivations:(BOOL)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5;
- (void)textFieldDidEndEditing:(id)a3 item:(id)a4;
- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)updateCurrentWiFiNetwork:(id)a3;
- (void)updateScannedWiFiNetworks:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillDismiss;
- (void)wifiPickerViewDidDisappear;
@end

@implementation HUServiceDetailsViewController

- (id)createAccessoryDetailInfoListModuleControllerWith:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = HUServiceDetailsViewController.createAccessoryDetailInfoListModuleController(with:)(v4);

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

- (HUServiceDetailsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithServiceLikeItem_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:182 description:{@"%s is unavailable; use %@ instead", "-[HUServiceDetailsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUServiceDetailsViewController)initWithServiceLikeItem:(id)a3
{
  v102 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() acceptableItemClasses];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __58__HUServiceDetailsViewController_initWithServiceLikeItem___block_invoke;
  v93[3] = &unk_277DB8AD8;
  v6 = v4;
  v94 = v6;
  if (([v5 na_any:v93] & 1) == 0)
  {
    v7 = objc_opt_class();
    v8 = [v5 allObjects];
    v9 = [v8 na_map:&__block_literal_global_107_2];
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

    v17 = [v16 isItemGroup];
    v12->_isItemGroup = v17;
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

      v21 = [v20 accessory];
      v12->_isMultiServiceAccessory = [v21 hf_isMultiServiceAccessory];
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

        v55 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        expandedControlPanelItems = v12->_expandedControlPanelItems;
        v12->_expandedControlPanelItems = v55;

        v57 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v12 action:sel__longPressRecognized_];
        longPressRecognizer = v12->_longPressRecognizer;
        v12->_longPressRecognizer = v57;

        [(UILongPressGestureRecognizer *)v12->_longPressRecognizer setDelegate:v12];
        v59 = [(HUServiceDetailsViewController *)v12 tableView];
        [v59 addGestureRecognizer:v12->_longPressRecognizer];

        v60 = objc_alloc_init(HUServiceDetailsTextViewDelegate);
        textViewDelegate = v12->_textViewDelegate;
        v12->_textViewDelegate = v60;

        [(HUServiceDetailsTextViewDelegate *)v12->_textViewDelegate setItemManager:v11];
        [(HUServiceDetailsTextViewDelegate *)v12->_textViewDelegate setViewController:v12];
        v62 = [v13 namingComponentForHomeKitObject];
        namingComponent = v12->_namingComponent;
        v12->_namingComponent = v62;

        v64 = [MEMORY[0x277D146E8] sharedDispatcher];
        [v64 addHomeObserver:v12];

        v65 = [MEMORY[0x277D146E8] sharedDispatcher];
        [v65 addAccessoryObserver:v12];

        v66 = [v13 latestResults];
        v67 = [v66 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
        [(HUServiceDetailsViewController *)v12 setTitle:v67];

        v68 = objc_alloc_init(HUQuickControlSummaryNavigationBarTitleView);
        [(HUServiceDetailsViewController *)v12 setNavigationBarTitleView:v68];

        if (([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation] & 1) == 0)
        {
          v69 = [[HUBaseIconViewConfiguration alloc] initWithItem:v13 appearance:3];
          v70 = [(HUServiceDetailsViewController *)v12 navigationBarTitleView];
          v71 = [v70 summaryView];
          v72 = [v71 baseIconView];
          [v72 setConfiguration:v69];
        }

        if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
        {
          v73 = [HUQuickControlProxHandOffSummaryViewUpdater alloc];
          v74 = [(HUServiceDetailsViewController *)v12 navigationBarTitleView];
          v75 = [(HUQuickControlProxHandOffSummaryViewUpdater *)v73 initWithNavigationBarTitleView:v74];
          [(HUServiceDetailsViewController *)v12 setProxHandOffSummaryViewUpdater:v75];
        }

        v76 = [(HUServiceDetailsViewController *)v12 detailsItemManager];
        v77 = [v76 sourceItemAccessory];
        [(HUServiceDetailsViewController *)v12 _submitMetricsSymptomsInteractionForAccessory:v77 interactionType:0];

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
        v25 = [MEMORY[0x277D146E8] sharedDispatcher];
        v26 = [v25 home];
        v27 = [v26 hf_currentUserIsOwner];

        if (v27)
        {
          v80 = [MEMORY[0x277D14400] sharedInstance];
          v28 = [MEMORY[0x277D146E8] sharedDispatcher];
          v29 = [v28 home];
          v30 = [v29 uniqueIdentifier];
          v31 = [v30 UUIDString];
          v83 = [v80 mediaAccountForHomeIdentifier:v31];

          if (v83)
          {
            v32 = HFLogForCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = NSStringFromSelector(a2);
              v81 = [MEMORY[0x277D146E8] sharedDispatcher];
              v79 = [v81 home];
              v34 = [v79 uniqueIdentifier];
              v35 = [v34 UUIDString];
              *buf = 138412802;
              v97 = v33;
              v98 = 2112;
              v99 = v83;
              v100 = 2112;
              v101 = v35;
              _os_log_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_DEFAULT, "%@ Setting media account - [%@]  for home with identifier - [%@]", buf, 0x20u);
            }

            [(HUServiceDetailsItemManager *)v82 setHomeMediaAccount:v83];
            v36 = [(HUServiceDetailsViewController *)v12 detailsItemManager];
            v37 = [v36 reloadAndUpdateAllItemsFromSenderSelector:a2];

            v38 = [(HUServiceDetailsViewController *)v12 detailsItemManager];
            v39 = [v38 diffableDataSourceDisabled];

            if (v39)
            {
              v40 = [(HUServiceDetailsViewController *)v12 tableView];
              v41 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
              [v40 reloadSections:v41 withRowAnimation:5];
            }

            else
            {
              v49 = [(HUItemTableViewController *)v12 itemManager];
              v50 = [v49 itemSectionForSectionIndex:0];

              if (v50)
              {
                v51 = [(HUServiceDetailsViewController *)v12 detailsItemManager];
                v95 = v50;
                v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
                [v51 reloadUIRepresentationForSections:v52 withAnimation:0];
              }
            }
          }

          else
          {
            v42 = [MEMORY[0x277D14400] sharedInstance];
            v43 = [MEMORY[0x277D146E8] sharedDispatcher];
            v44 = [v43 home];
            v45 = [v42 executeHomeMediaAccountFetchForHome:v44];
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
  v3 = [(HUServiceDetailsViewController *)self accountFuture];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = HUServiceDetailsViewController;
  [(HUServiceDetailsViewController *)&v4 dealloc];
}

- (void)viewWillDismiss
{
  v2 = [(HUServiceDetailsViewController *)self detailsItemManager];
  [v2 tearDown];
}

- (NSString)description
{
  objc_opt_class();
  v3 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
    v8 = [v5 latestResults];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v10 = [v5 mediaProfileContainer];
    v11 = [v7 stringWithFormat:@"%p '%@' %@'", v5, v9, v10];

    [v6 appendString:v11 withName:@"HFMediaAccessoryItem"];
    v12 = [v6 build];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HUServiceDetailsViewController;
    v12 = [(HUItemTableViewController *)&v14 description];
  }

  return v12;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUServiceDetailsVC-viewWillAppear]", buf, 2u);
  }

  v32.receiver = self;
  v32.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v32 viewWillAppear:v3];
  v6 = [(HUServiceDetailsViewController *)self item];
  if (v6)
  {
    v7 = v6;
    v8 = [(HUServiceDetailsViewController *)self item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = objc_opt_class();
      v11 = [(HUServiceDetailsViewController *)self item];
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = v11;
        if (v12)
        {
          goto LABEL_12;
        }

        v14 = [MEMORY[0x277CCA890] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
        [v14 handleFailureInFunction:v15 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v10, objc_opt_class()}];
      }

      v13 = 0;
LABEL_12:

      if (v13)
      {
        v16 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v17 = [v16 shouldShowDeviceOptionsForAccessoryItem:v13];

        if (v17)
        {
          v18 = [(HUServiceDetailsViewController *)self detailsItemManager];
          [v18 registerKVO];
        }
      }
    }
  }

  [(HUServiceDetailsViewController *)self checkForAccessoriesNeedingReprovisioning];
  v19 = [(HUServiceDetailsViewController *)self navigationController];
  v20 = [v19 viewControllers];
  v21 = [v20 count];

  if (v21 == 1)
  {
    v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__closeButtonPressed_];
    [v22 setAccessibilityIdentifier:@"AccessoryDetails.Close"];
    v23 = [(HUServiceDetailsViewController *)self navigationItem];
    [v23 setRightBarButtonItem:v22];

    v24 = [(HUServiceDetailsViewController *)self parentViewController];
    v25 = [v24 navigationItem];
    v26 = [v25 titleView];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HUServiceDetailsViewController *)self setNavigationBarTitleView:v26];
    }

    v27 = [(HUServiceDetailsViewController *)self navigationBarTitleView];
    v28 = [(HUServiceDetailsViewController *)self navigationItem];
    [v28 setTitleView:v27];

    v29 = [MEMORY[0x277D75348] clearColor];
    v30 = [(HUServiceDetailsViewController *)self navigationBarTitleView];
    [v30 setBackgroundColor:v29];

    v31 = [(HUServiceDetailsViewController *)self navigationController];
    [v31 setDelegate:self];
  }

  [(HUServiceDetailsViewController *)self _updateControlStatusText];
  [(HUServiceDetailsViewController *)self _updateIconDescriptorAnimated:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "[HUServiceDetailsVC-viewDidAppear]", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v9 viewDidAppear:v3];
  [(HUServiceDetailsViewController *)self setShouldTrackProgrammableSwitchActivations:1];
  v6 = MEMORY[0x277D143D8];
  v11 = *MEMORY[0x277D133C8];
  v7 = [(HUServiceDetailsViewController *)self item];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v6 sendEvent:33 withData:v8];

  [(HUServiceDetailsViewController *)self _executeSilentSoftwareUpdateCheck];
  [(HUServiceDetailsViewController *)self _fetchAccessoryDiagnosticInfo];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v21.receiver = self;
  v21.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v21 viewWillDisappear:a3];
  v4 = [(HUServiceDetailsViewController *)self item];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [(HUServiceDetailsViewController *)self item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = objc_opt_class();
  v9 = [(HUServiceDetailsViewController *)self item];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9;
    if (v10)
    {
      goto LABEL_10;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_10:

  if (v11)
  {
    v14 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v15 = [v14 shouldShowDeviceOptionsForAccessoryItem:v11];

    if (v15)
    {
      v16 = [(HUServiceDetailsViewController *)self detailsItemManager];
      [v16 unregisterKVO];
    }
  }

LABEL_14:
  if ([(HUServiceDetailsViewController *)self isMovingFromParentViewController])
  {
    v17 = [(HUServiceDetailsViewController *)self navigationController];
    v18 = [v17 viewControllers];
    v19 = [v18 count];

    if (v19 >= 2)
    {
      v20 = [(HUServiceDetailsViewController *)self _commitBuilder];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v5 viewDidDisappear:a3];
  [(HUServiceDetailsViewController *)self setShouldTrackProgrammableSwitchActivations:0];
  v4 = [(HUServiceDetailsViewController *)self nameItemModuleController];
  [v4 cancelNameEdit];
}

- (void)setShouldIncludeRoomNameInHeaderTitle:(BOOL)a3
{
  if (self->_shouldIncludeRoomNameInHeaderTitle != a3)
  {
    self->_shouldIncludeRoomNameInHeaderTitle = a3;
    [(HUServiceDetailsViewController *)self _updateControlStatusText];
  }
}

- (void)commitChanges
{
  v3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v4 = [v3 nameModule];
  v5 = [v4 nameAndIconItem];
  v9 = [(HUItemTableViewController *)self textFieldForVisibleItem:v5];

  if (![v9 isEditing] || (objc_msgSend(v9, "endEditing:", 1), objc_msgSend(MEMORY[0x277D14CE8], "isAMac")))
  {
    v6 = [(HUServiceDetailsViewController *)self _commitBuilder];
    v7 = [(HUServiceDetailsViewController *)self presentationDelegate];
    v8 = [v7 finishPresentation:self animated:1];
  }
}

- (void)_closeButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUServiceDetailsVC-_closeButtonPressed]", v5, 2u);
  }

  [(HUServiceDetailsViewController *)self commitChanges];
}

- (id)_commitBuilderFor:(id)a3 with:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    NSLog(&cfstr_BuilderForItem.isa, v6);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "User committing builder for %@, builder: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = [v7 commitItem];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__HUServiceDetailsViewController__commitBuilderFor_with___block_invoke;
  v20[3] = &unk_277DBBE38;
  objc_copyWeak(&v22, buf);
  v10 = v7;
  v21 = v10;
  v11 = [v9 recover:v20];

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
  v13 = v6;
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
  v3 = [(HUServiceDetailsViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];
  [v4 setEnabled:0];

  v5 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v6 = [v5 sourceItem];

  v7 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v8 = [v7 serviceLikeBuilder];

  objc_initWeak(&location, self);
  v9 = [(HUServiceDetailsViewController *)self nameItemModuleController];
  v10 = [v9 prepareForCommit];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__HUServiceDetailsViewController__commitBuilder__block_invoke;
  v20[3] = &unk_277DB7530;
  v20[4] = self;
  v11 = [v10 addCompletionBlock:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HUServiceDetailsViewController__commitBuilder__block_invoke_2;
  v16[3] = &unk_277DBED88;
  objc_copyWeak(&v19, &location);
  v12 = v6;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v14 = [v10 flatMap:v16];

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
  v4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v5 = [v4 serviceLikeBuilder];

  if (v5)
  {
    objc_opt_class();
    v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v7 = [v6 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if ([v9 isHomePodMediaSystem])
    {
      [(HUServiceDetailsViewController *)self setRequiresPresentingViewControllerDismissal:1];
      v10 = [(HUServiceDetailsViewController *)self presentationDelegate];
      v11 = [v10 finishPresentation:self animated:1];
    }

    else
    {
      v11 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v14 = [(HUServiceDetailsViewController *)self navigationItem];
    v15 = [v14 rightBarButtonItem];
    [v15 setEnabled:0];

    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v18 = [v17 sourceItem];
      *buf = 138412546;
      v37 = v18;
      v38 = 2112;
      v39 = v5;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Preparing to remove item '%@' using builder '%@'", buf, 0x16u);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __45__HUServiceDetailsViewController__removeItem__block_invoke;
    v32[3] = &unk_277DBEDB0;
    v19 = v5;
    v33 = v19;
    objc_copyWeak(&v34, &location);
    v20 = [v11 flatMap:v32];
    if (!v11)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:612 description:{@"Invalid parameter not satisfying: %@", @"removalFuture"}];
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __45__HUServiceDetailsViewController__removeItem__block_invoke_3;
    v30[3] = &unk_277DB8CA8;
    objc_copyWeak(&v31, &location);
    v21 = [v11 addCompletionBlock:v30];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __45__HUServiceDetailsViewController__removeItem__block_invoke_4;
    v27[3] = &unk_277DB9368;
    objc_copyWeak(&v29, &location);
    v28 = v19;
    v22 = [v11 addFailureBlock:v27];
    if ([v9 supportsDirectObliteration])
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __45__HUServiceDetailsViewController__removeItem__block_invoke_2_241;
      v26[3] = &unk_277DBA338;
      v26[4] = self;
      v23 = [v11 addSuccessBlock:v26];
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v34);
  }

  else
  {
    v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v13 = [v12 sourceItem];
    NSLog(&cfstr_BuilderForItem_0.isa, v13);

    v11 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  objc_destroyWeak(&location);

  return v11;
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
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped restart HomePod", &v7, 0x16u);
  }

  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  [v6 restartAccessory];
}

- (void)_updateCheckedStateForAssociatedServiceTypeCell:(id)a3 item:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(HUServiceDetailsViewController *)self detailsItemManager];
  if ([v7 showAssociatedServiceTypeList])
  {
    v8 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v9 = [v8 selectedAssociatedServiceTypeItem];
    [v10 setChecked:{objc_msgSend(v9, "isEqual:", v6)}];
  }

  else
  {
    [v10 setChecked:0];
  }
}

- (void)addRoomButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUServiceDetailsVC-addRoomButtonPressed]", v11, 2u);
  }

  v5 = objc_alloc(MEMORY[0x277D149D8]);
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 home];
  v8 = [v5 initWithExistingObject:0 inHome:v7];

  v9 = [[HUEditRoomViewController alloc] initWithRoomBuilder:v8 presentationDelegate:self addRoomDelegate:0];
  v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
  [v10 setModalPresentationStyle:2];
  [(HUServiceDetailsViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (HFServiceLikeItem)item
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 sourceItem];

  return v3;
}

- (void)_updateControlStatusText
{
  v3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v20 = [v3 headerItem];

  v4 = [v20 latestResults];

  if (!v4)
  {
    v5 = [(HUServiceDetailsViewController *)self item];

    v20 = v5;
  }

  v6 = [(HUServiceDetailsViewController *)self navigationBarTitleView];
  v7 = [v6 summaryView];

  if (([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
  {
    v8 = [v20 latestResults];
    v9 = [(HUServiceDetailsViewController *)self _primaryStatusTextForLatestResults:v8 showingSecondaryStatus:1];
    [v7 setPrimaryText:v9];

    v10 = [v20 latestResults];
    v11 = [(HUServiceDetailsViewController *)self _secondaryStatusTextForLatestResults:v10];

    if (v11)
    {
      v12 = v7;
      v13 = v11;
LABEL_6:
      [v12 setSecondaryText:v13];
LABEL_11:

      goto LABEL_12;
    }

    v14 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v15 = [v14 sourceItemAccessory];
    v16 = [v15 hf_siriEndpointProfile];
    if (v16)
    {
    }

    else
    {
      v17 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v18 = [v17 sourceItemIsHomePod];

      if (!v18)
      {
        v12 = v7;
        v13 = 0;
        goto LABEL_6;
      }
    }

    v19 = [(HUServiceDetailsViewController *)self _microphoneStatus];
    [v7 setMicrophoneStatusText:v19];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_updateIconDescriptorAnimated:(BOOL)a3
{
  v3 = a3;
  v17 = [(HUServiceDetailsViewController *)self item];
  v5 = [v17 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  if (([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation] & 1) == 0)
  {
    v9 = [[HUBaseIconViewConfiguration alloc] initWithItem:v17 appearance:3];
    v10 = [(HUServiceDetailsViewController *)self navigationBarTitleView];
    v11 = [v10 summaryView];
    v12 = [v11 baseIconView];
    [v12 setConfiguration:v9];

    goto LABEL_12;
  }

  v7 = [v17 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D140C8]];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v13 = [v17 latestResults];
    v9 = [v13 objectForKeyedSubscript:*MEMORY[0x277D14068]];

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
  v15 = [(HUServiceDetailsViewController *)self navigationBarTitleView];
  v16 = [v15 summaryView];
  v10 = [v16 iconView];

  [v10 updateWithIconDescriptor:v6 displayStyle:v14 animated:v3];
LABEL_12:
}

- (id)_primaryStatusTextForLatestResults:(id)a3 showingSecondaryStatus:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[HUServiceDetailsViewController _primaryStatusTextForLatestResults:showingSecondaryStatus:]";
    v20 = 2112;
    v21 = v6;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_INFO, "%s %@ %d", &v18, 0x1Cu);
  }

  if (!v4)
  {
    v15 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E40]];
    if (v15)
    {
      goto LABEL_15;
    }

    v15 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E68]];
    if (v15)
    {
      goto LABEL_15;
    }
  }

  v8 = *MEMORY[0x277D13F00];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F00]];
  v10 = [v9 serviceName];
  v11 = [v10 length];

  if (!v11)
  {
    v12 = [(HUServiceDetailsViewController *)self item];
    v13 = [v12 latestResults];
    v14 = [v13 objectForKeyedSubscript:v8];

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
    v15 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
    if (!v15)
    {
      v15 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    }

LABEL_15:
    v16 = v15;
  }

  return v16;
}

- (id)_secondaryStatusTextForLatestResults:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13E40]];
  if (!v4)
  {
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13E38]];
    if (!v4)
    {
      v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
      if (!v4)
      {
        v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      }
    }
  }

  v5 = v4;

  return v5;
}

- (id)_microphoneStatus
{
  v3 = objc_opt_new();
  v4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v5 = [v4 sourceItemAccessory];
  v6 = [v5 mediaProfile];
  v7 = [v6 hf_mediaAccessoryCommonSettingsManager];

  v8 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v9 = [v8 sourceItemAccessory];
  v10 = [v9 hf_siriEndpointProfile];
  v11 = [v10 manuallyDisabled];

  v12 = [v7 settingValueForKeyPath:*MEMORY[0x277D133B0]];
  v13 = [v12 BOOLValue];

  v14 = [(HUServiceDetailsViewController *)self view];
  v15 = [v14 effectiveUserInterfaceLayoutDirection];

  v16 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v17 = [v16 sourceItemIsHomePod];

  if (v17)
  {
    objc_opt_class();
    v18 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v19 = [v18 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v22 = [v21 isSiriDisabled];
    v13 = v22 ^ 1;
  }

  if (v11 & 1 | ((v13 & 1) == 0))
  {
    if (v11)
    {
      v23 = _HULocalizedStringWithDefaultValue(@"HUSiriEndpoint_MicrophoneOff", @"HUSiriEndpoint_MicrophoneOff", 1);
    }

    else
    {
      v24 = [(HUItemTableViewController *)self itemManager];
      v25 = [v24 home];
      v26 = HULocalizedSiriTriggerPhrase(v25);
      v23 = HULocalizedStringWithFormat(@"HUSiriEndpoint_HeySiriTurnedOff", @"%@", v27, v28, v29, v30, v31, v32, v26);
    }

    v33 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v23];
    v34 = objc_alloc(MEMORY[0x277CCA898]);
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%1s", ""];
    v36 = [v34 initWithString:v35];

    v37 = MEMORY[0x277D755B8];
    v38 = [MEMORY[0x277D75348] systemGrayColor];
    v39 = [v37 hu_mutedMicrophoneImageWithTintColor:v38];

    v40 = objc_opt_new();
    [v40 setImage:v39];
    v41 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v40];
    v42 = v41;
    if (v15 == 1)
    {
      v43 = v33;
    }

    else
    {
      v43 = v41;
    }

    if (v15 == 1)
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

- (id)buildItemModuleControllerForModule:(id)a3
{
  v5 = a3;
  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 nameModule];

  if (v7 == v5)
  {
    v18 = [[HUNameItemModuleController alloc] initWithModule:v5 host:self];
    [(HUServiceDetailsViewController *)self setNameItemModuleController:v18];

    v19 = [(HUServiceDetailsViewController *)self nameItemModuleController];
    [v19 setNameFieldHasClearButton:1];

    v20 = [(HUItemTableViewController *)self itemManager];
    v21 = [v20 home];
    v22 = [v21 hf_currentUserIsRestrictedGuest];
    v23 = [(HUServiceDetailsViewController *)self nameItemModuleController];
    [v23 setNameFieldHasClearButton:v22 ^ 1u];

    v24 = [(HUServiceDetailsViewController *)self nameItemModuleController];
  }

  else
  {
    v8 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v9 = [v8 accessoryRepresentableItemModule];

    if (v9 == v5)
    {
      v24 = [(HUServiceDetailsViewController *)self createAccessoryDetailInfoListModuleControllerWith:v5];
    }

    else
    {
      v10 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v11 = [v10 sceneAndTriggerModule];

      if (v11 == v5)
      {
        v25 = [(HUItemModuleController *)[HUAssociatedSceneAndTriggerModuleController alloc] initWithModule:v5];
        [(HUServiceDetailsViewController *)self setSceneAndTriggerModuleController:v25];

        v24 = [(HUServiceDetailsViewController *)self sceneAndTriggerModuleController];
      }

      else
      {
        v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v13 = [v12 relatedTriggerItemModule];

        if (v13 == v5)
        {
          v26 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
          v27 = [[HUAvailableRelatedTriggerItemModuleController alloc] initWithModule:v5];
          [(HUServiceDetailsViewController *)self setAssociatedTriggerModuleController:v27];

          v28 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
          [v28 setHost:self];

          v29 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
          [v26 updatePresentedViewControllerForNewModuleController:v29];

          v17 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];

          goto LABEL_13;
        }

        v14 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v15 = [v14 connectedServicesItemModule];

        if (v15 != v5)
        {
          v16 = [MEMORY[0x277CCA890] currentHandler];
          [v16 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:862 description:{@"Unexpected module %@", v5}];

          v17 = 0;
          goto LABEL_13;
        }

        v30 = [(HUItemModuleController *)[HUMatterConnectedServicesItemModuleController alloc] initWithModule:v5];
        [(HUServiceDetailsViewController *)self setConnectedServicesItemModuleController:v30];

        v24 = [(HUServiceDetailsViewController *)self connectedServicesItemModuleController];
      }
    }
  }

  v17 = v24;
LABEL_13:

  return v17;
}

- (id)itemModuleControllers
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v86.receiver = self;
  v86.super_class = HUServiceDetailsViewController;
  v4 = [(HUItemTableViewController *)&v86 itemModuleControllers];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 unionSet:v4];

  v5 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
  if (!v5)
  {
    v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v7 = [v6 relatedTriggerItemModule];

    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = [HUAvailableRelatedTriggerItemModuleController alloc];
    v9 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v10 = [v9 relatedTriggerItemModule];
    v11 = [(HUAvailableRelatedTriggerItemModuleController *)v8 initWithModule:v10];
    [(HUServiceDetailsViewController *)self setAssociatedTriggerModuleController:v11];

    v5 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
    [v5 setHost:self];
  }

LABEL_5:
  v12 = [(HUServiceDetailsViewController *)self associatedTriggerModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:v12];

  v13 = [(HUServiceDetailsViewController *)self accessorySettingsItemModuleController];
  if (!v13)
  {
    v14 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v15 = [v14 accessorySettingsItemModule];

    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = [HUAccessorySettingsItemModuleController alloc];
    v13 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v17 = [v13 accessorySettingsItemModule];
    v18 = [(HUAccessorySettingsItemModuleController *)v16 initWithModule:v17 delegate:self];
    [(HUServiceDetailsViewController *)self setAccessorySettingsItemModuleController:v18];
  }

LABEL_9:
  v19 = [(HUServiceDetailsViewController *)self accessorySettingsItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:v19];

  v20 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v21 = [v20 homeKitAccessorySettingsModules];

  if (v21)
  {
    v81 = v3;
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v79 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v80 = [v79 homeKitAccessorySettingsModules];
      *buf = 138412290;
      v88 = v80;
      _os_log_debug_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEBUG, "Creating Item Module Controllers from  homeKitAccessorySettingsModules = [%@]", buf, 0xCu);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v23 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v24 = [v23 homeKitAccessorySettingsModules];

    v25 = [v24 countByEnumeratingWithState:&v82 objects:v91 count:16];
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
            objc_enumerationMutation(v24);
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
            v33 = [(HUServiceDetailsViewController *)self moduleToModuleControllerMap];
            v34 = [v33 objectForKey:v32];

            if (!v34)
            {
              v35 = [[HUHomeKitAccessorySettingsItemModuleController alloc] initWithModule:v32 delegate:self];
              v36 = [(HUServiceDetailsViewController *)self moduleToModuleControllerMap];

              if (!v36)
              {
                v37 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                [(HUServiceDetailsViewController *)self setModuleToModuleControllerMap:v37];
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

              v39 = [(HUServiceDetailsViewController *)self moduleToModuleControllerMap];
              [v39 setObject:v35 forKey:v32];
            }
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v82 objects:v91 count:16];
      }

      while (v26);
    }

    v40 = [(HUServiceDetailsViewController *)self moduleToModuleControllerMap];
    v41 = [v40 objectEnumerator];

    v42 = [v41 nextObject];
    v3 = v81;
    if (v42)
    {
      v43 = v42;
      do
      {
        [(HUHomeKitAccessorySettingsItemModuleController *)v81 na_safeAddObject:v43];
        v44 = [v41 nextObject];

        v43 = v44;
      }

      while (v44);
    }
  }

  v45 = HFLogForCategory();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v88 = v3;
    _os_log_debug_impl(&dword_20CEB6000, v45, OS_LOG_TYPE_DEBUG, "itemModuleControllers = [%@]", buf, 0xCu);
  }

  v46 = [(HUServiceDetailsViewController *)self softwareUpdateItemModuleController];
  if (v46)
  {
    goto LABEL_38;
  }

  v47 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v48 = [v47 softwareUpdateItemModule];

  if (v48)
  {
    v49 = [HUSoftwareUpdateItemModuleController alloc];
    v46 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v50 = [v46 softwareUpdateItemModule];
    v51 = [(HUSoftwareUpdateItemModuleController *)v49 initWithModule:v50 delegate:self expandableTextViewCellDelegate:self];
    [(HUServiceDetailsViewController *)self setSoftwareUpdateItemModuleController:v51];

LABEL_38:
  }

  v52 = [(HUServiceDetailsViewController *)self softwareUpdateItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:v52];

  v53 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v54 = [v53 valveEditorItemModule];

  if (v54)
  {
    v55 = [(HUServiceDetailsViewController *)self valveEditorItemModuleController];

    if (!v55)
    {
      v56 = [[HUChildServiceItemModuleController alloc] initWithModule:v54 delegate:self];
      [(HUServiceDetailsViewController *)self setValveEditorItemModuleController:v56];
    }
  }

  v57 = [(HUServiceDetailsViewController *)self valveEditorItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:v57];

  v58 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v59 = [v58 accessoryServicesEditorItemModule];

  if (v59)
  {
    v60 = [(HUServiceDetailsViewController *)self accessoryServicesEditorItemModuleController];
    if (!v60)
    {
      if (![(HUServiceDetailsViewController *)self isMultiServiceAccessory])
      {
        goto LABEL_47;
      }

      v60 = [[HUChildServiceItemModuleController alloc] initWithModule:v59 delegate:self];
      [(HUServiceDetailsViewController *)self setAccessoryServicesEditorItemModuleController:v60];
    }
  }

LABEL_47:
  v61 = [(HUServiceDetailsViewController *)self accessoryServicesEditorItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:v61];

  v62 = [(HUServiceDetailsViewController *)self televisionSettingsItemModuleController];
  if (v62)
  {
LABEL_50:

    goto LABEL_51;
  }

  v63 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v64 = [v63 televisionSettingsItemModule];

  if (v64)
  {
    v65 = [HUTelevisionSettingsItemModuleController alloc];
    v62 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v66 = [v62 televisionSettingsItemModule];
    v67 = [(HUItemModuleController *)v65 initWithModule:v66];
    [(HUServiceDetailsViewController *)self setTelevisionSettingsItemModuleController:v67];

    goto LABEL_50;
  }

LABEL_51:
  v68 = [(HUServiceDetailsViewController *)self televisionSettingsItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:v68];

  v69 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v70 = [v69 inputSourceItemModule];

  if (v70)
  {
    v71 = [(HUServiceDetailsViewController *)self inputSourceItemModuleController];
    if (!v71 || (v72 = v71, -[HUServiceDetailsViewController inputSourceItemModuleController](self, "inputSourceItemModuleController"), v73 = objc_claimAutoreleasedReturnValue(), [v73 module], v74 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v74, "isEqual:", v70), v74, v73, v72, (v75 & 1) == 0))
    {
      v76 = [[HUChildServiceItemModuleController alloc] initWithModule:v70 delegate:self];
      [(HUServiceDetailsViewController *)self setInputSourceItemModuleController:v76];
    }
  }

  v77 = [(HUServiceDetailsViewController *)self inputSourceItemModuleController];
  [(HUHomeKitAccessorySettingsItemModuleController *)v3 na_safeAddObject:v77];

  return v3;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 headerItem];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    goto LABEL_8;
  }

  v9 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v10 = [v9 symptomsTitleItem];
  v11 = [v5 isEqual:v10];

  if (v11)
  {
    goto LABEL_8;
  }

  v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v13 = [v12 symptomsWiFiPickerItem];
  if ([v5 isEqual:v13])
  {
    goto LABEL_16;
  }

  v14 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v15 = [v14 symptomsLearnMoreItem];
  v16 = [v5 isEqual:v15];

  if (v16)
  {
    goto LABEL_8;
  }

  v19 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v20 = [v19 splitMediaAccountTitleItem];
  v21 = [v5 isEqual:v20];

  if (v21)
  {
    goto LABEL_8;
  }

  v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v13 = [v12 splitMediaAccountUseDefaultAccountItem];
  if ([v5 isEqual:v13])
  {
    goto LABEL_16;
  }

  v22 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v23 = [v22 splitMediaAccountSignoutAccountItem];
  v24 = [v5 isEqual:v23];

  if (v24)
  {
LABEL_8:
    v17 = objc_opt_class();
    goto LABEL_9;
  }

  v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v13 = [v12 favoriteItem];
  if ([v5 isEqual:v13])
  {
LABEL_16:

    goto LABEL_8;
  }

  v25 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v26 = [v25 showInHomeDashboardItem];
  v27 = [v5 isEqual:v26];

  if (v27)
  {
    goto LABEL_8;
  }

  v28 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v29 = [v28 pairingModeItem];
  v30 = [v5 isEqual:v29];

  if (v30)
  {
    goto LABEL_8;
  }

  v31 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v32 = [v31 exportDiagnosticsItem];
  v33 = [v5 isEqual:v32];

  if (v33)
  {
    goto LABEL_8;
  }

  v34 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v35 = [v34 removeFromGroupItem];
  v36 = [v5 isEqual:v35];

  if (v36)
  {
    goto LABEL_8;
  }

  v37 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v38 = [v37 removeItem];
  v39 = [v5 isEqual:v38];

  if (v39)
  {
    goto LABEL_8;
  }

  v40 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v41 = [v40 resetItem];
  v42 = [v5 isEqual:v41];

  if (v42)
  {
    goto LABEL_8;
  }

  v43 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v44 = [v43 restartItem];
  v45 = [v5 isEqual:v44];

  if (v45)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v47 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v48 = [v47 isCharacteristicStateItem:v5];

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

    v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v13 = [v12 addGroupItem];
    if ([v5 isEqual:v13])
    {
      goto LABEL_16;
    }

    v49 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v50 = [v49 createNewRoomItem];
    if ([v5 isEqual:v50])
    {
      goto LABEL_44;
    }

    v51 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v52 = [v51 separateTileItem];
    if (([v5 isEqual:v52] & 1) == 0)
    {
      v70 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v53 = [v70 collectDiagnosticsItem];
      if (([v5 isEqual:v53] & 1) == 0)
      {
        v68 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v54 = [v68 identifyHomePodItem];
        v69 = [v5 isEqual:v54];

        if (v69)
        {
          goto LABEL_8;
        }

        v55 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v56 = [v55 roomItem];
        v57 = [v5 isEqual:v56];

        if (v57)
        {
          [MEMORY[0x277D14CE8] useMacIdiom];
          goto LABEL_8;
        }

        v58 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v59 = [v58 roomListItem];
        v60 = [v5 isEqual:v59];

        if (v60)
        {
          goto LABEL_8;
        }

        v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v13 = [v12 cameraStatusLightItem];
        if ([v5 isEqual:v13])
        {
          goto LABEL_16;
        }

        v49 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v50 = [v49 cameraNightModeItem];
        if (([v5 isEqual:v50] & 1) == 0)
        {
          v61 = [(HUServiceDetailsViewController *)self detailsItemManager];
          v62 = [v61 cameraDoorbellChimeMuteItem];
          v63 = [v5 isEqual:v62];

          if ((v63 & 1) == 0)
          {
            v64 = [(HUServiceDetailsViewController *)self detailsItemManager];
            v65 = [v64 lockAddHomeKeyToWalletItem];
            v66 = [v5 isEqual:v65];

            if (!v66)
            {
              v67 = [(HUServiceDetailsViewController *)self detailsItemManager];
              [v67 supportsWiFiStrengthDisplay:v5];
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

  v46 = [(HUServiceDetailsViewController *)self controlPanelController];
  v17 = [v46 cellClassForItem:v5];

LABEL_9:

  return v17;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HUServiceDetailsViewController *)self _setupProgrammableSwitchCell:v7 forItem:v8];
    }
  }

  v9 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v10 = [v9 splitMediaAccountTitleItem];
  v11 = v10;
  if (v10 == v8)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    v13 = v7;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v9 = v14;

    v15 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76988] traits:32770];
    [v9 setTitleFont:v15];

    [v9 setMaxNumberOfTitleLines:0];
    v16 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76968] traits:0x8000];
    [v9 setDescriptionFont:v16];

    [v9 setMaxNumberOfDescriptionLines:0];
    [v9 setHideIcon:1];
    [v9 setSelectionStyle:0];
  }

  else
  {
  }

LABEL_12:
  v17 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v18 = [v17 symptomsTitleItem];
  v19 = v18;
  if (v18 == v8)
  {
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    objc_opt_class();
    v21 = v7;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v17 = v22;

    v23 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76918] traits:32770];
    [v17 setTitleFont:v23];

    [v17 setMaxNumberOfTitleLines:0];
    v24 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769D0] traits:0x8000];
    [v17 setDescriptionFont:v24];

    [v17 setMaxNumberOfDescriptionLines:0];
    [v17 setHideIcon:1];
    [v17 setSelectionStyle:0];
    [v17 setTitleLabelBottomPadding:4.0];
    [v17 setContainerViewBottomPadding:4.0];
  }

  else
  {
  }

LABEL_20:
  v25 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v26 = [v25 symptomsWiFiPickerItem];
  if (v26 == v8)
  {
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();

    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    objc_opt_class();
    v28 = v7;
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v26 = v29;

    [v26 setAccessoryType:1];
    v25 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76918] traits:0x8000];
    [v26 setFont:v25];
  }

LABEL_27:
  v30 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v31 = [v30 symptomsLearnMoreItem];
  if (v31 != v8)
  {
LABEL_33:

    goto LABEL_34;
  }

  objc_opt_class();
  v32 = objc_opt_isKindOfClass();

  if (v32)
  {
    objc_opt_class();
    v33 = v7;
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;

    v30 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.right"];
    v31 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v30];
    v36 = [MEMORY[0x277D75348] systemMidGrayColor];
    [v31 setTintColor:v36];

    [v35 setAccessoryView:v31];
    v37 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76918] traits:0x8000];
    [v35 setFont:v37];

    goto LABEL_33;
  }

LABEL_34:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v39 = [v38 roomItem];
    v40 = [v8 isEqual:v39];

    if (v40)
    {
      objc_opt_class();
      v106 = v7;
      v41 = v7;
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
      [v43 setItem:v8];
      v44 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v45 = [v44 serviceLikeBuilder];
      v46 = [v45 room];
      v47 = [v46 room];
      v48 = [v47 uniqueIdentifier];
      v49 = v48;
      if (v48)
      {
        v50 = v48;
      }

      else
      {
        v104 = [(HUServiceDetailsViewController *)self item];
        v103 = [v104 accessories];
        v51 = [v103 anyObject];
        v52 = [v51 room];
        v50 = [v52 uniqueIdentifier];
      }

      v53 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v54 = [v53 orderedRoomSectionItems];
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __62__HUServiceDetailsViewController_setupCell_forItem_indexPath___block_invoke;
      v107[3] = &unk_277DB85D8;
      v108 = v50;
      v55 = v50;
      v56 = [v54 na_firstObjectPassingTest:v107];

      v57 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v58 = [v57 orderedRoomSectionItems];
      v59 = [v58 copy];
      v60 = [(HUServiceDetailsViewController *)self _createMenuWithValues:v59 cell:v105 currentItem:v56];
      v61 = [v105 button];
      [v61 setMenu:v60];

      v7 = v106;
    }
  }

  v62 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v63 = [v62 roomListItem];

  if (v63 == v8)
  {
    objc_opt_class();
    v93 = v7;
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
    v64 = v7;
    if (objc_opt_isKindOfClass())
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v66 = v65;

    v67 = [(HUServiceDetailsViewController *)self traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [v66 _setCornerRadius:?];

    v68 = [(HUServiceDetailsViewController *)self textViewDelegate];
    v69 = [v66 messageTextView];
    [v69 setDelegate:v68];

    v70 = [v66 actionButton];
    [v70 removeTarget:self action:sel_didSelectHeaderWarningAction_ forControlEvents:64];

    v71 = [v66 actionButton];

    [v71 addTarget:self action:sel_didSelectHeaderWarningAction_ forControlEvents:64];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v72 = [(HUServiceDetailsViewController *)self controlPanelController];
      [v72 setupCell:v7 forItem:v8];

      objc_opt_class();
      v73 = v7;
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
        v76 = [(HUServiceDetailsViewController *)self expandedControlPanelItems];
        [v75 setWheelViewVisible:{objc_msgSend(v76, "containsObject:", v8)}];
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
      v77 = v7;
      if (objc_opt_isKindOfClass())
      {
        v78 = v77;
      }

      else
      {
        v78 = 0;
      }

      v79 = v78;

      [v79 setValueColorFollowsTintColor:{-[HUServiceDetailsViewController _shouldFollowTitleValueTintColorforItem:](self, "_shouldFollowTitleValueTintColorforItem:", v8)}];
      v80 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v81 = [v80 accessoryInfoItemProvider];
      v82 = [v81 items];
      [v79 setAllowCopyValueToPasteboard:{objc_msgSend(v82, "containsObject:", v8)}];
    }

    v73 = v7;
    v83 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v84 = [v83 pairingModeItem];
    v85 = [v8 isEqual:v84];

    if (v85)
    {
      [v73 setDestructive:0];
    }

    v86 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v87 = [v86 removeItem];
    v88 = [v8 isEqual:v87];

    if (v88)
    {
      [v73 setDestructive:1];
    }

    v89 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v90 = [v89 resetItem];
    if ([v8 isEqual:v90])
    {
      v91 = [(HUServiceDetailsViewController *)self item];
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

    v95 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v96 = [v95 restartItem];
    if ([v8 isEqual:v96])
    {
      v97 = [(HUServiceDetailsViewController *)self item];
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

    v99 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v100 = [v99 exportDiagnosticsItem];
    if ([v8 isEqual:v100])
    {
      v101 = [(HUServiceDetailsViewController *)self item];
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

    [v73 setAccessoryType:{-[HUServiceDetailsViewController _shouldShowDetailDisclosureForItem:](self, "_shouldShowDetailDisclosureForItem:", v8)}];
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

- (BOOL)_shouldFollowTitleValueTintColorforItem:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v6 = [v5 accessoryInfoItemProvider];
  v7 = [v6 items];
  v8 = [v7 containsObject:v4];

  v9 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v10 = [v9 isCharacteristicStateItem:v4];

  v11 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v12 = [v11 homeTheaterAudioOutputItem];

  v13 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v14 = [v13 managedConfigurationProfilesItem];

  v15 = 0;
  if ((v8 & 1) == 0 && (v10 & 1) == 0)
  {
    v15 = v12 != v4 && v14 != v4;
  }

  return v15;
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v96.receiver = self;
  v96.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v96 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HUServiceDetailsViewController *)self _setupProgrammableSwitchCell:v10 forItem:v11];
      goto LABEL_20;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(HUServiceDetailsViewController *)self controlPanelController];
      [v13 updateCell:v10 forItem:v11 animated:v6];

      goto LABEL_20;
    }
  }

  v14 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v15 = [v14 favoriteItem];
  if ([v11 isEqual:v15])
  {
    goto LABEL_14;
  }

  v16 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v17 = [v16 showInHomeDashboardItem];
  if ([v11 isEqual:v17])
  {
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v91 = v12;
  v18 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v19 = [v18 cameraStatusLightItem];
  if ([v11 isEqual:v19])
  {
LABEL_12:

    v12 = v91;
    goto LABEL_13;
  }

  v89 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v20 = [v89 cameraNightModeItem];
  if ([v11 isEqual:v20])
  {

    goto LABEL_12;
  }

  v85 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v83 = [v85 cameraDoorbellChimeMuteItem];
  v87 = [v11 isEqual:v83];

  v12 = v91;
  if ((v87 & 1) == 0)
  {
    v24 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v25 = [v24 isCharacteristicStateItem:v11];

    if (v25)
    {
      v26 = [v11 latestResults];
      v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

      v28 = [(HUItemTableViewController *)self itemManager];
      v29 = [v28 displayedItemsInSection:{objc_msgSend(v91, "section")}];
      v30 = [v29 count];

      if (v30 >= 2)
      {
        v31 = [v11 latestResults];
        v32 = [v31 objectForKeyedSubscript:*MEMORY[0x277D13E80]];
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

      v36 = v10;
      [v36 setTitleText:v27];
      v37 = [v11 latestResults];
      v38 = [v37 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      v39 = [v38 stringWithAttributes:MEMORY[0x277CBEC10]];
      v40 = [v39 string];
      [v36 setValueText:v40];
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

        v27 = v10;
        v41 = [v11 latestResults];
        v42 = [v41 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
        v43 = [v27 textLabel];
        [v43 setText:v42];

        v44 = [v11 latestResults];
        v45 = [v44 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
        [v27 setAccessibilityIdentifier:v45];

        [(HUServiceDetailsViewController *)self _updateCheckedStateForAssociatedServiceTypeCell:v27 item:v11];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v90 = v10;
          v46 = [(HUServiceDetailsViewController *)self detailsItemManager];
          v47 = [v46 serviceLikeBuilder];
          v48 = [v47 room];
          v49 = [v48 room];
          v50 = [v49 uniqueIdentifier];
          v51 = v50;
          if (v50)
          {
            v52 = v50;
          }

          else
          {
            v86 = [(HUServiceDetailsViewController *)self item];
            v84 = [v86 accessories];
            v63 = [v84 anyObject];
            v64 = [v63 room];
            [v64 uniqueIdentifier];
            v65 = v88 = v46;

            v52 = v65;
            v46 = v88;

            v12 = v91;
          }

          v66 = [(HUServiceDetailsViewController *)self detailsItemManager];
          v67 = [v66 orderedRoomSectionItems];
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __72__HUServiceDetailsViewController_updateCell_forItem_indexPath_animated___block_invoke;
          v94[3] = &unk_277DBEDD8;
          v68 = v52;
          v95 = v68;
          v69 = [v67 indexOfObjectPassingTest:v94];

          if ((v69 & 0x8000000000000000) == 0 && v69 < [(HUServiceDetailsViewController *)self numberOfValuesForPickerViewCell:v90])
          {
            [v90 setSelectedIndex:v69 animated:0];
          }

          goto LABEL_20;
        }

        v53 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v54 = [v53 canToggleAccessoryInfoItem:v11];

        if (v54)
        {
          [v10 setSelectionStyle:0];
          goto LABEL_20;
        }

        v55 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v56 = [v55 lockAddHomeKeyToWalletItem];
        v57 = [v11 isEqual:v56];

        if (v57)
        {
          v22 = [MEMORY[0x277D756E0] valueCellConfiguration];
          v58 = [v11 latestResults];
          v59 = [v58 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
          [v22 setText:v59];

          v60 = [MEMORY[0x277D75348] hf_keyColor];
          v61 = [v22 textProperties];
          [v61 setColor:v60];

          v62 = [MEMORY[0x277D755B8] hu_walletAppIconImage];
          [v22 setImage:v62];

          [v10 setContentConfiguration:v22];
          goto LABEL_19;
        }

        v70 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v71 = [v70 exportDiagnosticsItem];
        v72 = [v11 isEqual:v71];

        if (!v72)
        {
          goto LABEL_20;
        }

        objc_opt_class();
        v73 = v10;
        if (objc_opt_isKindOfClass())
        {
          v74 = v73;
        }

        else
        {
          v74 = 0;
        }

        v27 = v74;

        v75 = [v11 latestResults];
        v76 = [v75 objectForKeyedSubscript:*MEMORY[0x277D13D30]];

        if (v76)
        {
          v77 = [v76 isFinished] ^ 1;
        }

        else
        {
          v77 = 0;
        }

        objc_opt_class();
        v78 = [v27 accessoryView];
        if (objc_opt_isKindOfClass())
        {
          v79 = v78;
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
            v81 = v78;

            [v27 setDisabled:1];
            [v81 startAnimating];
            [(HUServiceDetailsViewController *)self _registerButtonActionHandler:v76 item:v11];
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
            [(HUServiceDetailsViewController *)self _registerButtonActionHandler:v76 item:v11];
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
    v21 = v10;
    [v21 setDelegate:self];
    v22 = [v11 latestResults];
    v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
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

- (void)_registerButtonActionHandler:(id)a3 item:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HUServiceDetailsViewController *)self registeredButtonFutures];
  v10 = [v9 containsObject:v7];

  if ((v10 & 1) == 0)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__HUServiceDetailsViewController__registerButtonActionHandler_item___block_invoke;
    aBlock[3] = &unk_277DBEE28;
    objc_copyWeak(v25, &location);
    v24 = v8;
    v25[1] = a2;
    v11 = _Block_copy(aBlock);
    objc_initWeak(&from, v7);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __68__HUServiceDetailsViewController__registerButtonActionHandler_item___block_invoke_2;
    v18 = &unk_277DBEE50;
    objc_copyWeak(&v20, &location);
    v12 = v11;
    v19 = v12;
    objc_copyWeak(&v21, &from);
    v13 = [v7 addCompletionBlock:&v15];
    v14 = [(HUServiceDetailsViewController *)self registeredButtonFutures:v15];
    [v14 na_safeAddObject:v7];

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

- (id)_createMenuWithValues:(id)a3 cell:(id)a4 currentItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __73__HUServiceDetailsViewController__createMenuWithValues_cell_currentItem___block_invoke;
  v21 = &unk_277DBEEA0;
  objc_copyWeak(&v26, &location);
  v12 = v8;
  v22 = v12;
  v13 = v9;
  v23 = v13;
  v14 = v10;
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

- (void)_updateName:(id)a3
{
  v20 = a3;
  if (v20)
  {
    v4 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v5 = [v4 serviceLikeBuilder];
    v6 = [v5 name];
    v7 = [v20 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      [(HUServiceDetailsViewController *)self setTitle:v20];
      v8 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v9 = [v8 serviceLikeBuilder];
      [v9 setName:v20];

      v10 = objc_alloc_init(MEMORY[0x277D14D40]);
      v11 = [MEMORY[0x277D14B50] policyWithDecision:0];
      [v10 setReadPolicy:v11];

      v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v13 = MEMORY[0x277CBEB98];
      WeakRetained = objc_loadWeakRetained(&self->_detailsItemManager);
      v15 = [WeakRetained headerItem];
      v16 = objc_loadWeakRetained(&self->_detailsItemManager);
      v17 = [v16 sourceItem];
      v18 = [v13 setWithObjects:{v15, v17, 0}];
      v19 = [v12 _updateResultsForItems:v18 context:v10];
    }
  }
}

- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5
{
  v13 = a3;
  v7 = a5;
  objc_opt_class();
  v8 = v7;
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
    [(HUServiceDetailsViewController *)self _updateName:v13];
  }
}

- (void)textFieldDidEndEditing:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HUServiceDetailsViewController *)self _commitBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HUServiceDetailsViewController_textFieldDidEndEditing_item___block_invoke;
  v10[3] = &unk_277DB8CA8;
  objc_copyWeak(&v11, &location);
  v9 = [v8 addCompletionBlock:v10];

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

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = HUServiceDetailsViewController;
  v5 = [(HUItemTableViewController *)&v14 shouldHideHeaderAboveSection:?];
  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 displayedSectionIdentifierForSectionIndex:a3];
  v8 = v5 | [v7 isEqualToString:@"HUServiceDetailsHeaderSectionIdentifier"];

  v9 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v10 = [v9 displayedSectionIdentifierForSectionIndex:a3];
  LODWORD(v7) = [v10 isEqualToString:@"HUServiceDetailsFirmwareUpdateSectionPromptIdentifier"];

  v11 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v12 = [v11 displayedSectionIdentifierForSectionIndex:a3];
  LODWORD(v9) = v7 | [v12 isEqualToString:@"HUServiceDetailsFirmwareUpdateAppStoreSectionIdentifier"];

  return v8 | v9;
}

- (BOOL)shouldHideFooterBelowSection:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = HUServiceDetailsViewController;
  v5 = [(HUItemTableViewController *)&v14 shouldHideHeaderAboveSection:?];
  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 displayedSectionIdentifierForSectionIndex:a3];
  v8 = v5 | [v7 isEqualToString:@"HUServiceDetailsHeaderSectionIdentifier"];

  v9 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v10 = [v9 displayedSectionIdentifierForSectionIndex:a3];
  LODWORD(v7) = [v10 isEqualToString:@"HUServiceDetailsFirmwareUpdateSectionPromptIdentifier"];

  v11 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v12 = [v11 displayedSectionIdentifierForSectionIndex:a3];
  LODWORD(v9) = v7 | [v12 isEqualToString:@"HUServiceDetailsFirmwareUpdateAppStoreSectionIdentifier"];

  return v8 | v9;
}

- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = HUServiceDetailsViewController;
  v5 = a3;
  LOBYTE(a4) = [(HUItemTableViewController *)&v8 shouldHideSeparatorsForCell:v5 indexPath:a4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (a4 | isKindOfClass) & 1;
}

- (unint64_t)automaticDisablingReasonsForItem:(id)a3
{
  v12.receiver = self;
  v12.super_class = HUServiceDetailsViewController;
  v4 = a3;
  v5 = [(HUItemTableViewController *)&v12 automaticDisablingReasonsForItem:v4];
  v6 = [(HUServiceDetailsViewController *)self detailsItemManager:v12.receiver];
  v7 = [v6 showContainedItems];

  v8 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v9 = [v8 statusAndNotificationItem];

  if (v7 == v4 || v9 == v4)
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
  v3 = [(HUServiceDetailsViewController *)self tableView];
  v4 = [v3 indexPathsForVisibleRows];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [(HUItemTableViewController *)self itemManager];
        v11 = [v10 displayedItemAtIndexPath:v9];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v12 = [(HUServiceDetailsViewController *)self tableView];
          v13 = [v12 cellForRowAtIndexPath:v9];
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
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v13 itemManager:a3 didUpdateResultsForItem:v8 atIndexPath:a5];
  WeakRetained = objc_loadWeakRetained(&self->_detailsItemManager);
  v10 = [WeakRetained headerItem];

  if (v10 == v8)
  {
    v11 = [v8 latestResults];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [(HUServiceDetailsViewController *)self setTitle:v12];
  }

  [(HUServiceDetailsViewController *)self _updateControlStatusText];
  [(HUServiceDetailsViewController *)self _updateIconDescriptorAnimated:1];
}

- (BOOL)_isCameraItem
{
  v2 = [(HUServiceDetailsViewController *)self item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v10 = a3;
  v7 = a4;
  if (v7 == self)
  {
    v8 = 0;
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  v9 = [(HUServiceDetailsViewController *)self navigationBarTitleView];
  [v9 setHidden:v8 & 1];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

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

  v10 = [v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_17;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v10 allControlViews];
  v12 = [v11 allObjects];

  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 canBeHighlighted] && !objc_msgSend(v16, "isDisabled"))
        {
          LOBYTE(v13) = 1;
          goto LABEL_19;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v310[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v299.receiver = self;
  v299.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v299 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  [v6 deselectRowAtIndexPath:v7 animated:1];
  v10 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v11 = [v10 internalDebuggingItem];
  v12 = v9 == v11;

  v13 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v14 = v13;
  if (v12)
  {
    v26 = [v13 sourceItemHomeKitObject];

    v27 = [(HUServiceDetailsViewController *)self navigationController];
    v28 = [[HUAccessoryDebugViewController alloc] initWithHomeKitObject:v26];
    v29 = [v27 hu_pushPreloadableViewController:v28 animated:1];

    goto LABEL_63;
  }

  v15 = [v13 audioSettingsItem];
  v16 = v9 == v15;

  if (v16)
  {
    v30 = [(HUServiceDetailsViewController *)self item];
    v31 = [v30 latestResults];
    v32 = [v31 objectForKeyedSubscript:*MEMORY[0x277D13BD0]];
    if ([v32 conformsToProtocol:&unk_2825BCB38])
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    if (![v34 hf_showsAudioSettings])
    {
      goto LABEL_165;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_165;
    }

    v35 = objc_alloc(MEMORY[0x277D14830]);
    v36 = [(HUItemTableViewController *)self itemManager];
    v37 = [v36 home];
    v38 = [v35 initWithExistingObject:v34 inHome:v37];

    v39 = objc_opt_class();
    v40 = [(HUServiceDetailsViewController *)self item];
    if (v40)
    {
      if (objc_opt_isKindOfClass())
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      v42 = v40;
      if (v41)
      {
        goto LABEL_25;
      }

      v43 = [MEMORY[0x277CCA890] currentHandler];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v43 handleFailureInFunction:v44 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v39, objc_opt_class()}];
    }

    v42 = 0;
LABEL_25:

    v45 = [[HUMediaAccessoryAudioSettingsViewController alloc] initWithMediaSystemBuilder:v38 mediaAccessoryItem:v42];
    [(HUMediaAccessoryAudioSettingsViewController *)v45 setPresentationDelegate:self];
    v46 = [(HUServiceDetailsViewController *)self navigationController];
    v47 = [v46 hu_pushPreloadableViewController:v45 animated:1];

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

      v21 = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v21 handleFailureInFunction:v22 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];
    }

    v20 = 0;
LABEL_11:

    v23 = [HUAccessorySettingsDetailsViewControllerFactory viewControllerForGroup:v20];
    v24 = [(HUServiceDetailsViewController *)self navigationController];
    v25 = [v24 hu_pushPreloadableViewController:v23 animated:1];

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

    v51 = objc_opt_new();
    [v51 addObject:*MEMORY[0x277D13990]];
    [v51 addObject:*MEMORY[0x277D138C0]];
    [v51 addObject:*MEMORY[0x277D138C8]];
    [v51 addObject:*MEMORY[0x277D138B8]];
    v52 = [v50 settingKeyPath];
    v53 = [v51 na_safeContainsObject:v52];

    if (v53)
    {
      v54 = [HUAccessorySettingsDetailsViewControllerFactory viewControllerForSettingItem:v50];
      v55 = [(HUServiceDetailsViewController *)self navigationController];
      v56 = [v55 hu_pushPreloadableViewController:v54 animated:1];
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

        v62 = [v50 controlItems];
        v51 = [v62 anyObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v63 = [(HUServiceDetailsViewController *)self expandedControlPanelItems];
          v64 = [v63 containsObject:v50];

          v65 = [(HUServiceDetailsViewController *)self expandedControlPanelItems];
          v66 = v65;
          if (v64)
          {
            [v65 removeObject:v50];
          }

          else
          {
            [v65 addObject:v50];
          }

          v89 = [(HUServiceDetailsViewController *)self detailsItemManager];
          v90 = [v89 diffableDataSourceDisabled];

          if (v90)
          {
            v85 = [(HUServiceDetailsViewController *)self tableView];
            v310[0] = v7;
            v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v310 count:1];
            [(HUTemperatureUnitPickerViewController *)v85 reloadRowsAtIndexPaths:v86 withRowAnimation:0];
          }

          else
          {
            v85 = [(HUServiceDetailsViewController *)self detailsItemManager];
            v309 = v50;
            v86 = [MEMORY[0x277CBEA60] arrayWithObjects:&v309 count:1];
            [(HUTemperatureUnitPickerViewController *)v85 reloadUIRepresentationForItems:v86 withAnimation:1];
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

          v84 = v51;
          v85 = [[HUTemperatureUnitPickerViewController alloc] initWithUnitItem:v84];

          v86 = [(HUServiceDetailsViewController *)self navigationController];
          [v86 pushViewController:v85 animated:1];
        }

        goto LABEL_62;
      }

      v60 = [MEMORY[0x277CCA890] currentHandler];
      v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v60 handleFailureInFunction:v61 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v57, objc_opt_class()}];
    }

    v50 = 0;
    goto LABEL_43;
  }

  v67 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v68 = [v67 roomItem];
  v69 = [v9 isEqual:v68];

  v70 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v50 = v70;
  if (!v69)
  {
    v79 = [v70 associatedServiceTypeItem];
    v80 = [v9 isEqual:v79];

    v81 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v82 = v81;
    if (v80)
    {
      [v81 setShowAssociatedServiceTypeList:1];

      v83 = [(HUServiceDetailsViewController *)self detailsItemManager];
      [v83 setShowRoomsList:0];

      goto LABEL_63;
    }

    v87 = [v81 createNewRoomItem];
    v88 = [v9 isEqual:v87];

    if (v88)
    {
      [(HUServiceDetailsViewController *)self addRoomButtonPressed:v6];
      goto LABEL_63;
    }

    v91 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v92 = [v91 addGroupItem];
    v93 = [v9 isEqual:v92];

    if (v93)
    {
      [(HUServiceDetailsViewController *)self _presentGroupPicker];
      goto LABEL_63;
    }

    v94 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v95 = [v94 identifyHomePodItem];
    v96 = [v9 isEqual:v95];

    if (v96)
    {
      [(HUServiceDetailsViewController *)self _identifyHomePod];
      goto LABEL_63;
    }

    v97 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v98 = [v97 separateTileItem];
    v99 = [v9 isEqual:v98];

    if (v99)
    {
      [(HUServiceDetailsViewController *)self _separateOrUnifyTile];
      goto LABEL_63;
    }

    v100 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v101 = [v100 showContainedItems];
    v102 = [v9 isEqual:v101];

    if (v102)
    {
      [(HUServiceDetailsViewController *)self _presentContainedItems];
      goto LABEL_63;
    }

    v103 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v104 = [v103 lockPinCodesItem];
    v105 = v9 == v104;

    v106 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v107 = v106;
    if (v105)
    {
      v117 = [v106 lockPinCodesItem];
      v118 = [v117 latestResults];
      v119 = [v118 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
      v120 = [v119 BOOLValue];

      if ((v120 & 1) == 0)
      {
        v121 = [MEMORY[0x277D146E8] sharedDispatcher];
        v122 = [(HUItemTableViewController *)self itemManager];
        v123 = [v122 home];
        v124 = [v121 pinCodeManagerForHome:v123];

        v125 = [v124 fetchFromAccessoryCache];
        v126 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v127 = [v126 sourceItemAccessory];

        v128 = [(HUItemTableViewController *)self itemManager];
        v129 = [v128 home];

        v130 = [HUUsersAndGuestsPinCodeViewController alloc];
        v131 = [(HUServiceDetailsViewController *)self item];
        v132 = [(HUUsersAndGuestsPinCodeViewController *)v130 initWithSourceItem:v131 pinCodeManager:v124 home:v129 forAccessory:v127];

        v133 = [(HUServiceDetailsViewController *)self navigationController];
        v134 = [v133 hu_pushPreloadableViewController:v132 animated:1];
      }

      goto LABEL_63;
    }

    v108 = [v106 statusAndNotificationItem];
    v109 = [v9 isEqual:v108];

    if (v109)
    {
      v110 = [HUStatusAndNotificationsViewController alloc];
      v111 = [(HUServiceDetailsViewController *)self item];
      v112 = [(HUItemTableViewController *)self itemManager];
      v113 = [v112 home];
      v114 = [(HUStatusAndNotificationsViewController *)v110 initWithServiceItem:v111 inHome:v113 displayingDetails:1];

      v115 = [(HUServiceDetailsViewController *)self navigationController];
      v116 = [v115 hu_pushPreloadableViewController:v114 animated:1];

      goto LABEL_63;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v135 = objc_alloc(MEMORY[0x277D14398]);
      v136 = [v9 actionSet];
      v137 = [(HUServiceDetailsViewController *)self home];
      v138 = [v135 initWithExistingObject:v136 inHome:v137];

      v139 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v138 mode:0];
      [(HUSceneActionEditorViewController *)v139 setShowCancelButton:0];
      [(HUSceneActionEditorViewController *)v139 setPresentationDelegate:self];
      v140 = [(HUServiceDetailsViewController *)self navigationController];
      v141 = [v140 hu_pushPreloadableViewController:v139 animated:1];

      goto LABEL_63;
    }

    v142 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v143 = [v142 pairingModeItem];
    v144 = [v9 isEqual:v143];

    if (v144)
    {
      v145 = [(HUServiceDetailsViewController *)self item];
      v146 = [v145 accessories];
      v147 = [v146 anyObject];
      objc_initWeak(&location, v147);

      v148 = objc_loadWeakRetained(&location);
      LODWORD(v145) = v148 == 0;

      if (v145)
      {
        v156 = HFLogForCategory();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          v184 = [(HUServiceDetailsViewController *)self item];
          *from = 138412290;
          *&from[4] = v184;
          _os_log_error_impl(&dword_20CEB6000, v156, OS_LOG_TYPE_ERROR, "Attempted to activate pairing mode for chip accessory but found nil accessory %@", from, 0xCu);
        }

        v157 = [MEMORY[0x277CCA9B8] hf_errorWithCode:38];
        v158 = [MEMORY[0x277D14640] sharedHandler];
        [v158 handleError:v157];
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

    v150 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v151 = [v150 exportDiagnosticsItem];
    v152 = [v9 isEqual:v151];

    if (v152)
    {
      [(HUServiceDetailsViewController *)self _exportDiagnosticsForItem:v9];
      goto LABEL_63;
    }

    v153 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v154 = [v153 removeItem];
    v155 = [v9 isEqual:v154];

    if (v155)
    {
      [(HUServiceDetailsViewController *)self _presentRemoveConfirmation:v7];
      goto LABEL_63;
    }

    v159 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v160 = [v159 removeFromGroupItem];
    v161 = [v9 isEqual:v160];

    if (v161)
    {
      [(HUServiceDetailsViewController *)self _presentRemoveFromGroupConfirmation:v7];
      goto LABEL_63;
    }

    v162 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v163 = [v162 resetItem];
    v164 = [v9 isEqual:v163];

    if (v164)
    {
      [(HUServiceDetailsViewController *)self _presentResetHomePodConfirmation:v7];
      goto LABEL_63;
    }

    v165 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v166 = [v165 restartItem];
    v167 = [v9 isEqual:v166];

    if (v167)
    {
      [(HUServiceDetailsViewController *)self _restartGroupedHomePodAccessory];
      goto LABEL_63;
    }

    v168 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v169 = [v168 accessoryItem];
    v170 = [v9 isEqual:v169];

    if (v170)
    {
      v171 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v172 = [v171 sourceItemAccessory];

      v173 = [v172 hf_owningBridgeAccessory];
      if ([v172 hf_isBridge])
      {
        if (([v172 hf_isPureBridge] & 1) == 0)
        {
          v174 = [(HUServiceDetailsViewController *)self detailsItemManager];
          v175 = [v174 sourceItemIsService];

          if (v175)
          {
            v176 = v172;

            v173 = v176;
          }
        }
      }

      v177 = [v173 hf_primaryService];
      v178 = [v173 hf_isVisibleAsBridge];
      if (v177)
      {
        v179 = v178;
      }

      else
      {
        v179 = 1;
      }

      if (v179 & 1) != 0 || ([v173 hf_showAsIndividualServices] & 1) == 0 && (objc_msgSend(v173, "hf_isMultiServiceAccessory"))
      {
        v180 = objc_alloc(MEMORY[0x277D142E8]);
        v181 = [(HUServiceDetailsViewController *)self item];
        v182 = [v181 valueSource];
        v183 = [v180 initWithAccessory:v173 valueSource:v182];
      }

      else
      {
        v194 = MEMORY[0x277D14AC8];
        v181 = [(HUServiceDetailsViewController *)self item];
        v182 = [v181 valueSource];
        v183 = [v194 serviceItemForService:v177 valueSource:v182];
      }

      v195 = v183;

      v196 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:v195];
      [(HUServiceDetailsViewController *)v196 setPresentationDelegate:self];
      v197 = [(HUServiceDetailsViewController *)self navigationController];
      v198 = [v197 hu_pushPreloadableViewController:v196 animated:1];

      goto LABEL_63;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v185 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v186 = [v185 showAssociatedServiceTypeList];

      if (v186)
      {
        v187 = v9;
        v188 = [v187 latestResults];
        v189 = [v188 objectForKeyedSubscript:*MEMORY[0x277D136E0]];

        if (!v189)
        {
          NSLog(&cfstr_AssociatedServ.isa, v187);
        }

        v190 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v191 = [v190 selectAssociatedServiceType:v189];

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
        v187 = [(HUServiceDetailsViewController *)self detailsItemManager];
        [v187 setShowAssociatedServiceTypeList:1];
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

    v199 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v200 = [v199 canShowWiFiPickerForItem:v9];

    if (v200)
    {
      [(HUServiceDetailsViewController *)self _presentWiFiPickerForItem:v9];
      goto LABEL_63;
    }

    v201 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v202 = [v201 canToggleAccessoryInfoItem:v9];

    v203 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v204 = v203;
    if (v202)
    {
      [v203 toggleAccessoryInfoItem:v9];

      goto LABEL_63;
    }

    v205 = [v203 symptomsLearnMoreItem];
    v206 = v9 == v205;

    v207 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v208 = v207;
    if (v206)
    {
      v229 = [v207 sourceItem];
      v230 = [v229 latestResults];
      v231 = [v230 objectForKeyedSubscript:*MEMORY[0x277D13F48]];

      v232 = [MEMORY[0x277D148E8] sharedInstance];
      v233 = [v232 openURL:v231];

      v234 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v235 = [v234 sourceItemAccessory];
      [(HUServiceDetailsViewController *)self _submitMetricsSymptomsInteractionForAccessory:v235 interactionType:1];

      goto LABEL_63;
    }

    v209 = [v207 splitMediaAccountUseDefaultAccountItem];
    v210 = v9 == v209;

    if (v210)
    {
      [(HUServiceDetailsViewController *)self didSelectHomeAssistantDeviceSplitAccountAction:1];
      goto LABEL_63;
    }

    v211 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v212 = [v211 splitMediaAccountSignoutAccountItem];
    v213 = v9 == v212;

    if (v213)
    {
      [(HUServiceDetailsViewController *)self didSelectHomeAssistantDeviceSplitAccountAction:2];
      goto LABEL_63;
    }

    v214 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v215 = [v214 homeTheaterAudioOutputItem];
    v216 = v9 == v215;

    if (v216)
    {
      objc_opt_class();
      v236 = [(HUServiceDetailsViewController *)self item];
      if (objc_opt_isKindOfClass())
      {
        v237 = v236;
      }

      else
      {
        v237 = 0;
      }

      v34 = v237;

      if (v34)
      {
        v238 = [[HUHomeTheaterAudioViewController alloc] initWithMediaAccessoryItem:v34];
        v239 = [(HUServiceDetailsViewController *)self navigationController];
        v240 = [v239 hu_pushPreloadableViewController:v238 animated:1];
      }
    }

    else
    {
      v217 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v218 = [v217 cameraActivityZonesItem];
      v219 = v9 == v218;

      if (v219)
      {
        objc_opt_class();
        v241 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v242 = [v241 sourceItem];
        if (objc_opt_isKindOfClass())
        {
          v243 = v242;
        }

        else
        {
          v243 = 0;
        }

        v50 = v243;

        if (v50)
        {
          v244 = [HUCameraActivityZoneEditorViewController alloc];
          v245 = [v50 profile];
          v51 = [(HUCameraActivityZoneEditorViewController *)v244 initWithCameraProfile:v245];

          v246 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v51];
          [v246 setToolbarHidden:0];
          [v246 setModalPresentationStyle:2];
          [(HUServiceDetailsViewController *)self presentViewController:v246 animated:1 completion:0];
        }

        else
        {
          v51 = HFLogForCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *from = 138412290;
            *&from[4] = v9;
            _os_log_error_impl(&dword_20CEB6000, v51, OS_LOG_TYPE_ERROR, "Unable to launch editor for invalid item:%@", from, 0xCu);
          }
        }

        goto LABEL_62;
      }

      v220 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v221 = [v220 cameraRecordingOptionsItem];
      v222 = [v9 isEqual:v221];

      if (v222)
      {
        v223 = [(HUServiceDetailsViewController *)self navigationController];
        v224 = [HUCameraRecordingOptionsTableViewController alloc];
        v225 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v226 = [v225 sourceItem];
        v227 = [(HUCameraRecordingOptionsTableViewController *)v224 initWithServiceLikeItem:v226];
        v228 = [v223 hu_pushPreloadableViewController:v227 animated:1];

        goto LABEL_63;
      }

      v247 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v248 = [v247 cameraFaceRecognitionItem];
      v249 = [v9 isEqual:v248];

      if (v249)
      {
        v250 = [HUFaceRecognitionLibraryListViewController alloc];
        v251 = [(HUItemTableViewController *)self itemManager];
        v252 = [v251 home];
        v253 = [(HUFaceRecognitionLibraryListViewController *)v250 initWithHome:v252];

        v254 = [(HUServiceDetailsViewController *)self navigationController];
        v255 = [v254 hu_pushPreloadableViewController:v253 animated:1];

        goto LABEL_63;
      }

      v256 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v257 = [v256 collectDiagnosticsItem];
      v258 = v9 == v257;

      if (v258)
      {
        v278 = [HUAccessoryDiagnosticsViewController alloc];
        v279 = [(HUServiceDetailsViewController *)self item];
        v280 = [(HUAccessoryDiagnosticsViewController *)v278 initWithSourceItem:v279];

        v281 = [(HUServiceDetailsViewController *)self navigationController];
        v282 = [v281 hu_pushPreloadableViewController:v280 animated:1];

        goto LABEL_63;
      }

      v259 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v260 = [v259 lockAddHomeKeyToWalletItem];
      v261 = [v9 isEqual:v260];

      v262 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v263 = v262;
      if (v261)
      {
        v264 = [v262 sourceItem];
        v265 = [v264 conformsToProtocol:&unk_28251B0C8];

        if (v265)
        {
          v266 = [(HUServiceDetailsViewController *)self detailsItemManager];
          v267 = [v266 sourceItem];

          v268 = [v267 home];
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
            v306 = v267;
            v307 = 2112;
            v308 = v268;
            _os_log_impl(&dword_20CEB6000, v269, OS_LOG_TYPE_DEFAULT, "(%@:%s) user tapped %@ of %@ in home %@", from, 0x34u);
          }

          v271 = [v6 cellForRowAtIndexPath:v7];
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
          v275 = [MEMORY[0x277D14D08] handleAddOrShowHomeKeyButtonTapForHome:v268];
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

      v283 = [v262 managedConfigurationProfilesItem];
      v284 = [v9 isEqual:v283];

      if (!v284)
      {
        goto LABEL_63;
      }

      objc_opt_class();
      v285 = [(HUItemTableViewController *)self itemManager];
      if (objc_opt_isKindOfClass())
      {
        v286 = v285;
      }

      else
      {
        v286 = 0;
      }

      v287 = v286;

      v34 = [v287 sourceItemAccessory];

      if (v34)
      {
        v288 = [[HUManagedConfigurationProfilesViewController alloc] initWithAccessory:v34];
        v289 = [(HUServiceDetailsViewController *)self navigationController];
        [v289 pushViewController:v288 animated:1];
      }
    }

LABEL_165:

    goto LABEL_63;
  }

  v51 = [v70 home];
  if (([v51 hf_currentUserIsAdministrator]& 1) == 0)
  {
    goto LABEL_62;
  }

  v71 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v72 = [v71 sourceItem];
  v73 = [v72 latestResults];
  v74 = [v73 objectForKeyedSubscript:*MEMORY[0x277D14148]];
  v290 = [v74 BOOLValue];

  if ((v290 & 1) == 0)
  {
    [(HUServiceDetailsViewController *)self setIsPresentingRoomsList:1];
    v75 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v76 = [v75 showRoomsList];
    v77 = [(HUServiceDetailsViewController *)self detailsItemManager];
    [v77 setShowRoomsList:v76 ^ 1u];

    v78 = [(HUServiceDetailsViewController *)self detailsItemManager];
    [v78 setShowAssociatedServiceTypeList:0];
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

- (void)diffableDataItemManager:(id)a3 willUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6 isInitialLoad:(BOOL)a7
{
  v7 = a7;
  v16.receiver = self;
  v16.super_class = HUServiceDetailsViewController;
  v12 = a6;
  v13 = a5;
  [(HUItemTableViewController *)&v16 diffableDataItemManager:a3 willUpdateItems:a4 addItems:v13 removeItems:v12 isInitialLoad:v7];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __109__HUServiceDetailsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke;
  v15[3] = &unk_277DBAF68;
  v15[4] = self;
  [v12 na_each:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__HUServiceDetailsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke_2;
  v14[3] = &unk_277DBAF68;
  v14[4] = self;
  [v13 na_each:v14];
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

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v13.receiver = self;
  v13.super_class = HUServiceDetailsViewController;
  v10 = a4;
  [(HUItemTableViewController *)&v13 diffableDataItemManager:a3 didUpdateItems:v10 addItems:a5 removeItems:a6];
  v11 = [(HUServiceDetailsViewController *)self inputSourceItemModuleController];
  [v11 updateAllConfigurationDisabled];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HUServiceDetailsViewController_diffableDataItemManager_didUpdateItems_addItems_removeItems___block_invoke;
  v12[3] = &unk_277DBAF68;
  v12[4] = self;
  [v10 na_each:v12];
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

- (void)itemManager:(id)a3 performUpdateRequest:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 changes];
  v8 = [v7 itemOperations];

  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        objc_opt_class();
        v14 = [v13 item];
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
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
            v17 = [(HUServiceDetailsViewController *)self controlPanelController];
            [v17 addItem:v16];
          }

          else
          {
            if ([v13 type] != 2)
            {
              goto LABEL_15;
            }

            v17 = [(HUServiceDetailsViewController *)self controlPanelController];
            [v17 removeItem:v16];
          }
        }

LABEL_15:

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v19.receiver = self;
  v19.super_class = HUServiceDetailsViewController;
  [(HUItemTableViewController *)&v19 itemManager:v18 performUpdateRequest:v6];
}

- (BOOL)itemManager:(id)a3 shouldShowControlPanelItem:(id)a4
{
  v5 = a4;
  v6 = [(HUServiceDetailsViewController *)self controlPanelController];
  v7 = [v6 shouldDisplayItem:v5];

  return v7;
}

- (BOOL)itemManager:(id)a3 shouldShowSectionTitleForControlPanelItem:(id)a4
{
  v5 = a4;
  v6 = [(HUServiceDetailsViewController *)self controlPanelController];
  v7 = [v6 shouldShowSectionTitleForItem:v5];

  return v7;
}

- (id)itemManager:(id)a3 sectionTitleForControlPanelItem:(id)a4 forServiceItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HUServiceDetailsViewController *)self controlPanelController];
  v10 = [v9 sectionTitleForItem:v8 forSourceItem:v7];

  return v10;
}

- (id)itemManager:(id)a3 sectionFooterForControlPanelItem:(id)a4 forServiceItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HUServiceDetailsViewController *)self controlPanelController];
  v10 = [v9 sectionFooterForItem:v8 forSourceItem:v7];

  return v10;
}

- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [(HUServiceDetailsViewController *)self _roomForItem:a4];
  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 serviceLikeBuilder];
  v8 = [v7 room];
  v9 = [v8 room];
  v10 = [v9 uniqueIdentifier];

  if (!v10)
  {
    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v23 = [v22 serviceLikeBuilder];
      v24 = 136315394;
      v25 = "[HUServiceDetailsViewController itemManager:didUpdateResultsForSourceItem:]";
      v26 = 2112;
      v27 = v23;
      _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "%s The source item has been changed, but we can't confirm that the room has changed because the self.detailsItemManager.serviceLikeBuilder (%@) has a nil room - which seems wrong.", &v24, 0x16u);
    }

    goto LABEL_9;
  }

  v11 = [v5 uniqueIdentifier];

  if (v11)
  {
    v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v13 = [v12 serviceLikeBuilder];
    v14 = [v13 room];
    v15 = [v14 room];
    v16 = [v15 uniqueIdentifier];
    v17 = [v5 uniqueIdentifier];
    v18 = [v16 isEqual:v17];

    if ((v18 & 1) == 0)
    {
      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v5 name];
        v24 = 136315394;
        v25 = "[HUServiceDetailsViewController itemManager:didUpdateResultsForSourceItem:]";
        v26 = 2112;
        v27 = v20;
        _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "%s The room has changed to (%@), thus the items in this view are stale. Resetting.", &v24, 0x16u);
      }

      v21 = [(HUServiceDetailsViewController *)self detailsItemManager];
      [v21 resetServiceLikeItemBuilder];
LABEL_9:
    }
  }
}

- (int64_t)numberOfValuesForPickerViewCell:(id)a3
{
  v3 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v4 = [v3 orderedRoomSectionItems];
  v5 = [v4 count];

  return v5;
}

- (void)pickerViewCell:(id)a3 didSelectValueAtIndex:(int64_t)a4
{
  if ([(HUServiceDetailsViewController *)self isPresentingRoomsList])
  {

    [(HUServiceDetailsViewController *)self setIsPresentingRoomsList:0];
  }

  else
  {
    v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v7 = [v6 orderedRoomSectionItems];
    v8 = [v7 count];

    if (v8 > a4)
    {
      v9 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v10 = [v9 orderedRoomSectionItems];
      v11 = [v10 objectAtIndexedSubscript:a4];

      [(HUServiceDetailsViewController *)self _didSelectRoomItem:v11];
    }
  }
}

- (id)pickerViewCell:(id)a3 titleForValueAtIndex:(int64_t)a4
{
  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 orderedRoomSectionItems];
  v8 = [v7 count];

  if (v8 <= a4)
  {
    v13 = 0;
  }

  else
  {
    v9 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v10 = [v9 orderedRoomSectionItems];
    v11 = [v10 objectAtIndexedSubscript:a4];

    v12 = [v11 latestResults];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  }

  return v13;
}

- (id)_characteristicsAffectedByControlItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 characteristicOptions];
  v6 = [v5 objectForKeyedSubscript:&unk_282491988];

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
        v12 = [v3 valueSource];
        v13 = [v12 allCharacteristicsForCharacteristicType:v11];
        [v4 unionSet:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)controlPanelController:(id)a3 willBeginPossibleWritesForControlItem:(id)a4
{
  v5 = a4;
  v7 = [(HUItemTableViewController *)self itemManager];
  v6 = [(HUServiceDetailsViewController *)self _characteristicsAffectedByControlItem:v5];

  [v7 beginSuppressingUpdatesForCharacteristics:v6 withReason:@"serviceDetailsControlInteraction"];
}

- (void)controlPanelController:(id)a3 didEndPossibleWritesForControlItem:(id)a4
{
  v4 = [(HUItemTableViewController *)self itemManager:a3];
  [v4 endSuppressingUpdatesForCharacteristicsWithReason:@"serviceDetailsControlInteraction" updateAffectedItems:1];
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 conformsToProtocol:&unk_2824C3AE0])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v8 requiresPresentingViewControllerDismissal])
  {
    [(HUServiceDetailsViewController *)self setRequiresPresentingViewControllerDismissal:1];
    v9 = [(HUServiceDetailsViewController *)self presentationDelegate];
    v10 = [v9 finishPresentation:self animated:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = [(UIViewController *)self hu_dismissViewControllerAnimated:v4];
    }

    else
    {
      v13 = [(HUServiceDetailsViewController *)self navigationController];
      v14 = [v13 popViewControllerAnimated:v4];

      v11 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    v10 = v11;
  }

  return v10;
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUServiceDetailsViewController *)self tableView];
  v41 = [v7 indexPathForCell:v6];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v41];

  v10 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v11 = [v10 favoriteItem];
  v12 = [v9 isEqual:v11];

  v13 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 serviceLikeBuilder];

    [v15 setIsFavorite:v4];
LABEL_5:
    v20 = [v15 commitItem];
LABEL_6:

    goto LABEL_7;
  }

  v16 = [v13 showInHomeDashboardItem];
  v17 = [v9 isEqual:v16];

  v18 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v19 = v18;
  if (v17)
  {
    v15 = [v18 serviceLikeBuilder];

    [v15 setShowInHomeDashboard:v4];
    goto LABEL_5;
  }

  v33 = [v18 cameraStatusLightItem];
  v34 = [v9 isEqual:v33];

  v35 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v15 = v35;
  if (v34)
  {
    [v35 updateCameraStatusLight:v4];
    goto LABEL_6;
  }

  v36 = [v35 cameraNightModeItem];
  v37 = [v9 isEqual:v36];

  v38 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v15 = v38;
  if (v37)
  {
    [v38 updateCameraNightMode:v4];
    goto LABEL_6;
  }

  v39 = [v38 cameraDoorbellChimeMuteItem];
  v40 = [v9 isEqual:v39];

  if (v40)
  {
    v15 = [(HUServiceDetailsViewController *)self detailsItemManager];
    [v15 updateDoorbellChimeMuteMode:v4];
    goto LABEL_6;
  }

LABEL_7:
  v21 = [v9 latestResults];
  v22 = *MEMORY[0x277D13F68];
  v23 = [v21 objectForKey:*MEMORY[0x277D13F68]];

  if (v23)
  {
    v24 = [v9 latestResults];
    v25 = [v24 objectForKeyedSubscript:v22];
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
    v29 = [v28 itemTitleLocalizationKey];

    v25 = v29;
  }

  v30 = MEMORY[0x277D143D8];
  v31 = [(HUItemTableViewController *)self itemManager];
  v32 = [v31 sourceItem];
  [v30 sendSwitchCellToggleEventForItem:v32 isOn:v4 title:v25 fromSourceViewController:self];
}

- (void)mediaSystemEditor:(id)a3 didCreate:(id)a4
{
  v18 = a3;
  v7 = a4;
  if (!v7)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:2120 description:{@"Invalid parameter not satisfying: %@", @"mediaSystem"}];
  }

  v8 = objc_alloc(MEMORY[0x277D147E8]);
  v9 = [(HUServiceDetailsViewController *)self item];
  v10 = [v9 valueSource];
  v11 = [v8 initWithValueSource:v10 mediaProfileContainer:v7];

  v12 = objc_alloc(MEMORY[0x277D14830]);
  v13 = [v7 home];
  v14 = [v12 initWithExistingObject:v7 inHome:v13];

  v15 = [[HUMediaAccessoryAudioSettingsViewController alloc] initWithMediaSystemBuilder:v14 mediaAccessoryItem:v11];
  [(HUMediaAccessoryAudioSettingsViewController *)v15 setPresentationDelegate:self];
  v16 = [(HUServiceDetailsViewController *)self _magicallyUpdateNavigationStackForNewRootItem:v11 topViewController:v15];
  [v18 setPresentationDelegate:v16];
}

- (void)mediaSystemEditor:(id)a3 didAbortDueTo:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 mediaProfile];

  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:2134 description:{@"Invalid parameter not satisfying: %@", @"accessoryNeedingUpdate.mediaProfile"}];
  }

  v10 = [v7 hf_fetchAvailableSoftwareUpdateWithOptions:0];
  v11 = objc_alloc(MEMORY[0x277D147E8]);
  v12 = [(HUServiceDetailsViewController *)self item];
  v13 = [v12 valueSource];
  v14 = [v7 mediaProfile];

  v17 = [v11 initWithValueSource:v13 mediaProfileContainer:v14];
  v15 = [(HUServiceDetailsViewController *)self _magicallyUpdateNavigationStackForNewRootItem:v17 topViewController:0];
  [v8 setPresentationDelegate:v15];
}

- (void)serviceGroupEditor:(id)a3 didCreateServiceGroup:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:2147 description:{@"Invalid parameter not satisfying: %@", @"serviceGroup"}];
  }

  v8 = objc_alloc(MEMORY[0x277D14AB0]);
  v9 = [(HUServiceDetailsViewController *)self item];
  v10 = [v9 valueSource];
  v11 = [v8 initWithValueSource:v10 serviceGroup:v7];

  v12 = [(HUServiceDetailsViewController *)self _magicallyUpdateNavigationStackForNewRootItem:v11 topViewController:0];
  [v14 setPresentationDelegate:v12];
}

- (id)_magicallyUpdateNavigationStackForNewRootItem:(id)a3 topViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:2163 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v9 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:v7];
  v10 = [(HUServiceDetailsViewController *)self presentationDelegate];
  [(HUServiceDetailsViewController *)v9 setPresentationDelegate:v10];

  [(HUServiceDetailsViewController *)v9 setRequiresPresentingViewControllerDismissal:0];
  v11 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
  [v11 na_safeAddObject:v8];
  v12 = [(HUServiceDetailsViewController *)self navigationController];
  v13 = [(HUServiceDetailsViewController *)self presentingViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v15 = [(HUServiceDetailsViewController *)self presentingViewController];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [v17 viewControllers];
    v19 = [v18 na_firstObjectPassingTest:&__block_literal_global_668];

    v20 = [v19 quickControlViewController];
    v21 = [v20 presentationDelegate];
    [(HUServiceDetailsViewController *)v9 setPresentationDelegate:v21];

    v12 = v17;
  }

  [v12 setViewControllers:v11 animated:0];

  return v9;
}

uint64_t __98__HUServiceDetailsViewController__magicallyUpdateNavigationStackForNewRootItem_topViewController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)detailsViewControllerFor:(id)a3 item:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:v6];

  v8 = [v5 serviceContainingItem];
  objc_opt_class();
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if (v6)
  {
    v9 = [(HUServiceDetailsViewController *)v7 detailsItemManager];
    [v9 setShouldHideAccessoryItem:1];
  }

  else
  {
    v10 = [v5 serviceContainingItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = [(HUServiceDetailsViewController *)v7 detailsItemManager];
    [v9 setShouldHideSeparateTileItem:1];
  }

LABEL_6:

  return v7;
}

- (BOOL)hasDetailsActionFor:(id)a3 item:(id)a4
{
  v4 = a4;
  if ([v4 conformsToProtocol:&unk_28251B0C8])
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

- (id)detailsViewControllerForContainedMediaAccessoryGridViewController:(id)a3 item:(id)a4
{
  v4 = a4;
  v5 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:v4];

  return v5;
}

- (id)detailsViewControllerForContainedServiceGridViewController:(id)a3 item:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:v6];

  v8 = [v5 serviceContainerItem];
  objc_opt_class();
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if (v6)
  {
    v9 = [(HUServiceDetailsViewController *)v7 detailsItemManager];
    [v9 setShouldHideAccessoryItem:1];
  }

  else
  {
    v10 = [v5 serviceContainerItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = [(HUServiceDetailsViewController *)v7 detailsItemManager];
    [v9 setShouldHideSeparateTileItem:1];
  }

LABEL_6:

  return v7;
}

- (void)editRoomViewControllerDidFinish:(id)a3 withNewRoom:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D149D8]);
    v9 = [v7 home];
    v10 = [v8 initWithExistingObject:v7 inHome:v9];

    v11 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v12 = [v11 selectRoom:v10];

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
      v16 = v7;
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsViewController *)self tableView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(HUServiceDetailsViewController *)self tableView];
  v11 = [v10 indexPathForRowAtPoint:{v7, v9}];

  if (v11)
  {
    v12 = [(HUItemTableViewController *)self itemManager];
    v13 = [v12 displayedItemAtIndexPath:v11];

    v14 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v15 = [v14 accessoryInfoItemProvider];
    v16 = [v15 items];
    v17 = [v16 containsObject:v13];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_longPressRecognized:(id)a3
{
  v17 = a3;
  if ([v17 state] == 1)
  {
    v4 = [(HUServiceDetailsViewController *)self tableView];
    [v17 locationInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = [(HUServiceDetailsViewController *)self tableView];
    v10 = [v9 indexPathForRowAtPoint:{v6, v8}];

    objc_opt_class();
    v11 = [(HUServiceDetailsViewController *)self tableView];
    v12 = [v11 cellForRowAtIndexPath:v10];
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
      v15 = [MEMORY[0x277D75718] sharedMenuController];
      [v14 becomeFirstResponder];
      v16 = [(HUServiceDetailsViewController *)self view];
      [v14 frame];
      [v15 showMenuFromView:v16 rect:?];
    }
  }
}

- (BOOL)_allowRowSelectionForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([v4 isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (-[HUServiceDetailsViewController detailsItemManager](self, "detailsItemManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "canToggleAccessoryInfoItem:", v4), v5, (v6))
  {
    v7 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v11 = [v10 addGroupItem];
    [v9 na_safeAddObject:v11];

    v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v13 = [v12 identifyHomePodItem];
    [v9 na_safeAddObject:v13];

    v14 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v15 = [v14 separateTileItem];
    [v9 na_safeAddObject:v15];

    v16 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v17 = [v16 showContainedItems];
    [v9 na_safeAddObject:v17];

    v18 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v19 = [v18 createNewRoomItem];
    [v9 na_safeAddObject:v19];

    v20 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v21 = [v20 pairingModeItem];
    [v9 na_safeAddObject:v21];

    v22 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v23 = [v22 exportDiagnosticsItem];
    v24 = [v4 isEqual:v23];

    if (v24)
    {
      v25 = [v4 latestResults];
      v26 = [v25 objectForKeyedSubscript:*MEMORY[0x277D13D30]];

      if (!v26 || [v26 isFinished])
      {
        v27 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v28 = [v27 exportDiagnosticsItem];
        [v9 na_safeAddObject:v28];
      }
    }

    v29 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v30 = [v29 removeItem];
    [v9 na_safeAddObject:v30];

    v31 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v32 = [v31 removeFromGroupItem];
    [v9 na_safeAddObject:v32];

    v33 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v34 = [v33 resetItem];
    [v9 na_safeAddObject:v34];

    v35 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v36 = [v35 restartItem];
    [v9 na_safeAddObject:v36];

    v37 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v38 = [v37 accessoryItem];
    [v9 na_safeAddObject:v38];

    v39 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v40 = [v39 alarmItem];
    [v9 na_safeAddObject:v40];

    v41 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v42 = [v41 lockPinCodesItem];
    [v9 na_safeAddObject:v42];

    v43 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v44 = [v43 statusAndNotificationItem];
    [v9 na_safeAddObject:v44];

    v45 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v46 = [v45 homeTheaterAudioOutputItem];
    [v9 na_safeAddObject:v46];

    v47 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v48 = [v47 managedConfigurationProfilesItem];
    [v9 na_safeAddObject:v48];

    v49 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v50 = [v49 roomItem];
    [v9 na_safeAddObject:v50];

    v51 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v52 = [v51 associatedServiceTypeItem];
    [v9 na_safeAddObject:v52];

    v53 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v54 = [v53 audioSettingsItem];
    [v9 na_safeAddObject:v54];

    v55 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v56 = [v55 internalDebuggingItem];
    [v9 na_safeAddObject:v56];

    v57 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v58 = [v57 symptomsLearnMoreItem];
    [v9 na_safeAddObject:v58];

    v59 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v60 = [v59 symptomsWiFiPickerItem];
    [v9 na_safeAddObject:v60];

    v61 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v62 = [v61 splitMediaAccountUseDefaultAccountItem];
    [v9 na_safeAddObject:v62];

    v63 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v64 = [v63 splitMediaAccountSignoutAccountItem];
    [v9 na_safeAddObject:v64];

    v65 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v66 = [v65 cameraActivityZonesItem];
    [v9 na_safeAddObject:v66];

    v67 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v68 = [v67 cameraRecordingOptionsItem];
    [v9 na_safeAddObject:v68];

    v69 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v70 = [v69 cameraFaceRecognitionItem];
    [v9 na_safeAddObject:v70];

    v71 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v72 = [v71 collectDiagnosticsItem];
    [v9 na_safeAddObject:v72];

    v73 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v74 = [v73 lockAddHomeKeyToWalletItem];
    [v9 na_safeAddObject:v74];

    if ([v9 containsObject:v4])
    {
      v7 = 1;
    }

    else
    {
      v75 = [(HUItemTableViewController *)self moduleControllerForItem:v4];
      v76 = v75;
      if (v75 && ([v75 canSelectItem:v4] & 1) != 0 || (-[HUServiceDetailsViewController detailsItemManager](self, "detailsItemManager"), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v77, "existingRoomItemProvider"), v78 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v78, "items"), v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v79, "containsObject:", v4), v79, v78, v77, (v80 & 1) != 0))
      {
        v7 = 1;
      }

      else
      {
        v81 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v82 = [v81 suggestedRoomItemProvider];
        v83 = [v82 items];
        v7 = [v83 containsObject:v4];
      }
    }
  }

  return v7;
}

- (BOOL)_allowRowHighlightForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v6 = [v5 canToggleAccessoryInfoItem:v4];

  v7 = (v6 & 1) == 0 && [(HUServiceDetailsViewController *)self _allowRowSelectionForItem:v4];
  return v7;
}

- (BOOL)_shouldShowDetailDisclosureForItem:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 showContainedItems];
  [v5 na_safeAddObject:v7];

  v8 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v9 = [v8 accessoryItem];
  [v5 na_safeAddObject:v9];

  v10 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v11 = [v10 alarmItem];
  [v5 na_safeAddObject:v11];

  v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v13 = [v12 lockPinCodesItem];
  [v5 na_safeAddObject:v13];

  v14 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v15 = [v14 statusAndNotificationItem];
  [v5 na_safeAddObject:v15];

  v16 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v17 = [v16 homeTheaterAudioOutputItem];
  [v5 na_safeAddObject:v17];

  v18 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v19 = [v18 audioSettingsItem];
  [v5 na_safeAddObject:v19];

  v20 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v21 = [v20 internalDebuggingItem];
  [v5 na_safeAddObject:v21];

  v22 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v23 = [v22 cameraRecordingOptionsItem];
  [v5 na_safeAddObject:v23];

  v24 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v25 = [v24 cameraFaceRecognitionItem];
  [v5 na_safeAddObject:v25];

  v26 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v27 = [v26 cameraActivityZonesItem];
  [v5 na_safeAddObject:v27];

  if ([v5 containsObject:v4])
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LODWORD(self) = ![(HUServiceDetailsViewController *)self _shouldShowAddButtonForOptionItem:v4];
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
      v29 = [(HUServiceDetailsViewController *)self detailsItemManager];
      LOBYTE(self) = [v29 canShowWiFiPickerForItem:v4];
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

LABEL_5:

  return self;
}

- (BOOL)_shouldShowAddButtonForOptionItem:(id)a3
{
  v3 = a3;
  v4 = [v3 characteristics];
  v5 = [v4 anyObject];

  v6 = [v3 triggerValue];
  v7 = [v5 hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:v6];

  v8 = [v3 latestResults];

  v9 = [v8 objectForKey:@"itemIsEditable"];
  v10 = [v9 BOOLValue];

  return (v7 == 0) & v10;
}

- (void)checkForAccessoriesNeedingReprovisioning
{
  v13 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v3 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 sourceItemAccessory];

  v7 = [v6 home];
  if (![v6 accessoryReprovisionState])
  {
    if (![v6 hf_needsReprovisioningCheck])
    {
      goto LABEL_10;
    }

    [v7 startSearchForAccessoriesNeedingReprovisioning];
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = [v6 accessoryReprovisionState];
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

  v4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  [v4 restartAccessory];
}

- (void)_presentResetHomePodConfirmation:(id)a3
{
  v4 = a3;
  v5 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRestartHomePodAlertButtonTitle", @"HUServiceDetailsRestartHomePodAlertButtonTitle", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceName", @"HUServiceDetailsRemoveDeviceName", 1);
  v7 = [(UITableViewController *)self hu_actionSheetWithTitle:0 message:0 indexPath:v4];
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
  v17 = v4;
  v10 = v4;
  v11 = [v9 actionWithTitle:v6 style:2 handler:v16];
  [v7 addAction:v11];

  v12 = MEMORY[0x277D750F8];
  v13 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertCancelButton", @"HUServiceDetailsRemoveDeviceAlertCancelButton", 1);
  v14 = [v12 actionWithTitle:v13 style:1 handler:&__block_literal_global_683];
  [v7 addAction:v14];

  v15 = [(HUServiceDetailsViewController *)self hf_topmostViewController];
  [v15 presentViewController:v7 animated:1 completion:0];
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

- (void)_exportDiagnosticsForItem:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[HUServiceDetailsViewController _exportDiagnosticsForItem:]";
    v25 = 2112;
    v26 = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%s(%@)initiating 'Export Diagnostics'", buf, 0x16u);
  }

  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 sourceItemAccessory];
  v8 = [v7 mediaProfile];

  v9 = [v8 hf_settingsAdapterManager];
  v10 = [v9 adapterForIdentifier:*MEMORY[0x277D13320]];
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
  v16 = v4;
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

- (void)_presentRemoveFromGroupConfirmation:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsViewController *)self namingComponent];
  v6 = [v5 name];
  v13 = HULocalizedStringWithFormat(@"HURemoveFromGroupMessage", @"%@", v7, v8, v9, v10, v11, v12, v6);

  v14 = [(UITableViewController *)self hu_actionSheetWithTitle:0 message:v13 indexPath:v4];

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

  v21 = [(HUServiceDetailsViewController *)self hf_topmostViewController];
  [v21 presentViewController:v14 animated:1 completion:0];
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

- (void)_presentRemoveConfirmation:(id)a3
{
  v7 = a3;
  v4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v5 = [v4 sourceItemAccessory];
  v6 = [v5 supportsCHIP];

  if (v6)
  {
    [(HUServiceDetailsViewController *)self _presentEcosystemAccessoryRemoveConfirmation:v7];
  }

  else
  {
    [(HUServiceDetailsViewController *)self _presentHomeAccessoryRemoveConfirmation:v7];
  }
}

- (void)_presentEcosystemAccessoryRemoveConfirmation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_opt_class();
  v5 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v6 = [v5 connectedServicesItemModule];
  v7 = [v6 connectedServicesItemProvider];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 connectedEcosystemsFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HUServiceDetailsViewController__presentEcosystemAccessoryRemoveConfirmation___block_invoke;
  v13[3] = &unk_277DBEF18;
  objc_copyWeak(&v15, &location);
  v11 = v4;
  v14 = v11;
  v12 = [v10 addCompletionBlock:v13];

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

- (void)_presentHomeAccessoryRemoveConfirmation:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsViewController *)self item];
  if ([v5 conformsToProtocol:&unk_28251B268])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveGroupAlertTitle", @"HUServiceDetailsRemoveGroupAlertTitle", 1);
  v9 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveGroupAlertButton", @"HUServiceDetailsRemoveGroupAlertButton", 1);
  objc_opt_class();
  v10 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v7 isItemGroup];
  if ((v13 & 1) == 0)
  {
    v117 = v4;
    v14 = [(HUServiceDetailsViewController *)self namingComponent];
    v15 = [v14 name];
    v22 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveDeviceAlertTitle", @"%@", v16, v17, v18, v19, v20, v21, v15);

    v23 = _HULocalizedStringWithDefaultValue(@"HURemoveTitle", @"HURemoveTitle", 1);

    objc_opt_class();
    v24 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v27 = [v26 profile];

    LODWORD(v26) = [v27 hf_supportsRecordingEvents];
    if (v26)
    {
      v28 = [(HUServiceDetailsViewController *)self namingComponent];
      v29 = [v28 name];
      v36 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveCameraWithClipsAlertTitle", @"%@", v30, v31, v32, v33, v34, v35, v29);

      v37 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertRemoveCameraButton", @"HUServiceDetailsRemoveDeviceAlertRemoveCameraButton", 1);

      v23 = v37;
      v22 = v36;
    }

    v116 = v23;
    objc_opt_class();
    v38 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    if (v39)
    {
      v40 = MEMORY[0x277CCACA8];
      v41 = HULocalizedWiFiString(@"HUServiceDetailsRemoveRouterAlertTitle");
      v42 = [(HUServiceDetailsViewController *)self namingComponent];
      v43 = [v42 name];
      v44 = [v40 stringWithValidatedFormat:v41 validFormatSpecifiers:@"%@" error:0, v43];

      v22 = v44;
    }

    v45 = [v12 accessories];
    v46 = [v45 na_any:&__block_literal_global_752];

    v47 = [v12 accessories];
    v48 = [v47 na_firstObjectPassingTest:&__block_literal_global_754];
    v49 = [v48 hf_displayName];

    if (v46)
    {
      v56 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveHomePodAlertTitle", @"%@", v50, v51, v52, v53, v54, v55, v49);

      v22 = v56;
    }

    objc_opt_class();
    v57 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    v59 = v58;

    if (v59)
    {
      v60 = [v59 service];
      v61 = [v60 accessory];
      v62 = [v61 hf_isHomePod];

      if (v62)
      {
        v63 = [v59 service];
        v64 = [v63 accessory];
        v65 = [v64 hf_displayName];

        v66 = [v59 service];
        v67 = [v66 name];

        v74 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveAccessoryWithServiceAlertTitle", @"%@%@", v68, v69, v70, v71, v72, v73, v67);

        v49 = v65;
        v22 = v74;
      }
    }

    v75 = [v12 accessories];
    v76 = [v75 allObjects];
    v77 = [v76 firstObject];

    v78 = [v12 home];
    v79 = [v78 hf_enabledResidentDevices];
    if ([v79 count] != 1)
    {
      goto LABEL_31;
    }

    v80 = v12;
    v81 = v49;
    v114 = v80;
    v115 = v22;
    v82 = [v80 home];
    v83 = [v82 hf_enabledResidentDevices];
    v84 = [v77 hf_linkedResidentDevice];
    v85 = [v83 containsObject:v84];

    if (v85)
    {
      v49 = v81;
      if (([v77 hf_isHomePod] & 1) != 0 || objc_msgSend(v77, "hf_isAppleTV"))
      {
        v78 = [v77 hf_displayName];
        v22 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveLastResidentAlertTitle", @"%@", v86, v87, v88, v89, v90, v91, v78);
        v12 = v114;
        v79 = v115;
LABEL_31:

LABEL_34:
        v8 = v22;
        v9 = v116;
        v4 = v117;
        goto LABEL_35;
      }
    }

    else
    {
      v49 = v81;
    }

    v12 = v114;
    v22 = v115;
    goto LABEL_34;
  }

LABEL_35:
  v92 = [(HUServiceDetailsViewController *)self item];
  v93 = [v92 accessories];
  v94 = [v93 na_any:&__block_literal_global_765];

  if (v94)
  {
    v113 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsRemoveDeviceAlertTitleManualNetworkReconfiguration", @"HUServiceDetailsRemoveDeviceAlertTitleManualNetworkReconfiguration", 1);
    v101 = HULocalizedStringWithFormat(@"HUServiceDetailsRemoveDeviceAlertTitleManualNetworkReconfiguration_Format", @"%@%@", v95, v96, v97, v98, v99, v100, v8);

    v8 = v101;
  }

  if ([v12 mediaAccessoryItemType] == 4)
  {
    v102 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v103 = [v102 home];
    v104 = [v12 mediaProfileContainer];
    v105 = [v103 hf_relatedHomeTheaterMediaProfileContainerFor:v104];

    if (v105)
    {
      v106 = _HULocalizedStringWithDefaultValue(@"HUBreakHomeTheaterAlert_Body", @"HUBreakHomeTheaterAlert_Body", 1);

      v8 = v106;
    }
  }

  v107 = [(UITableViewController *)self hu_actionSheetWithTitle:0 message:v8 indexPath:v4];
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

  v112 = [(HUServiceDetailsViewController *)self hf_topmostViewController];
  [v112 presentViewController:v107 animated:1 completion:0];
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
  v3 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = [(HUItemTableViewController *)self itemManager];
    v7 = [v6 home];
    v8 = [v7 hf_accessoriesRequiringManualWiFiReconfiguration];
    v9 = [v8 count] != 0;
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
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 home];
  v7 = [v6 hf_accessoriesRequiringManualWiFiReconfiguration];
  v8 = [v7 count];

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

- (id)_roomForItem:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_28251B0C8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 homeKitObject];

  if ([v5 conformsToProtocol:&unk_282547DB8])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 hf_parentRoom];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_presentWiFiPickerForItem:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUServiceDetailsViewController *)self pickerManager];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "Picker is already presented. Returning.", buf, 2u);
    }

LABEL_17:

    goto LABEL_18;
  }

  v7 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v8 = [v7 canShowWiFiPickerForItem:v4];

  if (v8)
  {
    v9 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v6 = [v9 sourceItemAccessory];

    objc_opt_class();
    v10 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 mediaProfileContainer];
    v14 = [v12 mediaAccessoryItemType];

    if (v14 == 4)
    {
      v15 = [v13 topSymptomsHandlerAccessory];

      v6 = v15;
    }

    [(HUServiceDetailsViewController *)self _setupWiFiPickerManagerForFirstPartyAccessory:v6];
    v16 = [(HUServiceDetailsViewController *)self pickerManager];
    v17 = [v16 presentingViewController];

    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v17;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Now presenting WiFi Picker VC %@ for %@", buf, 0x16u);
    }

    v19 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v20 = [v19 symptomsWiFiPickerItem];
    v21 = [v4 isEqual:v20];

    if (v21)
    {
      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(HUServiceDetailsViewController *)self detailsItemManager];
        v23 = [v29 symptomsWiFiPickerItem];
        v24 = [v6 symptomsHandler];
        v25 = [v24 hf_symptomsSortedByPriority];
        v26 = [v25 firstObject];
        *buf = 138413058;
        v31 = self;
        v32 = 2112;
        v33 = v23;
        v34 = 2112;
        v35 = v26;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@: User tapped symptomsWiFiPickerItem: %@ for symptom: %@ for accessory: %@", buf, 0x2Au);
      }
    }

    v27 = HFLocalizedWiFiString();
    [(HUServiceDetailsViewController *)v17 setTitle:v27];

    v28 = [(HUServiceDetailsViewController *)self navigationController];
    [v28 pushViewController:v17 animated:1];

    [(HUServiceDetailsViewController *)self _submitMetricsSymptomsInteractionForAccessory:v6 interactionType:2];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_setupWiFiPickerManagerForFirstPartyAccessory:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUServiceDetailsViewController *)self pickerManager];

  if (v5)
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
    v6 = [(HUServiceDetailsViewController *)self _currentAssociatedNetworkInfoForFirstPartyAccessory:v4];
    v7 = objc_alloc(MEMORY[0x277D7BB58]);
    v8 = [v7 initWithNetworks:MEMORY[0x277CBEBF8] currentNetwork:v6];
    v9 = [v4 hf_displayName];
    [v8 setAccessoryName:v9];

    v10 = [_TtC6HomeUI21HomeWiFiPickerContext alloc];
    v11 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v12 = [v11 home];
    v13 = [(HomeWiFiPickerContext *)v10 initWithMediaAccessory:v4 home:v12 delegate:self];
    wifiPickerContext = self->_wifiPickerContext;
    self->_wifiPickerContext = v13;

    v15 = [objc_alloc(MEMORY[0x277D7BB60]) initWithConfiguration:v8 context:self->_wifiPickerContext];
    [(HUServiceDetailsViewController *)self setPickerManager:v15];

    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      v18 = v4;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Setting up WiFi Picker for accessory [%@], currentlyAssociatedNetworkInfo [%@], configuration [%@]", &v17, 0x20u);
    }
  }
}

- (id)_currentAssociatedNetworkInfoForFirstPartyAccessory:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 wifiNetworkInfo];
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277D146E8] sharedDispatcher];
  v6 = [v5 diagnosticInfoManager];
  v4 = [v6 wifiNetworkInfoForAccessory:v3];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Using wifiInfo from diagnosticInfoManager: %@", &v14, 0xCu);
  }

  if (v4)
  {
LABEL_5:
    v8 = objc_alloc(MEMORY[0x277D7BB50]);
    v9 = [v4 SSID];
    v10 = [v4 MACAddress];
    v11 = [v10 formattedString];
    v12 = [v8 initWithSSID:v9 securityType:0 rssi:0 macAddress:v11];
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "Error: currentlyAssociatedNetwork not found", &v14, 2u);
    }

    v4 = 0;
    v12 = 0;
  }

  return v12;
}

- (void)beginScan
{
  v2 = [(HUServiceDetailsViewController *)self pickerManager];
  [v2 beginScan];
}

- (void)endScan
{
  v2 = [(HUServiceDetailsViewController *)self pickerManager];
  [v2 endScan];
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

- (void)handleTimer:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v3 userInfo];
    v5 = [v4 anyObject];
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Timer to hide Network Diagnostics symptoms has ended accessory: %@", &v7, 0xCu);
    }

    [v5 hf_toggleSymptomsToShowAfterWiFiPickerFix:0];
  }
}

- (void)updateCurrentWiFiNetwork:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsViewController *)self pickerManager];
  [v5 updateCurrentNetwork:v4];
}

- (void)updateScannedWiFiNetworks:(id)a3
{
  v4 = a3;
  v5 = [(HUServiceDetailsViewController *)self pickerManager];
  [v5 updateScannedNetworks:v4];
}

- (void)wifiPickerViewDidDisappear
{
  [(HUServiceDetailsViewController *)self setWifiPickerContext:0];

  [(HUServiceDetailsViewController *)self setPickerManager:0];
}

- (void)_presentTriggerEditorForProgrammableSwitchEventOptionItem:(id)a3
{
  v35 = a3;
  v4 = [v35 characteristics];
  v5 = [v4 anyObject];
  v6 = [v5 hf_home];

  v7 = [v35 characteristics];
  v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_814];

  if (v8)
  {
    if ([v6 hf_currentUserIsAdministrator])
    {
      v9 = [v35 latestResults];
      v10 = [v9 objectForKey:@"itemIsEditable"];
      v11 = [v10 BOOLValue];

      if (v11)
      {
        v12 = [v35 triggerValue];
        v13 = [v8 hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:v12];

        v14 = [HUTriggerBuilderContext alloc];
        v15 = [v35 latestResults];
        v16 = [v15 objectForKey:@"triggerBuilderContext"];
        v17 = [(HUTriggerBuilderContext *)v14 initWithTriggerBuilderContext:v16];

        if (v13)
        {
          v18 = [objc_alloc(MEMORY[0x277D14668]) initWithExistingObject:v13 inHome:v6 context:v17];
          v19 = [[HUTriggerSummaryViewController alloc] initWithTriggerBuilder:v18 mode:1 isPresentedModally:1 delegate:self];
        }

        else
        {
          v20 = [(HUServiceDetailsViewController *)self home];
          v21 = [v20 hf_currentUserIsAdministrator];

          if (v21)
          {
            NSLog(&cfstr_UserIsNotAnAdm.isa);
            v19 = 0;
            v18 = 0;
          }

          else
          {
            v18 = [objc_alloc(MEMORY[0x277D14668]) initWithHome:v6 context:v17];
            v22 = [v18 characteristicInterface];
            v23 = [v35 triggerValue];
            [v22 setCharacteristic:v8 triggerValue:v23];

            v19 = [[HUTriggerActionPickerViewController alloc] initWithTriggerBuilder:v18 mode:0 delegate:self];
            v24 = objc_alloc(MEMORY[0x277D751E0]);
            v25 = _HULocalizedStringWithDefaultValue(@"HUProgrammableSwitchTriggerSetupCancelTitle", @"HUProgrammableSwitchTriggerSetupCancelTitle", 1);
            v34 = [v24 initWithTitle:v25 style:2 target:self action:sel_dismissTriggerActionEditorViewController_];

            v26 = MEMORY[0x277CBEB18];
            v27 = [(HUTriggerSummaryViewController *)v19 navigationItem];
            v28 = [v27 leftBarButtonItems];
            v29 = [v26 arrayWithArray:v28];

            [v29 addObject:v34];
            v30 = [(HUTriggerSummaryViewController *)v19 navigationItem];
            [v30 setLeftBarButtonItems:v29];
          }
        }

        [v18 setShouldMarkTriggerAsHomeAppCreated:{1, v34}];
        v31 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v19];
        [v31 setModalPresentationStyle:2];
        v32 = [(HUServiceDetailsViewController *)self navigationController];
        v33 = [v32 hu_presentPreloadableViewController:v31 animated:1];
      }
    }
  }

  else
  {
    NSLog(&cfstr_UnableToFindHu.isa);
    [v6 hf_currentUserIsAdministrator];
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

- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4
{
  v17 = a3;
  v6 = [(HUServiceDetailsViewController *)self navigationController];
  v7 = [v6 viewControllers];
  v8 = [v7 containsObject:v17];

  if (v8)
  {
    v9 = [(HUServiceDetailsViewController *)self navigationController];
    v10 = [v9 popToRootViewControllerAnimated:1];
    goto LABEL_11;
  }

  v11 = [(HUServiceDetailsViewController *)self presentedViewController];
  v12 = [v17 navigationController];
  v13 = v11;
  v14 = v12;
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
    v9 = [(HUServiceDetailsViewController *)self navigationController];
    [v9 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_11;
  }

LABEL_10:
  v9 = [MEMORY[0x277CCA890] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:3047 description:@"triggerEditor:didFinishWithTriggerBuilder: shouldn't get here.  Ever."];
LABEL_11:
}

- (void)dismissTriggerActionEditorViewController:(id)a3
{
  v3 = [(HUServiceDetailsViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_setupProgrammableSwitchCell:(id)a3 forItem:(id)a4
{
  v19 = a3;
  v5 = a4;
  v6 = [v5 characteristics];
  v7 = [v6 anyObject];

  v8 = [v5 triggerValue];
  v9 = [v7 hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:v8];

  v10 = [v5 latestResults];
  v11 = [v10 objectForKey:@"itemIsEditable"];
  v12 = [v11 BOOLValue];

  v13 = [v5 latestResults];

  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D140D0]];
  LODWORD(v11) = [v14 BOOLValue];

  [v19 setHideIcon:1];
  [v19 setDisabled:v12 ^ 1];
  [v19 setHideDescriptionIcon:v11 ^ 1];
  if ([v19 isDisabled])
  {
    v15 = 0;
  }

  else
  {
    v15 = 3;
  }

  [v19 setSelectionStyle:v15];
  v16 = [MEMORY[0x277D755B8] hu_exclamationMarkImage];
  [v19 setDescriptionIcon:v16];

  [v19 setIconForegroundColorFollowsTintColor:1];
  [v19 setAccessoryView:0];
  [v19 setAccessoryType:v12];
  if (!v9 && v12)
  {
    v17 = objc_opt_new();
    [v17 _setTextColorFollowsTintColor:1];
    v18 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsProgrammableSwitchAdd", @"HUServiceDetailsProgrammableSwitchAdd", 1);
    [v17 setText:v18];

    [v17 sizeToFit];
    [v19 setAccessoryView:v17];
  }
}

- (void)setShouldTrackProgrammableSwitchActivations:(BOOL)a3
{
  if (self->_shouldTrackProgrammableSwitchActivations != a3)
  {
    self->_shouldTrackProgrammableSwitchActivations = a3;
  }
}

- (void)accessory:(id)a3 service:(id)a4 didUpdateValueForCharacteristic:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(HUServiceDetailsViewController *)self shouldTrackProgrammableSwitchActivations])
  {
    v9 = [MEMORY[0x277CD1D90] hf_programmableSwitchServiceTypes];
    v10 = [v7 serviceType];
    if (([v9 containsObject:v10] & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = [v8 characteristicType];
    v12 = [v11 isEqualToString:*MEMORY[0x277CCF910]];

    if (v12)
    {
      v13 = +[HOActivationManager sharedInstance];
      v9 = [v13 lastEnteredForegroundDate];

      v14 = [v8 valueUpdatedTime];
      v15 = [v14 compare:v9];

      if (v15 == -1)
      {
LABEL_8:

        goto LABEL_9;
      }

      v10 = [v8 value];
      if (v10)
      {
        v16 = [(HUItemTableViewController *)self itemManager];
        v17 = [v16 allDisplayedItems];
        v19 = MEMORY[0x277D85DD0];
        v20 = 3221225472;
        v21 = __84__HUServiceDetailsViewController_accessory_service_didUpdateValueForCharacteristic___block_invoke;
        v22 = &unk_277DB95B0;
        v23 = v8;
        v24 = v10;
        v18 = [v17 na_firstObjectPassingTest:&v19];

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

- (id)softwareUpdateModuleController:(id)a3 dismissViewController:(id)a4
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

- (id)softwareUpdateModuleController:(id)a3 navigateToViewController:(id)a4
{
  v5 = a4;
  v6 = [(HUServiceDetailsViewController *)self navigationController];
  v7 = [v6 hu_pushPreloadableViewController:v5 animated:1];

  return v7;
}

- (void)didRemoveCHIPPairingforAccessory:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Receive CHIPPairing removal for: %@", &v23, 0xCu);
  }

  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 sourceItem];
  if ([v7 conformsToProtocol:&unk_2824C0788])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 homeKitObject];

  if ([v10 isEqual:v4] & 1) != 0 || (v14 = objc_msgSend(v10, "isEqual:", v4), v4) && (v14 & 1) == 0 && ((objc_msgSend(v4, "cameraProfiles"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "containsObject:", v10), v15, (v16) || (objc_msgSend(v4, "mediaProfile"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqual:", v10), v17, (v18) || (objc_msgSend(v4, "profiles"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "containsObject:", v10), v19, (v20) || (objc_msgSend(v4, "services"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "containsObject:", v10), v21, v22)))
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v10;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Dismissing card after CHIPPairing removal of currently displayed homekitObject: %@", &v23, 0xCu);
    }

    [(HUServiceDetailsViewController *)self setRequiresPresentingViewControllerDismissal:1];
    v12 = [(HUServiceDetailsViewController *)self presentationDelegate];
    v13 = [v12 finishPresentation:self animated:1];
  }
}

- (id)childServiceEditorModuleController:(id)a3 didSelectItem:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [[HUValveEditorViewController alloc] initWithSourceItem:v8 editorMode:0];
    v10 = [(HUServiceDetailsViewController *)self navigationController];
    v11 = [v10 hu_pushPreloadableViewController:v9 animated:1];
  }

  else
  {
    v8 = [[HUServiceDetailsViewController alloc] initWithServiceLikeItem:v5];
    v9 = [(HUServiceDetailsViewController *)self navigationController];
    v11 = [(HUValveEditorViewController *)v9 hu_pushPreloadableViewController:v8 animated:1];
  }

  return v11;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v21 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a3;
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = self;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v17, 0x16u);
  }

  v14 = [(HUServiceDetailsViewController *)self textViewDelegate];
  v15 = [v14 textView:v12 shouldInteractWithURL:v11 inRange:location interaction:{length, a6}];

  return v15;
}

- (void)moduleController:(id)a3 expandModule:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [[HUHomeKitAccessorySettingsDetailsViewController alloc] initWithCollapsedAccessorySettingItemModule:v5];
  v7 = [(HUServiceDetailsViewController *)self navigationController];
  v8 = [v7 hu_pushPreloadableViewController:v6 animated:1];

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Now expanding module [%@] to show settings", &v11, 0xCu);
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "User tapped to expand module %@", &v11, 0xCu);
  }
}

- (void)moduleController:(id)a3 presentSettingDetailsViewController:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    v6 = [(HUServiceDetailsViewController *)self navigationController];
    v7 = [v6 hu_pushPreloadableViewController:v5 animated:1];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Now presenting settings details view controller [%@]", &v10, 0xCu);
    }

    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "User tapped to present settings details view controller [%@]", &v10, 0xCu);
    }
  }
}

- (void)_presentContainedItems
{
  v5 = [(HUServiceDetailsViewController *)self isItemGroup];
  if (v5)
  {
    v6 = a2;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v2 = [(HUServiceDetailsViewController *)self item];
    if ([v2 conformsToProtocol:&unk_282587E50])
    {
      v6 = a2;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v9 = [(HUServiceDetailsViewController *)self item];
      v25 = v9;
      if ([v9 conformsToProtocol:&unk_282587D40])
      {
        v6 = a2;
        v7 = 0;
        v8 = 1;
      }

      else
      {
        v10 = [(HUServiceDetailsViewController *)self item];
        if (([v10 conformsToProtocol:&unk_28251B268] & 1) == 0)
        {

LABEL_17:
          v13 = [MEMORY[0x277CCA890] currentHandler];
          v14 = [(HUServiceDetailsViewController *)self item];
          [v13 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:3240 description:{@"Selected 'showContainedServices' row, but the displayed item doesn't conform to the right protocols: %@", v14}];

          goto LABEL_18;
        }

        v24 = v10;
        v6 = a2;
        v7 = 1;
        v8 = 1;
      }
    }
  }

  v11 = [(HUServiceDetailsViewController *)self item];
  v12 = [v11 conformsToProtocol:&unk_2824C0828];

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
  if (!v5)
  {
  }

  a2 = v6;
  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  objc_opt_class();
  v15 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;

  v17 = [(HUServiceDetailsViewController *)self item];
  if ([v17 conformsToProtocol:&unk_282587E50])
  {

LABEL_24:
    v20 = [(HUServiceDetailsViewController *)self item];
    goto LABEL_26;
  }

  v18 = [(HUServiceDetailsViewController *)self item];
  v19 = [v18 conformsToProtocol:&unk_282587D40];

  if (v19)
  {
    goto LABEL_24;
  }

  v20 = 0;
LABEL_26:
  if (v26 | v20)
  {
    v21 = [[HUContainedAccessoryElementsGridViewController alloc] initWithServiceContainingItem:v20 mediaItem:v26 isPresentedModally:0 shouldGroupByRoom:1 valueSource:0];
    [(HUContainedAccessoryElementsGridViewController *)v21 setServiceGridDelegate:self];
    [(HUContainedAccessoryElementsGridViewController *)v21 setPresentationDelegate:self];
    v22 = [(HUServiceDetailsViewController *)self navigationController];
    v23 = [v22 hu_pushPreloadableViewController:v21 animated:1];
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:3292 description:@"Unable to present grouped accessory view controller; please file a radar on Home App | New Bugs"];
  }
}

- (void)_presentGroupPicker
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HUServiceDetailsViewController *)self item];
    v24 = 136315650;
    v25 = "[HUServiceDetailsViewController _presentGroupPicker]";
    v26 = 2112;
    v27 = self;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "User selected %s(%@) for %@", &v24, 0x20u);
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || ([(HUServiceDetailsViewController *)self item], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) == 0))
  {
    v14 = [(HUServiceDetailsViewController *)self item];
    v8 = [v14 services];

    objc_opt_class();
    v15 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v12 = v16;

    if (v12)
    {
      v17 = [(HUMediaSystemEditorViewController *)v12 accessory];
      v18 = [v17 hf_groupableServices];

      v8 = v18;
    }

    v19 = [v8 allObjects];
    v20 = [(HUItemTableViewController *)self itemManager];
    v21 = [v20 home];
    v22 = [HUServiceGroupEditorViewController forCreatingNewServiceGroupWithServices:v19 inHome:v21];

    [v22 setPresentationDelegate:self];
    [v22 setServiceGroupEditorDelegate:self];
    v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v22];
  }

  else
  {
    v7 = [(HUServiceDetailsViewController *)self item];
    v8 = [v7 accessories];

    v9 = [HUMediaSystemEditorViewController alloc];
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 home];
    v12 = [(HUMediaSystemEditorViewController *)v9 initWithAccessories:v8 home:v11];

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
  v4 = [(HUServiceDetailsViewController *)self homePodIdentifyFuture];
  if (v4 && (v5 = v4, -[HUServiceDetailsViewController homePodIdentifyFuture](self, "homePodIdentifyFuture"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isFinished], v6, v5, (v7 & 1) == 0))
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [(HUServiceDetailsViewController *)self homePodIdentifyFuture];
      v13 = [(HUServiceDetailsViewController *)self homePodIdentifyFuture];
      *buf = 138413058;
      v16 = self;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 1024;
      v22 = [v13 isFinished];
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Ignoring because previous Identify future not completed: %@ isFinished = %{BOOL}d", buf, 0x26u);
    }
  }

  else
  {
    v8 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v14 = [v8 sourceItemAccessory];

    v9 = [v14 hf_identifyHomePod];
    [(HUServiceDetailsViewController *)self setHomePodIdentifyFuture:v9];
  }
}

- (void)_separateOrUnifyTile
{
  v32 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v3 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v5)
  {
    v12 = [v5 accessory];
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v8)
    {
      v13 = [v8 service];
    }

    else
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = [v11 profile];
    }

    v14 = v13;
    v12 = [v13 accessory];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  v15 = [v12 hf_showAsIndividualServices];
  v16 = [v12 hf_setShowAsIndividualServices:v15 ^ 1u];
  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"YES";
    if (v15)
    {
      v18 = @"NO";
    }

    *buf = 138412546;
    v29 = v12;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Service Details Updating accessory %@ to show individual services %@", buf, 0x16u);
  }

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __54__HUServiceDetailsViewController__separateOrUnifyTile__block_invoke;
  v25 = &unk_277DB7E68;
  v26 = v12;
  v27 = self;
  v19 = v12;
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

- (void)_didSelectRoomItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v6 = [v5 serviceLikeBuilder];
    v7 = [v6 room];

    v8 = [v4 latestResults];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D14088]];

    v10 = [v7 room];
    v11 = [v10 uniqueIdentifier];
    v12 = [v9 room];
    v13 = [v12 uniqueIdentifier];
    v14 = [v11 isEqual:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v16 = [v15 selectRoom:v9];

      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __53__HUServiceDetailsViewController__didSelectRoomItem___block_invoke;
      v26 = &unk_277DB7E68;
      v27 = self;
      v28 = v9;
      v17 = [v16 addSuccessBlock:&v23];
      v18 = [(HUServiceDetailsViewController *)self detailsItemManager:v23];
      v19 = [v18 suggestedRoomItemProvider];
      v20 = [v19 items];
      v21 = [v20 containsObject:v4];

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

- (void)_notifyOfHomePodPairingIfNecessary:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 home];

  objc_opt_class();
  v8 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [v10 mediaProfileContainer];
    v12 = [v11 accessories];
    v13 = [v12 count];

    if (v13 <= 1 && [v11 hf_supportsStereoPairing])
    {
      v14 = [v11 hf_backingAccessory];
      v15 = [v14 supportedStereoPairVersions];

      if (v15)
      {
        v16 = MEMORY[0x277CBEB98];
        v17 = [v5 availableHomePodsSupportingStereoPairingVersions:v15];
        v18 = [v16 setWithArray:v17];

        v19 = [v10 accessories];
        v20 = [v18 na_setByRemovingObjectsFromSet:v19];

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
          v40 = v7;
          v28 = [v26 actionWithTitle:v27 style:0 handler:&v34];
          [v25 addAction:{v28, v34, v35, v36, v37}];

          v29 = MEMORY[0x277D750F8];
          v30 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsViewControllerHomePodRoomChangePromptActionNotNow", @"HUServiceDetailsViewControllerHomePodRoomChangePromptActionNotNow", 1);
          v31 = [v29 actionWithTitle:v30 style:0 handler:0];
          [v25 addAction:v31];

          v32 = [(HUServiceDetailsViewController *)self hf_topmostViewController];
          [v32 presentViewController:v25 animated:1 completion:0];

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
          v46 = v11;
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

- (BOOL)_notifyOfHomeTheaterReconfigurationIfNecessary:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(HUServiceDetailsViewController *)self _shouldShowHomeTheaterPrompt])
  {
    v6 = MEMORY[0x277D14810];
    v7 = [(HUServiceDetailsViewController *)self item];
    v8 = [v6 mediaProfileContainerForItem:v7 forTopLevel:1];

    v43 = [MEMORY[0x277D14810] isAppleTV:v8];
    v9 = [(HUItemTableViewController *)self itemManager];
    v10 = [v9 home];
    v11 = [v10 hf_relatedHomeTheaterMediaProfileContainerFor:v8];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138413058;
      v57 = self;
      v58 = 2112;
      v59 = v13;
      v60 = 2112;
      v61 = v8;
      v62 = 2112;
      v63 = v11;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_INFO, "%@:%@ Looking for Odeon config. mediaProfileContainer: %@ relatedHomeTheaterMediaProfileContainer: %@", buf, 0x2Au);
    }

    objc_opt_class();
    v14 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
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
        v57 = v19;
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

      v17 = HULocalizedStringWithFormat(v27, @"%@", v20, v21, v22, v23, v24, v25, v5);
      _HULocalizedStringWithDefaultValue(v28, v28, 1);
      v29 = v44 = v8;
      v30 = MEMORY[0x277D75110];
      v31 = _HULocalizedStringWithDefaultValue(@"HUMoveHomeTheaterAlert_Title", @"HUMoveHomeTheaterAlert_Title", 1);
      [v30 alertControllerWithTitle:v31 message:v17 preferredStyle:1];
      v32 = v45 = v5;

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

      v40 = [(HUServiceDetailsViewController *)self hf_topmostViewController];
      [v40 presentViewController:v32 animated:1 completion:0];

      v5 = v45;
      v8 = v44;
      v16 = 1;
    }

    else if (v18)
    {
      v41 = NSStringFromSelector(a2);
      *buf = 138412546;
      v57 = self;
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

- (void)_offerToCreateHomeTheaterIfPossible:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 && [(HUServiceDetailsViewController *)self _shouldShowHomeTheaterPrompt])
  {
    objc_opt_class();
    v6 = [(HUServiceDetailsViewController *)self item];
    v7 = (objc_opt_isKindOfClass() & 1) != 0 ? v6 : 0;
    v8 = v7;

    if (!v8)
    {
      v9 = MEMORY[0x277D14810];
      v10 = [(HUServiceDetailsViewController *)self item];
      v11 = [v9 mediaProfileContainerForItem:v10 forTopLevel:1];

      v12 = [MEMORY[0x277D14810] isAppleTV:v11];
      v13 = [v5 availableHomeTheaterMediaPartnerFor:v11];
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
            v43 = self;
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

          v26 = [(HUServiceDetailsViewController *)self hf_topmostViewController];
          [v26 presentViewController:v36 animated:1 completion:0];

          v27 = objc_alloc(MEMORY[0x277D14C98]);
          v28 = [(HUItemTableViewController *)self itemManager];
          v29 = [v28 home];
          v30 = [(HUItemTableViewController *)self itemManager];
          v31 = [v30 home];
          v32 = [v31 currentUser];
          v33 = [v27 initWithHome:v29 user:v32 nameStyle:0];

          v34 = [v33 setDismissHomeTheaterOnboarding:1];
          objc_destroyWeak(v40);
          objc_destroyWeak(buf);
        }

        else if (v15)
        {
          v35 = NSStringFromSelector(a2);
          *buf = 138412546;
          v43 = self;
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

- (id)_roomUpdateBuilderFor:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([MEMORY[0x277D14810] isHomePodMediaSystem:v5] && (-[HUServiceDetailsViewController detailsItemManager](self, "detailsItemManager"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "serviceLikeBuilder"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_class(), LOBYTE(v8) = objc_msgSend(v8, "isEqual:", objc_opt_class()), v7, v6, (v8 & 1) == 0))
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [(HUServiceDetailsViewController *)self detailsItemManager];
      v13 = [v12 serviceLikeBuilder];
      v25 = 138412802;
      v26 = self;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = objc_opt_class();
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Using HFMediaSystemBuilder instead of %@ to commit changes.", &v25, 0x20u);
    }

    v14 = objc_alloc(MEMORY[0x277D14830]);
    v15 = [(HUItemTableViewController *)self itemManager];
    v16 = [v15 home];
    v17 = [v14 initWithExistingObject:v5 inHome:v16];

    v18 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v19 = [v18 serviceLikeBuilder];
    v20 = [v19 room];
    [v17 setRoom:v20];

    objc_opt_class();
    v21 = [(HUServiceDetailsViewController *)self item];
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v9 = [(HUServiceDetailsViewController *)self _commitBuilderFor:v23 with:v17];
  }

  else
  {
    v9 = [(HUServiceDetailsViewController *)self _commitBuilder];
  }

  return v9;
}

- (BOOL)_shouldShowHomeTheaterPrompt
{
  v2 = MEMORY[0x277D14810];
  v3 = [(HUServiceDetailsViewController *)self item];
  v4 = [v2 mediaProfileContainerForItem:v3 forTopLevel:1];

  if (v4)
  {
    v5 = [v4 hf_supportsHomeTheater];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_executeSilentSoftwareUpdateCheck
{
  v2 = [(HUServiceDetailsViewController *)self item];
  if ([v2 conformsToProtocol:&unk_28251B2F8])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 accessoriesSupportingSoftwareUpdate];

  if ([v5 count])
  {
    v6 = [v5 anyObject];
    v7 = [v6 home];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__HUServiceDetailsViewController__executeSilentSoftwareUpdateCheck__block_invoke;
    v10[3] = &unk_277DB8EC0;
    v11 = v7;
    v8 = v7;
    if (([v5 na_all:v10] & 1) == 0)
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
  v3 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [MEMORY[0x277D146E8] sharedDispatcher];
  v7 = [v6 home];
  if ([v7 hf_currentUserIsOwner])
  {
  }

  else
  {
    v8 = [MEMORY[0x277D146E8] sharedDispatcher];
    v9 = [v8 home];
    v10 = [v9 hf_currentUserIsAdministrator];

    if (!v10)
    {
      goto LABEL_9;
    }
  }

  if (v5)
  {
    v11 = [v5 accessories];
    [v11 na_each:&__block_literal_global_956];
    goto LABEL_11;
  }

LABEL_9:
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [MEMORY[0x277D146E8] sharedDispatcher];
    v14 = [v13 home];
    v15 = [v12 numberWithBool:{objc_msgSend(v14, "hf_currentUserIsOwner")}];
    v16 = MEMORY[0x277CCABB0];
    v17 = [MEMORY[0x277D146E8] sharedDispatcher];
    v18 = [v17 home];
    v19 = [v16 numberWithBool:{objc_msgSend(v18, "hf_currentUserIsAdministrator")}];
    v20 = 138412802;
    v21 = v15;
    v22 = 2112;
    v23 = v19;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "Not fetching diagnostic info: [isOwner:%@], [isAdmin:%@], [mediaAccessoryItem:%@]", &v20, 0x20u);
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

- (void)didSelectHeaderWarningAction:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = self;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: User tapped header warning/symptom", buf, 0xCu);
  }

  objc_opt_class();
  v7 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 sourceItemAccessory];
  v11 = [v10 hf_needsReprovisioningCheck];

  if (v11)
  {
    v12 = [v9 sourceItemAccessory];
    v13 = [v12 home];

    v14 = [v9 sourceItemAccessory];
    [(HUServiceDetailsViewController *)v13 hf_startReprovisioningAccessory:v14];

    v15 = MEMORY[0x277CBEB98];
    v16 = [v9 sourceItem];
    v17 = [v15 setWithObject:v16];
    v18 = [v9 updateResultsForItems:v17 senderSelector:a2];
LABEL_37:

    goto LABEL_38;
  }

  objc_opt_class();
  v19 = [v9 headerItem];
  v20 = [v19 latestResults];
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D140C0]];
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v13 = v22;

  v52 = self;
  v23 = [(HUItemTableViewController *)self itemManager];
  v24 = [v23 sourceItem];
  v25 = [v24 latestResults];
  v16 = [v25 objectForKey:*MEMORY[0x277D13BD0]];

  if (!v16)
  {
    obj = [v9 sourceItem];
    v34 = [obj accessories];
    v16 = [v34 anyObject];
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  if ([(HUServiceDetailsViewController *)v13 type]== 1 || [(HUServiceDetailsViewController *)v13 type]== 2 || [(HUServiceDetailsViewController *)v13 type]== 20)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [v16 accessories];
    v26 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v26)
    {
      v27 = v26;
      v49 = v21;
      v50 = v16;
      v51 = v5;
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
          v31 = [v30 symptomsHandler];
          v32 = [v31 symptoms];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __63__HUServiceDetailsViewController_didSelectHeaderWarningAction___block_invoke;
          v54[3] = &unk_277DBF138;
          v55 = v13;
          v33 = [v32 na_firstObjectPassingTest:v54];

          if (v33)
          {
            v16 = v30;

            v34 = v55;
            v5 = v51;
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

      v5 = v51;
      v21 = v49;
    }

    goto LABEL_27;
  }

LABEL_28:
  v35 = HFLogForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [(HUServiceDetailsViewController *)v13 type];
    *buf = 138412802;
    v61 = v13;
    v62 = 2048;
    v63 = v36;
    v64 = 2112;
    v65 = v16;
    _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "Trying to fix symptom %@ (type %lu) for object %@", buf, 0x20u);
  }

  if (v16)
  {
    if ([(HUServiceDetailsViewController *)v13 type]== 7)
    {
      v37 = HFLocalizedString();
      v17 = [MEMORY[0x277D75110] hu_actionSheetWithTitle:v37 message:0 anchorView:v5];
      v38 = MEMORY[0x277D750F8];
      v39 = HFLocalizedString();
      v40 = [v38 actionWithTitle:v39 style:0 handler:&__block_literal_global_967];
      [v17 addAction:v40];

      v41 = MEMORY[0x277D750F8];
      v42 = HFLocalizedString();
      v43 = [v41 actionWithTitle:v42 style:0 handler:&__block_literal_global_976];
      [v17 addAction:v43];

      v44 = MEMORY[0x277D750F8];
      v45 = HFLocalizedString();
      v46 = [v44 actionWithTitle:v45 style:1 handler:0];
      [v17 addAction:v46];

      [(HUServiceDetailsViewController *)v52 presentViewController:v17 animated:0 completion:0];
      goto LABEL_37;
    }

    if ([(HUServiceDetailsViewController *)v13 type]== 14)
    {
      v17 = [MEMORY[0x277D148E8] sharedInstance];
      v47 = [MEMORY[0x277CBEBC0] hf_wifiSettingsURL];
      v48 = [v17 openURL:v47];

      goto LABEL_37;
    }

    if (v13)
    {
      v17 = [MEMORY[0x277D14B80] sharedManager];
      [v17 fixSymptom:v13 forFixableObject:v16 presentingViewController:v52];
      v13 = v21;
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

- (id)_recoverItemBuilder:(id)a3 fromError:(id)a4
{
  v5 = a4;
  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 sourceItem];
  if ([v7 conformsToProtocol:&unk_2824C0788])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 homeKitObject];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v10 hf_isValidObject] & 1) == 0)
  {
    v11 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v11 = [MEMORY[0x277D2C900] futureWithError:v5];
  }

  v12 = v11;

  return v12;
}

- (void)accessoryDidUpdateControllable:(id)a3
{
  v5 = a3;
  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 sourceItem];
  if ([v7 conformsToProtocol:&unk_2824C0788])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 homeKitObject];

  v11 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v12 = [v11 sourceItem];
  if ([v12 conformsToProtocol:&unk_28251AC90])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [v14 accessoryRepresentableObject];

  if (v15 || ((v15 = v10, ![v15 conformsToProtocol:&unk_2825BCA78]) ? (v16 = 0) : (v16 = v15), v17 = v16, v15, v17))
  {
    v18 = [v15 hf_associatedAccessories];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__HUServiceDetailsViewController_accessoryDidUpdateControllable___block_invoke;
    v22[3] = &unk_277DB8EC0;
    v23 = v5;
    v19 = [v18 na_any:v22];

    if (v19)
    {
      v20 = [(HUItemTableViewController *)self itemManager];
      v21 = [v20 reloadAndUpdateAllItemsFromSenderSelector:a2];
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

- (void)accessoryDidUpdateServices:(id)a3
{
  v4 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v5 = [v4 sourceItem];
  if ([v5 conformsToProtocol:&unk_2824C0788])
  {
    v6 = v5;
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
    v8 = [v11 homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
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

- (void)_didRemoveHomeKitObject:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"HUServiceDetailsViewController.m" lineNumber:4009 description:{@"Invalid parameter not satisfying: %@", @"homeKitObject"}];
  }

  v6 = [(HUServiceDetailsViewController *)self detailsItemManager];
  v7 = [v6 sourceItem];
  if ([v7 conformsToProtocol:&unk_2824C0788])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 homeKitObject];

  if (v10 == v5)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  v11 = v5;
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
    v14 = [v13 cameraProfiles];
    v15 = [v14 containsObject:v10];

    if (v15 & 1) != 0 || ([v13 mediaProfile], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", v10), v16, (v17) || (objc_msgSend(v13, "profiles"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", v10), v18, v19))
    {

LABEL_15:
      if ([v5 hf_isValidObject])
      {
        NSLog(&cfstr_ThisObjectIsVa.isa);
      }

      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v5;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "HomeKit Object '%@' was removed; dismissing presented serviceDetailsViewController", buf, 0xCu);
      }

      [(HUServiceDetailsViewController *)self setRequiresPresentingViewControllerDismissal:1];
      v21 = [(HUServiceDetailsViewController *)self presentationDelegate];
      v22 = [v21 finishPresentation:self animated:1];
      goto LABEL_20;
    }

    v23 = [v13 services];
    v24 = [v23 containsObject:v10];

    if (v24)
    {
      goto LABEL_15;
    }
  }

  v21 = HFLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v11;
    _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "HomeKit Object '%@' was not removed; Unable to validate backing source item.", buf, 0xCu);
  }

LABEL_20:
}

- (void)didSelectHomeAssistantDeviceSplitAccountAction:(unint64_t)a3
{
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "Invalid split, media account action", v15, 2u);
      }

      goto LABEL_10;
    }

    v4 = [(HUServiceDetailsViewController *)self detailsItemManager];
    v5 = [v4 sourceItemIsHomePod];

    if (v5)
    {
      objc_opt_class();
      v6 = [(HUServiceDetailsViewController *)self item];
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      v9 = MEMORY[0x277D143F8];
      v10 = [v8 mediaProfileContainer];
      v11 = [v10 accessories];
      v12 = [v9 logoutAccessories:v11];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __81__HUServiceDetailsViewController_didSelectHomeAssistantDeviceSplitAccountAction___block_invoke;
      v16[3] = &unk_277DB7720;
      v17 = v8;
      v18 = self;
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

- (void)_setDismissedHomePodHasNonMemberMediaAccountWarning:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v6 = [(HUServiceDetailsViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 mediaProfileContainer];

  v10 = [v9 hf_settingsValueManager];
  v11 = [v10 settings];

  v12 = [v11 hf_accessorySettingAtKeyPath:*MEMORY[0x277D138E8]];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v3];
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

+ (id)_buildNetworkSymptomsAnalyticsDataForAccessory:(id)a3 interactionType:(int64_t)a4
{
  v5 = a3;
  if ([v5 hf_isHomePod] && (objc_msgSend(v5, "home"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "homeLocationStatus"), v6, v7 == 1))
  {
    v8 = [v5 symptomsHandler];
    v9 = [v8 hf_symptomsSortedByPriority];

    v10 = [MEMORY[0x277CD1E88] hf_nextSymptomAfterInternetOutageInSortedList:v9];
    v11 = v10;
    if (v10 && [MEMORY[0x277CD1E80] hf_isNetworkDiagnosticsIssueForSymptomType:{objc_msgSend(v10, "type")}] && objc_msgSend(v11, "type") != 114)
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "type")}];
      [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13648]];

      [v14 setObject:&unk_2824919A0 forKeyedSubscript:*MEMORY[0x277D13628]];
      if (a4 <= 2)
      {
        v16 = qword_277DBF1C0[a4];
        v17 = qword_277DBF1D8[a4];
        v18 = qword_277DBF1F0[a4];
        [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13638]];
        [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13630]];
        [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x277D13640]];
      }

      v12 = [v14 copy];
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

- (void)_submitMetricsSymptomsInteractionForAccessory:(id)a3 interactionType:(int64_t)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [HUServiceDetailsViewController _buildNetworkSymptomsAnalyticsDataForAccessory:a3 interactionType:a4];
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