@interface HUQuickControlPresentationCoordinator
- (BOOL)_isRTL;
- (BOOL)_shouldCancelPresentation;
- (BOOL)_supportsDoubleClick:(id)click;
- (BOOL)clickPresentationInteractionShouldBegin:(id)begin;
- (BOOL)clickPresentationInteractionShouldPresent:(id)present;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)hasDetailsActionForQuickControlViewController:(id)controller item:(id)item;
- (BOOL)isActionSetTile;
- (BOOL)isQuickControlPresented;
- (BOOL)isTileOff;
- (CGRect)baseIconFrameInNavigationBar;
- (CGRect)iconFrameInActionSetTile;
- (CGRect)iconFrameInNavigationBar;
- (CGRect)iconFrameInTile;
- (CGRect)primaryLabelFrameInActionSetTile;
- (CGRect)primaryLabelFrameInNavigationBar;
- (CGRect)primaryLabelFrameInTile;
- (CGRect)secondaryLabelFrameInActionSetTile;
- (CGRect)secondaryLabelFrameInNavigationBar;
- (CGRect)secondaryLabelFrameInTile;
- (CGRect)sourceFrameForAnimationController;
- (CGRect)titleAndDescriptionViewFrameInActionSetTile;
- (HUPressedItemContext)activePressedItemContext;
- (HUQuickControlPresentationCoordinator)initWithTargetView:(id)view delegate:(id)delegate cornerRadius:(double)radius;
- (HUQuickControlPresentationCoordinatorDelegate)delegate;
- (UITraitCollection)traitCollection;
- (UIView)targetView;
- (UIViewController)presentingViewController;
- (double)quickControlViewController:(id)controller sourceViewInitialScaleForPresentation:(BOOL)presentation;
- (id)_animationControllerForDismissedController:(id)controller;
- (id)_animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)_beginControlPresentationAnimated:(BOOL)animated;
- (id)_buildCardNavigationController;
- (id)_buildQuickControlViewController;
- (id)_buildSoftwareUpdateNavigationController;
- (id)_buildStatusDetailsNavigationController;
- (id)_createPressedContextForItem:(id)item userInitiated:(BOOL)initiated;
- (id)_dismissCardViewController;
- (id)_dismissChildViewController;
- (id)_dismissQuickControlViewControllerAnimated:(BOOL)animated;
- (id)_dismissServiceDetailsViewController:(id)controller animated:(BOOL)animated;
- (id)_legacyAnimationControllerForDismissedController:(id)controller;
- (id)_legacyAnimationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)_prepareSettingsViewController;
- (id)_viewControllerToPresent;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location;
- (id)createNavigationControllerForPresentationContext:(id)context;
- (id)detailsViewControllerForQuickControlViewController:(id)controller item:(id)item;
- (id)dismissQuickControlAnimated:(BOOL)animated;
- (id)dismissQuickControlAnimated:(BOOL)animated wasDismissed:(BOOL *)dismissed;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)presentQuickControlWithContext:(id)context animated:(BOOL)animated;
- (id)quickControlViewController:(id)controller applierForSourceViewTransitionWithAnimationSettings:(id)settings presenting:(BOOL)presenting;
- (unint64_t)activationStyleForClickPresentationInteraction:(id)interaction;
- (unint64_t)iconSizeInActionSetTile;
- (unint64_t)iconSizeInNavigationBar;
- (unint64_t)iconSizeInTile;
- (void)__createLegacyTransitionViewsForDismissal;
- (void)__createLegacyTransitionViewsForPresentation;
- (void)__createTransitionViewsForDismissal;
- (void)__createTransitionViewsForPresentation;
- (void)_actuateTapticFeedback;
- (void)_cleanupForQuickControlDismissal;
- (void)_configureInitialStateForPressedItemContext:(id)context userInitiated:(BOOL)initiated;
- (void)_createTransitionViewsForDismissal;
- (void)_createTransitionViewsForPresentation;
- (void)_handleDoubleTapGesture:(id)gesture;
- (void)_handleMutuallyExclusiveGesture:(id)gesture;
- (void)_handlePressGesture:(id)gesture;
- (void)_handleSingleTapGesture:(id)gesture;
- (void)_handleTouchGesture:(id)gesture;
- (void)_initiateProgrammaticBounceForItem:(id)item;
- (void)_installGestureRecognizer;
- (void)_prepareForTapticFeedback;
- (void)_preparePressedItemContextForItem:(id)item startApplier:(BOOL)applier;
- (void)_pressGestureDidBecomeActive;
- (void)_pressGestureDidBeginWithLocation:(CGPoint)location;
- (void)_pressGestureDidEnd:(BOOL)end;
- (void)_pressedStateDidEndForItem:(id)item clearPresentationContext:(BOOL)context;
- (void)_restoreOriginalTile;
- (void)_updateCardController;
- (void)_updateOverrideAttributesWithScale:(double)scale forItem:(id)item;
- (void)_updateOverrideAttributesWithTransform:(CGAffineTransform *)transform alpha:(double)alpha forItem:(id)item;
- (void)_validatePresentationContext:(id)context;
- (void)addMutuallyExclusiveGestureRecognizer:(id)recognizer;
- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled;
- (void)itemManager:(id)manager didChangeSourceItem:(id)item;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)playBounceForItem:(id)item;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)quickControlViewControllerDidTapDetailsButton:(id)button;
- (void)quickControlViewControllerWillDismissDetailsViewController:(id)controller shouldDismissQuickControl:(BOOL)control;
- (void)removeAllTransitionSubviews;
- (void)removeMutuallyExclusiveGestureRecognizer:(id)recognizer;
- (void)setIsEditing:(BOOL)editing;
- (void)setPresentationContext:(id)context;
- (void)statusDetailsViewControllerDidFinish:(id)finish;
@end

@implementation HUQuickControlPresentationCoordinator

- (HUQuickControlPresentationCoordinator)initWithTargetView:(id)view delegate:(id)delegate cornerRadius:(double)radius
{
  viewCopy = view;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = HUQuickControlPresentationCoordinator;
  v10 = [(HUQuickControlPresentationCoordinator *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_targetView, viewCopy);
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v11->_cornerRadius = radius;
    v12 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    pressedItemContexts = v11->_pressedItemContexts;
    v11->_pressedItemContexts = v12;

    v14 = objc_opt_new();
    mutuallyExclusiveGestureRecognizers = v11->_mutuallyExclusiveGestureRecognizers;
    v11->_mutuallyExclusiveGestureRecognizers = v14;

    [(HUQuickControlPresentationCoordinator *)v11 _installGestureRecognizer];
    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__HUQuickControlPresentationCoordinator_initWithTargetView_delegate_cornerRadius___block_invoke;
    v18[3] = &unk_277DB8488;
    v19 = v11;
    [globalAsyncScheduler performBlock:v18];
  }

  return v11;
}

- (UITraitCollection)traitCollection
{
  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  v4 = [delegate traitCollectionForPresentationCoordinator:self];

  return v4;
}

- (UIViewController)presentingViewController
{
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  sourceViewController = [presentationContext sourceViewController];

  return sourceViewController;
}

- (HUPressedItemContext)activePressedItemContext
{
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item = [presentationContext item];

  if (item)
  {
    pressedItemContexts = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
    v6 = [pressedItemContexts objectForKey:item];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPresentationContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    [(HUQuickControlPresentationCoordinator *)self _validatePresentationContext:contextCopy];
  }

  itemManager = [(HUQuickControlPresentationContext *)self->_presentationContext itemManager];
  [itemManager setDelegate:0];

  itemManager2 = [(HUQuickControlPresentationContext *)contextCopy itemManager];
  [itemManager2 setDelegate:self];

  presentationContext = self->_presentationContext;
  self->_presentationContext = contextCopy;
}

- (void)addMutuallyExclusiveGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  mutuallyExclusiveGestureRecognizers = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
  v5 = [mutuallyExclusiveGestureRecognizers containsObject:recognizerCopy];

  if ((v5 & 1) == 0)
  {
    mutuallyExclusiveGestureRecognizers2 = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
    [mutuallyExclusiveGestureRecognizers2 addObject:recognizerCopy];

    [recognizerCopy addTarget:self action:sel__handleMutuallyExclusiveGesture_];
  }
}

- (void)removeMutuallyExclusiveGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  mutuallyExclusiveGestureRecognizers = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
  v5 = [mutuallyExclusiveGestureRecognizers containsObject:recognizerCopy];

  if (v5)
  {
    mutuallyExclusiveGestureRecognizers2 = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
    [mutuallyExclusiveGestureRecognizers2 removeObject:recognizerCopy];

    [recognizerCopy removeTarget:self action:sel__handleMutuallyExclusiveGesture_];
  }
}

- (void)setIsEditing:(BOOL)editing
{
  if (self->_isEditing != editing)
  {
    editingCopy = editing;
    self->_isEditing = editing;
    presentationInteraction = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];

    if (presentationInteraction)
    {
      _gestureInstallationView = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
      presentationInteraction2 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
      if (editingCopy)
      {
        [_gestureInstallationView removeInteraction:presentationInteraction2];
      }

      else
      {
        [_gestureInstallationView addInteraction:presentationInteraction2];
      }
    }
  }
}

- (id)createNavigationControllerForPresentationContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = contextCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "createNavigationControllerForPresentationContext Creating navigation controller for presentation context: %@", &v8, 0xCu);
  }

  [(HUQuickControlPresentationCoordinator *)self setPresentationContext:contextCopy];
  _buildCardNavigationController = [(HUQuickControlPresentationCoordinator *)self _buildCardNavigationController];

  return _buildCardNavigationController;
}

- (id)_buildCardNavigationController
{
  if (!self)
  {
    cardNavigationController8 = 0;
    goto LABEL_57;
  }

  if (([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
  {
    _buildQuickControlViewController = [self _buildQuickControlViewController];
    presentationContext = [self presentationContext];
    item = [presentationContext item];
    v16 = [self hasDetailsActionForQuickControlViewController:_buildQuickControlViewController item:item];

    if ((v16 & 1) != 0 || ([self presentationContext], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "item"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "conformsToProtocol:", &unk_28251B0C8), v18, v17, (v19 & 1) == 0))
    {
      _prepareSettingsViewController = [self _prepareSettingsViewController];
      cardNavigationController8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:_prepareSettingsViewController];

      goto LABEL_57;
    }
  }

  [self setCardViewController:0];
  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    presentationContext2 = [self presentationContext];
    isConfiguredForNonHomeUser = [presentationContext2 isConfiguredForNonHomeUser];

    if (isConfiguredForNonHomeUser)
    {
      v4 = [HUCardViewController alloc];
      presentationContext3 = [self presentationContext];
      controlItems = [presentationContext3 controlItems];
      v7 = [(HUCardViewController *)v4 initWithControlItems:controlItems];
      [self setCardViewController:v7];

      cardViewController = [self cardViewController];
      [cardViewController setIsConfiguredForNonHomeUser:1];

      [self _updateCardController];
    }
  }

  cardViewController2 = [self cardViewController];

  if (!cardViewController2)
  {
    v10 = objc_alloc_init(HUCardViewController);
    [self setCardViewController:v10];
  }

  presentationContext4 = [self presentationContext];
  item2 = [presentationContext4 item];

  if (item2)
  {
    [self _updateCardController];
  }

  else
  {
    presentationContext5 = [self presentationContext];
    itemManager = [presentationContext5 itemManager];
    v24 = [itemManager reloadAndUpdateAllItemsFromSenderSelector:sel__buildCardNavigationController];
  }

  cardViewController3 = [self cardViewController];
  [cardViewController3 setDelegate:self];

  delegate = [self delegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    delegate2 = [self delegate];
    presentationContext6 = [self presentationContext];
    [delegate2 presentationCoordinator:self willBeginPresentationWithContext:presentationContext6];
  }

  delegate3 = [self delegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    delegate4 = [self delegate];
    v33 = [delegate4 presentationCoordinatorShouldDisablePullToUnlockSettings:self];
    cardViewController4 = [self cardViewController];
    [cardViewController4 setDisablePullToUnlockSettings:v33];
  }

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v35 = objc_alloc(MEMORY[0x277D757A0]);
    cardViewController5 = [self cardViewController];
    cardNavigationController8 = [v35 initWithRootViewController:cardViewController5];

    [cardNavigationController8 setModalPresentationStyle:2];
    quickControlViewController = [self quickControlViewController];
    controlContainerView = [quickControlViewController controlContainerView];
    [controlContainerView setNeedsLayout];

    quickControlViewController2 = [self quickControlViewController];
    controlContainerView2 = [quickControlViewController2 controlContainerView];
    [controlContainerView2 layoutIfNeeded];

    quickControlViewController3 = [self quickControlViewController];
    controlContainerView3 = [quickControlViewController3 controlContainerView];
    [controlContainerView3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v44 = v43;
    v46 = v45;

    navigationBar = [cardNavigationController8 navigationBar];
    [navigationBar bounds];
    v49 = v46 + v48;

    if (v49 > 621.0)
    {
      if (v49 <= 671.0)
      {
        v50 = v49;
      }

      else
      {
        v50 = 671.0;
      }

      [cardNavigationController8 setPreferredContentSize:{v44, v50}];
    }

    if ([MEMORY[0x277D14670] isMacShortcuts])
    {
      [cardNavigationController8 preferredContentSize];
      [cardNavigationController8 setPreferredContentSize:668.0];
    }

    goto LABEL_57;
  }

  v51 = [HUQuickControlNavigationController alloc];
  cardViewController6 = [self cardViewController];
  v53 = [(HUQuickControlNavigationController *)v51 initWithRootViewController:cardViewController6];
  [self setCardNavigationController:v53];

  presentationContext7 = [self presentationContext];
  if ([presentationContext7 prefersSystemTransitions])
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  cardNavigationController = [self cardNavigationController];
  [cardNavigationController setTransitioningDelegate:selfCopy];

  cardNavigationController2 = [self cardNavigationController];
  presentationController = [cardNavigationController2 presentationController];
  [presentationController setDelegate:self];

  cardNavigationController3 = [self cardNavigationController];
  [cardNavigationController3 setDelegate:self];

  settingsViewController = [self settingsViewController];
  if ([settingsViewController conformsToProtocol:&unk_2825BD480])
  {
    v61 = settingsViewController;
  }

  else
  {
    v61 = 0;
  }

  v62 = v61;

  if (v62)
  {
    presentationContext8 = [self presentationContext];
    item3 = [presentationContext8 item];
    cardNavigationController4 = [self cardNavigationController];
    [v62 recreateDetailsViewFor:item3 navigationController:cardNavigationController4 dismiss:0];
  }

  presentationContext9 = [self presentationContext];
  if (([presentationContext9 prefersSystemTransitions] & 1) == 0)
  {
    cardNavigationController5 = [self cardNavigationController];
    presentationController2 = [cardNavigationController5 presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_53;
    }

    cardNavigationController6 = [self cardNavigationController];
    presentationContext9 = [cardNavigationController6 presentationController];

    if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
    {
      [self pressedTile_legacy];
    }

    else
    {
      [self pressedTile];
    }
    v71 = ;
    presentingViewController = [self presentingViewController];
    objc_opt_class();
    v73 = objc_opt_isKindOfClass();

    if (v73)
    {
      presentingViewController2 = [self presentingViewController];
      presentationController3 = [presentingViewController2 presentationController];
      objc_opt_class();
      v76 = objc_opt_isKindOfClass();

      if (v76)
      {
        presentationController4 = [presentingViewController2 presentationController];
        _sourceView = [presentationController4 _sourceView];

        if (_sourceView)
        {
          _sourceView2 = [presentationController4 _sourceView];

          v71 = _sourceView2;
        }
      }
    }

    [presentationContext9 _setSourceView:v71];
    if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
    {
      pressedTile_legacy = [self pressedTile_legacy];
      layoutOptions = [pressedTile_legacy layoutOptions];
      [layoutOptions cellCornerRadius];
      [presentationContext9 _setCornerRadiusForPresentationAndDismissal:?];
    }

    else
    {
      pressedTile_legacy = [self pressedTile];
      [pressedTile_legacy backgroundCornerRadius];
      [presentationContext9 _setCornerRadiusForPresentationAndDismissal:?];
    }

    [self cornerRadius];
    [presentationContext9 _setPreferredCornerRadius:?];
    [presentationContext9 _setShouldDismissWhenTappedOutside:1];
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] && objc_msgSend(MEMORY[0x277D14CE8], "isAnIPad"))
    {
      [presentationContext9 _setIndexOfLastUndimmedDetent:0];
    }
  }

LABEL_53:
  presentingViewController3 = [self presentingViewController];
  view = [presentingViewController3 view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  delegate5 = [self delegate];
  LOBYTE(view) = objc_opt_respondsToSelector();

  if (view)
  {
    delegate6 = [self delegate];
    v88 = [delegate6 shouldOverrideTraitCollectionForPresentationCoordinator:self];

    if (v88)
    {
      delegate7 = [self delegate];
      v90 = [delegate7 traitCollectionForPresentationCoordinator:self];

      userInterfaceStyle = [v90 userInterfaceStyle];
      cardNavigationController7 = [self cardNavigationController];
      [cardNavigationController7 setOverrideUserInterfaceStyle:userInterfaceStyle];
    }
  }

  cardNavigationController8 = [self cardNavigationController];

LABEL_57:

  return cardNavigationController8;
}

- (void)playBounceForItem:(id)item
{
  itemCopy = item;
  pressedItemContexts = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v5 = [pressedItemContexts objectForKey:itemCopy];

  if (![v5 isUserInitiated] || (objc_msgSend(v5, "isActive") & 1) == 0)
  {
    if (v5)
    {
      [(HUQuickControlPresentationCoordinator *)self _configureInitialStateForPressedItemContext:v5 userInitiated:0];
    }

    else
    {
      v5 = [(HUQuickControlPresentationCoordinator *)self _createPressedContextForItem:itemCopy userInitiated:0];
      pressedItemContexts2 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
      [pressedItemContexts2 setObject:v5 forKey:itemCopy];

      applier = [v5 applier];
      [applier start];
    }

    [(HUQuickControlPresentationCoordinator *)self _initiateProgrammaticBounceForItem:itemCopy];
  }
}

- (void)_handleMutuallyExclusiveGesture:(id)gesture
{
  if ([gesture state] == 1)
  {
    presentationInteraction = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
    gestureRecognizerForExclusionRelationship = [presentationInteraction gestureRecognizerForExclusionRelationship];
    [gestureRecognizerForExclusionRelationship setEnabled:0];

    presentationInteraction2 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
    gestureRecognizerForExclusionRelationship2 = [presentationInteraction2 gestureRecognizerForExclusionRelationship];
    [gestureRecognizerForExclusionRelationship2 setEnabled:1];
  }
}

- (void)_installGestureRecognizer
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleDoubleTapGesture_];
    [(HUQuickControlPresentationCoordinator *)self setDoubleTapGestureRecognizer:v3];

    doubleTapGestureRecognizer = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];
    [doubleTapGestureRecognizer setNumberOfTapsRequired:2];

    doubleTapGestureRecognizer2 = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];
    [doubleTapGestureRecognizer2 setName:@"doubleTapGestureRecognizer"];

    doubleTapGestureRecognizer3 = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];
    [doubleTapGestureRecognizer3 setMaximumIntervalBetweenSuccessiveTaps:0.15];

    doubleTapGestureRecognizer4 = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];
    [doubleTapGestureRecognizer4 setDelegate:self];

    _gestureInstallationView = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
    doubleTapGestureRecognizer5 = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];
    [_gestureInstallationView addGestureRecognizer:doubleTapGestureRecognizer5];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D75E40]) initWithDelegate:self];
    [(HUQuickControlPresentationCoordinator *)self setPresentationInteraction:v10];

    presentationInteraction = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
    gestureRecognizerForExclusionRelationship = [presentationInteraction gestureRecognizerForExclusionRelationship];
    [gestureRecognizerForExclusionRelationship setDelegate:self];

    presentationInteraction2 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
    [presentationInteraction2 setAllowSimultaneousRecognition:1];

    _gestureInstallationView = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
    doubleTapGestureRecognizer5 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
    [_gestureInstallationView addInteraction:doubleTapGestureRecognizer5];
  }

  v14 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleSingleTapGesture_];
  [(HUQuickControlPresentationCoordinator *)self setSingleTapGestureRecognizer:v14];

  singleTapGestureRecognizer = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];
  [singleTapGestureRecognizer setDelegate:self];

  singleTapGestureRecognizer2 = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];
  [singleTapGestureRecognizer2 setDelaysTouchesEnded:1];

  singleTapGestureRecognizer3 = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];
  [singleTapGestureRecognizer3 setName:@"singleTapGestureRecognizer"];

  _gestureInstallationView2 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
  singleTapGestureRecognizer4 = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];
  [_gestureInstallationView2 addGestureRecognizer:singleTapGestureRecognizer4];

  v20 = [[HUTouchGestureRecognizer alloc] initWithTarget:self action:sel__handleTouchGesture_];
  [(HUQuickControlPresentationCoordinator *)self setTouchGestureRecognizer:v20];

  touchGestureRecognizer = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];
  [touchGestureRecognizer setDelegate:self];

  touchGestureRecognizer2 = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];
  [touchGestureRecognizer2 setDelaysTouchesEnded:1];

  touchGestureRecognizer3 = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];
  [touchGestureRecognizer3 setName:@"touchGestureRecognizer"];

  _gestureInstallationView3 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
  touchGestureRecognizer4 = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];
  [_gestureInstallationView3 addGestureRecognizer:touchGestureRecognizer4];
}

