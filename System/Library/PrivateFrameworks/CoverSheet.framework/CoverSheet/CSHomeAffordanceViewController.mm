@interface CSHomeAffordanceViewController
- (CGPoint)homeAffordanceOffset;
- (CGRect)_homeAffordanceRestingFrame;
- (CGRect)homeAffordanceFrameForHomeAffordanceInteraction:(id)interaction;
- (CSHomeAffordanceViewController)initWithCoverSheetContext:(id)context;
- (CSHomeAffordanceViewControllerDelegate)delegate;
- (id)_addWrapperViewWithOrientation:(int64_t)orientation;
- (void)_handleSuppressAnimationForPointerGesture:(id)gesture;
- (void)_layoutHomeAffordance;
- (void)_updateHomeAffordanceInteraction;
- (void)aggregateAppearance:(id)appearance;
- (void)homeAffordanceInteractionDidFailToRecognizeDoubleTap:(id)tap;
- (void)homeAffordanceInteractionDidRecognizeDoubleTap:(id)tap;
- (void)homeAffordanceInteractionDidRecognizeSingleClick:(id)click;
- (void)homeAffordanceInteractionDidRecognizeSingleTap:(id)tap;
- (void)setDelegate:(id)delegate;
- (void)setHomeAffordanceOffset:(CGPoint)offset;
- (void)setHomeAffordanceOffset:(CGPoint)offset scale:(double)scale;
- (void)setHomeAffordanceScale:(double)scale;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CSHomeAffordanceViewController

- (CSHomeAffordanceViewController)initWithCoverSheetContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = CSHomeAffordanceViewController;
  v6 = [(CSCoverSheetViewControllerBase *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coverSheetContext, context);
    v7->_homeAffordanceScale = 1.0;
    rootSettings = [MEMORY[0x277D65E80] rootSettings];
    settings = v7->_settings;
    v7->_settings = rootSettings;
  }

  return v7;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CSHomeAffordanceViewController;
  [(CSCoverSheetViewControllerBase *)&v11 viewDidLoad];
  view = [(CSHomeAffordanceViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  counterRotationView = self->_counterRotationView;
  self->_counterRotationView = v4;

  [view addSubview:self->_counterRotationView];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  rotationWrapperViews = self->_rotationWrapperViews;
  self->_rotationWrapperViews = v6;

  v8 = [(CSHomeAffordanceViewController *)self _addWrapperViewWithOrientation:self->_orientation];
  v9 = [[CSHomeAffordanceView alloc] initWithCoverSheetContext:self->_coverSheetContext];
  homeAffordanceView = self->_homeAffordanceView;
  self->_homeAffordanceView = v9;

  [v8 addSubview:self->_homeAffordanceView];
  [(CSHomeAffordanceViewController *)self _updateHomeAffordanceInteraction];
}

- (void)viewDidLayoutSubviews
{
  v31 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = CSHomeAffordanceViewController;
  [(CSCoverSheetViewControllerBase *)&v29 viewDidLayoutSubviews];
  view = [(CSHomeAffordanceViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_counterRotationView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_counterRotationView bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = self->_rotationWrapperViews;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v25 + 1) + 8 * v24++) setFrame:{v13, v15, v17, v19, v25}];
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v22);
  }

  [(CSHomeAffordanceViewController *)self _layoutHomeAffordance];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CSHomeAffordanceViewController;
  [(CSCoverSheetViewControllerBase *)&v8 viewDidAppear:appear];
  if (!self->_suppressAnimationForPointerGestureRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:self action:sel__handleSuppressAnimationForPointerGesture_];
    suppressAnimationForPointerGestureRecognizer = self->_suppressAnimationForPointerGestureRecognizer;
    self->_suppressAnimationForPointerGestureRecognizer = v4;
  }

  view = [(CSHomeAffordanceViewController *)self view];
  window = [view window];
  [window addGestureRecognizer:self->_suppressAnimationForPointerGestureRecognizer];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CSHomeAffordanceViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidDisappear:disappear];
  view = [(CSHomeAffordanceViewController *)self view];
  window = [view window];
  [window removeGestureRecognizer:self->_suppressAnimationForPointerGestureRecognizer];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v46.receiver = self;
  v46.super_class = CSHomeAffordanceViewController;
  [(CSCoverSheetViewControllerBase *)&v46 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = SBFWindowForViewControllerTransition();
  _toWindowOrientation = [v8 _toWindowOrientation];

  isAnimated = [coordinatorCopy isAnimated];
  firstObject = [(NSMutableArray *)self->_rotationWrapperViews firstObject];
  if (isAnimated)
  {
    v12 = [(CSHomeAffordanceViewController *)self _addWrapperViewWithOrientation:_toWindowOrientation];
    [v12 setAlpha:0.0];
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __85__CSHomeAffordanceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v41[3] = &unk_27838D940;
    v15 = v13;
    v42 = v15;
    v16 = v14;
    v43 = v16;
    selfCopy = self;
    v17 = v12;
    v45 = v17;
    v18 = MEMORY[0x223D698D0](v41);
    rotationFadeOutAnimationSettings = [(SBFHomeGrabberSettings *)self->_settings rotationFadeOutAnimationSettings];
    bSAnimationSettings = [rotationFadeOutAnimationSettings BSAnimationSettings];

    v21 = MEMORY[0x277CF0D38];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __85__CSHomeAffordanceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
    v39[3] = &unk_27838B770;
    v40 = firstObject;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __85__CSHomeAffordanceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
    v34[3] = &unk_27838D968;
    v34[4] = self;
    v35 = v17;
    v36 = v40;
    v37 = v15;
    v22 = v18;
    v38 = v22;
    v28 = v15;
    v23 = v40;
    firstObject = v17;
    [v21 animateWithSettings:bSAnimationSettings actions:v39 completion:v34];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __85__CSHomeAffordanceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_5;
    v33[3] = &unk_27838D990;
    v33[4] = self;
    v33[5] = _toWindowOrientation;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __85__CSHomeAffordanceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_6;
    v30[3] = &unk_27838D9B8;
    v31 = v16;
    v32 = v22;
    v24 = v22;
    v25 = v16;
    [coordinatorCopy animateAlongsideTransition:v33 completion:v30];
  }

  else
  {
    counterRotationView = self->_counterRotationView;
    SBFTransformFromOrientationToOrientation();
    [(UIView *)counterRotationView setTransform:v29];
    SBFTransformFromOrientationToOrientation();
    [firstObject setTransform:v29];
  }

  view = [(CSHomeAffordanceViewController *)self view];
  [view setNeedsLayout];
}

