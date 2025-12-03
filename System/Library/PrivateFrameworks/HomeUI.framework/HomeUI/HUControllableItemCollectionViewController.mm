@interface HUControllableItemCollectionViewController
- (BOOL)_hasPartialReachabilityForServiceItem:(id)item;
- (BOOL)_hasTapActionForItem:(id)item;
- (BOOL)_isMultiControllableServiceAccessory:(id)accessory;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)controlsWantSystemPresentationAnimations;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)itemSupportsToggleInteraction:(id)interaction;
- (BOOL)matterItemHasControlModules:(id)modules;
- (BOOL)matterItemSupportsToggle:(id)toggle;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view;
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context;
- (BOOL)requiresUnlockToPerformActionForItem:(id)item;
- (BOOL)shouldShowAccessoryControlForItem:(id)item;
- (HUControllableItemCollectionViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (HULockAuthorizationDelegate)lockAuthorizationDelegate;
- (HUQuickControlPresentationDelegate)quickControlPresentationDelegate;
- (HUQuickControlPresentationHost)ancestorQuickControlHostAtPresentationTime;
- (id)_ancestorQuickControlPresentationHost;
- (id)_childItemsForItem:(id)item;
- (id)_getPresentableItemFromGenericItem:(id)item;
- (id)_itemForServiceControlPresentationAtPoint:(CGPoint)point;
- (id)_performTapActionForItem:(id)item tappedArea:(id)area;
- (id)_visibleCellForItem:(id)item;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)controlItemSupprtingToggleInteractionForItem:(id)item;
- (id)dragItemForItem:(id)item atIndexPath:(id)path;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
- (id)itemForAccessoryControlsWithItem:(id)item;
- (id)prepareToPerformToggleActionForItem:(id)item sourceItem:(id)sourceItem;
- (id)presentAccessoryControlsForItem:(id)item;
- (id)presentAccessorySettingsForItem:(id)item;
- (id)presentAccessorySettingsForItem:(id)item secondaryDestination:(unint64_t)destination;
- (id)presentationCoordinator:(id)coordinator contextForPresentationAtPoint:(CGPoint)point;
- (id)quickControlPresentationContextForItem:(id)item atIndexPath:(id)path point:(CGPoint)point;
- (id)quickControlPresentationContextForUUID:(id)d type:(unint64_t)type;
- (id)tappableAreaForPoint:(CGPoint)point inItem:(id)item atIndexPath:(id)path;
- (id)toggleMatterItem:(id)item;
- (id)unwrappedItemForAccessoryControls:(id)controls;
- (void)_commonInit;
- (void)_handleContextualGesture:(id)gesture;
- (void)_handleReorderGesture:(id)gesture;
- (void)_itemSetDidChange;
- (void)_reorderGestureDidBegin:(id)begin;
- (void)_reorderGestureDidChange:(id)change;
- (void)_reorderGestureDidEnd:(id)end finished:(BOOL)finished;
- (void)_showQuickControlsForSelectedMenuItem;
- (void)_showSettingsForSelectedMenuItem;
- (void)_updateEditingStateForCell:(id)cell animate:(BOOL)animate;
- (void)_updateReorderingGestureRecognizer;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler;
- (void)childViewController:(id)controller didEndQuickControlsPresentation:(id)presentation;
- (void)childViewController:(id)controller willBeginQuickControlsPresentation:(id)presentation;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)configureWithAccessoryControlViewController:(id)controller;
- (void)didReorderItemWithSortedItemsBySectionID:(id)d;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)itemManager:(id)manager performUpdateRequest:(id)request;
- (void)presentActionSetItem:(id)item;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentationCoordinator:(id)coordinator applyOverrideAttributes:(id)attributes toItem:(id)item;
- (void)presentationCoordinator:(id)coordinator clearOverrideAttributesForItem:(id)item;
- (void)presentationCoordinator:(id)coordinator didRecognizeTapForItem:(id)item tappedArea:(id)area;
- (void)presentationCoordinator:(id)coordinator willBeginPresentationWithContext:(id)context;
- (void)presentationCoordinator:(id)coordinator willEndPresentationWithContext:(id)context;
- (void)refreshTileHelper;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setExecutionFuture:(id)future forActionSet:(id)set;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUControllableItemCollectionViewController

- (id)presentAccessorySettingsForItem:(id)item
{
  v3 = [(HUControllableItemCollectionViewController *)self presentAccessorySettingsForItem:item secondaryDestination:0];

  return v3;
}

- (id)presentAccessorySettingsForItem:(id)item secondaryDestination:(unint64_t)destination
{
  itemCopy = item;
  selfCopy = self;
  v8 = HUControllableItemCollectionViewController.presentAccessorySettings(for:secondaryDestination:)(itemCopy, destination);

  return v8;
}

- (id)presentAccessoryControlsForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = HUControllableItemCollectionViewController.presentAccessoryControls(for:)(itemCopy);

  return v6;
}

- (void)configureWithAccessoryControlViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  HUControllableItemCollectionViewController.configure(accessoryControlViewController:)(controllerCopy);
}

- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)for tileItem:(HFItem *)item completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = item;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20D567C58();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20D5C51F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20D5C5200;
  v16[5] = v15;
  forCopy = for;
  itemCopy = item;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v11, &unk_20D5BCD00, v16);
}

- (id)unwrappedItemForAccessoryControls:(id)controls
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  controlsCopy = controls;
  v6 = controlsCopy;
  if (v4)
  {
    sourceItem = [v4 sourceItem];
  }

  else
  {
    sourceItem = controlsCopy;
  }

  v8 = sourceItem;
  v9 = swift_dynamicCastObjCProtocolConditional();

  if (!v9)
  {
  }

  return v9;
}

- (void)refreshTileHelper
{
  selfCopy = self;
  HUControllableItemCollectionViewController.refreshTileHelper()();
}

- (BOOL)controlsWantSystemPresentationAnimations
{
  selfCopy = self;
  if ([(HUControllableItemCollectionViewController *)selfCopy hasCustomControlPresentationAnimations])
  {
    if ([objc_opt_self() isAnIPhone])
    {
      isHomeControlService = 1;
    }

    else
    {
      isHomeControlService = [objc_opt_self() isHomeControlService];
    }
  }

  else
  {
    isHomeControlService = 0;
  }

  return isHomeControlService;
}

- (BOOL)matterItemSupportsToggle:(id)toggle
{
  toggleCopy = toggle;
  selfCopy = self;
  v6 = _sSo42HUControllableItemCollectionViewControllerC6HomeUIE06matterB14SupportsToggle4itemSbSo6HFItemC_tF_0(toggleCopy);

  return v6 & 1;
}

- (id)toggleMatterItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = _sSo42HUControllableItemCollectionViewControllerC6HomeUIE012toggleMatterB0ySo8NAFutureCyyXlGSo6HFItemCF_0(itemCopy);

  return v6;
}

- (BOOL)matterItemHasControlModules:(id)modules
{
  modulesCopy = modules;
  selfCopy = self;
  HasControlModules4itemSbSo6HFItemC_tF_0 = _sSo42HUControllableItemCollectionViewControllerC6HomeUIE06matterB17HasControlModules4itemSbSo6HFItemC_tF_0(modulesCopy);

  return HasControlModules4itemSbSo6HFItemC_tF_0;
}

- (id)itemForAccessoryControlsWithItem:(id)item
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  itemCopy = item;
  v6 = itemCopy;
  if (v4)
  {
    sourceItem = [v4 sourceItem];
  }

  else
  {
    sourceItem = itemCopy;
  }

  v8 = sourceItem;
  v9 = swift_dynamicCastObjCProtocolConditional();

  if (!v9)
  {
  }

  return v9;
}

- (BOOL)shouldShowAccessoryControlForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  LOBYTE(self) = HUControllableItemCollectionViewController.shouldShowAccessoryControl(for:)(itemCopy);

  return self & 1;
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  animatedCopy = animated;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && presentation)
  {
    presentationCopy = presentation;
    selfCopy = self;
    v9 = [presentationCopy hu:-[HUControllableItemCollectionViewController controlsWantSystemPresentationAnimations](selfCopy dismissViewControllerAnimated:sel_controlsWantSystemPresentationAnimations)];

    v10 = v9;
  }

  else
  {
    v10 = [presentation hu:animatedCopy dismissViewControllerAnimated:?];
  }

  return v10;
}

