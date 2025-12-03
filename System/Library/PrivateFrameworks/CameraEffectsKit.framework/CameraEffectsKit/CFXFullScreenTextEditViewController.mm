@interface CFXFullScreenTextEditViewController
+ (BOOL)displayFullScreenTextEditorForEffect:(id)effect inViewController:(id)controller delegate:(id)delegate cameraViewWindowFrame:(CGRect)frame insertingEffect:(BOOL)insertingEffect;
+ (id)CFX_fadeTimingParameters;
+ (void)notifyCameraViewWindowFrameChanged:(CGRect)changed;
+ (void)removeFullScreenTextEditor;
+ (void)resign;
- (BOOL)effectEditorView:(id)view isEffectAtPoint:(CGPoint)point effect:(id)effect;
- (BOOL)effectEditorView:(id)view isFaceTrackingEffect:(id)effect;
- (BOOL)effectEditorView:(id)view shouldDisableEditingAnimationForEffect:(id)effect;
- (BOOL)effectEditorView:(id)view shouldEditTextForEffect:(id)effect;
- (CFXFullScreenTextEditViewController)initWithTextEffect:(id)effect CGSize:(CGRect)size insertingEffect:(BOOL)insertingEffect delegate:(id)delegate;
- (CFXFullScreenTextEditViewControllerDelegate)delegate;
- (CGPoint)effectEditorView:(id)view removeButtonPositionForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (CGPoint)effectEditorView:(id)view spacingBetweenCenterPointOfEffect:(id)effect point:(CGPoint)point relativeToBounds:(CGRect)bounds;
- (CGRect)effectEditorFrameRelativeToScreen;
- (CGRect)effectEditorView:(id)view frameForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (CGRect)effectEditorView:(id)view hitAreaBoundingFrameForEffect:(id)effect adjustForMinimumSize:(BOOL)size relativeToBounds:(CGRect)bounds;
- (double)effectEditorView:(id)view durationForEndEditingAnimationForEffect:(id)effect;
- (id)effectEditorView:(id)view beginEditingAnimationFromFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (id)effectEditorView:(id)view beginEditingAnimationToFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (id)effectEditorView:(id)view calculateAnimatedFaceTrackingTransformWithCurrentFaceTrackingDataFromTrackingType:(int64_t)type interpolatedWithFaceTrackingTransform:(id)transform toTrackingType:(int64_t)trackingType atAnimationProgress:(float)progress;
- (id)effectEditorView:(id)view effectAtPoint:(CGPoint)point;
- (id)effectEditorView:(id)view endEditingAnimationFromFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (id)effectEditorView:(id)view endEditingAnimationToFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (id)effectEditorView:(id)view overlayEffectFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (id)effectEditorView:(id)view textEditingPropertiesForEffect:(id)effect relativeToBounds:(CGRect)bounds;
- (id)effectEditorView:(id)view textForEffect:(id)effect;
- (unint64_t)effectEditorView:(id)view maximumTextLengthForEffect:(id)effect;
- (void)CFX_animateWithDuration:(double)duration animatingIn:(BOOL)in completion:(id)completion;
- (void)configureWorkingEffect;
- (void)dealloc;
- (void)didTappedEmptyDimmedArea:(id)area;
- (void)effectEditorView:(id)view applyAnimationTransformsToEffect:(id)effect transforms:(id)transforms;
- (void)effectEditorView:(id)view didBeginEditingTextForEffect:(id)effect;
- (void)effectEditorView:(id)view didCompleteEndEditingAnimationForEffect:(id)effect completion:(id)completion;
- (void)effectEditorView:(id)view didEditTextForEffect:(id)effect newText:(id)text;
- (void)effectEditorView:(id)view didEndEditingTextForEffect:(id)effect wasCancelled:(BOOL)cancelled;
- (void)effectEditorView:(id)view didRemoveEffect:(id)effect;
- (void)effectEditorView:(id)view didStartBeginEditingAnimationForEffect:(id)effect completion:(id)completion;
- (void)effectEditorView:(id)view didStartEndEditingAnimationForEffect:(id)effect;
- (void)effectEditorView:(id)view willBeginAnimationAfterEditingEffect:(id)effect;
- (void)effectEditorView:(id)view willBeginAnimationBeforeEditingEffect:(id)effect;
- (void)effectEditorViewDidBeginEditing:(id)editing;
- (void)effectEditorViewDidEndEditing:(id)editing;
- (void)keyboardDidHide:(id)hide;
- (void)scaleTextToFitTextEditingBounds:(BOOL)bounds;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CFXFullScreenTextEditViewController

+ (BOOL)displayFullScreenTextEditorForEffect:(id)effect inViewController:(id)controller delegate:(id)delegate cameraViewWindowFrame:(CGRect)frame insertingEffect:(BOOL)insertingEffect
{
  v7 = s_CurrentFullScreenTextEditorController;
  if (!s_CurrentFullScreenTextEditorController)
  {
    insertingEffectCopy = insertingEffect;
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    delegateCopy = delegate;
    controllerCopy = controller;
    effectCopy = effect;
    height = [[CFXFullScreenTextEditViewController alloc] initWithTextEffect:effectCopy CGSize:insertingEffectCopy insertingEffect:delegateCopy delegate:x, y, width, height];

    v19 = s_CurrentFullScreenTextEditorController;
    s_CurrentFullScreenTextEditorController = height;

    [controllerCopy jfxAddChildViewController:s_CurrentFullScreenTextEditorController constrainRelativeToSafeAreas:0];
  }

  return v7 == 0;
}

+ (void)removeFullScreenTextEditor
{
  if (s_CurrentFullScreenTextEditorController)
  {
    [s_CurrentFullScreenTextEditorController jfxRemoveFromParentViewController];
    v2 = s_CurrentFullScreenTextEditorController;
    s_CurrentFullScreenTextEditorController = 0;
  }
}