- (void)_handleSingleTapGesture:(id)gesture
{
  v57 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  if ([gestureCopy state] == 3)
  {
    isQuickControlPresented = [(HUQuickControlPresentationCoordinator *)self isQuickControlPresented];
    v6 = HFLogForCategory();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (isQuickControlPresented)
    {
      if (v7)
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v53 = 138412546;
        v54 = v9;
        v55 = 2112;
        v56 = gestureCopy;
        v10 = "%@+Controls ignoring single tap gesture %@ because quick control is presented";
LABEL_7:
        _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, v10, &v53, 0x16u);
      }
    }

    else
    {
      if (v7)
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v53 = 138412546;
        v54 = v13;
        v55 = 2112;
        v56 = gestureCopy;
        _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@+Controls handling single tap gesture %@", &v53, 0x16u);
      }

      targetView = [(HUQuickControlPresentationCoordinator *)self targetView];
      [gestureCopy locationInView:targetView];
      v16 = v15;
      v18 = v17;

      delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
      v20 = [delegate presentationCoordinator:self contextForPresentationAtPoint:{v16, v18}];
      [(HUQuickControlPresentationCoordinator *)self setPresentationContext:v20];

      v21 = MEMORY[0x277D143D8];
      presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      [v21 logAndSendTileInteractionEventOfType:1 withPresentationContext:presentationContext presentationCoordinator:self];

      delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
      LOBYTE(presentationContext) = objc_opt_respondsToSelector();

      if (presentationContext)
      {
        delegate3 = [(HUQuickControlPresentationCoordinator *)self delegate];
        presentationContext2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        [delegate3 presentationCoordinatorSendTileInteractionEventOfType:1 withPresentationContext:presentationContext2 presentationCoordinator:self];
      }

      presentationContext3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      item = [presentationContext3 item];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [HUEnergyAnalytics saveTapEvent:46 withInteractionType:1];
      }

      presentationContext4 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      item2 = [presentationContext4 item];
      [(HUQuickControlPresentationCoordinator *)self _preparePressedItemContextForItem:item2 startApplier:1];

      presentationContext5 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      item3 = [presentationContext5 item];
      [(HUQuickControlPresentationCoordinator *)self _initiateProgrammaticBounceForItem:item3];

      objc_opt_class();
      _gestureInstallationView = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
      if (objc_opt_isKindOfClass())
      {
        v34 = _gestureInstallationView;
      }

      else
      {
        v34 = 0;
      }

      v6 = v34;

      if (v6)
      {
        v35 = [v6 indexPathForItemAtPoint:v16, v18];
        if (v35)
        {
          v36 = [v6 cellForItemAtIndexPath:v35];
          if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
          {
            [(HUQuickControlPresentationCoordinator *)self setPressedTile_legacy:v36];
          }

          else
          {
            v37 = v36;
            if ([v37 conformsToProtocol:&unk_2824C4B08])
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            v39 = v38;

            [(HUQuickControlPresentationCoordinator *)self setPressedTile:v39];
          }
        }
      }

      delegate4 = [(HUQuickControlPresentationCoordinator *)self delegate];
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        delegate5 = [(HUQuickControlPresentationCoordinator *)self delegate];
        presentationContext6 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        item4 = [presentationContext6 item];
        presentationContext7 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        tappedArea = [presentationContext7 tappedArea];
        [delegate5 presentationCoordinator:self didRecognizeTapForItem:item4 tappedArea:tappedArea];
      }

      delegate6 = [(HUQuickControlPresentationCoordinator *)self delegate];
      v48 = objc_opt_respondsToSelector();

      if ((v48 & 1) == 0 || (-[HUQuickControlPresentationCoordinator delegate](self, "delegate"), v49 = objc_claimAutoreleasedReturnValue(), -[HUQuickControlPresentationCoordinator presentationContext](self, "presentationContext"), v50 = objc_claimAutoreleasedReturnValue(), [v50 item], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v49, "presentationCoordinator:shouldAllowTapticFeedbackForItem:", self, v51), v51, v50, v49, v52))
      {
        [(HUQuickControlPresentationCoordinator *)self _actuateTapticFeedback];
      }
    }
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v9 = NSStringFromClass(v11);
      v53 = 138412546;
      v54 = v9;
      v55 = 2112;
      v56 = gestureCopy;
      v10 = "%@+Controls ignoring single tap gesture %@ because its state isn't recognized";
      goto LABEL_7;
    }
  }
}

- (void)_handleTouchGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ((state - 3) < 2)
  {
    delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }

    delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
    presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    item = [presentationContext item];
    presentationContext2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    tappedArea = [presentationContext2 tappedArea];
    [delegate2 presentationCoordinator:self touchDidEndForItem:item tappedArea:tappedArea];
    goto LABEL_11;
  }

  if (state != 1)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  _gestureInstallationView = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
  if (objc_opt_isKindOfClass())
  {
    v13 = _gestureInstallationView;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  targetView = [(HUQuickControlPresentationCoordinator *)self targetView];
  [gestureCopy locationInView:targetView];
  v17 = v16;
  v19 = v18;

  delegate2 = [v14 indexPathForItemAtPoint:{v17, v19}];

  if (delegate2)
  {
    delegate3 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v21 = [delegate3 presentationCoordinator:self contextForPresentationAtPoint:{v17, v19}];
    [(HUQuickControlPresentationCoordinator *)self setPresentationContext:v21];

    delegate4 = [(HUQuickControlPresentationCoordinator *)self delegate];
    LOBYTE(v21) = objc_opt_respondsToSelector();

    if (v21)
    {
      presentationContext = [(HUQuickControlPresentationCoordinator *)self delegate];
      item = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      presentationContext2 = [item item];
      tappedArea = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v11TappedArea = [tappedArea tappedArea];
      [presentationContext presentationCoordinator:self touchDidBeginForItem:presentationContext2 tappedArea:v11TappedArea];

LABEL_11:
    }
  }

LABEL_13:
}

- (void)_handleDoubleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 3)
  {
    targetView = [(HUQuickControlPresentationCoordinator *)self targetView];
    [gestureCopy locationInView:targetView];
    v6 = v5;
    v8 = v7;

    delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
    v10 = [delegate presentationCoordinator:self contextForPresentationAtPoint:{v6, v8}];

    if (!v10)
    {
LABEL_22:

      goto LABEL_23;
    }

    [MEMORY[0x277D143D8] logAndSendTileInteractionEventOfType:2 withPresentationContext:v10 presentationCoordinator:self];
    delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate3 = [(HUQuickControlPresentationCoordinator *)self delegate];
      [delegate3 presentationCoordinatorSendTileInteractionEventOfType:2 withPresentationContext:v10 presentationCoordinator:self];
    }

    objc_opt_class();
    _gestureInstallationView = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
    if (objc_opt_isKindOfClass())
    {
      v15 = _gestureInstallationView;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v17 = [v16 indexPathForItemAtPoint:{v6, v8}];
      if (v17)
      {
        v18 = [v16 cellForItemAtIndexPath:v17];
        if (![(HUQuickControlPresentationCoordinator *)self _supportsDoubleClick:v18])
        {

LABEL_21:
          goto LABEL_22;
        }

        if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
        {
          [(HUQuickControlPresentationCoordinator *)self setPressedTile_legacy:v18];
        }

        else
        {
          v19 = v18;
          if ([v19 conformsToProtocol:&unk_2824C4B08])
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;

          [(HUQuickControlPresentationCoordinator *)self setPressedTile:v21];
        }
      }
    }

    v22 = [(HUQuickControlPresentationCoordinator *)self presentQuickControlWithContext:v10 animated:1];
    goto LABEL_21;
  }

LABEL_23:
}

- (void)_handlePressGesture:(id)gesture
{
  gestureCopy = gesture;
  targetView = [(HUQuickControlPresentationCoordinator *)self targetView];
  [gestureCopy locationInView:targetView];
  v7 = v6;
  v9 = v8;

  state = [gestureCopy state];
  if (state == 4)
  {
    selfCopy2 = self;
    v12 = 0;
  }

  else
  {
    if (state != 3)
    {
      if (state == 1)
      {

        [(HUQuickControlPresentationCoordinator *)self _pressGestureDidBeginWithLocation:v7, v9];
      }

      return;
    }

    selfCopy2 = self;
    v12 = 1;
  }

  [(HUQuickControlPresentationCoordinator *)selfCopy2 _pressGestureDidEnd:v12];
}

- (void)_pressGestureDidBeginWithLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  v7 = [delegate presentationCoordinator:self contextForPresentationAtPoint:{x, y}];
  [(HUQuickControlPresentationCoordinator *)self setPresentationContext:v7];

  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item = [presentationContext item];
  [(HUQuickControlPresentationCoordinator *)self _preparePressedItemContextForItem:item startApplier:1];

  objc_initWeak(&location, self);
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __75__HUQuickControlPresentationCoordinator__pressGestureDidBeginWithLocation___block_invoke;
  v15 = &unk_277DB8770;
  objc_copyWeak(&v16, &location);
  v11 = [mainThreadScheduler afterDelay:&v12 performBlock:0.15];
  [(HUQuickControlPresentationCoordinator *)self setPressGestureActiveTimerCancellationToken:v11, v12, v13, v14, v15];

  [(HUQuickControlPresentationCoordinator *)self _prepareForTapticFeedback];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __75__HUQuickControlPresentationCoordinator__pressGestureDidBeginWithLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pressGestureDidBecomeActive];
}

- (void)_pressGestureDidBecomeActive
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mutuallyExclusiveGestureRecognizers = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
  v3 = [mutuallyExclusiveGestureRecognizers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(mutuallyExclusiveGestureRecognizers);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isEnabled])
        {
          [v7 setEnabled:0];
          [v7 setEnabled:1];
        }
      }

      v4 = [mutuallyExclusiveGestureRecognizers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_pressGestureDidEnd:(BOOL)end
{
  endCopy = end;
  pressGestureActiveTimerCancellationToken = [(HUQuickControlPresentationCoordinator *)self pressGestureActiveTimerCancellationToken];
  [pressGestureActiveTimerCancellationToken cancel];

  [(HUQuickControlPresentationCoordinator *)self setPressGestureActiveTimerCancellationToken:0];
  activePressedItemContext = [(HUQuickControlPresentationCoordinator *)self activePressedItemContext];
  if (activePressedItemContext)
  {
    v26 = activePressedItemContext;
    applier = [activePressedItemContext applier];
    [applier setCompletesWhenAtRest:1];

    [v26 setActive:0];
    v8 = CACurrentMediaTime();
    [v26 beginTime];
    activePressedItemContext = v26;
    if (endCopy)
    {
      v10 = v8 - v9;
      v11 = MEMORY[0x277D143D8];
      presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      if (v10 <= 0.25)
      {
        [v11 logAndSendTileInteractionEventOfType:1 withPresentationContext:presentationContext presentationCoordinator:self];

        delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
        v18 = objc_opt_respondsToSelector();

        if (v18)
        {
          delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
          presentationContext2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
          [delegate2 presentationCoordinatorSendTileInteractionEventOfType:1 withPresentationContext:presentationContext2 presentationCoordinator:self];
        }

        quickControlViewController = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
        if (quickControlViewController)
        {
          goto LABEL_12;
        }

        delegate3 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v22 = objc_opt_respondsToSelector();

        activePressedItemContext = v26;
        if ((v22 & 1) == 0)
        {
          goto LABEL_13;
        }

        quickControlViewController = [(HUQuickControlPresentationCoordinator *)self delegate];
        presentationContext3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        item = [presentationContext3 item];
        presentationContext4 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        tappedArea = [presentationContext4 tappedArea];
        [quickControlViewController presentationCoordinator:self didRecognizeTapForItem:item tappedArea:tappedArea];
      }

      else
      {
        [v11 logAndSendTileInteractionEventOfType:3 withPresentationContext:presentationContext presentationCoordinator:self];

        delegate4 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v14 = objc_opt_respondsToSelector();

        activePressedItemContext = v26;
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        quickControlViewController = [(HUQuickControlPresentationCoordinator *)self delegate];
        presentationContext3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        [quickControlViewController presentationCoordinatorSendTileInteractionEventOfType:3 withPresentationContext:presentationContext3 presentationCoordinator:self];
      }

LABEL_12:
      activePressedItemContext = v26;
    }
  }

LABEL_13:
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  targetView = [(HUQuickControlPresentationCoordinator *)self targetView];
  [beginCopy locationInView:targetView];
  v7 = v6;
  v9 = v8;

  view = [beginCopy view];

  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) != 0 && (-[HUQuickControlPresentationCoordinator delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 presentationCoordinator:self shouldBeginInteractivePresentationWithTouchLocation:view view:{v7, v9}], v13, !v14))
  {
    v20 = 0;
  }

  else
  {
    objc_opt_class();
    _gestureInstallationView = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
    if (objc_opt_isKindOfClass())
    {
      v16 = _gestureInstallationView;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      v18 = [v17 indexPathForItemAtPoint:{v7, v9}];
      if (v18)
      {
        v19 = [v17 cellForItemAtIndexPath:v18];
        if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
        {
          [(HUQuickControlPresentationCoordinator *)self setPressedTile_legacy:v19];
        }

        else
        {
          v21 = v19;
          if ([v21 conformsToProtocol:&unk_2824C4B08])
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          [(HUQuickControlPresentationCoordinator *)self setPressedTile:v23];
        }

        delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v25 = [delegate2 presentationCoordinator:self contextForPresentationAtPoint:{v7, v9}];
        [(HUQuickControlPresentationCoordinator *)self setPresentationContext:v25];

        delegate3 = [(HUQuickControlPresentationCoordinator *)self delegate];
        LOBYTE(v25) = objc_opt_respondsToSelector();

        if ((v25 & 1) != 0 && (-[HUQuickControlPresentationCoordinator delegate](self, "delegate"), v27 = objc_claimAutoreleasedReturnValue(), -[HUQuickControlPresentationCoordinator presentationContext](self, "presentationContext"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v27 presentationCoordinator:self shouldBeginLongPressPresentationWithContext:v28], v28, v27, !v29))
        {
          v20 = 0;
        }

        else
        {
          presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
          item = [presentationContext item];
          [(HUQuickControlPresentationCoordinator *)self _preparePressedItemContextForItem:item startApplier:0];

          v20 = 1;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location
{
  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];

    if (!pressedTile_legacy)
    {
      goto LABEL_7;
    }

    v6 = objc_alloc(MEMORY[0x277D76350]);
    pressedTile_legacy2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  }

  else
  {
    pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile];

    if (!pressedTile_legacy)
    {
      goto LABEL_7;
    }

    v6 = objc_alloc(MEMORY[0x277D76350]);
    pressedTile_legacy2 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  }

  v8 = pressedTile_legacy2;
  pressedTile_legacy = [v6 initWithView:pressedTile_legacy2];

LABEL_7:

  return pressedTile_legacy;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)present
{
  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
    presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    v8 = [delegate2 presentationCoordinator:self shouldBeginLongPressPresentationWithContext:presentationContext];

    if (!v8)
    {
      return 0;
    }
  }

  v9 = MEMORY[0x277D143D8];
  presentationContext2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  [v9 logAndSendTileInteractionEventOfType:3 withPresentationContext:presentationContext2 presentationCoordinator:self];

  delegate3 = [(HUQuickControlPresentationCoordinator *)self delegate];
  LOBYTE(presentationContext2) = objc_opt_respondsToSelector();

  if (presentationContext2)
  {
    delegate4 = [(HUQuickControlPresentationCoordinator *)self delegate];
    presentationContext3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    [delegate4 presentationCoordinatorSendTileInteractionEventOfType:3 withPresentationContext:presentationContext3 presentationCoordinator:self];
  }

  v14 = 1;
  v15 = [(HUQuickControlPresentationCoordinator *)self _beginControlPresentationAnimated:1];
  return v14;
}

- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled
{
  if (cancelled && ![(HUQuickControlPresentationCoordinator *)self isQuickControlPresented])
  {
    singleTapGestureRecognizer = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];
    state = [singleTapGestureRecognizer state];

    if (state == 5)
    {
      activePressedItemContext = [(HUQuickControlPresentationCoordinator *)self activePressedItemContext];
      item = [activePressedItemContext item];
      [(HUQuickControlPresentationCoordinator *)self _updateOverrideAttributesWithScale:item forItem:1.0];
    }
  }
}

- (unint64_t)activationStyleForClickPresentationInteraction:(id)interaction
{
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)_createTransitionViewsForPresentation
{
  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {

    [(HUQuickControlPresentationCoordinator *)self __createLegacyTransitionViewsForPresentation];
  }

  else
  {

    [(HUQuickControlPresentationCoordinator *)self __createTransitionViewsForPresentation];
  }
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v8 = MEMORY[0x277D14CE8];
  sourceControllerCopy = sourceController;
  presentingControllerCopy = presentingController;
  controllerCopy = controller;
  if ([v8 shouldUseLegacyQuickControlPresentation])
  {
    [(HUQuickControlPresentationCoordinator *)self _legacyAnimationControllerForPresentedController:controllerCopy presentingController:presentingControllerCopy sourceController:sourceControllerCopy];
  }

  else
  {
    [(HUQuickControlPresentationCoordinator *)self _animationControllerForPresentedController:controllerCopy presentingController:presentingControllerCopy sourceController:sourceControllerCopy];
  }
  v12 = ;

  return v12;
}

- (void)_createTransitionViewsForDismissal
{
  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {

    [(HUQuickControlPresentationCoordinator *)self __createLegacyTransitionViewsForDismissal];
  }

  else
  {

    [(HUQuickControlPresentationCoordinator *)self __createTransitionViewsForDismissal];
  }
}

- (id)animationControllerForDismissedController:(id)controller
{
  v4 = MEMORY[0x277D14CE8];
  controllerCopy = controller;
  if ([v4 shouldUseLegacyQuickControlPresentation])
  {
    [(HUQuickControlPresentationCoordinator *)self _legacyAnimationControllerForDismissedController:controllerCopy];
  }

  else
  {
    [(HUQuickControlPresentationCoordinator *)self _animationControllerForDismissedController:controllerCopy];
  }
  v6 = ;

  return v6;
}

- (void)__createTransitionViewsForPresentation
{
  [(HUQuickControlPresentationCoordinator *)self removeAllTransitionSubviews];
  pressedTile = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  [pressedTile updateUIWithAnimation:0];

  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView = [cardViewController navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];
  [summaryView setHidden:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  cardViewController2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView2 = [cardViewController2 navigationBarTitleView];
  [navigationBarTitleView2 setBackgroundColor:clearColor];

  cardViewController3 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  view = [cardViewController3 view];
  [view setAlpha:0.0];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  cardNavigationController = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view2 = [cardNavigationController view];
  [view2 setBackgroundColor:clearColor2];

  if (([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] & 1) == 0)
  {
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlPresentationCoordinator *)self setTransitionBackgroundView:v15];

    pressedTile2 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    backgroundColor = [pressedTile2 backgroundColor];
    transitionBackgroundView = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [transitionBackgroundView setBackgroundColor:backgroundColor];

    transitionBackgroundView2 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [transitionBackgroundView2 setHidden:1];

    transitionBackgroundView3 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [transitionBackgroundView3 setAlpha:1.0];

    pressedTile3 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [pressedTile3 tileFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    transitionBackgroundView4 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [transitionBackgroundView4 setFrame:{v23, v25, v27, v29}];

    transitionBackgroundView5 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [transitionBackgroundView5 setNeedsLayout];

    cardNavigationController2 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view3 = [cardNavigationController2 view];
    transitionBackgroundView6 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [view3 addSubview:transitionBackgroundView6];

    pressedTile4 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    createBackgroundBlurView = [pressedTile4 createBackgroundBlurView];
    [(HUQuickControlPresentationCoordinator *)self setPressedTileBlurEffectView:createBackgroundBlurView];

    pressedTileBlurEffectView = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [pressedTileBlurEffectView setHidden:1];

    pressedTileBlurEffectView2 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [pressedTileBlurEffectView2 setAlpha:1.0];

    pressedTile5 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [pressedTile5 tileFrame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    pressedTileBlurEffectView3 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [pressedTileBlurEffectView3 setFrame:{v41, v43, v45, v47}];

    pressedTileBlurEffectView4 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [pressedTileBlurEffectView4 setNeedsLayout];

    cardNavigationController3 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view4 = [cardNavigationController3 view];
    pressedTileBlurEffectView5 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [view4 insertSubview:pressedTileBlurEffectView5 atIndex:0];
  }

  v53 = [MEMORY[0x277D75210] effectWithBlurRadius:0.0];
  v54 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v53];
  [(HUQuickControlPresentationCoordinator *)self setTransitionBlurView:v54];

  transitionBlurView = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
  [transitionBlurView setAutoresizingMask:18];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    transitionBlurView2 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [transitionBlurView2 setFrame:{v58, v60, v62, v64}];

    cardNavigationController4 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view5 = [cardNavigationController4 view];
    transitionBlurView3 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [view5 insertSubview:transitionBlurView3 atIndex:0];
  }

  else
  {
    presentingViewController = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
    view6 = [presentingViewController view];
    [view6 bounds];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    transitionBlurView4 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [transitionBlurView4 setFrame:{v72, v74, v76, v78}];

    cardNavigationController4 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
    view5 = [cardNavigationController4 tabBarController];
    transitionBlurView3 = [view5 view];
    transitionBlurView5 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [transitionBlurView3 addSubview:transitionBlurView5];
  }

  cardViewController4 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  closeButton = [cardViewController4 closeButton];
  [closeButton setAlpha:0.0];

  pressedTile6 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  baseIconViewConfiguration = [pressedTile6 baseIconViewConfiguration];

  v85 = objc_alloc_init(HUBaseIconView);
  [(HUQuickControlPresentationCoordinator *)self setTransitionBaseIconView:v85];

  transitionBaseIconView = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView setConfiguration:baseIconViewConfiguration];

  pressedTile7 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  [pressedTile7 iconViewTileFrame];
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  transitionBaseIconView2 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView2 setFrame:{v89, v91, v93, v95}];

  transitionBaseIconView3 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView3 setHidden:1];

  transitionBaseIconView4 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView4 setNeedsLayout];

  transitionBaseIconView5 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView5 layoutIfNeeded];

  cardNavigationController5 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view7 = [cardNavigationController5 view];
  transitionBaseIconView6 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [view7 addSubview:transitionBaseIconView6];

  pressedTile8 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  prefixString = [pressedTile8 prefixString];

  if (prefixString)
  {
    v105 = objc_opt_new();
    [(HUQuickControlPresentationCoordinator *)self setTransitionPrefixLabel:v105];

    pressedTile9 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    prefixString2 = [pressedTile9 prefixString];
    transitionPrefixLabel = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel setText:prefixString2];

    pressedTile10 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    prefixLabelFont = [pressedTile10 prefixLabelFont];
    transitionPrefixLabel2 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel2 setFont:prefixLabelFont];

    pressedTile11 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    prefixLabelTextColor = [pressedTile11 prefixLabelTextColor];
    transitionPrefixLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel3 setTextColor:prefixLabelTextColor];

    pressedTile12 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [pressedTile12 prefixLabelTileFrame];
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v123 = v122;
    transitionPrefixLabel4 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel4 setFrame:{v117, v119, v121, v123}];

    transitionPrefixLabel5 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel5 setNumberOfLines:1];

    transitionPrefixLabel6 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel6 setHidden:1];

    transitionPrefixLabel7 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel7 setAllowsDefaultTighteningForTruncation:1];

    transitionPrefixLabel8 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel8 setContentMode:1];

    transitionPrefixLabel9 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel9 setAlpha:1.0];

    transitionPrefixLabel10 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel10 setNeedsLayout];

    cardNavigationController6 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view8 = [cardNavigationController6 view];
    transitionPrefixLabel11 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [view8 addSubview:transitionPrefixLabel11];
  }

  pressedTile13 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  primaryString = [pressedTile13 primaryString];

  if (primaryString)
  {
    v136 = objc_opt_new();
    [(HUQuickControlPresentationCoordinator *)self setTransitionPrimaryLabel:v136];

    pressedTile14 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    primaryString2 = [pressedTile14 primaryString];
    transitionPrimaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel setText:primaryString2];

    pressedTile15 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    primaryLabelFont = [pressedTile15 primaryLabelFont];
    transitionPrimaryLabel2 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel2 setFont:primaryLabelFont];

    pressedTile16 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    primaryLabelTextColor = [pressedTile16 primaryLabelTextColor];
    transitionPrimaryLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel3 setTextColor:primaryLabelTextColor];

    pressedTile17 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [pressedTile17 primaryLabelTileFrame];
    v148 = v147;
    v150 = v149;
    v152 = v151;
    v154 = v153;
    transitionPrimaryLabel4 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel4 setFrame:{v148, v150, v152, v154}];

    transitionPrimaryLabel5 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel5 setNumberOfLines:0];

    transitionPrimaryLabel6 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel6 setHidden:1];

    transitionPrimaryLabel7 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel7 setAllowsDefaultTighteningForTruncation:1];

    transitionPrimaryLabel8 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel8 setContentMode:1];

    transitionPrimaryLabel9 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel9 setNeedsLayout];

    cardNavigationController7 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view9 = [cardNavigationController7 view];
    transitionPrimaryLabel10 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [view9 addSubview:transitionPrimaryLabel10];
  }

  pressedTile18 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  secondaryString = [pressedTile18 secondaryString];
  if (secondaryString)
  {
  }

  else
  {
    pressedTile19 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    secondaryAttributedString = [pressedTile19 secondaryAttributedString];

    if (!secondaryAttributedString)
    {
      return;
    }
  }

  v168 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabelVibrantEffectView:v168];

  v169 = objc_opt_new();
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabel:v169];

  pressedTile20 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  secondaryString2 = [pressedTile20 secondaryString];

  pressedTile21 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v173 = pressedTile21;
  if (secondaryString2)
  {
    secondaryString3 = [pressedTile21 secondaryString];
    transitionSecondaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel setText:secondaryString3];
  }

  else
  {
    secondaryString3 = [pressedTile21 secondaryAttributedString];
    transitionSecondaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel setAttributedText:secondaryString3];
  }

  pressedTile22 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  secondaryLabelFont = [pressedTile22 secondaryLabelFont];
  transitionSecondaryLabel2 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel2 setFont:secondaryLabelFont];

  pressedTile23 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  secondaryLabelTextColor = [pressedTile23 secondaryLabelTextColor];
  transitionSecondaryLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel3 setTextColor:secondaryLabelTextColor];

  transitionSecondaryLabelVibrantEffectView = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView setHidden:1];

  pressedTile24 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  [pressedTile24 secondaryLabelTileFrame];
  v185 = v184;
  v187 = v186;
  v189 = v188;
  v191 = v190;
  transitionSecondaryLabelVibrantEffectView2 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView2 setFrame:{v185, v187, v189, v191}];

  transitionSecondaryLabelVibrantEffectView3 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView3 bounds];
  v195 = v194;
  v197 = v196;
  v199 = v198;
  v201 = v200;
  transitionSecondaryLabel4 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel4 setFrame:{v195, v197, v199, v201}];

  transitionSecondaryLabel5 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel5 setHidden:1];

  transitionSecondaryLabel6 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel6 setNumberOfLines:0];

  transitionSecondaryLabel7 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel7 setAdjustsFontSizeToFitWidth:1];

  transitionSecondaryLabel8 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel8 setMinimumScaleFactor:0.8];

  transitionSecondaryLabel9 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel9 setAllowsDefaultTighteningForTruncation:1];

  transitionSecondaryLabel10 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel10 setContentMode:1];

  transitionSecondaryLabel11 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel11 sizeToFit];

  transitionSecondaryLabel12 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel12 setNeedsLayout];

  transitionSecondaryLabelVibrantEffectView4 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  contentView = [transitionSecondaryLabelVibrantEffectView4 contentView];
  transitionSecondaryLabel13 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [contentView addSubview:transitionSecondaryLabel13];

  transitionSecondaryLabelVibrantEffectView5 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView5 setNeedsLayout];

  cardNavigationController8 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view10 = [cardNavigationController8 view];
  transitionSecondaryLabelVibrantEffectView6 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [view10 addSubview:transitionSecondaryLabelVibrantEffectView6];
}