- (void)_commonInit
{
  [(HUControllableItemCollectionViewController *)self setInstallsStandardGestureForInteractiveMovement:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(HUControllableItemCollectionViewController *)self setActionSetExecutionFuturesKeyedByIdentifier:dictionary];
}

- (HUControllableItemCollectionViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  managerCopy = manager;
  layoutCopy = layout;
  if (([layoutCopy conformsToProtocol:&unk_2824E78C8] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUControllableItemCollectionViewController.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"[collectionViewLayout conformsToProtocol:@protocol(HUControllableCollectionViewLayout)]"}];
  }

  v13.receiver = self;
  v13.super_class = HUControllableItemCollectionViewController;
  v9 = [(HUItemCollectionViewController *)&v13 initWithItemManager:managerCopy collectionViewLayout:layoutCopy];
  v10 = v9;
  if (v9)
  {
    [(HUControllableItemCollectionViewController *)v9 _commonInit];
  }

  return v10;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = HUControllableItemCollectionViewController;
  v3 = [(HUItemCollectionViewController *)&v6 initUsingCompositionalLayoutWithItemManager:manager];
  v4 = v3;
  if (v3)
  {
    [v3 _commonInit];
  }

  return v4;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v12 viewDidLoad];
  v3 = [HUQuickControlPresentationCoordinator alloc];
  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  v5 = [(HUQuickControlPresentationCoordinator *)v3 initWithTargetView:collectionView delegate:self];
  [(HUControllableItemCollectionViewController *)self setQuickControlPresentationCoordinator:v5];

  collectionView2 = [(HUControllableItemCollectionViewController *)self collectionView];
  [collectionView2 setClipsToBounds:0];

  if (![(HUControllableItemCollectionViewController *)self useCustomDragAndDrop])
  {
    [(HUControllableItemCollectionViewController *)self _updateReorderingGestureRecognizer];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleApplicationWillResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];

  if ([(HUControllableItemCollectionViewController *)self useCustomDragAndDrop])
  {
    collectionView3 = [(HUControllableItemCollectionViewController *)self collectionView];
    [collectionView3 setDragDelegate:self];

    collectionView4 = [(HUControllableItemCollectionViewController *)self collectionView];
    [collectionView4 setDropDelegate:self];

    isAMac = [MEMORY[0x277D14CE8] isAMac];
    collectionView5 = [(HUControllableItemCollectionViewController *)self collectionView];
    [collectionView5 setDragInteractionEnabled:isAMac];
  }

  [(HUControllableItemCollectionViewController *)self _registerSectionDecorationViews];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v4 viewWillAppear:appear];
  [(HUControllableItemCollectionViewController *)self setViewAppeared:1];
  [(HUControllableItemCollectionViewController *)self refreshTileHelper];
}

- (void)viewDidAppear:(BOOL)appear
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v18 viewDidAppear:appear];
  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  if (collectionView)
  {
    v5 = collectionView;
    do
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      gestureRecognizers = [v5 gestureRecognizers];
      v7 = [gestureRecognizers countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          v10 = 0;
          do
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(gestureRecognizers);
            }

            v11 = *(*(&v14 + 1) + 8 * v10);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
              [quickControlPresentationCoordinator addMutuallyExclusiveGestureRecognizer:v11];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [gestureRecognizers countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v8);
      }

      superview = [v5 superview];

      v5 = superview;
    }

    while (superview);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(HUControllableItemCollectionViewController *)self setEditing:0 animated:0];
  [(HUControllableItemCollectionViewController *)self setViewAppeared:0];
  v5.receiver = self;
  v5.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  v9 = _Block_copy(completion);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__HUControllableItemCollectionViewController_presentViewController_animated_completion___block_invoke;
  aBlock[3] = &unk_277DB8068;
  aBlock[4] = self;
  v14 = v9;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  v12.receiver = self;
  v12.super_class = HUControllableItemCollectionViewController;
  [(HUControllableItemCollectionViewController *)&v12 presentViewController:controllerCopy animated:animatedCopy completion:v11];
}

uint64_t __88__HUControllableItemCollectionViewController_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setEditing:0 animated:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = HUControllableItemCollectionViewController;
  changeCopy = change;
  [(HUControllableItemCollectionViewController *)&v6 traitCollectionDidChange:changeCopy];
  v5 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator:v6.receiver];
  [v5 traitCollectionDidChange:changeCopy];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v23 = *MEMORY[0x277D85DE8];
  isEditing = [(HUControllableItemCollectionViewController *)self isEditing];
  v21.receiver = self;
  v21.super_class = HUControllableItemCollectionViewController;
  [(HUCollectionViewController *)&v21 setEditing:editingCopy animated:animatedCopy];
  if (isEditing != editingCopy)
  {
    if ([(HUControllableItemCollectionViewController *)self useCustomDragAndDrop])
    {
      quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
      [quickControlPresentationCoordinator setIsEditing:editingCopy];

      LODWORD(quickControlPresentationCoordinator) = [MEMORY[0x277D14CE8] isAMac];
      collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
      [collectionView setDragInteractionEnabled:quickControlPresentationCoordinator | editingCopy];

      splitViewController = [(HUControllableItemCollectionViewController *)self splitViewController];
      [splitViewController setEditing:editingCopy animated:animatedCopy];
    }

    else
    {
      [(HUControllableItemCollectionViewController *)self _updateReorderingGestureRecognizer];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    collectionView2 = [(HUControllableItemCollectionViewController *)self collectionView];
    visibleCells = [collectionView2 visibleCells];

    v13 = [visibleCells countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(visibleCells);
          }

          [(HUControllableItemCollectionViewController *)self _updateEditingStateForCell:*(*(&v17 + 1) + 8 * v16++) animate:1];
        }

        while (v14 != v16);
        v14 = [visibleCells countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)setExecutionFuture:(id)future forActionSet:(id)set
{
  v43 = *MEMORY[0x277D85DE8];
  futureCopy = future;
  setCopy = set;
  v8 = setCopy;
  v33 = futureCopy;
  if (futureCopy && setCopy && ([futureCopy isFinished] & 1) == 0)
  {
    v32 = v8;
    actionSetExecutionFuturesKeyedByIdentifier = [(HUControllableItemCollectionViewController *)self actionSetExecutionFuturesKeyedByIdentifier];
    uniqueIdentifier = [v8 uniqueIdentifier];
    [actionSetExecutionFuturesKeyedByIdentifier setObject:futureCopy forKeyedSubscript:uniqueIdentifier];

    objc_initWeak(&location, self);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __78__HUControllableItemCollectionViewController_setExecutionFuture_forActionSet___block_invoke;
    v38[3] = &unk_277DB8620;
    objc_copyWeak(&v40, &location);
    v11 = v8;
    v39 = v11;
    v12 = [futureCopy addCompletionBlock:v38];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v15 = [visibleCells countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v15)
    {
      v16 = *v35;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(visibleCells);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          objc_opt_class();
          v19 = v18;
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
          v22 = v19;
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;

          if (v24)
          {
            v25 = 1;
          }

          else
          {
            v25 = v21 == 0;
          }

          if (!v25)
          {
            v26 = v21;
            v24 = v22;
          }

          objc_opt_class();
          item = [v24 item];
          if (objc_opt_isKindOfClass())
          {
            v28 = item;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          actionSet = [v29 actionSet];
          v31 = [actionSet isEqual:v11];

          if (v31)
          {
            [v24 setExecuteActionSetFuture:v33];

            goto LABEL_28;
          }
        }

        v15 = [visibleCells countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
    v8 = v32;
  }
}

void __78__HUControllableItemCollectionViewController_setExecutionFuture_forActionSet___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained actionSetExecutionFuturesKeyedByIdentifier];
  v3 = [*(a1 + 32) uniqueIdentifier];
  [v2 removeObjectForKey:v3];
}

- (id)_getPresentableItemFromGenericItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_opt_class();
  v4 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    sourceItem = [v6 sourceItem];
  }

  else
  {
    sourceItem = v4;
  }

  v8 = sourceItem;
  v9 = &unk_28251B0C8;
  if ([v8 conformsToProtocol:v9])
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v6)
  {
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v4;
      _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "%@+No HFServiceLikeItem associated with %@", &v17, 0x16u);
    }

    v8 = v4;
  }

  return v8;
}