void __85__CSHomeAffordanceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasBeenSignalled] && objc_msgSend(*(a1 + 40), "hasBeenSignalled"))
  {
    v2 = [*(*(a1 + 48) + 1072) firstObject];
    v3 = *(a1 + 56);

    if (v2 == v3)
    {
      v4 = [*(*(a1 + 48) + 1088) rotationFadeInAnimationSettings];
      v5 = [v4 BSAnimationSettings];

      v6 = MEMORY[0x277CF0D38];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __85__CSHomeAffordanceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
      v7[3] = &unk_27838B770;
      v8 = *(a1 + 56);
      [v6 animateWithSettings:v5 actions:v7];
    }
  }
}

uint64_t __85__CSHomeAffordanceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1072) firstObject];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    [*(a1 + 40) addSubview:*(*(a1 + 32) + 1136)];
    v4 = [*(a1 + 32) view];
    [v4 setNeedsLayout];
  }

  [*(*(a1 + 32) + 1072) removeObject:*(a1 + 48)];
  [*(a1 + 48) removeFromSuperview];
  [*(a1 + 56) signal];
  v5 = *(*(a1 + 64) + 16);

  return v5();
}

void __85__CSHomeAffordanceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_5(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1064);
  SBFTransformFromOrientationToOrientation();
  [v2 setTransform:&v5];
  v3 = [*(a1 + 32) view];
  [v3 setNeedsLayout];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

uint64_t __85__CSHomeAffordanceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) signal];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained isEqual:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xF7 | v9;
  }
}

