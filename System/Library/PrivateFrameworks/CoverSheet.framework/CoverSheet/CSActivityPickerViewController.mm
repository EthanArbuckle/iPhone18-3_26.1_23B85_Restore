@interface CSActivityPickerViewController
- (BOOL)handleEvent:(id)event;
- (BOOL)wouldHandleButtonEvent:(id)event;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (CSActivityPickerViewControllerDelegate)delegate;
- (CSActivityPickerViewControllerParentContainer)parentContainer;
- (CSDismissableModalViewController)modalPresenter;
- (void)_dismissWithRepresentedActivity:(id)activity transitionCoordinator:(id)coordinator;
- (void)_presentFromView:(id)view representedActivity:(id)activity transitionCoordinator:(id)coordinator;
- (void)addGrabberView:(id)view;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)dismiss;
- (void)handleTap:(id)tap;
- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CSActivityPickerViewController

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CSActivityPickerViewController;
  [(CSCoverSheetViewControllerBase *)&v17 viewDidLoad];
  view = [(CSActivityPickerViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  contentView = self->_contentView;
  self->_contentView = v5;

  [(UIView *)self->_contentView setClipsToBounds:1];
  [view addSubview:self->_contentView];
  [(UIView *)self->_contentView setAutoresizingMask:18];
  v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v7;

  [(UIView *)self->_contentView addGestureRecognizer:self->_tapGesture];
  v9 = [MEMORY[0x277D26718] materialViewWithRecipe:20 options:2 initialWeighting:0.0];
  backgroundMaterialView = self->_backgroundMaterialView;
  self->_backgroundMaterialView = v9;

  v11 = self->_backgroundMaterialView;
  [view bounds];
  [(MTMaterialView *)v11 setFrame:?];
  [(UIView *)self->_contentView addSubview:self->_backgroundMaterialView];
  [(MTMaterialView *)self->_backgroundMaterialView setAutoresizingMask:18];
  v12 = objc_alloc_init(MEMORY[0x277D0AA08]);
  activityPickerViewController = self->_activityPickerViewController;
  self->_activityPickerViewController = v12;

  traitCollection = [(CSActivityPickerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(FCUIActivityPickerViewController *)self->_activityPickerViewController setFooterPinnedToBottom:0];
  }

  [(CSActivityPickerViewController *)self bs_addChildViewController:self->_activityPickerViewController withSuperview:self->_contentView];
  view2 = [(FCUIActivityPickerViewController *)self->_activityPickerViewController view];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAlpha:0.0];
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  if (self->_activityPickerViewController == container)
  {
    v6 = CCUIDefaultExpandedContentModuleWidth();

    MEMORY[0x2821DE808](v6);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSActivityPickerViewController;
    [(CSActivityPickerViewController *)&v7 sizeForChildContentContainer:size.width withParentContainerSize:size.height];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = CSActivityPickerViewController;
  [(CSCoverSheetViewControllerBase *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  if (!CGAffineTransformIsIdentity(&v9))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__CSActivityPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_27838D838;
    v8[4] = self;
    *&v8[5] = width;
    *&v8[6] = height;
    [coordinatorCopy animateAlongsideTransition:v8 completion:0];
  }
}

void __85__CSActivityPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sizeForChildContentContainer:*(*(a1 + 32) + 1096) withParentContainerSize:{*(a1 + 40), *(a1 + 48)}];
  BSRectWithSize();
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(*(a1 + 32) + 1096) view];
  [v10 setFrame:{v3, v5, v7, v9}];

  v11 = [*(*(a1 + 32) + 1096) view];
  [v11 layoutIfNeeded];
}

- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion
{
  visibleCopy = visible;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_parentContainer);
  if (settings)
  {
    v10 = objc_alloc_init(MEMORY[0x277D763A0]);
    [v10 _setDuration:0.81151];
    if (objc_opt_respondsToSelector())
    {
      v11 = [WeakRetained activityPickerViewControllerTransitionContainerView:self];
    }

    else
    {
      v11 = 0;
    }

    [v10 _setContainerView:v11];
    settings = objc_alloc_init(_CSActivityPickerAnimator);
    [v10 _setAnimator:settings];
  }

  else
  {
    v10 = 0;
  }

  v12 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 activityPickerViewControllerPresentingView:self];
    if (!visibleCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    if (!visibleCopy)
    {
LABEL_9:
      if (objc_opt_respondsToSelector())
      {
        v14 = [v12 activityPickerViewControllerRepresentedActivityForDismissal:self];
LABEL_14:
        v15 = v14;
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [v12 activityPickerViewControllerRepresentedActivityForPresentation:self];
    goto LABEL_14;
  }

LABEL_15:
  v15 = 0;
LABEL_16:
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __100__CSActivityPickerViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke;
  v26[3] = &unk_27838D860;
  v31 = visibleCopy;
  v16 = v13;
  v27 = v16;
  selfCopy = self;
  v17 = v15;
  v29 = v17;
  v18 = v10;
  v30 = v18;
  v19 = MEMORY[0x223D698D0](v26);
  v20 = v19;
  if (v18)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__CSActivityPickerViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_2;
    block[3] = &unk_27838D8B0;
    v22 = v18;
    v24 = v20;
    v25 = completionCopy;
    settingsCopy = settings;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    (*(v19 + 16))(v19, 0);
    completionCopy[2](completionCopy);
  }
}

void __100__CSActivityPickerViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 64) == 1)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_6;
    }

    v10 = v3;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) _transitionCoordinator];
    [v5 _presentFromView:v4 representedActivity:v6 transitionCoordinator:v7];
  }

  else
  {
    v10 = v3;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v7 = [*(a1 + 56) _transitionCoordinator];
    [v8 _dismissWithRepresentedActivity:v9 transitionCoordinator:v7];
  }

  v3 = v10;
LABEL_6:
}

void __100__CSActivityPickerViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _transitionCoordinator];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __100__CSActivityPickerViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_3;
  v4[3] = &unk_27838D888;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 animateAlongsideTransition:v3 completion:v4];

  [*(a1 + 40) animateTransition:*(a1 + 32)];
}

uint64_t __100__CSActivityPickerViewController_performCustomTransitionToVisible_withAnimationSettings_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_modalPresenter);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__CSActivityPickerViewController_dismiss__block_invoke;
    v6[3] = &unk_27838B770;
    v7 = WeakRetained;
    [v7 dismissContentViewController:self animated:1 completion:v6];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSActivityPickerViewController;
    [(CSCoverSheetViewControllerBase *)&v5 dismiss];
  }
}

- (void)aggregateAppearance:(id)appearance
{
  v11.receiver = self;
  v11.super_class = CSActivityPickerViewController;
  appearanceCopy = appearance;
  [(CSCoverSheetViewControllerBase *)&v11 aggregateAppearance:appearanceCopy];
  v4 = objc_opt_new();
  v5 = [v4 priority:{40, v11.receiver, v11.super_class}];
  v6 = [v5 fakeStatusBar:1];
  v7 = [v6 fakeStatusBarLevel:&unk_28307A5C8];
  [appearanceCopy addComponent:v7];

  v8 = +[CSComponent homeAffordance];
  v9 = [v8 priority:40];
  v10 = [v9 hidden:1];
  [appearanceCopy addComponent:v10];
}

- (void)aggregateBehavior:(id)behavior
{
  v4.receiver = self;
  v4.super_class = CSActivityPickerViewController;
  behaviorCopy = behavior;
  [(CSCoverSheetViewControllerBase *)&v4 aggregateBehavior:behaviorCopy];
  [behaviorCopy setScrollingStrategy:{3, v4.receiver, v4.super_class}];
  [behaviorCopy setIdleTimerMode:1];
  [behaviorCopy setIdleTimerDuration:12];
  [behaviorCopy setIdleWarnMode:2];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = CSActivityPickerViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v7, sel_handleEvent_, eventCopy) && ([eventCopy isConsumable] & 1) != 0)
  {
    goto LABEL_7;
  }

  if (([eventCopy type] | 2) == 0x1B && (-[CSActivityPickerViewController bs_isDisappearingOrDisappeared](self, "bs_isDisappearingOrDisappeared") & 1) == 0)
  {
    [(CSActivityPickerViewController *)self dismiss];
LABEL_7:
    isConsumable = [eventCopy isConsumable];
    goto LABEL_8;
  }

  isConsumable = 0;
LABEL_8:

  return isConsumable;
}

- (BOOL)wouldHandleButtonEvent:(id)event
{
  eventCopy = event;
  v4 = [eventCopy type] == 27 || objc_msgSend(eventCopy, "type") == 25;

  return v4;
}

