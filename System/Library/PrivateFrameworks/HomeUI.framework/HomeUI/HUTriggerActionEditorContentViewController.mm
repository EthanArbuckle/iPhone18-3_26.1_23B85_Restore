@interface HUTriggerActionEditorContentViewController
+ (void)_removeDeletedServiceItems:(id)items fromTriggerBuilder:(id)builder;
- (BOOL)_canSelectMediaAccessoryItem:(id)item;
- (BOOL)canSelectItem:(id)item indexPath:(id)path;
- (BOOL)serviceGridItemManager:(id)manager shouldHideItem:(id)item;
- (HUTriggerActionEditorContentViewController)initWithServiceGridItemManager:(id)manager;
- (HUTriggerActionEditorContentViewController)initWithTriggerBuilder:(id)builder flow:(id)flow effectiveNavigationItem:(id)item delegate:(id)delegate;
- (id)_triggerBuilderFuture;
- (id)_updateTriggerBuilderActionSets;
- (id)_updateTriggerBuilderAnonymousActions;
- (id)layoutOptionsForSection:(int64_t)section;
- (unint64_t)_triggerForceDisableReasonsForActionItem:(id)item;
- (void)_addActionSetItems:(id)items toTriggerBuilder:(id)builder inHome:(id)home;
- (void)_cancel:(id)_cancel;
- (void)_goToSummaryScreen:(id)screen;
- (void)_next:(id)_next;
- (void)_popAlertWithLocalizedTitle:(id)title localizedMessage:(id)message actions:(id)actions;
- (void)_presentUnsupportedAlertWithTitle:(id)title message:(id)message;
- (void)_removeDeletedActionSetsItems:(id)items fromTriggerBuilder:(id)builder;
- (void)_setUpNavButtons;
- (void)_updateOrRemoveDeletedMediaItems:(id)items fromTriggerBuilder:(id)builder;
- (void)_updateSelectedServicesAndActionSets;
- (void)_validateDoneButton;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)didChangeSelection;
- (void)goToSummaryScreen;
- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item;
- (void)itemManagerDidUpdate:(id)update;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUTriggerActionEditorContentViewController

- (HUTriggerActionEditorContentViewController)initWithTriggerBuilder:(id)builder flow:(id)flow effectiveNavigationItem:(id)item delegate:(id)delegate
{
  builderCopy = builder;
  flowCopy = flow;
  itemCopy = item;
  delegateCopy = delegate;
  v14 = [[HUTriggerBuilderItem alloc] initWithTriggerBuilder:builderCopy nameType:2];
  v15 = [HUServiceGridItemManager alloc];
  v16 = [(HUSelectableServiceGridViewController *)HUTriggerActionEditorContentViewController defaultItemProviderCreatorWithOptions:29];
  v17 = [(HUServiceGridItemManager *)v15 initWithDelegate:self sourceItem:v14 shouldGroupByRoom:1 shouldShowSectionHeaders:1 itemProvidersCreator:v16];

  v28.receiver = self;
  v28.super_class = HUTriggerActionEditorContentViewController;
  v18 = [(HUSelectableServiceGridViewController *)&v28 initWithServiceGridItemManager:v17];
  v19 = v18;
  if (v18)
  {
    [(HUServiceGridViewController *)v18 setDelegate:delegateCopy];
    objc_storeStrong(&v19->_triggerBuilder, builder);
    objc_storeStrong(&v19->_flow, flow);
    objc_storeStrong(&v19->_effectiveNavigationItem, item);
    name = [builderCopy name];

    if (!flowCopy || !name)
    {
      v21 = [builderCopy naturalLanguageNameOfType:0];
      [builderCopy setName:v21];

      v22 = [builderCopy naturalLanguageNameOfType:1];
      [builderCopy setDisplayName:v22];

      name2 = [builderCopy name];

      if (!name2)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v19 file:@"HUTriggerActionEditorContentViewController.m" lineNumber:72 description:{@"Could not generate name for triggerBuilder: %@", builderCopy}];
      }
    }
  }

  return v19;
}

