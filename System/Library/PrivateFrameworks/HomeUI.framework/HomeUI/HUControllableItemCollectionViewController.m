@interface HUControllableItemCollectionViewController
- (BOOL)_hasPartialReachabilityForServiceItem:(id)a3;
- (BOOL)_hasTapActionForItem:(id)a3;
- (BOOL)_isMultiControllableServiceAccessory:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)controlsWantSystemPresentationAnimations;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)itemSupportsToggleInteraction:(id)a3;
- (BOOL)matterItemHasControlModules:(id)a3;
- (BOOL)matterItemSupportsToggle:(id)a3;
- (BOOL)presentationCoordinator:(id)a3 shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)a4 view:(id)a5;
- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4;
- (BOOL)requiresUnlockToPerformActionForItem:(id)a3;
- (BOOL)shouldShowAccessoryControlForItem:(id)a3;
- (HUControllableItemCollectionViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (HULockAuthorizationDelegate)lockAuthorizationDelegate;
- (HUQuickControlPresentationDelegate)quickControlPresentationDelegate;
- (HUQuickControlPresentationHost)ancestorQuickControlHostAtPresentationTime;
- (id)_ancestorQuickControlPresentationHost;
- (id)_childItemsForItem:(id)a3;
- (id)_getPresentableItemFromGenericItem:(id)a3;
- (id)_itemForServiceControlPresentationAtPoint:(CGPoint)a3;
- (id)_performTapActionForItem:(id)a3 tappedArea:(id)a4;
- (id)_visibleCellForItem:(id)a3;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)controlItemSupprtingToggleInteractionForItem:(id)a3;
- (id)dragItemForItem:(id)a3 atIndexPath:(id)a4;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
- (id)itemForAccessoryControlsWithItem:(id)a3;
- (id)prepareToPerformToggleActionForItem:(id)a3 sourceItem:(id)a4;
- (id)presentAccessoryControlsForItem:(id)a3;
- (id)presentAccessorySettingsForItem:(id)a3;
- (id)presentAccessorySettingsForItem:(id)a3 secondaryDestination:(unint64_t)a4;
- (id)presentationCoordinator:(id)a3 contextForPresentationAtPoint:(CGPoint)a4;
- (id)quickControlPresentationContextForItem:(id)a3 atIndexPath:(id)a4 point:(CGPoint)a5;
- (id)quickControlPresentationContextForUUID:(id)a3 type:(unint64_t)a4;
- (id)tappableAreaForPoint:(CGPoint)a3 inItem:(id)a4 atIndexPath:(id)a5;
- (id)toggleMatterItem:(id)a3;
- (id)unwrappedItemForAccessoryControls:(id)a3;
- (void)_commonInit;
- (void)_handleContextualGesture:(id)a3;
- (void)_handleReorderGesture:(id)a3;
- (void)_itemSetDidChange;
- (void)_reorderGestureDidBegin:(id)a3;
- (void)_reorderGestureDidChange:(id)a3;
- (void)_reorderGestureDidEnd:(id)a3 finished:(BOOL)a4;
- (void)_showQuickControlsForSelectedMenuItem;
- (void)_showSettingsForSelectedMenuItem;
- (void)_updateEditingStateForCell:(id)a3 animate:(BOOL)a4;
- (void)_updateReorderingGestureRecognizer;
- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)a3 tileItem:(HFItem *)a4 completionHandler:(id)a5;
- (void)childViewController:(id)a3 didEndQuickControlsPresentation:(id)a4;
- (void)childViewController:(id)a3 willBeginQuickControlsPresentation:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)configureWithAccessoryControlViewController:(id)a3;
- (void)didReorderItemWithSortedItemsBySectionID:(id)a3;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)itemManager:(id)a3 performUpdateRequest:(id)a4;
- (void)presentActionSetItem:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentationCoordinator:(id)a3 applyOverrideAttributes:(id)a4 toItem:(id)a5;
- (void)presentationCoordinator:(id)a3 clearOverrideAttributesForItem:(id)a4;
- (void)presentationCoordinator:(id)a3 didRecognizeTapForItem:(id)a4 tappedArea:(id)a5;
- (void)presentationCoordinator:(id)a3 willBeginPresentationWithContext:(id)a4;
- (void)presentationCoordinator:(id)a3 willEndPresentationWithContext:(id)a4;
- (void)refreshTileHelper;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setExecutionFuture:(id)a3 forActionSet:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUControllableItemCollectionViewController

- (id)presentAccessorySettingsForItem:(id)a3
{
  v3 = [(HUControllableItemCollectionViewController *)self presentAccessorySettingsForItem:a3 secondaryDestination:0];

  return v3;
}

- (id)presentAccessorySettingsForItem:(id)a3 secondaryDestination:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = HUControllableItemCollectionViewController.presentAccessorySettings(for:secondaryDestination:)(v6, a4);

  return v8;
}

- (id)presentAccessoryControlsForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = HUControllableItemCollectionViewController.presentAccessoryControls(for:)(v4);

  return v6;
}

- (void)configureWithAccessoryControlViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  HUControllableItemCollectionViewController.configure(accessoryControlViewController:)(v4);
}

- (void)accessoryControlViewControllerFor:(HFAccessoryRepresentableItem *)a3 tileItem:(HFItem *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_20D11C1C8(0, 0, v11, &unk_20D5BCD00, v16);
}

- (id)unwrappedItemForAccessoryControls:(id)a3
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = [v4 sourceItem];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = swift_dynamicCastObjCProtocolConditional();

  if (!v9)
  {
  }

  return v9;
}

- (void)refreshTileHelper
{
  v2 = self;
  HUControllableItemCollectionViewController.refreshTileHelper()();
}

- (BOOL)controlsWantSystemPresentationAnimations
{
  v2 = self;
  if ([(HUControllableItemCollectionViewController *)v2 hasCustomControlPresentationAnimations])
  {
    if ([objc_opt_self() isAnIPhone])
    {
      v3 = 1;
    }

    else
    {
      v3 = [objc_opt_self() isHomeControlService];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)matterItemSupportsToggle:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo42HUControllableItemCollectionViewControllerC6HomeUIE06matterB14SupportsToggle4itemSbSo6HFItemC_tF_0(v4);

  return v6 & 1;
}

- (id)toggleMatterItem:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo42HUControllableItemCollectionViewControllerC6HomeUIE012toggleMatterB0ySo8NAFutureCyyXlGSo6HFItemCF_0(v4);

  return v6;
}