- (void)addGrabberView:(id)view
{
  viewCopy = view;
  if (SBFEffectiveHomeButtonType() == 2 && (BSEqualObjects() & 1) == 0)
  {
    [(UIView *)self->_grabberView removeFromSuperview];
    objc_storeStrong(&self->_grabberView, view);
    [(CSActivityPickerViewController *)self loadViewIfNeeded];
    grabberView = self->_grabberView;
    [(UIView *)self->_contentView bounds];
    [(UIView *)grabberView setFrame:?];
    [(UIView *)self->_grabberView setAutoresizingMask:18];
    [(UIView *)self->_contentView addSubview:self->_grabberView];
  }
}

- (void)_presentFromView:(id)view representedActivity:(id)activity transitionCoordinator:(id)coordinator
{
  viewCopy = view;
  activityCopy = activity;
  coordinatorCopy = coordinator;
  [(_UIPortalView *)self->_presentingPortalView removeFromSuperview];
  v11 = MEMORY[0x277D75D18];
  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __93__CSActivityPickerViewController__presentFromView_representedActivity_transitionCoordinator___block_invoke;
  v37 = &unk_27838B838;
  selfCopy = self;
  v12 = viewCopy;
  v39 = v12;
  [v11 performWithoutAnimation:&v34];
  [(UIView *)self->_contentView bounds];
  [(CSActivityPickerViewController *)self sizeForChildContentContainer:self->_activityPickerViewController withParentContainerSize:v13, v14];
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __93__CSActivityPickerViewController__presentFromView_representedActivity_transitionCoordinator___block_invoke_2;
  v26 = &unk_27838BCE0;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  selfCopy2 = self;
  v28 = activityCopy;
  v19 = coordinatorCopy;
  v29 = v19;
  v20 = activityCopy;
  v21 = MEMORY[0x223D698D0](&v23);
  v22 = v21;
  if (v19)
  {
    [v19 animateAlongsideTransition:v21 completion:{0, 0, v23, v24, v25, v26, selfCopy2, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, selfCopy}];
  }

  else
  {
    (*(v21 + 16))(v21, 0);
  }
}

void __93__CSActivityPickerViewController__presentFromView_representedActivity_transitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1096) view];
  [v2 setAlpha:1.0];

  v3 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1080);
  *(v4 + 1080) = v3;

  v6 = (*(a1 + 32) + 1112);
  v7 = [*(a1 + 40) superview];
  [*(a1 + 40) frame];
  [v7 convertRect:*(*(a1 + 32) + 1064) toView:?];
  *v6 = v8;
  v6[1] = v9;
  v6[2] = v10;
  v6[3] = v11;

  [*(*(a1 + 32) + 1080) setFrame:{*(*(a1 + 32) + 1112), *(*(a1 + 32) + 1120), *(*(a1 + 32) + 1128), *(*(a1 + 32) + 1136)}];
  [*(*(a1 + 32) + 1080) setHidesSourceView:1];
  v12 = *(a1 + 32);
  v13 = *(v12 + 1064);
  v14 = *(v12 + 1080);
  v15 = [*(v12 + 1096) view];
  [v13 insertSubview:v14 belowSubview:v15];
}

uint64_t __93__CSActivityPickerViewController__presentFromView_representedActivity_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1096) view];
  [v2 setHidden:0];

  v3 = *(a1 + 32);
  [*(v3 + 1096) setExpandedFrame:*(a1 + 40) initialFrame:1 representedActivity:*(a1 + 48) presentationStyle:*(a1 + 56) transitionCoordinator:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(v3 + 1112), *(v3 + 1120), *(v3 + 1128), *(v3 + 1136)}];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(*(a1 + 32) + 1064) convertRect:0 fromView:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  UIDistanceBetweenRects();
  v25 = round(v20 / 100.0);
  [*(*(a1 + 32) + 1080) setFrame:{v13, v15, v17, v19}];
  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  Height = CGRectGetHeight(v28);
  v22 = CGRectGetHeight(*(*(a1 + 32) + 1112));
  v23 = *(*(a1 + 32) + 1080);
  CGAffineTransformMakeScale(&v27, Height / v22, Height / v22);
  [v23 setTransform:&v27];
  [*(*(a1 + 32) + 1072) setWeighting:1.0];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __93__CSActivityPickerViewController__presentFromView_representedActivity_transitionCoordinator___block_invoke_3;
  v26[3] = &unk_27838B770;
  v26[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:34 delay:v26 options:0 mass:v25 * 0.135251667 + 0.135251667 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:38.0 completion:0.0];
}

