@interface CSHostedEntityViewController
- (BOOL)canHostAnApp;
- (BOOL)handlesRotationIndependentOfCoverSheet;
- (BOOL)isHostingAnApp;
- (CSHostableEntityPresenterDelegate)entityPresenterDelegate;
- (FBScene)sceneForTraitsParticipant;
- (NSSet)actionsToDeliverToHostableEntity;
- (SBApplicationSceneHandle)applicationSceneHandle;
- (SBApplicationSceneHandle)sceneHandleForTraitsParticipant;
- (id)acquireLiveContentAssertionForReason:(id)reason;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (id)traitsParticipantForSceneHandle:(id)handle;
- (int64_t)_effectiveContentMode;
- (int64_t)hostableEntityContentMode;
- (int64_t)hostableEntityOrientation;
- (void)_addEntityViewControllerIfNeeded;
- (void)_updateContentMode;
- (void)addGrabberView:(id)view;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)aggregatePresentation:(id)presentation;
- (void)dealloc;
- (void)hostableEntityPresenter:(id)presenter didBeginHosting:(id)hosting;
- (void)hostableEntityPresenter:(id)presenter didEndHosting:(id)hosting;
- (void)hostableEntityPresenter:(id)presenter didFailToActivate:(id)activate;
- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)orientation;
- (void)invalidate;
- (void)setActionsToDeliverToHostableEntity:(id)entity;
- (void)setHomeGrabberView:(id)view;
- (void)setHostedAppReferenceSize:(CGSize)size withInterfaceOrientation:(int64_t)orientation;
- (void)setHostedEntity:(id)entity;
- (void)setInvalidationHandler:(id)handler;
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
    sceneHandleForTraitsParticipant = [(CSCoverSheetViewPresenting *)self->_entityViewController sceneHandleForTraitsParticipant];
  }

  else
  {
    sceneHandleForTraitsParticipant = 0;
  }

  return sceneHandleForTraitsParticipant;
}