- (BOOL)matterItemHasControlModules:(id)a3
{
  v4 = a3;
  v5 = self;
  HasControlModules4itemSbSo6HFItemC_tF_0 = _sSo42HUControllableItemCollectionViewControllerC6HomeUIE06matterB17HasControlModules4itemSbSo6HFItemC_tF_0(v4);

  return HasControlModules4itemSbSo6HFItemC_tF_0;
}

- (id)itemForAccessoryControlsWithItem:(id)a3
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = [v4 sourceItem];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = swift_dynamicCastObjCProtocolConditional();

  if (!v9)
  {
  }

  return v9;
}

- (BOOL)shouldShowAccessoryControlForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = HUControllableItemCollectionViewController.shouldShowAccessoryControl(for:)(v4);

  return self & 1;
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a3)
  {
    v7 = a3;
    v8 = self;
    v9 = [v7 hu:-[HUControllableItemCollectionViewController controlsWantSystemPresentationAnimations](v8 dismissViewControllerAnimated:sel_controlsWantSystemPresentationAnimations)];

    v10 = v9;
  }

  else
  {
    v10 = [a3 hu:v4 dismissViewControllerAnimated:?];
  }

  return v10;
}

- (void)_commonInit
{
  [(HUControllableItemCollectionViewController *)self setInstallsStandardGestureForInteractiveMovement:0];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(HUControllableItemCollectionViewController *)self setActionSetExecutionFuturesKeyedByIdentifier:v3];
}

- (HUControllableItemCollectionViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v8 conformsToProtocol:&unk_2824E78C8] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUControllableItemCollectionViewController.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"[collectionViewLayout conformsToProtocol:@protocol(HUControllableCollectionViewLayout)]"}];
  }

  v13.receiver = self;
  v13.super_class = HUControllableItemCollectionViewController;
  v9 = [(HUItemCollectionViewController *)&v13 initWithItemManager:v7 collectionViewLayout:v8];
  v10 = v9;
  if (v9)
  {
    [(HUControllableItemCollectionViewController *)v9 _commonInit];
  }

  return v10;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUControllableItemCollectionViewController;
  v3 = [(HUItemCollectionViewController *)&v6 initUsingCompositionalLayoutWithItemManager:a3];
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
  v4 = [(HUControllableItemCollectionViewController *)self collectionView];
  v5 = [(HUQuickControlPresentationCoordinator *)v3 initWithTargetView:v4 delegate:self];
  [(HUControllableItemCollectionViewController *)self setQuickControlPresentationCoordinator:v5];

  v6 = [(HUControllableItemCollectionViewController *)self collectionView];
  [v6 setClipsToBounds:0];

  if (![(HUControllableItemCollectionViewController *)self useCustomDragAndDrop])
  {
    [(HUControllableItemCollectionViewController *)self _updateReorderingGestureRecognizer];
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__handleApplicationWillResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];

  if ([(HUControllableItemCollectionViewController *)self useCustomDragAndDrop])
  {
    v8 = [(HUControllableItemCollectionViewController *)self collectionView];
    [v8 setDragDelegate:self];

    v9 = [(HUControllableItemCollectionViewController *)self collectionView];
    [v9 setDropDelegate:self];

    v10 = [MEMORY[0x277D14CE8] isAMac];
    v11 = [(HUControllableItemCollectionViewController *)self collectionView];
    [v11 setDragInteractionEnabled:v10];
  }

  [(HUControllableItemCollectionViewController *)self _registerSectionDecorationViews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v4 viewWillAppear:a3];
  [(HUControllableItemCollectionViewController *)self setViewAppeared:1];
  [(HUControllableItemCollectionViewController *)self refreshTileHelper];
}