- (HUTriggerActionEditorContentViewController)initWithServiceGridItemManager:(id)manager
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithTriggerBuilder_flow_effectiveNavigationItem_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerActionEditorContentViewController.m" lineNumber:81 description:{@"%s is unavailable; use %@ instead", "-[HUTriggerActionEditorContentViewController initWithServiceGridItemManager:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUTriggerActionEditorContentViewController;
  [(HUServiceGridViewController *)&v10 viewDidLoad];
  collectionView = [(HUTriggerActionEditorContentViewController *)self collectionView];
  [collectionView _setShouldDeriveVisibleBoundsFromContainingScrollView:1];

  collectionView2 = [(HUTriggerActionEditorContentViewController *)self collectionView];
  [collectionView2 setScrollEnabled:0];

  collectionView3 = [(HUTriggerActionEditorContentViewController *)self collectionView];
  [collectionView3 setClipsToBounds:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView4 = [(HUTriggerActionEditorContentViewController *)self collectionView];
  [collectionView4 setBackgroundColor:clearColor];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  view = [(HUTriggerActionEditorContentViewController *)self view];
  [view setBackgroundColor:clearColor2];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = HUTriggerActionEditorContentViewController;
  [(HUServiceGridViewController *)&v6 viewWillAppear:appear];
  navigationController = [(HUTriggerActionEditorContentViewController *)self navigationController];
  isBeingDismissed = [navigationController isBeingDismissed];

  if ((isBeingDismissed & 1) == 0)
  {
    [(HUTriggerActionEditorContentViewController *)self _setUpNavButtons];
    [(HUTriggerActionEditorContentViewController *)self _updateSelectedServicesAndActionSets];
  }
}

- (void)_setUpNavButtons
{
  flow = [(HUTriggerActionEditorContentViewController *)self flow];
  if ([flow isStandalone])
  {
  }

  else
  {
    flow2 = [(HUTriggerActionEditorContentViewController *)self flow];
    isSingleFlow = [flow2 isSingleFlow];

    if (!isSingleFlow)
    {
      goto LABEL_5;
    }
  }

  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  effectiveNavigationItem = [(HUTriggerActionEditorContentViewController *)self effectiveNavigationItem];
  [effectiveNavigationItem setLeftBarButtonItem:v6];

LABEL_5:
  flow3 = [(HUTriggerActionEditorContentViewController *)self flow];
  isLastState = [flow3 isLastState];

  v10 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = v10;
  if (isLastState)
  {
    v12 = [v10 initWithBarButtonSystemItem:0 target:self action:sel__next_];
    effectiveNavigationItem2 = [(HUTriggerActionEditorContentViewController *)self effectiveNavigationItem];
    [effectiveNavigationItem2 setRightBarButtonItem:v12];
  }

  else
  {
    v12 = _HULocalizedStringWithDefaultValue(@"HUTriggerActionEditorNextButton", @"HUTriggerActionEditorNextButton", 1);
    effectiveNavigationItem2 = [v11 initWithTitle:v12 style:2 target:self action:sel__next_];
    effectiveNavigationItem3 = [(HUTriggerActionEditorContentViewController *)self effectiveNavigationItem];
    [effectiveNavigationItem3 setRightBarButtonItem:effectiveNavigationItem2];
  }

  [(HUTriggerActionEditorContentViewController *)self _validateDoneButton];
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HUServiceGridViewController *)self delegate];
  [delegate triggerEditor:self didFinishWithTriggerBuilder:0];
}

- (void)_next:(id)_next
{
  _nextCopy = _next;
  effectiveNavigationItem = [(HUTriggerActionEditorContentViewController *)self effectiveNavigationItem];
  rightBarButtonItem = [effectiveNavigationItem rightBarButtonItem];

  v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v7];
  effectiveNavigationItem2 = [(HUTriggerActionEditorContentViewController *)self effectiveNavigationItem];
  [effectiveNavigationItem2 setRightBarButtonItem:v8];

  [v7 startAnimating];
  _triggerBuilderFuture = [(HUTriggerActionEditorContentViewController *)self _triggerBuilderFuture];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__HUTriggerActionEditorContentViewController__next___block_invoke;
  v19[3] = &unk_277DB8620;
  objc_copyWeak(&v21, &location);
  v11 = rightBarButtonItem;
  v20 = v11;
  v12 = [_triggerBuilderFuture addCompletionBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__HUTriggerActionEditorContentViewController__next___block_invoke_2;
  v17[3] = &unk_277DB94D0;
  objc_copyWeak(&v18, &location);
  v13 = [_triggerBuilderFuture addFailureBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HUTriggerActionEditorContentViewController__next___block_invoke_4;
  v15[3] = &unk_277DB99B8;
  objc_copyWeak(&v16, &location);
  v14 = [_triggerBuilderFuture addSuccessBlock:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __52__HUTriggerActionEditorContentViewController__next___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [WeakRetained delegate];
    v8 = [WeakRetained triggerBuilder];
    [v7 triggerEditor:WeakRetained didCommitTriggerBuilder:v8 withError:v11];
  }

  v9 = *(a1 + 32);
  v10 = [WeakRetained effectiveNavigationItem];
  [v10 setRightBarButtonItem:v9];
}

void __52__HUTriggerActionEditorContentViewController__next___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x277D14640] sharedHandler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HUTriggerActionEditorContentViewController__next___block_invoke_3;
  v6[3] = &unk_277DB8488;
  v6[4] = WeakRetained;
  [v5 handleError:v3 retryBlock:v6 cancelBlock:0];
}

void __52__HUTriggerActionEditorContentViewController__next___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained flow];
  v2 = [v1 getNextState];

  if ([v2 isFinished])
  {
    v3 = [WeakRetained delegate];
    v4 = [WeakRetained triggerBuilder];
    [v3 triggerEditor:WeakRetained didFinishWithTriggerBuilder:v4];
  }

  else
  {
    [WeakRetained _goToSummaryScreen:v2];
  }
}

