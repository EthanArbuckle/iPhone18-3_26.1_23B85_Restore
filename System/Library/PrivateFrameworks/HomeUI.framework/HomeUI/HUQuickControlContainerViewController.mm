@interface HUQuickControlContainerViewController
+ (id)_blurAnimationSettingsForPresenting:(BOOL)a3;
+ (id)_controlAlphaAnimationSettingsForPresenting:(BOOL)a3;
+ (id)_controlScaleAnimationSettingsForPresenting:(BOOL)a3;
+ (id)_detailChromeAnimationSettings;
+ (id)_easeOutTimingFunction;
+ (id)_sourceViewTransitionAnimationSettingsForPresenting:(BOOL)a3;
- (BOOL)canBecomeFirstResponder;
- (BOOL)isConfiguredForNonHomeUser:(id)a3;
- (CGAffineTransform)sourceViewTransformForPresentationProgress:(SEL)a3;
- (CGRect)sourceRect;
- (HUPresentationDelegate)presentationDelegate;
- (HUQuickControlContainerViewController)initWithPresentationContext:(id)a3;
- (HUQuickControlContainerViewControllerDelegate)delegate;
- (NSString)description;
- (id)_dismissDetailsViewControllerAnimated:(BOOL)a3 dismissControl:(BOOL)a4;
- (id)_prepareDetailViewController;
- (id)dismissControlAnimated:(BOOL)a3;
- (id)finishPresentation:(id)a3 animated:(BOOL)a4;
- (id)hu_prepareForDismissalAnimated:(BOOL)a3;
- (id)presentDetailViewControllerAnimated:(BOOL)a3;
- (id)viewForTouchContinuation;
- (void)_controlDidDismiss;
- (void)_createControlContainerViewForMac;
- (void)_createControlContainerViewWithSourceRect:(CGRect)a3;
- (void)_dismissQuickControls;
- (void)_performTransitionToPresentationState:(unint64_t)a3 animated:(BOOL)a4 initialProgress:(double)a5 completion:(id)a6;
- (void)_updateActiveControlViewController;
- (void)_updateControlStatusText;
- (void)_updateIconDescriptorAnimated:(BOOL)a3;
- (void)_updateUserInteractionEnabledForActiveControl;
- (void)beginReceivingTouchesWithGestureRecognizer:(id)a3;
- (void)contentDidUpdateInContainerView:(id)a3;
- (void)detailsButtonPressedInContainerView:(id)a3;
- (void)externalAnimationsBegan;
- (void)externalAnimationsEnded;
- (void)hideAuxiliaryViewForQuickControlContent:(id)a3;
- (void)presentControlForMacAnimated:(BOOL)a3;
- (void)presentControlFromSourceRect:(CGRect)a3 animated:(BOOL)a4;
- (void)quickControlContent:(id)a3 requestDismissalOfType:(unint64_t)a4;
- (void)quickControlContent:(id)a3 showAuxiliaryView:(id)a4;
- (void)setAvailableContentLayoutGuide:(id)a3;
- (void)setPresentedDetailView:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUQuickControlContainerViewController

- (HUQuickControlContainerViewController)initWithPresentationContext:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = HUQuickControlContainerViewController;
  v6 = [(HUQuickControlContainerViewController *)&v18 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentationContext, a3);
    v8 = [v5 item];
    item = v7->_item;
    v7->_item = v8;

    v10 = [v5 home];
    home = v7->_home;
    v7->_home = v10;

    v12 = [HUQuickControlViewControllerCoordinator alloc];
    v13 = v7->_item;
    v14 = [v5 controlItems];
    v15 = [(HUQuickControlViewControllerCoordinator *)v12 initWithItem:v13 controlItems:v14 home:v7->_home delegate:v7];
    viewControllerCoordinator = v7->_viewControllerCoordinator;
    v7->_viewControllerCoordinator = v15;

    [(HUQuickControlViewControllerCoordinator *)v7->_viewControllerCoordinator setControlHost:v7];
    -[HUQuickControlViewControllerCoordinator setShouldIncludeRoomNameInHeaderTitle:](v7->_viewControllerCoordinator, "setShouldIncludeRoomNameInHeaderTitle:", [v5 shouldIncludeRoomNameInHeaderTitle]);
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUQuickControlContainerViewController *)self item];
  v5 = [v3 appendObject:v4 withName:@"item"];

  v6 = [v3 build];

  return v6;
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

