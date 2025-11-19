@interface HUQuickControlPresentationCoordinator
- (BOOL)_isRTL;
- (BOOL)_shouldCancelPresentation;
- (BOOL)_supportsDoubleClick:(id)a3;
- (BOOL)clickPresentationInteractionShouldBegin:(id)a3;
- (BOOL)clickPresentationInteractionShouldPresent:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)hasDetailsActionForQuickControlViewController:(id)a3 item:(id)a4;
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
- (HUQuickControlPresentationCoordinator)initWithTargetView:(id)a3 delegate:(id)a4 cornerRadius:(double)a5;
- (HUQuickControlPresentationCoordinatorDelegate)delegate;
- (UITraitCollection)traitCollection;
- (UIView)targetView;
- (UIViewController)presentingViewController;
- (double)quickControlViewController:(id)a3 sourceViewInitialScaleForPresentation:(BOOL)a4;
- (id)_animationControllerForDismissedController:(id)a3;
- (id)_animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)_beginControlPresentationAnimated:(BOOL)a3;
- (id)_buildCardNavigationController;
- (id)_buildQuickControlViewController;
- (id)_buildSoftwareUpdateNavigationController;
- (id)_buildStatusDetailsNavigationController;
- (id)_createPressedContextForItem:(id)a3 userInitiated:(BOOL)a4;
- (id)_dismissCardViewController;
- (id)_dismissChildViewController;
- (id)_dismissQuickControlViewControllerAnimated:(BOOL)a3;
- (id)_dismissServiceDetailsViewController:(id)a3 animated:(BOOL)a4;
- (id)_legacyAnimationControllerForDismissedController:(id)a3;
- (id)_legacyAnimationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)_prepareSettingsViewController;
- (id)_viewControllerToPresent;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4;
- (id)createNavigationControllerForPresentationContext:(id)a3;
- (id)detailsViewControllerForQuickControlViewController:(id)a3 item:(id)a4;
- (id)dismissQuickControlAnimated:(BOOL)a3;
- (id)dismissQuickControlAnimated:(BOOL)a3 wasDismissed:(BOOL *)a4;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)presentQuickControlWithContext:(id)a3 animated:(BOOL)a4;
- (id)quickControlViewController:(id)a3 applierForSourceViewTransitionWithAnimationSettings:(id)a4 presenting:(BOOL)a5;
- (unint64_t)activationStyleForClickPresentationInteraction:(id)a3;
- (unint64_t)iconSizeInActionSetTile;
- (unint64_t)iconSizeInNavigationBar;
- (unint64_t)iconSizeInTile;
- (void)__createLegacyTransitionViewsForDismissal;
- (void)__createLegacyTransitionViewsForPresentation;
- (void)__createTransitionViewsForDismissal;
- (void)__createTransitionViewsForPresentation;
- (void)_actuateTapticFeedback;
- (void)_cleanupForQuickControlDismissal;
- (void)_configureInitialStateForPressedItemContext:(id)a3 userInitiated:(BOOL)a4;
- (void)_createTransitionViewsForDismissal;
- (void)_createTransitionViewsForPresentation;
- (void)_handleDoubleTapGesture:(id)a3;
- (void)_handleMutuallyExclusiveGesture:(id)a3;
- (void)_handlePressGesture:(id)a3;
- (void)_handleSingleTapGesture:(id)a3;
- (void)_handleTouchGesture:(id)a3;
- (void)_initiateProgrammaticBounceForItem:(id)a3;
- (void)_installGestureRecognizer;
- (void)_prepareForTapticFeedback;
- (void)_preparePressedItemContextForItem:(id)a3 startApplier:(BOOL)a4;
- (void)_pressGestureDidBecomeActive;
- (void)_pressGestureDidBeginWithLocation:(CGPoint)a3;
- (void)_pressGestureDidEnd:(BOOL)a3;
- (void)_pressedStateDidEndForItem:(id)a3 clearPresentationContext:(BOOL)a4;
- (void)_restoreOriginalTile;
- (void)_updateCardController;
- (void)_updateOverrideAttributesWithScale:(double)a3 forItem:(id)a4;
- (void)_updateOverrideAttributesWithTransform:(CGAffineTransform *)a3 alpha:(double)a4 forItem:(id)a5;
- (void)_validatePresentationContext:(id)a3;
- (void)addMutuallyExclusiveGestureRecognizer:(id)a3;
- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4;
- (void)itemManager:(id)a3 didChangeSourceItem:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)playBounceForItem:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)quickControlViewControllerDidTapDetailsButton:(id)a3;
- (void)quickControlViewControllerWillDismissDetailsViewController:(id)a3 shouldDismissQuickControl:(BOOL)a4;
- (void)removeAllTransitionSubviews;
- (void)removeMutuallyExclusiveGestureRecognizer:(id)a3;
- (void)setIsEditing:(BOOL)a3;
- (void)setPresentationContext:(id)a3;
- (void)statusDetailsViewControllerDidFinish:(id)a3;
@end

@implementation HUQuickControlPresentationCoordinator

- (HUQuickControlPresentationCoordinator)initWithTargetView:(id)a3 delegate:(id)a4 cornerRadius:(double)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = HUQuickControlPresentationCoordinator;
  v10 = [(HUQuickControlPresentationCoordinator *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_targetView, v8);
    objc_storeWeak(&v11->_delegate, v9);
    v11->_cornerRadius = a5;
    v12 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    pressedItemContexts = v11->_pressedItemContexts;
    v11->_pressedItemContexts = v12;

    v14 = objc_opt_new();
    mutuallyExclusiveGestureRecognizers = v11->_mutuallyExclusiveGestureRecognizers;
    v11->_mutuallyExclusiveGestureRecognizers = v14;

    [(HUQuickControlPresentationCoordinator *)v11 _installGestureRecognizer];
    v16 = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__HUQuickControlPresentationCoordinator_initWithTargetView_delegate_cornerRadius___block_invoke;
    v18[3] = &unk_277DB8488;
    v19 = v11;
    [v16 performBlock:v18];
  }

  return v11;
}

- (UITraitCollection)traitCollection
{
  v3 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v4 = [v3 traitCollectionForPresentationCoordinator:self];

  return v4;
}

- (UIViewController)presentingViewController
{
  v2 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v3 = [v2 sourceViewController];

  return v3;
}

- (HUPressedItemContext)activePressedItemContext
{
  v3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v4 = [v3 item];

  if (v4)
  {
    v5 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPresentationContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(HUQuickControlPresentationCoordinator *)self _validatePresentationContext:v4];
  }

  v5 = [(HUQuickControlPresentationContext *)self->_presentationContext itemManager];
  [v5 setDelegate:0];

  v6 = [(HUQuickControlPresentationContext *)v4 itemManager];
  [v6 setDelegate:self];

  presentationContext = self->_presentationContext;
  self->_presentationContext = v4;
}

- (void)addMutuallyExclusiveGestureRecognizer:(id)a3
{
  v7 = a3;
  v4 = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
    [v6 addObject:v7];

    [v7 addTarget:self action:sel__handleMutuallyExclusiveGesture_];
  }
}

- (void)removeMutuallyExclusiveGestureRecognizer:(id)a3
{
  v7 = a3;
  v4 = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
  v5 = [v4 containsObject:v7];

  if (v5)
  {
    v6 = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
    [v6 removeObject:v7];

    [v7 removeTarget:self action:sel__handleMutuallyExclusiveGesture_];
  }
}

- (void)setIsEditing:(BOOL)a3
{
  if (self->_isEditing != a3)
  {
    v3 = a3;
    self->_isEditing = a3;
    v5 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];

    if (v5)
    {
      v7 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
      v6 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
      if (v3)
      {
        [v7 removeInteraction:v6];
      }

      else
      {
        [v7 addInteraction:v6];
      }
    }
  }
}

- (id)createNavigationControllerForPresentationContext:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "createNavigationControllerForPresentationContext Creating navigation controller for presentation context: %@", &v8, 0xCu);
  }

  [(HUQuickControlPresentationCoordinator *)self setPresentationContext:v4];
  v6 = [(HUQuickControlPresentationCoordinator *)self _buildCardNavigationController];

  return v6;
}

- (id)_buildCardNavigationController
{
  if (!a1)
  {
    v21 = 0;
    goto LABEL_57;
  }

  if (([MEMORY[0x277D14CE8] isProxHandOffV2Config] & 1) == 0)
  {
    v13 = [a1 _buildQuickControlViewController];
    v14 = [a1 presentationContext];
    v15 = [v14 item];
    v16 = [a1 hasDetailsActionForQuickControlViewController:v13 item:v15];

    if ((v16 & 1) != 0 || ([a1 presentationContext], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "item"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "conformsToProtocol:", &unk_28251B0C8), v18, v17, (v19 & 1) == 0))
    {
      v20 = [a1 _prepareSettingsViewController];
      v21 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v20];

      goto LABEL_57;
    }
  }

  [a1 setCardViewController:0];
  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    v2 = [a1 presentationContext];
    v3 = [v2 isConfiguredForNonHomeUser];

    if (v3)
    {
      v4 = [HUCardViewController alloc];
      v5 = [a1 presentationContext];
      v6 = [v5 controlItems];
      v7 = [(HUCardViewController *)v4 initWithControlItems:v6];
      [a1 setCardViewController:v7];

      v8 = [a1 cardViewController];
      [v8 setIsConfiguredForNonHomeUser:1];

      [a1 _updateCardController];
    }
  }

  v9 = [a1 cardViewController];

  if (!v9)
  {
    v10 = objc_alloc_init(HUCardViewController);
    [a1 setCardViewController:v10];
  }

  v11 = [a1 presentationContext];
  v12 = [v11 item];

  if (v12)
  {
    [a1 _updateCardController];
  }

  else
  {
    v22 = [a1 presentationContext];
    v23 = [v22 itemManager];
    v24 = [v23 reloadAndUpdateAllItemsFromSenderSelector:sel__buildCardNavigationController];
  }

  v25 = [a1 cardViewController];
  [v25 setDelegate:a1];

  v26 = [a1 delegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    v28 = [a1 delegate];
    v29 = [a1 presentationContext];
    [v28 presentationCoordinator:a1 willBeginPresentationWithContext:v29];
  }

  v30 = [a1 delegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = [a1 delegate];
    v33 = [v32 presentationCoordinatorShouldDisablePullToUnlockSettings:a1];
    v34 = [a1 cardViewController];
    [v34 setDisablePullToUnlockSettings:v33];
  }

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v35 = objc_alloc(MEMORY[0x277D757A0]);
    v36 = [a1 cardViewController];
    v21 = [v35 initWithRootViewController:v36];

    [v21 setModalPresentationStyle:2];
    v37 = [a1 quickControlViewController];
    v38 = [v37 controlContainerView];
    [v38 setNeedsLayout];

    v39 = [a1 quickControlViewController];
    v40 = [v39 controlContainerView];
    [v40 layoutIfNeeded];

    v41 = [a1 quickControlViewController];
    v42 = [v41 controlContainerView];
    [v42 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v44 = v43;
    v46 = v45;

    v47 = [v21 navigationBar];
    [v47 bounds];
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

      [v21 setPreferredContentSize:{v44, v50}];
    }

    if ([MEMORY[0x277D14670] isMacShortcuts])
    {
      [v21 preferredContentSize];
      [v21 setPreferredContentSize:668.0];
    }

    goto LABEL_57;
  }

  v51 = [HUQuickControlNavigationController alloc];
  v52 = [a1 cardViewController];
  v53 = [(HUQuickControlNavigationController *)v51 initWithRootViewController:v52];
  [a1 setCardNavigationController:v53];

  v54 = [a1 presentationContext];
  if ([v54 prefersSystemTransitions])
  {
    v55 = 0;
  }

  else
  {
    v55 = a1;
  }

  v56 = [a1 cardNavigationController];
  [v56 setTransitioningDelegate:v55];

  v57 = [a1 cardNavigationController];
  v58 = [v57 presentationController];
  [v58 setDelegate:a1];

  v59 = [a1 cardNavigationController];
  [v59 setDelegate:a1];

  v60 = [a1 settingsViewController];
  if ([v60 conformsToProtocol:&unk_2825BD480])
  {
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  v62 = v61;

  if (v62)
  {
    v63 = [a1 presentationContext];
    v64 = [v63 item];
    v65 = [a1 cardNavigationController];
    [v62 recreateDetailsViewFor:v64 navigationController:v65 dismiss:0];
  }

  v66 = [a1 presentationContext];
  if (([v66 prefersSystemTransitions] & 1) == 0)
  {
    v67 = [a1 cardNavigationController];
    v68 = [v67 presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_53;
    }

    v70 = [a1 cardNavigationController];
    v66 = [v70 presentationController];

    if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
    {
      [a1 pressedTile_legacy];
    }

    else
    {
      [a1 pressedTile];
    }
    v71 = ;
    v72 = [a1 presentingViewController];
    objc_opt_class();
    v73 = objc_opt_isKindOfClass();

    if (v73)
    {
      v74 = [a1 presentingViewController];
      v75 = [v74 presentationController];
      objc_opt_class();
      v76 = objc_opt_isKindOfClass();

      if (v76)
      {
        v77 = [v74 presentationController];
        v78 = [v77 _sourceView];

        if (v78)
        {
          v79 = [v77 _sourceView];

          v71 = v79;
        }
      }
    }

    [v66 _setSourceView:v71];
    if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
    {
      v80 = [a1 pressedTile_legacy];
      v81 = [v80 layoutOptions];
      [v81 cellCornerRadius];
      [v66 _setCornerRadiusForPresentationAndDismissal:?];
    }

    else
    {
      v80 = [a1 pressedTile];
      [v80 backgroundCornerRadius];
      [v66 _setCornerRadiusForPresentationAndDismissal:?];
    }

    [a1 cornerRadius];
    [v66 _setPreferredCornerRadius:?];
    [v66 _setShouldDismissWhenTappedOutside:1];
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] && objc_msgSend(MEMORY[0x277D14CE8], "isAnIPad"))
    {
      [v66 _setIndexOfLastUndimmedDetent:0];
    }
  }