+ (void)notifyCameraViewWindowFrameChanged:(CGRect)changed
{
  height = changed.size.height;
  width = changed.size.width;
  y = changed.origin.y;
  x = changed.origin.x;
  v19 = s_CurrentFullScreenTextEditorController;
  if (v19)
  {
    [v19 setEffectEditorFrameRelativeToScreen:{x, y, width, height}];
    view = [v19 view];
    window = [view window];

    if (window)
    {
      view2 = [v19 view];
      [v19 effectEditorFrameRelativeToScreen];
      [view2 convertRect:0 fromView:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      effectEditor = [v19 effectEditor];
      [effectEditor setFrame:{v11, v13, v15, v17}];
    }
  }
}

+ (void)resign
{
  if (s_CurrentFullScreenTextEditorController)
  {
    effectEditor = [s_CurrentFullScreenTextEditorController effectEditor];
    [effectEditor endEditingAnimated:1 withCompletionBlock:0];
  }
}

- (CFXFullScreenTextEditViewController)initWithTextEffect:(id)effect CGSize:(CGRect)size insertingEffect:(BOOL)insertingEffect delegate:(id)delegate
{
  height = size.size.height;
  width = size.size.width;
  y = size.origin.y;
  x = size.origin.x;
  effectCopy = effect;
  delegateCopy = delegate;
  v33.receiver = self;
  v33.super_class = CFXFullScreenTextEditViewController;
  v16 = [(CFXFullScreenTextEditViewController *)&v33 initWithNibName:0 bundle:0];
  if (v16)
  {
    jtEffect = [effectCopy jtEffect];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v25 = MEMORY[0x277CBEAD8];
      v26 = *MEMORY[0x277CBE660];
      v27 = MEMORY[0x277CCACA8];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v27 stringWithFormat:@"overlay required to initialize class %@ ", v29];
      v31 = [v25 exceptionWithName:v26 reason:v30 userInfo:0];
      v32 = v31;

      objc_exception_throw(v31);
    }

    objc_storeStrong(&v16->_textEffect, effect);
    textEffect = [(CFXFullScreenTextEditViewController *)v16 textEffect];
    jtEffect2 = [textEffect jtEffect];
    v21 = [jtEffect2 copy];

    v22 = [CFXEffect effectWithJTEffect:v21];
    workingEffect = v16->_workingEffect;
    v16->_workingEffect = v22;

    objc_storeWeak(&v16->_delegate, delegateCopy);
    v16->_insertingEffect = insertingEffect;
    v16->_effectEditorFrameRelativeToScreen.origin.x = x;
    v16->_effectEditorFrameRelativeToScreen.origin.y = y;
    v16->_effectEditorFrameRelativeToScreen.size.width = width;
    v16->_effectEditorFrameRelativeToScreen.size.height = height;
  }

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CFXFullScreenTextEditViewController;
  [(CFXFullScreenTextEditViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v83[4] = *MEMORY[0x277D85DE8];
  v82.receiver = self;
  v82.super_class = CFXFullScreenTextEditViewController;
  [(CFXFullScreenTextEditViewController *)&v82 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(CFXFullScreenTextEditViewController *)self setDimmingView:v3];

  dimmingView = [(CFXFullScreenTextEditViewController *)self dimmingView];
  [dimmingView setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(CFXFullScreenTextEditViewController *)self view];
  dimmingView2 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  [view addSubview:dimmingView2];

  v72 = MEMORY[0x277CCAAD0];
  dimmingView3 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  topAnchor = [dimmingView3 topAnchor];
  view2 = [(CFXFullScreenTextEditViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v77 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v83[0] = v77;
  dimmingView4 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  bottomAnchor = [dimmingView4 bottomAnchor];
  view3 = [(CFXFullScreenTextEditViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v71 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v83[1] = v71;
  dimmingView5 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  leadingAnchor = [dimmingView5 leadingAnchor];
  view4 = [(CFXFullScreenTextEditViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v83[2] = v9;
  dimmingView6 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  trailingAnchor = [dimmingView6 trailingAnchor];
  view5 = [(CFXFullScreenTextEditViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v83[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
  [v72 activateConstraints:v15];

  blackColor = [MEMORY[0x277D75348] blackColor];
  v17 = [blackColor colorWithAlphaComponent:0.5];
  dimmingView7 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  [dimmingView7 setBackgroundColor:v17];

  v19 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTappedEmptyDimmedArea_];
  dimmingView8 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  [dimmingView8 addGestureRecognizer:v19];

  dimmingView9 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  [dimmingView9 setAlpha:0.0];

  v22 = JFX_getDrawOverlayBoundsOptionsDictionary();
  v23 = [JFXOverlayEffectDebugViewOptions debugViewOptionsWithDictionary:v22];
  [(CFXFullScreenTextEditViewController *)self setDebugOptions:v23];

  if (JFX_isDrawOverlayBoundsEnabled())
  {
    debugOptions = [(CFXFullScreenTextEditViewController *)self debugOptions];
    showTextBoundingBoxes = [debugOptions showTextBoundingBoxes];

    if (showTextBoundingBoxes)
    {
      v26 = objc_alloc(MEMORY[0x277D75D18]);
      v27 = *MEMORY[0x277CBF3A0];
      v28 = *(MEMORY[0x277CBF3A0] + 8);
      v29 = *(MEMORY[0x277CBF3A0] + 16);
      v30 = *(MEMORY[0x277CBF3A0] + 24);
      v31 = [v26 initWithFrame:{*MEMORY[0x277CBF3A0], v28, v29, v30}];
      [(CFXFullScreenTextEditViewController *)self setDebugView:v31];

      debugView = [(CFXFullScreenTextEditViewController *)self debugView];
      layer = [debugView layer];
      [layer setBorderWidth:2.0];

      greenColor = [MEMORY[0x277D75348] greenColor];
      cGColor = [greenColor CGColor];
      debugView2 = [(CFXFullScreenTextEditViewController *)self debugView];
      layer2 = [debugView2 layer];
      [layer2 setBorderColor:cGColor];

      view6 = [(CFXFullScreenTextEditViewController *)self view];
      debugView3 = [(CFXFullScreenTextEditViewController *)self debugView];
      [view6 addSubview:debugView3];

      v40 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v27, v28, v29, v30}];
      [v40 setTag:1];
      layer3 = [v40 layer];
      [layer3 setBorderWidth:4.0];

      yellowColor = [MEMORY[0x277D75348] yellowColor];
      cGColor2 = [yellowColor CGColor];
      layer4 = [v40 layer];
      [layer4 setBorderColor:cGColor2];

      debugView4 = [(CFXFullScreenTextEditViewController *)self debugView];
      [debugView4 addSubview:v40];

      v46 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v27, v28, v29, v30}];
      [v46 setTag:2];
      layer5 = [v46 layer];
      [layer5 setBorderWidth:2.0];

      orangeColor = [MEMORY[0x277D75348] orangeColor];
      cGColor3 = [orangeColor CGColor];
      layer6 = [v46 layer];
      [layer6 setBorderColor:cGColor3];

      debugView5 = [(CFXFullScreenTextEditViewController *)self debugView];
      [debugView5 addSubview:v46];

      v52 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 4.0, 4.0}];
      [v52 setTag:3];
      magentaColor = [MEMORY[0x277D75348] magentaColor];
      cGColor4 = [magentaColor CGColor];
      layer7 = [v52 layer];
      [layer7 setBackgroundColor:cGColor4];

      debugView6 = [(CFXFullScreenTextEditViewController *)self debugView];
      [debugView6 addSubview:v52];

      v57 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v27, v28, v29, v30}];
      [v57 setTag:4];
      layer8 = [v57 layer];
      [layer8 setBorderWidth:2.0];

      redColor = [MEMORY[0x277D75348] redColor];
      cGColor5 = [redColor CGColor];
      layer9 = [v57 layer];
      [layer9 setBorderColor:cGColor5];

      debugView7 = [(CFXFullScreenTextEditViewController *)self debugView];
      [debugView7 addSubview:v57];

      v63 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v27, v28, v29, v30}];
      [v63 setTag:5];
      layer10 = [v63 layer];
      [layer10 setBorderWidth:4.0];

      blackColor2 = [MEMORY[0x277D75348] blackColor];
      cGColor6 = [blackColor2 CGColor];
      layer11 = [v63 layer];
      [layer11 setBorderColor:cGColor6];

      debugView8 = [(CFXFullScreenTextEditViewController *)self debugView];
      [debugView8 addSubview:v63];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v28.receiver = self;
  v28.super_class = CFXFullScreenTextEditViewController;
  [(CFXFullScreenTextEditViewController *)&v28 viewDidAppear:appear];
  [(CFXFullScreenTextEditViewController *)self configureWorkingEffect];
  v4 = [[CFXEffectEditorView alloc] initWithMode:2 delegate:self];
  [(CFXFullScreenTextEditViewController *)self setEffectEditor:v4];

  view = [(CFXFullScreenTextEditViewController *)self view];
  effectEditor = [(CFXFullScreenTextEditViewController *)self effectEditor];
  [view addSubview:effectEditor];

  view2 = [(CFXFullScreenTextEditViewController *)self view];
  [(CFXFullScreenTextEditViewController *)self effectEditorFrameRelativeToScreen];
  [view2 convertRect:0 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  effectEditor2 = [(CFXFullScreenTextEditViewController *)self effectEditor];
  [effectEditor2 setFrame:{v9, v11, v13, v15}];

  insertingEffect = [(CFXFullScreenTextEditViewController *)self insertingEffect];
  delegate = [(CFXFullScreenTextEditViewController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate2 = [(CFXFullScreenTextEditViewController *)self delegate];
    workingEffect = [(CFXFullScreenTextEditViewController *)self workingEffect];
    v22 = [delegate2 fullScreenTextEditViewController:self shouldDisableEditingAnimationForEffect:workingEffect];

    insertingEffect |= v22;
  }

  objc_initWeak(&location, self);
  effectEditor3 = [(CFXFullScreenTextEditViewController *)self effectEditor];
  workingEffect2 = [(CFXFullScreenTextEditViewController *)self workingEffect];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__CFXFullScreenTextEditViewController_viewDidAppear___block_invoke;
  v25[3] = &unk_278D7B3F0;
  objc_copyWeak(&v26, &location);
  v25[4] = self;
  [effectEditor3 beginEditingEffect:workingEffect2 animated:(insertingEffect ^ 1) & 1 withCompletionBlock:v25];

  if (insertingEffect)
  {
    [(CFXFullScreenTextEditViewController *)self CFX_animateWithDuration:1 animatingIn:0 completion:0.4];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __53__CFXFullScreenTextEditViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = [v7 textEffect];
    [v3 fullScreenTextEditViewController:v7 didBeginEditingEffect:v4];

    v5 = [v7 effectEditor];
    [v5 beginTextEditing];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:*(a1 + 32) selector:sel_keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];

    WeakRetained = v7;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CFXFullScreenTextEditViewController;
  [(CFXFullScreenTextEditViewController *)&v6 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA0] object:0];

  effectEditor = [(CFXFullScreenTextEditViewController *)self effectEditor];
  [effectEditor endEditingAnimated:0 withCompletionBlock:0];
}

- (void)keyboardDidHide:(id)hide
{
  effectEditor = [(CFXFullScreenTextEditViewController *)self effectEditor];
  [effectEditor endEditingAnimated:1 withCompletionBlock:0];
}

- (void)didTappedEmptyDimmedArea:(id)area
{
  if ([area state] == 3)
  {
    effectEditor = [(CFXFullScreenTextEditViewController *)self effectEditor];
    [effectEditor endEditingAnimated:1 withCompletionBlock:0];
  }
}

- (void)configureWorkingEffect
{
  workingEffect = [(CFXFullScreenTextEditViewController *)self workingEffect];
  jtEffect = [workingEffect jtEffect];

  [jtEffect setHidden:0];
  v5 = *(MEMORY[0x277D860A0] + 80);
  v35 = *(MEMORY[0x277D860A0] + 64);
  v36 = v5;
  v6 = *(MEMORY[0x277D860A0] + 112);
  v37 = *(MEMORY[0x277D860A0] + 96);
  v38 = v6;
  v7 = *(MEMORY[0x277D860A0] + 16);
  v31 = *MEMORY[0x277D860A0];
  v32 = v7;
  v8 = *(MEMORY[0x277D860A0] + 48);
  v33 = *(MEMORY[0x277D860A0] + 32);
  v34 = v8;
  [jtEffect setTopLevelTransform:&v31];
  delegate = [(CFXFullScreenTextEditViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10 & 1) != 0 && (-[CFXFullScreenTextEditViewController delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), -[CFXFullScreenTextEditViewController workingEffect](self, "workingEffect"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v11 fullScreenTextEditViewController:self shouldDisableEditingAnimationForEffect:v12], v12, v11, (v13))
  {
    v14 = 0;
  }

  else
  {
    trackingProps = [jtEffect trackingProps];
    trackingType = [trackingProps trackingType];

    if (trackingType != 1)
    {
      goto LABEL_7;
    }

    v14 = 2;
  }

  trackingProps2 = [jtEffect trackingProps];
  [trackingProps2 setTrackingType:v14];

LABEL_7:
  if ([jtEffect isTextFlipped])
  {
    CGAffineTransformMakeRotation(&v31, 3.14159265);
    view = [(CFXFullScreenTextEditViewController *)self view];
    [view bounds];
    v29 = *MEMORY[0x277CC08F0];
    v30 = *(MEMORY[0x277CC08F0] + 16);
    [jtEffect addTransform:&v31 withComponentTime:&v29 relativeTo:1 basisOrigin:?];
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [jtEffect renderSize];
    v22 = v21;
    v24 = v23;
    [(CFXFullScreenTextEditViewController *)self effectEditorFrameRelativeToScreen];
    Height = CGRectGetHeight(v39);
    [(CFXFullScreenTextEditViewController *)self effectEditorFrameRelativeToScreen];
    v26 = (v22 < v24) ^ (Height > CGRectGetWidth(v40));
    if (v26)
    {
      v27 = v24;
    }

    else
    {
      v27 = v22;
    }

    if (v26)
    {
      v28 = v22;
    }

    else
    {
      v28 = v24;
    }

    [jtEffect setRenderSize:{v27, v28}];
  }

  [(CFXFullScreenTextEditViewController *)self scaleTextToFitTextEditingBounds:1];
}

- (void)scaleTextToFitTextEditingBounds:(BOOL)bounds
{
  if (![(CFXFullScreenTextEditViewController *)self isRunningAnimation])
  {
    view = [(CFXFullScreenTextEditViewController *)self view];
    [(CFXFullScreenTextEditViewController *)self effectEditorFrameRelativeToScreen];
    [view convertRect:0 fromView:?];
    v7 = v6;
    v86 = v8;
    v10 = v9;
    v12 = v11;

    view2 = [(CFXFullScreenTextEditViewController *)self view];
    [view2 bounds];
    v15 = v14;
    v17 = v16;
    v103.origin.x = 0.0;
    v103.origin.y = 0.0;
    v103.size.width = v10;
    v103.size.height = v12;
    MidX = CGRectGetMidX(v103);
    v104.origin.x = 0.0;
    v104.origin.y = 0.0;
    v104.size.width = v10;
    v104.size.height = v12;
    v19 = CGRectGetMidY(v104) - v17 * 0.5;

    v105.origin.x = 0.0;
    v105.origin.y = 0.0;
    v105.size.width = v10;
    v105.size.height = v12;
    v123.origin.x = MidX - v15 * 0.5;
    v123.origin.y = v19;
    v123.size.width = v15;
    v123.size.height = v17;
    v106 = CGRectIntersection(v105, v123);
    x = v106.origin.x;
    y = v106.origin.y;
    width = v106.size.width;
    height = v106.size.height;
    workingEffect = [(CFXFullScreenTextEditViewController *)self workingEffect];
    jtEffect = [workingEffect jtEffect];

    isEmoji = [jtEffect isEmoji];
    v27 = MEMORY[0x277CC08F0];
    if (bounds || (*&v102.a = *MEMORY[0x277CC08F0], v102.c = *(MEMORY[0x277CC08F0] + 16), [jtEffect imageFrameAtTime:&v102 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{0.0, 0.0, v10, v12}], v124.origin.x = v28 + -24.0, v124.origin.y = v29 + -34.0, v124.size.width = v30 + 48.0, v124.size.height = v31 + 58.0, v107.origin.x = x, v107.origin.y = y, v107.size.width = width, v107.size.height = height, !CGRectContainsRect(v107, v124)))
    {
      v94 = y;
      v85 = v7;
      if (isEmoji)
      {
        v32 = 0.32;
      }

      else
      {
        strings = [jtEffect strings];
        firstObject = [strings firstObject];
        if ([firstObject length] >= 4)
        {
          v32 = 0.5;
        }

        else
        {
          v32 = 0.32;
        }
      }

      if (width >= height)
      {
        v35 = height;
      }

      else
      {
        v35 = width;
      }

      *&v102.a = *v27;
      v96 = *&v102.a;
      v102.c = *(v27 + 16);
      c = v102.c;
      v83 = v35 * v32;
      [jtEffect applyScaleToFitFrame:&v102 withComponentTime:0.0 relativeRect:{0.0, v83, v83, 0.0, 0.0, v10, v12}];
      *&v102.a = v96;
      v102.c = c;
      [jtEffect imageFrameAtTime:&v102 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{0.0, 0.0, v10, v12}];
      v92 = v40;
      v93 = v39;
      if (width <= height)
      {
        v41 = 0.5;
      }

      else
      {
        v41 = width / height * 0.5 - (width / height + -1.0) * 0.5;
      }

      v90 = v38;
      v42 = v12;
      if (v10 <= v12)
      {
        v43 = v37;
      }

      else
      {
        v43 = v37;
        v41 = ((v10 / v42 + -1.0) * 0.5 + v41) / (v10 / v42);
      }

      v91 = v42;
      v44 = CGRectMakeWithSizeAndCenterPoint(v37 + 48.0, v38 + 58.0, v10 * v41);
      v97 = v45;
      v98 = v46;
      v99 = v44;
      rect = v47;
      v87 = v44;
      if (v46 <= width)
      {
        v99 = x;
        if (v44 >= x)
        {
          MaxX = CGRectGetMaxX(*&v44);
          v108.origin.x = x;
          v108.origin.y = v94;
          v108.size.width = width;
          v108.size.height = height;
          v49 = CGRectGetMaxX(v108);
          v47 = rect;
          v99 = v87;
          if (MaxX > v49)
          {
            v109.origin.x = x;
            v109.origin.y = v94;
            v109.size.width = width;
            v109.size.height = height;
            v50 = CGRectGetMaxX(v109);
            v110.origin.x = v87;
            v110.origin.y = v97;
            v110.size.width = v98;
            v110.size.height = rect;
            v51 = CGRectGetWidth(v110);
            v47 = rect;
            v99 = v50 - v51;
          }
        }
      }

      if (v47 > height)
      {
        v52 = v97;
      }

      else
      {
        v52 = v94;
        if (v97 >= v94)
        {
          v111.size.width = v98;
          v111.origin.x = v99;
          v111.origin.y = v97;
          v111.size.height = rect;
          MaxY = CGRectGetMaxY(v111);
          v112.origin.x = x;
          v112.origin.y = v94;
          v112.size.width = width;
          v112.size.height = height;
          v54 = CGRectGetMaxY(v112);
          v47 = rect;
          v52 = v97;
          if (MaxY > v54)
          {
            v113.origin.x = x;
            v113.origin.y = v94;
            v113.size.width = width;
            v113.size.height = height;
            v55 = CGRectGetMaxY(v113);
            v114.size.width = v98;
            v114.origin.x = v99;
            v114.origin.y = v97;
            v114.size.height = rect;
            v56 = CGRectGetHeight(v114);
            v47 = rect;
            v52 = v55 - v56;
          }
        }
      }

      v81 = v52;
      v82 = width;
      v84 = x;
      v57 = v52 + 34.0;
      v115.origin.x = v99 + 24.0;
      v115.origin.y = v52 + 34.0;
      v115.size.width = v98 + -48.0;
      v115.size.height = v47 + -58.0;
      v58 = v115.size.height;
      v88 = CGRectGetMidX(v115);
      v116.origin.x = v93;
      v116.origin.y = v92;
      v116.size.width = v43;
      v116.size.height = v90;
      v89 = v88 - CGRectGetMidX(v116);
      v117.origin.x = v99 + 24.0;
      v117.origin.y = v57;
      v117.size.width = v98 + -48.0;
      v117.size.height = v58;
      MidY = CGRectGetMidY(v117);
      v118.origin.x = v93;
      v118.origin.y = v92;
      v118.size.width = v43;
      v118.size.height = v90;
      v60 = CGRectGetMidY(v118);
      CGAffineTransformMakeTranslation(&v102, v89, MidY - v60);
      v100 = v96;
      v101 = c;
      [jtEffect addTransform:&v102 withComponentTime:&v100 relativeTo:1 basisOrigin:{0.0, 0.0, v10, v91}];
      if (JFX_isDrawOverlayBoundsEnabled())
      {
        debugOptions = [(CFXFullScreenTextEditViewController *)self debugOptions];
        showTextBoundingBoxes = [debugOptions showTextBoundingBoxes];

        if (showTextBoundingBoxes)
        {
          debugView = [(CFXFullScreenTextEditViewController *)self debugView];
          [debugView setFrame:{v85, v86, v10, v91}];

          debugView2 = [(CFXFullScreenTextEditViewController *)self debugView];
          v65 = [debugView2 viewWithTag:1];
          [v65 setFrame:{v84, v94, v82, height}];

          debugView3 = [(CFXFullScreenTextEditViewController *)self debugView];
          v67 = [debugView3 viewWithTag:2];
          [v67 setFrame:{0.0, 0.0, v83, v83}];

          v119.origin.x = v99 + 24.0;
          v119.origin.y = v57;
          v119.size.width = v98 + -48.0;
          v119.size.height = v58;
          v68 = CGRectGetMidX(v119);
          v120.origin.x = v99 + 24.0;
          v120.origin.y = v57;
          v120.size.width = v98 + -48.0;
          v120.size.height = v58;
          v69 = CGRectGetMidY(v120);
          debugView4 = [(CFXFullScreenTextEditViewController *)self debugView];
          v71 = [debugView4 viewWithTag:2];
          [v71 setCenter:{v68, v69}];

          v121.origin.x = v87;
          v121.origin.y = v97;
          v121.size.width = v98;
          v121.size.height = rect;
          v72 = CGRectGetMidX(v121);
          v122.origin.x = v87;
          v122.origin.y = v97;
          v122.size.width = v98;
          v122.size.height = rect;
          v73 = CGRectGetMidY(v122);
          debugView5 = [(CFXFullScreenTextEditViewController *)self debugView];
          v75 = [debugView5 viewWithTag:3];
          [v75 setCenter:{v72, v73}];

          debugView6 = [(CFXFullScreenTextEditViewController *)self debugView];
          v77 = [debugView6 viewWithTag:4];
          [v77 setFrame:{v99, v81, v98, rect}];

          debugView7 = [(CFXFullScreenTextEditViewController *)self debugView];
          v79 = [debugView7 viewWithTag:5];
          [v79 setFrame:{v99 + 24.0, v57, v98 + -48.0, v58}];
        }
      }

      effectEditor = [(CFXFullScreenTextEditViewController *)self effectEditor];
      [effectEditor notifyEffectTransformDidChange];
    }
  }
}

- (void)effectEditorViewDidBeginEditing:(id)editing
{
  v6[1] = *MEMORY[0x277D85DE8];
  workingEffect = [(CFXFullScreenTextEditViewController *)self workingEffect];
  jtEffect = [workingEffect jtEffect];
  v6[0] = jtEffect;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [JFXEffectEditingUtilities disableAnimationForEffects:v5];
}

- (void)effectEditorViewDidEndEditing:(id)editing
{
  if (![(CFXFullScreenTextEditViewController *)self effectWasRemoved])
  {
    workingEffect = [(CFXFullScreenTextEditViewController *)self workingEffect];
    jtEffect = [workingEffect jtEffect];
    v8 = [JFXEffectEditingUtilities textForEffect:jtEffect];

    delegate = [(CFXFullScreenTextEditViewController *)self delegate];
    textEffect = [(CFXFullScreenTextEditViewController *)self textEffect];
    [delegate fullScreenTextEditViewController:self didFinishEditingEffect:textEffect withUpdatedText:v8];

    +[CFXFullScreenTextEditViewController removeFullScreenTextEditor];
  }
}

- (id)effectEditorView:(id)view effectAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v27[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  workingEffect = [(CFXFullScreenTextEditViewController *)self workingEffect];
  jtEffect = [workingEffect jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    workingEffect2 = [(CFXFullScreenTextEditViewController *)self workingEffect];
    jtEffect2 = [workingEffect2 jtEffect];

    [viewCopy bounds];
    v14 = 44.0 / v13;
    v27[0] = jtEffect2;
    v16 = 44.0 / v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [viewCopy bounds];
    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 16);
    v22 = [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v17 atPoint:&v25 relativeToBounds:1 atTime:x adjustForMinimumSize:y normalizedMinimumSize:v18, v19, v20, v21, v14, v16];

    if (v22)
    {
      v23 = [CFXEffect effectWithJTEffect:v22];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)effectEditorView:(id)view isEffectAtPoint:(CGPoint)point effect:(id)effect
{
  y = point.y;
  x = point.x;
  v27[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  effectCopy = effect;
  jtEffect = [effectCopy jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    jtEffect2 = [effectCopy jtEffect];
    [viewCopy bounds];
    v14 = 44.0 / v13;
    v27[0] = jtEffect2;
    v16 = 44.0 / v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [viewCopy bounds];
    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 16);
    v22 = [JFXEffectEditingUtilities hitTestOverlaysAtPosterFrame:v17 atPoint:&v25 relativeToBounds:1 atTime:x adjustForMinimumSize:y normalizedMinimumSize:v18, v19, v20, v21, v14, v16];

    v23 = v22 != 0;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)effectEditorView:(id)view didEditTextForEffect:(id)effect newText:(id)text
{
  textCopy = text;
  jtEffect = [effect jtEffect];
  [JFXEffectEditingUtilities updateEffectText:jtEffect newText:textCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CFXFullScreenTextEditViewController_effectEditorView_didEditTextForEffect_newText___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)effectEditorView:(id)view didRemoveEffect:(id)effect
{
  [(CFXFullScreenTextEditViewController *)self setEffectWasRemoved:1, effect];
  delegate = [(CFXFullScreenTextEditViewController *)self delegate];
  textEffect = [(CFXFullScreenTextEditViewController *)self textEffect];
  [delegate fullScreenTextEditViewController:self didFinishEditingByRemovingEffect:textEffect];

  +[CFXFullScreenTextEditViewController removeFullScreenTextEditor];
}

- (CGRect)effectEditorView:(id)view frameForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  effectCopy = effect;
  jtEffect = [effectCopy jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    jtEffect2 = [effectCopy jtEffect];
    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 16);
    [jtEffect2 imageFrameAtTime:&v25 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{x, y, width, height}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)effectEditorView:(id)view hitAreaBoundingFrameForEffect:(id)effect adjustForMinimumSize:(BOOL)size relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  sizeCopy = size;
  viewCopy = view;
  effectCopy = effect;
  jtEffect = [effectCopy jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    jtEffect2 = [effectCopy jtEffect];
    [viewCopy bounds];
    v31 = *MEMORY[0x277CC08F0];
    v32 = *(MEMORY[0x277CC08F0] + 16);
    [jtEffect2 hitAreaBoundingFrameAtTime:&v31 forcePosterFrame:1 includeDropShadow:1 adjustForMinimumSize:sizeCopy normalizedMinimumSize:1 relativeTo:44.0 / v17 basisOrigin:{44.0 / v18, x, y, width, height}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
  }

  else
  {
    v20 = *MEMORY[0x277CBF3A0];
    v22 = *(MEMORY[0x277CBF3A0] + 8);
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    v26 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (id)effectEditorView:(id)view overlayEffectFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  jtEffect = [effect jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    height = [JFXOverlayEffectFrame frameWithEffect:jtEffect relativeToSize:1 origin:&v10 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (CGPoint)effectEditorView:(id)view removeButtonPositionForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  jtEffect = [effect jtEffect];
  v18 = *MEMORY[0x277CC08F0];
  v19 = *(MEMORY[0x277CC08F0] + 16);
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  v17[0] = *MEMORY[0x277CBF2C0];
  v17[1] = v10;
  v17[2] = *(MEMORY[0x277CBF2C0] + 32);
  [JFXEffectEditingUtilities removeButtonPositionForEffect:jtEffect atTime:&v18 atPosterFrameRelativeToBounds:v17 viewCorrectionTransform:x, y, width, height];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)effectEditorView:(id)view textEditingPropertiesForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  jtEffect = [effect jtEffect];
  v12 = *MEMORY[0x277CC08F0];
  v13 = *(MEMORY[0x277CC08F0] + 16);
  height = [JFXEffectEditingUtilities newTextEditingPropertiesForEffect:jtEffect relativeTo:&v12 atTime:0 withNewText:x, y, width, height];

  return height;
}

- (id)effectEditorView:(id)view textForEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  v5 = [JFXEffectEditingUtilities textForEffect:jtEffect];

  return v5;
}

- (void)effectEditorView:(id)view didBeginEditingTextForEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  [JFXEffectEditingUtilities beginTextEditingForEffect:jtEffect];
}

- (void)effectEditorView:(id)view didEndEditingTextForEffect:(id)effect wasCancelled:(BOOL)cancelled
{
  effectCopy = effect;
  if (![(CFXFullScreenTextEditViewController *)self effectWasRemoved])
  {
    jtEffect = [effectCopy jtEffect];
    [JFXEffectEditingUtilities updateEffectToDefaultTextIfEmpty:jtEffect];

    jtEffect2 = [effectCopy jtEffect];
    [JFXEffectEditingUtilities endTextEditingForEffect:jtEffect2];
  }
}

- (BOOL)effectEditorView:(id)view shouldEditTextForEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  v5 = [JFXEffectEditingUtilities canEditTextForEffect:jtEffect];

  return v5;
}

- (unint64_t)effectEditorView:(id)view maximumTextLengthForEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  v5 = [JFXEffectEditingUtilities maximumTextLengthForEffect:jtEffect];

  return v5;
}

- (CGPoint)effectEditorView:(id)view spacingBetweenCenterPointOfEffect:(id)effect point:(CGPoint)point relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = point.y;
  v11 = point.x;
  jtEffect = [effect jtEffect];
  v19 = *MEMORY[0x277CC08F0];
  v20 = *(MEMORY[0x277CC08F0] + 16);
  [JFXEffectEditingUtilities spacingBetweenCenterPointOfEffect:jtEffect point:&v19 relativeToBounds:v11 atTime:v10, x, y, width, height];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (BOOL)effectEditorView:(id)view isFaceTrackingEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  isCurrentlyTracking = [jtEffect isCurrentlyTracking];

  return isCurrentlyTracking;
}

- (void)effectEditorView:(id)view applyAnimationTransformsToEffect:(id)effect transforms:(id)transforms
{
  transformsCopy = transforms;
  jtEffect = [effect jtEffect];
  [transformsCopy applyToEffect:jtEffect];
}

- (BOOL)effectEditorView:(id)view shouldDisableEditingAnimationForEffect:(id)effect
{
  effectCopy = effect;
  delegate = [(CFXFullScreenTextEditViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CFXFullScreenTextEditViewController *)self delegate];
    v9 = [delegate2 fullScreenTextEditViewController:self shouldDisableEditingAnimationForEffect:effectCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)effectEditorView:(id)view willBeginAnimationBeforeEditingEffect:(id)effect
{
  v6 = [(CFXFullScreenTextEditViewController *)self delegate:view];
  textEffect = [(CFXFullScreenTextEditViewController *)self textEffect];
  [v6 fullScreenTextEditViewController:self willBeginAnimationBeforeEditingEffect:textEffect];
}

- (id)effectEditorView:(id)view beginEditingAnimationFromFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v7 = [(CFXFullScreenTextEditViewController *)self textEffect:view];
  jtEffect = [v7 jtEffect];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *MEMORY[0x277CC08F0];
    v12 = *(MEMORY[0x277CC08F0] + 16);
    height = [JFXOverlayEffectFrame frameWithEffect:jtEffect relativeToSize:1 origin:&v11 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (id)effectEditorView:(id)view beginEditingAnimationToFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  jtEffect = [effect jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    height = [JFXOverlayEffectFrame frameWithEffect:jtEffect relativeToSize:1 origin:&v10 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (void)effectEditorView:(id)view didStartBeginEditingAnimationForEffect:(id)effect completion:(id)completion
{
  completionCopy = completion;
  [(CFXFullScreenTextEditViewController *)self setIsRunningAnimation:1];
  delegate = [(CFXFullScreenTextEditViewController *)self delegate];
  textEffect = [(CFXFullScreenTextEditViewController *)self textEffect];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __106__CFXFullScreenTextEditViewController_effectEditorView_didStartBeginEditingAnimationForEffect_completion___block_invoke;
  v10[3] = &unk_278D7ACB0;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [delegate fullScreenTextEditViewController:self didBeginAnimationBeforeEditingEffect:textEffect completion:v10];
}

uint64_t __106__CFXFullScreenTextEditViewController_effectEditorView_didStartBeginEditingAnimationForEffect_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 CFX_animateWithDuration:1 animatingIn:0 completion:0.4];
}

- (double)effectEditorView:(id)view durationForEndEditingAnimationForEffect:(id)effect
{
  v4 = [(CFXFullScreenTextEditViewController *)self effectWasRemoved:view];
  result = 0.4;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

- (void)effectEditorView:(id)view willBeginAnimationAfterEditingEffect:(id)effect
{
  jtEffect = [effect jtEffect];
  v8 = [JFXEffectEditingUtilities textForEffect:jtEffect];

  delegate = [(CFXFullScreenTextEditViewController *)self delegate];
  textEffect = [(CFXFullScreenTextEditViewController *)self textEffect];
  [delegate fullScreenTextEditViewController:self willBeginAnimationAfterEditingEffect:textEffect updatedText:v8];
}

- (id)effectEditorView:(id)view endEditingAnimationFromFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  jtEffect = [effect jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    height = [JFXOverlayEffectFrame frameWithEffect:jtEffect relativeToSize:1 origin:&v10 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (id)effectEditorView:(id)view endEditingAnimationToFrameForEffect:(id)effect relativeToBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v7 = [(CFXFullScreenTextEditViewController *)self textEffect:view];
  jtEffect = [v7 jtEffect];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *MEMORY[0x277CC08F0];
    v12 = *(MEMORY[0x277CC08F0] + 16);
    height = [JFXOverlayEffectFrame frameWithEffect:jtEffect relativeToSize:1 origin:&v11 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (void)effectEditorView:(id)view didStartEndEditingAnimationForEffect:(id)effect
{
  [(CFXFullScreenTextEditViewController *)self setIsRunningAnimation:1, effect];

  [(CFXFullScreenTextEditViewController *)self CFX_animateWithDuration:0 animatingIn:0 completion:0.4];
}

- (void)effectEditorView:(id)view didCompleteEndEditingAnimationForEffect:(id)effect completion:(id)completion
{
  completionCopy = completion;
  [(CFXFullScreenTextEditViewController *)self setIsRunningAnimation:0];
  delegate = [(CFXFullScreenTextEditViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CFXFullScreenTextEditViewController *)self delegate];
    textEffect = [(CFXFullScreenTextEditViewController *)self textEffect];
    [delegate2 fullScreenTextEditViewController:self didFinishAnimationAfterEditingEffect:textEffect completion:completionCopy];
  }

  else
  {
    completionCopy[2]();
  }
}

- (id)effectEditorView:(id)view calculateAnimatedFaceTrackingTransformWithCurrentFaceTrackingDataFromTrackingType:(int64_t)type interpolatedWithFaceTrackingTransform:(id)transform toTrackingType:(int64_t)trackingType atAnimationProgress:(float)progress
{
  transformCopy = transform;
  v12 = +[JFXVideoCameraController sharedInstance];
  mostRecentARMetadata = [v12 mostRecentARMetadata];

  faceAnchor = [mostRecentARMetadata faceAnchor];

  if (faceAnchor)
  {
    delegate = [(CFXFullScreenTextEditViewController *)self delegate];
    v16 = [delegate faceTrackingInterfaceOrientationForfullScreenTextEditViewController:self];

    v17 = [JFXFaceTrackingTransformCalculator alloc];
    v18 = +[CFXMediaSettings sharedInstance];
    [v18 renderSize];
    v19 = [(JFXFaceTrackingTransformCalculator *)v17 initWithARMetaData:mostRecentARMetadata outputSize:v16 playableInterfaceOrientation:?];

    calculateFaceTrackingTransform = [(JFXFaceTrackingTransformCalculator *)v19 calculateFaceTrackingTransform];
    [transformCopy cameraTransform];
    v56 = v22;
    v57 = v21;
    v54 = v24;
    v55 = v23;
    [calculateFaceTrackingTransform cameraTransform];
    *&v44 = progress;
    [JFXFaceTrackingTransformCalculator interpolateFrom:v57 to:v56 fraction:v55, v54, v25, v26, v27, v28, v44];
    [transformCopy transformForTrackingType:type];
    v50 = v30;
    v52 = v29;
    v46 = v32;
    v48 = v31;
    [calculateFaceTrackingTransform transformForTrackingType:trackingType];
    *&v45 = progress;
    [JFXFaceTrackingTransformCalculator interpolateFrom:v52 to:v50 fraction:v48, v46, v33, v34, v35, v36, v45];
    v51 = v38;
    v53 = v37;
    v47 = v40;
    v49 = v39;
    v41 = [JFXFaceTrackedEffectTransform alloc];
    [transformCopy cameraProjection];
    v42 = [(JFXFaceTrackedEffectTransform *)v41 initWithCameraProjection:v53 cameraTransform:v51 onFaceTransform:v49 billboardTransform:v47, v53, v51, v49, v47];
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

+ (id)CFX_fadeTimingParameters
{
  if (CFX_fadeTimingParameters_onceToken != -1)
  {
    +[CFXFullScreenTextEditViewController CFX_fadeTimingParameters];
  }

  v3 = CFX_fadeTimingParameters_sFadeTimingParameters;

  return v3;
}

uint64_t __63__CFXFullScreenTextEditViewController_CFX_fadeTimingParameters__block_invoke()
{
  CFX_fadeTimingParameters_sFadeTimingParameters = [objc_alloc(MEMORY[0x277D75A60]) initWithDampingRatio:0.968245837];

  return MEMORY[0x2821F96F8]();
}

- (void)CFX_animateWithDuration:(double)duration animatingIn:(BOOL)in completion:(id)completion
{
  completionCopy = completion;
  cFX_fadeTimingParameters = [objc_opt_class() CFX_fadeTimingParameters];
  v10 = [objc_alloc(MEMORY[0x277D75D40]) initWithDuration:cFX_fadeTimingParameters timingParameters:duration];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__CFXFullScreenTextEditViewController_CFX_animateWithDuration_animatingIn_completion___block_invoke;
  v13[3] = &unk_278D79E38;
  v13[4] = self;
  inCopy = in;
  [v10 addAnimations:v13];
  if (completionCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__CFXFullScreenTextEditViewController_CFX_animateWithDuration_animatingIn_completion___block_invoke_2;
    v11[3] = &unk_278D7A7C0;
    v12 = completionCopy;
    [v10 addCompletion:v11];
  }

  [v10 setUserInteractionEnabled:0];
  [v10 startAnimation];
}

void __86__CFXFullScreenTextEditViewController_CFX_animateWithDuration_animatingIn_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) dimmingView];
  [v2 setAlpha:v1];
}

- (CFXFullScreenTextEditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)effectEditorFrameRelativeToScreen
{
  x = self->_effectEditorFrameRelativeToScreen.origin.x;
  y = self->_effectEditorFrameRelativeToScreen.origin.y;
  width = self->_effectEditorFrameRelativeToScreen.size.width;
  height = self->_effectEditorFrameRelativeToScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end