- (void)setPresentedDetailView:(BOOL)a3
{
  if (self->_presentedDetailView != a3)
  {
    self->_presentedDetailView = a3;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v4 viewDidAppear:a3];
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    [(HUQuickControlContainerViewController *)self becomeFirstResponder];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v6 viewWillAppear:a3];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: viewWillAppear", buf, 0xCu);
  }

  v5 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  [v5 setControlsVisible:1];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v5 viewWillDisappear:a3];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@: viewWillDisappear", buf, 0xCu);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v5 viewDidDisappear:a3];
  v4 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  [v4 setControlsVisible:0];
}

- (id)presentDetailViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUQuickControlContainerViewController *)self delegate];
  v6 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  v7 = [v6 item];
  v8 = [v5 hasDetailsActionForQuickControlViewController:self item:v7];

  if (v8)
  {
    if ([(HUQuickControlContainerViewController *)self presentedDetailView])
    {
      NSLog(&cfstr_InconsistantSt.isa);
    }

    [(HUQuickControlContainerViewController *)self setPresentedDetailView:1];
    v9 = [(HUQuickControlContainerViewController *)self _prepareDetailViewController];
    if (v9)
    {
      v10 = +[HUApplicationManager sharedInstance];
      [v10 setStatusBarHidden:0 forRequester:self];

      v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
      [v11 setModalPresentationStyle:2];
      v12 = [(UIViewController *)self hu_presentPreloadableViewController:v11 animated:v3];
    }

    else
    {
      NSLog(&cfstr_FailedToCreate.isa);
      v12 = [MEMORY[0x277D2C900] futureWithNoResult];
    }
  }

  else
  {
    v13 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
    v14 = [v13 item];
    NSLog(&cfstr_AttemptingToPr.isa, v14);

    v12 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v12;
}

- (void)setAvailableContentLayoutGuide:(id)a3
{
  objc_storeStrong(&self->_availableContentLayoutGuide, a3);
  v5 = a3;
  v6 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v6 setStandardViewportFromParentGuide:v5];
}

- (void)_updateControlStatusText
{
  v3 = [(HUQuickControlContainerViewController *)self controlContainerView];
  v12 = [v3 summaryView];

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    v4 = [(HUQuickControlContainerViewController *)self presentationContext];
    v5 = [v4 isConfiguredForNonHomeUser];

    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = [(HUQuickControlContainerViewController *)self presentationContext];
    v7 = [v6 controlItems];
    v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_33_3];

    v9 = [v8 deviceName];
    [v12 setPrimaryText:v9];
  }

  else
  {
    v10 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
    v11 = [v10 primaryStatusText];
    [v12 setPrimaryText:v11];

    v8 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
    v9 = [v8 secondaryStatusText];
    [v12 setSecondaryText:v9];
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

- (void)_updateIconDescriptorAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  v12 = [v5 iconDescriptor];

  v6 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  v7 = [v6 showIconOffState];

  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(HUQuickControlContainerViewController *)self controlContainerView];
  v10 = [v9 summaryView];
  v11 = [v10 iconView];

  [v11 updateWithIconDescriptor:v12 displayStyle:v8 animated:v3];
}

- (void)_updateUserInteractionEnabledForActiveControl
{
  v5 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  if ([v5 isReachable])
  {
    v3 = [(HUQuickControlContainerViewController *)self isControlPresentedOrPresenting];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HUQuickControlContainerViewController *)self activeControlViewController];
  [v4 setUserInteractionEnabled:v3];
}

+ (id)_easeOutTimingFunction
{
  LODWORD(v3) = 1036831949;
  LODWORD(v2) = 0.25;
  LODWORD(v4) = 0.25;
  LODWORD(v5) = 1.0;
  return [MEMORY[0x277CD9EF8] functionWithControlPoints:v2 :v3 :v4 :v5];
}

