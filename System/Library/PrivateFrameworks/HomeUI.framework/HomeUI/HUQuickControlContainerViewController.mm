@interface HUQuickControlContainerViewController
+ (id)_blurAnimationSettingsForPresenting:(BOOL)presenting;
+ (id)_controlAlphaAnimationSettingsForPresenting:(BOOL)presenting;
+ (id)_controlScaleAnimationSettingsForPresenting:(BOOL)presenting;
+ (id)_detailChromeAnimationSettings;
+ (id)_easeOutTimingFunction;
+ (id)_sourceViewTransitionAnimationSettingsForPresenting:(BOOL)presenting;
- (BOOL)canBecomeFirstResponder;
- (BOOL)isConfiguredForNonHomeUser:(id)user;
- (CGAffineTransform)sourceViewTransformForPresentationProgress:(SEL)progress;
- (CGRect)sourceRect;
- (HUPresentationDelegate)presentationDelegate;
- (HUQuickControlContainerViewController)initWithPresentationContext:(id)context;
- (HUQuickControlContainerViewControllerDelegate)delegate;
- (NSString)description;
- (id)_dismissDetailsViewControllerAnimated:(BOOL)animated dismissControl:(BOOL)control;
- (id)_prepareDetailViewController;
- (id)dismissControlAnimated:(BOOL)animated;
- (id)finishPresentation:(id)presentation animated:(BOOL)animated;
- (id)hu_prepareForDismissalAnimated:(BOOL)animated;
- (id)presentDetailViewControllerAnimated:(BOOL)animated;
- (id)viewForTouchContinuation;
- (void)_controlDidDismiss;
- (void)_createControlContainerViewForMac;
- (void)_createControlContainerViewWithSourceRect:(CGRect)rect;
- (void)_dismissQuickControls;
- (void)_performTransitionToPresentationState:(unint64_t)state animated:(BOOL)animated initialProgress:(double)progress completion:(id)completion;
- (void)_updateActiveControlViewController;
- (void)_updateControlStatusText;
- (void)_updateIconDescriptorAnimated:(BOOL)animated;
- (void)_updateUserInteractionEnabledForActiveControl;
- (void)beginReceivingTouchesWithGestureRecognizer:(id)recognizer;
- (void)contentDidUpdateInContainerView:(id)view;
- (void)detailsButtonPressedInContainerView:(id)view;
- (void)externalAnimationsBegan;
- (void)externalAnimationsEnded;
- (void)hideAuxiliaryViewForQuickControlContent:(id)content;
- (void)presentControlForMacAnimated:(BOOL)animated;
- (void)presentControlFromSourceRect:(CGRect)rect animated:(BOOL)animated;
- (void)quickControlContent:(id)content requestDismissalOfType:(unint64_t)type;
- (void)quickControlContent:(id)content showAuxiliaryView:(id)view;
- (void)setAvailableContentLayoutGuide:(id)guide;
- (void)setPresentedDetailView:(BOOL)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUQuickControlContainerViewController

- (HUQuickControlContainerViewController)initWithPresentationContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = HUQuickControlContainerViewController;
  v6 = [(HUQuickControlContainerViewController *)&v18 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentationContext, context);
    item = [contextCopy item];
    item = v7->_item;
    v7->_item = item;

    home = [contextCopy home];
    home = v7->_home;
    v7->_home = home;

    v12 = [HUQuickControlViewControllerCoordinator alloc];
    v13 = v7->_item;
    controlItems = [contextCopy controlItems];
    v15 = [(HUQuickControlViewControllerCoordinator *)v12 initWithItem:v13 controlItems:controlItems home:v7->_home delegate:v7];
    viewControllerCoordinator = v7->_viewControllerCoordinator;
    v7->_viewControllerCoordinator = v15;

    [(HUQuickControlViewControllerCoordinator *)v7->_viewControllerCoordinator setControlHost:v7];
    -[HUQuickControlViewControllerCoordinator setShouldIncludeRoomNameInHeaderTitle:](v7->_viewControllerCoordinator, "setShouldIncludeRoomNameInHeaderTitle:", [contextCopy shouldIncludeRoomNameInHeaderTitle]);
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  item = [(HUQuickControlContainerViewController *)self item];
  v5 = [v3 appendObject:item withName:@"item"];

  build = [v3 build];

  return build;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v7 viewDidLoad];
  if ([MEMORY[0x277D759A0] instancesRespondToSelector:sel__peripheryInsets] && (objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_peripheryInsets"), v5 = v4, v3, v5 > 0.0))
  {
    v6 = 14;
  }

  else
  {
    v6 = 0;
  }

  [(HUQuickControlContainerViewController *)self setEdgesForExtendedLayout:v6];
}

- (void)setPresentedDetailView:(BOOL)view
{
  if (self->_presentedDetailView != view)
  {
    self->_presentedDetailView = view;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v4 viewDidAppear:appear];
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    [(HUQuickControlContainerViewController *)self becomeFirstResponder];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v6 viewWillAppear:appear];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: viewWillAppear", buf, 0xCu);
  }

  viewControllerCoordinator = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  [viewControllerCoordinator setControlsVisible:1];
}

