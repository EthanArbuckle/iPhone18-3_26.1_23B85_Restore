@interface CSHostedEntityViewController
- (BOOL)canHostAnApp;
- (BOOL)handlesRotationIndependentOfCoverSheet;
- (BOOL)isHostingAnApp;
- (CSHostableEntityPresenterDelegate)entityPresenterDelegate;
- (FBScene)sceneForTraitsParticipant;
- (NSSet)actionsToDeliverToHostableEntity;
- (SBApplicationSceneHandle)applicationSceneHandle;
- (SBApplicationSceneHandle)sceneHandleForTraitsParticipant;
- (id)acquireLiveContentAssertionForReason:(id)a3;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (id)traitsParticipantForSceneHandle:(id)a3;
- (int64_t)_effectiveContentMode;
- (int64_t)hostableEntityContentMode;
- (int64_t)hostableEntityOrientation;
- (void)_addEntityViewControllerIfNeeded;
- (void)_updateContentMode;
- (void)addGrabberView:(id)a3;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)aggregatePresentation:(id)a3;
- (void)dealloc;
- (void)hostableEntityPresenter:(id)a3 didBeginHosting:(id)a4;
- (void)hostableEntityPresenter:(id)a3 didEndHosting:(id)a4;
- (void)hostableEntityPresenter:(id)a3 didFailToActivate:(id)a4;
- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)a3;
- (void)invalidate;
- (void)setActionsToDeliverToHostableEntity:(id)a3;
- (void)setHomeGrabberView:(id)a3;
- (void)setHostedAppReferenceSize:(CGSize)a3 withInterfaceOrientation:(int64_t)a4;
- (void)setHostedEntity:(id)a3;
- (void)setInvalidationHandler:(id)a3;
- (void)viewDidLoad;
@end

@implementation CSHostedEntityViewController

- (BOOL)isHostingAnApp
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return ![(CSCoverSheetViewControllerBase *)self isDisappeared];
  }

  entityViewController = self->_entityViewController;

  return [(CSCoverSheetViewPresenting *)entityViewController isHostingAnApp];
}

- (CSHostableEntityPresenterDelegate)entityPresenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_entityPresenterDelegate);

  return WeakRetained;
}

- (SBApplicationSceneHandle)sceneHandleForTraitsParticipant
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CSCoverSheetViewPresenting *)self->_entityViewController sceneHandleForTraitsParticipant];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateContentMode
{
  v3 = [(CSHostedEntityViewController *)self _effectiveContentMode];
  if (objc_opt_respondsToSelector())
  {
    entityViewController = self->_entityViewController;

    [(CSCoverSheetViewPresenting *)entityViewController setHostableEntityContentMode:v3];
  }
}

- (int64_t)_effectiveContentMode
{
  desiredContentMode = self->_desiredContentMode;
  if ([(BSCompoundAssertion *)self->_liveContentAssertions isActive]&& self->_entityViewController)
  {
    return 2;
  }

  return desiredContentMode;
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_liveContentAssertions invalidate];
  v3.receiver = self;
  v3.super_class = CSHostedEntityViewController;
  [(CSCoverSheetViewControllerBase *)&v3 dealloc];
}

- (void)setHostedEntity:(id)a3
{
  v5 = a3;
  if (self->_hostedEntity != v5)
  {
    if (self->_entityViewController)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(CSCoverSheetViewPresenting *)self->_entityViewController actionsToDeliverToHostableEntity];
        [(CSCoverSheetViewPresenting *)self->_entityViewController setActionsToDeliverToHostableEntity:0];
      }

      else
      {
        v6 = 0;
      }

      entityViewController = self->_entityViewController;
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __48__CSHostedEntityViewController_setHostedEntity___block_invoke;
      v15 = &unk_27838BA70;
      v16 = v5;
      v17 = self;
      [(CSHostedEntityViewController *)self bs_removeChildViewController:entityViewController animated:0 transitionBlock:&v12];
      v9 = self->_entityViewController;
      self->_entityViewController = 0;

      pendingActionsToDeliverToHostableEntity = v16;
    }

    else
    {
      v6 = self->_pendingActionsToDeliverToHostableEntity;
      pendingActionsToDeliverToHostableEntity = self->_pendingActionsToDeliverToHostableEntity;
      self->_pendingActionsToDeliverToHostableEntity = 0;
    }

    objc_storeStrong(&self->_hostedEntity, a3);
    v10 = [(CSHostableEntity *)self->_hostedEntity hostingViewController];
    v11 = self->_entityViewController;
    self->_entityViewController = v10;

    [(CSCoverSheetViewPresenting *)self->_entityViewController setEntityPresenterDelegate:self];
    [(CSHostedEntityViewController *)self _addEntityViewControllerIfNeeded];
    if (objc_opt_respondsToSelector())
    {
      [(CSCoverSheetViewPresenting *)self->_entityViewController setActionsToDeliverToHostableEntity:v6];
    }

    else
    {
      objc_storeStrong(&self->_pendingActionsToDeliverToHostableEntity, v6);
    }

    [(CSCoverSheetViewControllerBase *)self rebuildBehavior:v12];
    [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  }
}