+ (id)_controlScaleAnimationSettingsForPresenting:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HUSpringAnimationSettings);
  [(HUSpringAnimationSettings *)v4 setDelay:0.04];
  [(HUSpringAnimationSettings *)v4 setMass:2.0];
  [(HUSpringAnimationSettings *)v4 setStiffness:450.0];
  v5 = 50.0;
  if (v3)
  {
    v5 = 44.0;
  }

  [(HUSpringAnimationSettings *)v4 setDamping:v5];
  [(HUSpringAnimationSettings *)v4 setSpeed:1.3];
  v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [(HUSpringAnimationSettings *)v4 setTimingFunction:v6];

  return v4;
}

+ (id)_controlAlphaAnimationSettingsForPresenting:(BOOL)a3
{
  if (a3)
  {
    v4 = [HUAnimationSettings settingsWithDuration:0.165];
    v5 = [a1 _easeOutTimingFunction];
    [v4 setTimingFunction:v5];
  }

  else
  {
    v4 = [a1 _blurAnimationSettingsForPresenting:?];
    [v4 speed];
    [v4 setSpeed:v6 * 0.8];
  }

  return v4;
}

+ (id)_blurAnimationSettingsForPresenting:(BOOL)a3
{
  if (a3)
  {
    v4 = [HUAnimationSettings settingsWithDuration:0.45];
    [a1 _easeOutTimingFunction];
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

+ (id)_sourceViewTransitionAnimationSettingsForPresenting:(BOOL)a3
{
  if (a3)
  {
    v4 = [HUAnimationSettings settingsWithDuration:0.25];
    [v4 setDelay:0.02];
    v5 = [a1 _easeOutTimingFunction];
    [v4 setTimingFunction:v5];
  }

  else
  {
    v4 = [a1 _controlScaleAnimationSettingsForPresenting:?];
  }

  return v4;
}

+ (id)_detailChromeAnimationSettings
{
  v3 = [HUAnimationSettings settingsWithDuration:0.6];
  v4 = [a1 _easeOutTimingFunction];
  [v3 setTimingFunction:v4];

  return v3;
}

- (CGAffineTransform)sourceViewTransformForPresentationProgress:(SEL)a3
{
  v7 = [(HUQuickControlContainerViewController *)self controlContainerView];

  if (!v7)
  {
    NSLog(&cfstr_CannotComputeT.isa);
  }

  v8 = [(HUQuickControlContainerViewController *)self controlContainerView];
  if (v8)
  {
    v10 = v8;
    [v8 sourceViewTransformForPresentationProgress:a4];
    v8 = v10;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)presentControlForMacAnimated:(BOOL)a3
{
  [(HUQuickControlContainerViewController *)self setPresentationState:3];

  [(HUQuickControlContainerViewController *)self _createControlContainerViewForMac];
}

- (void)presentControlFromSourceRect:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  [(HUQuickControlContainerViewController *)self _performTransitionToPresentationState:2 animated:v4 initialProgress:v10 completion:0.0];
}

uint64_t __79__HUQuickControlContainerViewController_presentControlFromSourceRect_animated___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setPresentationState:3];
  }

  return result;
}