- (BOOL)canBecomeFirstResponder
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = HUQuickControlContainerViewController;
  return [(HUQuickControlContainerViewController *)&v4 canBecomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v5 viewWillDisappear:disappear];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: viewWillDisappear", buf, 0xCu);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v5 viewDidDisappear:disappear];
  viewControllerCoordinator = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  [viewControllerCoordinator setControlsVisible:0];
}

- (id)presentDetailViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(HUQuickControlContainerViewController *)self delegate];
  viewControllerCoordinator = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  item = [viewControllerCoordinator item];
  v8 = [delegate hasDetailsActionForQuickControlViewController:self item:item];

  if (v8)
  {
    if ([(HUQuickControlContainerViewController *)self presentedDetailView])
    {
      NSLog(&cfstr_InconsistantSt.isa);
    }

    [(HUQuickControlContainerViewController *)self setPresentedDetailView:1];
    _prepareDetailViewController = [(HUQuickControlContainerViewController *)self _prepareDetailViewController];
    if (_prepareDetailViewController)
    {
      v10 = +[HUApplicationManager sharedInstance];
      [v10 setStatusBarHidden:0 forRequester:self];

      v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:_prepareDetailViewController];
      [v11 setModalPresentationStyle:2];
      futureWithNoResult = [(UIViewController *)self hu_presentPreloadableViewController:v11 animated:animatedCopy];
    }

    else
    {
      NSLog(&cfstr_FailedToCreate.isa);
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }
  }

  else
  {
    viewControllerCoordinator2 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
    item2 = [viewControllerCoordinator2 item];
    NSLog(&cfstr_AttemptingToPr.isa, item2);

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (void)setAvailableContentLayoutGuide:(id)guide
{
  objc_storeStrong(&self->_availableContentLayoutGuide, guide);
  guideCopy = guide;
  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView setStandardViewportFromParentGuide:guideCopy];
}

- (void)_updateControlStatusText
{
  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  summaryView = [controlContainerView summaryView];

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    presentationContext = [(HUQuickControlContainerViewController *)self presentationContext];
    isConfiguredForNonHomeUser = [presentationContext isConfiguredForNonHomeUser];

    if (!isConfiguredForNonHomeUser)
    {
      goto LABEL_6;
    }

    presentationContext2 = [(HUQuickControlContainerViewController *)self presentationContext];
    controlItems = [presentationContext2 controlItems];
    viewControllerCoordinator2 = [controlItems na_firstObjectPassingTest:&__block_literal_global_33_3];

    deviceName = [viewControllerCoordinator2 deviceName];
    [summaryView setPrimaryText:deviceName];
  }

  else
  {
    viewControllerCoordinator = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
    primaryStatusText = [viewControllerCoordinator primaryStatusText];
    [summaryView setPrimaryText:primaryStatusText];

    viewControllerCoordinator2 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
    deviceName = [viewControllerCoordinator2 secondaryStatusText];
    [summaryView setSecondaryText:deviceName];
  }

LABEL_6:
}

uint64_t __65__HUQuickControlContainerViewController__updateControlStatusText__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateIconDescriptorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCoordinator = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  iconDescriptor = [viewControllerCoordinator iconDescriptor];

  viewControllerCoordinator2 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  showIconOffState = [viewControllerCoordinator2 showIconOffState];

  if (showIconOffState)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  summaryView = [controlContainerView summaryView];
  iconView = [summaryView iconView];

  [iconView updateWithIconDescriptor:iconDescriptor displayStyle:v8 animated:animatedCopy];
}

- (void)_updateUserInteractionEnabledForActiveControl
{
  viewControllerCoordinator = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  if ([viewControllerCoordinator isReachable])
  {
    isControlPresentedOrPresenting = [(HUQuickControlContainerViewController *)self isControlPresentedOrPresenting];
  }

  else
  {
    isControlPresentedOrPresenting = 0;
  }

  activeControlViewController = [(HUQuickControlContainerViewController *)self activeControlViewController];
  [activeControlViewController setUserInteractionEnabled:isControlPresentedOrPresenting];
}