- (id)_animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  [(HUQuickControlPresentationCoordinator *)self _createTransitionViewsForPresentation:controller];
  v6 = objc_alloc_init(MEMORY[0x277D76230]);
  [v6 setIsReversed:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __122__HUQuickControlPresentationCoordinator__animationControllerForPresentedController_presentingController_sourceController___block_invoke;
  v9[3] = &unk_277DB8488;
  v9[4] = self;
  [v6 setNoninteractiveAnimations:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __122__HUQuickControlPresentationCoordinator__animationControllerForPresentedController_presentingController_sourceController___block_invoke_4;
  v8[3] = &unk_277DB8C28;
  v8[4] = self;
  [v6 setNoninteractiveCompletion:v8];
  [(HUQuickControlPresentationCoordinator *)self sourceFrameForAnimationController];
  [v6 setSourceFrame:?];

  return v6;
}

uint64_t __122__HUQuickControlPresentationCoordinator__animationControllerForPresentedController_presentingController_sourceController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __122__HUQuickControlPresentationCoordinator__animationControllerForPresentedController_presentingController_sourceController___block_invoke_2;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769473 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __122__HUQuickControlPresentationCoordinator__animationControllerForPresentedController_presentingController_sourceController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  v3 = [v2 navigationBarTitleView];
  v4 = [v3 summaryView];
  [v4 setHidden:1];

  v5 = [*(a1 + 32) cardNavigationController];
  v6 = [v5 navigationBar];
  [v6 setNeedsLayout];

  v7 = [*(a1 + 32) delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [*(a1 + 32) delegate];
    [v8 presentationCoordinatorWillBeginTransition:*(a1 + 32) presenting:1];
  }

  v9 = [*(a1 + 32) transitionBackgroundView];
  [v9 setHidden:0];

  v10 = [*(a1 + 32) transitionBackgroundView];
  [v10 setAlpha:0.0];

  v11 = [*(a1 + 32) cardNavigationController];
  v12 = [v11 view];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [*(a1 + 32) transitionBackgroundView];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [*(a1 + 32) cardViewController];
  v23 = [v22 view];
  v24 = [v23 backgroundColor];
  v25 = [*(a1 + 32) transitionBackgroundView];
  [v25 setBackgroundColor:v24];

  v26 = [*(a1 + 32) transitionBackgroundView];
  [v26 layoutIfNeeded];

  v27 = [*(a1 + 32) cardViewController];
  v28 = [v27 view];
  [v28 setAlpha:1.0];

  v29 = [*(a1 + 32) pressedTileBlurEffectView];
  [v29 setHidden:0];

  v30 = [*(a1 + 32) cardNavigationController];
  v31 = [v30 view];
  [v31 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [*(a1 + 32) pressedTileBlurEffectView];
  [v40 setFrame:{v33, v35, v37, v39}];

  v41 = [*(a1 + 32) pressedTileBlurEffectView];
  [v41 layoutIfNeeded];

  v42 = [MEMORY[0x277D75210] effectWithBlurRadius:20.0];
  v43 = [*(a1 + 32) transitionBlurView];
  [v43 setEffect:v42];

  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __122__HUQuickControlPresentationCoordinator__animationControllerForPresentedController_presentingController_sourceController___block_invoke_3;
  v134[3] = &unk_277DB8488;
  v134[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] animateKeyframesWithDuration:0 delay:v134 options:0 animations:0.5 completion:0.115];
  v44 = [*(a1 + 32) transitionBaseIconView];
  [v44 setHidden:0];

  [*(a1 + 32) baseIconFrameInNavigationBar];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = [*(a1 + 32) transitionBaseIconView];
  [v53 setFrame:{v46, v48, v50, v52}];

  v54 = [*(a1 + 32) transitionBaseIconView];
  [v54 startTransitionToTargetViewState:3];

  v55 = [*(a1 + 32) transitionBaseIconView];
  [v55 layoutIfNeeded];

  v56 = [*(a1 + 32) transitionPrefixLabel];
  [v56 setHidden:0];

  v57 = [*(a1 + 32) transitionPrefixLabel];
  [v57 setAlpha:0.0];

  v58 = [*(a1 + 32) cardViewController];
  v59 = [v58 navigationBarTitleView];
  v60 = [v59 summaryView];
  v61 = [v60 primaryLabel];
  v62 = [v61 font];
  v63 = [*(a1 + 32) transitionPrimaryLabel];
  [v63 setFont:v62];

  v64 = [*(a1 + 32) cardViewController];
  v65 = [v64 navigationBarTitleView];
  v66 = [v65 summaryView];
  v67 = [v66 primaryLabel];
  v68 = [v67 text];
  v69 = [*(a1 + 32) transitionPrimaryLabel];
  [v69 setText:v68];

  v70 = [*(a1 + 32) cardViewController];
  v71 = [v70 navigationBarTitleView];
  v72 = [v71 summaryView];
  v73 = [v72 primaryLabel];
  v74 = [v73 textColor];
  v75 = [*(a1 + 32) transitionPrimaryLabel];
  [v75 setTextColor:v74];

  v76 = [*(a1 + 32) transitionPrimaryLabel];
  [v76 setHidden:0];

  [*(a1 + 32) primaryLabelFrameInNavigationBar];
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = [*(a1 + 32) transitionPrimaryLabel];
  [v85 setFrame:{v78, v80, v82, v84}];

  v86 = [*(a1 + 32) transitionPrimaryLabel];
  [v86 layoutIfNeeded];

  v87 = [*(a1 + 32) cardViewController];
  v88 = [v87 navigationBarTitleView];
  v89 = [v88 summaryView];
  v90 = [v89 secondaryLabel];
  v91 = [v90 font];
  v92 = [*(a1 + 32) transitionSecondaryLabel];
  [v92 setFont:v91];

  v93 = [*(a1 + 32) cardViewController];
  v94 = [v93 navigationBarTitleView];
  v95 = [v94 summaryView];
  v96 = [v95 secondaryLabel];
  v97 = [v96 textColor];
  v98 = [*(a1 + 32) transitionSecondaryLabel];
  [v98 setTextColor:v97];

  v99 = [*(a1 + 32) cardViewController];
  v100 = [v99 navigationBarTitleView];
  v101 = [v100 summaryView];
  v102 = [v101 secondaryLabel];
  v103 = [v102 text];

  v104 = [*(a1 + 32) cardViewController];
  v105 = [v104 navigationBarTitleView];
  v106 = [v105 summaryView];
  v107 = [v106 secondaryLabel];
  v108 = v107;
  if (v103)
  {
    v109 = [v107 text];
    v110 = [*(a1 + 32) transitionSecondaryLabel];
    [v110 setText:v109];
  }

  else
  {
    v109 = [v107 attributedText];
    v110 = [*(a1 + 32) transitionSecondaryLabel];
    [v110 setAttributedText:v109];
  }

  v111 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v111 setHidden:0];

  [*(a1 + 32) secondaryLabelFrameInNavigationBar];
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v120 setFrame:{v113, v115, v117, v119}];

  v121 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v121 layoutIfNeeded];

  v122 = [*(a1 + 32) transitionSecondaryLabel];
  [v122 setHidden:0];

  v123 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v123 bounds];
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v132 = [*(a1 + 32) transitionSecondaryLabel];
  [v132 setFrame:{v125, v127, v129, v131}];

  v133 = [*(a1 + 32) transitionSecondaryLabel];
  [v133 layoutIfNeeded];
}

void __122__HUQuickControlPresentationCoordinator__animationControllerForPresentedController_presentingController_sourceController___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  v1 = [v2 closeButton];
  [v1 setAlpha:1.0];
}

uint64_t __122__HUQuickControlPresentationCoordinator__animationControllerForPresentedController_presentingController_sourceController___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  v3 = [v2 navigationBarTitleView];
  v4 = [v3 summaryView];
  [v4 setHidden:0];

  v5 = *(a1 + 32);

  return [v5 removeAllTransitionSubviews];
}

- (void)__createTransitionViewsForDismissal
{
  [(HUQuickControlPresentationCoordinator *)self removeAllTransitionSubviews];
  pressedTile = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  [pressedTile updateUIWithAnimation:0];

  pressedTile2 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  [pressedTile2 setHidden:1];

  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionBackgroundView:v5];

  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  backgroundColor = [cardViewController backgroundColor];
  transitionBackgroundView = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [transitionBackgroundView setBackgroundColor:backgroundColor];

  transitionBackgroundView2 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [transitionBackgroundView2 setHidden:1];

  transitionBackgroundView3 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [transitionBackgroundView3 setAlpha:0.0];

  cardNavigationController = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view = [cardNavigationController view];
  [view frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  transitionBackgroundView4 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [transitionBackgroundView4 setFrame:{v14, v16, v18, v20}];

  transitionBackgroundView5 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [transitionBackgroundView5 setNeedsLayout];

  cardNavigationController2 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view2 = [cardNavigationController2 view];
  transitionBackgroundView6 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [view2 addSubview:transitionBackgroundView6];

  pressedTile3 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  createBackgroundBlurView = [pressedTile3 createBackgroundBlurView];
  [(HUQuickControlPresentationCoordinator *)self setPressedTileBlurEffectView:createBackgroundBlurView];

  pressedTileBlurEffectView = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [pressedTileBlurEffectView setHidden:1];

  pressedTileBlurEffectView2 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [pressedTileBlurEffectView2 setAlpha:1.0];

  cardNavigationController3 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view3 = [cardNavigationController3 view];
  [view3 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  pressedTileBlurEffectView3 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [pressedTileBlurEffectView3 setFrame:{v33, v35, v37, v39}];

  pressedTileBlurEffectView4 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [pressedTileBlurEffectView4 setNeedsLayout];

  cardNavigationController4 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view4 = [cardNavigationController4 view];
  pressedTileBlurEffectView5 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [view4 insertSubview:pressedTileBlurEffectView5 atIndex:0];

  pressedTile4 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  baseIconViewConfiguration = [pressedTile4 baseIconViewConfiguration];

  appearance = [baseIconViewConfiguration appearance];
  [baseIconViewConfiguration setAppearance:3];
  v48 = objc_alloc_init(HUBaseIconView);
  [(HUQuickControlPresentationCoordinator *)self setTransitionBaseIconView:v48];

  transitionBaseIconView = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView setConfiguration:baseIconViewConfiguration];

  transitionBaseIconView2 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView2 prepareForTransitionToTargetViewState:appearance];

  [(HUQuickControlPresentationCoordinator *)self baseIconFrameInNavigationBar];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  transitionBaseIconView3 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView3 setFrame:{v52, v54, v56, v58}];

  transitionBaseIconView4 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView4 setHidden:1];

  transitionBaseIconView5 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView5 setNeedsLayout];

  cardNavigationController5 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view5 = [cardNavigationController5 view];
  transitionBaseIconView6 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [view5 addSubview:transitionBaseIconView6];

  pressedTile5 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  prefixString = [pressedTile5 prefixString];

  if (prefixString)
  {
    v67 = objc_opt_new();
    [(HUQuickControlPresentationCoordinator *)self setTransitionPrefixLabel:v67];

    pressedTile6 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    prefixString2 = [pressedTile6 prefixString];
    transitionPrefixLabel = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel setText:prefixString2];

    pressedTile7 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    prefixLabelFont = [pressedTile7 prefixLabelFont];
    transitionPrefixLabel2 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel2 setFont:prefixLabelFont];

    pressedTile8 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    prefixLabelTextColor = [pressedTile8 prefixLabelTextColor];
    transitionPrefixLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel3 setTextColor:prefixLabelTextColor];

    pressedTile9 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [pressedTile9 prefixLabelTileFrame];
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    transitionPrefixLabel4 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel4 setFrame:{v79, v81, v83, v85}];

    transitionPrefixLabel5 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel5 setNumberOfLines:1];

    transitionPrefixLabel6 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel6 setHidden:1];

    transitionPrefixLabel7 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel7 setContentMode:1];

    transitionPrefixLabel8 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel8 setAlpha:0.0];

    transitionPrefixLabel9 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [transitionPrefixLabel9 setNeedsLayout];

    cardNavigationController6 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view6 = [cardNavigationController6 view];
    transitionPrefixLabel10 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [view6 addSubview:transitionPrefixLabel10];
  }

  pressedTile10 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  primaryString = [pressedTile10 primaryString];

  if (primaryString)
  {
    v97 = objc_opt_new();
    [(HUQuickControlPresentationCoordinator *)self setTransitionPrimaryLabel:v97];

    cardViewController2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    navigationBarTitleView = [cardViewController2 navigationBarTitleView];
    summaryView = [navigationBarTitleView summaryView];
    primaryLabel = [summaryView primaryLabel];
    font = [primaryLabel font];
    transitionPrimaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel setFont:font];

    cardViewController3 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    navigationBarTitleView2 = [cardViewController3 navigationBarTitleView];
    summaryView2 = [navigationBarTitleView2 summaryView];
    primaryLabel2 = [summaryView2 primaryLabel];
    text = [primaryLabel2 text];
    transitionPrimaryLabel2 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel2 setText:text];

    cardViewController4 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    navigationBarTitleView3 = [cardViewController4 navigationBarTitleView];
    summaryView3 = [navigationBarTitleView3 summaryView];
    primaryLabel3 = [summaryView3 primaryLabel];
    textColor = [primaryLabel3 textColor];
    transitionPrimaryLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel3 setTextColor:textColor];

    transitionPrimaryLabel4 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel4 setNumberOfLines:0];

    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInNavigationBar];
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    transitionPrimaryLabel5 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel5 setFrame:{v118, v120, v122, v124}];

    transitionPrimaryLabel6 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel6 setHidden:1];

    transitionPrimaryLabel7 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel7 setContentMode:1];

    transitionPrimaryLabel8 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel8 sizeToFit];

    transitionPrimaryLabel9 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel9 setNeedsLayout];

    cardNavigationController7 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view7 = [cardNavigationController7 view];
    transitionPrimaryLabel10 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [view7 addSubview:transitionPrimaryLabel10];
  }

  pressedTile11 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  secondaryString = [pressedTile11 secondaryString];
  if (secondaryString)
  {
  }

  else
  {
    pressedTile12 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    secondaryAttributedString = [pressedTile12 secondaryAttributedString];

    if (!secondaryAttributedString)
    {
      return;
    }
  }

  v137 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabelVibrantEffectView:v137];

  v138 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabel:v138];

  cardViewController5 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView4 = [cardViewController5 navigationBarTitleView];
  summaryView4 = [navigationBarTitleView4 summaryView];
  secondaryLabel = [summaryView4 secondaryLabel];
  font2 = [secondaryLabel font];
  transitionSecondaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel setFont:font2];

  cardViewController6 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView5 = [cardViewController6 navigationBarTitleView];
  summaryView5 = [navigationBarTitleView5 summaryView];
  secondaryLabel2 = [summaryView5 secondaryLabel];
  textColor2 = [secondaryLabel2 textColor];
  transitionSecondaryLabel2 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel2 setTextColor:textColor2];

  cardViewController7 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView6 = [cardViewController7 navigationBarTitleView];
  summaryView6 = [navigationBarTitleView6 summaryView];
  secondaryLabel3 = [summaryView6 secondaryLabel];
  text2 = [secondaryLabel3 text];

  cardViewController8 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView7 = [cardViewController8 navigationBarTitleView];
  summaryView7 = [navigationBarTitleView7 summaryView];
  secondaryLabel4 = [summaryView7 secondaryLabel];
  v160 = secondaryLabel4;
  if (text2)
  {
    text3 = [secondaryLabel4 text];
    transitionSecondaryLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel3 setText:text3];
  }

  else
  {
    text3 = [secondaryLabel4 attributedText];
    transitionSecondaryLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel3 setAttributedText:text3];
  }

  transitionSecondaryLabelVibrantEffectView = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView setHidden:1];

  [(HUQuickControlPresentationCoordinator *)self secondaryLabelFrameInNavigationBar];
  v165 = v164;
  v167 = v166;
  v169 = v168;
  v171 = v170;
  transitionSecondaryLabelVibrantEffectView2 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView2 setFrame:{v165, v167, v169, v171}];

  transitionSecondaryLabel4 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel4 setNumberOfLines:1];

  transitionSecondaryLabel5 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel5 setAllowsDefaultTighteningForTruncation:1];

  transitionSecondaryLabel6 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel6 setAdjustsFontSizeToFitWidth:1];

  +[HUGridServiceCellTextView minimumDescriptionScaleFactor];
  v177 = v176;
  transitionSecondaryLabel7 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel7 setMinimumScaleFactor:v177];

  transitionSecondaryLabel8 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel8 sizeToFit];

  transitionSecondaryLabelVibrantEffectView3 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView3 bounds];
  v182 = v181;
  v184 = v183;
  v186 = v185;
  v188 = v187;
  transitionSecondaryLabel9 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel9 setFrame:{v182, v184, v186, v188}];

  transitionSecondaryLabel10 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel10 setNeedsLayout];

  transitionSecondaryLabelVibrantEffectView4 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  contentView = [transitionSecondaryLabelVibrantEffectView4 contentView];
  transitionSecondaryLabel11 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [contentView addSubview:transitionSecondaryLabel11];

  transitionSecondaryLabelVibrantEffectView5 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView5 setNeedsLayout];

  cardNavigationController8 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view8 = [cardNavigationController8 view];
  transitionSecondaryLabelVibrantEffectView6 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [view8 addSubview:transitionSecondaryLabelVibrantEffectView6];
}