- (void)viewDidAppear:(BOOL)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v18 viewDidAppear:a3];
  v4 = [(HUControllableItemCollectionViewController *)self collectionView];
  if (v4)
  {
    v5 = v4;
    do
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = [v5 gestureRecognizers];
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v14 + 1) + 8 * v10);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
              [v12 addMutuallyExclusiveGestureRecognizer:v11];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v8);
      }

      v13 = [v5 superview];

      v5 = v13;
    }

    while (v13);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(HUControllableItemCollectionViewController *)self setEditing:0 animated:0];
  [(HUControllableItemCollectionViewController *)self setViewAppeared:0];
  v5.receiver = self;
  v5.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v5 viewDidDisappear:v3];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = _Block_copy(a5);
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
  [(HUControllableItemCollectionViewController *)&v12 presentViewController:v8 animated:v6 completion:v11];
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

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUControllableItemCollectionViewController;
  v4 = a3;
  [(HUControllableItemCollectionViewController *)&v6 traitCollectionDidChange:v4];
  v5 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator:v6.receiver];
  [v5 traitCollectionDidChange:v4];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(HUControllableItemCollectionViewController *)self isEditing];
  v21.receiver = self;
  v21.super_class = HUControllableItemCollectionViewController;
  [(HUCollectionViewController *)&v21 setEditing:v5 animated:v4];
  if (v7 != v5)
  {
    if ([(HUControllableItemCollectionViewController *)self useCustomDragAndDrop])
    {
      v8 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
      [v8 setIsEditing:v5];

      LODWORD(v8) = [MEMORY[0x277D14CE8] isAMac];
      v9 = [(HUControllableItemCollectionViewController *)self collectionView];
      [v9 setDragInteractionEnabled:v8 | v5];

      v10 = [(HUControllableItemCollectionViewController *)self splitViewController];
      [v10 setEditing:v5 animated:v4];
    }

    else
    {
      [(HUControllableItemCollectionViewController *)self _updateReorderingGestureRecognizer];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(HUControllableItemCollectionViewController *)self collectionView];
    v12 = [v11 visibleCells];

    v13 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(v12);
          }

          [(HUControllableItemCollectionViewController *)self _updateEditingStateForCell:*(*(&v17 + 1) + 8 * v16++) animate:1];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)setExecutionFuture:(id)a3 forActionSet:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v33 = v6;
  if (v6 && v7 && ([v6 isFinished] & 1) == 0)
  {
    v32 = v8;
    v9 = [(HUControllableItemCollectionViewController *)self actionSetExecutionFuturesKeyedByIdentifier];
    v10 = [v8 uniqueIdentifier];
    [v9 setObject:v6 forKeyedSubscript:v10];

    objc_initWeak(&location, self);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __78__HUControllableItemCollectionViewController_setExecutionFuture_forActionSet___block_invoke;
    v38[3] = &unk_277DB8620;
    objc_copyWeak(&v40, &location);
    v11 = v8;
    v39 = v11;
    v12 = [v6 addCompletionBlock:v38];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [(HUControllableItemCollectionViewController *)self collectionView];
    v14 = [v13 visibleCells];

    v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v15)
    {
      v16 = *v35;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v14);
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
          v27 = [v24 item];
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          v30 = [v29 actionSet];
          v31 = [v30 isEqual:v11];

          if (v31)
          {
            [v24 setExecuteActionSetFuture:v33];

            goto LABEL_28;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
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

- (id)_getPresentableItemFromGenericItem:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
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

  if (v6)
  {
    v7 = [v6 sourceItem];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
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
    v3 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];

    if (!v3)
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

      v6 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];
      [v6 setMinimumPressDuration:v5];

      v7 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];
      [v7 setDelegate:self];

      v12 = [(HUControllableItemCollectionViewController *)self collectionView];
      v8 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];
      [v12 addGestureRecognizer:v8];
    }
  }

  else
  {
    v9 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];

    if (v9)
    {
      v10 = [(HUControllableItemCollectionViewController *)self collectionView];
      v11 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];
      [v10 removeGestureRecognizer:v11];

      [(HUControllableItemCollectionViewController *)self setReorderGestureRecognizer:0];
    }
  }
}

- (void)_handleReorderGesture:(id)a3
{
  v10 = a3;
  v4 = [v10 state];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      [(HUControllableItemCollectionViewController *)self _reorderGestureDidBegin:v10];
    }

    else
    {
      v5 = v4 == 2;
      v6 = v10;
      if (!v5)
      {
        goto LABEL_14;
      }

      [(HUControllableItemCollectionViewController *)self _reorderGestureDidChange:v10];
    }

LABEL_13:
    v6 = v10;
    goto LABEL_14;
  }

  if (v4 == 3)
  {
    v7 = self;
    v8 = v10;
    v9 = 1;
    goto LABEL_12;
  }

  v5 = v4 == 4;
  v6 = v10;
  if (v5)
  {
    v7 = self;
    v8 = v10;
    v9 = 0;
LABEL_12:
    [(HUControllableItemCollectionViewController *)v7 _reorderGestureDidEnd:v8 finished:v9];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_reorderGestureDidBegin:(id)a3
{
  v4 = a3;
  v5 = [(HUControllableItemCollectionViewController *)self collectionView];
  v6 = [(HUControllableItemCollectionViewController *)self collectionView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v14 = [v5 indexPathForItemAtPoint:{v8, v10}];

  if (v14)
  {
    v11 = [(HUControllableItemCollectionViewController *)self collectionView];
    [v11 beginInteractiveMovementForItemAtIndexPath:v14];

    v12 = [(HUControllableItemCollectionViewController *)self collectionView];
    v13 = [v12 cellForItemAtIndexPath:v14];
    [(HUControllableItemCollectionViewController *)self setCellBeingReordered:v13];
  }
}

- (void)_reorderGestureDidChange:(id)a3
{
  v4 = a3;
  v5 = [(HUControllableItemCollectionViewController *)self cellBeingReordered];
  [v5 bounds];
  v7 = v6;

  v8 = [(HUControllableItemCollectionViewController *)self collectionView];
  [v4 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [(HUControllableItemCollectionViewController *)self collectionView];
  [v13 contentSize];
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

  v22 = [(HUControllableItemCollectionViewController *)self collectionView];
  [v22 updateInteractiveMovementTargetPosition:{v10, v12}];
}

- (void)_reorderGestureDidEnd:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  [(HUControllableItemCollectionViewController *)self setCellBeingReordered:0];
  v6 = [(HUControllableItemCollectionViewController *)self collectionView];
  v7 = v6;
  if (v4)
  {
    [v6 endInteractiveMovement];
  }

  else
  {
    [v6 cancelInteractiveMovement];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUControllableItemCollectionViewController *)self reorderGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(HUControllableItemCollectionViewController *)self collectionView];
    v11 = [(HUControllableItemCollectionViewController *)self collectionView];
    [v6 locationInView:v11];
    v12 = [v10 indexPathForItemAtPoint:?];

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

- (id)_visibleCellForItem:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(HUControllableItemCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForVisibleItems];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(HUItemCollectionViewController *)self itemManager];
        v13 = [v12 displayedItemAtIndexPath:v11];

        if (v13 == v4)
        {
          v15 = [(HUControllableItemCollectionViewController *)self collectionView];
          v14 = [v15 cellForItemAtIndexPath:v11];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (BOOL)_hasTapActionForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v8 = [v5 latestResults];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13FD8]];
    v10 = [v9 BOOLValue];

    if ((v10 & 1) == 0 && ![(HUControllableItemCollectionViewController *)self matterItemSupportsToggle:v5])
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

      v17 = [v14 latestResults];
      v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D137F8]];

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
        v21 = [v16 accessories];
        v22 = [v21 anyObject];
        v23 = [v22 hf_siriEndpointProfile];
        v24 = v23 != 0 && v19;

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
        v27 = [v14 latestResults];
        v28 = [v27 objectForKeyedSubscript:*MEMORY[0x277D14068]];

        v29 = [v14 latestResults];
        v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277D140E8]];

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

      v34 = [v33 targetModeValueSet];
      if ([v34 count] < 2)
      {
        v25 = 1;
      }

      else
      {
        [v16 accessories];
        v35 = v38 = v20;
        v36 = [v35 anyObject];
        v39 = v16;
        v37 = [v36 supportsCHIP];

        v25 = v37 ^ 1;
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

- (id)_performTapActionForItem:(id)a3 tappedArea:(id)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke;
    aBlock[3] = &unk_277DB8648;
    v47 = v7;
    v48 = self;
    v8 = _Block_copy(aBlock);

LABEL_5:
    v9 = 1;
    goto LABEL_27;
  }

  if ([(HUControllableItemCollectionViewController *)self matterItemSupportsToggle:v6])
  {
    objc_initWeak(&location, self);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_2;
    v42[3] = &unk_277DB8670;
    objc_copyWeak(&v44, &location);
    v7 = v6;
    v43 = v7;
    v8 = _Block_copy(v42);

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
    goto LABEL_5;
  }

  v10 = [v6 latestResults];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D137F8]];

  if (v11 && ([v11 unsignedIntegerValue] & 0x10) != 0)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_3;
    v41[3] = &unk_277DB7478;
    v41[4] = self;
    v8 = _Block_copy(v41);
    v9 = 1;
    v7 = v6;
  }

  else
  {
    v12 = [v6 latestResults];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D14068]];

    v14 = [v6 latestResults];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D140E8]];

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

    v21 = [v6 latestResults];
    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277D14158]];
    v23 = [v22 unsignedIntegerValue];

    if (v20 && ([MEMORY[0x277CD1650] hf_isSuspendedStateSupported:v23] & 1) == 0)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_4;
      v38[3] = &unk_277DB8698;
      v38[4] = self;
      v7 = v6;
      v39 = v7;
      v40 = a2;
      v8 = _Block_copy(v38);

      v9 = 0;
      v28 = v33;
    }

    else
    {
      v24 = MEMORY[0x277D145C8];
      v25 = [(HUControllableItemCollectionViewController *)self _childItemsForItem:v6];
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
        v7 = v6;
      }

      v28 = v33;

      v9 = 1;
    }
  }