LABEL_53:
  v82 = [a1 presentingViewController];
  v83 = [v82 view];
  v84 = [v83 window];
  v85 = [v84 _rootSheetPresentationController];
  [v85 _setShouldScaleDownBehindDescendantSheets:0];

  v86 = [a1 delegate];
  LOBYTE(v83) = objc_opt_respondsToSelector();

  if (v83)
  {
    v87 = [a1 delegate];
    v88 = [v87 shouldOverrideTraitCollectionForPresentationCoordinator:a1];

    if (v88)
    {
      v89 = [a1 delegate];
      v90 = [v89 traitCollectionForPresentationCoordinator:a1];

      v91 = [v90 userInterfaceStyle];
      v92 = [a1 cardNavigationController];
      [v92 setOverrideUserInterfaceStyle:v91];
    }
  }

  v21 = [a1 cardNavigationController];

LABEL_57:

  return v21;
}

- (void)playBounceForItem:(id)a3
{
  v8 = a3;
  v4 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v5 = [v4 objectForKey:v8];

  if (![v5 isUserInitiated] || (objc_msgSend(v5, "isActive") & 1) == 0)
  {
    if (v5)
    {
      [(HUQuickControlPresentationCoordinator *)self _configureInitialStateForPressedItemContext:v5 userInitiated:0];
    }

    else
    {
      v5 = [(HUQuickControlPresentationCoordinator *)self _createPressedContextForItem:v8 userInitiated:0];
      v6 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
      [v6 setObject:v5 forKey:v8];

      v7 = [v5 applier];
      [v7 start];
    }

    [(HUQuickControlPresentationCoordinator *)self _initiateProgrammaticBounceForItem:v8];
  }
}

- (void)_handleMutuallyExclusiveGesture:(id)a3
{
  if ([a3 state] == 1)
  {
    v4 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
    v5 = [v4 gestureRecognizerForExclusionRelationship];
    [v5 setEnabled:0];

    v7 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
    v6 = [v7 gestureRecognizerForExclusionRelationship];
    [v6 setEnabled:1];
  }
}

- (void)_installGestureRecognizer
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleDoubleTapGesture_];
    [(HUQuickControlPresentationCoordinator *)self setDoubleTapGestureRecognizer:v3];

    v4 = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];
    [v4 setNumberOfTapsRequired:2];

    v5 = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];
    [v5 setName:@"doubleTapGestureRecognizer"];

    v6 = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];
    [v6 setMaximumIntervalBetweenSuccessiveTaps:0.15];

    v7 = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];
    [v7 setDelegate:self];

    v8 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
    v9 = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];
    [v8 addGestureRecognizer:v9];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D75E40]) initWithDelegate:self];
    [(HUQuickControlPresentationCoordinator *)self setPresentationInteraction:v10];

    v11 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
    v12 = [v11 gestureRecognizerForExclusionRelationship];
    [v12 setDelegate:self];

    v13 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
    [v13 setAllowSimultaneousRecognition:1];

    v8 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
    v9 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
    [v8 addInteraction:v9];
  }

  v14 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleSingleTapGesture_];
  [(HUQuickControlPresentationCoordinator *)self setSingleTapGestureRecognizer:v14];

  v15 = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];
  [v15 setDelegate:self];

  v16 = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];
  [v16 setDelaysTouchesEnded:1];

  v17 = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];
  [v17 setName:@"singleTapGestureRecognizer"];

  v18 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
  v19 = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];
  [v18 addGestureRecognizer:v19];

  v20 = [[HUTouchGestureRecognizer alloc] initWithTarget:self action:sel__handleTouchGesture_];
  [(HUQuickControlPresentationCoordinator *)self setTouchGestureRecognizer:v20];

  v21 = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];
  [v21 setDelegate:self];

  v22 = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];
  [v22 setDelaysTouchesEnded:1];

  v23 = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];
  [v23 setName:@"touchGestureRecognizer"];

  v25 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
  v24 = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];
  [v25 addGestureRecognizer:v24];
}

- (void)_handleSingleTapGesture:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = [(HUQuickControlPresentationCoordinator *)self isQuickControlPresented];
    v6 = HFLogForCategory();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v53 = 138412546;
        v54 = v9;
        v55 = 2112;
        v56 = v4;
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
        v56 = v4;
        _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@+Controls handling single tap gesture %@", &v53, 0x16u);
      }

      v14 = [(HUQuickControlPresentationCoordinator *)self targetView];
      [v4 locationInView:v14];
      v16 = v15;
      v18 = v17;

      v19 = [(HUQuickControlPresentationCoordinator *)self delegate];
      v20 = [v19 presentationCoordinator:self contextForPresentationAtPoint:{v16, v18}];
      [(HUQuickControlPresentationCoordinator *)self setPresentationContext:v20];

      v21 = MEMORY[0x277D143D8];
      v22 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      [v21 logAndSendTileInteractionEventOfType:1 withPresentationContext:v22 presentationCoordinator:self];

      v23 = [(HUQuickControlPresentationCoordinator *)self delegate];
      LOBYTE(v22) = objc_opt_respondsToSelector();

      if (v22)
      {
        v24 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v25 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        [v24 presentationCoordinatorSendTileInteractionEventOfType:1 withPresentationContext:v25 presentationCoordinator:self];
      }

      v26 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v27 = [v26 item];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [HUEnergyAnalytics saveTapEvent:46 withInteractionType:1];
      }

      v29 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v30 = [v29 item];
      [(HUQuickControlPresentationCoordinator *)self _preparePressedItemContextForItem:v30 startApplier:1];

      v31 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v32 = [v31 item];
      [(HUQuickControlPresentationCoordinator *)self _initiateProgrammaticBounceForItem:v32];

      objc_opt_class();
      v33 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
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

      v40 = [(HUQuickControlPresentationCoordinator *)self delegate];
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        v42 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v43 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        v44 = [v43 item];
        v45 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        v46 = [v45 tappedArea];
        [v42 presentationCoordinator:self didRecognizeTapForItem:v44 tappedArea:v46];
      }

      v47 = [(HUQuickControlPresentationCoordinator *)self delegate];
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
      v56 = v4;
      v10 = "%@+Controls ignoring single tap gesture %@ because its state isn't recognized";
      goto LABEL_7;
    }
  }
}

- (void)_handleTouchGesture:(id)a3
{
  v24 = a3;
  v4 = [v24 state];
  if ((v4 - 3) < 2)
  {
    v5 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }

    v7 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v8 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    v9 = [v8 item];
    v10 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    v11 = [v10 tappedArea];
    [v7 presentationCoordinator:self touchDidEndForItem:v9 tappedArea:v11];
    goto LABEL_11;
  }

  if (v4 != 1)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  v12 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [(HUQuickControlPresentationCoordinator *)self targetView];
  [v24 locationInView:v15];
  v17 = v16;
  v19 = v18;

  v7 = [v14 indexPathForItemAtPoint:{v17, v19}];

  if (v7)
  {
    v20 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v21 = [v20 presentationCoordinator:self contextForPresentationAtPoint:{v17, v19}];
    [(HUQuickControlPresentationCoordinator *)self setPresentationContext:v21];

    v22 = [(HUQuickControlPresentationCoordinator *)self delegate];
    LOBYTE(v21) = objc_opt_respondsToSelector();

    if (v21)
    {
      v8 = [(HUQuickControlPresentationCoordinator *)self delegate];
      v9 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v10 = [v9 item];
      v11 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v23 = [v11 tappedArea];
      [v8 presentationCoordinator:self touchDidBeginForItem:v10 tappedArea:v23];

LABEL_11:
    }
  }

LABEL_13:
}

- (void)_handleDoubleTapGesture:(id)a3
{
  v23 = a3;
  if ([v23 state] == 3)
  {
    v4 = [(HUQuickControlPresentationCoordinator *)self targetView];
    [v23 locationInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v10 = [v9 presentationCoordinator:self contextForPresentationAtPoint:{v6, v8}];

    if (!v10)
    {
LABEL_22:

      goto LABEL_23;
    }

    [MEMORY[0x277D143D8] logAndSendTileInteractionEventOfType:2 withPresentationContext:v10 presentationCoordinator:self];
    v11 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(HUQuickControlPresentationCoordinator *)self delegate];
      [v13 presentationCoordinatorSendTileInteractionEventOfType:2 withPresentationContext:v10 presentationCoordinator:self];
    }

    objc_opt_class();
    v14 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
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

- (void)_handlePressGesture:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlPresentationCoordinator *)self targetView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v4 state];
  if (v10 == 4)
  {
    v11 = self;
    v12 = 0;
  }

  else
  {
    if (v10 != 3)
    {
      if (v10 == 1)
      {

        [(HUQuickControlPresentationCoordinator *)self _pressGestureDidBeginWithLocation:v7, v9];
      }

      return;
    }

    v11 = self;
    v12 = 1;
  }

  [(HUQuickControlPresentationCoordinator *)v11 _pressGestureDidEnd:v12];
}

- (void)_pressGestureDidBeginWithLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v7 = [v6 presentationCoordinator:self contextForPresentationAtPoint:{x, y}];
  [(HUQuickControlPresentationCoordinator *)self setPresentationContext:v7];

  v8 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v9 = [v8 item];
  [(HUQuickControlPresentationCoordinator *)self _preparePressedItemContextForItem:v9 startApplier:1];

  objc_initWeak(&location, self);
  v10 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __75__HUQuickControlPresentationCoordinator__pressGestureDidBeginWithLocation___block_invoke;
  v15 = &unk_277DB8770;
  objc_copyWeak(&v16, &location);
  v11 = [v10 afterDelay:&v12 performBlock:0.15];
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
  v2 = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isEnabled])
        {
          [v7 setEnabled:0];
          [v7 setEnabled:1];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_pressGestureDidEnd:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUQuickControlPresentationCoordinator *)self pressGestureActiveTimerCancellationToken];
  [v5 cancel];

  [(HUQuickControlPresentationCoordinator *)self setPressGestureActiveTimerCancellationToken:0];
  v6 = [(HUQuickControlPresentationCoordinator *)self activePressedItemContext];
  if (v6)
  {
    v26 = v6;
    v7 = [v6 applier];
    [v7 setCompletesWhenAtRest:1];

    [v26 setActive:0];
    v8 = CACurrentMediaTime();
    [v26 beginTime];
    v6 = v26;
    if (v3)
    {
      v10 = v8 - v9;
      v11 = MEMORY[0x277D143D8];
      v12 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      if (v10 <= 0.25)
      {
        [v11 logAndSendTileInteractionEventOfType:1 withPresentationContext:v12 presentationCoordinator:self];

        v17 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v18 = objc_opt_respondsToSelector();

        if (v18)
        {
          v19 = [(HUQuickControlPresentationCoordinator *)self delegate];
          v20 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
          [v19 presentationCoordinatorSendTileInteractionEventOfType:1 withPresentationContext:v20 presentationCoordinator:self];
        }

        v15 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
        if (v15)
        {
          goto LABEL_12;
        }

        v21 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v22 = objc_opt_respondsToSelector();

        v6 = v26;
        if ((v22 & 1) == 0)
        {
          goto LABEL_13;
        }

        v15 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v16 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        v23 = [v16 item];
        v24 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        v25 = [v24 tappedArea];
        [v15 presentationCoordinator:self didRecognizeTapForItem:v23 tappedArea:v25];
      }

      else
      {
        [v11 logAndSendTileInteractionEventOfType:3 withPresentationContext:v12 presentationCoordinator:self];

        v13 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v14 = objc_opt_respondsToSelector();

        v6 = v26;
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        v15 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v16 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
        [v15 presentationCoordinatorSendTileInteractionEventOfType:3 withPresentationContext:v16 presentationCoordinator:self];
      }

LABEL_12:
      v6 = v26;
    }
  }