- (id)_animationControllerForDismissedController:(id)controller
{
  cardNavigationController = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];
  firstObject = [viewControllers firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = 0;
  }

  else
  {
    [(HUQuickControlPresentationCoordinator *)self _createTransitionViewsForDismissal];
    v8 = objc_alloc_init(MEMORY[0x277D76230]);
    [v8 setIsReversed:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __84__HUQuickControlPresentationCoordinator__animationControllerForDismissedController___block_invoke;
    v11[3] = &unk_277DB8488;
    v11[4] = self;
    [v8 setNoninteractiveAnimations:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__HUQuickControlPresentationCoordinator__animationControllerForDismissedController___block_invoke_4;
    v10[3] = &unk_277DB8C28;
    v10[4] = self;
    [v8 setNoninteractiveCompletion:v10];
    [(HUQuickControlPresentationCoordinator *)self sourceFrameForAnimationController];
    [v8 setSourceFrame:?];
  }

  return v8;
}

uint64_t __84__HUQuickControlPresentationCoordinator__animationControllerForDismissedController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__HUQuickControlPresentationCoordinator__animationControllerForDismissedController___block_invoke_2;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769473 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __84__HUQuickControlPresentationCoordinator__animationControllerForDismissedController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cardNavigationController];
  v3 = [v2 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = *(a1 + 32);
  if (isKindOfClass)
  {
    v6 = [v5 cardViewController];
    v7 = [v6 scrollView];
    [v7 setShowsVerticalScrollIndicator:0];

    v8 = [*(a1 + 32) cardViewController];
    v9 = [v8 navigationBarTitleView];
    v10 = [v9 summaryView];
    [v10 setHidden:1];

    v11 = [*(a1 + 32) cardViewController];
    v12 = [v11 quickControlViewController];
    v13 = [v12 controlContainerView];
    [v13 setHidden:1];
  }

  else
  {
    v14 = [v5 cardNavigationController];
    v15 = [v14 topViewController];
    v16 = [v15 view];
    [v16 setHidden:1];

    v11 = [*(a1 + 32) cardNavigationController];
    v12 = [v11 navigationBar];
    [v12 setHidden:1];
  }

  v17 = [*(a1 + 32) delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [*(a1 + 32) delegate];
    [v19 presentationCoordinatorWillBeginTransition:*(a1 + 32) presenting:0];
  }

  v20 = [*(a1 + 32) cardViewController];
  v21 = [v20 view];
  [v21 setAlpha:0.0];

  v22 = [*(a1 + 32) cardViewController];
  v23 = [v22 navigationItem];
  [v23 _setManualScrollEdgeAppearanceProgress:0.0];

  v24 = [MEMORY[0x277D75348] clearColor];
  v25 = [*(a1 + 32) cardViewController];
  [v25 setBackgroundColor:v24];

  v26 = [MEMORY[0x277D75348] clearColor];
  v27 = [*(a1 + 32) cardNavigationController];
  v28 = [v27 view];
  [v28 setBackgroundColor:v26];

  v29 = [*(a1 + 32) transitionBackgroundView];
  [v29 setHidden:0];

  v30 = [*(a1 + 32) pressedTile];
  [v30 tileFrame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [*(a1 + 32) transitionBackgroundView];
  [v39 setFrame:{v32, v34, v36, v38}];

  v40 = [*(a1 + 32) transitionBackgroundView];
  [v40 setAlpha:1.0];

  v41 = [*(a1 + 32) pressedTile];
  v42 = [v41 backgroundColor];
  v43 = [*(a1 + 32) transitionBackgroundView];
  [v43 setBackgroundColor:v42];

  v44 = [*(a1 + 32) transitionBackgroundView];
  [v44 layoutIfNeeded];

  v45 = [*(a1 + 32) pressedTileBlurEffectView];
  [v45 setHidden:0];

  v46 = [*(a1 + 32) pressedTile];
  [v46 tileFrame];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = [*(a1 + 32) pressedTileBlurEffectView];
  [v55 setFrame:{v48, v50, v52, v54}];

  v56 = [*(a1 + 32) pressedTileBlurEffectView];
  [v56 setNeedsLayout];

  v57 = [MEMORY[0x277D75210] effectWithBlurRadius:0.0];
  v58 = [*(a1 + 32) transitionBlurView];
  [v58 setEffect:v57];

  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = __84__HUQuickControlPresentationCoordinator__animationControllerForDismissedController___block_invoke_3;
  v137[3] = &unk_277DB8488;
  v137[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] animateKeyframesWithDuration:0 delay:v137 options:0 animations:0.1 completion:0.0];
  v59 = [*(a1 + 32) transitionBaseIconView];
  [v59 setHidden:0];

  v60 = [*(a1 + 32) pressedTile];
  v61 = [v60 baseIconViewConfiguration];

  v62 = [*(a1 + 32) transitionBaseIconView];
  [v62 startTransitionToTargetViewState:{objc_msgSend(v61, "appearance")}];

  v63 = [*(a1 + 32) pressedTile];
  [v63 iconViewTileFrame];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = [*(a1 + 32) transitionBaseIconView];
  [v72 setFrame:{v65, v67, v69, v71}];

  v73 = [*(a1 + 32) transitionBaseIconView];
  [v73 layoutIfNeeded];

  v74 = [*(a1 + 32) transitionPrefixLabel];
  [v74 setHidden:0];

  v75 = [*(a1 + 32) transitionPrefixLabel];
  [v75 setAlpha:1.0];

  v76 = [*(a1 + 32) pressedTile];
  v77 = [v76 primaryLabelFont];
  v78 = [*(a1 + 32) transitionPrimaryLabel];
  [v78 setFont:v77];

  v79 = [*(a1 + 32) pressedTile];
  v80 = [v79 primaryLabelTextColor];
  v81 = [*(a1 + 32) transitionPrimaryLabel];
  [v81 setTextColor:v80];

  v82 = [*(a1 + 32) pressedTile];
  v83 = [v82 primaryString];
  v84 = [*(a1 + 32) transitionPrimaryLabel];
  [v84 setText:v83];

  v85 = [*(a1 + 32) transitionPrimaryLabel];
  [v85 setHidden:0];

  v86 = [*(a1 + 32) pressedTile];
  [v86 primaryLabelTileFrame];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = [*(a1 + 32) transitionPrimaryLabel];
  [v95 setFrame:{v88, v90, v92, v94}];

  v96 = [*(a1 + 32) transitionPrimaryLabel];
  [v96 layoutIfNeeded];

  v97 = [*(a1 + 32) pressedTile];
  v98 = [v97 secondaryString];
  if (v98)
  {
  }

  else
  {
    v99 = [*(a1 + 32) pressedTile];
    v100 = [v99 secondaryAttributedString];

    if (!v100)
    {
      return;
    }
  }

  v101 = [*(a1 + 32) pressedTile];
  v102 = [v101 secondaryLabelFont];
  v103 = [*(a1 + 32) transitionSecondaryLabel];
  [v103 setFont:v102];

  v104 = [*(a1 + 32) pressedTile];
  v105 = [v104 secondaryLabelTextColor];
  v106 = [*(a1 + 32) transitionSecondaryLabel];
  [v106 setTextColor:v105];

  v107 = [*(a1 + 32) pressedTile];
  v108 = [v107 secondaryString];

  v109 = [*(a1 + 32) pressedTile];
  v110 = v109;
  if (v108)
  {
    v111 = [v109 secondaryString];
    v112 = [*(a1 + 32) transitionSecondaryLabel];
    [v112 setText:v111];
  }

  else
  {
    v111 = [v109 secondaryAttributedString];
    v112 = [*(a1 + 32) transitionSecondaryLabel];
    [v112 setAttributedText:v111];
  }

  v113 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v113 setHidden:0];

  v114 = [*(a1 + 32) pressedTile];
  [v114 secondaryLabelTileFrame];
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v123 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v123 setFrame:{v116, v118, v120, v122}];

  v124 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v124 layoutIfNeeded];

  v125 = [*(a1 + 32) transitionSecondaryLabel];
  [v125 setHidden:0];

  v126 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v126 bounds];
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v135 = [*(a1 + 32) transitionSecondaryLabel];
  [v135 setFrame:{v128, v130, v132, v134}];

  v136 = [*(a1 + 32) transitionSecondaryLabel];
  [v136 layoutIfNeeded];
}

void __84__HUQuickControlPresentationCoordinator__animationControllerForDismissedController___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  v1 = [v2 closeButton];
  [v1 setAlpha:0.0];
}

void __84__HUQuickControlPresentationCoordinator__animationControllerForDismissedController___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) pressedTile];
  [v2 setHidden:0];

  [*(a1 + 32) setPressedTile:0];
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 presentationCoordinatorWillEndTransition:*(a1 + 32) presenting:0];
  }

  [*(a1 + 32) removeAllTransitionSubviews];
  [*(a1 + 32) _restoreOriginalTile];
  v6 = [*(a1 + 32) transitionBlurView];
  [v6 removeFromSuperview];
}

- (void)__createLegacyTransitionViewsForPresentation
{
  [(HUQuickControlPresentationCoordinator *)self removeAllTransitionSubviews];
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  [pressedTile_legacy updateUIWithAnimation:0];

  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView = [cardViewController navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];
  [summaryView setHidden:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  cardViewController2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView2 = [cardViewController2 navigationBarTitleView];
  [navigationBarTitleView2 setBackgroundColor:clearColor];

  if ([(HUQuickControlPresentationCoordinator *)self isTileOff])
  {
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      if ([MEMORY[0x277D14670] isSpringBoard])
      {
        [MEMORY[0x277CFC960] controlCenterModuleBackgroundMaterial];
      }

      else
      {
        [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      }
      v10 = ;
      [(HUQuickControlPresentationCoordinator *)self setPressedTileBlurEffectView:v10];
    }

    else
    {
      v10 = [MEMORY[0x277D75210] effectWithStyle:1202];
      v11 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v10];
      [(HUQuickControlPresentationCoordinator *)self setPressedTileBlurEffectView:v11];
    }

    pressedTileBlurEffectView = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [pressedTileBlurEffectView setHidden:1];

    pressedTileBlurEffectView2 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [pressedTileBlurEffectView2 setAlpha:1.0];

    cardNavigationController = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view = [cardNavigationController view];
    [view frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    pressedTileBlurEffectView3 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [pressedTileBlurEffectView3 setFrame:{v17, v19, v21, v23}];

    pressedTileBlurEffectView4 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [pressedTileBlurEffectView4 setNeedsLayout];

    cardNavigationController2 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view2 = [cardNavigationController2 view];
    pressedTileBlurEffectView5 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [view2 insertSubview:pressedTileBlurEffectView5 atIndex:0];

    cardViewController3 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    view3 = [cardViewController3 view];
    [view3 setAlpha:0.0];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    cardNavigationController3 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view4 = [cardNavigationController3 view];
    [view4 setBackgroundColor:clearColor2];
  }

  v34 = [MEMORY[0x277D75210] effectWithBlurRadius:0.0];
  v35 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v34];
  [(HUQuickControlPresentationCoordinator *)self setTransitionBlurView:v35];

  transitionBlurView = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
  [transitionBlurView setAutoresizingMask:18];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    transitionBlurView2 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [transitionBlurView2 setFrame:{v39, v41, v43, v45}];

    cardNavigationController4 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view5 = [cardNavigationController4 view];
    transitionBlurView3 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [view5 insertSubview:transitionBlurView3 atIndex:0];
  }

  else
  {
    presentingViewController = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
    view6 = [presentingViewController view];
    [view6 bounds];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    transitionBlurView4 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [transitionBlurView4 setFrame:{v53, v55, v57, v59}];

    cardNavigationController4 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
    view5 = [cardNavigationController4 tabBarController];
    transitionBlurView3 = [view5 view];
    transitionBlurView5 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [transitionBlurView3 addSubview:transitionBlurView5];
  }

  cardViewController4 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  closeButton = [cardViewController4 closeButton];
  [closeButton setAlpha:0.0];

  v64 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionIconView:v64];

  transitionIconView = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  v66 = 1;
  [transitionIconView setContentMode:1];

  pressedTile_legacy2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  item = [pressedTile_legacy2 item];
  latestResults = [item latestResults];
  v70 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  if ([(HUQuickControlPresentationCoordinator *)self isTileOff])
  {
    if ([(HUQuickControlPresentationCoordinator *)self isActionSetTile])
    {
      v66 = 1;
    }

    else
    {
      v66 = 3;
    }
  }

  transitionIconView2 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView2 updateWithIconDescriptor:v70 displayStyle:v66 animated:0];

  if ([(HUQuickControlPresentationCoordinator *)self isActionSetTile])
  {
    iconSizeInActionSetTile = [(HUQuickControlPresentationCoordinator *)self iconSizeInActionSetTile];
    transitionIconView3 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
    [transitionIconView3 setIconSize:iconSizeInActionSetTile];

    [(HUQuickControlPresentationCoordinator *)self iconFrameInActionSetTile];
  }

  else
  {
    iconSizeInTile = [(HUQuickControlPresentationCoordinator *)self iconSizeInTile];
    transitionIconView4 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
    [transitionIconView4 setIconSize:iconSizeInTile];

    [(HUQuickControlPresentationCoordinator *)self iconFrameInTile];
  }

  v80 = v74;
  v81 = v75;
  v82 = v76;
  v83 = v77;
  transitionIconView5 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView5 setFrame:{v80, v81, v82, v83}];

  transitionIconView6 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView6 setHidden:1];

  cardNavigationController5 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view7 = [cardNavigationController5 view];
  transitionIconView7 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [view7 addSubview:transitionIconView7];

  v89 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionIconViewVibrant:v89];

  transitionIconViewVibrant = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant setContentMode:1];

  if ([(HUQuickControlPresentationCoordinator *)self isActionSetTile])
  {
    iconSizeInActionSetTile2 = [(HUQuickControlPresentationCoordinator *)self iconSizeInActionSetTile];
    transitionIconViewVibrant2 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [transitionIconViewVibrant2 setIconSize:iconSizeInActionSetTile2];

    [(HUQuickControlPresentationCoordinator *)self iconFrameInActionSetTile];
  }

  else
  {
    iconSizeInTile2 = [(HUQuickControlPresentationCoordinator *)self iconSizeInTile];
    transitionIconViewVibrant3 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [transitionIconViewVibrant3 setIconSize:iconSizeInTile2];

    [(HUQuickControlPresentationCoordinator *)self iconFrameInTile];
  }

  v99 = v93;
  v100 = v94;
  v101 = v95;
  v102 = v96;
  transitionIconViewVibrant4 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant4 setFrame:{v99, v100, v101, v102}];

  transitionIconViewVibrant5 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant5 setHidden:1];

  cardViewController5 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView3 = [cardViewController5 navigationBarTitleView];
  summaryView2 = [navigationBarTitleView3 summaryView];
  iconView = [summaryView2 iconView];
  tintColor = [iconView tintColor];
  transitionIconView8 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView8 setTintColor:tintColor];

  cardViewController6 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView4 = [cardViewController6 navigationBarTitleView];
  summaryView3 = [navigationBarTitleView4 summaryView];
  iconView2 = [summaryView3 iconView];
  tintColor2 = [iconView2 tintColor];
  transitionIconViewVibrant6 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant6 setTintColor:tintColor2];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    transitionIconViewVibrant7 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [transitionIconViewVibrant7 setVibrancyEffect:controlCenterSecondaryVibrancyEffect];
  }

  else
  {
    controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75210] effectWithStyle:7];
    transitionIconViewVibrant7 = [MEMORY[0x277D75D00] effectForBlurEffect:controlCenterSecondaryVibrancyEffect style:4];
    transitionIconViewVibrant8 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [transitionIconViewVibrant8 setVibrancyEffect:transitionIconViewVibrant7];
  }

  transitionIconViewVibrant9 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant9 updateWithIconDescriptor:v70 displayStyle:2 animated:0];

  transitionIconView9 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView9 layoutIfNeeded];

  transitionIconViewVibrant10 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant10 layoutIfNeeded];

  cardNavigationController6 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view8 = [cardNavigationController6 view];
  transitionIconViewVibrant11 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  transitionIconView10 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [view8 insertSubview:transitionIconViewVibrant11 above:transitionIconView10];

  v127 = objc_opt_new();
  [(HUQuickControlPresentationCoordinator *)self setTransitionPrimaryLabel:v127];

  LODWORD(cardNavigationController6) = [(HUQuickControlPresentationCoordinator *)self isActionSetTile];
  pressedTile_legacy3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  transitionPrimaryLabel6 = pressedTile_legacy3;
  if (cardNavigationController6)
  {
    titleAndDescriptionView = [pressedTile_legacy3 titleAndDescriptionView];
    titleLabel = [titleAndDescriptionView titleLabel];
    font = [titleLabel font];
    transitionPrimaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel setFont:font];

    titleAndDescriptionView2 = [transitionPrimaryLabel6 titleAndDescriptionView];
    titleLabel2 = [titleAndDescriptionView2 titleLabel];
    text = [titleLabel2 text];
    transitionPrimaryLabel2 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel2 setText:text];

    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInActionSetTile];
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v145 = v144;
    transitionPrimaryLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel3 setFrame:{v139, v141, v143, v145}];
  }

  else
  {
    serviceTextView = [pressedTile_legacy3 serviceTextView];
    font2 = [serviceTextView font];
    transitionPrimaryLabel4 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel4 setFont:font2];

    pressedTile_legacy4 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    item2 = [pressedTile_legacy4 item];
    latestResults2 = [item2 latestResults];
    v153 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    transitionPrimaryLabel5 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel5 setText:v153];

    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInTile];
    v156 = v155;
    v158 = v157;
    v160 = v159;
    v162 = v161;
    transitionPrimaryLabel6 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [transitionPrimaryLabel6 setFrame:{v156, v158, v160, v162}];
  }

  transitionPrimaryLabel7 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
  [transitionPrimaryLabel7 setHidden:1];

  transitionPrimaryLabel8 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
  [transitionPrimaryLabel8 setNumberOfLines:2];

  transitionPrimaryLabel9 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
  [transitionPrimaryLabel9 setContentMode:1];

  cardNavigationController7 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view9 = [cardNavigationController7 view];
  transitionPrimaryLabel10 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
  [view9 addSubview:transitionPrimaryLabel10];

  v169 = objc_opt_new();
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabel:v169];

  LODWORD(view9) = [(HUQuickControlPresentationCoordinator *)self isActionSetTile];
  pressedTile_legacy5 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  transitionSecondaryLabel8 = pressedTile_legacy5;
  if (view9)
  {
    titleAndDescriptionView3 = [pressedTile_legacy5 titleAndDescriptionView];
    descriptionLabel = [titleAndDescriptionView3 descriptionLabel];
    font3 = [descriptionLabel font];
    transitionSecondaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel setFont:font3];

    titleAndDescriptionView4 = [transitionSecondaryLabel8 titleAndDescriptionView];
    descriptionLabel2 = [titleAndDescriptionView4 descriptionLabel];
    text2 = [descriptionLabel2 text];
    transitionSecondaryLabel2 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel2 setText:text2];

    titleAndDescriptionView5 = [transitionSecondaryLabel8 titleAndDescriptionView];
    descriptionLabel3 = [titleAndDescriptionView5 descriptionLabel];
    textColor = [descriptionLabel3 textColor];
    transitionSecondaryLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel3 setTextColor:textColor];

    [(HUQuickControlPresentationCoordinator *)self secondaryLabelFrameInActionSetTile];
    v185 = v184;
    v187 = v186;
    v189 = v188;
    v191 = v190;
    transitionSecondaryLabel4 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel4 setFrame:{v185, v187, v189, v191}];
  }

  else
  {
    coloredDescriptionLabel = [pressedTile_legacy5 coloredDescriptionLabel];
    font4 = [coloredDescriptionLabel font];
    transitionSecondaryLabel5 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel5 setFont:font4];

    pressedTile_legacy6 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    coloredDescriptionLabel2 = [pressedTile_legacy6 coloredDescriptionLabel];
    text3 = [coloredDescriptionLabel2 text];
    transitionSecondaryLabel6 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel6 setText:text3];

    pressedTile_legacy7 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    coloredDescriptionLabel3 = [pressedTile_legacy7 coloredDescriptionLabel];
    textColor2 = [coloredDescriptionLabel3 textColor];
    transitionSecondaryLabel7 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel7 setTextColor:textColor2];

    [(HUQuickControlPresentationCoordinator *)self secondaryLabelFrameInTile];
    v205 = v204;
    v207 = v206;
    v209 = v208;
    v211 = v210;
    transitionSecondaryLabel8 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel8 setFrame:{v205, v207, v209, v211}];
  }

  transitionSecondaryLabel9 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel9 setHidden:1];

  transitionSecondaryLabel10 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel10 setNumberOfLines:0];

  transitionSecondaryLabel11 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel11 setContentMode:1];

  transitionSecondaryLabel12 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel12 sizeToFit];

  v216 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabelVibrantEffectView:v216];

  if ([(HUQuickControlPresentationCoordinator *)self isTileOff])
  {
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      controlCenterSecondaryVibrancyEffect2 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
      transitionSecondaryLabelVibrantEffectView = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
      [transitionSecondaryLabelVibrantEffectView setEffect:controlCenterSecondaryVibrancyEffect2];
    }

    else
    {
      controlCenterSecondaryVibrancyEffect2 = [MEMORY[0x277D75210] effectWithStyle:7];
      transitionSecondaryLabelVibrantEffectView = [MEMORY[0x277D75D00] effectForBlurEffect:controlCenterSecondaryVibrancyEffect2 style:2];
      transitionSecondaryLabelVibrantEffectView2 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
      [transitionSecondaryLabelVibrantEffectView2 setEffect:transitionSecondaryLabelVibrantEffectView];
    }
  }

  transitionSecondaryLabelVibrantEffectView3 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView3 setHidden:1];

  [(HUQuickControlPresentationCoordinator *)self secondaryLabelFrameInTile];
  v222 = v221;
  v224 = v223;
  v226 = v225;
  v228 = v227;
  transitionSecondaryLabelVibrantEffectView4 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView4 setFrame:{v222, v224, v226, v228}];

  transitionSecondaryLabelVibrantEffectView5 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView5 bounds];
  v232 = v231;
  v234 = v233;
  v236 = v235;
  v238 = v237;
  transitionSecondaryLabel13 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel13 setFrame:{v232, v234, v236, v238}];

  transitionSecondaryLabel14 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel14 setNeedsLayout];

  transitionSecondaryLabelVibrantEffectView6 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView6 setNeedsLayout];

  transitionSecondaryLabelVibrantEffectView7 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  contentView = [transitionSecondaryLabelVibrantEffectView7 contentView];
  transitionSecondaryLabel15 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [contentView addSubview:transitionSecondaryLabel15];

  cardNavigationController8 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view10 = [cardNavigationController8 view];
  transitionSecondaryLabelVibrantEffectView8 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [view10 addSubview:transitionSecondaryLabelVibrantEffectView8];
}