LABEL_27:
  v29 = [MEMORY[0x277D2C900] futureWithNoResult];
  if (v8)
  {
    if (v9)
    {
      v30 = [(HUControllableItemCollectionViewController *)self prepareToPerformToggleActionForItem:v7 sourceItem:v6];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __82__HUControllableItemCollectionViewController__performTapActionForItem_tappedArea___block_invoke_6;
      v34[3] = &unk_277DB86C0;
      v35 = v8;
      v31 = [v30 flatMap:v34];

      v29 = v35;
    }

    else
    {
      v31 = v8[2](v8);
    }

    v29 = v31;
  }

  return v29;
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

- (id)_childItemsForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 accessory];
    v7 = [v6 hf_primaryService];
    v8 = [v5 controlItemsForService:v7];
  }

  else
  {
    v6 = [(HUItemCollectionViewController *)self itemManager];
    v8 = [v6 childItemsForItem:v4 ofClass:objc_opt_class()];
  }

  return v8;
}

- (id)tappableAreaForPoint:(CGPoint)a3 inItem:(id)a4 atIndexPath:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a5;
  v9 = [(HUControllableItemCollectionViewController *)self collectionView];
  v10 = [v9 cellForItemAtIndexPath:v8];

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
    v14 = [(HUControllableItemCollectionViewController *)self collectionView];
    [v13 convertPoint:v14 fromView:{x, y}];
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

- (id)prepareToPerformToggleActionForItem:(id)a3 sourceItem:(id)a4
{
  v5 = a3;
  if (![MEMORY[0x277D14670] isHomeControlService] || !-[HUControllableItemCollectionViewController requiresUnlockToPerformActionForItem:](self, "requiresUnlockToPerformActionForItem:", v5) || (-[HUControllableItemCollectionViewController lockAuthorizationDelegate](self, "lockAuthorizationDelegate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "authorizeIfLockedForViewController:", self), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v7;
}

- (void)_updateEditingStateForCell:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v16 = a3;
  v6 = [(HUControllableItemCollectionViewController *)self alwaysAllowReordering];
  v7 = v16;
  if (!v6)
  {
    v8 = v16;
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
      v11 = [(HUItemCollectionViewController *)self itemManager];
      v12 = [v10 item];
      v13 = [v11 indexPathForItem:v12];

      if (v13)
      {
        v14 = [(HUControllableItemCollectionViewController *)self canReorderItemAtIndexPath:v13];
      }

      else
      {
        v14 = 0;
      }

      v15 = [(HUControllableItemCollectionViewController *)self isEditing]& v4;
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

    v7 = v16;
  }
}

- (BOOL)_isMultiControllableServiceAccessory:(id)a3
{
  v3 = a3;
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

  if (v6)
  {
    v7 = [v6 latestResults];
    v8 = [v7 objectForKey:*MEMORY[0x277D13D88]];

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

- (BOOL)itemSupportsToggleInteraction:(id)a3
{
  v4 = a3;
  if ([(HUControllableItemCollectionViewController *)self matterItemSupportsToggle:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(HUControllableItemCollectionViewController *)self controlItemSupprtingToggleInteractionForItem:v4];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)controlItemSupprtingToggleInteractionForItem:(id)a3
{
  v4 = a3;
  if ([(HUControllableItemCollectionViewController *)self _isMultiControllableServiceAccessory:v4])
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    v6 = v4;
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

- (void)presentActionSetItem:(id)a3
{
  v14 = a3;
  v4 = [v14 actionSet];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D14398]);
    v6 = [v14 actionSet];
    v7 = [(HUItemCollectionViewController *)self itemManager];
    v8 = [v7 home];
    v9 = [v5 initWithExistingObject:v6 inHome:v8];

    v10 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v9 mode:0];
    v11 = [(UIViewController *)self hu_delegateForModalPresentation];
    [(HUSceneActionEditorViewController *)v10 setPresentationDelegate:v11];

    v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
    [v12 setModalPresentationStyle:2];
    v13 = [(UIViewController *)self hu_presentPreloadableViewController:v12 animated:1];
  }

  else
  {
    NSLog(&cfstr_ActionsetMustN.isa);
  }
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [v9 section];
  if (v10 >= [v8 section])
  {
    v15 = [v9 section];
    v16 = v9;
    if (v15 <= [v8 section])
    {
      goto LABEL_6;
    }

    v17 = [(HUItemCollectionViewController *)self itemManager];
    v18 = [v17 displayedItemsInSection:{objc_msgSend(v8, "section")}];
    v19 = [v18 count];

    v20 = MEMORY[0x277CCAA70];
    v12 = [v8 section];
    v13 = v20;
    v14 = v19 - 1;
  }

  else
  {
    v11 = MEMORY[0x277CCAA70];
    v12 = [v8 section];
    v13 = v11;
    v14 = 0;
  }

  v16 = [v13 indexPathForItem:v14 inSection:v12];

LABEL_6:

  return v16;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v9.receiver = self;
  v9.super_class = HUControllableItemCollectionViewController;
  v8 = a4;
  [(HUItemCollectionViewController *)&v9 collectionView:a3 willDisplayCell:v8 forItemAtIndexPath:a5];
  [(HUControllableItemCollectionViewController *)self _updateEditingStateForCell:v8 animate:1, v9.receiver, v9.super_class];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v5.receiver = self;
  v5.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v5 collectionView:a3 didEndDisplayingCell:a4 forItemAtIndexPath:a5];
}

- (void)didReorderItemWithSortedItemsBySectionID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "[%@:%@]: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HUControllableItemCollectionViewController_didReorderItemWithSortedItemsBySectionID___block_invoke;
  v8[3] = &unk_277DB86E8;
  objc_copyWeak(&v9, buf);
  [v5 na_each:v8];
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

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v10 = a6;
  v13.receiver = self;
  v13.super_class = HUControllableItemCollectionViewController;
  v11 = a5;
  [(HUItemCollectionViewController *)&v13 diffableDataItemManager:a3 didUpdateItems:a4 addItems:v11 removeItems:v10];
  v12 = [v11 count];

  if (v12 || [v10 count])
  {
    [(HUControllableItemCollectionViewController *)self _itemSetDidChange];
  }
}