- (id)dismissControlAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(HUQuickControlContainerViewController *)self isControlPresentedOrPresenting])
  {
    v5 = [(HUQuickControlContainerViewController *)self presentationApplier];

    if (v5)
    {
      v6 = [(HUQuickControlContainerViewController *)self presentationApplier];
      [v6 effectiveProgress];
      v8 = v7;

      v9 = [(HUQuickControlContainerViewController *)self presentationApplier];
      [v9 cancel];

      [(HUQuickControlContainerViewController *)self setPresentationApplier:0];
    }

    else
    {
      v8 = 1.0;
    }

    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    if ([(HUQuickControlContainerViewController *)self presentedDetailView])
    {
      v12 = [(HUQuickControlContainerViewController *)self _dismissDetailsViewControllerAnimated:v3 dismissControl:1];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __64__HUQuickControlContainerViewController_dismissControlAnimated___block_invoke;
      v18[3] = &unk_277DB7530;
      v10 = v11;
      v19 = v10;
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
      v10 = v11;
      v17 = v10;
      [(HUQuickControlContainerViewController *)self _performTransitionToPresentationState:1 animated:v3 initialProgress:v16 completion:1.0 - v8];
      v14 = v17;
    }
  }

  else
  {
    NSLog(&cfstr_ControlIsAlrea.isa);
    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v10;
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

- (void)_performTransitionToPresentationState:(unint64_t)a3 animated:(BOOL)a4 initialProgress:(double)a5 completion:(id)a6
{
  v7 = a4;
  v11 = a6;
  if (a3 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"HUQuickControlContainerViewController.m" lineNumber:399 description:{@"Invalid parameter not satisfying: %@", @"state == HUQuickControlPresentationStatePresenting || state == HUQuickControlPresentationStateDismissing"}];
  }

  v12 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  [MEMORY[0x277D75D18] setAnimationsEnabled:v7];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke;
  aBlock[3] = &__block_descriptor_33_e5_v8__0l;
  v54 = v12;
  v39 = _Block_copy(aBlock);
  [(HUQuickControlContainerViewController *)self setPresentationState:a3];
  v13 = [(HUQuickControlContainerViewController *)self delegate];
  [v13 quickControlViewController:self sourceViewInitialScaleForPresentation:a3 == 2];
  v15 = v14;
  v16 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v16 setInitialSourceViewScale:v15];
  v17 = fmin(fmax(a5, 0.0), 1.0);

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_2;
  v51[3] = &__block_descriptor_41_e8_d16__0d8l;
  *&v51[4] = v17;
  v52 = a3 == 2;
  v18 = _Block_copy(v51);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_3;
  v49[3] = &__block_descriptor_41_e50___HUAnimationSettings_16__0__HUAnimationSettings_8l;
  v50 = v7;
  *&v49[4] = v17;
  v19 = _Block_copy(v49);
  v20 = [objc_opt_class() _controlScaleAnimationSettingsForPresenting:a3 == 2];
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
  v46 = a3 == 2;
  v44[4] = self;
  v38 = v11;
  v45 = v38;
  [v22 addCompletionBlock:v44];
  [v22 start];
  v24 = [objc_opt_class() _controlAlphaAnimationSettingsForPresenting:a3 == 2];
  v25 = v19[2](v19, v24);

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_7;
  v42[3] = &unk_277DC31D0;
  v42[4] = self;
  v26 = v23;
  v43 = v26;
  v27 = [HUAnimationApplier applyAnimationSettings:v25 withStaticApplier:v42 completion:0];
  v28 = [objc_opt_class() _detailChromeAnimationSettings];
  v29 = v19[2](v19, v28);

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __115__HUQuickControlContainerViewController__performTransitionToPresentationState_animated_initialProgress_completion___block_invoke_8;
  v40[3] = &unk_277DC31D0;
  v40[4] = self;
  v30 = v26;
  v41 = v30;
  v31 = [HUAnimationApplier applyAnimationSettings:v29 withStaticApplier:v40 completion:0];
  v32 = [objc_opt_class() _sourceViewTransitionAnimationSettingsForPresenting:a3 == 2];
  v33 = v19[2](v19, v32);

  v34 = [(HUQuickControlContainerViewController *)self delegate];
  v35 = [v34 quickControlViewController:self applierForSourceViewTransitionWithAnimationSettings:v33 presenting:a3 == 2];

  [v35 start];
  if (a3 == 2)
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

- (void)_createControlContainerViewWithSourceRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v8 removeFromSuperview];

  v9 = [HUQuickControlContainerView alloc];
  v10 = [(HUQuickControlContainerView *)v9 initWithFrame:self delegate:*MEMORY[0x277CBF3A0] sourceRect:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), x, y, width, height];
  [(HUQuickControlContainerViewController *)self setControlContainerView:v10];

  v11 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v12 setEdgesForExtendedLayout:1];

  v13 = [(HUQuickControlContainerViewController *)self availableContentLayoutGuide];
  v14 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v14 setStandardViewportFromParentGuide:v13];

  v15 = [MEMORY[0x277D75348] clearColor];
  v16 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v16 setBackgroundColor:v15];

  v17 = [(HUQuickControlContainerViewController *)self view];
  v18 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v17 addSubview:v18];

  v34 = objc_opt_new();
  v19 = [(HUQuickControlContainerViewController *)self view];
  v20 = [v19 leadingAnchor];
  v21 = [(HUQuickControlContainerViewController *)self controlContainerView];
  v22 = [v21 leadingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v34 addObject:v23];

  v24 = [(HUQuickControlContainerViewController *)self view];
  v25 = [v24 widthAnchor];
  v26 = [(HUQuickControlContainerViewController *)self controlContainerView];
  v27 = [v26 widthAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v34 addObject:v28];

  v29 = [(HUQuickControlContainerViewController *)self view];
  v30 = [v29 topAnchor];
  v31 = [(HUQuickControlContainerViewController *)self controlContainerView];
  v32 = [v31 topAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  [v34 addObject:v33];

  [MEMORY[0x277CCAAD0] activateConstraints:v34];
  [(HUQuickControlContainerViewController *)self _updateActiveControlViewController];
  [(HUQuickControlContainerViewController *)self _updateIconDescriptorAnimated:0];
  [(HUQuickControlContainerViewController *)self _updateControlStatusText];
  [(HUQuickControlContainerViewController *)self _updateReachabilityStateForActiveControl];
}

- (void)_createControlContainerViewForMac
{
  v3 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v3 removeFromSuperview];

  v4 = [HUQuickControlContainerView alloc];
  v5 = [(HUQuickControlContainerViewController *)self view];
  [v5 bounds];
  v10 = [(HUQuickControlContainerView *)v4 initWithFrame:self delegate:*MEMORY[0x277CBF3A0] sourceRect:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v6, v7, v8, v9];
  [(HUQuickControlContainerViewController *)self setControlContainerView:v10];

  v11 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(HUQuickControlContainerViewController *)self view];
  v13 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v12 addSubview:v13];

  v29 = objc_opt_new();
  v14 = [(HUQuickControlContainerViewController *)self controlContainerView];
  v15 = [v14 leadingAnchor];
  v16 = [(HUQuickControlContainerViewController *)self view];
  v17 = [v16 leadingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v29 addObject:v18];

  v19 = [(HUQuickControlContainerViewController *)self controlContainerView];
  v20 = [v19 trailingAnchor];
  v21 = [(HUQuickControlContainerViewController *)self view];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v29 addObject:v23];

  v24 = [(HUQuickControlContainerViewController *)self controlContainerView];
  v25 = [v24 topAnchor];
  v26 = [(HUQuickControlContainerViewController *)self view];
  v27 = [v26 topAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v29 addObject:v28];

  [MEMORY[0x277CCAAD0] activateConstraints:v29];
  [(HUQuickControlContainerViewController *)self _updateActiveControlViewController];
  [(HUQuickControlContainerViewController *)self _updateIconDescriptorAnimated:0];
  [(HUQuickControlContainerViewController *)self _updateControlStatusText];
  [(HUQuickControlContainerViewController *)self _updateReachabilityStateForActiveControl];
}

- (void)_updateActiveControlViewController
{
  v20 = [(HUQuickControlContainerViewController *)self activeControlViewController];
  v3 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  v4 = [v3 activeController];

  if (v4 && [v4 preferredPresentationStyle])
  {
    NSLog(&cfstr_ANonInlineQuic.isa, v4);
  }

  if (v20 != v4)
  {
    [v20 willMoveToParentViewController:0];
  }

  if (v4)
  {
    [(HUQuickControlContainerViewController *)self addChildViewController:v4];
    [(HUQuickControlContainerViewController *)self setActiveControlViewController:v4];
    v5 = [(HUQuickControlContainerViewController *)self activeControlViewController];
    v6 = [v5 hu_preloadContent];

    v7 = [(HUQuickControlContainerViewController *)self activeControlViewController];
    v8 = [v7 view];
    v9 = [(HUQuickControlContainerViewController *)self controlContainerView];
    [v9 setActiveControlView:v8];

    v10 = [(HUQuickControlContainerViewController *)self controlContainerView];
    v11 = [v10 controlViewPreferredFrameLayoutGuide];
    v12 = [(HUQuickControlContainerViewController *)self activeControlViewController];
    [v12 setPreferredFrameLayoutGuide:v11];

    v13 = [(HUQuickControlContainerViewController *)self activeControlViewController];
    v14 = [v13 hasSingleControlView];
    v15 = [(HUQuickControlContainerViewController *)self controlContainerView];
    [v15 setControlViewSupportsTransformTransition:v14];

    v16 = [(HUQuickControlContainerViewController *)self delegate];
    v17 = [(HUQuickControlContainerViewController *)self item];
    v18 = [v16 hasDetailsActionForQuickControlViewController:self item:v17];

    v19 = [(HUQuickControlContainerViewController *)self controlContainerView];
    [v19 setShouldShowDetailsButton:v18];

    if (v20 != v4)
    {
      [v20 removeFromParentViewController];
      [v4 didMoveToParentViewController:self];
    }
  }

  [(HUQuickControlContainerViewController *)self _updateReachabilityStateForActiveControl];
}