- (void)_updateReorderingGestureRecognizer
{
  if (([(HUControllableItemCollectionViewController *)self isEditing]& 1) != 0 || [(HUControllableItemCollectionViewController *)self alwaysAllowReordering])
  {
    reorderGestureRecognizer = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];

    if (!reorderGestureRecognizer)
    {
      v4 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleReorderGesture_];
      [(HUControllableItemCollectionViewController *)self setReorderGestureRecognizer:v4];

      if ([(HUControllableItemCollectionViewController *)self alwaysAllowReordering])
      {
        v5 = 0.15;
      }

      else
      {
        v5 = 0.1;
      }

      reorderGestureRecognizer2 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];
      [reorderGestureRecognizer2 setMinimumPressDuration:v5];

      reorderGestureRecognizer3 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];
      [reorderGestureRecognizer3 setDelegate:self];

      collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
      reorderGestureRecognizer4 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];
      [collectionView addGestureRecognizer:reorderGestureRecognizer4];
    }
  }

  else
  {
    reorderGestureRecognizer5 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];

    if (reorderGestureRecognizer5)
    {
      collectionView2 = [(HUControllableItemCollectionViewController *)self collectionView];
      reorderGestureRecognizer6 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];
      [collectionView2 removeGestureRecognizer:reorderGestureRecognizer6];

      [(HUControllableItemCollectionViewController *)self setReorderGestureRecognizer:0];
    }
  }
}

- (void)_handleReorderGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(HUControllableItemCollectionViewController *)self _reorderGestureDidBegin:gestureCopy];
    }

    else
    {
      v5 = state == 2;
      v6 = gestureCopy;
      if (!v5)
      {
        goto LABEL_14;
      }

      [(HUControllableItemCollectionViewController *)self _reorderGestureDidChange:gestureCopy];
    }

LABEL_13:
    v6 = gestureCopy;
    goto LABEL_14;
  }

  if (state == 3)
  {
    selfCopy2 = self;
    v8 = gestureCopy;
    v9 = 1;
    goto LABEL_12;
  }

  v5 = state == 4;
  v6 = gestureCopy;
  if (v5)
  {
    selfCopy2 = self;
    v8 = gestureCopy;
    v9 = 0;
LABEL_12:
    [(HUControllableItemCollectionViewController *)selfCopy2 _reorderGestureDidEnd:v8 finished:v9];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_reorderGestureDidBegin:(id)begin
{
  beginCopy = begin;
  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  collectionView2 = [(HUControllableItemCollectionViewController *)self collectionView];
  [beginCopy locationInView:collectionView2];
  v8 = v7;
  v10 = v9;

  v14 = [collectionView indexPathForItemAtPoint:{v8, v10}];

  if (v14)
  {
    collectionView3 = [(HUControllableItemCollectionViewController *)self collectionView];
    [collectionView3 beginInteractiveMovementForItemAtIndexPath:v14];

    collectionView4 = [(HUControllableItemCollectionViewController *)self collectionView];
    v13 = [collectionView4 cellForItemAtIndexPath:v14];
    [(HUControllableItemCollectionViewController *)self setCellBeingReordered:v13];
  }
}

- (void)_reorderGestureDidChange:(id)change
{
  changeCopy = change;
  cellBeingReordered = [(HUControllableItemCollectionViewController *)self cellBeingReordered];
  [cellBeingReordered bounds];
  v7 = v6;

  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  [changeCopy locationInView:collectionView];
  v10 = v9;
  v12 = v11;

  collectionView2 = [(HUControllableItemCollectionViewController *)self collectionView];
  [collectionView2 contentSize];
  v15 = v14;
  v17 = v16;

  if ([(HUControllableItemCollectionViewController *)self constrainCellReorderingToBounds])
  {
    v18 = v7 * 0.5;
    v19 = fmax(v10, 0.0);
    if (v19 >= v15)
    {
      v10 = v15;
    }

    else
    {
      v10 = v19;
    }

    v20 = v18 + 0.0;
    if (v18 < v12)
    {
      v20 = v12;
    }

    v21 = v17 - v18;
    if (v21 < 0.0)
    {
      v21 = -v21;
    }

    if (v20 >= v21)
    {
      v12 = v21;
    }

    else
    {
      v12 = v20;
    }
  }

  collectionView3 = [(HUControllableItemCollectionViewController *)self collectionView];
  [collectionView3 updateInteractiveMovementTargetPosition:{v10, v12}];
}

- (void)_reorderGestureDidEnd:(id)end finished:(BOOL)finished
{
  finishedCopy = finished;
  [(HUControllableItemCollectionViewController *)self setCellBeingReordered:0];
  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  v7 = collectionView;
  if (finishedCopy)
  {
    [collectionView endInteractiveMovement];
  }

  else
  {
    [collectionView cancelInteractiveMovement];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  reorderGestureRecognizer = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];

  if (reorderGestureRecognizer == recognizerCopy)
  {
    collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
    collectionView2 = [(HUControllableItemCollectionViewController *)self collectionView];
    [touchCopy locationInView:collectionView2];
    v12 = [collectionView indexPathForItemAtPoint:?];

    if (v12)
    {
      v9 = [(HUControllableItemCollectionViewController *)self canReorderItemAtIndexPath:v12];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_visibleCellForItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        itemManager = [(HUItemCollectionViewController *)self itemManager];
        v13 = [itemManager displayedItemAtIndexPath:v11];

        if (v13 == itemCopy)
        {
          collectionView2 = [(HUControllableItemCollectionViewController *)self collectionView];
          v14 = [collectionView2 cellForItemAtIndexPath:v11];

          goto LABEL_11;
        }
      }

      v8 = [indexPathsForVisibleItems countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)_hasTapActionForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    latestResults = [v5 latestResults];
    v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FD8]];
    bOOLValue = [v9 BOOLValue];

    if ((bOOLValue & 1) == 0 && ![(HUControllableItemCollectionViewController *)self matterItemSupportsToggle:v5])
    {
      v14 = v5;
      if ([v14 conformsToProtocol:&unk_28251B0C8])
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      latestResults2 = [v14 latestResults];
      v18 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D137F8]];

      if (v18)
      {
        v19 = ([v18 integerValue] & 8) == 0;
        if (v7)
        {
LABEL_15:

          goto LABEL_32;
        }
      }

      else
      {
        v19 = 1;
        if (v7)
        {
          goto LABEL_15;
        }
      }

      v20 = [(HUControllableItemCollectionViewController *)self _childItemsForItem:v14];
      v40 = [MEMORY[0x277D145C8] hu_preferredToggleableControlItemInControlItems:v20];
      if (v40)
      {
        accessories = [v16 accessories];
        anyObject = [accessories anyObject];
        hf_siriEndpointProfile = [anyObject hf_siriEndpointProfile];
        v24 = hf_siriEndpointProfile != 0 && v19;

        v11 = 1;
        if (v24)
        {
          v25 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        v26 = v20;
        latestResults3 = [v14 latestResults];
        v28 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D14068]];

        latestResults4 = [v14 latestResults];
        v30 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D140E8]];

        v11 = 0;
        if (!v28 && v30)
        {
          v11 = [v30 category] == 1;
        }

        v20 = v26;
      }

      objc_opt_class();
      v31 = v40;
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;

      targetModeValueSet = [v33 targetModeValueSet];
      if ([targetModeValueSet count] < 2)
      {
        v25 = 1;
      }

      else
      {
        [v16 accessories];
        v35 = v38 = v20;
        anyObject2 = [v35 anyObject];
        v39 = v16;
        supportsCHIP = [anyObject2 supportsCHIP];

        v25 = supportsCHIP ^ 1;
        v20 = v38;
        v16 = v39;
      }

LABEL_31:
      if (v25)
      {
        goto LABEL_8;
      }