- (void)_itemSetDidChange
{
  v3 = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
    v5 = [(HUItemCollectionViewController *)self itemManager];
    v6 = [v5 allDisplayedItems];
    [v7 clearAllOverrideAttributesForItems:v6];
  }
}

- (void)itemManager:(id)a3 performUpdateRequest:(id)a4
{
  v9.receiver = self;
  v9.super_class = HUControllableItemCollectionViewController;
  v6 = a4;
  [(HUItemCollectionViewController *)&v9 itemManager:a3 performUpdateRequest:v6];
  v7 = [v6 changes];

  v8 = [v7 allOperations];
  LODWORD(v6) = [v8 na_any:&__block_literal_global_282];

  if (v6)
  {
    [(HUControllableItemCollectionViewController *)self _itemSetDidChange];
  }
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = HUControllableItemCollectionViewController;
  [(HUItemCollectionViewController *)&v25 configureCell:v6 forItem:v7];
  [(HUControllableItemCollectionViewController *)self _updateEditingStateForCell:v6 animate:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    objc_opt_class();
    v9 = v7;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 homeKitObject];
    v13 = [v12 uniqueIdentifier];

    if (v13)
    {
      v14 = [(HUControllableItemCollectionViewController *)self actionSetExecutionFuturesKeyedByIdentifier];
      v15 = [v14 objectForKeyedSubscript:v13];

      if (v15)
      {
        v16 = [(HUControllableItemCollectionViewController *)self actionSetExecutionFuturesKeyedByIdentifier];
        v17 = [v16 objectForKeyedSubscript:v13];
        [v8 setExecuteActionSetFuture:v17];
      }
    }
  }

  v18 = v6;
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
    v21 = [v20 item];
    if (v21)
    {
      v22 = v21;
      v23 = [v20 item];
      v24 = [v23 isEqual:v7];

      if ((v24 & 1) == 0)
      {
        [v20 setItem:v7];
        [v20 updateUIWithAnimation:1];
      }
    }
  }
}

- (id)_itemForServiceControlPresentationAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(HUControllableItemCollectionViewController *)self collectionView];
  v7 = [v6 indexPathForItemAtPoint:{x, y}];

  if (v7)
  {
    v8 = [(HUItemCollectionViewController *)self itemManager];
    v9 = [v8 displayedItemAtIndexPath:v7];

    if ([v9 conformsToProtocol:&unk_2824C0828])
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)quickControlPresentationContextForItem:(id)a3 atIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HUQuickControlPresentationContext);
  [(HUQuickControlPresentationContext *)v11 setColorStyle:[(HUControllableItemCollectionViewController *)self contentColorStyle]];
  [(HUQuickControlPresentationContext *)v11 setItem:v10];
  v12 = [(HUItemCollectionViewController *)self itemManager];
  v13 = [v12 childItemsForItem:v10 ofClass:objc_opt_class()];
  [(HUQuickControlPresentationContext *)v11 setControlItems:v13];

  v14 = [(HUItemCollectionViewController *)self itemManager];
  v15 = [v14 home];
  [(HUQuickControlPresentationContext *)v11 setHome:v15];

  v16 = [(HUControllableItemCollectionViewController *)self collectionView];
  v17 = [v16 layoutAttributesForItemAtIndexPath:v9];
  [v17 frame];
  [(HUQuickControlPresentationContext *)v11 setSourceRect:?];

  v18 = [(HUControllableItemCollectionViewController *)self tappableAreaForPoint:v10 inItem:v9 atIndexPath:x, y];

  [(HUQuickControlPresentationContext *)v11 setTappedArea:v18];
  [(HUQuickControlPresentationContext *)v11 setPrefersSystemTransitions:0];
  [(HUQuickControlPresentationContext *)v11 setShouldIncludeRoomNameInHeaderTitle:0];
  v19 = [(HUControllableItemCollectionViewController *)self navigationController];

  if (v19)
  {
    v20 = [(HUControllableItemCollectionViewController *)self navigationController];
    [(HUQuickControlPresentationContext *)v11 setSourceViewController:v20];
  }

  else
  {
    [(HUQuickControlPresentationContext *)v11 setSourceViewController:self];
  }

  return v11;
}