+ (id)_easeOutTimingFunction
{
  LODWORD(v3) = 1036831949;
  LODWORD(v2) = 0.25;
  LODWORD(v4) = 0.25;
  LODWORD(v5) = 1.0;
  return [MEMORY[0x277CD9EF8] functionWithControlPoints:v2 :v3 :v4 :v5];
}

+ (id)_controlScaleAnimationSettingsForPresenting:(BOOL)presenting
{
  presentingCopy = presenting;
  v4 = objc_alloc_init(HUSpringAnimationSettings);
  [(HUSpringAnimationSettings *)v4 setDelay:0.04];
  [(HUSpringAnimationSettings *)v4 setMass:2.0];
  [(HUSpringAnimationSettings *)v4 setStiffness:450.0];
  v5 = 50.0;
  if (presentingCopy)
  {
    v5 = 44.0;
  }

  [(HUSpringAnimationSettings *)v4 setDamping:v5];
  [(HUSpringAnimationSettings *)v4 setSpeed:1.3];
  v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [(HUSpringAnimationSettings *)v4 setTimingFunction:v6];

  return v4;
}

+ (id)_controlAlphaAnimationSettingsForPresenting:(BOOL)presenting
{
  if (presenting)
  {
    v4 = [HUAnimationSettings settingsWithDuration:0.165];
    _easeOutTimingFunction = [self _easeOutTimingFunction];
    [v4 setTimingFunction:_easeOutTimingFunction];
  }

  else
  {
    v4 = [self _blurAnimationSettingsForPresenting:?];
    [v4 speed];
    [v4 setSpeed:v6 * 0.8];
  }

  return v4;
}

+ (id)_blurAnimationSettingsForPresenting:(BOOL)presenting
{
  if (presenting)
  {
    v4 = [HUAnimationSettings settingsWithDuration:0.45];
    [self _easeOutTimingFunction];
  }

  else
  {
    v4 = objc_alloc_init(HUSpringAnimationSettings);
    [(HUSpringAnimationSettings *)v4 setMass:2.0];
    [(HUSpringAnimationSettings *)v4 setStiffness:300.0];
    [(HUSpringAnimationSettings *)v4 setDamping:400.0];
    [(HUSpringAnimationSettings *)v4 setSpeed:1.5];
    LODWORD(v5) = 1041865114;
    LODWORD(v6) = 1058642330;
    LODWORD(v7) = 1064346583;
    [MEMORY[0x277CD9EF8] functionWithControlPoints:v5 :0.0 :v6 :v7];
  }
  v8 = ;
  [(HUSpringAnimationSettings *)v4 setTimingFunction:v8];

  return v4;
}

+ (id)_sourceViewTransitionAnimationSettingsForPresenting:(BOOL)presenting
{
  if (presenting)
  {
    v4 = [HUAnimationSettings settingsWithDuration:0.25];
    [v4 setDelay:0.02];
    _easeOutTimingFunction = [self _easeOutTimingFunction];
    [v4 setTimingFunction:_easeOutTimingFunction];
  }

  else
  {
    v4 = [self _controlScaleAnimationSettingsForPresenting:?];
  }

  return v4;
}

+ (id)_detailChromeAnimationSettings
{
  v3 = [HUAnimationSettings settingsWithDuration:0.6];
  _easeOutTimingFunction = [self _easeOutTimingFunction];
  [v3 setTimingFunction:_easeOutTimingFunction];

  return v3;
}

- (CGAffineTransform)sourceViewTransformForPresentationProgress:(SEL)progress
{
  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];

  if (!controlContainerView)
  {
    NSLog(&cfstr_CannotComputeT.isa);
  }

  controlContainerView2 = [(HUQuickControlContainerViewController *)self controlContainerView];
  if (controlContainerView2)
  {
    v10 = controlContainerView2;
    [controlContainerView2 sourceViewTransformForPresentationProgress:a4];
    controlContainerView2 = v10;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)presentControlForMacAnimated:(BOOL)animated
{
  [(HUQuickControlContainerViewController *)self setPresentationState:3];

  [(HUQuickControlContainerViewController *)self _createControlContainerViewForMac];
}

- (void)presentControlFromSourceRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(HUQuickControlContainerViewController *)self isControlPresentedOrPresenting])
  {
    NSLog(&cfstr_PresentationAl.isa);
  }

  [(HUQuickControlContainerViewController *)self setPresentationState:2];
  [(HUQuickControlContainerViewController *)self setSourceRect:x, y, width, height];
  [(HUQuickControlContainerViewController *)self _createControlContainerViewWithSourceRect:x, y, width, height];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HUQuickControlContainerViewController_presentControlFromSourceRect_animated___block_invoke;
  v10[3] = &unk_277DB8C28;
  v10[4] = self;
  [(HUQuickControlContainerViewController *)self _performTransitionToPresentationState:2 animated:animatedCopy initialProgress:v10 completion:0.0];
}