LABEL_32:
      LOBYTE(v12) = 0;
      goto LABEL_9;
    }
  }

  v11 = 1;
LABEL_8:
  v12 = ([(HUControllableItemCollectionViewController *)self isEditing]^ 1) & v11;
LABEL_9:

  return v12;
}

- (id)_performTapActionForItem:(id)item tappedArea:(id)area
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = itemCopy;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke;
    aBlock[3] = &unk_277DB8648;
    v47 = v7;
    selfCopy = self;
    v8 = _Block_copy(aBlock);

LABEL_5:
    v9 = 1;
    goto LABEL_27;
  }

  if ([(HUControllableItemCollectionViewController *)self matterItemSupportsToggle:itemCopy])
  {
    objc_initWeak(&location, self);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_2;
    v42[3] = &unk_277DB8670;
    objc_copyWeak(&v44, &location);
    v7 = itemCopy;
    v43 = v7;
    v8 = _Block_copy(v42);

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
    goto LABEL_5;
  }

  latestResults = [itemCopy latestResults];
  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D137F8]];

  if (v11 && ([v11 unsignedIntegerValue] & 0x10) != 0)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_3;
    v41[3] = &unk_277DB7478;
    v41[4] = self;
    v8 = _Block_copy(v41);
    v9 = 1;
    v7 = itemCopy;
  }

  else
  {
    latestResults2 = [itemCopy latestResults];
    v13 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14068]];

    latestResults3 = [itemCopy latestResults];
    v15 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D140E8]];

    objc_opt_class();
    v16 = v15;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v16 && !v18)
    {
      v19 = objc_opt_class();
      NSLog(&cfstr_Hfresultunderl.isa, v16, v19);
    }

    v33 = v13;
    if ([v13 integerValue])
    {
      v20 = [v18 category] == 1;
    }

    else
    {
      v20 = 1;
    }

    latestResults4 = [itemCopy latestResults];
    v22 = [latestResults4 objectForKeyedSubscript:*MEMORY[0x277D14158]];
    unsignedIntegerValue = [v22 unsignedIntegerValue];

    if (v20 && ([MEMORY[0x277CD1650] hf_isSuspendedStateSupported:unsignedIntegerValue] & 1) == 0)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_4;
      v38[3] = &unk_277DB8698;
      v38[4] = self;
      v7 = itemCopy;
      v39 = v7;
      v40 = a2;
      v8 = _Block_copy(v38);

      v9 = 0;
      v28 = v33;
    }

    else
    {
      v24 = MEMORY[0x277D145C8];
      v25 = [(HUControllableItemCollectionViewController *)self _childItemsForItem:itemCopy];
      v26 = [v24 hu_preferredToggleableControlItemInControlItems:v25];

      if (v26)
      {
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_5;
        v36[3] = &unk_277DB7478;
        v27 = v26;
        v37 = v27;
        v8 = _Block_copy(v36);
        v7 = v27;
      }

      else
      {
        v8 = 0;
        v7 = itemCopy;
      }

      v28 = v33;

      v9 = 1;
    }
  }

LABEL_27:
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  if (v8)
  {
    if (v9)
    {
      v30 = [(HUControllableItemCollectionViewController *)self prepareToPerformToggleActionForItem:v7 sourceItem:itemCopy];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_6;
      v34[3] = &unk_277DB86C0;
      v35 = v8;
      v31 = [v30 flatMap:v34];

      futureWithNoResult = v35;
    }

    else
    {
      v31 = v8[2](v8);
    }

    futureWithNoResult = v31;
  }

  return futureWithNoResult;
}

id __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) latestResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D14068]];
  v4 = [v3 integerValue];

  v5 = *(a1 + 32);
  if (v4 == 2)
  {
    [v5 turnOffActionSet];
  }

  else
  {
    [v5 executeActionSet];
  }
  v6 = ;
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) actionSet];
  [v7 setExecutionFuture:v6 forActionSet:v8];

  return v6;
}

id __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained toggleMatterItem:*(a1 + 32)];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v4 = ;

  return v4;
}

id __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) quickControlPresentationCoordinator];
  v3 = [*(a1 + 32) quickControlPresentationCoordinator];
  v4 = [v3 presentationContext];
  v5 = [v2 presentQuickControlWithContext:v4 animated:1];

  return v5;
}

id __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) itemManager];
  v3 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  v4 = [v2 updateResultsForItems:v3 senderSelector:*(a1 + 48)];

  return v4;
}

- (id)_childItemsForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = itemCopy;
    accessory = [v5 accessory];
    hf_primaryService = [accessory hf_primaryService];
    v8 = [v5 controlItemsForService:hf_primaryService];
  }

  else
  {
    accessory = [(HUItemCollectionViewController *)self itemManager];
    v8 = [accessory childItemsForItem:itemCopy ofClass:objc_opt_class()];
  }

  return v8;
}

- (id)tappableAreaForPoint:(CGPoint)point inItem:(id)item atIndexPath:(id)path
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  v10 = [collectionView cellForItemAtIndexPath:pathCopy];

  objc_opt_class();
  v11 = v10;
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
    collectionView2 = [(HUControllableItemCollectionViewController *)self collectionView];
    [v13 convertPoint:collectionView2 fromView:{x, y}];
    v16 = v15;
    v18 = v17;

    v19 = [v13 tappableAreaForPoint:{v16, v18}];
  }

  else
  {
    v19 = @"HUTileCellTappableAreaGeneralToggleArea";
  }

  v20 = v19;

  return v20;
}

- (id)prepareToPerformToggleActionForItem:(id)item sourceItem:(id)sourceItem
{
  itemCopy = item;
  if (![MEMORY[0x277D14670] isHomeControlService] || !-[HUControllableItemCollectionViewController requiresUnlockToPerformActionForItem:](self, "requiresUnlockToPerformActionForItem:", itemCopy) || (-[HUControllableItemCollectionViewController lockAuthorizationDelegate](self, "lockAuthorizationDelegate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "authorizeIfLockedForViewController:", self), futureWithNoResult = objc_claimAutoreleasedReturnValue(), v6, !futureWithNoResult))
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (void)_updateEditingStateForCell:(id)cell animate:(BOOL)animate
{
  animateCopy = animate;
  cellCopy = cell;
  alwaysAllowReordering = [(HUControllableItemCollectionViewController *)self alwaysAllowReordering];
  v7 = cellCopy;
  if (!alwaysAllowReordering)
  {
    v8 = cellCopy;
    if ([v8 conformsToProtocol:&unk_2824AB8A8])
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
      itemManager = [(HUItemCollectionViewController *)self itemManager];
      item = [v10 item];
      v13 = [itemManager indexPathForItem:item];

      if (v13)
      {
        v14 = [(HUControllableItemCollectionViewController *)self canReorderItemAtIndexPath:v13];
      }

      else
      {
        v14 = 0;
      }

      v15 = [(HUControllableItemCollectionViewController *)self isEditing]& animateCopy;
      if (objc_opt_respondsToSelector())
      {
        [v10 setReorderable:v14];
      }

      else
      {
        v15 = v14 & v15;
      }

      [v10 setRearranging:v15];
    }

    v7 = cellCopy;
  }
}

- (BOOL)_isMultiControllableServiceAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  v4 = accessoryCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    latestResults = [v6 latestResults];
    v8 = [latestResults objectForKey:*MEMORY[0x277D13D88]];

    v9 = [v8 na_flatMap:&__block_literal_global_22];
    v10 = [v9 count] > 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __83__HUControllableItemCollectionViewController__isMultiControllableServiceAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueSource];
  v3 = [v2 allServices];
  v4 = [v3 na_filter:&__block_literal_global_253];

  return v4;
}

BOOL __83__HUControllableItemCollectionViewController__isMultiControllableServiceAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 hf_parentService];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)itemSupportsToggleInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(HUControllableItemCollectionViewController *)self matterItemSupportsToggle:interactionCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(HUControllableItemCollectionViewController *)self controlItemSupprtingToggleInteractionForItem:interactionCopy];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)controlItemSupprtingToggleInteractionForItem:(id)item
{
  itemCopy = item;
  if ([(HUControllableItemCollectionViewController *)self _isMultiControllableServiceAccessory:itemCopy])
  {
    v5 = 0;
  }

  else
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

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || ([v8 sourceItem], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass))
    {
      v5 = 0;
    }

    else
    {
      v11 = [(HUControllableItemCollectionViewController *)self _childItemsForItem:v6];
      v5 = [MEMORY[0x277D145C8] hu_preferredToggleableControlItemInControlItems:v11];
    }
  }

  return v5;
}