LABEL_13:
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlPresentationCoordinator *)self targetView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v4 view];

  v11 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) != 0 && (-[HUQuickControlPresentationCoordinator delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 presentationCoordinator:self shouldBeginInteractivePresentationWithTouchLocation:v10 view:{v7, v9}], v13, !v14))
  {
    v20 = 0;
  }

  else
  {
    objc_opt_class();
    v15 = [(HUQuickControlPresentationCoordinator *)self _gestureInstallationView];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
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

        v24 = [(HUQuickControlPresentationCoordinator *)self delegate];
        v25 = [v24 presentationCoordinator:self contextForPresentationAtPoint:{v7, v9}];
        [(HUQuickControlPresentationCoordinator *)self setPresentationContext:v25];

        v26 = [(HUQuickControlPresentationCoordinator *)self delegate];
        LOBYTE(v25) = objc_opt_respondsToSelector();

        if ((v25 & 1) != 0 && (-[HUQuickControlPresentationCoordinator delegate](self, "delegate"), v27 = objc_claimAutoreleasedReturnValue(), -[HUQuickControlPresentationCoordinator presentationContext](self, "presentationContext"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v27 presentationCoordinator:self shouldBeginLongPressPresentationWithContext:v28], v28, v27, !v29))
        {
          v20 = 0;
        }

        else
        {
          v30 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
          v31 = [v30 item];
          [(HUQuickControlPresentationCoordinator *)self _preparePressedItemContextForItem:v31 startApplier:0];

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

- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4
{
  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    v5 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];

    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = objc_alloc(MEMORY[0x277D76350]);
    v7 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  }

  else
  {
    v5 = [(HUQuickControlPresentationCoordinator *)self pressedTile];

    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = objc_alloc(MEMORY[0x277D76350]);
    v7 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  }

  v8 = v7;
  v5 = [v6 initWithView:v7];

LABEL_7:

  return v5;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)a3
{
  v4 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v7 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    v8 = [v6 presentationCoordinator:self shouldBeginLongPressPresentationWithContext:v7];

    if (!v8)
    {
      return 0;
    }
  }

  v9 = MEMORY[0x277D143D8];
  v10 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  [v9 logAndSendTileInteractionEventOfType:3 withPresentationContext:v10 presentationCoordinator:self];

  v11 = [(HUQuickControlPresentationCoordinator *)self delegate];
  LOBYTE(v10) = objc_opt_respondsToSelector();

  if (v10)
  {
    v12 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v13 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    [v12 presentationCoordinatorSendTileInteractionEventOfType:3 withPresentationContext:v13 presentationCoordinator:self];
  }

  v14 = 1;
  v15 = [(HUQuickControlPresentationCoordinator *)self _beginControlPresentationAnimated:1];
  return v14;
}

- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4
{
  if (a4 && ![(HUQuickControlPresentationCoordinator *)self isQuickControlPresented])
  {
    v5 = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];
    v6 = [v5 state];

    if (v6 == 5)
    {
      v8 = [(HUQuickControlPresentationCoordinator *)self activePressedItemContext];
      v7 = [v8 item];
      [(HUQuickControlPresentationCoordinator *)self _updateOverrideAttributesWithScale:v7 forItem:1.0];
    }
  }
}

- (unint64_t)activationStyleForClickPresentationInteraction:(id)a3
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

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = MEMORY[0x277D14CE8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if ([v8 shouldUseLegacyQuickControlPresentation])
  {
    [(HUQuickControlPresentationCoordinator *)self _legacyAnimationControllerForPresentedController:v11 presentingController:v10 sourceController:v9];
  }

  else
  {
    [(HUQuickControlPresentationCoordinator *)self _animationControllerForPresentedController:v11 presentingController:v10 sourceController:v9];
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

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = MEMORY[0x277D14CE8];
  v5 = a3;
  if ([v4 shouldUseLegacyQuickControlPresentation])
  {
    [(HUQuickControlPresentationCoordinator *)self _legacyAnimationControllerForDismissedController:v5];
  }

  else
  {
    [(HUQuickControlPresentationCoordinator *)self _animationControllerForDismissedController:v5];
  }
  v6 = ;

  return v6;
}

- (void)__createTransitionViewsForPresentation
{
  [(HUQuickControlPresentationCoordinator *)self removeAllTransitionSubviews];
  v3 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  [v3 updateUIWithAnimation:0];

  v4 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v5 = [v4 navigationBarTitleView];
  v6 = [v5 summaryView];
  [v6 setHidden:1];

  v7 = [MEMORY[0x277D75348] clearColor];
  v8 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v9 = [v8 navigationBarTitleView];
  [v9 setBackgroundColor:v7];

  v10 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v11 = [v10 view];
  [v11 setAlpha:0.0];

  v12 = [MEMORY[0x277D75348] clearColor];
  v13 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v14 = [v13 view];
  [v14 setBackgroundColor:v12];

  if (([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] & 1) == 0)
  {
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlPresentationCoordinator *)self setTransitionBackgroundView:v15];

    v16 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v17 = [v16 backgroundColor];
    v18 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [v18 setBackgroundColor:v17];

    v19 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [v19 setHidden:1];

    v20 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [v20 setAlpha:1.0];

    v21 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [v21 tileFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [v30 setFrame:{v23, v25, v27, v29}];

    v31 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [v31 setNeedsLayout];

    v32 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v33 = [v32 view];
    v34 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
    [v33 addSubview:v34];

    v35 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v36 = [v35 createBackgroundBlurView];
    [(HUQuickControlPresentationCoordinator *)self setPressedTileBlurEffectView:v36];

    v37 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v37 setHidden:1];

    v38 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v38 setAlpha:1.0];

    v39 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [v39 tileFrame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v48 setFrame:{v41, v43, v45, v47}];

    v49 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v49 setNeedsLayout];

    v50 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v51 = [v50 view];
    v52 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v51 insertSubview:v52 atIndex:0];
  }

  v53 = [MEMORY[0x277D75210] effectWithBlurRadius:0.0];
  v54 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v53];
  [(HUQuickControlPresentationCoordinator *)self setTransitionBlurView:v54];

  v55 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
  [v55 setAutoresizingMask:18];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v56 = [MEMORY[0x277D759A0] mainScreen];
    [v56 bounds];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [v65 setFrame:{v58, v60, v62, v64}];

    v66 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v67 = [v66 view];
    v68 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [v67 insertSubview:v68 atIndex:0];
  }

  else
  {
    v69 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
    v70 = [v69 view];
    [v70 bounds];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [v79 setFrame:{v72, v74, v76, v78}];

    v66 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
    v67 = [v66 tabBarController];
    v68 = [v67 view];
    v80 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [v68 addSubview:v80];
  }

  v81 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v82 = [v81 closeButton];
  [v82 setAlpha:0.0];

  v83 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v84 = [v83 baseIconViewConfiguration];

  v85 = objc_alloc_init(HUBaseIconView);
  [(HUQuickControlPresentationCoordinator *)self setTransitionBaseIconView:v85];

  v86 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v86 setConfiguration:v84];

  v87 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  [v87 iconViewTileFrame];
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v96 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v96 setFrame:{v89, v91, v93, v95}];

  v97 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v97 setHidden:1];

  v98 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v98 setNeedsLayout];

  v99 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v99 layoutIfNeeded];

  v100 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v101 = [v100 view];
  v102 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v101 addSubview:v102];

  v103 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v104 = [v103 prefixString];

  if (v104)
  {
    v105 = objc_opt_new();
    [(HUQuickControlPresentationCoordinator *)self setTransitionPrefixLabel:v105];

    v106 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v107 = [v106 prefixString];
    v108 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v108 setText:v107];

    v109 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v110 = [v109 prefixLabelFont];
    v111 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v111 setFont:v110];

    v112 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v113 = [v112 prefixLabelTextColor];
    v114 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v114 setTextColor:v113];

    v115 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [v115 prefixLabelTileFrame];
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v124 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v124 setFrame:{v117, v119, v121, v123}];

    v125 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v125 setNumberOfLines:1];

    v126 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v126 setHidden:1];

    v127 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v127 setAllowsDefaultTighteningForTruncation:1];

    v128 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v128 setContentMode:1];

    v129 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v129 setAlpha:1.0];

    v130 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v130 setNeedsLayout];

    v131 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v132 = [v131 view];
    v133 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v132 addSubview:v133];
  }

  v134 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v135 = [v134 primaryString];

  if (v135)
  {
    v136 = objc_opt_new();
    [(HUQuickControlPresentationCoordinator *)self setTransitionPrimaryLabel:v136];

    v137 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v138 = [v137 primaryString];
    v139 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v139 setText:v138];

    v140 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v141 = [v140 primaryLabelFont];
    v142 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v142 setFont:v141];

    v143 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v144 = [v143 primaryLabelTextColor];
    v145 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v145 setTextColor:v144];

    v146 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [v146 primaryLabelTileFrame];
    v148 = v147;
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v155 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v155 setFrame:{v148, v150, v152, v154}];

    v156 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v156 setNumberOfLines:0];

    v157 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v157 setHidden:1];

    v158 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v158 setAllowsDefaultTighteningForTruncation:1];

    v159 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v159 setContentMode:1];

    v160 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v160 setNeedsLayout];

    v161 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v162 = [v161 view];
    v163 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v162 addSubview:v163];
  }

  v164 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v165 = [v164 secondaryString];
  if (v165)
  {
  }

  else
  {
    v166 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v167 = [v166 secondaryAttributedString];

    if (!v167)
    {
      return;
    }
  }

  v168 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabelVibrantEffectView:v168];

  v169 = objc_opt_new();
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabel:v169];

  v170 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v171 = [v170 secondaryString];

  v172 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v173 = v172;
  if (v171)
  {
    v174 = [v172 secondaryString];
    v175 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v175 setText:v174];
  }

  else
  {
    v174 = [v172 secondaryAttributedString];
    v175 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v175 setAttributedText:v174];
  }

  v176 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v177 = [v176 secondaryLabelFont];
  v178 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v178 setFont:v177];

  v179 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v180 = [v179 secondaryLabelTextColor];
  v181 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v181 setTextColor:v180];

  v182 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v182 setHidden:1];

  v183 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  [v183 secondaryLabelTileFrame];
  v185 = v184;
  v187 = v186;
  v189 = v188;
  v191 = v190;
  v192 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v192 setFrame:{v185, v187, v189, v191}];

  v193 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v193 bounds];
  v195 = v194;
  v197 = v196;
  v199 = v198;
  v201 = v200;
  v202 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v202 setFrame:{v195, v197, v199, v201}];

  v203 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v203 setHidden:1];

  v204 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v204 setNumberOfLines:0];

  v205 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v205 setAdjustsFontSizeToFitWidth:1];

  v206 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v206 setMinimumScaleFactor:0.8];

  v207 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v207 setAllowsDefaultTighteningForTruncation:1];

  v208 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v208 setContentMode:1];

  v209 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v209 sizeToFit];

  v210 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v210 setNeedsLayout];

  v211 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  v212 = [v211 contentView];
  v213 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v212 addSubview:v213];

  v214 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v214 setNeedsLayout];

  v217 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v215 = [v217 view];
  v216 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v215 addSubview:v216];
}