- (void)goToSummaryScreen
{
  flow = [(HUTriggerActionEditorContentViewController *)self flow];
  getNextState = [flow getNextState];

  [(HUTriggerActionEditorContentViewController *)self _goToSummaryScreen:getNextState];
}

- (void)_goToSummaryScreen:(id)screen
{
  screenCopy = screen;
  v5 = [HUTriggerSummaryViewController alloc];
  triggerBuilder = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];
  delegate = [(HUServiceGridViewController *)self delegate];
  v10 = [(HUTriggerSummaryViewController *)v5 initWithTriggerBuilder:triggerBuilder flow:screenCopy delegate:delegate];

  navigationController = [(HUTriggerActionEditorContentViewController *)self navigationController];
  v9 = [navigationController hu_pushPreloadableViewController:v10 animated:1];
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v7.receiver = self;
  v7.super_class = HUTriggerActionEditorContentViewController;
  [(HUSelectableServiceGridViewController *)&v7 configureCell:cellCopy forItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setShouldColorDescription:0];
  }
}

- (BOOL)canSelectItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  if ([(HUTriggerActionEditorContentViewController *)self _triggerForceDisableReasonsForActionItem:itemCopy])
  {
    selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
    fromSet = [selectedItems fromSet];
    v8 = [fromSet containsObject:itemCopy];

    if (!v8)
    {
      containsActions = 0;
      goto LABEL_25;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = itemCopy;
    if ([v10 conformsToProtocol:&unk_28251AFC0])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    accessories = [v12 accessories];
    v14 = [accessories na_any:&__block_literal_global_150];

    if (v14)
    {
      goto LABEL_9;
    }

    objc_opt_class();
    v15 = v10;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    sourceItem = [v17 sourceItem];

    objc_opt_class();
    LOBYTE(v17) = objc_opt_isKindOfClass();

    if (v17)
    {
      objc_opt_class();
      v19 = v15;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      objc_opt_class();
      sourceItem2 = [v21 sourceItem];

      if (objc_opt_isKindOfClass())
      {
        v23 = sourceItem2;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      containsActions = [(HUTriggerActionEditorContentViewController *)self _canSelectMediaAccessoryItem:v24];
      goto LABEL_24;
    }

    if (![v15 conformsToProtocol:&unk_28251B560])
    {
LABEL_9:
      containsActions = 0;
    }

    else
    {
      containsActions = [v15 containsActions];
    }

LABEL_24:

    goto LABEL_25;
  }

  containsActions = 1;
LABEL_25:

  return containsActions;
}

- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item
{
  v11.receiver = self;
  v11.super_class = HUTriggerActionEditorContentViewController;
  itemCopy = item;
  [(HUItemCollectionViewController *)&v11 itemManager:manager didUpdateResultsForSourceItem:itemCopy];
  latestResults = [itemCopy latestResults];

  v8 = [latestResults objectForKeyedSubscript:@"forceDisableReasonsForSecureCharacteristicControl"];
  integerValue = [v8 integerValue];

  if ([(HUTriggerActionEditorContentViewController *)self forceDisableReasonsForSecureCharacteristicControl]!= integerValue)
  {
    [(HUTriggerActionEditorContentViewController *)self setForceDisableReasonsForSecureCharacteristicControl:integerValue];
    collectionView = [(HUTriggerActionEditorContentViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)itemManagerDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = HUTriggerActionEditorContentViewController;
  [(HUSelectableServiceGridViewController *)&v4 itemManagerDidUpdate:update];
  [(HUTriggerActionEditorContentViewController *)self _updateSelectedServicesAndActionSets];
}

- (id)layoutOptionsForSection:(int64_t)section
{
  v7.receiver = self;
  v7.super_class = HUTriggerActionEditorContentViewController;
  v4 = [(HUServiceGridViewController *)&v7 layoutOptionsForSection:?];
  v5 = [v4 copy];

  if (!section)
  {
    [v5 sectionTitleMargin];
    [v5 setSectionTitleMargin:9.0];
  }

  return v5;
}

- (void)didChangeSelection
{
  v3.receiver = self;
  v3.super_class = HUTriggerActionEditorContentViewController;
  [(HUSelectableServiceGridViewController *)&v3 didChangeSelection];
  [(HUTriggerActionEditorContentViewController *)self _validateDoneButton];
}

- (BOOL)serviceGridItemManager:(id)manager shouldHideItem:(id)item
{
  managerCopy = manager;
  itemCopy = item;
  if (![objc_opt_class() instancesRespondToSelector:sel_serviceGridItemManager_shouldHideItem_] || (v22.receiver = self, v22.super_class = HUTriggerActionEditorContentViewController, !-[HUSelectableServiceGridViewController serviceGridItemManager:shouldHideItem:](&v22, sel_serviceGridItemManager_shouldHideItem_, managerCopy, itemCopy)))
  {
    if (![itemCopy conformsToProtocol:&unk_28251AFC0] || (-[HUTriggerActionEditorContentViewController triggerBuilder](self, "triggerBuilder"), v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) == 0))
    {
      v8 = 0;
      goto LABEL_15;
    }

    v11 = itemCopy;
    v12 = objc_opt_class();
    triggerBuilder = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];
    if (triggerBuilder)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = triggerBuilder;
      }

      else
      {
        v14 = 0;
      }

      v15 = triggerBuilder;
      if (v14)
      {
        goto LABEL_13;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];
    }

    v15 = 0;
LABEL_13:

    characteristics = [v15 characteristics];
    v19 = [characteristics na_map:&__block_literal_global_120];

    services = [v11 services];

    v8 = [v19 intersectsSet:services];
    goto LABEL_15;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v55[2] = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = HUTriggerActionEditorContentViewController;
  pathCopy = path;
  [(HUSelectableServiceGridViewController *)&v52 collectionView:view didSelectItemAtIndexPath:pathCopy];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v8 = [itemManager displayedItemAtIndexPath:pathCopy];

  v9 = &unk_28251AFC0;
  v10 = v8;
  if ([v10 conformsToProtocol:v9])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  accessories = [v12 accessories];
  v14 = [accessories na_any:&__block_literal_global_124_2];

  if (v14)
  {
    v15 = @"HUDontSetupProgrammableSwitchInAutomationActionEditorTitle";
    v16 = @"HUDontSetupProgrammableSwitchInAutomationActionEditorMessage";
LABEL_32:
    [(HUTriggerActionEditorContentViewController *)self _presentUnsupportedAlertWithTitle:v15 message:v16];
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (![v10 conformsToProtocol:&unk_28251B560] || (objc_msgSend(v10, "containsActions") & 1) == 0))
  {
    v15 = @"HUTriggerActionEditorUnsupportedAccessoryTitle";
    v16 = @"HUTriggerActionEditorUnsupportedAccessoryMessage";
    goto LABEL_32;
  }

  v17 = [(HUTriggerActionEditorContentViewController *)self _triggerForceDisableReasonsForActionItem:v10];
  if (v17)
  {
    v18 = v17;
    selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
    fromSet = [selectedItems fromSet];
    v21 = [fromSet containsObject:v10];

    if ((v21 & 1) == 0)
    {
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __86__HUTriggerActionEditorContentViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
      v49[3] = &unk_277DBF770;
      v50 = v10;
      v51 = v18;
      v35 = __86__HUTriggerActionEditorContentViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(v49);
      v36 = _HULocalizedStringWithDefaultValue(@"HUTriggerActionEditorConfirmationRequiredButNotPossibleAlertTitle", @"HUTriggerActionEditorConfirmationRequiredButNotPossibleAlertTitle", 1);
      v37 = MEMORY[0x277D750F8];
      v38 = _HULocalizedStringWithDefaultValue(@"HUTriggerActionEditorConfirmationRequiredButNotPossibleAlertCancelButton", @"HUTriggerActionEditorConfirmationRequiredButNotPossibleAlertCancelButton", 1);
      v39 = [v37 actionWithTitle:v38 style:1 handler:0];
      v55[0] = v39;
      v40 = MEMORY[0x277D750F8];
      v41 = _HULocalizedStringWithDefaultValue(@"HUTriggerActionEditorConfirmationRequiredButNotPossibleAlertGoToSettingsButton", @"HUTriggerActionEditorConfirmationRequiredButNotPossibleAlertGoToSettingsButton", 1);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __86__HUTriggerActionEditorContentViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3;
      v48[3] = &__block_descriptor_40_e23_v16__0__UIAlertAction_8l;
      v48[4] = v18;
      v42 = [v40 actionWithTitle:v41 style:0 handler:v48];
      v55[1] = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
      [(HUTriggerActionEditorContentViewController *)self _popAlertWithLocalizedTitle:v36 localizedMessage:v35 actions:v43];

      goto LABEL_33;
    }
  }

  objc_opt_class();
  v22 = v10;
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  sourceItem = [v24 sourceItem];
  objc_opt_class();

  LOBYTE(v24) = objc_opt_isKindOfClass();
  if (v24)
  {
    objc_opt_class();
    v26 = v22;
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    objc_opt_class();
    sourceItem2 = [v28 sourceItem];

    if (objc_opt_isKindOfClass())
    {
      v30 = sourceItem2;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    if (![v31 allowsAppleMusicAccount] || (objc_msgSend(v31, "supportsMediaAction") & 1) != 0)
    {
      itemManager2 = [(HUItemCollectionViewController *)self itemManager];
      home = [itemManager2 home];

      if ([home hf_hasEnabledResident] && (objc_msgSend(home, "hf_enabledResidentsSupportsMediaActions") & 1) == 0)
      {
        if ([v31 mediaAccessoryItemType] == 7)
        {
          v34 = @"HUTriggerActionEditorUnsupportedResidentWithAirPortExpressMessage";
        }

        else
        {
          v34 = @"HUTriggerActionEditorUnsupportedResidentMessage";
        }

        [(HUTriggerActionEditorContentViewController *)self _presentUnsupportedAlertWithTitle:@"HUAlertSoftwareUpdateRequired" message:v34];
      }

      goto LABEL_28;
    }

    mediaAccessoryItemType = [v31 mediaAccessoryItemType];
    v45 = mediaAccessoryItemType;
    if (mediaAccessoryItemType > 3)
    {
      if ((mediaAccessoryItemType - 5) >= 5)
      {
        if (mediaAccessoryItemType == 4)
        {
          v46 = @"HUTriggerActionEditorUnsupportedHomePodStereoPairMessage";
          goto LABEL_47;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if ((mediaAccessoryItemType - 2) < 2)
      {
        v46 = @"HUTriggerActionEditorUnsupportedHomePodMessage";
        goto LABEL_47;
      }

      if (mediaAccessoryItemType)
      {
        if (mediaAccessoryItemType == 1)
        {
          v46 = @"HUTriggerActionEditorUnsupportedAppleTVMessage";
LABEL_47:
          [(HUTriggerActionEditorContentViewController *)self _presentUnsupportedAlertWithTitle:@"HUAlertSoftwareUpdateRequired" message:v46];
        }

LABEL_28:

        goto LABEL_33;
      }
    }

    v47 = HFLogForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v54 = v45;
      _os_log_error_impl(&dword_20CEB6000, v47, OS_LOG_TYPE_ERROR, "Error: got media accessory item type %ld", buf, 0xCu);
    }

    goto LABEL_28;
  }

LABEL_33:
}

id __86__HUTriggerActionEditorContentViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = @"Service";
  if (isKindOfClass)
  {
    v3 = @"Scene";
  }

  if (*(a1 + 40))
  {
    v4 = @"MustAllowNotifications";
  }

  else
  {
    v4 = @"MustAllowAccessWhileLocked";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUTriggerActionEditor%@ToUse%@AlertMessageFormat", v4, v3];
  v6 = [*(a1 + 32) latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v14 = HULocalizedStringWithFormat(v5, @"%@", v8, v9, v10, v11, v12, v13, v7);

  return v14;
}

void __86__HUTriggerActionEditorContentViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3(uint64_t a1)
{
  v3 = [HUTriggerBuilderItem settingsURLForForceDisableReasons:*(a1 + 32)];
  v1 = [MEMORY[0x277D148E8] sharedInstance];
  v2 = [v1 openURL:v3];
}

- (void)_presentUnsupportedAlertWithTitle:(id)title message:(id)message
{
  v6 = MEMORY[0x277D75110];
  messageCopy = message;
  v8 = _HULocalizedStringWithDefaultValue(title, title, 1);
  v9 = _HULocalizedStringWithDefaultValue(messageCopy, messageCopy, 1);

  v13 = [v6 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v12 = [v10 actionWithTitle:v11 style:0 handler:0];
  [v13 addAction:v12];

  [(HUControllableItemCollectionViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_popAlertWithLocalizedTitle:(id)title localizedMessage:(id)message actions:(id)actions
{
  v20 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:message preferredStyle:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = actionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 addAction:{*(*(&v15 + 1) + 8 * v14++), v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [(HUControllableItemCollectionViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (id)_triggerBuilderFuture
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  _updateTriggerBuilderActionSets = [(HUTriggerActionEditorContentViewController *)self _updateTriggerBuilderActionSets];
  v11[0] = _updateTriggerBuilderActionSets;
  _updateTriggerBuilderAnonymousActions = [(HUTriggerActionEditorContentViewController *)self _updateTriggerBuilderAnonymousActions];
  v11[1] = _updateTriggerBuilderAnonymousActions;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v7 = [v3 combineAllFutures:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HUTriggerActionEditorContentViewController__triggerBuilderFuture__block_invoke;
  v10[3] = &unk_277DB7A90;
  v10[4] = self;
  v8 = [v7 flatMap:v10];

  return v8;
}

id __67__HUTriggerActionEditorContentViewController__triggerBuilderFuture__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) triggerBuilder];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (BOOL)_canSelectMediaAccessoryItem:(id)item
{
  itemCopy = item;
  if ([itemCopy allowsAppleMusicAccount])
  {
    supportsMediaAction = [itemCopy supportsMediaAction];
  }

  else
  {
    supportsMediaAction = 1;
  }

  itemManager = [(HUItemCollectionViewController *)self itemManager];
  home = [itemManager home];

  LOBYTE(itemManager) = [home hf_enabledResidentsSupportsMediaActions];
  return supportsMediaAction & itemManager;
}

- (void)_updateSelectedServicesAndActionSets
{
  v3 = MEMORY[0x277CBEB98];
  triggerBuilder = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];
  triggerActionSets = [triggerBuilder triggerActionSets];
  anonymousActionSetBuilder = [triggerActionSets anonymousActionSetBuilder];
  actions = [anonymousActionSetBuilder actions];
  v8 = [actions na_map:&__block_literal_global_198];
  v9 = [v3 setWithArray:v8];

  v10 = MEMORY[0x277CBEB98];
  triggerBuilder2 = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];
  triggerActionSets2 = [triggerBuilder2 triggerActionSets];
  namedActionSets = [triggerActionSets2 namedActionSets];
  v14 = [v10 setWithArray:namedActionSets];
  v15 = [v14 na_map:&__block_literal_global_202_0];

  triggerBuilder3 = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];
  triggerActionSets3 = [triggerBuilder3 triggerActionSets];
  anonymousActionSetBuilder2 = [triggerActionSets3 anonymousActionSetBuilder];
  mediaAction = [anonymousActionSetBuilder2 mediaAction];

  mediaProfiles = [mediaAction mediaProfiles];
  v21 = [mediaProfiles na_flatMap:&__block_literal_global_205];

  if (!v21)
  {
    v21 = [MEMORY[0x277CBEB98] set];
  }

  existingSelectedCharacteristics = [(HUTriggerActionEditorContentViewController *)self existingSelectedCharacteristics];
  if ([existingSelectedCharacteristics isEqualToSet:v9])
  {
    existingSelectedActionSets = [(HUTriggerActionEditorContentViewController *)self existingSelectedActionSets];
    if ([existingSelectedActionSets isEqualToSet:v15])
    {
      existingAnonActionSetMediaProfiles = [(HUTriggerActionEditorContentViewController *)self existingAnonActionSetMediaProfiles];
      v25 = [existingAnonActionSetMediaProfiles isEqualToSet:v21];

      if (v25)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  [(HUTriggerActionEditorContentViewController *)self setExistingSelectedCharacteristics:v9];
  [(HUTriggerActionEditorContentViewController *)self setExistingSelectedActionSets:v15];
  [(HUTriggerActionEditorContentViewController *)self setExistingAnonActionSetMediaProfiles:v21];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  allDisplayedItems = [itemManager allDisplayedItems];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_5;
  v31[3] = &unk_277DBF800;
  v32 = v15;
  v33 = v9;
  v34 = v21;
  v28 = [allDisplayedItems na_filter:v31];

  v29 = [objc_alloc(MEMORY[0x277D14868]) initWithFromSet:v28];
  v30 = [v29 copy];
  [(HUSelectableServiceGridViewController *)self setSelectedItems:v30];

LABEL_10:
  [(HUTriggerActionEditorContentViewController *)self _validateDoneButton];
}

id __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 characteristic];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 accessories];
  v3 = [v2 na_map:&__block_literal_global_208];

  return v3;
}

uint64_t __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = [v4 homeKitObject];
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v6;
      if (v7)
      {
        goto LABEL_9;
      }

      v9 = [MEMORY[0x277CCA890] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];
    }

    v8 = 0;
LABEL_9:

    v11 = *(a1 + 32);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_6;
    v26[3] = &unk_277DBF7D8;
    v27 = v8;
    v12 = v8;
    v13 = [v11 na_any:v26];

    goto LABEL_12;
  }

  if (![v3 conformsToProtocol:&unk_28251AFC0])
  {
    v13 = 0;
    goto LABEL_14;
  }

  v14 = v3;
  v15 = [v14 services];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_7;
  v24[3] = &unk_277DB9560;
  v25 = *(a1 + 40);
  v16 = [v15 na_any:v24];

  v17 = [v14 accessories];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_10;
  v21[3] = &unk_277DB9588;
  v22 = v14;
  v23 = *(a1 + 48);
  v18 = v14;
  v19 = [v17 na_any:v21];

  v13 = v16 | v19;
  v12 = v25;
LABEL_12:

LABEL_14:
  return v13 & 1;
}

uint64_t __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_8;
  v6[3] = &unk_277DB9538;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_9;
  v8[3] = &unk_277DB9538;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isSiriEndpoint])
  {
    v4 = [*(a1 + 32) services];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_11;
  v9[3] = &unk_277DB95F8;
  v10 = v3;
  v7 = v3;
  LOBYTE(v6) = [v6 na_any:v9];
  LOBYTE(v6) = ([v7 hf_isMediaAccessory] | v5) & v6;

  return v6 & 1;
}