void __48__CSHostedEntityViewController_setHostedEntity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(*(a1 + 40) + 1080) invalidateForReplacementByEntity:*(a1 + 32)];
  }

  else
  {
    [*(*(a1 + 40) + 1080) invalidate];
  }

  v3[2]();
}

- (id)acquireLiveContentAssertionForReason:(id)a3
{
  v4 = a3;
  liveContentAssertions = self->_liveContentAssertions;
  if (!liveContentAssertions)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __69__CSHostedEntityViewController_acquireLiveContentAssertionForReason___block_invoke;
    v16 = &unk_27838DFB0;
    objc_copyWeak(&v17, &location);
    v9 = [v6 assertionWithIdentifier:v8 stateDidChangeHandler:&v13];
    v10 = self->_liveContentAssertions;
    self->_liveContentAssertions = v9;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    liveContentAssertions = self->_liveContentAssertions;
  }

  v11 = [(BSCompoundAssertion *)liveContentAssertions acquireForReason:v4, v13, v14, v15, v16];

  return v11;
}

void __69__CSHostedEntityViewController_acquireLiveContentAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v4, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v4);
}

void __69__CSHostedEntityViewController_acquireLiveContentAssertionForReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateContentMode];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSHostedEntityViewController;
  [(CSCoverSheetViewControllerBase *)&v3 viewDidLoad];
  [(CSHostedEntityViewController *)self _addEntityViewControllerIfNeeded];
}

- (void)aggregateBehavior:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSHostedEntityViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v5 aggregateBehavior:v4];
  [v4 unionBehavior:{self->_entityViewController, v5.receiver, v5.super_class}];
}

- (void)aggregateAppearance:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSHostedEntityViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v5 aggregateAppearance:v4];
  [v4 unionAppearance:{self->_entityViewController, v5.receiver, v5.super_class}];
}

- (void)aggregatePresentation:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSHostedEntityViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v5 aggregatePresentation:v4];
  [v4 unionPresentation:{self->_entityViewController, v5.receiver, v5.super_class}];
}

- (BOOL)canHostAnApp
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  entityViewController = self->_entityViewController;

  return [(CSCoverSheetViewPresenting *)entityViewController canHostAnApp];
}

- (id)hostedAppSceneHandle
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CSCoverSheetViewPresenting *)self->_entityViewController hostedAppSceneHandle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hostedAppSceneHandles
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CSCoverSheetViewPresenting *)self->_entityViewController hostedAppSceneHandles];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(CSCoverSheetViewPresenting *)self->_entityViewController setInvalidationHandler:v4];
  }
}

- (id)traitsParticipantForSceneHandle:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CSCoverSheetViewPresenting *)self->_entityViewController traitsParticipantForSceneHandle:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHostedAppReferenceSize:(CGSize)a3 withInterfaceOrientation:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  if (objc_opt_respondsToSelector())
  {
    entityViewController = self->_entityViewController;

    [(CSCoverSheetViewPresenting *)entityViewController setHostedAppReferenceSize:a4 withInterfaceOrientation:width, height];
  }
}

- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)a3
{
  if (objc_opt_respondsToSelector())
  {
    entityViewController = self->_entityViewController;

    [(CSCoverSheetViewPresenting *)entityViewController hostedAppWillRotateToInterfaceOrientation:a3];
  }
}

- (BOOL)handlesRotationIndependentOfCoverSheet
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  entityViewController = self->_entityViewController;

  return [(CSCoverSheetViewPresenting *)entityViewController handlesRotationIndependentOfCoverSheet];
}

- (int64_t)hostableEntityContentMode
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 2;
  }

  entityViewController = self->_entityViewController;

  return [(CSCoverSheetViewPresenting *)entityViewController hostableEntityContentMode];
}