- (void)setHomeAffordanceOffset:(CGPoint)offset
{
  if (self->_homeAffordanceOffset.x != offset.x || self->_homeAffordanceOffset.y != offset.y)
  {
    self->_homeAffordanceOffset = offset;
    [(CSHomeAffordanceViewController *)self _layoutHomeAffordance];
  }
}

- (void)setHomeAffordanceScale:(double)scale
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_homeAffordanceScale = scale;

    [(CSHomeAffordanceViewController *)self _layoutHomeAffordance];
  }
}

- (void)setHomeAffordanceOffset:(CGPoint)offset scale:(double)scale
{
  if (self->_homeAffordanceOffset.x == offset.x && self->_homeAffordanceOffset.y == offset.y)
  {
    p_homeAffordanceScale = &self->_homeAffordanceScale;
    if (BSFloatEqualToFloat())
    {
      return;
    }
  }

  else
  {
    self->_homeAffordanceOffset = offset;
    p_homeAffordanceScale = &self->_homeAffordanceScale;
    if (BSFloatEqualToFloat())
    {
      goto LABEL_9;
    }
  }

  *p_homeAffordanceScale = scale;
LABEL_9:

  [(CSHomeAffordanceViewController *)self _layoutHomeAffordance];
}

- (void)_layoutHomeAffordance
{
  [(CSHomeAffordanceViewController *)self _homeAffordanceRestingFrame];
  v4 = v3;
  v6 = v5;
  UIRectGetCenter();
  v8 = v7;
  v10 = v9;
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  [(CSHomeAffordanceViewController *)self homeAffordanceOffset];
  [(CSHomeAffordanceView *)self->_homeAffordanceView setCenter:v8 + v13, v10 + v14];
  [(CSHomeAffordanceView *)self->_homeAffordanceView setBounds:v11, v12, v4, v6];
  [(CSHomeAffordanceViewController *)self homeAffordanceScale];
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  if (BSFloatIsOne())
  {
    v15 = *(MEMORY[0x277CBF2C0] + 16);
    v19 = *MEMORY[0x277CBF2C0];
    v20 = v15;
    v21 = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    superview = [(CSHomeAffordanceView *)self->_homeAffordanceView superview];
    [superview bounds];
    UIRectGetCenter();

    SBFTransformForScalingAboutPointInSuperview();
  }

  homeAffordanceView = self->_homeAffordanceView;
  v18[0] = v19;
  v18[1] = v20;
  v18[2] = v21;
  [(CSHomeAffordanceView *)homeAffordanceView setTransform:v18];
  [(SBFHomeAffordanceInteraction *)self->_homeAffordanceInteraction setNeedsUpdate];
}

- (CGRect)_homeAffordanceRestingFrame
{
  superview = [(CSHomeAffordanceView *)self->_homeAffordanceView superview];
  [superview bounds];
  v5 = v4;
  traitCollection = [(CSHomeAffordanceViewController *)self traitCollection];
  [traitCollection displayScale];

  [(CSHomeAffordanceView *)self->_homeAffordanceView suggestedSizeForContentWidth:v5];
  [(CSHomeAffordanceView *)self->_homeAffordanceView suggestedEdgeSpacing];
  BSRectRoundForScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)_addWrapperViewWithOrientation:(int64_t)orientation
{
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(NSMutableArray *)self->_rotationWrapperViews insertObject:v4 atIndex:0];
  SBFTransformFromOrientationToOrientation();
  [v4 setTransform:&v6];
  [(UIView *)self->_counterRotationView addSubview:v4];

  return v4;
}