- (void)_updateContentMode
{
  _effectiveContentMode = [(CSHostedEntityViewController *)self _effectiveContentMode];
  if (objc_opt_respondsToSelector())
  {
    entityViewController = self->_entityViewController;

    [(CSCoverSheetViewPresenting *)entityViewController setHostableEntityContentMode:_effectiveContentMode];
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

- (void)setHostedEntity:(id)entity
{
  entityCopy = entity;
  if (self->_hostedEntity != entityCopy)
  {
    if (self->_entityViewController)
    {
      if (objc_opt_respondsToSelector())
      {
        actionsToDeliverToHostableEntity = [(CSCoverSheetViewPresenting *)self->_entityViewController actionsToDeliverToHostableEntity];
        [(CSCoverSheetViewPresenting *)self->_entityViewController setActionsToDeliverToHostableEntity:0];
      }

      else
      {
        actionsToDeliverToHostableEntity = 0;
      }

      entityViewController = self->_entityViewController;
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __48__CSHostedEntityViewController_setHostedEntity___block_invoke;
      v15 = &unk_27838BA70;
      v16 = entityCopy;
      selfCopy = self;
      [(CSHostedEntityViewController *)self bs_removeChildViewController:entityViewController animated:0 transitionBlock:&v12];
      v9 = self->_entityViewController;
      self->_entityViewController = 0;

      pendingActionsToDeliverToHostableEntity = v16;
    }

    else
    {
      actionsToDeliverToHostableEntity = self->_pendingActionsToDeliverToHostableEntity;
      pendingActionsToDeliverToHostableEntity = self->_pendingActionsToDeliverToHostableEntity;
      self->_pendingActionsToDeliverToHostableEntity = 0;
    }

    objc_storeStrong(&self->_hostedEntity, entity);
    hostingViewController = [(CSHostableEntity *)self->_hostedEntity hostingViewController];
    v11 = self->_entityViewController;
    self->_entityViewController = hostingViewController;

    [(CSCoverSheetViewPresenting *)self->_entityViewController setEntityPresenterDelegate:self];
    [(CSHostedEntityViewController *)self _addEntityViewControllerIfNeeded];
    if (objc_opt_respondsToSelector())
    {
      [(CSCoverSheetViewPresenting *)self->_entityViewController setActionsToDeliverToHostableEntity:actionsToDeliverToHostableEntity];
    }

    else
    {
      objc_storeStrong(&self->_pendingActionsToDeliverToHostableEntity, actionsToDeliverToHostableEntity);
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

- (id)acquireLiveContentAssertionForReason:(id)reason
{
  reasonCopy = reason;
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

  v11 = [(BSCompoundAssertion *)liveContentAssertions acquireForReason:reasonCopy, v13, v14, v15, v16];

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

- (void)aggregateBehavior:(id)behavior
{
  v5.receiver = self;
  v5.super_class = CSHostedEntityViewController;
  behaviorCopy = behavior;
  [(CSCoverSheetViewControllerBase *)&v5 aggregateBehavior:behaviorCopy];
  [behaviorCopy unionBehavior:{self->_entityViewController, v5.receiver, v5.super_class}];
}

- (void)aggregateAppearance:(id)appearance
{
  v5.receiver = self;
  v5.super_class = CSHostedEntityViewController;
  appearanceCopy = appearance;
  [(CSCoverSheetViewControllerBase *)&v5 aggregateAppearance:appearanceCopy];
  [appearanceCopy unionAppearance:{self->_entityViewController, v5.receiver, v5.super_class}];
}

- (void)aggregatePresentation:(id)presentation
{
  v5.receiver = self;
  v5.super_class = CSHostedEntityViewController;
  presentationCopy = presentation;
  [(CSCoverSheetViewControllerBase *)&v5 aggregatePresentation:presentationCopy];
  [presentationCopy unionPresentation:{self->_entityViewController, v5.receiver, v5.super_class}];
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
    hostedAppSceneHandle = [(CSCoverSheetViewPresenting *)self->_entityViewController hostedAppSceneHandle];
  }

  else
  {
    hostedAppSceneHandle = 0;
  }

  return hostedAppSceneHandle;
}

- (id)hostedAppSceneHandles
{
  if (objc_opt_respondsToSelector())
  {
    hostedAppSceneHandles = [(CSCoverSheetViewPresenting *)self->_entityViewController hostedAppSceneHandles];
  }

  else
  {
    hostedAppSceneHandles = 0;
  }

  return hostedAppSceneHandles;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    [(CSCoverSheetViewPresenting *)self->_entityViewController setInvalidationHandler:handlerCopy];
  }
}

- (id)traitsParticipantForSceneHandle:(id)handle
{
  handleCopy = handle;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CSCoverSheetViewPresenting *)self->_entityViewController traitsParticipantForSceneHandle:handleCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHostedAppReferenceSize:(CGSize)size withInterfaceOrientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  if (objc_opt_respondsToSelector())
  {
    entityViewController = self->_entityViewController;

    [(CSCoverSheetViewPresenting *)entityViewController setHostedAppReferenceSize:orientation withInterfaceOrientation:width, height];
  }
}

- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)orientation
{
  if (objc_opt_respondsToSelector())
  {
    entityViewController = self->_entityViewController;

    [(CSCoverSheetViewPresenting *)entityViewController hostedAppWillRotateToInterfaceOrientation:orientation];
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
    actionsToDeliverToHostableEntity = [(CSCoverSheetViewPresenting *)self->_entityViewController actionsToDeliverToHostableEntity];
  }

  else
  {
    actionsToDeliverToHostableEntity = 0;
  }

  return actionsToDeliverToHostableEntity;
}

- (void)setActionsToDeliverToHostableEntity:(id)entity
{
  entityCopy = entity;
  v4 = objc_opt_respondsToSelector();
  entityViewController = self->_entityViewController;
  if (v4)
  {
    [(CSCoverSheetViewPresenting *)entityViewController setActionsToDeliverToHostableEntity:entityCopy];
  }

  else if (!entityViewController)
  {
    v6 = [entityCopy copy];
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
    sceneForTraitsParticipant = [(CSCoverSheetViewPresenting *)self->_entityViewController sceneForTraitsParticipant];
  }

  else
  {
    sceneForTraitsParticipant = 0;
  }

  return sceneForTraitsParticipant;
}

- (void)setHomeGrabberView:(id)view
{
  viewCopy = view;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(UIView *)self->_grabberView removeFromSuperview];
    objc_storeStrong(&self->_grabberView, view);
    view = [(CSHostedEntityViewController *)self view];
    grabberView = self->_grabberView;
    [view bounds];
    [(UIView *)grabberView setFrame:?];
    [(UIView *)self->_grabberView setAutoresizingMask:18];
    [view addSubview:self->_grabberView];
  }
}

- (void)hostableEntityPresenter:(id)presenter didBeginHosting:(id)hosting
{
  hostingCopy = hosting;
  entityPresenterDelegate = [(CSHostedEntityViewController *)self entityPresenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [entityPresenterDelegate hostableEntityPresenter:self didBeginHosting:hostingCopy];
  }
}

- (void)hostableEntityPresenter:(id)presenter didEndHosting:(id)hosting
{
  hostingCopy = hosting;
  entityPresenterDelegate = [(CSHostedEntityViewController *)self entityPresenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [entityPresenterDelegate hostableEntityPresenter:self didEndHosting:hostingCopy];
  }
}

- (void)hostableEntityPresenter:(id)presenter didFailToActivate:(id)activate
{
  activateCopy = activate;
  entityPresenterDelegate = [(CSHostedEntityViewController *)self entityPresenterDelegate];
  if (objc_opt_respondsToSelector())
  {
    [entityPresenterDelegate hostableEntityPresenter:self didFailToActivate:activateCopy];
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

- (void)addGrabberView:(id)view
{
  viewCopy = view;
  v5 = NSClassFromString(&cfstr_Sbhomegrabberv.isa);
  v8 = viewCopy;
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
  viewIfLoaded = [(CSHostedEntityViewController *)self viewIfLoaded];
  parentViewController = [(CSCoverSheetViewPresenting *)self->_entityViewController parentViewController];

  if (parentViewController != self && viewIfLoaded != 0)
  {
    [(CSHostedEntityViewController *)self _updateContentMode];
    view = [(CSCoverSheetViewPresenting *)self->_entityViewController view];
    entityViewController = self->_entityViewController;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__CSHostedEntityViewController__addEntityViewControllerIfNeeded__block_invoke;
    v9[3] = &unk_27838D0F8;
    v10 = view;
    v11 = viewIfLoaded;
    selfCopy = self;
    v8 = view;
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