- (id)_animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  [(HUQuickControlPresentationCoordinator *)self _createTransitionViewsForPresentation:a3];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  [v3 updateUIWithAnimation:0];

  v4 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  [v4 setHidden:1];

  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionBackgroundView:v5];

  v6 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v7 = [v6 backgroundColor];
  v8 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [v8 setBackgroundColor:v7];

  v9 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [v9 setHidden:1];

  v10 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [v10 setAlpha:0.0];

  v11 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v12 = [v11 view];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [v22 setNeedsLayout];

  v23 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v24 = [v23 view];
  v25 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [v24 addSubview:v25];

  v26 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v27 = [v26 createBackgroundBlurView];
  [(HUQuickControlPresentationCoordinator *)self setPressedTileBlurEffectView:v27];

  v28 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [v28 setHidden:1];

  v29 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [v29 setAlpha:1.0];

  v30 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v31 = [v30 view];
  [v31 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [v40 setFrame:{v33, v35, v37, v39}];

  v41 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [v41 setNeedsLayout];

  v42 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v43 = [v42 view];
  v44 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [v43 insertSubview:v44 atIndex:0];

  v45 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v46 = [v45 baseIconViewConfiguration];

  v47 = [v46 appearance];
  [v46 setAppearance:3];
  v48 = objc_alloc_init(HUBaseIconView);
  [(HUQuickControlPresentationCoordinator *)self setTransitionBaseIconView:v48];

  v49 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v49 setConfiguration:v46];

  v50 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v50 prepareForTransitionToTargetViewState:v47];

  [(HUQuickControlPresentationCoordinator *)self baseIconFrameInNavigationBar];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v59 setFrame:{v52, v54, v56, v58}];

  v60 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v60 setHidden:1];

  v61 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v61 setNeedsLayout];

  v62 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v63 = [v62 view];
  v64 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v63 addSubview:v64];

  v65 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v66 = [v65 prefixString];

  if (v66)
  {
    v67 = objc_opt_new();
    [(HUQuickControlPresentationCoordinator *)self setTransitionPrefixLabel:v67];

    v68 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v69 = [v68 prefixString];
    v70 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v70 setText:v69];

    v71 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v72 = [v71 prefixLabelFont];
    v73 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v73 setFont:v72];

    v74 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v75 = [v74 prefixLabelTextColor];
    v76 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v76 setTextColor:v75];

    v77 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [v77 prefixLabelTileFrame];
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v86 setFrame:{v79, v81, v83, v85}];

    v87 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v87 setNumberOfLines:1];

    v88 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v88 setHidden:1];

    v89 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v89 setContentMode:1];

    v90 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v90 setAlpha:0.0];

    v91 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v91 setNeedsLayout];

    v92 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v93 = [v92 view];
    v94 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
    [v93 addSubview:v94];
  }

  v95 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v96 = [v95 primaryString];

  if (v96)
  {
    v97 = objc_opt_new();
    [(HUQuickControlPresentationCoordinator *)self setTransitionPrimaryLabel:v97];

    v98 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    v99 = [v98 navigationBarTitleView];
    v100 = [v99 summaryView];
    v101 = [v100 primaryLabel];
    v102 = [v101 font];
    v103 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v103 setFont:v102];

    v104 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    v105 = [v104 navigationBarTitleView];
    v106 = [v105 summaryView];
    v107 = [v106 primaryLabel];
    v108 = [v107 text];
    v109 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v109 setText:v108];

    v110 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    v111 = [v110 navigationBarTitleView];
    v112 = [v111 summaryView];
    v113 = [v112 primaryLabel];
    v114 = [v113 textColor];
    v115 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v115 setTextColor:v114];

    v116 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v116 setNumberOfLines:0];

    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInNavigationBar];
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v125 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v125 setFrame:{v118, v120, v122, v124}];

    v126 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v126 setHidden:1];

    v127 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v127 setContentMode:1];

    v128 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v128 sizeToFit];

    v129 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v129 setNeedsLayout];

    v130 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v131 = [v130 view];
    v132 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v131 addSubview:v132];
  }

  v133 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
  v134 = [v133 secondaryString];
  if (v134)
  {
  }

  else
  {
    v135 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    v136 = [v135 secondaryAttributedString];

    if (!v136)
    {
      return;
    }
  }

  v137 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabelVibrantEffectView:v137];

  v138 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabel:v138];

  v139 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v140 = [v139 navigationBarTitleView];
  v141 = [v140 summaryView];
  v142 = [v141 secondaryLabel];
  v143 = [v142 font];
  v144 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v144 setFont:v143];

  v145 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v146 = [v145 navigationBarTitleView];
  v147 = [v146 summaryView];
  v148 = [v147 secondaryLabel];
  v149 = [v148 textColor];
  v150 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v150 setTextColor:v149];

  v151 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v152 = [v151 navigationBarTitleView];
  v153 = [v152 summaryView];
  v154 = [v153 secondaryLabel];
  v155 = [v154 text];

  v156 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v157 = [v156 navigationBarTitleView];
  v158 = [v157 summaryView];
  v159 = [v158 secondaryLabel];
  v160 = v159;
  if (v155)
  {
    v161 = [v159 text];
    v162 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v162 setText:v161];
  }

  else
  {
    v161 = [v159 attributedText];
    v162 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v162 setAttributedText:v161];
  }

  v163 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v163 setHidden:1];

  [(HUQuickControlPresentationCoordinator *)self secondaryLabelFrameInNavigationBar];
  v165 = v164;
  v167 = v166;
  v169 = v168;
  v171 = v170;
  v172 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v172 setFrame:{v165, v167, v169, v171}];

  v173 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v173 setNumberOfLines:1];

  v174 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v174 setAllowsDefaultTighteningForTruncation:1];

  v175 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v175 setAdjustsFontSizeToFitWidth:1];

  +[HUGridServiceCellTextView minimumDescriptionScaleFactor];
  v177 = v176;
  v178 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v178 setMinimumScaleFactor:v177];

  v179 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v179 sizeToFit];

  v180 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v180 bounds];
  v182 = v181;
  v184 = v183;
  v186 = v185;
  v188 = v187;
  v189 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v189 setFrame:{v182, v184, v186, v188}];

  v190 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v190 setNeedsLayout];

  v191 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  v192 = [v191 contentView];
  v193 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v192 addSubview:v193];

  v194 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v194 setNeedsLayout];

  v197 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v195 = [v197 view];
  v196 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v195 addSubview:v196];
}

- (id)_animationControllerForDismissedController:(id)a3
{
  v4 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 firstObject];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  [v3 updateUIWithAnimation:0];

  v4 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v5 = [v4 navigationBarTitleView];
  v6 = [v5 summaryView];
  [v6 setHidden:1];

  v7 = [MEMORY[0x277D75348] clearColor];
  v8 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v9 = [v8 navigationBarTitleView];
  [v9 setBackgroundColor:v7];

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

    v12 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v12 setHidden:1];

    v13 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v13 setAlpha:1.0];

    v14 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v15 = [v14 view];
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v24 setFrame:{v17, v19, v21, v23}];

    v25 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v25 setNeedsLayout];

    v26 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v27 = [v26 view];
    v28 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v27 insertSubview:v28 atIndex:0];

    v29 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    v30 = [v29 view];
    [v30 setAlpha:0.0];

    v31 = [MEMORY[0x277D75348] clearColor];
    v32 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v33 = [v32 view];
    [v33 setBackgroundColor:v31];
  }

  v34 = [MEMORY[0x277D75210] effectWithBlurRadius:0.0];
  v35 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v34];
  [(HUQuickControlPresentationCoordinator *)self setTransitionBlurView:v35];

  v36 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
  [v36 setAutoresizingMask:18];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v37 = [MEMORY[0x277D759A0] mainScreen];
    [v37 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [v46 setFrame:{v39, v41, v43, v45}];

    v47 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v48 = [v47 view];
    v49 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [v48 insertSubview:v49 atIndex:0];
  }

  else
  {
    v50 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
    v51 = [v50 view];
    [v51 bounds];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [v60 setFrame:{v53, v55, v57, v59}];

    v47 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
    v48 = [v47 tabBarController];
    v49 = [v48 view];
    v61 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
    [v49 addSubview:v61];
  }

  v62 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v63 = [v62 closeButton];
  [v63 setAlpha:0.0];

  v64 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionIconView:v64];

  v65 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  v66 = 1;
  [v65 setContentMode:1];

  v67 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v68 = [v67 item];
  v69 = [v68 latestResults];
  v70 = [v69 objectForKeyedSubscript:*MEMORY[0x277D13E88]];

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

  v71 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v71 updateWithIconDescriptor:v70 displayStyle:v66 animated:0];

  if ([(HUQuickControlPresentationCoordinator *)self isActionSetTile])
  {
    v72 = [(HUQuickControlPresentationCoordinator *)self iconSizeInActionSetTile];
    v73 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
    [v73 setIconSize:v72];

    [(HUQuickControlPresentationCoordinator *)self iconFrameInActionSetTile];
  }

  else
  {
    v78 = [(HUQuickControlPresentationCoordinator *)self iconSizeInTile];
    v79 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
    [v79 setIconSize:v78];

    [(HUQuickControlPresentationCoordinator *)self iconFrameInTile];
  }

  v80 = v74;
  v81 = v75;
  v82 = v76;
  v83 = v77;
  v84 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v84 setFrame:{v80, v81, v82, v83}];

  v85 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v85 setHidden:1];

  v86 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v87 = [v86 view];
  v88 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v87 addSubview:v88];

  v89 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionIconViewVibrant:v89];

  v90 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v90 setContentMode:1];

  if ([(HUQuickControlPresentationCoordinator *)self isActionSetTile])
  {
    v91 = [(HUQuickControlPresentationCoordinator *)self iconSizeInActionSetTile];
    v92 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [v92 setIconSize:v91];

    [(HUQuickControlPresentationCoordinator *)self iconFrameInActionSetTile];
  }

  else
  {
    v97 = [(HUQuickControlPresentationCoordinator *)self iconSizeInTile];
    v98 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [v98 setIconSize:v97];

    [(HUQuickControlPresentationCoordinator *)self iconFrameInTile];
  }

  v99 = v93;
  v100 = v94;
  v101 = v95;
  v102 = v96;
  v103 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v103 setFrame:{v99, v100, v101, v102}];

  v104 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v104 setHidden:1];

  v105 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v106 = [v105 navigationBarTitleView];
  v107 = [v106 summaryView];
  v108 = [v107 iconView];
  v109 = [v108 tintColor];
  v110 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v110 setTintColor:v109];

  v111 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v112 = [v111 navigationBarTitleView];
  v113 = [v112 summaryView];
  v114 = [v113 iconView];
  v115 = [v114 tintColor];
  v116 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v116 setTintColor:v115];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v117 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v118 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [v118 setVibrancyEffect:v117];
  }

  else
  {
    v117 = [MEMORY[0x277D75210] effectWithStyle:7];
    v118 = [MEMORY[0x277D75D00] effectForBlurEffect:v117 style:4];
    v119 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [v119 setVibrancyEffect:v118];
  }

  v120 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v120 updateWithIconDescriptor:v70 displayStyle:2 animated:0];

  v121 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v121 layoutIfNeeded];

  v122 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v122 layoutIfNeeded];

  v123 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v124 = [v123 view];
  v125 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  v126 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v124 insertSubview:v125 above:v126];

  v127 = objc_opt_new();
  [(HUQuickControlPresentationCoordinator *)self setTransitionPrimaryLabel:v127];

  LODWORD(v123) = [(HUQuickControlPresentationCoordinator *)self isActionSetTile];
  v128 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v129 = v128;
  if (v123)
  {
    v130 = [v128 titleAndDescriptionView];
    v131 = [v130 titleLabel];
    v132 = [v131 font];
    v133 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v133 setFont:v132];

    v134 = [v129 titleAndDescriptionView];
    v135 = [v134 titleLabel];
    v136 = [v135 text];
    v137 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v137 setText:v136];

    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInActionSetTile];
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v146 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v146 setFrame:{v139, v141, v143, v145}];
  }

  else
  {
    v147 = [v128 serviceTextView];
    v148 = [v147 font];
    v149 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v149 setFont:v148];

    v150 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v151 = [v150 item];
    v152 = [v151 latestResults];
    v153 = [v152 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v154 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v154 setText:v153];

    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInTile];
    v156 = v155;
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v129 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
    [v129 setFrame:{v156, v158, v160, v162}];
  }

  v163 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
  [v163 setHidden:1];

  v164 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
  [v164 setNumberOfLines:2];

  v165 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
  [v165 setContentMode:1];

  v166 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v167 = [v166 view];
  v168 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
  [v167 addSubview:v168];

  v169 = objc_opt_new();
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabel:v169];

  LODWORD(v167) = [(HUQuickControlPresentationCoordinator *)self isActionSetTile];
  v170 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v171 = v170;
  if (v167)
  {
    v172 = [v170 titleAndDescriptionView];
    v173 = [v172 descriptionLabel];
    v174 = [v173 font];
    v175 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v175 setFont:v174];

    v176 = [v171 titleAndDescriptionView];
    v177 = [v176 descriptionLabel];
    v178 = [v177 text];
    v179 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v179 setText:v178];

    v180 = [v171 titleAndDescriptionView];
    v181 = [v180 descriptionLabel];
    v182 = [v181 textColor];
    v183 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v183 setTextColor:v182];

    [(HUQuickControlPresentationCoordinator *)self secondaryLabelFrameInActionSetTile];
    v185 = v184;
    v187 = v186;
    v189 = v188;
    v191 = v190;
    v192 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v192 setFrame:{v185, v187, v189, v191}];
  }

  else
  {
    v193 = [v170 coloredDescriptionLabel];
    v194 = [v193 font];
    v195 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v195 setFont:v194];

    v196 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v197 = [v196 coloredDescriptionLabel];
    v198 = [v197 text];
    v199 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v199 setText:v198];

    v200 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v201 = [v200 coloredDescriptionLabel];
    v202 = [v201 textColor];
    v203 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v203 setTextColor:v202];

    [(HUQuickControlPresentationCoordinator *)self secondaryLabelFrameInTile];
    v205 = v204;
    v207 = v206;
    v209 = v208;
    v211 = v210;
    v171 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v171 setFrame:{v205, v207, v209, v211}];
  }

  v212 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v212 setHidden:1];

  v213 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v213 setNumberOfLines:0];

  v214 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v214 setContentMode:1];

  v215 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v215 sizeToFit];

  v216 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabelVibrantEffectView:v216];

  if ([(HUQuickControlPresentationCoordinator *)self isTileOff])
  {
    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v217 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
      v218 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
      [v218 setEffect:v217];
    }

    else
    {
      v217 = [MEMORY[0x277D75210] effectWithStyle:7];
      v218 = [MEMORY[0x277D75D00] effectForBlurEffect:v217 style:2];
      v219 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
      [v219 setEffect:v218];
    }
  }

  v220 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v220 setHidden:1];

  [(HUQuickControlPresentationCoordinator *)self secondaryLabelFrameInTile];
  v222 = v221;
  v224 = v223;
  v226 = v225;
  v228 = v227;
  v229 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v229 setFrame:{v222, v224, v226, v228}];

  v230 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v230 bounds];
  v232 = v231;
  v234 = v233;
  v236 = v235;
  v238 = v237;
  v239 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v239 setFrame:{v232, v234, v236, v238}];

  v240 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v240 setNeedsLayout];

  v241 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v241 setNeedsLayout];

  v242 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  v243 = [v242 contentView];
  v244 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v243 addSubview:v244];

  v247 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v245 = [v247 view];
  v246 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v245 addSubview:v246];
}