- (void)_controlDidDismiss
{
  [(HUQuickControlContainerViewController *)self setPresentationState:0];
  v3 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v3 removeFromSuperview];

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
    v4 = [(HUQuickControlContainerViewController *)self presentationDelegate];
    v11 = v4;
    v5 = self;
    v6 = 1;
  }

  else
  {
    if ([(HUQuickControlContainerViewController *)self presentationState])
    {
      return;
    }

    v8 = [(HUQuickControlContainerViewController *)self presentationDelegate];
    v9 = [(HUQuickControlContainerViewController *)self presentingViewController];
    NSLog(&cfstr_QuickControlsA.isa, self, v8, v9);

    v10 = [(HUQuickControlContainerViewController *)self presentationDelegate];

    if (!v10)
    {
      v11 = [(HUQuickControlContainerViewController *)self presentingViewController];
      [v11 dismissViewControllerAnimated:0 completion:0];
      goto LABEL_4;
    }

    v4 = [(HUQuickControlContainerViewController *)self presentationDelegate];
    v11 = v4;
    v5 = self;
    v6 = 0;
  }

  v7 = [v4 finishPresentation:v5 animated:v6];
LABEL_4:
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = HUQuickControlContainerViewController;
  [(HUQuickControlContainerViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v5 setNeedsLayout];
}

- (id)_prepareDetailViewController
{
  v3 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  v4 = [v3 item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v6 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
    v7 = [v6 item];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v9 accessory];
    v11 = [v10 hf_isMultiServiceAccessory];

    if (v11)
    {
      v12 = [(HUQuickControlContainerViewController *)self delegate];
      v13 = [v12 detailsViewControllerForQuickControlViewController:self item:v9];
      goto LABEL_10;
    }

    v18 = [v9 accessory];
    v19 = [v18 hf_primaryService];
    v12 = [v9 serviceItemForService:v19];

    v15 = [(HUQuickControlContainerViewController *)self delegate];
    v14 = v15;
    v16 = self;
    v17 = v12;
  }

  else
  {
    v9 = [(HUQuickControlContainerViewController *)self delegate];
    v12 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
    v14 = [v12 item];
    v15 = v9;
    v16 = self;
    v17 = v14;
  }

  v13 = [v15 detailsViewControllerForQuickControlViewController:v16 item:v17];

LABEL_10:
  [v13 setPresentationDelegate:self];

  return v13;
}

- (id)_dismissDetailsViewControllerAnimated:(BOOL)a3 dismissControl:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(HUQuickControlContainerViewController *)self delegate];
  [v7 quickControlViewControllerWillDismissDetailsViewController:self shouldDismissQuickControl:v4];

  if (v4)
  {
    v8 = [(HUQuickControlContainerViewController *)self controlContainerView];
    [v8 removeFromSuperview];

    v9 = [(HUQuickControlContainerViewController *)self presentationDelegate];
    v10 = [v9 finishPresentation:self animated:v5];
  }

  else
  {
    [(HUQuickControlContainerViewController *)self setPresentedDetailView:0];
    v10 = [(UIViewController *)self hu_dismissViewControllerAnimated:v5];
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
    v6 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@: externalAnimationsBegan", &v5, 0xCu);
  }

  v4 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v4 externalAnimationsBegan];
}

- (void)externalAnimationsEnded
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@: externalAnimationsEnded", &v5, 0xCu);
  }

  v4 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v4 externalAnimationsEnded];
}