- (id)quickControlPresentationContextForUUID:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(HUQuickControlPresentationContext);
  [(HUQuickControlPresentationContext *)v7 setColorStyle:[(HUControllableItemCollectionViewController *)self contentColorStyle]];
  v8 = [[HUQuickControlPresentationItemManager alloc] initWithHomeKitObjectUUID:v6 type:a4];

  [(HUQuickControlPresentationContext *)v7 setItemManager:v8];
  v9 = [(HUItemCollectionViewController *)self itemManager];
  v10 = [v9 home];
  [(HUQuickControlPresentationContext *)v7 setHome:v10];

  [(HUQuickControlPresentationContext *)v7 setPrefersSystemTransitions:1];
  [(HUQuickControlPresentationContext *)v7 setShouldIncludeRoomNameInHeaderTitle:0];
  v11 = [(HUControllableItemCollectionViewController *)self navigationController];

  if (v11)
  {
    v12 = [(HUControllableItemCollectionViewController *)self navigationController];
    [(HUQuickControlPresentationContext *)v7 setSourceViewController:v12];
  }

  else
  {
    [(HUQuickControlPresentationContext *)v7 setSourceViewController:self];
  }

  return v7;
}

- (BOOL)presentationCoordinator:(id)a3 shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)a4 view:(id)a5
{
  v6 = [(HUControllableItemCollectionViewController *)self _itemForServiceControlPresentationAtPoint:a3, a5, a4.x, a4.y];
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

- (BOOL)presentationCoordinator:(id)a3 shouldBeginPresentationWithContext:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D14670] isHomeControlService] && (objc_msgSend(v7, "didAuthenticate") & 1) == 0 && (-[HUItemCollectionViewController itemManager](self, "itemManager"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "item"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "childItemsForItem:ofClass:", v9, objc_opt_class()), v10 = objc_claimAutoreleasedReturnValue(), v51[0] = MEMORY[0x277D85DD0], v51[1] = 3221225472, v51[2] = __105__HUControllableItemCollectionViewController_presentationCoordinator_shouldBeginPresentationWithContext___block_invoke, v51[3] = &unk_277DB85D8, v51[4] = self, v11 = objc_msgSend(v10, "na_any:", v51), v10, v9, v8, v11))
  {
    v12 = [v7 copy];
    v13 = [v7 controlItems];
    [v12 setControlItems:v13];

    v14 = [(HUControllableItemCollectionViewController *)self lockAuthorizationDelegate];
    v15 = [v14 authorizeIfLockedForViewController:self];

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __105__HUControllableItemCollectionViewController_presentationCoordinator_shouldBeginPresentationWithContext___block_invoke_2;
    v48[3] = &unk_277DB7E68;
    v49 = v12;
    v50 = v6;
    v16 = v12;
    v17 = [v15 addSuccessBlock:v48];
  }

  else
  {
    v18 = [v7 item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v20 = [v7 item];
      [(HUControllableItemCollectionViewController *)self presentActionSetItem:v20];
    }

    else
    {
      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = [v7 item];
        *buf = 138412546;
        v53 = v24;
        v54 = 2112;
        v55 = v25;
        _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@+Controls: checking about presenting accessory controls instead of quick controls for item %@", buf, 0x16u);
      }

      v26 = [v7 item];
      v27 = [(HUControllableItemCollectionViewController *)self shouldShowAccessoryControlForItem:v26];

      if (!v27)
      {
        goto LABEL_21;
      }

      v28 = [v7 item];
      if ([v28 conformsToProtocol:&unk_28251AC90])
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      v31 = [(HUControllableItemCollectionViewController *)self matterItemHasControlModules:v30];
      v32 = [v30 accessoryRepresentableObject];

      v33 = [v32 hf_isMatterOnlyAccessory];
      v34 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v35 = [v34 BOOLForKey:*MEMORY[0x277D13D20]];

      v36 = HFLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = [v7 controlItems];
        *buf = 138413314;
        v53 = v38;
        v54 = 2112;
        v55 = v39;
        v56 = 1024;
        v57 = v33;
        v58 = 1024;
        v59 = v31;
        v60 = 1024;
        v61 = v35;
        _os_log_impl(&dword_20CEB6000, v36, OS_LOG_TYPE_DEFAULT, "%@+Controls: confirming control items %@, isMatterOnly: %d, hasMatterControlModules: %d, forceNativeMatter: %d", buf, 0x28u);
      }

      v40 = [v7 controlItems];
      v41 = [v40 count] != 0;

      if (((v41 | v35 | v33 & v31) & 1) == 0)
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
        v45 = [v7 item];
        *buf = 138412546;
        v53 = v44;
        v54 = 2112;
        v55 = v45;
        _os_log_impl(&dword_20CEB6000, v42, OS_LOG_TYPE_DEFAULT, "%@+Controls presenting accessory controls for item %@", buf, 0x16u);
      }

      v20 = [v7 item];
      v46 = [(HUControllableItemCollectionViewController *)self presentAccessoryControlsForItem:v20];
    }
  }

  v21 = 0;
LABEL_22:

  return v21;
}

- (id)presentationCoordinator:(id)a3 contextForPresentationAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(HUControllableItemCollectionViewController *)self collectionView];
  v8 = [v7 indexPathForItemAtPoint:{x, y}];

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

- (void)presentationCoordinator:(id)a3 applyOverrideAttributes:(id)a4 toItem:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [(HUItemCollectionViewController *)self itemManager];
  v9 = [v8 indexPathForItem:v7];

  if (v9)
  {
    v10 = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
      [v12 applyOverrideAttributes:v13 toItem:v7 atIndexPath:v9];
    }
  }
}