- (id)_legacyAnimationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  [(HUQuickControlPresentationCoordinator *)self _createTransitionViewsForPresentation:controller];
  v6 = objc_alloc_init(MEMORY[0x277D76230]);
  [v6 setIsReversed:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __128__HUQuickControlPresentationCoordinator__legacyAnimationControllerForPresentedController_presentingController_sourceController___block_invoke;
  v9[3] = &unk_277DB8488;
  v9[4] = self;
  [v6 setNoninteractiveAnimations:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __128__HUQuickControlPresentationCoordinator__legacyAnimationControllerForPresentedController_presentingController_sourceController___block_invoke_4;
  v8[3] = &unk_277DB8C28;
  v8[4] = self;
  [v6 setNoninteractiveCompletion:v8];
  [(HUQuickControlPresentationCoordinator *)self sourceFrameForAnimationController];
  [v6 setSourceFrame:?];

  return v6;
}

uint64_t __128__HUQuickControlPresentationCoordinator__legacyAnimationControllerForPresentedController_presentingController_sourceController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __128__HUQuickControlPresentationCoordinator__legacyAnimationControllerForPresentedController_presentingController_sourceController___block_invoke_2;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769473 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __128__HUQuickControlPresentationCoordinator__legacyAnimationControllerForPresentedController_presentingController_sourceController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  v3 = [v2 navigationBarTitleView];
  v4 = [v3 summaryView];
  [v4 setHidden:1];

  v5 = [*(a1 + 32) cardNavigationController];
  v6 = [v5 navigationBar];
  [v6 setNeedsLayout];

  v7 = [*(a1 + 32) delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [*(a1 + 32) delegate];
    [v8 presentationCoordinatorWillBeginTransition:*(a1 + 32) presenting:1];
  }

  v9 = [*(a1 + 32) pressedTileBlurEffectView];
  [v9 setHidden:0];

  if ([*(a1 + 32) isTileOff])
  {
    v10 = [*(a1 + 32) cardNavigationController];
    v11 = [v10 view];
    [v11 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [*(a1 + 32) pressedTileBlurEffectView];
    [v20 setFrame:{v13, v15, v17, v19}];

    v21 = [*(a1 + 32) pressedTileBlurEffectView];
    [v21 layoutIfNeeded];

    v22 = [*(a1 + 32) pressedTileBlurEffectView];
    [v22 setAlpha:0.0];
  }

  v23 = [MEMORY[0x277D75210] effectWithBlurRadius:20.0];
  v24 = [*(a1 + 32) transitionBlurView];
  [v24 setEffect:v23];

  v25 = [*(a1 + 32) cardViewController];
  v26 = [v25 view];
  [v26 setAlpha:1.0];

  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __128__HUQuickControlPresentationCoordinator__legacyAnimationControllerForPresentedController_presentingController_sourceController___block_invoke_3;
  v122[3] = &unk_277DB8488;
  v122[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] animateKeyframesWithDuration:0 delay:v122 options:0 animations:0.5 completion:0.115];
  v27 = [*(a1 + 32) transitionIconView];
  [v27 setHidden:0];

  v28 = [*(a1 + 32) iconSizeInNavigationBar];
  v29 = [*(a1 + 32) transitionIconView];
  [v29 setIconSize:v28];

  [*(a1 + 32) iconFrameInNavigationBar];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [*(a1 + 32) transitionIconView];
  [v38 setFrame:{v31, v33, v35, v37}];

  v39 = [*(a1 + 32) transitionIconView];
  [v39 layoutIfNeeded];

  if ([*(a1 + 32) isTileOff])
  {
    v40 = [*(a1 + 32) transitionIconViewVibrant];
    [v40 setHidden:0];

    v41 = [*(a1 + 32) iconSizeInNavigationBar];
    v42 = [*(a1 + 32) transitionIconViewVibrant];
    [v42 setIconSize:v41];

    [*(a1 + 32) iconFrameInNavigationBar];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = [*(a1 + 32) transitionIconViewVibrant];
    [v51 setFrame:{v44, v46, v48, v50}];

    v52 = [*(a1 + 32) transitionIconViewVibrant];
    [v52 layoutIfNeeded];
  }

  v53 = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];
  v54 = *(a1 + 32);
  v55 = 0.0;
  if (v53)
  {
    v56 = [v54 transitionIconView];
    [v56 setAlpha:0.0];

    v54 = *(a1 + 32);
    v55 = 1.0;
  }

  v57 = [v54 transitionIconViewVibrant];
  [v57 setAlpha:v55];

  v58 = [*(a1 + 32) cardViewController];
  v59 = [v58 navigationBarTitleView];
  v60 = [v59 summaryView];
  v61 = [v60 primaryLabel];
  v62 = [v61 font];
  v63 = [*(a1 + 32) transitionPrimaryLabel];
  [v63 setFont:v62];

  v64 = [*(a1 + 32) cardViewController];
  v65 = [v64 navigationBarTitleView];
  v66 = [v65 summaryView];
  v67 = [v66 primaryLabel];
  v68 = [v67 text];
  v69 = [*(a1 + 32) transitionPrimaryLabel];
  [v69 setText:v68];

  v70 = [*(a1 + 32) transitionPrimaryLabel];
  [v70 setHidden:0];

  [*(a1 + 32) primaryLabelFrameInNavigationBar];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = [*(a1 + 32) transitionPrimaryLabel];
  [v79 setFrame:{v72, v74, v76, v78}];

  v80 = [*(a1 + 32) transitionPrimaryLabel];
  [v80 layoutIfNeeded];

  v81 = [*(a1 + 32) cardViewController];
  v82 = [v81 navigationBarTitleView];
  v83 = [v82 summaryView];
  v84 = [v83 secondaryLabel];
  v85 = [v84 font];
  v86 = [*(a1 + 32) transitionSecondaryLabel];
  [v86 setFont:v85];

  v87 = [*(a1 + 32) cardViewController];
  v88 = [v87 navigationBarTitleView];
  v89 = [v88 summaryView];
  v90 = [v89 secondaryLabel];
  v91 = [v90 text];
  v92 = [*(a1 + 32) transitionSecondaryLabel];
  [v92 setText:v91];

  v93 = [*(a1 + 32) cardViewController];
  v94 = [v93 navigationBarTitleView];
  v95 = [v94 summaryView];
  v96 = [v95 secondaryLabel];
  v97 = [v96 textColor];
  v98 = [*(a1 + 32) transitionSecondaryLabel];
  [v98 setTextColor:v97];

  v99 = [*(a1 + 32) transitionSecondaryLabel];
  [v99 setHidden:0];

  v100 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v100 setHidden:0];

  [*(a1 + 32) secondaryLabelFrameInNavigationBar];
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v109 setFrame:{v102, v104, v106, v108}];

  v110 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v110 bounds];
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v118 = v117;
  v119 = [*(a1 + 32) transitionSecondaryLabel];
  [v119 setFrame:{v112, v114, v116, v118}];

  v120 = [*(a1 + 32) transitionSecondaryLabel];
  [v120 layoutIfNeeded];

  v121 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v121 layoutIfNeeded];
}

void __128__HUQuickControlPresentationCoordinator__legacyAnimationControllerForPresentedController_presentingController_sourceController___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  v1 = [v2 closeButton];
  [v1 setAlpha:1.0];
}

uint64_t __128__HUQuickControlPresentationCoordinator__legacyAnimationControllerForPresentedController_presentingController_sourceController___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  v3 = [v2 navigationBarTitleView];
  v4 = [v3 summaryView];
  [v4 setHidden:0];

  v5 = *(a1 + 32);

  return [v5 removeAllTransitionSubviews];
}

- (void)__createLegacyTransitionViewsForDismissal
{
  v273[2] = *MEMORY[0x277D85DE8];
  [(HUQuickControlPresentationCoordinator *)self removeAllTransitionSubviews];
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  [pressedTile_legacy updateUIWithAnimation:0];

  LODWORD(pressedTile_legacy) = [(HUQuickControlPresentationCoordinator *)self isTileOff];
  v4 = 0x277D14000uLL;
  shouldUseControlCenterMaterials = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];
  if (pressedTile_legacy)
  {
    if (shouldUseControlCenterMaterials)
    {
      if ([MEMORY[0x277D14670] isSpringBoard])
      {
        [MEMORY[0x277CFC960] controlCenterModuleBackgroundMaterial];
      }

      else
      {
        [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
      }
      v11 = ;
      [(HUQuickControlPresentationCoordinator *)self setPressedTileBlurEffectView:v11];
    }

    else
    {
      v11 = [MEMORY[0x277D75210] effectWithStyle:1202];
      v12 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v11];
      [(HUQuickControlPresentationCoordinator *)self setPressedTileBlurEffectView:v12];
    }

    pressedTileBlurEffectView = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [pressedTileBlurEffectView setHidden:1];

    cardNavigationController = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view = [cardNavigationController view];
    [view frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    pressedTileBlurEffectView2 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [pressedTileBlurEffectView2 setFrame:{v17, v19, v21, v23}];

    cardNavigationController2 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view2 = [cardNavigationController2 view];
    pressedTileBlurEffectView3 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [view2 insertSubview:pressedTileBlurEffectView3 atIndex:0];
  }

  else
  {
    if (!shouldUseControlCenterMaterials)
    {
      goto LABEL_12;
    }

    clearColor = [MEMORY[0x277D75348] clearColor];
    cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    [cardViewController setBackgroundColor:clearColor];

    cardNavigationController2 = [MEMORY[0x277D75348] clearColor];
    view2 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    pressedTileBlurEffectView3 = [view2 view];
    [pressedTileBlurEffectView3 setBackgroundColor:cardNavigationController2];
  }

LABEL_12:
  v25 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionIconView:v25];

  pressedTile_legacy2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  item = [pressedTile_legacy2 item];
  latestResults = [item latestResults];
  v29 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  transitionIconView = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView setContentMode:1];

  iconSizeInNavigationBar = [(HUQuickControlPresentationCoordinator *)self iconSizeInNavigationBar];
  transitionIconView2 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView2 setIconSize:iconSizeInNavigationBar];

  [(HUQuickControlPresentationCoordinator *)self iconFrameInNavigationBar];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  transitionIconView3 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView3 setFrame:{v34, v36, v38, v40}];

  transitionIconView4 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView4 setHidden:1];

  transitionIconView5 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  cardViewController2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView = [cardViewController2 navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];
  iconView = [summaryView iconView];
  [transitionIconView5 updateWithIconDescriptor:v29 displayStyle:objc_msgSend(iconView animated:{"displayStyle"), 0}];

  cardNavigationController3 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view3 = [cardNavigationController3 view];
  transitionIconView6 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [view3 addSubview:transitionIconView6];

  v51 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionIconViewVibrant:v51];

  transitionIconViewVibrant = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant setContentMode:1];

  iconSizeInNavigationBar2 = [(HUQuickControlPresentationCoordinator *)self iconSizeInNavigationBar];
  transitionIconViewVibrant2 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant2 setIconSize:iconSizeInNavigationBar2];

  [(HUQuickControlPresentationCoordinator *)self iconFrameInNavigationBar];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  transitionIconViewVibrant3 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant3 setFrame:{v56, v58, v60, v62}];

  transitionIconViewVibrant4 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant4 setHidden:1];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  transitionIconView7 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView7 setTintColor:clearColor2];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    if ([MEMORY[0x277D14670] isHomeControlService])
    {
      v67 = MEMORY[0x277D75358];
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
      controlCenterSecondaryVibrancyEffect = [v67 colorEffectMonochromeTint:systemWhiteColor blendingAmount:1.0 brightnessAdjustment:0.45];

      v70 = MEMORY[0x277D75D58];
      v273[0] = controlCenterSecondaryVibrancyEffect;
      controlCenterPrimaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterPrimaryVibrancyEffect];
      v273[1] = controlCenterPrimaryVibrancyEffect;
      v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v273 count:2];
      v73 = [v70 effectCombiningEffects:v72];
      transitionIconViewVibrant5 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
      [transitionIconViewVibrant5 setVibrancyEffect:v73];

      goto LABEL_18;
    }

    controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    transitionIconViewVibrant6 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [transitionIconViewVibrant6 setVibrancyEffect:controlCenterSecondaryVibrancyEffect];
  }

  else
  {
    controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75210] effectWithStyle:7];
    transitionIconViewVibrant6 = [MEMORY[0x277D75D00] effectForBlurEffect:controlCenterSecondaryVibrancyEffect style:4];
    transitionIconViewVibrant7 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [transitionIconViewVibrant7 setVibrancyEffect:transitionIconViewVibrant6];
  }

LABEL_18:
  transitionIconViewVibrant8 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant8 updateWithIconDescriptor:v29 displayStyle:2 animated:0];

  cardNavigationController4 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  view4 = [cardNavigationController4 view];
  transitionIconViewVibrant9 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  transitionIconView8 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [view4 insertSubview:transitionIconViewVibrant9 below:transitionIconView8];

  v82 = off_277DB0000;
  if ([(HUQuickControlPresentationCoordinator *)self isActionSetTile])
  {
    pressedTile_legacy3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v84 = [MEMORY[0x277D75210] effectWithStyle:7];
    isTileOff = [(HUQuickControlPresentationCoordinator *)self isTileOff];
    v86 = objc_alloc(MEMORY[0x277D75D68]);
    v87 = v86;
    v272 = v84;
    if (isTileOff)
    {
      v88 = [MEMORY[0x277D75D00] effectForBlurEffect:v84 style:4];
      v89 = [v87 initWithEffect:v88];
      [(HUQuickControlPresentationCoordinator *)self setTransitionTitleAndDescriptionVibrantEffectView:v89];
    }

    else
    {
      v88 = [v86 initWithEffect:0];
      [(HUQuickControlPresentationCoordinator *)self setTransitionTitleAndDescriptionVibrantEffectView:v88];
    }

    [(HUQuickControlPresentationCoordinator *)self titleAndDescriptionViewFrameInActionSetTile];
    v147 = v146;
    v149 = v148;
    v151 = v150;
    v153 = v152;
    transitionTitleAndDescriptionVibrantEffectView = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionVibrantEffectView];
    [transitionTitleAndDescriptionVibrantEffectView setFrame:{v147, v149, v151, v153}];

    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInNavigationBar];
    v156 = v155;
    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInNavigationBar];
    v158 = v157;
    titleAndDescriptionView = [pressedTile_legacy3 titleAndDescriptionView];
    [titleAndDescriptionView frame];
    v161 = v160;
    titleAndDescriptionView2 = [pressedTile_legacy3 titleAndDescriptionView];
    [titleAndDescriptionView2 frame];
    v164 = v163;

    cardNavigationController5 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view5 = [cardNavigationController5 view];
    transitionTitleAndDescriptionVibrantEffectView2 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionVibrantEffectView];
    [view5 addSubview:transitionTitleAndDescriptionVibrantEffectView2];

    v168 = [HUGridActionSetTitleAndDescriptionView alloc];
    transitionTitleAndDescriptionVibrantEffectView3 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionVibrantEffectView];
    contentView = [transitionTitleAndDescriptionVibrantEffectView3 contentView];
    v164 = [(HUGridActionSetTitleAndDescriptionView *)v168 initWithFrame:contentView titleLabelSuperview:v156, v158, v161, v164];
    [(HUQuickControlPresentationCoordinator *)self setTransitionTitleAndDescriptionView:v164];

    sceneCellLayoutOptions = [pressedTile_legacy3 sceneCellLayoutOptions];
    numberOfTitleLines = [sceneCellLayoutOptions numberOfTitleLines];
    transitionTitleAndDescriptionView = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
    titleLabel = [transitionTitleAndDescriptionView titleLabel];
    [titleLabel setNumberOfLines:numberOfTitleLines];

    [sceneCellLayoutOptions titleDescriptionLineSpacing];
    v177 = v176;
    transitionTitleAndDescriptionView2 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
    [transitionTitleAndDescriptionView2 setTitleDescriptionLineSpacing:v177];

    transitionTitleAndDescriptionView3 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
    titleAndDescriptionView3 = [pressedTile_legacy3 titleAndDescriptionView];
    titleLabel2 = [titleAndDescriptionView3 titleLabel];
    attributedText = [titleLabel2 attributedText];
    titleAndDescriptionView4 = [pressedTile_legacy3 titleAndDescriptionView];
    descriptionLabel = [titleAndDescriptionView4 descriptionLabel];
    attributedText2 = [descriptionLabel attributedText];
    [transitionTitleAndDescriptionView3 updateTitleText:attributedText descriptionText:attributedText2];

    transitionTitleAndDescriptionView4 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
    [transitionTitleAndDescriptionView4 setHidden:1];

    transitionTitleAndDescriptionVibrantEffectView4 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionVibrantEffectView];
    [transitionTitleAndDescriptionVibrantEffectView4 setHidden:1];

    cardNavigationController6 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view6 = [cardNavigationController6 view];
    transitionTitleAndDescriptionView5 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
    [view6 addSubview:transitionTitleAndDescriptionView5];

    v4 = 0x277D14000;
    v82 = off_277DB0000;
    view8 = v272;
  }

  else
  {
    v90 = objc_alloc_init(HUGridServiceCellTextView);
    [(HUQuickControlPresentationCoordinator *)self setTransitionTextView:v90];

    pressedTile_legacy4 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    shouldShowRoomName = [pressedTile_legacy4 shouldShowRoomName];
    transitionTextView = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [transitionTextView setShouldShowRoomName:shouldShowRoomName];

    pressedTile_legacy5 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    serviceTextView = [pressedTile_legacy5 serviceTextView];
    [serviceTextView lineHeight];
    v97 = v96;
    transitionTextView2 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [transitionTextView2 setLineHeight:v97];

    pressedTile_legacy6 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    serviceTextView2 = [pressedTile_legacy6 serviceTextView];
    font = [serviceTextView2 font];
    transitionTextView3 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [transitionTextView3 setFont:font];

    pressedTile_legacy7 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    serviceTextView3 = [pressedTile_legacy7 serviceTextView];
    serviceNameComponents = [serviceTextView3 serviceNameComponents];
    transitionTextView4 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [transitionTextView4 setServiceNameComponents:serviceNameComponents];

    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInNavigationBar];
    v108 = v107;
    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInNavigationBar];
    v110 = v109;
    pressedTile_legacy8 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    serviceTextView4 = [pressedTile_legacy8 serviceTextView];
    [serviceTextView4 frame];
    v114 = v113;
    pressedTile_legacy9 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    serviceTextView5 = [pressedTile_legacy9 serviceTextView];
    [serviceTextView5 frame];
    v118 = v117;
    transitionTextView5 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [transitionTextView5 setFrame:{v108, v110, v114, v118}];

    transitionTextView6 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [transitionTextView6 setHidden:1];

    transitionTextView7 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [transitionTextView7 setNeedsLayout];

    cardNavigationController7 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view7 = [cardNavigationController7 view];
    transitionTextView8 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [view7 addSubview:transitionTextView8];

    v125 = objc_alloc_init(HUGridServiceCellTextView);
    [(HUQuickControlPresentationCoordinator *)self setTransitionTextViewVibrant:v125];

    pressedTile_legacy10 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    shouldShowRoomName2 = [pressedTile_legacy10 shouldShowRoomName];
    transitionTextViewVibrant = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [transitionTextViewVibrant setShouldShowRoomName:shouldShowRoomName2];

    pressedTile_legacy11 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    serviceTextView6 = [pressedTile_legacy11 serviceTextView];
    [serviceTextView6 lineHeight];
    v132 = v131;
    transitionTextViewVibrant2 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [transitionTextViewVibrant2 setLineHeight:v132];

    pressedTile_legacy12 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    serviceTextView7 = [pressedTile_legacy12 serviceTextView];
    font2 = [serviceTextView7 font];
    transitionTextViewVibrant3 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [transitionTextViewVibrant3 setFont:font2];

    pressedTile_legacy13 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    serviceTextView8 = [pressedTile_legacy13 serviceTextView];
    serviceNameComponents2 = [serviceTextView8 serviceNameComponents];
    transitionTextViewVibrant4 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [transitionTextViewVibrant4 setServiceNameComponents:serviceNameComponents2];

    transitionTextViewVibrant5 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [transitionTextViewVibrant5 sizeToFit];

    v143 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    [(HUQuickControlPresentationCoordinator *)self setTransitionTextViewVibrantEffectView:v143];

    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      controlCenterPrimaryVibrancyEffect2 = [MEMORY[0x277D75D00] controlCenterPrimaryVibrancyEffect];
      transitionTextViewVibrantEffectView = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
      [transitionTextViewVibrantEffectView setEffect:controlCenterPrimaryVibrancyEffect2];
    }

    else
    {
      controlCenterPrimaryVibrancyEffect2 = [MEMORY[0x277D75210] effectWithStyle:7];
      transitionTextViewVibrantEffectView = [MEMORY[0x277D75D00] effectForBlurEffect:controlCenterPrimaryVibrancyEffect2 style:4];
      transitionTextViewVibrantEffectView2 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
      [transitionTextViewVibrantEffectView2 setEffect:transitionTextViewVibrantEffectView];
    }

    transitionTextView9 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [transitionTextView9 frame];
    v195 = v194;
    v197 = v196;
    v199 = v198;
    v201 = v200;
    transitionTextViewVibrantEffectView3 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
    [transitionTextViewVibrantEffectView3 setFrame:{v195, v197, v199, v201}];

    transitionTextViewVibrantEffectView4 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
    [transitionTextViewVibrantEffectView4 bounds];
    v205 = v204;
    v207 = v206;
    v209 = v208;
    v211 = v210;
    transitionTextViewVibrant6 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [transitionTextViewVibrant6 setFrame:{v205, v207, v209, v211}];

    transitionTextViewVibrantEffectView5 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
    [transitionTextViewVibrantEffectView5 setHidden:1];

    transitionTextViewVibrantEffectView6 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
    contentView2 = [transitionTextViewVibrantEffectView6 contentView];
    transitionTextViewVibrant7 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [contentView2 addSubview:transitionTextViewVibrant7];

    pressedTile_legacy3 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view8 = [pressedTile_legacy3 view];
    sceneCellLayoutOptions = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
    cardNavigationController6 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [view8 insertSubview:sceneCellLayoutOptions below:cardNavigationController6];
  }

  if (![(HUQuickControlPresentationCoordinator *)self isActionSetTile])
  {
    v217 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabel:v217];

    transitionSecondaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel setNumberOfLines:1];

    if (-[HUQuickControlPresentationCoordinator isTileOff](self, "isTileOff") && (-[HUQuickControlPresentationCoordinator pressedTile_legacy](self, "pressedTile_legacy"), v219 = objc_claimAutoreleasedReturnValue(), [v219 serviceTextView], v220 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v220, "descriptionText"), v221 = objc_claimAutoreleasedReturnValue(), v221, v220, v219, v221))
    {
      pressedTile_legacy14 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
      serviceTextView9 = [pressedTile_legacy14 serviceTextView];
      font3 = [serviceTextView9 font];
      transitionSecondaryLabel2 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
      [transitionSecondaryLabel2 setFont:font3];

      pressedTile_legacy15 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
      serviceTextView10 = [pressedTile_legacy15 serviceTextView];
      descriptionText = [serviceTextView10 descriptionText];
      transitionSecondaryLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
      [transitionSecondaryLabel3 setText:descriptionText];
    }

    else
    {
      pressedTile_legacy16 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
      coloredDescriptionLabel = [pressedTile_legacy16 coloredDescriptionLabel];
      attributedText3 = [coloredDescriptionLabel attributedText];
      transitionSecondaryLabel4 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
      [transitionSecondaryLabel4 setAttributedText:attributedText3];

      pressedTile_legacy15 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
      serviceTextView10 = [pressedTile_legacy15 coloredDescriptionLabel];
      descriptionText = [serviceTextView10 textColor];
      transitionSecondaryLabel3 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
      [transitionSecondaryLabel3 setTextColor:descriptionText];
    }

    transitionSecondaryLabel5 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel5 setAllowsDefaultTighteningForTruncation:1];

    transitionSecondaryLabel6 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel6 setAdjustsFontSizeToFitWidth:1];

    [(__objc2_class *)v82[218] minimumDescriptionScaleFactor];
    v237 = v236;
    transitionSecondaryLabel7 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel7 setMinimumScaleFactor:v237];

    transitionSecondaryLabel8 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel8 sizeToFit];

    v240 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabelVibrantEffectView:v240];

    if ([(HUQuickControlPresentationCoordinator *)self isTileOff])
    {
      if ([*(v4 + 3304) shouldUseControlCenterMaterials])
      {
        controlCenterSecondaryVibrancyEffect2 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
        transitionSecondaryLabelVibrantEffectView = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
        [transitionSecondaryLabelVibrantEffectView setEffect:controlCenterSecondaryVibrancyEffect2];
      }

      else
      {
        controlCenterSecondaryVibrancyEffect2 = [MEMORY[0x277D75210] effectWithStyle:7];
        transitionSecondaryLabelVibrantEffectView = [MEMORY[0x277D75D00] effectForBlurEffect:controlCenterSecondaryVibrancyEffect2 style:2];
        transitionSecondaryLabelVibrantEffectView2 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
        [transitionSecondaryLabelVibrantEffectView2 setEffect:transitionSecondaryLabelVibrantEffectView];
      }
    }

    transitionSecondaryLabelVibrantEffectView3 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    [transitionSecondaryLabelVibrantEffectView3 setHidden:1];

    [(HUQuickControlPresentationCoordinator *)self secondaryLabelFrameInNavigationBar];
    v246 = v245;
    v248 = v247;
    v250 = v249;
    v252 = v251;
    transitionSecondaryLabelVibrantEffectView4 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    [transitionSecondaryLabelVibrantEffectView4 setFrame:{v246, v248, v250, v252}];

    transitionSecondaryLabelVibrantEffectView5 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    [transitionSecondaryLabelVibrantEffectView5 bounds];
    v256 = v255;
    v258 = v257;
    v260 = v259;
    v262 = v261;
    transitionSecondaryLabel9 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel9 setFrame:{v256, v258, v260, v262}];

    transitionSecondaryLabel10 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [transitionSecondaryLabel10 setNeedsLayout];

    transitionSecondaryLabelVibrantEffectView6 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    [transitionSecondaryLabelVibrantEffectView6 setNeedsLayout];

    transitionSecondaryLabelVibrantEffectView7 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    contentView3 = [transitionSecondaryLabelVibrantEffectView7 contentView];
    transitionSecondaryLabel11 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [contentView3 addSubview:transitionSecondaryLabel11];

    cardNavigationController8 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    view9 = [cardNavigationController8 view];
    transitionSecondaryLabelVibrantEffectView8 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    [view9 addSubview:transitionSecondaryLabelVibrantEffectView8];
  }
}