- (void)presentActionSetItem:(id)item
{
  itemCopy = item;
  actionSet = [itemCopy actionSet];

  if (actionSet)
  {
    v5 = objc_alloc(MEMORY[0x277D14398]);
    actionSet2 = [itemCopy actionSet];
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    home = [itemManager home];
    v9 = [v5 initWithExistingObject:actionSet2 inHome:home];

    v10 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v9 mode:0];
    hu_delegateForModalPresentation = [(UIViewController *)self hu_delegateForModalPresentation];
    [(HUSceneActionEditorViewController *)v10 setPresentationDelegate:hu_delegateForModalPresentation];

    v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
    [v12 setModalPresentationStyle:2];
    v13 = [(UIViewController *)self hu_presentPreloadableViewController:v12 animated:1];
  }

  else
  {
    NSLog(&cfstr_ActionsetMustN.isa);
  }
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  pathCopy = path;
  proposedIndexPathCopy = proposedIndexPath;
  section = [proposedIndexPathCopy section];
  if (section >= [pathCopy section])
  {
    section2 = [proposedIndexPathCopy section];
    v16 = proposedIndexPathCopy;
    if (section2 <= [pathCopy section])
    {
      goto LABEL_6;
    }

    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v18 = [itemManager displayedItemsInSection:{objc_msgSend(pathCopy, "section")}];
    v19 = [v18 count];

    v20 = MEMORY[0x277CCAA70];
    section3 = [pathCopy section];
    v13 = v20;
    v14 = v19 - 1;
  }

  else
  {
    v11 = MEMORY[0x277CCAA70];
    section3 = [pathCopy section];
    v13 = v11;
    v14 = 0;
  }

  v16 = [v13 indexPathForItem:v14 inSection:section3];

LABEL_6:

  return v16;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = HUControllableItemCollectionViewController;
  cellCopy = cell;
  [(HUItemCollectionViewController *)&v9 collectionView:view willDisplayCell:cellCopy forItemAtIndexPath:path];
  [(HUControllableItemCollectionViewController *)self _updateEditingStateForCell:cellCopy animate:1, v9.receiver, v9.super_class];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v5 collectionView:view didEndDisplayingCell:cell forItemAtIndexPath:path];
}

- (void)didReorderItemWithSortedItemsBySectionID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "[%@:%@]: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HUControllableItemCollectionViewController_didReorderItemWithSortedItemsBySectionID___block_invoke;
  v8[3] = &unk_277DB86E8;
  objc_copyWeak(&v9, buf);
  [dCopy na_each:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __87__HUControllableItemCollectionViewController_didReorderItemWithSortedItemsBySectionID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained itemManager];
  v8 = [v7 sectionIndexForDisplayedSectionIdentifier:v5];

  v9 = [WeakRetained reorderableItemListForSection:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 mutableCopy];

    v9 = v10;
  }

  [v9 setSortedItems:v14];
  [WeakRetained setReorderableItemList:v9 forSection:v8];
  v11 = [WeakRetained itemManager];
  v12 = [v9 saveWithSender:v11];
  v13 = [v12 addFailureBlock:&__block_literal_global_269];
}

void __87__HUControllableItemCollectionViewController_didReorderItemWithSortedItemsBySectionID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 logError:v3 operationDescription:@"ReorderItems"];
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  removeItemsCopy = removeItems;
  v13.receiver = self;
  v13.super_class = HUControllableItemCollectionViewController;
  addItemsCopy = addItems;
  [(HUItemCollectionViewController *)&v13 diffableDataItemManager:manager didUpdateItems:items addItems:addItemsCopy removeItems:removeItemsCopy];
  v12 = [addItemsCopy count];

  if (v12 || [removeItemsCopy count])
  {
    [(HUControllableItemCollectionViewController *)self _itemSetDidChange];
  }
}

- (void)_itemSetDidChange
{
  collectionViewLayout = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    collectionViewLayout2 = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    allDisplayedItems = [itemManager allDisplayedItems];
    [collectionViewLayout2 clearAllOverrideAttributesForItems:allDisplayedItems];
  }
}

- (void)itemManager:(id)manager performUpdateRequest:(id)request
{
  v9.receiver = self;
  v9.super_class = HUControllableItemCollectionViewController;
  requestCopy = request;
  [(HUItemCollectionViewController *)&v9 itemManager:manager performUpdateRequest:requestCopy];
  changes = [requestCopy changes];

  allOperations = [changes allOperations];
  LODWORD(requestCopy) = [allOperations na_any:&__block_literal_global_282];

  if (requestCopy)
  {
    [(HUControllableItemCollectionViewController *)self _itemSetDidChange];
  }
}

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v25.receiver = self;
  v25.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v25 configureCell:cellCopy forItem:itemCopy];
  [(HUControllableItemCollectionViewController *)self _updateEditingStateForCell:cellCopy animate:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = cellCopy;
    objc_opt_class();
    v9 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    homeKitObject = [v11 homeKitObject];
    uniqueIdentifier = [homeKitObject uniqueIdentifier];

    if (uniqueIdentifier)
    {
      actionSetExecutionFuturesKeyedByIdentifier = [(HUControllableItemCollectionViewController *)self actionSetExecutionFuturesKeyedByIdentifier];
      v15 = [actionSetExecutionFuturesKeyedByIdentifier objectForKeyedSubscript:uniqueIdentifier];

      if (v15)
      {
        actionSetExecutionFuturesKeyedByIdentifier2 = [(HUControllableItemCollectionViewController *)self actionSetExecutionFuturesKeyedByIdentifier];
        v17 = [actionSetExecutionFuturesKeyedByIdentifier2 objectForKeyedSubscript:uniqueIdentifier];
        [v8 setExecuteActionSetFuture:v17];
      }
    }
  }

  v18 = cellCopy;
  if ([v18 conformsToProtocol:&unk_2824AB590])
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (([MEMORY[0x277D14CE8] isAnIPad] & 1) == 0)
  {
    item = [v20 item];
    if (item)
    {
      v22 = item;
      item2 = [v20 item];
      v24 = [item2 isEqual:itemCopy];

      if ((v24 & 1) == 0)
      {
        [v20 setItem:itemCopy];
        [v20 updateUIWithAnimation:1];
      }
    }
  }
}

- (id)_itemForServiceControlPresentationAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  v7 = [collectionView indexPathForItemAtPoint:{x, y}];

  if (v7)
  {
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v9 = [itemManager displayedItemAtIndexPath:v7];

    if ([v9 conformsToProtocol:&unk_2824C0828])
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)quickControlPresentationContextForItem:(id)item atIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  itemCopy = item;
  v11 = objc_alloc_init(HUQuickControlPresentationContext);
  [(HUQuickControlPresentationContext *)v11 setColorStyle:[(HUControllableItemCollectionViewController *)self contentColorStyle]];
  [(HUQuickControlPresentationContext *)v11 setItem:itemCopy];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v13 = [itemManager childItemsForItem:itemCopy ofClass:objc_opt_class()];
  [(HUQuickControlPresentationContext *)v11 setControlItems:v13];

  itemManager2 = [(HUItemCollectionViewController *)self itemManager];
  home = [itemManager2 home];
  [(HUQuickControlPresentationContext *)v11 setHome:home];

  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  v17 = [collectionView layoutAttributesForItemAtIndexPath:pathCopy];
  [v17 frame];
  [(HUQuickControlPresentationContext *)v11 setSourceRect:?];

  v18 = [(HUControllableItemCollectionViewController *)self tappableAreaForPoint:itemCopy inItem:pathCopy atIndexPath:x, y];

  [(HUQuickControlPresentationContext *)v11 setTappedArea:v18];
  [(HUQuickControlPresentationContext *)v11 setPrefersSystemTransitions:0];
  [(HUQuickControlPresentationContext *)v11 setShouldIncludeRoomNameInHeaderTitle:0];
  navigationController = [(HUControllableItemCollectionViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(HUControllableItemCollectionViewController *)self navigationController];
    [(HUQuickControlPresentationContext *)v11 setSourceViewController:navigationController2];
  }

  else
  {
    [(HUQuickControlPresentationContext *)v11 setSourceViewController:self];
  }

  return v11;
}