uint64_t __79__HUQuickControlContainerViewController_presentControlFromSourceRect_animated___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setPresentationState:3];
  }

  return result;
}

- (id)dismissControlAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(HUQuickControlContainerViewController *)self isControlPresentedOrPresenting])
  {
    presentationApplier = [(HUQuickControlContainerViewController *)self presentationApplier];

    if (presentationApplier)
    {
      presentationApplier2 = [(HUQuickControlContainerViewController *)self presentationApplier];
      [presentationApplier2 effectiveProgress];
      v8 = v7;

      presentationApplier3 = [(HUQuickControlContainerViewController *)self presentationApplier];
      [presentationApplier3 cancel];

      [(HUQuickControlContainerViewController *)self setPresentationApplier:0];
    }

    else
    {
      v8 = 1.0;
    }

    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    if ([(HUQuickControlContainerViewController *)self presentedDetailView])
    {
      v12 = [(HUQuickControlContainerViewController *)self _dismissDetailsViewControllerAnimated:animatedCopy dismissControl:1];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __64__HUQuickControlContainerViewController_dismissControlAnimated___block_invoke;
      v18[3] = &unk_277DB7530;
      futureWithNoResult = v11;
      v19 = futureWithNoResult;
      v13 = [v12 addCompletionBlock:v18];

      v14 = v19;
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __64__HUQuickControlContainerViewController_dismissControlAnimated___block_invoke_2;
      v16[3] = &unk_277DB8AB0;
      v16[4] = self;
      futureWithNoResult = v11;
      v17 = futureWithNoResult;
      [(HUQuickControlContainerViewController *)self _performTransitionToPresentationState:1 animated:animatedCopy initialProgress:v16 completion:1.0 - v8];
      v14 = v17;
    }
  }

  else
  {
    NSLog(&cfstr_ControlIsAlrea.isa);
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

uint64_t __64__HUQuickControlContainerViewController_dismissControlAnimated___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) _controlDidDismiss];
  }

  else
  {
    return [*(a1 + 40) finishWithNoResult];
  }
}

- (void)_performTransitionToPresentationState:(unint64_t)state animated:(BOOL)animated initialProgress:(double)progress completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (state - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlContainerViewController.m" lineNumber:399 description:{@"Invalid parameter not satisfying: %@", @"state == HUQuickControlPresentationStatePresenting || state == HUQuickControlPresentationStateDismissing"}];
  }

  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  [MEMORY[0x277D75D18] setAnimationsEnabled:animatedCopy];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke;
  aBlock[3] = &__block_descriptor_33_e5_v8__0l;
  v54 = areAnimationsEnabled;
  v39 = _Block_copy(aBlock);
  [(HUQuickControlContainerViewController *)self setPresentationState:state];
  delegate = [(HUQuickControlContainerViewController *)self delegate];
  [delegate quickControlViewController:self sourceViewInitialScaleForPresentation:state == 2];
  v15 = v14;
  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView setInitialSourceViewScale:v15];
  v17 = fmin(fmax(progress, 0.0), 1.0);

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_2;
  v51[3] = &__block_descriptor_41_e8_d16__0d8l;
  *&v51[4] = v17;
  v52 = state == 2;
  v18 = _Block_copy(v51);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_3;
  v49[3] = &__block_descriptor_41_e50___HUAnimationSettings_16__0__HUAnimationSettings_8l;
  v50 = animatedCopy;
  *&v49[4] = v17;
  v19 = _Block_copy(v49);
  v20 = [objc_opt_class() _controlScaleAnimationSettingsForPresenting:state == 2];
  v21 = v19[2](v19, v20);

  v37 = v21;
  v22 = [HUAnimationApplier staticApplierWithAnimationSettings:v21];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_4;
  v47[3] = &unk_277DC31D0;
  v47[4] = self;
  v23 = v18;
  v48 = v23;
  [v22 addApplierBlock:v47];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_6;
  v44[3] = &unk_277DC31F8;
  v46 = state == 2;
  v44[4] = self;
  v38 = completionCopy;
  v45 = v38;
  [v22 addCompletionBlock:v44];
  [v22 start];
  v24 = [objc_opt_class() _controlAlphaAnimationSettingsForPresenting:state == 2];
  v25 = v19[2](v19, v24);

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_7;
  v42[3] = &unk_277DC31D0;
  v42[4] = self;
  v26 = v23;
  v43 = v26;
  v27 = [HUAnimationApplier applyAnimationSettings:v25 withStaticApplier:v42 completion:0];
  _detailChromeAnimationSettings = [objc_opt_class() _detailChromeAnimationSettings];
  v29 = v19[2](v19, _detailChromeAnimationSettings);

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_8;
  v40[3] = &unk_277DC31D0;
  v40[4] = self;
  v30 = v26;
  v41 = v30;
  v31 = [HUAnimationApplier applyAnimationSettings:v29 withStaticApplier:v40 completion:0];
  v32 = [objc_opt_class() _sourceViewTransitionAnimationSettingsForPresenting:state == 2];
  v33 = v19[2](v19, v32);

  delegate2 = [(HUQuickControlContainerViewController *)self delegate];
  v35 = [delegate2 quickControlViewController:self applierForSourceViewTransitionWithAnimationSettings:v33 presenting:state == 2];

  [v35 start];
  if (state == 2)
  {
    [(HUQuickControlContainerViewController *)self setPresentationApplier:v22];
  }

  if (v39)
  {
    v39[2](v39);
  }
}