- (void)beginReceivingTouchesWithGestureRecognizer:(id)a3
{
  v7 = a3;
  v4 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  v5 = [v4 isReachable];

  if (v5)
  {
    v6 = [(HUQuickControlContainerViewController *)self activeControlViewController];
    [v6 beginUserInteractionWithFirstTouchGestureRecognizer:v7];
  }
}

- (id)hu_prepareForDismissalAnimated:(BOOL)a3
{
  v3 = [(HUQuickControlContainerViewController *)self dismissControlAnimated:a3];
  v4 = [v3 flatMap:&__block_literal_global_82_0];

  return v4;
}

- (id)finishPresentation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HUQuickControlContainerViewController *)self item];
  v13 = *MEMORY[0x277D13BB0];
  v14[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v7 updateWithOptions:v8];

  if ([v6 conformsToProtocol:&unk_2824C3AE0])
  {
    v10 = [v6 requiresPresentingViewControllerDismissal];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HUQuickControlContainerViewController *)self _dismissDetailsViewControllerAnimated:v4 dismissControl:v10];

  return v11;
}

- (void)detailsButtonPressedInContainerView:(id)a3
{
  v4 = [(HUQuickControlContainerViewController *)self viewControllerCoordinator];
  v5 = [v4 item];
  v6 = [v5 latestResults];
  v14 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13DB8]];

  v7 = [(HUQuickControlContainerViewController *)self detailViewURLHandler];

  if (v7 && v14)
  {
    v8 = [(HUQuickControlContainerViewController *)self detailViewURLHandler];
    v9 = [v8 openURL:v14];
LABEL_7:

    goto LABEL_8;
  }

  v10 = [(HUQuickControlContainerViewController *)self delegate];
  if (v10)
  {
    v11 = v10;
    v12 = [(HUQuickControlContainerViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v8 = [(HUQuickControlContainerViewController *)self delegate];
      [v8 quickControlViewControllerDidTapDetailsButton:self];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)contentDidUpdateInContainerView:(id)a3
{
  v4 = [(HUQuickControlContainerViewController *)self parentViewController];
  v3 = [v4 view];
  [v3 setNeedsLayout];
}

- (BOOL)isConfiguredForNonHomeUser:(id)a3
{
  v3 = [(HUQuickControlContainerViewController *)self presentationContext];
  v4 = [v3 isConfiguredForNonHomeUser];

  return v4;
}

- (void)quickControlContent:(id)a3 requestDismissalOfType:(unint64_t)a4
{
  v6 = a3;
  if (!a4)
  {
    v13 = v6;
    v10 = [(HUQuickControlContainerViewController *)self presentedViewController];

    if (v10 == v13)
    {
      v12 = [(UIViewController *)self hu_dismissViewControllerAnimated:0];
    }

    else
    {
      v11 = [(HUQuickControlContainerViewController *)self presentedViewController];
      NSLog(&cfstr_QuickControlCo.isa, v13, v11);
    }

    goto LABEL_8;
  }

  if (a4 == 1)
  {
    v13 = v6;
    v7 = [(HUQuickControlContainerViewController *)self isControlPresentedOrPresenting];
    v6 = v13;
    if (v7)
    {
      [(HUQuickControlContainerViewController *)self setRequiresPresentingViewControllerDismissal:1];
      v8 = [(HUQuickControlContainerViewController *)self presentationDelegate];
      v9 = [v8 finishPresentation:self animated:1];

LABEL_8:
      v6 = v13;
    }
  }
}

- (void)quickControlContent:(id)a3 showAuxiliaryView:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v6 showAuxiliaryView:v5];
}

- (void)hideAuxiliaryViewForQuickControlContent:(id)a3
{
  v3 = [(HUQuickControlContainerViewController *)self controlContainerView];
  [v3 hideAuxiliaryView];
}

- (id)viewForTouchContinuation
{
  objc_opt_class();
  v3 = [(HUQuickControlContainerViewController *)self item];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && ([v5 accessory], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hf_isMultiServiceAccessory"), v6, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    v9 = [(HUQuickControlContainerViewController *)self activeControlViewController];
    v10 = [v9 viewControllerForTouchContinuation];
    v8 = [v10 viewForTouchContinuation];
  }

  return v8;
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