- (void)presentationCoordinator:(id)a3 clearOverrideAttributesForItem:(id)a4
{
  v10 = a4;
  v5 = [(HUItemCollectionViewController *)self itemManager];
  v6 = [v5 indexPathForItem:v10];

  if (v6)
  {
    v7 = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(HUControllableItemCollectionViewController *)self collectionViewLayout];
      [v9 clearOverrideAttributesForItem:v10 atIndexPath:v6];
    }
  }
}

- (BOOL)_hasPartialReachabilityForServiceItem:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_28251AF08])
  {
    v4 = v3;
    v5 = [v4 accessories];
    v6 = [v5 na_filter:&__block_literal_global_308];
    v7 = [v6 count];
    v8 = [v5 count];
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

- (void)presentationCoordinator:(id)a3 didRecognizeTapForItem:(id)a4 tappedArea:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  v9 = [v7 latestResults];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D140E8]];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 isThreadNetworkError];
  v14 = v13;
  if (v13)
  {
    if ([MEMORY[0x277D14670] isHomeApp])
    {
      v15 = 1;
    }

    else
    {
      v15 = [MEMORY[0x277D14670] isSpringBoard];
    }
  }

  else
  {
    v15 = 0;
  }

  if (([v8 isEqualToString:@"HUTileCellTappableAreaDetail"] & 1) == 0 && !(v15 & 1 | !-[HUControllableItemCollectionViewController _hasTapActionForItem:](self, "_hasTapActionForItem:", v7)) && !-[HUControllableItemCollectionViewController _isMultiControllableServiceAccessory:](self, "_isMultiControllableServiceAccessory:", v7))
  {
    v30 = [(HUControllableItemCollectionViewController *)self _performTapActionForItem:v7 tappedArea:v8];
    goto LABEL_34;
  }

  objc_opt_class();
  v16 = v7;
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
    v21 = [v18 hasAnyNetworkDiagnosticsIssues];
    v19 = [(HUControllableItemCollectionViewController *)self _hasPartialReachabilityForServiceItem:v16];
    if (!v21)
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
      v24 = [(HUControllableItemCollectionViewController *)self _getPresentableItemFromGenericItem:v16];
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
        v38 = v24;
        _os_log_error_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_ERROR, "%@+Controls presenting accessory settings for error in item %@ with error %@", &v33, 0x20u);
      }

      v29 = [(HUControllableItemCollectionViewController *)self presentAccessorySettingsForItem:v24];
      goto LABEL_32;
    }
  }

LABEL_27:
  v22 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
  v23 = [v22 presentationContext];

  if (v23)
  {
    v24 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    v25 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    v26 = [v25 presentationContext];
    v27 = [v24 presentQuickControlWithContext:v26 animated:1];

LABEL_32:
  }

LABEL_34:
}

- (void)presentationCoordinator:(id)a3 willBeginPresentationWithContext:(id)a4
{
  [(HUControllableItemCollectionViewController *)self childViewController:self willBeginQuickControlsPresentation:a3];
  v5 = [(HUControllableItemCollectionViewController *)self quickControlPresentationDelegate];
  [v5 quickControlsPresentationDidUpdate:1];
}

- (void)presentationCoordinator:(id)a3 willEndPresentationWithContext:(id)a4
{
  v4 = [(HUControllableItemCollectionViewController *)self quickControlPresentationDelegate:a3];
  [v4 quickControlsPresentationDidUpdate:0];
}

- (id)_ancestorQuickControlPresentationHost
{
  v2 = [(HUControllableItemCollectionViewController *)self parentViewController];
  if (v2)
  {
    do
    {
      if ([v2 conformsToProtocol:&unk_2824A3228])
      {
        break;
      }

      v3 = [v2 parentViewController];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (void)childViewController:(id)a3 willBeginQuickControlsPresentation:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (![(HUControllableItemCollectionViewController *)self viewAppeared])
  {
    NSLog(&cfstr_TheQuickContro.isa, v6, v9);
  }

  if ([(HUControllableItemCollectionViewController *)self viewAppeared])
  {
    v7 = [(HUControllableItemCollectionViewController *)self _ancestorQuickControlPresentationHost];
    if (v7)
    {
      [(HUControllableItemCollectionViewController *)self setAncestorQuickControlHostAtPresentationTime:v7];
      v8 = [(HUControllableItemCollectionViewController *)self ancestorQuickControlHostAtPresentationTime];
      [v8 childViewController:self willBeginQuickControlsPresentation:v6];
    }

    else
    {
      [(HUItemCollectionViewController *)self recursivelyDisableItemUpdates:1 withReason:@"HUControllableItemCollectionViewController_QuickControls"];
    }
  }
}

- (void)childViewController:(id)a3 didEndQuickControlsPresentation:(id)a4
{
  v10 = a4;
  v5 = [(HUControllableItemCollectionViewController *)self ancestorQuickControlHostAtPresentationTime];

  if (v5)
  {
    v6 = [(HUControllableItemCollectionViewController *)self _ancestorQuickControlPresentationHost];
    v7 = [(HUControllableItemCollectionViewController *)self ancestorQuickControlHostAtPresentationTime];

    if (v7 != v6)
    {
      v8 = [(HUControllableItemCollectionViewController *)self ancestorQuickControlHostAtPresentationTime];
      NSLog(&cfstr_TheAncestorQui.isa, v8, v6);
    }

    v9 = [(HUControllableItemCollectionViewController *)self ancestorQuickControlHostAtPresentationTime];
    [v9 childViewController:self didEndQuickControlsPresentation:v10];

    [(HUControllableItemCollectionViewController *)self setAncestorQuickControlHostAtPresentationTime:0];
  }

  else
  {
    [(HUItemCollectionViewController *)self recursivelyDisableItemUpdates:0 withReason:@"HUControllableItemCollectionViewController_QuickControls"];
  }
}

- (void)_handleContextualGesture:(id)a3
{
  v27 = a3;
  if ([v27 state] == 3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [(HUControllableItemCollectionViewController *)self collectionView];
      [v27 locationInView:v4];
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

      v15 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
      v16 = [v27 view];
      if ([(HUControllableItemCollectionViewController *)self presentationCoordinator:v15 shouldBeginInteractivePresentationWithTouchLocation:v16 view:v6, v8]&& (isKindOfClass & 1) == 0)
      {

        if (!(v12 & 1 | (v14 != 0)))
        {
LABEL_12:
          v18 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
          v19 = [(HUControllableItemCollectionViewController *)self hasDetailsActionForPresentationCoordinator:v18 item:v9];

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
            v23 = [MEMORY[0x277D75718] sharedMenuController];
            [v23 setMenuItems:v10];
            [(HUControllableItemCollectionViewController *)self becomeFirstResponder];
            v24 = *MEMORY[0x277CBF3A8];
            v25 = *(MEMORY[0x277CBF3A8] + 8);
            v26 = [(HUControllableItemCollectionViewController *)self collectionView];
            [v23 showMenuFromView:v26 rect:{v6, v8, v24, v25}];
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

        v15 = _HULocalizedStringWithDefaultValue(v17, v17, 1);
        v16 = [objc_alloc(MEMORY[0x277D75728]) initWithTitle:v15 action:sel__showQuickControlsForSelectedMenuItem];
        [v10 addObject:v16];
      }

      goto LABEL_12;
    }
  }

LABEL_18:
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277D75718] sharedMenuController];
  v8 = [v7 menuItems];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__HUControllableItemCollectionViewController_canPerformAction_withSender___block_invoke;
  v13[3] = &__block_descriptor_40_e20_B16__0__UIMenuItem_8l;
  v13[4] = a3;
  v9 = [v8 na_any:v13];

  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUControllableItemCollectionViewController;
    v10 = [(HUControllableItemCollectionViewController *)&v12 canPerformAction:a3 withSender:v6];
  }

  return v10;
}