double __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_2(uint64_t a1, double a2)
{
  result = *(a1 + 32) + a2 * (1.0 - *(a1 + 32));
  if (!*(a1 + 40))
  {
    return 1.0 - result;
  }

  return result;
}

id __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  if (*(a1 + 40) == 1)
  {
    v4 = pow(1.5, -*(a1 + 32));
    [v3 speed];
    [v3 setSpeed:v5 / v4];
    [v3 speed];
  }

  else
  {
    v6 = 1.79769313e308;
  }

  [v3 setSpeed:v6];

  return v3;
}

void __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_4(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) controlContainerView];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_5;
  v6[3] = &unk_277DC31A8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = a2;
  [v4 naui_performAnimateableConstraintChanges:v6];
}

void __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_5(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))(*(a1 + 48));
  v3 = [*(a1 + 32) controlContainerView];
  [v3 setControlTransitionProgress:v2];
}

uint64_t __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_6(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48) == 1)
  {
    [*(a1 + 32) setPresentationApplier:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_7(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) controlContainerView];
  v3 = [v4 activeControlView];
  [v3 setAlpha:v2];
}

void __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_8(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [*(a1 + 32) controlContainerView];
  [v3 setChromeTransitionProgress:v2];
}

- (void)_createControlContainerViewWithSourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView removeFromSuperview];

  v9 = [HUQuickControlContainerView alloc];
  height = [(HUQuickControlContainerView *)v9 initWithFrame:self delegate:*MEMORY[0x277CBF3A0] sourceRect:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), x, y, width, height];
  [(HUQuickControlContainerViewController *)self setControlContainerView:height];

  controlContainerView2 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  controlContainerView3 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView3 setEdgesForExtendedLayout:1];

  availableContentLayoutGuide = [(HUQuickControlContainerViewController *)self availableContentLayoutGuide];
  controlContainerView4 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView4 setStandardViewportFromParentGuide:availableContentLayoutGuide];

  clearColor = [MEMORY[0x277D75348] clearColor];
  controlContainerView5 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView5 setBackgroundColor:clearColor];

  view = [(HUQuickControlContainerViewController *)self view];
  controlContainerView6 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [view addSubview:controlContainerView6];

  v34 = objc_opt_new();
  view2 = [(HUQuickControlContainerViewController *)self view];
  leadingAnchor = [view2 leadingAnchor];
  controlContainerView7 = [(HUQuickControlContainerViewController *)self controlContainerView];
  leadingAnchor2 = [controlContainerView7 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v34 addObject:v23];

  view3 = [(HUQuickControlContainerViewController *)self view];
  widthAnchor = [view3 widthAnchor];
  controlContainerView8 = [(HUQuickControlContainerViewController *)self controlContainerView];
  widthAnchor2 = [controlContainerView8 widthAnchor];
  v28 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v34 addObject:v28];

  view4 = [(HUQuickControlContainerViewController *)self view];
  topAnchor = [view4 topAnchor];
  controlContainerView9 = [(HUQuickControlContainerViewController *)self controlContainerView];
  topAnchor2 = [controlContainerView9 topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v34 addObject:v33];

  [MEMORY[0x277CCAAD0] activateConstraints:v34];
  [(HUQuickControlContainerViewController *)self _updateActiveControlViewController];
  [(HUQuickControlContainerViewController *)self _updateIconDescriptorAnimated:0];
  [(HUQuickControlContainerViewController *)self _updateControlStatusText];
  [(HUQuickControlContainerViewController *)self _updateReachabilityStateForActiveControl];
}