- (id)quickControlPresentationContextForUUID:(id)d type:(unint64_t)type
{
  dCopy = d;
  v7 = objc_alloc_init(HUQuickControlPresentationContext);
  [(HUQuickControlPresentationContext *)v7 setColorStyle:[(HUControllableItemCollectionViewController *)self contentColorStyle]];
  v8 = [[HUQuickControlPresentationItemManager alloc] initWithHomeKitObjectUUID:dCopy type:type];

  [(HUQuickControlPresentationContext *)v7 setItemManager:v8];
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  home = [itemManager home];
  [(HUQuickControlPresentationContext *)v7 setHome:home];

  [(HUQuickControlPresentationContext *)v7 setPrefersSystemTransitions:1];
  [(HUQuickControlPresentationContext *)v7 setShouldIncludeRoomNameInHeaderTitle:0];
  navigationController = [(HUControllableItemCollectionViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(HUControllableItemCollectionViewController *)self navigationController];
    [(HUQuickControlPresentationContext *)v7 setSourceViewController:navigationController2];
  }

  else
  {
    [(HUQuickControlPresentationContext *)v7 setSourceViewController:self];
  }

  return v7;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view
{
  v6 = [(HUControllableItemCollectionViewController *)self _itemForServiceControlPresentationAtPoint:coordinator, view, location.x, location.y];
  if (v6)
  {
    v7 = [(HUControllableItemCollectionViewController *)self isEditing]^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginPresentationWithContext:(id)context
{
  v62 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  if ([MEMORY[0x277D14670] isHomeControlService] && (objc_msgSend(contextCopy, "didAuthenticate") & 1) == 0 && (-[HUItemCollectionViewController itemManager](self, "itemManager"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(contextCopy, "item"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "childItemsForItem:ofClass:", v9, objc_opt_class()), v10 = objc_claimAutoreleasedReturnValue(), v51[0] = MEMORY[0x277D85DD0], v51[1] = 3221225472, v51[2] = __105__HUControllableItemCollectionViewController_presentationCoordinator_shouldBeginPresentationWithContext___block_invoke, v51[3] = &unk_277DB85D8, v51[4] = self, v11 = objc_msgSend(v10, "na_any:", v51), v10, v9, v8, v11))
  {
    v12 = [contextCopy copy];
    controlItems = [contextCopy controlItems];
    [v12 setControlItems:controlItems];

    lockAuthorizationDelegate = [(HUControllableItemCollectionViewController *)self lockAuthorizationDelegate];
    v15 = [lockAuthorizationDelegate authorizeIfLockedForViewController:self];

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __105__HUControllableItemCollectionViewController_presentationCoordinator_shouldBeginPresentationWithContext___block_invoke_2;
    v48[3] = &unk_277DB7E68;
    v49 = v12;
    v50 = coordinatorCopy;
    v16 = v12;
    v17 = [v15 addSuccessBlock:v48];
  }

  else
  {
    item = [contextCopy item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      item2 = [contextCopy item];
      [(HUControllableItemCollectionViewController *)self presentActionSetItem:item2];
    }

    else
    {
      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        item3 = [contextCopy item];
        *buf = 138412546;
        v53 = v24;
        v54 = 2112;
        v55 = item3;
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@+Controls: checking about presenting accessory controls instead of quick controls for item %@", buf, 0x16u);
      }

      item4 = [contextCopy item];
      v27 = [(HUControllableItemCollectionViewController *)self shouldShowAccessoryControlForItem:item4];

      if (!v27)
      {
        goto LABEL_21;
      }

      item5 = [contextCopy item];
      if ([item5 conformsToProtocol:&unk_28251AC90])
      {
        v29 = item5;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      v31 = [(HUControllableItemCollectionViewController *)self matterItemHasControlModules:v30];
      accessoryRepresentableObject = [v30 accessoryRepresentableObject];

      hf_isMatterOnlyAccessory = [accessoryRepresentableObject hf_isMatterOnlyAccessory];
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v35 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D13D20]];

      v36 = HFLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        controlItems2 = [contextCopy controlItems];
        *buf = 138413314;
        v53 = v38;
        v54 = 2112;
        v55 = controlItems2;
        v56 = 1024;
        v57 = hf_isMatterOnlyAccessory;
        v58 = 1024;
        v59 = v31;
        v60 = 1024;
        v61 = v35;
        _os_log_impl(&dword_20CEB6000, v36, OS_LOG_TYPE_DEFAULT, "%@+Controls: confirming control items %@, isMatterOnly: %d, hasMatterControlModules: %d, forceNativeMatter: %d", buf, 0x28u);
      }

      controlItems3 = [contextCopy controlItems];
      v41 = [controlItems3 count] != 0;

      if (((v41 | v35 | hf_isMatterOnlyAccessory & v31) & 1) == 0)
      {
LABEL_21:
        v21 = 1;
        goto LABEL_22;
      }

      v42 = HFLogForCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        item6 = [contextCopy item];
        *buf = 138412546;
        v53 = v44;
        v54 = 2112;
        v55 = item6;
        _os_log_impl(&dword_20CEB6000, v42, OS_LOG_TYPE_DEFAULT, "%@+Controls presenting accessory controls for item %@", buf, 0x16u);
      }

      item2 = [contextCopy item];
      v46 = [(HUControllableItemCollectionViewController *)self presentAccessoryControlsForItem:item2];
    }
  }

  v21 = 0;
LABEL_22:

  return v21;
}

- (id)presentationCoordinator:(id)coordinator contextForPresentationAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  v8 = [collectionView indexPathForItemAtPoint:{x, y}];

  if (!v8)
  {
    v15.x = x;
    v15.y = y;
    v9 = NSStringFromCGPoint(v15);
    NSLog(&cfstr_CouldNotFindIn.isa, v9);
  }

  v10 = [(HUControllableItemCollectionViewController *)self _itemForServiceControlPresentationAtPoint:x, y];
  if (!v10)
  {
    v16.x = x;
    v16.y = y;
    v11 = NSStringFromCGPoint(v16);
    NSLog(&cfstr_CouldNotFindAn.isa, v11);
  }

  v12 = [(HUControllableItemCollectionViewController *)self quickControlPresentationContextForItem:v10 atIndexPath:v8 point:x, y];

  return v12;
}

- (void)presentationCoordinator:(id)coordinator applyOverrideAttributes:(id)attributes toItem:(id)item
{
  attributesCopy = attributes;
  itemCopy = item;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v9 = [itemManager indexPathForItem:itemCopy];

  if (v9)
  {
    collectionViewLayout = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      collectionViewLayout2 = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
      [collectionViewLayout2 applyOverrideAttributes:attributesCopy toItem:itemCopy atIndexPath:v9];
    }
  }
}

- (void)presentationCoordinator:(id)coordinator clearOverrideAttributesForItem:(id)item
{
  itemCopy = item;
  itemManager = [(HUItemCollectionViewController *)self itemManager];
  v6 = [itemManager indexPathForItem:itemCopy];

  if (v6)
  {
    collectionViewLayout = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      collectionViewLayout2 = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
      [collectionViewLayout2 clearOverrideAttributesForItem:itemCopy atIndexPath:v6];
    }
  }
}