- (id)_legacyAnimationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  [(HUQuickControlPresentationCoordinator *)self _createTransitionViewsForPresentation:a3];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  [v3 updateUIWithAnimation:0];

  LODWORD(v3) = [(HUQuickControlPresentationCoordinator *)self isTileOff];
  v4 = 0x277D14000uLL;
  v5 = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];
  if (v3)
  {
    if (v5)
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

    v13 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v13 setHidden:1];

    v14 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v15 = [v14 view];
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v24 setFrame:{v17, v19, v21, v23}];

    v8 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v9 = [v8 view];
    v10 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
    [v9 insertSubview:v10 atIndex:0];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = [MEMORY[0x277D75348] clearColor];
    v7 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    [v7 setBackgroundColor:v6];

    v8 = [MEMORY[0x277D75348] clearColor];
    v9 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v10 = [v9 view];
    [v10 setBackgroundColor:v8];
  }

LABEL_12:
  v25 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionIconView:v25];

  v26 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v27 = [v26 item];
  v28 = [v27 latestResults];
  v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  v30 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v30 setContentMode:1];

  v31 = [(HUQuickControlPresentationCoordinator *)self iconSizeInNavigationBar];
  v32 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v32 setIconSize:v31];

  [(HUQuickControlPresentationCoordinator *)self iconFrameInNavigationBar];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v41 setFrame:{v34, v36, v38, v40}];

  v42 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v42 setHidden:1];

  v43 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  v44 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v45 = [v44 navigationBarTitleView];
  v46 = [v45 summaryView];
  v47 = [v46 iconView];
  [v43 updateWithIconDescriptor:v29 displayStyle:objc_msgSend(v47 animated:{"displayStyle"), 0}];

  v48 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v49 = [v48 view];
  v50 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v49 addSubview:v50];

  v51 = objc_alloc_init(MEMORY[0x277D180D0]);
  [(HUQuickControlPresentationCoordinator *)self setTransitionIconViewVibrant:v51];

  v52 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v52 setContentMode:1];

  v53 = [(HUQuickControlPresentationCoordinator *)self iconSizeInNavigationBar];
  v54 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v54 setIconSize:v53];

  [(HUQuickControlPresentationCoordinator *)self iconFrameInNavigationBar];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v63 setFrame:{v56, v58, v60, v62}];

  v64 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v64 setHidden:1];

  v65 = [MEMORY[0x277D75348] clearColor];
  v66 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v66 setTintColor:v65];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    if ([MEMORY[0x277D14670] isHomeControlService])
    {
      v67 = MEMORY[0x277D75358];
      v68 = [MEMORY[0x277D75348] systemWhiteColor];
      v69 = [v67 colorEffectMonochromeTint:v68 blendingAmount:1.0 brightnessAdjustment:0.45];

      v70 = MEMORY[0x277D75D58];
      v273[0] = v69;
      v71 = [MEMORY[0x277D75D00] controlCenterPrimaryVibrancyEffect];
      v273[1] = v71;
      v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v273 count:2];
      v73 = [v70 effectCombiningEffects:v72];
      v74 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
      [v74 setVibrancyEffect:v73];

      goto LABEL_18;
    }

    v69 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v75 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [v75 setVibrancyEffect:v69];
  }

  else
  {
    v69 = [MEMORY[0x277D75210] effectWithStyle:7];
    v75 = [MEMORY[0x277D75D00] effectForBlurEffect:v69 style:4];
    v76 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
    [v76 setVibrancyEffect:v75];
  }

LABEL_18:
  v77 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v77 updateWithIconDescriptor:v29 displayStyle:2 animated:0];

  v78 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v79 = [v78 view];
  v80 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  v81 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v79 insertSubview:v80 below:v81];

  v82 = off_277DB0000;
  if ([(HUQuickControlPresentationCoordinator *)self isActionSetTile])
  {
    v83 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v84 = [MEMORY[0x277D75210] effectWithStyle:7];
    v85 = [(HUQuickControlPresentationCoordinator *)self isTileOff];
    v86 = objc_alloc(MEMORY[0x277D75D68]);
    v87 = v86;
    v272 = v84;
    if (v85)
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
    v154 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionVibrantEffectView];
    [v154 setFrame:{v147, v149, v151, v153}];

    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInNavigationBar];
    v156 = v155;
    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInNavigationBar];
    v158 = v157;
    v159 = [v83 titleAndDescriptionView];
    [v159 frame];
    v161 = v160;
    v162 = [v83 titleAndDescriptionView];
    [v162 frame];
    v164 = v163;

    v165 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v166 = [v165 view];
    v167 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionVibrantEffectView];
    [v166 addSubview:v167];

    v168 = [HUGridActionSetTitleAndDescriptionView alloc];
    v169 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionVibrantEffectView];
    v170 = [v169 contentView];
    v171 = [(HUGridActionSetTitleAndDescriptionView *)v168 initWithFrame:v170 titleLabelSuperview:v156, v158, v161, v164];
    [(HUQuickControlPresentationCoordinator *)self setTransitionTitleAndDescriptionView:v171];

    v172 = [v83 sceneCellLayoutOptions];
    v173 = [v172 numberOfTitleLines];
    v174 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
    v175 = [v174 titleLabel];
    [v175 setNumberOfLines:v173];

    [v172 titleDescriptionLineSpacing];
    v177 = v176;
    v178 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
    [v178 setTitleDescriptionLineSpacing:v177];

    v179 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
    v180 = [v83 titleAndDescriptionView];
    v181 = [v180 titleLabel];
    v182 = [v181 attributedText];
    v183 = [v83 titleAndDescriptionView];
    v184 = [v183 descriptionLabel];
    v185 = [v184 attributedText];
    [v179 updateTitleText:v182 descriptionText:v185];

    v186 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
    [v186 setHidden:1];

    v187 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionVibrantEffectView];
    [v187 setHidden:1];

    v188 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v189 = [v188 view];
    v190 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
    [v189 addSubview:v190];

    v4 = 0x277D14000;
    v82 = off_277DB0000;
    v191 = v272;
  }

  else
  {
    v90 = objc_alloc_init(HUGridServiceCellTextView);
    [(HUQuickControlPresentationCoordinator *)self setTransitionTextView:v90];

    v91 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v92 = [v91 shouldShowRoomName];
    v93 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [v93 setShouldShowRoomName:v92];

    v94 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v95 = [v94 serviceTextView];
    [v95 lineHeight];
    v97 = v96;
    v98 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [v98 setLineHeight:v97];

    v99 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v100 = [v99 serviceTextView];
    v101 = [v100 font];
    v102 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [v102 setFont:v101];

    v103 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v104 = [v103 serviceTextView];
    v105 = [v104 serviceNameComponents];
    v106 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [v106 setServiceNameComponents:v105];

    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInNavigationBar];
    v108 = v107;
    [(HUQuickControlPresentationCoordinator *)self primaryLabelFrameInNavigationBar];
    v110 = v109;
    v111 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v112 = [v111 serviceTextView];
    [v112 frame];
    v114 = v113;
    v115 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v116 = [v115 serviceTextView];
    [v116 frame];
    v118 = v117;
    v119 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [v119 setFrame:{v108, v110, v114, v118}];

    v120 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [v120 setHidden:1];

    v121 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [v121 setNeedsLayout];

    v122 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v123 = [v122 view];
    v124 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [v123 addSubview:v124];

    v125 = objc_alloc_init(HUGridServiceCellTextView);
    [(HUQuickControlPresentationCoordinator *)self setTransitionTextViewVibrant:v125];

    v126 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v127 = [v126 shouldShowRoomName];
    v128 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [v128 setShouldShowRoomName:v127];

    v129 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v130 = [v129 serviceTextView];
    [v130 lineHeight];
    v132 = v131;
    v133 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [v133 setLineHeight:v132];

    v134 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v135 = [v134 serviceTextView];
    v136 = [v135 font];
    v137 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [v137 setFont:v136];

    v138 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v139 = [v138 serviceTextView];
    v140 = [v139 serviceNameComponents];
    v141 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [v141 setServiceNameComponents:v140];

    v142 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [v142 sizeToFit];

    v143 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    [(HUQuickControlPresentationCoordinator *)self setTransitionTextViewVibrantEffectView:v143];

    if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
    {
      v144 = [MEMORY[0x277D75D00] controlCenterPrimaryVibrancyEffect];
      v145 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
      [v145 setEffect:v144];
    }

    else
    {
      v144 = [MEMORY[0x277D75210] effectWithStyle:7];
      v145 = [MEMORY[0x277D75D00] effectForBlurEffect:v144 style:4];
      v192 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
      [v192 setEffect:v145];
    }

    v193 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [v193 frame];
    v195 = v194;
    v197 = v196;
    v199 = v198;
    v201 = v200;
    v202 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
    [v202 setFrame:{v195, v197, v199, v201}];

    v203 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
    [v203 bounds];
    v205 = v204;
    v207 = v206;
    v209 = v208;
    v211 = v210;
    v212 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [v212 setFrame:{v205, v207, v209, v211}];

    v213 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
    [v213 setHidden:1];

    v214 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
    v215 = [v214 contentView];
    v216 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
    [v215 addSubview:v216];

    v83 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v191 = [v83 view];
    v172 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
    v188 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
    [v191 insertSubview:v172 below:v188];
  }

  if (![(HUQuickControlPresentationCoordinator *)self isActionSetTile])
  {
    v217 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabel:v217];

    v218 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v218 setNumberOfLines:1];

    if (-[HUQuickControlPresentationCoordinator isTileOff](self, "isTileOff") && (-[HUQuickControlPresentationCoordinator pressedTile_legacy](self, "pressedTile_legacy"), v219 = objc_claimAutoreleasedReturnValue(), [v219 serviceTextView], v220 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v220, "descriptionText"), v221 = objc_claimAutoreleasedReturnValue(), v221, v220, v219, v221))
    {
      v222 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
      v223 = [v222 serviceTextView];
      v224 = [v223 font];
      v225 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
      [v225 setFont:v224];

      v226 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
      v227 = [v226 serviceTextView];
      v228 = [v227 descriptionText];
      v229 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
      [v229 setText:v228];
    }

    else
    {
      v230 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
      v231 = [v230 coloredDescriptionLabel];
      v232 = [v231 attributedText];
      v233 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
      [v233 setAttributedText:v232];

      v226 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
      v227 = [v226 coloredDescriptionLabel];
      v228 = [v227 textColor];
      v229 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
      [v229 setTextColor:v228];
    }

    v234 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v234 setAllowsDefaultTighteningForTruncation:1];

    v235 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v235 setAdjustsFontSizeToFitWidth:1];

    [(__objc2_class *)v82[218] minimumDescriptionScaleFactor];
    v237 = v236;
    v238 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v238 setMinimumScaleFactor:v237];

    v239 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v239 sizeToFit];

    v240 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    [(HUQuickControlPresentationCoordinator *)self setTransitionSecondaryLabelVibrantEffectView:v240];

    if ([(HUQuickControlPresentationCoordinator *)self isTileOff])
    {
      if ([*(v4 + 3304) shouldUseControlCenterMaterials])
      {
        v241 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
        v242 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
        [v242 setEffect:v241];
      }

      else
      {
        v241 = [MEMORY[0x277D75210] effectWithStyle:7];
        v242 = [MEMORY[0x277D75D00] effectForBlurEffect:v241 style:2];
        v243 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
        [v243 setEffect:v242];
      }
    }

    v244 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    [v244 setHidden:1];

    [(HUQuickControlPresentationCoordinator *)self secondaryLabelFrameInNavigationBar];
    v246 = v245;
    v248 = v247;
    v250 = v249;
    v252 = v251;
    v253 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    [v253 setFrame:{v246, v248, v250, v252}];

    v254 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    [v254 bounds];
    v256 = v255;
    v258 = v257;
    v260 = v259;
    v262 = v261;
    v263 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v263 setFrame:{v256, v258, v260, v262}];

    v264 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v264 setNeedsLayout];

    v265 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    [v265 setNeedsLayout];

    v266 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    v267 = [v266 contentView];
    v268 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
    [v267 addSubview:v268];

    v269 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v270 = [v269 view];
    v271 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
    [v270 addSubview:v271];
  }
}