- (void)_createControlContainerViewForMac
{
  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView removeFromSuperview];

  v4 = [HUQuickControlContainerView alloc];
  view = [(HUQuickControlContainerViewController *)self view];
  [view bounds];
  v10 = [(HUQuickControlContainerView *)v4 initWithFrame:self delegate:*MEMORY[0x277CBF3A0] sourceRect:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v6, v7, v8, v9];
  [(HUQuickControlContainerViewController *)self setControlContainerView:v10];

  controlContainerView2 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(HUQuickControlContainerViewController *)self view];
  controlContainerView3 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [view2 addSubview:controlContainerView3];

  v29 = objc_opt_new();
  controlContainerView4 = [(HUQuickControlContainerViewController *)self controlContainerView];
  leadingAnchor = [controlContainerView4 leadingAnchor];
  view3 = [(HUQuickControlContainerViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v29 addObject:v18];

  controlContainerView5 = [(HUQuickControlContainerViewController *)self controlContainerView];
  trailingAnchor = [controlContainerView5 trailingAnchor];
  view4 = [(HUQuickControlContainerViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v29 addObject:v23];

  controlContainerView6 = [(HUQuickControlContainerViewController *)self controlContainerView];
  topAnchor = [controlContainerView6 topAnchor];
  view5 = [(HUQuickControlContainerViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v29 addObject:v28];

  [MEMORY[0x277CCAAD0] activateConstraints:v29];
  [(HUQuickControlContainerViewController *)self _updateActiveControlViewController];
  [(HUQuickControlContainerViewController *)self _updateIconDescriptorAnimated:0];
  [(HUQuickControlContainerViewController *)self _updateControlStatusText];
  [(HUQuickControlContainerViewController *)self _updateReachabilityStateForActiveControl];
}

- (void)_updateActiveControlViewController
{
  activeControlViewController = [(HUQuickControlContainerViewController *)self activeControlViewController];
  viewControllerCoordinator = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  activeController = [viewControllerCoordinator activeController];

  if (activeController && [activeController preferredPresentationStyle])
  {
    NSLog(&cfstr_ANonInlineQuic.isa, activeController);
  }

  if (activeControlViewController != activeController)
  {
    [activeControlViewController willMoveToParentViewController:0];
  }

  if (activeController)
  {
    [(HUQuickControlContainerViewController *)self addChildViewController:activeController];
    [(HUQuickControlContainerViewController *)self setActiveControlViewController:activeController];
    activeControlViewController2 = [(HUQuickControlContainerViewController *)self activeControlViewController];
    hu_preloadContent = [activeControlViewController2 hu_preloadContent];

    activeControlViewController3 = [(HUQuickControlContainerViewController *)self activeControlViewController];
    view = [activeControlViewController3 view];
    controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
    [controlContainerView setActiveControlView:view];

    controlContainerView2 = [(HUQuickControlContainerViewController *)self controlContainerView];
    controlViewPreferredFrameLayoutGuide = [controlContainerView2 controlViewPreferredFrameLayoutGuide];
    activeControlViewController4 = [(HUQuickControlContainerViewController *)self activeControlViewController];
    [activeControlViewController4 setPreferredFrameLayoutGuide:controlViewPreferredFrameLayoutGuide];

    activeControlViewController5 = [(HUQuickControlContainerViewController *)self activeControlViewController];
    hasSingleControlView = [activeControlViewController5 hasSingleControlView];
    controlContainerView3 = [(HUQuickControlContainerViewController *)self controlContainerView];
    [controlContainerView3 setControlViewSupportsTransformTransition:hasSingleControlView];

    delegate = [(HUQuickControlContainerViewController *)self delegate];
    item = [(HUQuickControlContainerViewController *)self item];
    v18 = [delegate hasDetailsActionForQuickControlViewController:self item:item];

    controlContainerView4 = [(HUQuickControlContainerViewController *)self controlContainerView];
    [controlContainerView4 setShouldShowDetailsButton:v18];

    if (activeControlViewController != activeController)
    {
      [activeControlViewController removeFromParentViewController];
      [activeController didMoveToParentViewController:self];
    }
  }

  [(HUQuickControlContainerViewController *)self _updateReachabilityStateForActiveControl];
}

- (void)_controlDidDismiss
{
  [(HUQuickControlContainerViewController *)self setPresentationState:0];
  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView removeFromSuperview];

  [(HUQuickControlContainerViewController *)self setControlContainerView:0];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);

  [(HUQuickControlContainerViewController *)self setSourceRect:v4, v5, v6, v7];
}