uint64_t __82__HUTriggerActionEditorContentViewController__updateSelectedServicesAndActionSets__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) mediaProfile];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 isEqual:v5];

  return v6;
}

- (id)_updateTriggerBuilderActionSets
{
  triggerBuilder = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];

  if (!triggerBuilder)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerActionEditorContentViewController.m" lineNumber:557 description:{@"Invalid parameter not satisfying: %@", @"self.triggerBuilder"}];
  }

  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  home = [itemManager home];

  deletions = [selectedItems deletions];
  triggerBuilder2 = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];
  [(HUTriggerActionEditorContentViewController *)self _removeDeletedActionSetsItems:deletions fromTriggerBuilder:triggerBuilder2];

  additions = [selectedItems additions];
  triggerBuilder3 = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];
  [(HUTriggerActionEditorContentViewController *)self _addActionSetItems:additions toTriggerBuilder:triggerBuilder3 inHome:home];

  v12 = MEMORY[0x277D2C900];
  triggerBuilder4 = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];
  v14 = [v12 futureWithResult:triggerBuilder4];

  return v14;
}

- (void)_removeDeletedActionSetsItems:(id)items fromTriggerBuilder:(id)builder
{
  v26 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  builderCopy = builder;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = objc_opt_class();
          homeKitObject = [v12 homeKitObject];

          v15 = homeKitObject;
          if (!v15)
          {
            goto LABEL_13;
          }

          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v15;
          if (!v16)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
            [currentHandler handleFailureInFunction:v18 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];

LABEL_13:
            v17 = 0;
          }

          if (v17)
          {
            triggerActionSets = [builderCopy triggerActionSets];
            [triggerActionSets removeActionSetIfPresent:v17];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [itemsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

- (void)_addActionSetItems:(id)items toTriggerBuilder:(id)builder inHome:(id)home
{
  v27 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  builderCopy = builder;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [itemsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = objc_opt_class();
          homeKitObject = [v13 homeKitObject];

          v16 = homeKitObject;
          if (!v16)
          {
            goto LABEL_13;
          }

          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = v16;
          if (!v17)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
            [currentHandler handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v14, objc_opt_class()}];

LABEL_13:
            v18 = 0;
          }

          if (v18)
          {
            triggerActionSets = [builderCopy triggerActionSets];
            [triggerActionSets addActionSetIfNotPresent:v18];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [itemsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }
}

- (id)_updateTriggerBuilderAnonymousActions
{
  v45 = *MEMORY[0x277D85DE8];
  triggerBuilder = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];

  if (!triggerBuilder)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerActionEditorContentViewController.m" lineNumber:607 description:{@"Invalid parameter not satisfying: %@", @"self.triggerBuilder"}];
  }

  v33 = objc_alloc_init(MEMORY[0x277D2C900]);
  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  home = [itemManager home];

  v8 = objc_opt_class();
  deletions = [selectedItems deletions];
  triggerBuilder2 = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];
  [v8 _removeDeletedServiceItems:deletions fromTriggerBuilder:triggerBuilder2];

  deletions2 = [selectedItems deletions];
  triggerBuilder3 = [(HUTriggerActionEditorContentViewController *)self triggerBuilder];
  [(HUTriggerActionEditorContentViewController *)self _updateOrRemoveDeletedMediaItems:deletions2 fromTriggerBuilder:triggerBuilder3];

  array = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  additions = [selectedItems additions];
  updates = [selectedItems updates];
  v16 = [additions setByAddingObjectsFromSet:updates];

  v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v17)
  {
    v18 = *v41;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        if ([v20 conformsToProtocol:&unk_28251B560])
        {
          v21 = [v20 currentStateActionBuildersForHome:home];
          if (v21)
          {
            [array addObject:v21];
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v17);
  }

  v22 = MEMORY[0x277D2C900];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v24 = [v22 combineAllFutures:array ignoringErrors:0 scheduler:mainThreadScheduler];

  objc_initWeak(&location, self);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __83__HUTriggerActionEditorContentViewController__updateTriggerBuilderAnonymousActions__block_invoke;
  v36[3] = &unk_277DB9620;
  objc_copyWeak(&v38, &location);
  v25 = v33;
  v37 = v25;
  v26 = [v24 addSuccessBlock:v36];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __83__HUTriggerActionEditorContentViewController__updateTriggerBuilderAnonymousActions__block_invoke_2;
  v34[3] = &unk_277DB8C00;
  v27 = v25;
  v35 = v27;
  v28 = [v24 addFailureBlock:v34];
  v29 = v35;
  v30 = v27;

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);

  return v30;
}