- (id)_legacyAnimationControllerForDismissedController:(id)a3
{
  v4 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 firstObject];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self pressedTileBlurEffectView];
  [v3 removeFromSuperview];

  v4 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
  [v4 removeFromSuperview];

  v5 = [(HUQuickControlPresentationCoordinator *)self transitionIconViewVibrant];
  [v5 removeFromSuperview];

  v6 = [(HUQuickControlPresentationCoordinator *)self transitionPrimaryLabel];
  [v6 removeFromSuperview];

  v7 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v7 removeFromSuperview];

  v8 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabelVibrantEffectView];
  [v8 removeFromSuperview];

  v9 = [(HUQuickControlPresentationCoordinator *)self transitionTextView];
  [v9 removeFromSuperview];

  v10 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrant];
  [v10 removeFromSuperview];

  v11 = [(HUQuickControlPresentationCoordinator *)self transitionTextViewVibrantEffectView];
  [v11 removeFromSuperview];

  v12 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionView];
  [v12 removeFromSuperview];

  v13 = [(HUQuickControlPresentationCoordinator *)self transitionTitleAndDescriptionVibrantEffectView];
  [v13 removeFromSuperview];

  v14 = [(HUQuickControlPresentationCoordinator *)self transitionPrefixLabel];
  [v14 removeFromSuperview];

  v15 = [(HUQuickControlPresentationCoordinator *)self transitionBaseIconView];
  [v15 removeFromSuperview];

  v16 = [(HUQuickControlPresentationCoordinator *)self transitionBackgroundView];
  [v16 removeFromSuperview];
}

- (BOOL)isTileOff
{
  v3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  if ([v3 primaryState] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    v4 = [v5 primaryState] == 0;
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
  v2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v3 = [v2 iconView];
  v4 = [v3 iconSize];

  return v4;
}

- (unint64_t)iconSizeInActionSetTile
{
  v2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v3 = [v2 iconView];
  v4 = [v3 iconSize];

  return v4;
}

- (CGRect)iconFrameInTile
{
  v2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v3 = [v2 iconView];
  [v3 frame];
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
  v2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v3 = [v2 sceneCellLayoutOptions];
  v4 = [v2 iconView];
  [v4 frame];
  v6 = v5;
  v8 = v7;

  [v3 iconInnerHorizontalMargin];
  v10 = v9;
  [v3 cellHeight];
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
  v2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v3 = [v2 navigationBarTitleView];
  v4 = [v3 summaryView];
  v5 = [v4 iconView];
  v6 = [v5 iconSize];

  return v6;
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
    v8 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    v9 = [v8 navigationBarTitleView];
    [v9 frame];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  [v3 frame];
  v5 = v4;
  v6 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v7 = [v6 layoutOptions];
  [v7 cellInnerMargin];
  v9 = v5 + v8 * -2.0;

  v10 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v11 = [v10 serviceTextView];
  [v11 frame];
  v13 = v12;

  v14 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v15 = [v14 layoutOptions];
  [v15 cellInnerMargin];
  v17 = v16;

  v18 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v19 = [v18 contentView];
  [v19 bounds];
  MaxY = CGRectGetMaxY(v36);
  v21 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v22 = [v21 layoutOptions];
  [v22 cellInnerMargin];
  v24 = MaxY - v23;

  v25 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v26 = [v25 serviceTextView];
  [v26 frame];
  v27 = v24 - CGRectGetHeight(v37);
  v28 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v29 = [v28 serviceTextView];
  [v29 lastBaselineToBottomDistance];
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
  v2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v3 = [v2 titleAndDescriptionView];
  v4 = [v3 titleLabel];
  [v4 frame];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v4 = [v3 navigationBarTitleView];
  v5 = [v4 summaryView];
  v6 = [v5 baseIconView];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v16 = [v15 navigationBarTitleView];
  [v16 frame];
  v18 = v17;

  v19 = [(HUQuickControlPresentationCoordinator *)self _isRTL];
  v20 = v18 - v12 + -14.0;
  if (!v19)
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
  v3 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v4 = [v3 navigationBarTitleView];
  v5 = [v4 summaryView];
  v6 = [v5 primaryLabel];
  [v6 frame];
  v8 = v7;

  v9 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v10 = [v9 navigationBarTitleView];
  v11 = [v10 summaryView];
  v12 = [v11 primaryLabel];
  [v12 frame];
  v14 = v13;

  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    if (![(HUQuickControlPresentationCoordinator *)self _isRTL])
    {
      v26 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
      [v26 frame];
      v28 = v27;
      v29 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
      [v29 frame];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v4 = [v3 contentView];
  [v4 bounds];
  Width = CGRectGetWidth(v33);
  v6 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v7 = [v6 layoutOptions];
  [v7 cellInnerMargin];
  v9 = Width + v8 * -2.0;

  v10 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v10 bounds];
  Height = CGRectGetHeight(v34);

  v12 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v13 = [v12 contentView];
  [v13 bounds];
  MinX = CGRectGetMinX(v35);
  v15 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v16 = [v15 layoutOptions];
  [v16 cellInnerMargin];
  v18 = MinX + v17;

  v19 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v20 = [v19 contentView];
  [v20 bounds];
  MaxY = CGRectGetMaxY(v36);
  v22 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v23 = [v22 layoutOptions];
  [v23 cellInnerMargin];
  v25 = MaxY - v24;

  v26 = [(HUQuickControlPresentationCoordinator *)self transitionSecondaryLabel];
  [v26 _lastLineBaseline];
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
  v2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v3 = [v2 titleAndDescriptionView];
  v4 = [v3 descriptionLabel];
  [v4 frame];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v4 = [v3 navigationBarTitleView];
  v5 = [v4 summaryView];
  v6 = [v5 secondaryLabel];
  [v6 frame];
  v8 = v7;

  v9 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v10 = [v9 navigationBarTitleView];
  v11 = [v10 summaryView];
  v12 = [v11 secondaryLabel];
  [v12 frame];
  v14 = v13;

  v15 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v16 = [v15 navigationBarTitleView];
  v17 = [v16 summaryView];
  v18 = [v17 primaryLabel];
  [v18 frame];
  v20 = v19;

  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    if (![(HUQuickControlPresentationCoordinator *)self _isRTL])
    {
      v32 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
      [v32 frame];
      v34 = v33;
      v35 = [(HUQuickControlPresentationCoordinator *)self transitionIconView];
      [v35 frame];
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
  v2 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  v3 = [v2 titleAndDescriptionView];
  [v3 frame];
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

- (void)_preparePressedItemContextForItem:(id)a3 startApplier:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v7 = [v6 objectForKey:v10];

  if (v7)
  {
    [(HUQuickControlPresentationCoordinator *)self _configureInitialStateForPressedItemContext:v7 userInitiated:1];
  }

  else
  {
    v7 = [(HUQuickControlPresentationCoordinator *)self _createPressedContextForItem:v10 userInitiated:1];
    v8 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
    [v8 setObject:v7 forKey:v10];

    if (v4)
    {
      v9 = [v7 applier];
      [v9 start];
    }
  }
}

- (void)_configureInitialStateForPressedItemContext:(id)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  [v8 setBeginTime:CACurrentMediaTime()];
  [v8 setRawInputProgress:0.433333333];
  v5 = [v8 applier];
  [v5 setCompletesWhenAtRest:0];

  [v8 setActive:1];
  [v8 setIsUserInitiated:v4];
  v6 = [v8 programmaticBounceTimer];

  if (v6)
  {
    v7 = [v8 programmaticBounceTimer];
    [v7 invalidate];

    [v8 setProgrammaticBounceTimer:0];
  }
}

- (void)_initiateProgrammaticBounceForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v6 = [v5 objectForKey:v4];

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

- (id)_createPressedContextForItem:(id)a3 userInitiated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    NSLog(&cfstr_PressedItemCon.isa, v6);
  }

  v9 = objc_alloc_init(HUPressedItemContext);
  [(HUPressedItemContext *)v9 setItem:v6];
  [(HUPressedItemContext *)v9 setIsUserInitiated:v4];
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
  v12 = v6;
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
  [(HUQuickControlPresentationCoordinator *)self _configureInitialStateForPressedItemContext:v9 userInitiated:v4];

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

- (void)_updateOverrideAttributesWithScale:(double)a3 forItem:(id)a4
{
  v6 = a4;
  CGAffineTransformMakeScale(&v7, a3, a3);
  [(HUQuickControlPresentationCoordinator *)self _updateOverrideAttributesWithTransform:&v7 alpha:v6 forItem:1.0];
}

- (void)_updateOverrideAttributesWithTransform:(CGAffineTransform *)a3 alpha:(double)a4 forItem:(id)a5
{
  v8 = a5;
  v9 = objc_alloc_init(HUControllableCollectionViewLayoutOverrideAttributes);
  v10 = *&a3->c;
  v14[0] = *&a3->a;
  v14[1] = v10;
  v14[2] = *&a3->tx;
  [(HUControllableCollectionViewLayoutOverrideAttributes *)v9 setTransform:v14];
  [(HUControllableCollectionViewLayoutOverrideAttributes *)v9 setAlpha:a4];
  [(HUControllableCollectionViewLayoutOverrideAttributes *)v9 setZIndex:1000];
  v11 = [(HUQuickControlPresentationCoordinator *)self delegate];
  [v11 presentationCoordinator:self applyOverrideAttributes:v9 toItem:v8];

  v12 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v13 = [v12 objectForKey:v8];

  if (v13)
  {
    [v13 setCurrentViewScale:a3->a];
  }
}