- (void)_handleSuppressAnimationForPointerGesture:(id)gesture
{
  gestureCopy = gesture;
  if (([gestureCopy state] - 6) > 0xFFFFFFFFFFFFFFFCLL)
  {
    v9 = 0;
  }

  else
  {
    view = [(CSHomeAffordanceViewController *)self view];
    [gestureCopy locationInView:view];
    v6 = v5;
    v8 = v7;

    [(CSHomeAffordanceView *)self->_homeAffordanceView extendedFrameForPointerAnimationSuppression];
    v12.x = v6;
    v12.y = v8;
    v9 = CGRectContainsPoint(v13, v12);
  }

  if (self->_suppressAnimationForPointer != v9)
  {
    self->_suppressAnimationForPointer = v9;
    [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  }
}

- (void)_updateHomeAffordanceInteraction
{
  assistantController = [(CSCoverSheetContextProviding *)self->_coverSheetContext assistantController];
  isHomeAffordanceDoubleTapGestureEnabled = [assistantController isHomeAffordanceDoubleTapGestureEnabled];

  homeAffordanceInteraction = self->_homeAffordanceInteraction;
  if (isHomeAffordanceDoubleTapGestureEnabled)
  {
    if (!homeAffordanceInteraction)
    {
      homeAffordanceInteractionProvider = [(CSCoverSheetContextProviding *)self->_coverSheetContext homeAffordanceInteractionProvider];
      newHomeAffordanceInteraction = [homeAffordanceInteractionProvider newHomeAffordanceInteraction];
      v8 = self->_homeAffordanceInteraction;
      self->_homeAffordanceInteraction = newHomeAffordanceInteraction;

      [(SBFHomeAffordanceInteraction *)self->_homeAffordanceInteraction setDelegate:self];
      homeAffordanceView = self->_homeAffordanceView;
      v10 = self->_homeAffordanceInteraction;

      [(CSHomeAffordanceView *)homeAffordanceView addInteraction:v10];
    }
  }

  else if (homeAffordanceInteraction)
  {
    [(CSHomeAffordanceView *)self->_homeAffordanceView removeInteraction:?];
    v11 = self->_homeAffordanceInteraction;
    self->_homeAffordanceInteraction = 0;
  }
}

- (void)aggregateAppearance:(id)appearance
{
  v7.receiver = self;
  v7.super_class = CSHomeAffordanceViewController;
  appearanceCopy = appearance;
  [(CSCoverSheetViewControllerBase *)&v7 aggregateAppearance:appearanceCopy];
  v4 = objc_opt_new();
  v5 = [v4 priority:{10, v7.receiver, v7.super_class}];
  v6 = [v5 suppressTeachableMomentsAnimation:BSSettingFlagIfYes()];
  [appearanceCopy addComponent:v6];
}

- (CGRect)homeAffordanceFrameForHomeAffordanceInteraction:(id)interaction
{
  [(CSHomeAffordanceView *)self->_homeAffordanceView bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)homeAffordanceInteractionDidRecognizeSingleTap:(id)tap
{
  tapCopy = tap;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  delegateRespondsTo = self->_delegateRespondsTo;
  if (delegateRespondsTo)
  {
    [WeakRetained homeAffordanceViewControllerDidRecognizeSingleTap:self];
  }

  homeAffordanceView = self->_homeAffordanceView;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__CSHomeAffordanceViewController_homeAffordanceInteractionDidRecognizeSingleTap___block_invoke;
  v10[3] = &unk_27838D9E0;
  v13 = (delegateRespondsTo & 8) != 0;
  v9 = v6;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [(CSHomeAffordanceView *)homeAffordanceView performHintAnimationWithCompletionHandler:v10];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

void __81__CSHomeAffordanceViewController_homeAffordanceInteractionDidRecognizeSingleTap___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [v4 homeAffordanceViewController:WeakRetained didCompleteHomeAffordanceHintAnimation:a2];
  }
}

- (void)homeAffordanceInteractionDidRecognizeDoubleTap:(id)tap
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained homeAffordanceViewControllerDidRecognizeDoubleTap:self];
  }
}

- (void)homeAffordanceInteractionDidFailToRecognizeDoubleTap:(id)tap
{
  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained homeAffordanceViewControllerDidFailToRecognizeDoubleTap:self];
  }
}

- (void)homeAffordanceInteractionDidRecognizeSingleClick:(id)click
{
  if ((*&self->_delegateRespondsTo & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained homeAffordanceViewControllerDidRecognizeSingleClick:self];
  }
}

- (CSHomeAffordanceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)homeAffordanceOffset
{
  x = self->_homeAffordanceOffset.x;
  y = self->_homeAffordanceOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end