- (NSSet)actionsToDeliverToHostableEntity
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CSCoverSheetViewPresenting *)self->_entityViewController actionsToDeliverToHostableEntity];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionsToDeliverToHostableEntity:(id)a3
{
  v8 = a3;
  v4 = objc_opt_respondsToSelector();
  entityViewController = self->_entityViewController;
  if (v4)
  {
    [(CSCoverSheetViewPresenting *)entityViewController setActionsToDeliverToHostableEntity:v8];
  }

  else if (!entityViewController)
  {
    v6 = [v8 copy];
    pendingActionsToDeliverToHostableEntity = self->_pendingActionsToDeliverToHostableEntity;
    self->_pendingActionsToDeliverToHostableEntity = v6;
  }
}

- (int64_t)hostableEntityOrientation
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  entityViewController = self->_entityViewController;

  return [(CSCoverSheetViewPresenting *)entityViewController hostableEntityOrientation];
}

- (FBScene)sceneForTraitsParticipant
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CSCoverSheetViewPresenting *)self->_entityViewController sceneForTraitsParticipant];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHomeGrabberView:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(UIView *)self->_grabberView removeFromSuperview];
    objc_storeStrong(&self->_grabberView, a3);
    v5 = [(CSHostedEntityViewController *)self view];
    grabberView = self->_grabberView;
    [v5 bounds];
    [(UIView *)grabberView setFrame:?];
    [(UIView *)self->_grabberView setAutoresizingMask:18];
    [v5 addSubview:self->_grabberView];
  }
}

- (void)hostableEntityPresenter:(id)a3 didBeginHosting:(id)a4
{
  v6 = a4;
  v5 = [(CSHostedEntityViewController *)self entityPresenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 hostableEntityPresenter:self didBeginHosting:v6];
  }
}

- (void)hostableEntityPresenter:(id)a3 didEndHosting:(id)a4
{
  v6 = a4;
  v5 = [(CSHostedEntityViewController *)self entityPresenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 hostableEntityPresenter:self didEndHosting:v6];
  }
}

- (void)hostableEntityPresenter:(id)a3 didFailToActivate:(id)a4
{
  v6 = a4;
  v5 = [(CSHostedEntityViewController *)self entityPresenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 hostableEntityPresenter:self didFailToActivate:v6];
  }
}

- (SBApplicationSceneHandle)applicationSceneHandle
{
  if (objc_opt_respondsToSelector())
  {
    [(CSCoverSheetViewPresenting *)self->_entityViewController applicationSceneHandle];
  }

  else
  {
    [(CSHostedEntityViewController *)self hostedAppSceneHandle];
  }
  v3 = ;

  return v3;
}

- (void)addGrabberView:(id)a3
{
  v4 = a3;
  v5 = NSClassFromString(&cfstr_Sbhomegrabberv.isa);
  v8 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [(CSHostedEntityViewController *)self setHomeGrabberView:v7];
  }
}

- (void)invalidate
{
  [(CSCoverSheetViewPresenting *)self->_entityViewController invalidate];
  entityViewController = self->_entityViewController;
  self->_entityViewController = 0;

  hostedEntity = self->_hostedEntity;
  self->_hostedEntity = 0;
}

- (void)_addEntityViewControllerIfNeeded
{
  v3 = [(CSHostedEntityViewController *)self viewIfLoaded];
  v4 = [(CSCoverSheetViewPresenting *)self->_entityViewController parentViewController];

  if (v4 != self && v3 != 0)
  {
    [(CSHostedEntityViewController *)self _updateContentMode];
    v6 = [(CSCoverSheetViewPresenting *)self->_entityViewController view];
    entityViewController = self->_entityViewController;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__CSHostedEntityViewController__addEntityViewControllerIfNeeded__block_invoke;
    v9[3] = &unk_27838D0F8;
    v10 = v6;
    v11 = v3;
    v12 = self;
    v8 = v6;
    [(CSHostedEntityViewController *)self bs_addChildViewController:entityViewController animated:0 transitionBlock:v9];
  }
}

void __64__CSHostedEntityViewController__addEntityViewControllerIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  [*(a1 + 40) bounds];
  [v3 setFrame:?];
  [*(a1 + 32) setAutoresizingMask:18];
  if (*(*(a1 + 48) + 1088))
  {
    [*(a1 + 40) bringSubviewToFront:?];
  }

  v4[2]();
}

@end