- (BOOL)_hasPartialReachabilityForServiceItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_28251AF08])
  {
    v4 = itemCopy;
    accessories = [v4 accessories];
    v6 = [accessories na_filter:&__block_literal_global_308];
    v7 = [v6 count];
    v8 = [accessories count];
    v9 = v8;
    if (v7)
    {
      v10 = v7 >= v8;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136316162;
      v15 = "[HUControllableItemCollectionViewController _hasPartialReachabilityForServiceItem:]";
      v16 = 2112;
      v17 = v4;
      v18 = 1024;
      v19 = v11;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "(%s) _hasPartialReachabilityForServiceItem: %@ hasSomeUnreachableAccessories: %{BOOL}d with accessories status count (unreachable: %lu, total: %lu)", &v14, 0x30u);
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)presentationCoordinator:(id)coordinator didRecognizeTapForItem:(id)item tappedArea:(id)area
{
  v39 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  areaCopy = area;
  objc_opt_class();
  latestResults = [itemCopy latestResults];
  v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140E8]];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  isThreadNetworkError = [v12 isThreadNetworkError];
  v14 = isThreadNetworkError;
  if (isThreadNetworkError)
  {
    if ([MEMORY[0x277D14670] isHomeApp])
    {
      isSpringBoard = 1;
    }

    else
    {
      isSpringBoard = [MEMORY[0x277D14670] isSpringBoard];
    }
  }

  else
  {
    isSpringBoard = 0;
  }

  if (([areaCopy isEqualToString:@"HUTileCellTappableAreaDetail"] & 1) == 0 && !(isSpringBoard & 1 | !-[HUControllableItemCollectionViewController _hasTapActionForItem:](self, "_hasTapActionForItem:", itemCopy)) && !-[HUControllableItemCollectionViewController _isMultiControllableServiceAccessory:](self, "_isMultiControllableServiceAccessory:", itemCopy))
  {
    v30 = [(HUControllableItemCollectionViewController *)self _performTapActionForItem:itemCopy tappedArea:areaCopy];
    goto LABEL_34;
  }

  objc_opt_class();
  v16 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v14)
  {
    goto LABEL_16;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(HUControllableItemCollectionViewController *)self _hasPartialReachabilityForServiceItem:v16];
    goto LABEL_27;
  }

  if ([v12 isControllableError])
  {
LABEL_16:
    v19 = [(HUControllableItemCollectionViewController *)self _hasPartialReachabilityForServiceItem:v16];
  }

  else
  {
    hasAnyNetworkDiagnosticsIssues = [v18 hasAnyNetworkDiagnosticsIssues];
    v19 = [(HUControllableItemCollectionViewController *)self _hasPartialReachabilityForServiceItem:v16];
    if (!hasAnyNetworkDiagnosticsIssues)
    {
      goto LABEL_27;
    }
  }

  v20 = v19;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([MEMORY[0x277D14670] isHomeApp])
    {
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else if (!(v20 | (([MEMORY[0x277D14670] isSpringBoard] & 1) == 0)))
    {
LABEL_29:
      quickControlPresentationCoordinator2 = [(HUControllableItemCollectionViewController *)self _getPresentableItemFromGenericItem:v16];
      v28 = HFLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = 138412802;
        v34 = v32;
        v35 = 2112;
        v36 = v12;
        v37 = 2112;
        v38 = quickControlPresentationCoordinator2;
        _os_log_error_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_ERROR, "%@+Controls presenting accessory settings for error in item %@ with error %@", &v33, 0x20u);
      }

      v29 = [(HUControllableItemCollectionViewController *)self presentAccessorySettingsForItem:quickControlPresentationCoordinator2];
      goto LABEL_32;
    }
  }

LABEL_27:
  quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
  presentationContext = [quickControlPresentationCoordinator presentationContext];

  if (presentationContext)
  {
    quickControlPresentationCoordinator2 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    quickControlPresentationCoordinator3 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    presentationContext2 = [quickControlPresentationCoordinator3 presentationContext];
    v27 = [quickControlPresentationCoordinator2 presentQuickControlWithContext:presentationContext2 animated:1];

LABEL_32:
  }

LABEL_34:
}

- (void)presentationCoordinator:(id)coordinator willBeginPresentationWithContext:(id)context
{
  [(HUControllableItemCollectionViewController *)self childViewController:self willBeginQuickControlsPresentation:coordinator];
  quickControlPresentationDelegate = [(HUControllableItemCollectionViewController *)self quickControlPresentationDelegate];
  [quickControlPresentationDelegate quickControlsPresentationDidUpdate:1];
}

- (void)presentationCoordinator:(id)coordinator willEndPresentationWithContext:(id)context
{
  v4 = [(HUControllableItemCollectionViewController *)self quickControlPresentationDelegate:coordinator];
  [v4 quickControlsPresentationDidUpdate:0];
}

- (id)_ancestorQuickControlPresentationHost
{
  parentViewController = [(HUControllableItemCollectionViewController *)self parentViewController];
  if (parentViewController)
  {
    do
    {
      if ([parentViewController conformsToProtocol:&unk_2824A3228])
      {
        break;
      }

      v2ParentViewController = [parentViewController parentViewController];

      parentViewController = v2ParentViewController;
    }

    while (v2ParentViewController);
  }

  return parentViewController;
}

- (void)childViewController:(id)controller willBeginQuickControlsPresentation:(id)presentation
{
  controllerCopy = controller;
  presentationCopy = presentation;
  if (![(HUControllableItemCollectionViewController *)self viewAppeared])
  {
    NSLog(&cfstr_TheQuickContro.isa, presentationCopy, controllerCopy);
  }

  if ([(HUControllableItemCollectionViewController *)self viewAppeared])
  {
    _ancestorQuickControlPresentationHost = [(HUControllableItemCollectionViewController *)self _ancestorQuickControlPresentationHost];
    if (_ancestorQuickControlPresentationHost)
    {
      [(HUControllableItemCollectionViewController *)self setAncestorQuickControlHostAtPresentationTime:_ancestorQuickControlPresentationHost];
      ancestorQuickControlHostAtPresentationTime = [(HUControllableItemCollectionViewController *)self ancestorQuickControlHostAtPresentationTime];
      [ancestorQuickControlHostAtPresentationTime childViewController:self willBeginQuickControlsPresentation:presentationCopy];
    }

    else
    {
      [(HUItemCollectionViewController *)self recursivelyDisableItemUpdates:1 withReason:@"HUControllableItemCollectionViewController_QuickControls"];
    }
  }
}

- (void)childViewController:(id)controller didEndQuickControlsPresentation:(id)presentation
{
  presentationCopy = presentation;
  ancestorQuickControlHostAtPresentationTime = [(HUControllableItemCollectionViewController *)self ancestorQuickControlHostAtPresentationTime];

  if (ancestorQuickControlHostAtPresentationTime)
  {
    _ancestorQuickControlPresentationHost = [(HUControllableItemCollectionViewController *)self _ancestorQuickControlPresentationHost];
    ancestorQuickControlHostAtPresentationTime2 = [(HUControllableItemCollectionViewController *)self ancestorQuickControlHostAtPresentationTime];

    if (ancestorQuickControlHostAtPresentationTime2 != _ancestorQuickControlPresentationHost)
    {
      ancestorQuickControlHostAtPresentationTime3 = [(HUControllableItemCollectionViewController *)self ancestorQuickControlHostAtPresentationTime];
      NSLog(&cfstr_TheAncestorQui.isa, ancestorQuickControlHostAtPresentationTime3, _ancestorQuickControlPresentationHost);
    }

    ancestorQuickControlHostAtPresentationTime4 = [(HUControllableItemCollectionViewController *)self ancestorQuickControlHostAtPresentationTime];
    [ancestorQuickControlHostAtPresentationTime4 childViewController:self didEndQuickControlsPresentation:presentationCopy];

    [(HUControllableItemCollectionViewController *)self setAncestorQuickControlHostAtPresentationTime:0];
  }

  else
  {
    [(HUItemCollectionViewController *)self recursivelyDisableItemUpdates:0 withReason:@"HUControllableItemCollectionViewController_QuickControls"];
  }
}