- (id)_legacyAnimationControllerForDismissedController:(id)controller
{
  cardNavigationController = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  viewControllers = [cardNavigationController viewControllers];
  firstObject = [viewControllers firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = 0;
  }

  else
  {
    [(HUQuickControlPresentationCoordinator *)self _createTransitionViewsForDismissal];
    v8 = objc_alloc_init(MEMORY[0x277D76230]);
    [v8 setIsReversed:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __90__HUQuickControlPresentationCoordinator__legacyAnimationControllerForDismissedController___block_invoke;
    v11[3] = &unk_277DB8488;
    v11[4] = self;
    [v8 setNoninteractiveAnimations:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__HUQuickControlPresentationCoordinator__legacyAnimationControllerForDismissedController___block_invoke_4;
    v10[3] = &unk_277DB8C28;
    v10[4] = self;
    [v8 setNoninteractiveCompletion:v10];
    [(HUQuickControlPresentationCoordinator *)self sourceFrameForAnimationController];
    [v8 setSourceFrame:?];
  }

  return v8;
}

uint64_t __90__HUQuickControlPresentationCoordinator__legacyAnimationControllerForDismissedController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__HUQuickControlPresentationCoordinator__legacyAnimationControllerForDismissedController___block_invoke_2;
  v4[3] = &unk_277DB8488;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1769473 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __90__HUQuickControlPresentationCoordinator__legacyAnimationControllerForDismissedController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cardNavigationController];
  v3 = [v2 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = *(a1 + 32);
  if (isKindOfClass)
  {
    v6 = [v5 cardViewController];
    v7 = [v6 scrollView];
    [v7 setShowsVerticalScrollIndicator:0];

    v8 = [*(a1 + 32) cardViewController];
    v9 = [v8 navigationBarTitleView];
    v10 = [v9 summaryView];
    [v10 setHidden:1];

    v11 = [*(a1 + 32) cardViewController];
    v12 = [v11 quickControlViewController];
    v13 = [v12 controlContainerView];
    [v13 setHidden:1];
  }

  else
  {
    v14 = [v5 cardNavigationController];
    v15 = [v14 topViewController];
    v16 = [v15 view];
    [v16 setHidden:1];

    v11 = [*(a1 + 32) cardNavigationController];
    v12 = [v11 navigationBar];
    [v12 setHidden:1];
  }

  v17 = [*(a1 + 32) delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [*(a1 + 32) delegate];
    [v19 presentationCoordinatorWillBeginTransition:*(a1 + 32) presenting:0];
  }

  v20 = [*(a1 + 32) pressedTile_legacy];
  v21 = [v20 backgroundState];

  if (v21 == 1)
  {
    v22 = [MEMORY[0x277D75348] whiteColor];
    v23 = [*(a1 + 32) cardViewController];
    [v23 setBackgroundColor:v22];

    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    v24 = [MEMORY[0x277D75348] clearColor];
    v25 = [*(a1 + 32) cardViewController];
    [v25 setBackgroundColor:v24];

    [MEMORY[0x277D75348] clearColor];
  }
  v26 = ;
  v27 = [*(a1 + 32) cardNavigationController];
  v28 = [v27 view];
  [v28 setBackgroundColor:v26];

  v29 = [*(a1 + 32) pressedTileBlurEffectView];
  [v29 setHidden:0];

  if ([*(a1 + 32) isTileOff])
  {
    v30 = [*(a1 + 32) cardNavigationController];
    v31 = [v30 view];
    [v31 frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = [*(a1 + 32) pressedTileBlurEffectView];
    [v40 setFrame:{v33, v35, v37, v39}];

    v41 = [*(a1 + 32) pressedTileBlurEffectView];
    [v41 setNeedsLayout];
  }

  v42 = [MEMORY[0x277D75210] effectWithBlurRadius:0.0];
  v43 = [*(a1 + 32) transitionBlurView];
  [v43 setEffect:v42];

  v44 = [*(a1 + 32) cardViewController];
  v45 = [v44 view];
  [v45 setAlpha:0.0];

  v46 = [*(a1 + 32) cardViewController];
  v47 = [v46 navigationItem];
  [v47 _setManualScrollEdgeAppearanceProgress:0.0];

  v159[0] = MEMORY[0x277D85DD0];
  v159[1] = 3221225472;
  v159[2] = __90__HUQuickControlPresentationCoordinator__legacyAnimationControllerForDismissedController___block_invoke_3;
  v159[3] = &unk_277DB8488;
  v159[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] animateKeyframesWithDuration:0 delay:v159 options:0 animations:0.1 completion:0.0];
  v48 = [*(a1 + 32) transitionIconView];
  [v48 setHidden:0];

  v49 = [*(a1 + 32) isActionSetTile];
  v50 = *(a1 + 32);
  if (v49)
  {
    v51 = [v50 iconSizeInActionSetTile];
    v52 = [*(a1 + 32) transitionIconView];
    [v52 setIconSize:v51];

    [*(a1 + 32) iconFrameInActionSetTile];
  }

  else
  {
    v57 = [v50 iconSizeInTile];
    v58 = [*(a1 + 32) transitionIconView];
    [v58 setIconSize:v57];

    [*(a1 + 32) iconFrameInTile];
  }

  v59 = v53;
  v60 = v54;
  v61 = v55;
  v62 = v56;
  v63 = [*(a1 + 32) transitionIconView];
  [v63 setFrame:{v59, v60, v61, v62}];

  v64 = [*(a1 + 32) transitionIconView];
  [v64 setNeedsLayout];

  if ([*(a1 + 32) isTileOff])
  {
    v65 = [*(a1 + 32) transitionIconView];
    [v65 setAlpha:0.0];

    v66 = [*(a1 + 32) transitionIconViewVibrant];
    [v66 setHidden:0];

    v67 = [*(a1 + 32) isActionSetTile];
    v68 = *(a1 + 32);
    if (v67)
    {
      v69 = [v68 iconSizeInActionSetTile];
      v70 = [*(a1 + 32) transitionIconViewVibrant];
      [v70 setIconSize:v69];

      [*(a1 + 32) iconFrameInActionSetTile];
    }

    else
    {
      v75 = [v68 iconSizeInTile];
      v76 = [*(a1 + 32) transitionIconViewVibrant];
      [v76 setIconSize:v75];

      [*(a1 + 32) iconFrameInTile];
    }

    v77 = v71;
    v78 = v72;
    v79 = v73;
    v80 = v74;
    v81 = [*(a1 + 32) transitionIconViewVibrant];
    [v81 setFrame:{v77, v78, v79, v80}];

    v82 = [*(a1 + 32) transitionIconViewVibrant];
    [v82 setNeedsLayout];
  }

  v83 = [*(a1 + 32) isActionSetTile];
  v84 = *(a1 + 32);
  if (v83)
  {
    v85 = [v84 transitionTitleAndDescriptionView];
    [v85 setHidden:0];

    v86 = [*(a1 + 32) transitionTitleAndDescriptionVibrantEffectView];
    [v86 setHidden:0];

    [*(a1 + 32) titleAndDescriptionViewFrameInActionSetTile];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = [*(a1 + 32) transitionTitleAndDescriptionView];
    [v95 setFrame:{v88, v90, v92, v94}];

    if ([*(a1 + 32) isTileOff])
    {
      goto LABEL_25;
    }

    v96 = [*(a1 + 32) pressedTile_legacy];
    v97 = [v96 titleAndDescriptionView];
    v98 = [v97 titleLabel];
    v99 = [v98 textColor];
    v100 = [*(a1 + 32) transitionTitleAndDescriptionView];
    v101 = [v100 titleLabel];
    [v101 setTextColor:v99];
  }

  else
  {
    v102 = [v84 transitionTextView];
    [v102 setHidden:0];

    [*(a1 + 32) primaryLabelFrameInTile];
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v111 = [*(a1 + 32) transitionTextView];
    [v111 setFrame:{v104, v106, v108, v110}];

    v112 = [*(a1 + 32) pressedTile_legacy];
    v113 = [v112 serviceTextView];
    v114 = [v113 textColor];
    v115 = [*(a1 + 32) transitionTextView];
    [v115 setTextColor:v114];

    if (![*(a1 + 32) isTileOff])
    {
      goto LABEL_25;
    }

    v116 = [*(a1 + 32) transitionTextView];
    [v116 setAlpha:0.0];

    v117 = [*(a1 + 32) transitionTextViewVibrantEffectView];
    [v117 setHidden:0];

    [*(a1 + 32) primaryLabelFrameInTile];
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v126 = [*(a1 + 32) transitionTextViewVibrantEffectView];
    [v126 setFrame:{v119, v121, v123, v125}];

    v96 = [*(a1 + 32) transitionTextViewVibrantEffectView];
    [v96 bounds];
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v97 = [*(a1 + 32) transitionTextViewVibrant];
    [v97 setFrame:{v128, v130, v132, v134}];
  }

LABEL_25:
  v135 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v135 setHidden:0];

  v136 = [*(a1 + 32) isActionSetTile];
  v137 = *(a1 + 32);
  if (v136)
  {
    [v137 secondaryLabelFrameInActionSetTile];
  }

  else
  {
    [v137 secondaryLabelFrameInTile];
  }

  v142 = v138;
  v143 = v139;
  v144 = v140;
  v145 = v141;
  v146 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v146 setFrame:{v142, v143, v144, v145}];

  v147 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v147 bounds];
  v149 = v148;
  v151 = v150;
  v153 = v152;
  v155 = v154;
  v156 = [*(a1 + 32) transitionSecondaryLabel];
  [v156 setFrame:{v149, v151, v153, v155}];

  v157 = [*(a1 + 32) transitionSecondaryLabel];
  [v157 layoutIfNeeded];

  v158 = [*(a1 + 32) transitionSecondaryLabelVibrantEffectView];
  [v158 layoutIfNeeded];
}

void __90__HUQuickControlPresentationCoordinator__legacyAnimationControllerForDismissedController___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  v1 = [v2 closeButton];
  [v1 setAlpha:0.0];
}

void __90__HUQuickControlPresentationCoordinator__legacyAnimationControllerForDismissedController___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 presentationCoordinatorWillEndTransition:*(a1 + 32) presenting:0];
  }

  if ([*(a1 + 32) isTileOff])
  {
    [*(a1 + 32) removeAllTransitionSubviews];
  }

  [*(a1 + 32) _restoreOriginalTile];
  v5 = [*(a1 + 32) transitionBlurView];
  [v5 removeFromSuperview];
}

- (void)removeAllTransitionSubviews
{
  pressedTileBlurEffectView = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [pressedTileBlurEffectView removeFromSuperview];

  transitionIconView = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [transitionIconView removeFromSuperview];

  transitionIconViewVibrant = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [transitionIconViewVibrant removeFromSuperview];

  transitionPrimaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
  [transitionPrimaryLabel removeFromSuperview];

  transitionSecondaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel removeFromSuperview];

  transitionSecondaryLabelVibrantEffectView = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [transitionSecondaryLabelVibrantEffectView removeFromSuperview];

  transitionTextView = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
  [transitionTextView removeFromSuperview];

  transitionTextViewVibrant = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
  [transitionTextViewVibrant removeFromSuperview];

  transitionTextViewVibrantEffectView = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
  [transitionTextViewVibrantEffectView removeFromSuperview];

  transitionTitleAndDescriptionView = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
  [transitionTitleAndDescriptionView removeFromSuperview];

  transitionTitleAndDescriptionVibrantEffectView = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionVibrantEffectView];
  [transitionTitleAndDescriptionVibrantEffectView removeFromSuperview];

  transitionPrefixLabel = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
  [transitionPrefixLabel removeFromSuperview];

  transitionBaseIconView = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [transitionBaseIconView removeFromSuperview];

  transitionBackgroundView = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [transitionBackgroundView removeFromSuperview];
}

- (BOOL)isTileOff
{
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  if ([pressedTile_legacy primaryState] == 1)
  {
    v4 = 1;
  }

  else
  {
    pressedTile_legacy2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v4 = [pressedTile_legacy2 primaryState] == 0;
  }

  return v4;
}

- (BOOL)isActionSetTile
{
  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  }

  else
  {
    [(HUQuickControlPresentationCoordinator *)self pressedTile];
  }
  v3 = ;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)iconSizeInTile
{
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  iconView = [pressedTile_legacy iconView];
  iconSize = [iconView iconSize];

  return iconSize;
}

- (unint64_t)iconSizeInActionSetTile
{
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  iconView = [pressedTile_legacy iconView];
  iconSize = [iconView iconSize];

  return iconSize;
}