- (void)_dismissQuickControls
{
  if ([(HUQuickControlContainerViewController *)self isControlPresentedOrPresenting])
  {
    v3 = [(HUQuickControlContainerViewController *)self dismissControlAnimated:1];
    presentationDelegate = [(HUQuickControlContainerViewController *)self presentationDelegate];
    presentingViewController2 = presentationDelegate;
    selfCopy2 = self;
    v6 = 1;
  }

  else
  {
    if ([(HUQuickControlContainerViewController *)self presentationState])
    {
      return;
    }

    presentationDelegate2 = [(HUQuickControlContainerViewController *)self presentationDelegate];
    presentingViewController = [(HUQuickControlContainerViewController *)self presentingViewController];
    NSLog(&cfstr_QuickControlsA.isa, self, presentationDelegate2, presentingViewController);

    presentationDelegate3 = [(HUQuickControlContainerViewController *)self presentationDelegate];

    if (!presentationDelegate3)
    {
      presentingViewController2 = [(HUQuickControlContainerViewController *)self presentingViewController];
      [presentingViewController2 dismissViewControllerAnimated:0 completion:0];
      goto LABEL_4;
    }

    presentationDelegate = [(HUQuickControlContainerViewController *)self presentationDelegate];
    presentingViewController2 = presentationDelegate;
    selfCopy2 = self;
    v6 = 0;
  }

  v7 = [presentationDelegate finishPresentation:selfCopy2 animated:v6];
LABEL_4:
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView setNeedsLayout];
}

- (id)_prepareDetailViewController
{
  viewControllerCoordinator = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  item = [viewControllerCoordinator item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    viewControllerCoordinator2 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
    item2 = [viewControllerCoordinator2 item];
    if (objc_opt_isKindOfClass())
    {
      v8 = item2;
    }

    else
    {
      v8 = 0;
    }

    delegate3 = v8;

    accessory = [delegate3 accessory];
    hf_isMultiServiceAccessory = [accessory hf_isMultiServiceAccessory];

    if (hf_isMultiServiceAccessory)
    {
      delegate = [(HUQuickControlContainerViewController *)self delegate];
      v13 = [delegate detailsViewControllerForQuickControlViewController:self item:delegate3];
      goto LABEL_10;
    }

    accessory2 = [delegate3 accessory];
    hf_primaryService = [accessory2 hf_primaryService];
    delegate = [delegate3 serviceItemForService:hf_primaryService];

    delegate2 = [(HUQuickControlContainerViewController *)self delegate];
    item3 = delegate2;
    selfCopy2 = self;
    v17 = delegate;
  }

  else
  {
    delegate3 = [(HUQuickControlContainerViewController *)self delegate];
    delegate = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
    item3 = [delegate item];
    delegate2 = delegate3;
    selfCopy2 = self;
    v17 = item3;
  }

  v13 = [delegate2 detailsViewControllerForQuickControlViewController:selfCopy2 item:v17];

LABEL_10:
  [v13 setPresentationDelegate:self];

  return v13;
}

- (id)_dismissDetailsViewControllerAnimated:(BOOL)animated dismissControl:(BOOL)control
{
  controlCopy = control;
  animatedCopy = animated;
  delegate = [(HUQuickControlContainerViewController *)self delegate];
  [delegate quickControlViewControllerWillDismissDetailsViewController:self shouldDismissQuickControl:controlCopy];

  if (controlCopy)
  {
    controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
    [controlContainerView removeFromSuperview];

    presentationDelegate = [(HUQuickControlContainerViewController *)self presentationDelegate];
    v10 = [presentationDelegate finishPresentation:self animated:animatedCopy];
  }

  else
  {
    [(HUQuickControlContainerViewController *)self setPresentedDetailView:0];
    v10 = [(UIViewController *)self hu_dismissViewControllerAnimated:animatedCopy];
  }

  return v10;
}

- (void)externalAnimationsBegan
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@: externalAnimationsBegan", &v5, 0xCu);
  }

  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView externalAnimationsBegan];
}

- (void)externalAnimationsEnded
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@: externalAnimationsEnded", &v5, 0xCu);
  }

  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView externalAnimationsEnded];
}

- (void)beginReceivingTouchesWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  viewControllerCoordinator = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  isReachable = [viewControllerCoordinator isReachable];

  if (isReachable)
  {
    activeControlViewController = [(HUQuickControlContainerViewController *)self activeControlViewController];
    [activeControlViewController beginUserInteractionWithFirstTouchGestureRecognizer:recognizerCopy];
  }
}