- (void)_handleContextualGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
      [gestureCopy locationInView:collectionView];
      v6 = v5;
      v8 = v7;

      v9 = [(HUControllableItemCollectionViewController *)self _itemForServiceControlPresentationAtPoint:v6, v8];
      if (!v9)
      {
LABEL_17:

        goto LABEL_18;
      }

      v10 = objc_opt_new();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
      v13 = [(HUControllableItemCollectionViewController *)self _childItemsForItem:v9];
      v14 = [v13 count];

      quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
      view = [gestureCopy view];
      if ([(HUControllableItemCollectionViewController *)self presentationCoordinator:quickControlPresentationCoordinator shouldBeginInteractivePresentationWithTouchLocation:view view:v6, v8]&& (isKindOfClass & 1) == 0)
      {

        if (!(v12 & 1 | (v14 != 0)))
        {
LABEL_12:
          quickControlPresentationCoordinator2 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
          v19 = [(HUControllableItemCollectionViewController *)self hasDetailsActionForPresentationCoordinator:quickControlPresentationCoordinator2 item:v9];

          if (v19)
          {
            v20 = objc_alloc(MEMORY[0x277D75728]);
            v21 = _HULocalizedStringWithDefaultValue(@"HUContextualMenuItemSettings", @"HUContextualMenuItemSettings", 1);
            v22 = [v20 initWithTitle:v21 action:sel__showSettingsForSelectedMenuItem];
            [v10 addObject:v22];
          }

          if ([v10 count])
          {
            [(HUControllableItemCollectionViewController *)self setSelectedContextualMenuItem:v9];
            mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
            [mEMORY[0x277D75718] setMenuItems:v10];
            [(HUControllableItemCollectionViewController *)self becomeFirstResponder];
            v24 = *MEMORY[0x277CBF3A8];
            v25 = *(MEMORY[0x277CBF3A8] + 8);
            collectionView2 = [(HUControllableItemCollectionViewController *)self collectionView];
            [mEMORY[0x277D75718] showMenuFromView:collectionView2 rect:{v6, v8, v24, v25}];
          }

          goto LABEL_17;
        }

        if (v12)
        {
          v17 = @"HUContextualMenuItemStatusDetails";
        }

        else
        {
          v17 = @"HUContextualMenuItemQuickControls";
        }

        quickControlPresentationCoordinator = _HULocalizedStringWithDefaultValue(v17, v17, 1);
        view = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:quickControlPresentationCoordinator action:sel__showQuickControlsForSelectedMenuItem];
        [v10 addObject:view];
      }

      goto LABEL_12;
    }
  }

LABEL_18:
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  menuItems = [mEMORY[0x277D75718] menuItems];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__HUControllableItemCollectionViewController_canPerformAction_withSender___block_invoke;
  v13[3] = &__block_descriptor_40_e20_B16__0__UIMenuItem_8l;
  v13[4] = action;
  v9 = [menuItems na_any:v13];

  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUControllableItemCollectionViewController;
    v10 = [(HUControllableItemCollectionViewController *)&v12 canPerformAction:action withSender:senderCopy];
  }

  return v10;
}

- (void)_showSettingsForSelectedMenuItem
{
  selectedContextualMenuItem = [(HUControllableItemCollectionViewController *)self selectedContextualMenuItem];

  if (selectedContextualMenuItem)
  {
    objc_opt_class();
    selectedContextualMenuItem2 = [(HUControllableItemCollectionViewController *)self selectedContextualMenuItem];
    if (objc_opt_isKindOfClass())
    {
      v5 = selectedContextualMenuItem2;
    }

    else
    {
      v5 = 0;
    }

    v20 = v5;

    selectedContextualMenuItem3 = [(HUControllableItemCollectionViewController *)self selectedContextualMenuItem];
    if (v20)
    {
      accessory = [v20 accessory];
      hf_isMultiServiceAccessory = [accessory hf_isMultiServiceAccessory];

      if ((hf_isMultiServiceAccessory & 1) == 0)
      {
        accessory2 = [v20 accessory];
        hf_primaryService = [accessory2 hf_primaryService];
        v11 = [v20 serviceItemForService:hf_primaryService];

        selectedContextualMenuItem3 = v11;
      }
    }

    quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    v13 = [(HUControllableItemCollectionViewController *)self detailsViewControllerForPresentationCoordinator:quickControlPresentationCoordinator item:selectedContextualMenuItem3];

    if (v13)
    {
      hu_delegateForModalPresentation = [(UIViewController *)self hu_delegateForModalPresentation];
      [v13 setPresentationDelegate:hu_delegateForModalPresentation];

      v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
      [v15 setModalPresentationStyle:2];
      presentationController = [v15 presentationController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        presentationController2 = [v15 presentationController];
        [presentationController2 _setPreferredCornerRadius:20.0];
      }

      v19 = [(UIViewController *)self hu_presentPreloadableViewController:v15 animated:1];
    }
  }
}

- (void)_showQuickControlsForSelectedMenuItem
{
  selectedContextualMenuItem = [(HUControllableItemCollectionViewController *)self selectedContextualMenuItem];

  if (selectedContextualMenuItem)
  {
    selectedContextualMenuItem2 = [(HUControllableItemCollectionViewController *)self selectedContextualMenuItem];
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v5 = [itemManager indexPathForItem:selectedContextualMenuItem2];

    v6 = [(HUControllableItemCollectionViewController *)self quickControlPresentationContextForItem:selectedContextualMenuItem2 atIndexPath:v5];
    if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
    {
      objc_opt_class();
      collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
      v8 = [collectionView cellForItemAtIndexPath:v5];
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
      [quickControlPresentationCoordinator setPressedTile_legacy:v10];
    }

    else
    {
      collectionView2 = [(HUControllableItemCollectionViewController *)self collectionView];
      v13 = [collectionView2 cellForItemAtIndexPath:v5];
      if ([v13 conformsToProtocol:&unk_2824C4B08])
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v10 = v14;

      quickControlPresentationCoordinator = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
      [quickControlPresentationCoordinator setPressedTile:v10];
    }

    quickControlPresentationCoordinator2 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    v16 = [quickControlPresentationCoordinator2 presentQuickControlWithContext:v6 animated:1];
  }
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  pathCopy = path;
  v8 = [view cellForItemAtIndexPath:pathCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ![(HUControllableItemCollectionViewController *)self canReorderItemAtIndexPath:pathCopy])
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  else
  {
    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v10 = [itemManager displayedItemAtIndexPath:pathCopy];

    v11 = [(HUControllableItemCollectionViewController *)self dragItemForItem:v10 atIndexPath:pathCopy];
    v12 = [MEMORY[0x277CBEA60] na_arrayWithSafeObject:v11];
  }

  return v12;
}

- (id)dragItemForItem:(id)item atIndexPath:(id)path
{
  v6 = MEMORY[0x277CCAA88];
  pathCopy = path;
  itemCopy = item;
  v9 = objc_alloc_init(v6);
  [v9 registerItemForTypeIdentifier:*MEMORY[0x277CC2188] loadHandler:&__block_literal_global_399];
  v10 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v9];
  [v10 setLocalObject:itemCopy];

  collectionView = [(HUControllableItemCollectionViewController *)self collectionView];
  v12 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 configureDragItem:v10];
  }

  return v10;
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  localDragSession = [session localDragSession];

  return localDragSession != 0;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  pathCopy = path;
  if ([view hasActiveDrag])
  {
    items = [updateCopy items];
    firstObject = [items firstObject];
    localObject = [firstObject localObject];

    itemManager = [(HUItemCollectionViewController *)self itemManager];
    v14 = [itemManager indexPathForItem:localObject];

    section = [v14 section];
    if (section == [pathCopy section])
    {
      v16 = [objc_alloc(MEMORY[0x277D752E8]) initWithDropOperation:3 intent:1];

      goto LABEL_6;
    }
  }

  v16 = [objc_alloc(MEMORY[0x277D752E8]) initWithDropOperation:0];
LABEL_6:

  return v16;
}

- (BOOL)requiresUnlockToPerformActionForItem:(id)item
{
  latestResults = [item latestResults];
  v4 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13D38]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (HULockAuthorizationDelegate)lockAuthorizationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lockAuthorizationDelegate);

  return WeakRetained;
}

- (HUQuickControlPresentationDelegate)quickControlPresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_quickControlPresentationDelegate);

  return WeakRetained;
}

- (HUQuickControlPresentationHost)ancestorQuickControlHostAtPresentationTime
{
  WeakRetained = objc_loadWeakRetained(&self->_ancestorQuickControlHostAtPresentationTime);

  return WeakRetained;
}

@end