- (CGRect)iconFrameInTile
{
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  iconView = [pressedTile_legacy iconView];
  [iconView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)iconFrameInActionSetTile
{
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  sceneCellLayoutOptions = [pressedTile_legacy sceneCellLayoutOptions];
  iconView = [pressedTile_legacy iconView];
  [iconView frame];
  v6 = v5;
  v8 = v7;

  [sceneCellLayoutOptions iconInnerHorizontalMargin];
  v10 = v9;
  [sceneCellLayoutOptions cellHeight];
  v12 = v11 * 0.5 - v8 * 0.5;

  v13 = v10;
  v14 = v12;
  v15 = v6;
  v16 = v8;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (unint64_t)iconSizeInNavigationBar
{
  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView = [cardViewController navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];
  iconView = [summaryView iconView];
  iconSize = [iconView iconSize];

  return iconSize;
}

- (CGRect)iconFrameInNavigationBar
{
  [(HUQuickControlPresentationCoordinator *)self iconSizeInNavigationBar];
  HUDefaultSizeForIconSize();
  v4 = v3;
  v6 = v5;
  v7 = 14.0;
  if ([(HUQuickControlPresentationCoordinator *)self _isRTL])
  {
    cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    navigationBarTitleView = [cardViewController navigationBarTitleView];
    [navigationBarTitleView frame];
    v7 = v10 + -14.0 - v4;
  }

  v11 = v7;
  v12 = 22.0;
  v13 = v4;
  v14 = v6;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)primaryLabelFrameInTile
{
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  [pressedTile_legacy frame];
  v5 = v4;
  pressedTile_legacy2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  layoutOptions = [pressedTile_legacy2 layoutOptions];
  [layoutOptions cellInnerMargin];
  v9 = v5 + v8 * -2.0;

  pressedTile_legacy3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  serviceTextView = [pressedTile_legacy3 serviceTextView];
  [serviceTextView frame];
  v13 = v12;

  pressedTile_legacy4 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  layoutOptions2 = [pressedTile_legacy4 layoutOptions];
  [layoutOptions2 cellInnerMargin];
  v17 = v16;

  pressedTile_legacy5 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  contentView = [pressedTile_legacy5 contentView];
  [contentView bounds];
  MaxY = CGRectGetMaxY(v36);
  pressedTile_legacy6 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  layoutOptions3 = [pressedTile_legacy6 layoutOptions];
  [layoutOptions3 cellInnerMargin];
  v24 = MaxY - v23;

  pressedTile_legacy7 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  serviceTextView2 = [pressedTile_legacy7 serviceTextView];
  [serviceTextView2 frame];
  v27 = v24 - CGRectGetHeight(v37);
  pressedTile_legacy8 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  serviceTextView3 = [pressedTile_legacy8 serviceTextView];
  [serviceTextView3 lastBaselineToBottomDistance];
  v31 = HURoundToScreenScale(v27 + v30);

  v32 = v17;
  v33 = v31;
  v34 = v9;
  v35 = v13;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGRect)primaryLabelFrameInActionSetTile
{
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  titleAndDescriptionView = [pressedTile_legacy titleAndDescriptionView];
  titleLabel = [titleAndDescriptionView titleLabel];
  [titleLabel frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)baseIconFrameInNavigationBar
{
  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView = [cardViewController navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];
  baseIconView = [summaryView baseIconView];
  [baseIconView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  cardViewController2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView2 = [cardViewController2 navigationBarTitleView];
  [navigationBarTitleView2 frame];
  v18 = v17;

  _isRTL = [(HUQuickControlPresentationCoordinator *)self _isRTL];
  v20 = v18 - v12 + -14.0;
  if (!_isRTL)
  {
    v20 = v8;
  }

  v21 = v10;
  v22 = v12;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)primaryLabelFrameInNavigationBar
{
  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView = [cardViewController navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];
  primaryLabel = [summaryView primaryLabel];
  [primaryLabel frame];
  v8 = v7;

  cardViewController2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView2 = [cardViewController2 navigationBarTitleView];
  summaryView2 = [navigationBarTitleView2 summaryView];
  primaryLabel2 = [summaryView2 primaryLabel];
  [primaryLabel2 frame];
  v14 = v13;

  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    if (![(HUQuickControlPresentationCoordinator *)self _isRTL])
    {
      transitionIconView = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
      [transitionIconView frame];
      v28 = v27;
      transitionIconView2 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
      [transitionIconView2 frame];
      v25 = v28 + v30 + 14.0;

      goto LABEL_9;
    }

    [(HUQuickControlPresentationCoordinator *)self iconFrameInNavigationBar];
    v16 = v15 + -14.0;
  }

  else
  {
    [(HUQuickControlPresentationCoordinator *)self baseIconFrameInNavigationBar];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if (![(HUQuickControlPresentationCoordinator *)self _isRTL])
    {
      v35.origin.x = v18;
      v35.origin.y = v20;
      v35.size.width = v22;
      v35.size.height = v24;
      v25 = CGRectGetMaxX(v35) + 14.0;
      goto LABEL_9;
    }

    v16 = v18 + -14.0;
  }

  v25 = v16 - v8;
LABEL_9:
  v31 = 16.0;
  v32 = v25;
  v33 = v8;
  v34 = v14;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v31;
  result.origin.x = v32;
  return result;
}

- (CGRect)secondaryLabelFrameInTile
{
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  contentView = [pressedTile_legacy contentView];
  [contentView bounds];
  Width = CGRectGetWidth(v33);
  pressedTile_legacy2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  layoutOptions = [pressedTile_legacy2 layoutOptions];
  [layoutOptions cellInnerMargin];
  v9 = Width + v8 * -2.0;

  transitionSecondaryLabel = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel bounds];
  Height = CGRectGetHeight(v34);

  pressedTile_legacy3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  contentView2 = [pressedTile_legacy3 contentView];
  [contentView2 bounds];
  MinX = CGRectGetMinX(v35);
  pressedTile_legacy4 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  layoutOptions2 = [pressedTile_legacy4 layoutOptions];
  [layoutOptions2 cellInnerMargin];
  v18 = MinX + v17;

  pressedTile_legacy5 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  contentView3 = [pressedTile_legacy5 contentView];
  [contentView3 bounds];
  MaxY = CGRectGetMaxY(v36);
  pressedTile_legacy6 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  layoutOptions3 = [pressedTile_legacy6 layoutOptions];
  [layoutOptions3 cellInnerMargin];
  v25 = MaxY - v24;

  transitionSecondaryLabel2 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [transitionSecondaryLabel2 _lastLineBaseline];
  v28 = HURoundToScreenScale(v25 - v27);

  v29 = v18;
  v30 = v28;
  v31 = v9;
  v32 = Height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)secondaryLabelFrameInActionSetTile
{
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  titleAndDescriptionView = [pressedTile_legacy titleAndDescriptionView];
  descriptionLabel = [titleAndDescriptionView descriptionLabel];
  [descriptionLabel frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)secondaryLabelFrameInNavigationBar
{
  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView = [cardViewController navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];
  secondaryLabel = [summaryView secondaryLabel];
  [secondaryLabel frame];
  v8 = v7;

  cardViewController2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView2 = [cardViewController2 navigationBarTitleView];
  summaryView2 = [navigationBarTitleView2 summaryView];
  secondaryLabel2 = [summaryView2 secondaryLabel];
  [secondaryLabel2 frame];
  v14 = v13;

  cardViewController3 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView3 = [cardViewController3 navigationBarTitleView];
  summaryView3 = [navigationBarTitleView3 summaryView];
  primaryLabel = [summaryView3 primaryLabel];
  [primaryLabel frame];
  v20 = v19;

  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    if (![(HUQuickControlPresentationCoordinator *)self _isRTL])
    {
      transitionIconView = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
      [transitionIconView frame];
      v34 = v33;
      transitionIconView2 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
      [transitionIconView2 frame];
      v31 = v34 + v36 + 14.0;

      goto LABEL_9;
    }

    [(HUQuickControlPresentationCoordinator *)self iconFrameInNavigationBar];
    v22 = v21 + -14.0;
  }

  else
  {
    [(HUQuickControlPresentationCoordinator *)self baseIconFrameInNavigationBar];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    if (![(HUQuickControlPresentationCoordinator *)self _isRTL])
    {
      v41.origin.x = v24;
      v41.origin.y = v26;
      v41.size.width = v28;
      v41.size.height = v30;
      v31 = CGRectGetMaxX(v41) + 14.0;
      goto LABEL_9;
    }

    v22 = v24 + -14.0;
  }

  v31 = v22 - v8;
LABEL_9:
  v37 = v20 + 16.0;
  v38 = v31;
  v39 = v8;
  v40 = v14;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v37;
  result.origin.x = v38;
  return result;
}

- (CGRect)titleAndDescriptionViewFrameInActionSetTile
{
  pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  titleAndDescriptionView = [pressedTile_legacy titleAndDescriptionView];
  [titleAndDescriptionView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_preparePressedItemContextForItem:(id)item startApplier:(BOOL)applier
{
  applierCopy = applier;
  itemCopy = item;
  pressedItemContexts = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v7 = [pressedItemContexts objectForKey:itemCopy];

  if (v7)
  {
    [(HUQuickControlPresentationCoordinator *)self _configureInitialStateForPressedItemContext:v7 userInitiated:1];
  }

  else
  {
    v7 = [(HUQuickControlPresentationCoordinator *)self _createPressedContextForItem:itemCopy userInitiated:1];
    pressedItemContexts2 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
    [pressedItemContexts2 setObject:v7 forKey:itemCopy];

    if (applierCopy)
    {
      applier = [v7 applier];
      [applier start];
    }
  }
}

- (void)_configureInitialStateForPressedItemContext:(id)context userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  contextCopy = context;
  [contextCopy setBeginTime:CACurrentMediaTime()];
  [contextCopy setRawInputProgress:0.433333333];
  applier = [contextCopy applier];
  [applier setCompletesWhenAtRest:0];

  [contextCopy setActive:1];
  [contextCopy setIsUserInitiated:initiatedCopy];
  programmaticBounceTimer = [contextCopy programmaticBounceTimer];

  if (programmaticBounceTimer)
  {
    programmaticBounceTimer2 = [contextCopy programmaticBounceTimer];
    [programmaticBounceTimer2 invalidate];

    [contextCopy setProgrammaticBounceTimer:0];
  }
}

- (void)_initiateProgrammaticBounceForItem:(id)item
{
  itemCopy = item;
  pressedItemContexts = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v6 = [pressedItemContexts objectForKey:itemCopy];

  v7 = MEMORY[0x277CBEBB8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HUQuickControlPresentationCoordinator__initiateProgrammaticBounceForItem___block_invoke;
  v10[3] = &unk_277DBF678;
  v11 = v6;
  v8 = v6;
  v9 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:0.17];
  [v8 setProgrammaticBounceTimer:v9];
}

void __76__HUQuickControlPresentationCoordinator__initiateProgrammaticBounceForItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActive:0];
  v2 = [*(a1 + 32) applier];
  [v2 setCompletesWhenAtRest:1];
}

- (id)_createPressedContextForItem:(id)item userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  itemCopy = item;
  pressedItemContexts = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v8 = [pressedItemContexts objectForKey:itemCopy];

  if (v8)
  {
    NSLog(&cfstr_PressedItemCon.isa, itemCopy);
  }

  v9 = objc_alloc_init(HUPressedItemContext);
  [(HUPressedItemContext *)v9 setItem:itemCopy];
  [(HUPressedItemContext *)v9 setIsUserInitiated:initiatedCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v9);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v10 = [HUElasticApplier alloc];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __84__HUQuickControlPresentationCoordinator__createPressedContextForItem_userInitiated___block_invoke;
  v22[3] = &unk_277DC4CC8;
  v22[4] = v25;
  objc_copyWeak(&v23, &location);
  objc_copyWeak(&v24, &from);
  v11 = [(HUElasticApplier *)v10 initWithProgressInputBlock:v22];
  [(HUElasticApplier *)v11 setTension:600.0];
  [(HUElasticApplier *)v11 setFriction:10.0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__HUQuickControlPresentationCoordinator__createPressedContextForItem_userInitiated___block_invoke_3;
  v18[3] = &unk_277DC4CF0;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  v12 = itemCopy;
  v19 = v12;
  [(HUApplier *)v11 addApplierBlock:v18];
  [(HUElasticApplier *)v11 setCompletesWhenAtRest:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__HUQuickControlPresentationCoordinator__createPressedContextForItem_userInitiated___block_invoke_4;
  v15[3] = &unk_277DC1908;
  objc_copyWeak(&v17, &location);
  v13 = v12;
  v16 = v13;
  [(HUApplier *)v11 addCompletionBlock:v15];
  [(HUPressedItemContext *)v9 setApplier:v11];
  [(HUQuickControlPresentationCoordinator *)self _configureInitialStateForPressedItemContext:v9 userInitiated:initiatedCopy];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
  _Block_object_dispose(v25, 8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v9;
}

double __84__HUQuickControlPresentationCoordinator__createPressedContextForItem_userInitiated___block_invoke(uint64_t a1, double a2)
{
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HUQuickControlPresentationCoordinator__createPressedContextForItem_userInitiated___block_invoke_2;
  v17[3] = &unk_277DC4CA0;
  v17[4] = *(a1 + 32);
  *&v17[5] = a2;
  v4 = _Block_copy(v17);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = v6;
  if (WeakRetained && ([v6 isActive] & 1) != 0)
  {
    v8 = [WeakRetained pressGestureRecognizer];
    [v8 currentForceMultiplier];
    v10 = v9;

    v11 = *(*(*(a1 + 32) + 8) + 24);
    [v7 rawInputProgress];
    [v7 setRawInputProgress:v12 + (a2 - v11) / 0.2 * v10];
  }

  else
  {
    [v7 setRawInputProgress:0.0];
  }

  [v7 rawInputProgress];
  v14 = v13;

  if (v4)
  {
    v4[2](v4);
  }

  v15 = HURubberBandedValue(v14, 0.0, 0.333333333, 0.0, 1.5);

  return v15;
}

double __84__HUQuickControlPresentationCoordinator__createPressedContextForItem_userInitiated___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __84__HUQuickControlPresentationCoordinator__createPressedContextForItem_userInitiated___block_invoke_3(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateOverrideAttributesWithScale:*(a1 + 32) forItem:(1.0 - a2) * 0.2 + 0.8];
  v5 = CACurrentMediaTime();
  [v4 beginTime];
  v7 = v6;
  v8 = [WeakRetained pressGestureRecognizer];
  [v8 overallForceMultiplier];
  v10 = v9;

  if ([v4 isUserInitiated] && objc_msgSend(v4, "isActive") && (v5 - v7) * v10 >= 0.5)
  {
    v11 = [WeakRetained _beginControlPresentationAnimated:1];
  }
}

void __84__HUQuickControlPresentationCoordinator__createPressedContextForItem_userInitiated___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _pressedStateDidEndForItem:*(a1 + 32) clearPresentationContext:1];
  }
}

- (void)_updateOverrideAttributesWithScale:(double)scale forItem:(id)item
{
  itemCopy = item;
  CGAffineTransformMakeScale(&v7, scale, scale);
  [(HUQuickControlPresentationCoordinator *)self _updateOverrideAttributesWithTransform:&v7 alpha:itemCopy forItem:1.0];
}

- (void)_updateOverrideAttributesWithTransform:(CGAffineTransform *)transform alpha:(double)alpha forItem:(id)item
{
  itemCopy = item;
  v9 = objc_alloc_init(HUControllableCollectionViewLayoutOverrideAttributes);
  v10 = *&transform->c;
  v14[0] = *&transform->a;
  v14[1] = v10;
  v14[2] = *&transform->tx;
  [(HUControllableCollectionViewLayoutOverrideAttributes *)v9 setTransform:v14];
  [(HUControllableCollectionViewLayoutOverrideAttributes *)v9 setAlpha:alpha];
  [(HUControllableCollectionViewLayoutOverrideAttributes *)v9 setZIndex:1000];
  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  [delegate presentationCoordinator:self applyOverrideAttributes:v9 toItem:itemCopy];

  pressedItemContexts = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v13 = [pressedItemContexts objectForKey:itemCopy];

  if (v13)
  {
    [v13 setCurrentViewScale:transform->a];
  }
}

- (void)_pressedStateDidEndForItem:(id)item clearPresentationContext:(BOOL)context
{
  contextCopy = context;
  itemCopy = item;
  pressedItemContexts = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v8 = [pressedItemContexts objectForKey:itemCopy];

  if (v8)
  {
    v9 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__HUQuickControlPresentationCoordinator__pressedStateDidEndForItem_clearPresentationContext___block_invoke;
    v15[3] = &unk_277DB7558;
    v15[4] = self;
    v10 = itemCopy;
    v16 = v10;
    [v9 performWithoutAnimation:v15];
    pressedItemContexts2 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
    [pressedItemContexts2 removeObjectForKey:v10];

    if (contextCopy)
    {
      presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      item = [presentationContext item];
      v14 = [item isEqual:v10];

      if (v14)
      {
        [(HUQuickControlPresentationCoordinator *)self setPresentationContext:0];
      }
    }
  }

  else
  {
    NSLog(&cfstr_MissingPressed.isa, itemCopy);
  }
}

void __93__HUQuickControlPresentationCoordinator__pressedStateDidEndForItem_clearPresentationContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 presentationCoordinator:*(a1 + 32) clearOverrideAttributesForItem:*(a1 + 40)];
}

- (void)_prepareForTapticFeedback
{
  feedbackGenerator = [(HUQuickControlPresentationCoordinator *)self feedbackGenerator];

  if (!feedbackGenerator)
  {
    v4 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:4];
    [(HUQuickControlPresentationCoordinator *)self setFeedbackGenerator:v4];

    feedbackGenerator2 = [(HUQuickControlPresentationCoordinator *)self feedbackGenerator];
    [feedbackGenerator2 prepare];
  }
}

- (void)_actuateTapticFeedback
{
  feedbackGenerator = [(HUQuickControlPresentationCoordinator *)self feedbackGenerator];
  [feedbackGenerator impactOccurred];

  feedbackGenerator2 = [(HUQuickControlPresentationCoordinator *)self feedbackGenerator];
  [feedbackGenerator2 prepare];
}

- (id)presentQuickControlWithContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  [(HUQuickControlPresentationCoordinator *)self setPresentationContext:contextCopy];
  item = [contextCopy item];

  if (item)
  {
    item2 = [contextCopy item];
    [(HUQuickControlPresentationCoordinator *)self _preparePressedItemContextForItem:item2 startApplier:0];
  }

  v9 = [(HUQuickControlPresentationCoordinator *)self _beginControlPresentationAnimated:animatedCopy];

  return v9;
}

- (BOOL)_shouldCancelPresentation
{
  v19 = *MEMORY[0x277D85DE8];
  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v7 = [delegate2 presentationCoordinator:self shouldBeginPresentationWithContext:presentationContext];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    delegate3 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v13 = 138412802;
    v14 = v10;
    v15 = 1024;
    v16 = v7;
    v17 = 2112;
    v18 = delegate3;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@+Controls _shouldCancelPresentation: delegate responded to shouldBeginPresentationWithContext with %{BOOL}d delegate %@", &v13, 0x1Cu);
  }

  return v7 ^ 1;
}

- (id)_beginControlPresentationAnimated:(BOOL)animated
{
  v27 = *MEMORY[0x277D85DE8];
  quickControlViewController = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];

  if (quickControlViewController)
  {
    NSLog(&cfstr_AttemptingToBe.isa);
  }

  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];

  if (!presentationContext)
  {
    NSLog(&cfstr_AttemptingToBe_0.isa);
  }

  activePressedItemContext = [(HUQuickControlPresentationCoordinator *)self activePressedItemContext];
  applier = [activePressedItemContext applier];
  [applier cancel];

  LODWORD(applier) = [(HUQuickControlPresentationCoordinator *)self _shouldCancelPresentation];
  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (applier)
  {
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@+Controls canceling presentation", buf, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    if (v9)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412290;
      v26 = v14;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@+Controls beginning control presentation", buf, 0xCu);
    }

    _viewControllerToPresent = [(HUQuickControlPresentationCoordinator *)self _viewControllerToPresent];
    v16 = objc_alloc_init(MEMORY[0x277D2C900]);
    if (_viewControllerToPresent)
    {
      presentingViewController = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
      v18 = [presentingViewController hu_presentPreloadableViewController:_viewControllerToPresent animated:1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __75__HUQuickControlPresentationCoordinator__beginControlPresentationAnimated___block_invoke;
      v22[3] = &unk_277DC0040;
      v22[4] = self;
      v19 = v16;
      v23 = v19;
      v24 = _viewControllerToPresent;
      v20 = [v18 addCompletionBlock:v22];

      futureWithNoResult = v19;
    }

    else
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }
  }

  return futureWithNoResult;
}

uint64_t __75__HUQuickControlPresentationCoordinator__beginControlPresentationAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [v5 presentationContext];
    [v4 presentationCoordinator:v5 didBeginPresentationWithContext:v6];
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  return [v7 finishWithResult:v8];
}

- (id)_viewControllerToPresent
{
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item = [presentationContext item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _buildSoftwareUpdateNavigationController = [(HUQuickControlPresentationCoordinator *)self _buildSoftwareUpdateNavigationController];
  }

  else
  {
    presentationContext2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    item2 = [presentationContext2 item];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if (v9)
    {
      [(HUQuickControlPresentationCoordinator *)self _buildStatusDetailsNavigationController];
    }

    else
    {
      [(HUQuickControlPresentationCoordinator *)self _buildCardNavigationController];
    }
    _buildSoftwareUpdateNavigationController = ;
  }

  return _buildSoftwareUpdateNavigationController;
}