- (void)_dismissWithRepresentedActivity:(id)activity transitionCoordinator:(id)coordinator
{
  activityCopy = activity;
  coordinatorCopy = coordinator;
  v8 = self->_presentingPortalView;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__CSActivityPickerViewController__dismissWithRepresentedActivity_transitionCoordinator___block_invoke;
  v21[3] = &unk_27838D900;
  v21[4] = self;
  v9 = activityCopy;
  v22 = v9;
  v10 = coordinatorCopy;
  v23 = v10;
  v11 = v8;
  v24 = v11;
  v12 = MEMORY[0x223D698D0](v21);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __88__CSActivityPickerViewController__dismissWithRepresentedActivity_transitionCoordinator___block_invoke_3;
  v18 = &unk_27838CAE8;
  v13 = v11;
  v19 = v13;
  selfCopy = self;
  v14 = MEMORY[0x223D698D0](&v15);
  if (v10)
  {
    [v10 animateAlongsideTransition:v12 completion:{v14, v15, v16, v17, v18}];
  }

  else
  {
    v12[2](v12, 0);
    v14[2](v14, 0);
  }
}

void __88__CSActivityPickerViewController__dismissWithRepresentedActivity_transitionCoordinator___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1096) setContractedFrame:*(a1 + 40) representedActivity:1 presentationStyle:*(a1 + 48) transitionCoordinator:{*(*(a1 + 32) + 1112), *(*(a1 + 32) + 1120), *(*(a1 + 32) + 1128), *(*(a1 + 32) + 1136)}];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(*(a1 + 32) + 1096) view];
  [v10 setAlpha:0.0];

  v11 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__CSActivityPickerViewController__dismissWithRepresentedActivity_transitionCoordinator___block_invoke_2;
  v15[3] = &unk_27838D8D8;
  v15[4] = *(a1 + 32);
  v17 = v3;
  v18 = v5;
  v19 = v7;
  v20 = v9;
  v16 = *(a1 + 56);
  [v11 performWithoutAnimation:v15];
  v12 = *(a1 + 56);
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  v14[0] = *MEMORY[0x277CBF2C0];
  v14[1] = v13;
  v14[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v12 setTransform:v14];
  [*(a1 + 56) setFrame:{*(*(a1 + 32) + 1112), *(*(a1 + 32) + 1120), *(*(a1 + 32) + 1128), *(*(a1 + 32) + 1136)}];
  [*(a1 + 56) setAlpha:1.0];
  [*(*(a1 + 32) + 1072) setWeighting:0.0];
}

uint64_t __88__CSActivityPickerViewController__dismissWithRepresentedActivity_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 convertRect:0 fromView:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  IsValid = CGFloatIsValid();
  v12 = CGFloatIsValid();
  v13 = CGFloatIsValid();
  v14 = CGFloatIsValid();
  if (IsValid)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || v13 == 0;
  if (!v16 && (v14 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (IsValid)
  {
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_18:
    v10 = *(a1 + 72);
    if (v14)
    {
LABEL_12:
      if (v13)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v8 = *(a1 + 64);
  if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_19:
  v6 = *(a1 + 56);
  if ((v13 & 1) == 0)
  {
LABEL_13:
    v17 = [*(a1 + 32) view];
    [v17 size];
    v4 = (v18 - v8) * 0.5;
  }

LABEL_14:
  [*(a1 + 40) setFrame:{v4, v6, v8, v10}];
  v19 = *(a1 + 40);
  v20 = *(*(a1 + 32) + 1064);

  return [v20 bringSubviewToFront:v19];
}

void __88__CSActivityPickerViewController__dismissWithRepresentedActivity_transitionCoordinator___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 1080);
  if (v2 == v3)
  {
    [v3 removeFromSuperview];
    v4 = *(a1 + 40);
    v5 = *(v4 + 1080);
    *(v4 + 1080) = 0;
  }
}

- (void)handleTap:(id)tap
{
  if (self->_tapGesture == tap)
  {
    [(CSActivityPickerViewController *)self dismiss];
  }
}

- (CSActivityPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSActivityPickerViewControllerParentContainer)parentContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_parentContainer);

  return WeakRetained;
}

- (CSDismissableModalViewController)modalPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_modalPresenter);

  return WeakRetained;
}

@end