- (void)_pressedStateDidEndForItem:(id)a3 clearPresentationContext:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__HUQuickControlPresentationCoordinator__pressedStateDidEndForItem_clearPresentationContext___block_invoke;
    v15[3] = &unk_277DB7558;
    v15[4] = self;
    v10 = v6;
    v16 = v10;
    [v9 performWithoutAnimation:v15];
    v11 = [(HUQuickControlPresentationCoordinator *)self pressedItemContexts];
    [v11 removeObjectForKey:v10];

    if (v4)
    {
      v12 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v13 = [v12 item];
      v14 = [v13 isEqual:v10];

      if (v14)
      {
        [(HUQuickControlPresentationCoordinator *)self setPresentationContext:0];
      }
    }
  }

  else
  {
    NSLog(&cfstr_MissingPressed.isa, v6);
  }
}

void __93__HUQuickControlPresentationCoordinator__pressedStateDidEndForItem_clearPresentationContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 presentationCoordinator:*(a1 + 32) clearOverrideAttributesForItem:*(a1 + 40)];
}

- (void)_prepareForTapticFeedback
{
  v3 = [(HUQuickControlPresentationCoordinator *)self feedbackGenerator];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:4];
    [(HUQuickControlPresentationCoordinator *)self setFeedbackGenerator:v4];

    v5 = [(HUQuickControlPresentationCoordinator *)self feedbackGenerator];
    [v5 prepare];
  }
}

- (void)_actuateTapticFeedback
{
  v3 = [(HUQuickControlPresentationCoordinator *)self feedbackGenerator];
  [v3 impactOccurred];

  v4 = [(HUQuickControlPresentationCoordinator *)self feedbackGenerator];
  [v4 prepare];
}

- (id)presentQuickControlWithContext:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(HUQuickControlPresentationCoordinator *)self setPresentationContext:v6];
  v7 = [v6 item];

  if (v7)
  {
    v8 = [v6 item];
    [(HUQuickControlPresentationCoordinator *)self _preparePressedItemContextForItem:v8 startApplier:0];
  }

  v9 = [(HUQuickControlPresentationCoordinator *)self _beginControlPresentationAnimated:v4];

  return v9;
}

- (BOOL)_shouldCancelPresentation
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v6 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v7 = [v5 presentationCoordinator:self shouldBeginPresentationWithContext:v6];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v13 = 138412802;
    v14 = v10;
    v15 = 1024;
    v16 = v7;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@+Controls _shouldCancelPresentation: delegate responded to shouldBeginPresentationWithContext with %{BOOL}d delegate %@", &v13, 0x1Cu);
  }

  return v7 ^ 1;
}

- (id)_beginControlPresentationAnimated:(BOOL)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];

  if (v4)
  {
    NSLog(&cfstr_AttemptingToBe.isa);
  }

  v5 = [(HUQuickControlPresentationCoordinator *)self presentationContext];

  if (!v5)
  {
    NSLog(&cfstr_AttemptingToBe_0.isa);
  }

  v6 = [(HUQuickControlPresentationCoordinator *)self activePressedItemContext];
  v7 = [v6 applier];
  [v7 cancel];

  LODWORD(v7) = [(HUQuickControlPresentationCoordinator *)self _shouldCancelPresentation];
  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@+Controls canceling presentation", buf, 0xCu);
    }

    v12 = [MEMORY[0x277D2C900] futureWithNoResult];
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

    v15 = [(HUQuickControlPresentationCoordinator *)self _viewControllerToPresent];
    v16 = objc_alloc_init(MEMORY[0x277D2C900]);
    if (v15)
    {
      v17 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
      v18 = [v17 hu_presentPreloadableViewController:v15 animated:1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __75__HUQuickControlPresentationCoordinator__beginControlPresentationAnimated___block_invoke;
      v22[3] = &unk_277DC0040;
      v22[4] = self;
      v19 = v16;
      v23 = v19;
      v24 = v15;
      v20 = [v18 addCompletionBlock:v22];

      v12 = v19;
    }

    else
    {
      v12 = [MEMORY[0x277D2C900] futureWithNoResult];
    }
  }

  return v12;
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
  v3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v4 = [v3 item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(HUQuickControlPresentationCoordinator *)self _buildSoftwareUpdateNavigationController];
  }

  else
  {
    v7 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    v8 = [v7 item];
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
    v6 = ;
  }

  return v6;
}

- (id)_buildQuickControlViewController
{
  v3 = [HUQuickControlContainerViewController alloc];
  v4 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v5 = [(HUQuickControlContainerViewController *)v3 initWithPresentationContext:v4];

  [(HUQuickControlContainerViewController *)v5 setDelegate:self];
  [(HUQuickControlContainerViewController *)v5 setPresentationDelegate:self];
  v6 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v9 = [v8 detailViewURLHandlerForPresentationCoordinator:self];
    [(HUQuickControlContainerViewController *)v5 setDetailViewURLHandler:v9];
  }

  if ([MEMORY[0x277D14CE8] isAMac])
  {
    [(HUQuickControlContainerViewController *)v5 presentControlForMacAnimated:1];
  }

  else
  {
    v10 = [(HUQuickControlContainerViewController *)v5 view];
    v11 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    [v11 sourceRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(HUQuickControlPresentationCoordinator *)self targetView];
    [v10 convertRect:v20 fromView:{v13, v15, v17, v19}];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v4 = [v3 item];
  if (v4)
  {
    v5 = v4;
    v6 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
    v7 = [v6 sourceItem];
    if (v7)
    {
      v8 = v7;
      v9 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v10 = [v9 item];
      v11 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
      v12 = [v11 sourceItem];

      if (v10 == v12)
      {
        return;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v13 = [(HUQuickControlPresentationCoordinator *)self _buildQuickControlViewController];
  [(HUQuickControlPresentationCoordinator *)self setQuickControlViewController:v13];

  v14 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
  v15 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v16 = [v15 item];
  v17 = [(HUQuickControlPresentationCoordinator *)self hasDetailsActionForQuickControlViewController:v14 item:v16];

  if (v17 || (-[HUQuickControlPresentationCoordinator presentationContext](self, "presentationContext"), v18 = objc_claimAutoreleasedReturnValue(), [v18 item], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "conformsToProtocol:", &unk_28251B0C8), v19, v18, (v20 & 1) == 0))
  {
    v21 = [(HUQuickControlPresentationCoordinator *)self _prepareSettingsViewController];
    [(HUQuickControlPresentationCoordinator *)self setSettingsViewController:v21];
  }

  v22 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v23 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
  v24 = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
  v25 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  [v22 updateWithQuickControlViewController:v23 settingsViewController:v24 presentationContext:v25];

  if (([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation] & 1) == 0)
  {
    v26 = [(HUQuickControlPresentationCoordinator *)self pressedTile];

    if (v26)
    {
      v27 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
      v28 = [v27 baseIconViewConfiguration];

      [(HUBaseIconViewConfiguration *)v28 setAppearance:3];
      v29 = objc_alloc_init(HUBaseIconView);
      [(HUBaseIconView *)v29 setConfiguration:v28];
      v30 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
      v31 = [v30 navigationBarTitleView];
      v32 = [v31 summaryView];
      [v32 setBaseIconView:v29];
    }

    else
    {
      v33 = [HUBaseIconViewConfiguration alloc];
      v34 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v35 = [v34 item];
      v28 = [(HUBaseIconViewConfiguration *)v33 initWithItem:v35 appearance:3];

      v29 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
      v30 = [(HUBaseIconView *)v29 navigationBarTitleView];
      v31 = [v30 summaryView];
      v32 = [v31 baseIconView];
      [v32 setConfiguration:v28];
    }
  }

  v36 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v37 = [v36 item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = 0;
  }

  else
  {
    v39 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    v40 = [v39 controlItems];
    v38 = [v40 count] != 0;
  }

  v41 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v42 = [v41 controlItems];
  v43 = [v42 na_any:&__block_literal_global_295];

  v44 = [MEMORY[0x277D14CE8] isAMac];
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

  v47 = v38 & (v44 ^ 1 | v43) ^ 1;
  v48 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  [v48 setHideControls:v46 | v47];

  v49 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  [v49 setHideSettings:!v17];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v4 = [v3 item];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [[HUStatusDetailsViewController alloc] initWithStatusItem:v6 delegate:self];
  [(HUQuickControlPresentationCoordinator *)self setStatusDetailsViewController:v7];

  v8 = objc_alloc(MEMORY[0x277D757A0]);
  v9 = [(HUQuickControlPresentationCoordinator *)self statusDetailsViewController];
  v10 = [v8 initWithRootViewController:v9];
  [(HUQuickControlPresentationCoordinator *)self setStatusDetailsNavigationController:v10];

  v11 = [(HUQuickControlPresentationCoordinator *)self statusDetailsNavigationController];
  [v11 setModalPresentationStyle:2];

  v12 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
  v13 = [v12 view];
  v14 = [v13 window];
  v15 = [v14 _rootSheetPresentationController];
  [v15 _setShouldScaleDownBehindDescendantSheets:0];

  return [(HUQuickControlPresentationCoordinator *)self statusDetailsNavigationController];
}

- (id)_buildSoftwareUpdateNavigationController
{
  v3 = [HUSoftwareUpdateStandaloneViewController alloc];
  v4 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v5 = [v4 home];
  v6 = [(HUSoftwareUpdateStandaloneViewController *)v3 initWithHome:v5];

  [(HUSoftwareUpdateStandaloneViewController *)v6 setShowDoneButtonInNavBar:1];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  [v7 setModalPresentationStyle:2];

  return v7;
}

- (void)_validatePresentationContext:(id)a3
{
  v12 = a3;
  if (!v12)
  {
    NSLog(&cfstr_Presentationco.isa);
  }

  v3 = [MEMORY[0x277D14CE8] isProxHandOffV2Config];
  v4 = v12;
  if ((v3 & 1) == 0)
  {
    v5 = [v12 isConfiguredForNonHomeUser];
    v4 = v12;
    if ((v5 & 1) == 0)
    {
      v6 = [v12 item];
      if (v6)
      {
      }

      else
      {
        v7 = [v12 itemManager];
        v8 = [v7 homeKitObjectUUID];

        if (!v8)
        {
          NSLog(&cfstr_ContextMustInc.isa, v12);
        }
      }

      v9 = [v12 home];

      v4 = v12;
      if (!v9)
      {
        NSLog(&cfstr_ContextMustInc_0.isa, v12);
        v4 = v12;
      }
    }
  }

  v10 = [v4 item];
  if (v10 && ([v12 sourceRect], CGRectIsEmpty(v14)))
  {
    v11 = [v12 prefersSystemTransitions];

    if ((v11 & 1) == 0)
    {
      NSLog(&cfstr_ContextMustInc_1.isa, v12);
    }
  }

  else
  {
  }
}

- (id)dismissQuickControlAnimated:(BOOL)a3 wasDismissed:(BOOL *)a4
{
  v4 = a3;
  if (a4)
  {
    *a4 = [(HUQuickControlPresentationCoordinator *)self isQuickControlPresented];
  }

  return [(HUQuickControlPresentationCoordinator *)self dismissQuickControlAnimated:v4];
}

- (id)dismissQuickControlAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
  if (v5 && (v6 = v5, -[HUQuickControlPresentationCoordinator quickControlViewController](self, "quickControlViewController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isControlDismissedOrDismissing], v7, v6, (v8 & 1) == 0))
  {
    v10 = [(HUQuickControlPresentationCoordinator *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(HUQuickControlPresentationCoordinator *)self delegate];
      v13 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      [v12 presentationCoordinator:self willEndPresentationWithContext:v13];
    }

    v14 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
    v9 = [v14 dismissControlAnimated:v3];
  }

  else
  {
    v9 = [(HUQuickControlPresentationCoordinator *)self _dismissQuickControlViewControllerAnimated:v3];
  }

  return v9;
}

- (id)_dismissQuickControlViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v6 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HUQuickControlPresentationCoordinator *)self delegate];
    [v8 presentationCoordinator:self willEndPresentationWithContext:v5];
  }

  v9 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
  if (v9 && (v10 = v9, -[HUQuickControlPresentationCoordinator quickControlViewController](self, "quickControlViewController"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isBeingDismissed], v11, v10, !v12))
  {
    v14 = objc_alloc_init(MEMORY[0x277D2C900]);
    v15 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__HUQuickControlPresentationCoordinator__dismissQuickControlViewControllerAnimated___block_invoke;
    v19[3] = &unk_277DB7558;
    v19[4] = self;
    v16 = v14;
    v20 = v16;
    [v15 dismissViewControllerAnimated:v3 completion:v19];

    v17 = v20;
    v13 = v16;
  }

  else
  {
    v13 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v13;
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
    v3 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    if (v3)
    {
      v4 = v3;
      v5 = [(HUQuickControlPresentationCoordinator *)self presentationContext];

      if (v5)
      {
        CGAffineTransformMakeScale(&v18, 1.0, 1.0);
        v6 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
        v7 = [v6 item];
        [(HUQuickControlPresentationCoordinator *)self _updateOverrideAttributesWithTransform:&v18 alpha:v7 forItem:1.0];

        v8 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
LABEL_9:
        v15 = v8;
        v16 = [v8 item];
        [(HUQuickControlPresentationCoordinator *)self _pressedStateDidEndForItem:v16 clearPresentationContext:1];
      }
    }
  }

  else
  {
    v9 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    if (!v9)
    {
      return;
    }

    v17 = v9;
    v10 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    if (v10)
    {
      v11 = v10;
      v12 = [(HUQuickControlPresentationCoordinator *)self isActionSetTile];

      if (v12)
      {
        return;
      }

      CGAffineTransformMakeScale(&v18, 1.0, 1.0);
      v13 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v14 = [v13 item];
      [(HUQuickControlPresentationCoordinator *)self _updateOverrideAttributesWithTransform:&v18 alpha:v14 forItem:1.0];

      v8 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
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
  v3 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
  if (v3)
  {
    v4 = [(HUQuickControlPresentationCoordinator *)self quickControlViewController];
    v5 = [v4 isBeingDismissed] ^ 1;
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
  v4 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v5 = [v4 item];
  v6 = [v5 conformsToProtocol:&unk_28251B0C8];

  if (v6)
  {
    v7 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    v8 = [v7 item];
    if ([v8 conformsToProtocol:&unk_28251B0C8])
    {
      v9 = v8;
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
      v14 = [(HUSceneActionEditorViewController *)v13 accessory];
      v15 = [v14 hf_isSingleServiceLikeAccessory];

      if (v15)
      {
        v16 = [(HUSceneActionEditorViewController *)v13 accessory];
        v17 = [v16 hf_primaryService];
        v18 = [(HUSceneActionEditorViewController *)v13 serviceItemForService:v17];

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
      v23 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      -[HUSceneActionEditorViewController setShouldIncludeRoomNameInHeaderTitle:](v22, "setShouldIncludeRoomNameInHeaderTitle:", [v23 shouldIncludeRoomNameInHeaderTitle]);
    }

LABEL_39:
    goto LABEL_40;
  }

  v24 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v25 = [v24 item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v27 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    v28 = [v27 item];
    v29 = v3[2](v3, v28);

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
      v32 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v33 = [v32 item];
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;

      v36 = objc_alloc(MEMORY[0x277D14398]);
      v37 = [v35 actionSet];

      v38 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      v39 = [v38 home];
      v40 = [v36 initWithExistingObject:v37 inHome:v39];

      v20 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v40 mode:0];
    }

    [(HUSceneActionEditorViewController *)v20 setShowCancelButton:0];
    goto LABEL_39;
  }

  v41 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v42 = [v41 item];
  objc_opt_class();
  v43 = objc_opt_isKindOfClass();

  if (v43)
  {
    objc_opt_class();
    v44 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    v45 = [v44 item];
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;

    v48 = [v47 sourceItem];

    if ([v48 conformsToProtocol:&unk_28251B0C8])
    {
      v49 = v48;
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
      v53 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
      -[HUSceneActionEditorViewController setShouldIncludeRoomNameInHeaderTitle:](v11, "setShouldIncludeRoomNameInHeaderTitle:", [v53 shouldIncludeRoomNameInHeaderTitle]);

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

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v8 = [v9 navigationBarTitleView];
  [v8 setHidden:(isKindOfClass & 1) == 0];
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
  v5 = [v4 transitionCoordinator];

  if (v5)
  {
    v6 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
    v7 = [v6 transitionCoordinator];
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
    [v7 animateAlongsideTransition:v9 completion:v8];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlPresentationCoordinator *)self targetView];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [v5 view];

  v12 = [(HUQuickControlPresentationCoordinator *)self delegate];
  LOBYTE(self) = [v12 presentationCoordinator:self shouldBeginInteractivePresentationWithTouchLocation:v11 view:{v8, v10}];

  return self;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HUQuickControlPresentationCoordinator *)self singleTapGestureRecognizer];

  if (v9 != v8)
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

  v10 = [(HUQuickControlPresentationCoordinator *)self doubleTapGestureRecognizer];

  if (v10 != v7)
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];
  v10 = v9;
  if (v9 == v7)
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
      v33 = v7;
      v34 = 2112;
      v35 = v8;
      v22 = "%@+Controls: %@ returning YES (first case) %@ %@";
      goto LABEL_16;
    }