- (id)_buildQuickControlViewController
{
  v3 = [HUQuickControlContainerViewController alloc];
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v5 = [(HUQuickControlContainerViewController *)v3 initWithPresentationContext:presentationContext];

  [(HUQuickControlContainerViewController *)v5 setDelegate:self];
  [(HUQuickControlContainerViewController *)v5 setPresentationDelegate:self];
  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v9 = [delegate2 detailViewURLHandlerForPresentationCoordinator:self];
    [(HUQuickControlContainerViewController *)v5 setDetailViewURLHandler:v9];
  }

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    [(HUQuickControlContainerViewController *)v5 presentControlForMacAnimated:1];
  }

  else
  {
    view = [(HUQuickControlContainerViewController *)v5 view];
    presentationContext2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    [presentationContext2 sourceRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    targetView = [(HUQuickControlPresentationCoordinator *)self targetView];
    [view convertRect:targetView fromView:{v13, v15, v17, v19}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    [(HUQuickControlContainerViewController *)v5 presentControlFromSourceRect:1 animated:v22, v24, v26, v28];
  }

  return v5;
}

- (void)_updateCardController
{
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item = [presentationContext item];
  if (item)
  {
    v5 = item;
    cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    sourceItem = [cardViewController sourceItem];
    if (sourceItem)
    {
      v8 = sourceItem;
      presentationContext2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      item2 = [presentationContext2 item];
      cardViewController2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
      sourceItem2 = [cardViewController2 sourceItem];

      if (item2 == sourceItem2)
      {
        return;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  _buildQuickControlViewController = [(HUQuickControlPresentationCoordinator *)self _buildQuickControlViewController];
  [(HUQuickControlPresentationCoordinator *)self setQuickControlViewController:_buildQuickControlViewController];

  quickControlViewController = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
  presentationContext3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item3 = [presentationContext3 item];
  v17 = [(HUQuickControlPresentationCoordinator *)self hasDetailsActionForQuickControlViewController:quickControlViewController item:item3];

  if (v17 || (-[HUQuickControlPresentationCoordinator presentationContext](self, "presentationContext"), v18 = objc_claimAutoreleasedReturnValue(), [v18 item], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "conformsToProtocol:", &unk_28251B0C8), v19, v18, (v20 & 1) == 0))
  {
    _prepareSettingsViewController = [(HUQuickControlPresentationCoordinator *)self _prepareSettingsViewController];
    [(HUQuickControlPresentationCoordinator *)self setSettingsViewController:_prepareSettingsViewController];
  }

  cardViewController3 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  quickControlViewController2 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
  settingsViewController = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
  presentationContext4 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  [cardViewController3 updateWithQuickControlViewController:quickControlViewController2 settingsViewController:settingsViewController presentationContext:presentationContext4];

  if (([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation] & 1) == 0)
  {
    pressedTile = [(HUQuickControlPresentationCoordinator *)self pressedTile];

    if (pressedTile)
    {
      pressedTile2 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
      baseIconViewConfiguration = [pressedTile2 baseIconViewConfiguration];

      [(HUBaseIconViewConfiguration *)baseIconViewConfiguration setAppearance:3];
      cardViewController5 = objc_alloc_init(HUBaseIconView);
      [(HUBaseIconView *)cardViewController5 setConfiguration:baseIconViewConfiguration];
      cardViewController4 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
      navigationBarTitleView = [cardViewController4 navigationBarTitleView];
      summaryView = [navigationBarTitleView summaryView];
      [summaryView setBaseIconView:cardViewController5];
    }

    else
    {
      v33 = [HUBaseIconViewConfiguration alloc];
      presentationContext5 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      item4 = [presentationContext5 item];
      baseIconViewConfiguration = [(HUBaseIconViewConfiguration *)v33 initWithItem:item4 appearance:3];

      cardViewController5 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
      cardViewController4 = [(HUBaseIconView *)cardViewController5 navigationBarTitleView];
      navigationBarTitleView = [cardViewController4 summaryView];
      summaryView = [navigationBarTitleView baseIconView];
      [summaryView setConfiguration:baseIconViewConfiguration];
    }
  }

  presentationContext6 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item5 = [presentationContext6 item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = 0;
  }

  else
  {
    presentationContext7 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    controlItems = [presentationContext7 controlItems];
    v38 = [controlItems count] != 0;
  }

  presentationContext8 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  controlItems2 = [presentationContext8 controlItems];
  v43 = [controlItems2 na_any:&__block_literal_global_295];

  isAMac = [MEMORY[0x277D14CE8] isAMac];
  if ([MEMORY[0x277D14CE8] isInternalInstall] && HFHideQuickControls())
  {
    v45 = HFLogForCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 0;
      _os_log_impl(&dword_20CEB6000, v45, OS_LOG_TYPE_DEFAULT, "Hiding all quick controls because pref is set (see Internal Settings)", v50, 2u);
    }

    v46 = 1;
  }

  else
  {
    v46 = 0;
  }

  v47 = v38 & (isAMac ^ 1 | v43) ^ 1;
  cardViewController6 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  [cardViewController6 setHideControls:v46 | v47];

  cardViewController7 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  [cardViewController7 setHideSettings:!v17];
}

BOOL __62__HUQuickControlPresentationCoordinator__updateCardController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)_buildStatusDetailsNavigationController
{
  objc_opt_class();
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item = [presentationContext item];
  if (objc_opt_isKindOfClass())
  {
    v5 = item;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [[HUStatusDetailsViewController alloc] initWithStatusItem:v6 delegate:self];
  [(HUQuickControlPresentationCoordinator *)self setStatusDetailsViewController:v7];

  v8 = objc_alloc(MEMORY[0x277D757A0]);
  statusDetailsViewController = [(HUQuickControlPresentationCoordinator *)self statusDetailsViewController];
  v10 = [v8 initWithRootViewController:statusDetailsViewController];
  [(HUQuickControlPresentationCoordinator *)self setStatusDetailsNavigationController:v10];

  statusDetailsNavigationController = [(HUQuickControlPresentationCoordinator *)self statusDetailsNavigationController];
  [statusDetailsNavigationController setModalPresentationStyle:2];

  presentingViewController = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
  view = [presentingViewController view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  return [(HUQuickControlPresentationCoordinator *)self statusDetailsNavigationController];
}

- (id)_buildSoftwareUpdateNavigationController
{
  v3 = [HUSoftwareUpdateStandaloneViewController alloc];
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  home = [presentationContext home];
  v6 = [(HUSoftwareUpdateStandaloneViewController *)v3 initWithHome:home];

  [(HUSoftwareUpdateStandaloneViewController *)v6 setShowDoneButtonInNavBar:1];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  [v7 setModalPresentationStyle:2];

  return v7;
}

- (void)_validatePresentationContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    NSLog(&cfstr_Presentationco.isa);
  }

  isProxHandOffV2Config = [MEMORY[0x277D14CE8] isProxHandOffV2Config];
  v4 = contextCopy;
  if ((isProxHandOffV2Config & 1) == 0)
  {
    isConfiguredForNonHomeUser = [contextCopy isConfiguredForNonHomeUser];
    v4 = contextCopy;
    if ((isConfiguredForNonHomeUser & 1) == 0)
    {
      item = [contextCopy item];
      if (item)
      {
      }

      else
      {
        itemManager = [contextCopy itemManager];
        homeKitObjectUUID = [itemManager homeKitObjectUUID];

        if (!homeKitObjectUUID)
        {
          NSLog(&cfstr_ContextMustInc.isa, contextCopy);
        }
      }

      home = [contextCopy home];

      v4 = contextCopy;
      if (!home)
      {
        NSLog(&cfstr_ContextMustInc_0.isa, contextCopy);
        v4 = contextCopy;
      }
    }
  }

  item2 = [v4 item];
  if (item2 && ([contextCopy sourceRect], CGRectIsEmpty(v14)))
  {
    prefersSystemTransitions = [contextCopy prefersSystemTransitions];

    if ((prefersSystemTransitions & 1) == 0)
    {
      NSLog(&cfstr_ContextMustInc_1.isa, contextCopy);
    }
  }

  else
  {
  }
}

- (id)dismissQuickControlAnimated:(BOOL)animated wasDismissed:(BOOL *)dismissed
{
  animatedCopy = animated;
  if (dismissed)
  {
    *dismissed = [(HUQuickControlPresentationCoordinator *)self isQuickControlPresented];
  }

  return [(HUQuickControlPresentationCoordinator *)self dismissQuickControlAnimated:animatedCopy];
}

- (id)dismissQuickControlAnimated:(BOOL)animated
{
  animatedCopy = animated;
  quickControlViewController = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
  if (quickControlViewController && (v6 = quickControlViewController, -[HUQuickControlPresentationCoordinator quickControlViewController](self, "quickControlViewController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isControlDismissedOrDismissing], v7, v6, (v8 & 1) == 0))
  {
    delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
      presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      [delegate2 presentationCoordinator:self willEndPresentationWithContext:presentationContext];
    }

    quickControlViewController2 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
    v9 = [quickControlViewController2 dismissControlAnimated:animatedCopy];
  }

  else
  {
    v9 = [(HUQuickControlPresentationCoordinator *)self _dismissQuickControlViewControllerAnimated:animatedCopy];
  }

  return v9;
}

- (id)_dismissQuickControlViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
    [delegate2 presentationCoordinator:self willEndPresentationWithContext:presentationContext];
  }

  quickControlViewController = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
  if (quickControlViewController && (v10 = quickControlViewController, -[HUQuickControlPresentationCoordinator quickControlViewController](self, "quickControlViewController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isBeingDismissed], v11, v10, !v12))
  {
    v14 = objc_alloc_init(MEMORY[0x277D2C900]);
    quickControlViewController2 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__HUQuickControlPresentationCoordinator__dismissQuickControlViewControllerAnimated___block_invoke;
    v19[3] = &unk_277DB7558;
    v19[4] = self;
    v16 = v14;
    v20 = v16;
    [quickControlViewController2 dismissViewControllerAnimated:animatedCopy completion:v19];

    v17 = v20;
    futureWithNoResult = v16;
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __84__HUQuickControlPresentationCoordinator__dismissQuickControlViewControllerAnimated___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__HUQuickControlPresentationCoordinator__dismissQuickControlViewControllerAnimated___block_invoke_2;
  aBlock[3] = &unk_277DB7558;
  v2 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v11 = v2;
  v3 = _Block_copy(aBlock);
  v4 = [*(a1 + 32) quickControlViewController];
  v5 = [v4 presentingViewController];

  if (v5)
  {
    v6 = [*(a1 + 32) quickControlViewController];
    v7 = [v6 presentingViewController];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __84__HUQuickControlPresentationCoordinator__dismissQuickControlViewControllerAnimated___block_invoke_3;
    v8[3] = &unk_277DB84B0;
    v9 = v3;
    [v7 dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __84__HUQuickControlPresentationCoordinator__dismissQuickControlViewControllerAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cardNavigationController];
  v3 = [v2 transitioningDelegate];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [*(a1 + 32) _restoreOriginalTile];
  }

  v5 = *(a1 + 40);

  return [v5 finishWithNoResult];
}

- (void)_restoreOriginalTile
{
  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    if (pressedTile_legacy)
    {
      v4 = pressedTile_legacy;
      presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];

      if (presentationContext)
      {
        CGAffineTransformMakeScale(&v18, 1.0, 1.0);
        pressedTile_legacy2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
        item = [pressedTile_legacy2 item];
        [(HUQuickControlPresentationCoordinator *)self _updateOverrideAttributesWithTransform:&v18 alpha:item forItem:1.0];

        pressedTile_legacy3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
LABEL_9:
        v15 = pressedTile_legacy3;
        item2 = [pressedTile_legacy3 item];
        [(HUQuickControlPresentationCoordinator *)self _pressedStateDidEndForItem:item2 clearPresentationContext:1];
      }
    }
  }

  else
  {
    pressedTile = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    if (!pressedTile)
    {
      return;
    }

    v17 = pressedTile;
    presentationContext2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    if (presentationContext2)
    {
      v11 = presentationContext2;
      isActionSetTile = [(HUQuickControlPresentationCoordinator *)self isActionSetTile];

      if (isActionSetTile)
      {
        return;
      }

      CGAffineTransformMakeScale(&v18, 1.0, 1.0);
      presentationContext3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      item3 = [presentationContext3 item];
      [(HUQuickControlPresentationCoordinator *)self _updateOverrideAttributesWithTransform:&v18 alpha:item3 forItem:1.0];

      pressedTile_legacy3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      goto LABEL_9;
    }
  }
}

- (void)_cleanupForQuickControlDismissal
{
  [(HUQuickControlPresentationCoordinator *)self setQuickControlViewController:0];
  [(HUQuickControlPresentationCoordinator *)self setSettingsViewController:0];
  [(HUQuickControlPresentationCoordinator *)self setPresentationContext:0];

  [(HUQuickControlPresentationCoordinator *)self setPressedTile_legacy:0];
}

- (BOOL)isQuickControlPresented
{
  quickControlViewController = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
  if (quickControlViewController)
  {
    quickControlViewController2 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
    v5 = [quickControlViewController2 isBeingDismissed] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_prepareSettingsViewController
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__HUQuickControlPresentationCoordinator__prepareSettingsViewController__block_invoke;
  aBlock[3] = &unk_277DC4D18;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item = [presentationContext item];
  v6 = [item conformsToProtocol:&unk_28251B0C8];

  if (v6)
  {
    presentationContext2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    item2 = [presentationContext2 item];
    if ([item2 conformsToProtocol:&unk_28251B0C8])
    {
      v9 = item2;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

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
      accessory = [(HUSceneActionEditorViewController *)v13 accessory];
      hf_isSingleServiceLikeAccessory = [accessory hf_isSingleServiceLikeAccessory];

      if (hf_isSingleServiceLikeAccessory)
      {
        accessory2 = [(HUSceneActionEditorViewController *)v13 accessory];
        hf_primaryService = [accessory2 hf_primaryService];
        v18 = [(HUSceneActionEditorViewController *)v13 serviceItemForService:hf_primaryService];

        v11 = v18;
      }
    }

    v19 = v3[2](v3, v11);
    objc_opt_class();
    v20 = v19;
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    if (v22)
    {
      presentationContext3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      -[HUSceneActionEditorViewController setShouldIncludeRoomNameInHeaderTitle:](v22, "setShouldIncludeRoomNameInHeaderTitle:", [presentationContext3 shouldIncludeRoomNameInHeaderTitle]);
    }

LABEL_39:
    goto LABEL_40;
  }

  presentationContext4 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item3 = [presentationContext4 item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentationContext5 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    item4 = [presentationContext5 item];
    v29 = v3[2](v3, item4);

    objc_opt_class();
    v11 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = v11;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v20 = v11;
    if (!v31)
    {
      objc_opt_class();
      presentationContext6 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      item5 = [presentationContext6 item];
      if (objc_opt_isKindOfClass())
      {
        v34 = item5;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;

      v36 = objc_alloc(MEMORY[0x277D14398]);
      actionSet = [v35 actionSet];

      presentationContext7 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      home = [presentationContext7 home];
      v40 = [v36 initWithExistingObject:actionSet inHome:home];

      v20 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v40 mode:0];
    }

    [(HUSceneActionEditorViewController *)v20 setShowCancelButton:0];
    goto LABEL_39;
  }

  presentationContext8 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item6 = [presentationContext8 item];
  objc_opt_class();
  v43 = objc_opt_isKindOfClass();

  if (v43)
  {
    objc_opt_class();
    presentationContext9 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    item7 = [presentationContext9 item];
    if (objc_opt_isKindOfClass())
    {
      v46 = item7;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;

    sourceItem = [v47 sourceItem];

    if ([sourceItem conformsToProtocol:&unk_28251B0C8])
    {
      v49 = sourceItem;
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;

    v51 = v3[2](v3, v50);

    objc_opt_class();
    v20 = v51;
    if (objc_opt_isKindOfClass())
    {
      v52 = v20;
    }

    else
    {
      v52 = 0;
    }

    v11 = v52;

    if (v11)
    {
      presentationContext10 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      -[HUSceneActionEditorViewController setShouldIncludeRoomNameInHeaderTitle:](v11, "setShouldIncludeRoomNameInHeaderTitle:", [presentationContext10 shouldIncludeRoomNameInHeaderTitle]);

      v11 = v20;
    }

    goto LABEL_39;
  }

  v20 = 0;
LABEL_40:
  [(HUSceneActionEditorViewController *)v20 setPresentationDelegate:self];

  return v20;
}

id __71__HUQuickControlPresentationCoordinator__prepareSettingsViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) presentationContext];
  v5 = [v4 detailsViewController];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 presentationContext];
    v8 = [v7 detailsViewController];
LABEL_3:
    v9 = v8;

    goto LABEL_8;
  }

  v10 = [v6 delegate];
  if (v10)
  {
    v11 = v10;
    v12 = [*(a1 + 32) delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v7 = [*(a1 + 32) delegate];
      v8 = [v7 detailsViewControllerForPresentationCoordinator:*(a1 + 32) item:v3];
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  navigationBarTitleView = [cardViewController navigationBarTitleView];
  [navigationBarTitleView setHidden:(isKindOfClass & 1) == 0];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  presentingViewController = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
  transitionCoordinator = [presentingViewController transitionCoordinator];

  if (transitionCoordinator)
  {
    presentingViewController2 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
    transitionCoordinator2 = [presentingViewController2 transitionCoordinator];
    v8[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__HUQuickControlPresentationCoordinator_presentationControllerWillDismiss___block_invoke;
    v9[3] = &unk_277DB79B8;
    v9[4] = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__HUQuickControlPresentationCoordinator_presentationControllerWillDismiss___block_invoke_2;
    v8[3] = &unk_277DB79B8;
    [transitionCoordinator2 animateAlongsideTransition:v9 completion:v8];
  }
}

void __75__HUQuickControlPresentationCoordinator_presentationControllerWillDismiss___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75210] effectWithBlurRadius:0.0];
  v2 = [*(a1 + 32) transitionBlurView];
  [v2 setEffect:v3];
}

void __75__HUQuickControlPresentationCoordinator_presentationControllerWillDismiss___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 isCancelled];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v9 = [*(a1 + 32) delegate];
      [v9 presentationCoordinatorDidCancelDismissalTransition:*(a1 + 32)];
    }
  }

  else
  {
    v7 = [v4 _dismissChildViewController];
    v8 = [*(a1 + 32) dismissQuickControlAnimated:0];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  targetView = [(HUQuickControlPresentationCoordinator *)self targetView];
  [touchCopy locationInView:targetView];
  v8 = v7;
  v10 = v9;

  view = [touchCopy view];

  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  LOBYTE(self) = [delegate presentationCoordinator:self shouldBeginInteractivePresentationWithTouchLocation:view view:{v8, v10}];

  return self;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  v24 = *MEMORY[0x277D85DE8];
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  singleTapGestureRecognizer = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];

  if (singleTapGestureRecognizer != recognizerCopy)
  {

LABEL_4:
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v20 = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_debug_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEBUG, "%@+Controls: %@ returning NO", &v20, 0x16u);
    }

    v12 = 0;
    goto LABEL_7;
  }

  doubleTapGestureRecognizer = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];

  if (doubleTapGestureRecognizer != gestureRecognizerCopy)
  {
    goto LABEL_4;
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    v20 = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_debug_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEBUG, "%@+Controls: %@ returning YES", &v20, 0x16u);
  }

  v12 = 1;
LABEL_7:

  return v12;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  v36 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  touchGestureRecognizer = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];
  v10 = touchGestureRecognizer;
  if (touchGestureRecognizer == recognizerCopy)
  {

LABEL_6:
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v20 = NSStringFromClass(v24);
      v21 = NSStringFromSelector(a2);
      v28 = 138413058;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = recognizerCopy;
      v34 = 2112;
      v35 = gestureRecognizerCopy;
      v22 = "%@+Controls: %@ returning YES (first case) %@ %@";
      goto LABEL_16;
    }

LABEL_7:
    v16 = 1;
    goto LABEL_14;
  }

  touchGestureRecognizer2 = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];

  if (touchGestureRecognizer2 == gestureRecognizerCopy)
  {
    goto LABEL_6;
  }

  presentationInteraction = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
  gestureRecognizerForExclusionRelationship = [presentationInteraction gestureRecognizerForExclusionRelationship];
  v14 = gestureRecognizerForExclusionRelationship;
  if (gestureRecognizerForExclusionRelationship == recognizerCopy)
  {
    mutuallyExclusiveGestureRecognizers = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
    v18 = [mutuallyExclusiveGestureRecognizers containsObject:gestureRecognizerCopy];

    if (!v18)
    {
      goto LABEL_11;
    }

    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v28 = 138413058;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = recognizerCopy;
      v34 = 2112;
      v35 = gestureRecognizerCopy;
      v22 = "%@+Controls: %@ returning YES (second case) %@, %@";
LABEL_16:
      _os_log_debug_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEBUG, v22, &v28, 0x2Au);

      goto LABEL_7;
    }

    goto LABEL_7;
  }

LABEL_11:
  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(a2);
    v28 = 138412546;
    v29 = v26;
    v30 = 2112;
    v31 = v27;
    _os_log_debug_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEBUG, "%@+Controls: %@ returning NO", &v28, 0x16u);
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (double)quickControlViewController:(id)controller sourceViewInitialScaleForPresentation:(BOOL)presentation
{
  if (!presentation)
  {
    return 1.0;
  }

  activePressedItemContext = [(HUQuickControlPresentationCoordinator *)self activePressedItemContext];
  [activePressedItemContext currentViewScale];
  v6 = v5;

  return v6;
}

- (id)quickControlViewController:(id)controller applierForSourceViewTransitionWithAnimationSettings:(id)settings presenting:(BOOL)presenting
{
  settingsCopy = settings;
  activePressedItemContext = [(HUQuickControlPresentationCoordinator *)self activePressedItemContext];
  item = [activePressedItemContext item];

  v10 = [HUAnimationApplier dynamicApplierWithAnimationSettings:settingsCopy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __131__HUQuickControlPresentationCoordinator_quickControlViewController_applierForSourceViewTransitionWithAnimationSettings_presenting___block_invoke;
  v13[3] = &unk_277DC4D40;
  presentingCopy = presenting;
  v13[4] = self;
  v14 = item;
  v11 = item;
  [v10 addApplierBlock:v13];

  return v10;
}

uint64_t __131__HUQuickControlPresentationCoordinator_quickControlViewController_applierForSourceViewTransitionWithAnimationSettings_presenting___block_invoke(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = *(result + 32);
    CGAffineTransformMakeScale(&v5, 1.0, 1.0);
    return [v4 _updateOverrideAttributesWithTransform:&v5 alpha:*(v3 + 40) forItem:0.0];
  }

  return result;
}

- (BOOL)hasDetailsActionForQuickControlViewController:(id)controller item:(id)item
{
  itemCopy = item;
  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  LOBYTE(self) = [delegate hasDetailsActionForPresentationCoordinator:self item:itemCopy];

  return self;
}

- (id)detailsViewControllerForQuickControlViewController:(id)controller item:(id)item
{
  itemCopy = item;
  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  v7 = [delegate detailsViewControllerForPresentationCoordinator:self item:itemCopy];

  return v7;
}

- (void)quickControlViewControllerWillDismissDetailsViewController:(id)controller shouldDismissQuickControl:(BOOL)control
{
  if (control)
  {
    presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    item = [presentationContext item];
    [(HUQuickControlPresentationCoordinator *)self _pressedStateDidEndForItem:item clearPresentationContext:0];
  }
}

- (void)quickControlViewControllerDidTapDetailsButton:(id)button
{
  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  [cardViewController scrollToDetailsViewAnimated:1];
}

- (void)statusDetailsViewControllerDidFinish:(id)finish
{
  statusDetailsNavigationController = [(HUQuickControlPresentationCoordinator *)self statusDetailsNavigationController];
  [statusDetailsNavigationController dismissViewControllerAnimated:1 completion:0];
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  animatedCopy = animated;
  presentationCopy = presentation;
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    cardNavigationController = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    if (cardNavigationController)
    {
      v8 = 1;
    }

    else
    {
      parentViewController = [presentationCopy parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v8 = isKindOfClass ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cardNavigationController2 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    topViewController = [cardNavigationController2 topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_11:

LABEL_12:
      _dismissCardViewController = [(HUQuickControlPresentationCoordinator *)self _dismissServiceDetailsViewController:presentationCopy animated:animatedCopy];
      goto LABEL_22;
    }

    cardNavigationController3 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    topViewController2 = [cardNavigationController3 topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      goto LABEL_11;
    }

    cardNavigationController4 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];

    if (!cardNavigationController4)
    {
      goto LABEL_12;
    }
  }

  objc_opt_class();
  if (v8 & 1 | ((objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = presentationCopy;
    if ([v17 conformsToProtocol:&unk_2824C3AE0])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    requiresPresentingViewControllerDismissal = [v19 requiresPresentingViewControllerDismissal];
    if (requiresPresentingViewControllerDismissal)
    {
      _dismissCardViewController = [(HUQuickControlPresentationCoordinator *)self _dismissCardViewController];
      goto LABEL_22;
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__HUQuickControlPresentationCoordinator_finishPresentation_animated___block_invoke;
    v23[3] = &unk_277DB8488;
    v23[4] = self;
    [presentationCopy dismissViewControllerAnimated:1 completion:v23];
  }

  _dismissCardViewController = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_22:
  v21 = _dismissCardViewController;

  return v21;
}

void __69__HUQuickControlPresentationCoordinator_finishPresentation_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanupForQuickControlDismissal];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 presentationContext];
    [v6 presentationCoordinator:v4 didEndPresentationWithContext:v5];
  }
}

- (void)itemManager:(id)manager didChangeSourceItem:(id)item
{
  managerCopy = manager;
  itemCopy = item;
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  itemManager = [presentationContext itemManager];

  if (itemManager == managerCopy)
  {
    presentationContext2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    [presentationContext2 setItem:itemCopy];

    v10 = [managerCopy childItemsForItem:itemCopy ofClass:objc_opt_class()];
    presentationContext3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    [presentationContext3 setControlItems:v10];

    [(HUQuickControlPresentationCoordinator *)self _updateCardController];
  }
}

- (id)_dismissChildViewController
{
  settingsViewController = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    settingsViewController2 = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
    commitChanges = [settingsViewController2 commitChanges];
    goto LABEL_10;
  }

  settingsViewController2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  if ([settingsViewController2 hideSettings])
  {
    goto LABEL_10;
  }

  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  item = [presentationContext item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_9:

    goto LABEL_10;
  }

  settingsViewController3 = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  settingsUnlocked = [cardViewController settingsUnlocked];

  if (!settingsUnlocked)
  {
    goto LABEL_11;
  }

  settingsViewController2 = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
  [settingsViewController2 commitChanges];
LABEL_10:

LABEL_11:
  settingsViewController4 = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
  if ([settingsViewController4 conformsToProtocol:&unk_2824C3AE0])
  {
    v13 = settingsViewController4;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  [v14 setRequiresPresentingViewControllerDismissal:0];

  return [(HUQuickControlPresentationCoordinator *)self _dismissCardViewController];
}

- (id)_dismissCardViewController
{
  v3 = [(HUQuickControlPresentationCoordinator *)self dismissQuickControlAnimated:0];
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v5 = [(HUQuickControlPresentationCoordinator *)self _dismissQuickControlViewControllerAnimated:1];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HUQuickControlPresentationCoordinator__dismissCardViewController__block_invoke;
  v9[3] = &unk_277DB8620;
  objc_copyWeak(&v11, &location);
  v6 = presentationContext;
  v10 = v6;
  v7 = [v5 addCompletionBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __67__HUQuickControlPresentationCoordinator__dismissCardViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cleanupForQuickControlDismissal];
  v2 = [WeakRetained delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [WeakRetained delegate];
    [v4 presentationCoordinator:WeakRetained didEndPresentationWithContext:*(a1 + 32)];
  }

  [WeakRetained setCardViewController:0];
  [WeakRetained setCardNavigationController:0];
}

- (id)_dismissServiceDetailsViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  presentationContext = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  delegate = [(HUQuickControlPresentationCoordinator *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HUQuickControlPresentationCoordinator *)self delegate];
    [delegate2 presentationCoordinator:self willEndPresentationWithContext:presentationContext];
  }

  delegate3 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate4 = [(HUQuickControlPresentationCoordinator *)self delegate];
    [delegate4 presentationCoordinatorWillBeginTransition:self presenting:0];
  }

  transitionBlurView = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
  [transitionBlurView removeFromSuperview];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __87__HUQuickControlPresentationCoordinator__dismissServiceDetailsViewController_animated___block_invoke;
  v21 = &unk_277DB7558;
  selfCopy = self;
  v23 = presentationContext;
  v15 = presentationContext;
  [controllerCopy dismissViewControllerAnimated:animatedCopy completion:&v18];

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];

  return futureWithNoResult;
}

void __87__HUQuickControlPresentationCoordinator__dismissServiceDetailsViewController_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanupForQuickControlDismissal];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 presentationCoordinator:*(a1 + 32) didEndPresentationWithContext:*(a1 + 40)];
  }
}

- (BOOL)_isRTL
{
  cardViewController = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  traitCollection = [cardViewController traitCollection];
  v4 = [traitCollection layoutDirection] == 1;

  return v4;
}

- (CGRect)sourceFrameForAnimationController
{
  presentingViewController = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isHomeControlService = [MEMORY[0x277D14670] isHomeControlService];

    if ((isHomeControlService & 1) == 0)
    {
      presentingViewController2 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
      goto LABEL_6;
    }
  }

  else
  {
  }

  presentingViewController3 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
  presentingViewController2 = [presentingViewController3 presentingViewController];

LABEL_6:
  splitViewController = [presentingViewController2 splitViewController];
  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  }

  else
  {
    pressedTile_legacy = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [(HUQuickControlPresentationCoordinator *)self pressedTile];
  }
  v9 = ;
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (splitViewController)
  {
    v18 = splitViewController;
  }

  else
  {
    v18 = presentingViewController2;
  }

  view = [v18 view];
  [pressedTile_legacy convertRect:view toView:{v11, v13, v15, v17}];
  x = v20;
  y = v22;
  width = v24;
  height = v26;

  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
  {
    presentationController = [presentingViewController2 presentationController];
    [presentationController frameOfPresentedViewInContainerView];
    v30 = v29;
    v32 = v31;

    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = CGRectOffset(v37, v30, v32);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
  }

  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (BOOL)_supportsDoubleClick:(id)click
{
  clickCopy = click;
  if ([clickCopy conformsToProtocol:&unk_2824C4B08])
  {
    v4 = clickCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 recognizeDoubleClickGesture])
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

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

- (HUQuickControlPresentationCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end