- (id)hu_prepareForDismissalAnimated:(BOOL)animated
{
  v3 = [(HUQuickControlContainerViewController *)self dismissControlAnimated:animated];
  v4 = [v3 flatMap:&__block_literal_global_82_0];

  return v4;
}

- (id)finishPresentation:(id)presentation animated:(BOOL)animated
{
  animatedCopy = animated;
  v14[1] = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  item = [(HUQuickControlContainerViewController *)self item];
  v13 = *MEMORY[0x277D13BB0];
  v14[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [item updateWithOptions:v8];

  if ([presentationCopy conformsToProtocol:&unk_2824C3AE0])
  {
    requiresPresentingViewControllerDismissal = [presentationCopy requiresPresentingViewControllerDismissal];
  }

  else
  {
    requiresPresentingViewControllerDismissal = 0;
  }

  v11 = [(HUQuickControlContainerViewController *)self _dismissDetailsViewControllerAnimated:animatedCopy dismissControl:requiresPresentingViewControllerDismissal];

  return v11;
}

- (void)detailsButtonPressedInContainerView:(id)view
{
  viewControllerCoordinator = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  item = [viewControllerCoordinator item];
  latestResults = [item latestResults];
  v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DB8]];

  detailViewURLHandler = [(HUQuickControlContainerViewController *)self detailViewURLHandler];

  if (detailViewURLHandler && v14)
  {
    detailViewURLHandler2 = [(HUQuickControlContainerViewController *)self detailViewURLHandler];
    v9 = [detailViewURLHandler2 openURL:v14];
LABEL_7:

    goto LABEL_8;
  }

  delegate = [(HUQuickControlContainerViewController *)self delegate];
  if (delegate)
  {
    v11 = delegate;
    delegate2 = [(HUQuickControlContainerViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      detailViewURLHandler2 = [(HUQuickControlContainerViewController *)self delegate];
      [detailViewURLHandler2 quickControlViewControllerDidTapDetailsButton:self];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)contentDidUpdateInContainerView:(id)view
{
  parentViewController = [(HUQuickControlContainerViewController *)self parentViewController];
  view = [parentViewController view];
  [view setNeedsLayout];
}

- (BOOL)isConfiguredForNonHomeUser:(id)user
{
  presentationContext = [(HUQuickControlContainerViewController *)self presentationContext];
  isConfiguredForNonHomeUser = [presentationContext isConfiguredForNonHomeUser];

  return isConfiguredForNonHomeUser;
}

- (void)quickControlContent:(id)content requestDismissalOfType:(unint64_t)type
{
  contentCopy = content;
  if (!type)
  {
    v13 = contentCopy;
    presentedViewController = [(HUQuickControlContainerViewController *)self presentedViewController];

    if (presentedViewController == v13)
    {
      v12 = [(UIViewController *)self hu_dismissViewControllerAnimated:0];
    }

    else
    {
      presentedViewController2 = [(HUQuickControlContainerViewController *)self presentedViewController];
      NSLog(&cfstr_QuickControlCo.isa, v13, presentedViewController2);
    }

    goto LABEL_8;
  }

  if (type == 1)
  {
    v13 = contentCopy;
    isControlPresentedOrPresenting = [(HUQuickControlContainerViewController *)self isControlPresentedOrPresenting];
    contentCopy = v13;
    if (isControlPresentedOrPresenting)
    {
      [(HUQuickControlContainerViewController *)self setRequiresPresentingViewControllerDismissal:1];
      presentationDelegate = [(HUQuickControlContainerViewController *)self presentationDelegate];
      v9 = [presentationDelegate finishPresentation:self animated:1];

LABEL_8:
      contentCopy = v13;
    }
  }
}

- (void)quickControlContent:(id)content showAuxiliaryView:(id)view
{
  viewCopy = view;
  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView showAuxiliaryView:viewCopy];
}

- (void)hideAuxiliaryViewForQuickControlContent:(id)content
{
  controlContainerView = [(HUQuickControlContainerViewController *)self controlContainerView];
  [controlContainerView hideAuxiliaryView];
}

- (id)viewForTouchContinuation
{
  objc_opt_class();
  item = [(HUQuickControlContainerViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = item;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && ([v5 accessory], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hf_isMultiServiceAccessory"), v6, (v7 & 1) != 0))
  {
    viewForTouchContinuation = 0;
  }

  else
  {
    activeControlViewController = [(HUQuickControlContainerViewController *)self activeControlViewController];
    viewControllerForTouchContinuation = [activeControlViewController viewControllerForTouchContinuation];
    viewForTouchContinuation = [viewControllerForTouchContinuation viewForTouchContinuation];
  }

  return viewForTouchContinuation;
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

- (HUQuickControlContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end