- (void)_showSettingsForSelectedMenuItem
{
  v3 = [(HUControllableItemCollectionViewController *)self selectedContextualMenuItem];

  if (v3)
  {
    objc_opt_class();
    v4 = [(HUControllableItemCollectionViewController *)self selectedContextualMenuItem];
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v20 = v5;

    v6 = [(HUControllableItemCollectionViewController *)self selectedContextualMenuItem];
    if (v20)
    {
      v7 = [v20 accessory];
      v8 = [v7 hf_isMultiServiceAccessory];

      if ((v8 & 1) == 0)
      {
        v9 = [v20 accessory];
        v10 = [v9 hf_primaryService];
        v11 = [v20 serviceItemForService:v10];

        v6 = v11;
      }
    }

    v12 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    v13 = [(HUControllableItemCollectionViewController *)self detailsViewControllerForPresentationCoordinator:v12 item:v6];

    if (v13)
    {
      v14 = [(UIViewController *)self hu_delegateForModalPresentation];
      [v13 setPresentationDelegate:v14];

      v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
      [v15 setModalPresentationStyle:2];
      v16 = [v15 presentationController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v18 = [v15 presentationController];
        [v18 _setPreferredCornerRadius:20.0];
      }

      v19 = [(UIViewController *)self hu_presentPreloadableViewController:v15 animated:1];
    }
  }
}

- (void)_showQuickControlsForSelectedMenuItem
{
  v3 = [(HUControllableItemCollectionViewController *)self selectedContextualMenuItem];

  if (v3)
  {
    v17 = [(HUControllableItemCollectionViewController *)self selectedContextualMenuItem];
    v4 = [(HUItemCollectionViewController *)self itemManager];
    v5 = [v4 indexPathForItem:v17];

    v6 = [(HUControllableItemCollectionViewController *)self quickControlPresentationContextForItem:v17 atIndexPath:v5];
    if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
    {
      objc_opt_class();
      v7 = [(HUControllableItemCollectionViewController *)self collectionView];
      v8 = [v7 cellForItemAtIndexPath:v5];
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v11 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
      [v11 setPressedTile_legacy:v10];
    }

    else
    {
      v12 = [(HUControllableItemCollectionViewController *)self collectionView];
      v13 = [v12 cellForItemAtIndexPath:v5];
      if ([v13 conformsToProtocol:&unk_2824C4B08])
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v10 = v14;

      v11 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
      [v11 setPressedTile:v10];
    }

    v15 = [(HUControllableItemCollectionViewController *)self quickControlPresentationCoordinator];
    v16 = [v15 presentQuickControlWithContext:v6 animated:1];
  }
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = a5;
  v8 = [a3 cellForItemAtIndexPath:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ![(HUControllableItemCollectionViewController *)self canReorderItemAtIndexPath:v7])
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v9 = [(HUItemCollectionViewController *)self itemManager];
    v10 = [v9 displayedItemAtIndexPath:v7];

    v11 = [(HUControllableItemCollectionViewController *)self dragItemForItem:v10 atIndexPath:v7];
    v12 = [MEMORY[0x277CBEA60] na_arrayWithSafeObject:v11];
  }

  return v12;
}

- (id)dragItemForItem:(id)a3 atIndexPath:(id)a4
{
  v6 = MEMORY[0x277CCAA88];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 registerItemForTypeIdentifier:*MEMORY[0x277CC2188] loadHandler:&__block_literal_global_399];
  v10 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v9];
  [v10 setLocalObject:v8];

  v11 = [(HUControllableItemCollectionViewController *)self collectionView];
  v12 = [v11 cellForItemAtIndexPath:v7];

  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 configureDragItem:v10];
  }

  return v10;
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v4 = [a4 localDragSession];

  return v4 != 0;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([a3 hasActiveDrag])
  {
    v10 = [v8 items];
    v11 = [v10 firstObject];
    v12 = [v11 localObject];

    v13 = [(HUItemCollectionViewController *)self itemManager];
    v14 = [v13 indexPathForItem:v12];

    v15 = [v14 section];
    if (v15 == [v9 section])
    {
      v16 = [objc_alloc(MEMORY[0x277D752E8]) initWithDropOperation:3 intent:1];

      goto LABEL_6;
    }
  }

  v16 = [objc_alloc(MEMORY[0x277D752E8]) initWithDropOperation:0];
LABEL_6:

  return v16;
}

- (BOOL)requiresUnlockToPerformActionForItem:(id)a3
{
  v3 = [a3 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13D38]];
  v5 = [v4 BOOLValue];

  return v5;
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