LABEL_7:
    v16 = 1;
    goto LABEL_14;
  }

  v11 = [(HUQuickControlPresentationCoordinator *)self touchGestureRecognizer];

  if (v11 == v8)
  {
    goto LABEL_6;
  }

  v12 = [(HUQuickControlPresentationCoordinator *)self presentationInteraction];
  v13 = [v12 gestureRecognizerForExclusionRelationship];
  v14 = v13;
  if (v13 == v7)
  {
    v17 = [(HUQuickControlPresentationCoordinator *)self mutuallyExclusiveGestureRecognizers];
    v18 = [v17 containsObject:v8];

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
      v33 = v7;
      v34 = 2112;
      v35 = v8;
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

- (double)quickControlViewController:(id)a3 sourceViewInitialScaleForPresentation:(BOOL)a4
{
  if (!a4)
  {
    return 1.0;
  }

  v4 = [(HUQuickControlPresentationCoordinator *)self activePressedItemContext];
  [v4 currentViewScale];
  v6 = v5;

  return v6;
}

- (id)quickControlViewController:(id)a3 applierForSourceViewTransitionWithAnimationSettings:(id)a4 presenting:(BOOL)a5
{
  v7 = a4;
  v8 = [(HUQuickControlPresentationCoordinator *)self activePressedItemContext];
  v9 = [v8 item];

  v10 = [HUAnimationApplier dynamicApplierWithAnimationSettings:v7];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __131__HUQuickControlPresentationCoordinator_quickControlViewController_applierForSourceViewTransitionWithAnimationSettings_presenting___block_invoke;
  v13[3] = &unk_277DC4D40;
  v15 = a5;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
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

- (BOOL)hasDetailsActionForQuickControlViewController:(id)a3 item:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlPresentationCoordinator *)self delegate];
  LOBYTE(self) = [v6 hasDetailsActionForPresentationCoordinator:self item:v5];

  return self;
}

- (id)detailsViewControllerForQuickControlViewController:(id)a3 item:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v7 = [v6 detailsViewControllerForPresentationCoordinator:self item:v5];

  return v7;
}

- (void)quickControlViewControllerWillDismissDetailsViewController:(id)a3 shouldDismissQuickControl:(BOOL)a4
{
  if (a4)
  {
    v6 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    v5 = [v6 item];
    [(HUQuickControlPresentationCoordinator *)self _pressedStateDidEndForItem:v5 clearPresentationContext:0];
  }
}

- (void)quickControlViewControllerDidTapDetailsButton:(id)a3
{
  v3 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  [v3 scrollToDetailsViewAnimated:1];
}

- (void)statusDetailsViewControllerDidFinish:(id)a3
{
  v3 = [(HUQuickControlPresentationCoordinator *)self statusDetailsNavigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v7 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [v6 parentViewController];
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
    v11 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v12 = [v11 topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_11:

LABEL_12:
      v15 = [(HUQuickControlPresentationCoordinator *)self _dismissServiceDetailsViewController:v6 animated:v4];
      goto LABEL_22;
    }

    v13 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];
    v14 = [v13 topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      goto LABEL_11;
    }

    v16 = [(HUQuickControlPresentationCoordinator *)self cardNavigationController];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  objc_opt_class();
  if (v8 & 1 | ((objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = v6;
    if ([v17 conformsToProtocol:&unk_2824C3AE0])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = [v19 requiresPresentingViewControllerDismissal];
    if (v20)
    {
      v15 = [(HUQuickControlPresentationCoordinator *)self _dismissCardViewController];
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
    [v6 dismissViewControllerAnimated:1 completion:v23];
  }

  v15 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_22:
  v21 = v15;

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

- (void)itemManager:(id)a3 didChangeSourceItem:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v8 = [v7 itemManager];

  if (v8 == v12)
  {
    v9 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    [v9 setItem:v6];

    v10 = [v12 childItemsForItem:v6 ofClass:objc_opt_class()];
    v11 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
    [v11 setControlItems:v10];

    [(HUQuickControlPresentationCoordinator *)self _updateCardController];
  }
}

- (id)_dismissChildViewController
{
  v3 = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
    v6 = [v5 commitChanges];
    goto LABEL_10;
  }

  v5 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  if ([v5 hideSettings])
  {
    goto LABEL_10;
  }

  v7 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v8 = [v7 item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_9:

    goto LABEL_10;
  }

  v9 = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  v10 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v11 = [v10 settingsUnlocked];

  if (!v11)
  {
    goto LABEL_11;
  }

  v5 = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
  [v5 commitChanges];
LABEL_10:

LABEL_11:
  v12 = [(HUQuickControlPresentationCoordinator *)self settingsViewController];
  if ([v12 conformsToProtocol:&unk_2824C3AE0])
  {
    v13 = v12;
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
  v4 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v5 = [(HUQuickControlPresentationCoordinator *)self _dismissQuickControlViewControllerAnimated:1];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HUQuickControlPresentationCoordinator__dismissCardViewController__block_invoke;
  v9[3] = &unk_277DB8620;
  objc_copyWeak(&v11, &location);
  v6 = v4;
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

- (id)_dismissServiceDetailsViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUQuickControlPresentationCoordinator *)self presentationContext];
  v8 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HUQuickControlPresentationCoordinator *)self delegate];
    [v10 presentationCoordinator:self willEndPresentationWithContext:v7];
  }

  v11 = [(HUQuickControlPresentationCoordinator *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(HUQuickControlPresentationCoordinator *)self delegate];
    [v13 presentationCoordinatorWillBeginTransition:self presenting:0];
  }

  v14 = [(HUQuickControlPresentationCoordinator *)self transitionBlurView];
  [v14 removeFromSuperview];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __87__HUQuickControlPresentationCoordinator__dismissServiceDetailsViewController_animated___block_invoke;
  v21 = &unk_277DB7558;
  v22 = self;
  v23 = v7;
  v15 = v7;
  [v6 dismissViewControllerAnimated:v4 completion:&v18];

  v16 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v16;
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
  v2 = [(HUQuickControlPresentationCoordinator *)self cardViewController];
  v3 = [v2 traitCollection];
  v4 = [v3 layoutDirection] == 1;

  return v4;
}

- (CGRect)sourceFrameForAnimationController
{
  v3 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277D14670] isHomeControlService];

    if ((v4 & 1) == 0)
    {
      v5 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [(HUQuickControlPresentationCoordinator *)self presentingViewController];
  v5 = [v6 presentingViewController];

LABEL_6:
  v7 = [v5 splitViewController];
  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    v8 = [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
    [(HUQuickControlPresentationCoordinator *)self pressedTile_legacy];
  }

  else
  {
    v8 = [(HUQuickControlPresentationCoordinator *)self pressedTile];
    [(HUQuickControlPresentationCoordinator *)self pressedTile];
  }
  v9 = ;
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = v5;
  }

  v19 = [v18 view];
  [v8 convertRect:v19 toView:{v11, v13, v15, v17}];
  x = v20;
  y = v22;
  width = v24;
  height = v26;

  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
  {
    v28 = [v5 presentationController];
    [v28 frameOfPresentedViewInContainerView];
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

- (BOOL)_supportsDoubleClick:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_2824C4B08])
  {
    v4 = v3;
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