void __83__HUTriggerActionEditorContentViewController__updateTriggerBuilderAnonymousActions__block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v21 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            v13 = 0;
            do
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v22 + 1) + 8 * v13);
              v15 = [WeakRetained triggerBuilder];
              v16 = [v15 triggerActionSets];
              [v16 addAnonymousActionBuilder:v14];

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v6);
      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = *(v19 + 32);
  v18 = [WeakRetained triggerBuilder];
  [v17 finishWithResult:v18];
}

+ (void)_removeDeletedServiceItems:(id)items fromTriggerBuilder:(id)builder
{
  v70 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  builderCopy = builder;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  triggerActionSets = [builderCopy triggerActionSets];
  anonymousActionSetBuilder = [triggerActionSets anonymousActionSetBuilder];
  actions = [anonymousActionSetBuilder actions];

  v10 = [actions countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v63;
    do
    {
      v13 = 0;
      do
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(actions);
        }

        v14 = *(*(&v62 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          characteristic = [v14 characteristic];
          uniqueIdentifier = [characteristic uniqueIdentifier];

          if (uniqueIdentifier)
          {
            [dictionary setObject:v14 forKeyedSubscript:uniqueIdentifier];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [actions countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v11);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = itemsCopy;
  v17 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v17)
  {
    v18 = v17;
    v43 = *v59;
    do
    {
      v19 = 0;
      v42 = v18;
      do
      {
        if (*v59 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v58 + 1) + 8 * v19);
        v21 = &unk_28251AFC0;
        if ([v20 conformsToProtocol:v21])
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        if (v23)
        {
          accessories = [v23 accessories];
          anyObject = [accessories anyObject];
          if ([anyObject hf_isSiriEndpoint])
          {
            services = [v23 services];
            v27 = [services count];

            if (!v27)
            {
LABEL_42:

              goto LABEL_43;
            }
          }

          else
          {
          }

          v44 = accessories;
          v45 = v23;
          v46 = v19;
          services2 = [v20 services];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v47 = services2;
          v29 = [services2 countByEnumeratingWithState:&v54 objects:v67 count:16];
          if (v29)
          {
            v30 = v29;
            v49 = *v55;
            do
            {
              v31 = 0;
              do
              {
                if (*v55 != v49)
                {
                  objc_enumerationMutation(v47);
                }

                v32 = *(*(&v54 + 1) + 8 * v31);
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                characteristics = [v32 characteristics];
                v34 = [characteristics countByEnumeratingWithState:&v50 objects:v66 count:16];
                if (v34)
                {
                  v35 = v34;
                  v36 = *v51;
                  do
                  {
                    v37 = 0;
                    do
                    {
                      if (*v51 != v36)
                      {
                        objc_enumerationMutation(characteristics);
                      }

                      uniqueIdentifier2 = [*(*(&v50 + 1) + 8 * v37) uniqueIdentifier];
                      v39 = [dictionary objectForKeyedSubscript:uniqueIdentifier2];

                      if (v39)
                      {
                        triggerActionSets2 = [builderCopy triggerActionSets];
                        [triggerActionSets2 removeAnonymousActionBuilder:v39];
                      }

                      ++v37;
                    }

                    while (v35 != v37);
                    v35 = [characteristics countByEnumeratingWithState:&v50 objects:v66 count:16];
                  }

                  while (v35);
                }

                ++v31;
              }

              while (v31 != v30);
              v30 = [v47 countByEnumeratingWithState:&v54 objects:v67 count:16];
            }

            while (v30);
          }

          v18 = v42;
          v23 = v45;
          v19 = v46;
          accessories = v44;
          goto LABEL_42;
        }

LABEL_43:

        ++v19;
      }

      while (v19 != v18);
      v18 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v18);
  }
}

- (void)_updateOrRemoveDeletedMediaItems:(id)items fromTriggerBuilder:(id)builder
{
  v28 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  builderCopy = builder;
  triggerActionSets = [builderCopy triggerActionSets];
  anonymousActionSetBuilder = [triggerActionSets anonymousActionSetBuilder];
  mediaAction = [anonymousActionSetBuilder mediaAction];

  mediaProfiles = [mediaAction mediaProfiles];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if ([v15 conformsToProtocol:&unk_28251AFC0])
        {
          accessories = [v15 accessories];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __98__HUTriggerActionEditorContentViewController__updateOrRemoveDeletedMediaItems_fromTriggerBuilder___block_invoke;
          v21[3] = &unk_277DB95F8;
          v22 = accessories;
          v17 = accessories;
          v18 = [mediaProfiles na_filter:v21];

          mediaProfiles = v18;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  if (mediaAction)
  {
    if ([mediaProfiles count])
    {
      [mediaAction setMediaProfiles:mediaProfiles];
      triggerActionSets2 = [builderCopy triggerActionSets];
      [triggerActionSets2 updateAnonymousActionBuilder:mediaAction];
    }

    else
    {
      triggerActionSets2 = [builderCopy triggerActionSets];
      [triggerActionSets2 removeAnonymousActionBuilder:mediaAction];
    }
  }
}

uint64_t __98__HUTriggerActionEditorContentViewController__updateOrRemoveDeletedMediaItems_fromTriggerBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  LODWORD(a1) = [v3 intersectsSet:*(a1 + 32)];

  return a1 ^ 1;
}

- (void)_validateDoneButton
{
  selectedItems = [(HUSelectableServiceGridViewController *)self selectedItems];
  toSet = [selectedItems toSet];
  v4 = [toSet count] != 0;
  effectiveNavigationItem = [(HUTriggerActionEditorContentViewController *)self effectiveNavigationItem];
  rightBarButtonItem = [effectiveNavigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];
}

- (unint64_t)_triggerForceDisableReasonsForActionItem:(id)item
{
  itemCopy = item;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];
  latestResults = [sourceItem latestResults];
  v8 = [latestResults objectForKeyedSubscript:@"forceDisableReasonsForSecureCharacteristicControl"];
  integerValue = [v8 integerValue];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__HUTriggerActionEditorContentViewController__triggerForceDisableReasonsForActionItem___block_invoke;
  v13[3] = &unk_277DBF828;
  v14 = itemCopy;
  v10 = itemCopy;
  if (__87__HUTriggerActionEditorContentViewController__triggerForceDisableReasonsForActionItem___block_invoke(v13))
  {
    v11 = integerValue;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __87__HUTriggerActionEditorContentViewController__triggerForceDisableReasonsForActionItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) latestResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13D38]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    return 1;
  }

  result = [*(a1 + 32) conformsToProtocol:&unk_28251B560];
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 actionsMayRequireDeviceUnlock];
  }

  return result;
}

@end