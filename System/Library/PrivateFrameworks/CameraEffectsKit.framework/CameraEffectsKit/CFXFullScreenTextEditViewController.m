@interface CFXFullScreenTextEditViewController
+ (BOOL)displayFullScreenTextEditorForEffect:(id)a3 inViewController:(id)a4 delegate:(id)a5 cameraViewWindowFrame:(CGRect)a6 insertingEffect:(BOOL)a7;
+ (id)CFX_fadeTimingParameters;
+ (void)notifyCameraViewWindowFrameChanged:(CGRect)a3;
+ (void)removeFullScreenTextEditor;
+ (void)resign;
- (BOOL)effectEditorView:(id)a3 isEffectAtPoint:(CGPoint)a4 effect:(id)a5;
- (BOOL)effectEditorView:(id)a3 isFaceTrackingEffect:(id)a4;
- (BOOL)effectEditorView:(id)a3 shouldDisableEditingAnimationForEffect:(id)a4;
- (BOOL)effectEditorView:(id)a3 shouldEditTextForEffect:(id)a4;
- (CFXFullScreenTextEditViewController)initWithTextEffect:(id)a3 CGSize:(CGRect)a4 insertingEffect:(BOOL)a5 delegate:(id)a6;
- (CFXFullScreenTextEditViewControllerDelegate)delegate;
- (CGPoint)effectEditorView:(id)a3 removeButtonPositionForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (CGPoint)effectEditorView:(id)a3 spacingBetweenCenterPointOfEffect:(id)a4 point:(CGPoint)a5 relativeToBounds:(CGRect)a6;
- (CGRect)effectEditorFrameRelativeToScreen;
- (CGRect)effectEditorView:(id)a3 frameForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (CGRect)effectEditorView:(id)a3 hitAreaBoundingFrameForEffect:(id)a4 adjustForMinimumSize:(BOOL)a5 relativeToBounds:(CGRect)a6;
- (double)effectEditorView:(id)a3 durationForEndEditingAnimationForEffect:(id)a4;
- (id)effectEditorView:(id)a3 beginEditingAnimationFromFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (id)effectEditorView:(id)a3 beginEditingAnimationToFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (id)effectEditorView:(id)a3 calculateAnimatedFaceTrackingTransformWithCurrentFaceTrackingDataFromTrackingType:(int64_t)a4 interpolatedWithFaceTrackingTransform:(id)a5 toTrackingType:(int64_t)a6 atAnimationProgress:(float)a7;
- (id)effectEditorView:(id)a3 effectAtPoint:(CGPoint)a4;
- (id)effectEditorView:(id)a3 endEditingAnimationFromFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (id)effectEditorView:(id)a3 endEditingAnimationToFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (id)effectEditorView:(id)a3 overlayEffectFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (id)effectEditorView:(id)a3 textEditingPropertiesForEffect:(id)a4 relativeToBounds:(CGRect)a5;
- (id)effectEditorView:(id)a3 textForEffect:(id)a4;
- (unint64_t)effectEditorView:(id)a3 maximumTextLengthForEffect:(id)a4;
- (void)CFX_animateWithDuration:(double)a3 animatingIn:(BOOL)a4 completion:(id)a5;
- (void)configureWorkingEffect;
- (void)dealloc;
- (void)didTappedEmptyDimmedArea:(id)a3;
- (void)effectEditorView:(id)a3 applyAnimationTransformsToEffect:(id)a4 transforms:(id)a5;
- (void)effectEditorView:(id)a3 didBeginEditingTextForEffect:(id)a4;
- (void)effectEditorView:(id)a3 didCompleteEndEditingAnimationForEffect:(id)a4 completion:(id)a5;
- (void)effectEditorView:(id)a3 didEditTextForEffect:(id)a4 newText:(id)a5;
- (void)effectEditorView:(id)a3 didEndEditingTextForEffect:(id)a4 wasCancelled:(BOOL)a5;
- (void)effectEditorView:(id)a3 didRemoveEffect:(id)a4;
- (void)effectEditorView:(id)a3 didStartBeginEditingAnimationForEffect:(id)a4 completion:(id)a5;
- (void)effectEditorView:(id)a3 didStartEndEditingAnimationForEffect:(id)a4;
- (void)effectEditorView:(id)a3 willBeginAnimationAfterEditingEffect:(id)a4;
- (void)effectEditorView:(id)a3 willBeginAnimationBeforeEditingEffect:(id)a4;
- (void)effectEditorViewDidBeginEditing:(id)a3;
- (void)effectEditorViewDidEndEditing:(id)a3;
- (void)keyboardDidHide:(id)a3;
- (void)scaleTextToFitTextEditingBounds:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CFXFullScreenTextEditViewController

+ (BOOL)displayFullScreenTextEditorForEffect:(id)a3 inViewController:(id)a4 delegate:(id)a5 cameraViewWindowFrame:(CGRect)a6 insertingEffect:(BOOL)a7
{
  v7 = s_CurrentFullScreenTextEditorController;
  if (!s_CurrentFullScreenTextEditorController)
  {
    v8 = a7;
    height = a6.size.height;
    width = a6.size.width;
    y = a6.origin.y;
    x = a6.origin.x;
    v15 = a5;
    v16 = a4;
    v17 = a3;
    v18 = [[CFXFullScreenTextEditViewController alloc] initWithTextEffect:v17 CGSize:v8 insertingEffect:v15 delegate:x, y, width, height];

    v19 = s_CurrentFullScreenTextEditorController;
    s_CurrentFullScreenTextEditorController = v18;

    [v16 jfxAddChildViewController:s_CurrentFullScreenTextEditorController constrainRelativeToSafeAreas:0];
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

+ (void)notifyCameraViewWindowFrameChanged:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = s_CurrentFullScreenTextEditorController;
  if (v19)
  {
    [v19 setEffectEditorFrameRelativeToScreen:{x, y, width, height}];
    v7 = [v19 view];
    v8 = [v7 window];

    if (v8)
    {
      v9 = [v19 view];
      [v19 effectEditorFrameRelativeToScreen];
      [v9 convertRect:0 fromView:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v19 effectEditor];
      [v18 setFrame:{v11, v13, v15, v17}];
    }
  }
}

+ (void)resign
{
  if (s_CurrentFullScreenTextEditorController)
  {
    v2 = [s_CurrentFullScreenTextEditorController effectEditor];
    [v2 endEditingAnimated:1 withCompletionBlock:0];
  }
}

- (CFXFullScreenTextEditViewController)initWithTextEffect:(id)a3 CGSize:(CGRect)a4 insertingEffect:(BOOL)a5 delegate:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v15 = a6;
  v33.receiver = self;
  v33.super_class = CFXFullScreenTextEditViewController;
  v16 = [(CFXFullScreenTextEditViewController *)&v33 initWithNibName:0 bundle:0];
  if (v16)
  {
    v17 = [v14 jtEffect];
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

    objc_storeStrong(&v16->_textEffect, a3);
    v19 = [(CFXFullScreenTextEditViewController *)v16 textEffect];
    v20 = [v19 jtEffect];
    v21 = [v20 copy];

    v22 = [CFXEffect effectWithJTEffect:v21];
    workingEffect = v16->_workingEffect;
    v16->_workingEffect = v22;

    objc_storeWeak(&v16->_delegate, v15);
    v16->_insertingEffect = a5;
    v16->_effectEditorFrameRelativeToScreen.origin.x = x;
    v16->_effectEditorFrameRelativeToScreen.origin.y = y;
    v16->_effectEditorFrameRelativeToScreen.size.width = width;
    v16->_effectEditorFrameRelativeToScreen.size.height = height;
  }

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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

  v4 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CFXFullScreenTextEditViewController *)self view];
  v6 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  [v5 addSubview:v6];

  v72 = MEMORY[0x277CCAAD0];
  v81 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  v79 = [v81 topAnchor];
  v80 = [(CFXFullScreenTextEditViewController *)self view];
  v78 = [v80 topAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v83[0] = v77;
  v76 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  v74 = [v76 bottomAnchor];
  v75 = [(CFXFullScreenTextEditViewController *)self view];
  v73 = [v75 bottomAnchor];
  v71 = [v74 constraintEqualToAnchor:v73];
  v83[1] = v71;
  v70 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  v69 = [v70 leadingAnchor];
  v7 = [(CFXFullScreenTextEditViewController *)self view];
  v8 = [v7 leadingAnchor];
  v9 = [v69 constraintEqualToAnchor:v8];
  v83[2] = v9;
  v10 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  v11 = [v10 trailingAnchor];
  v12 = [(CFXFullScreenTextEditViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v83[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
  [v72 activateConstraints:v15];

  v16 = [MEMORY[0x277D75348] blackColor];
  v17 = [v16 colorWithAlphaComponent:0.5];
  v18 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  [v18 setBackgroundColor:v17];

  v19 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTappedEmptyDimmedArea_];
  v20 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  [v20 addGestureRecognizer:v19];

  v21 = [(CFXFullScreenTextEditViewController *)self dimmingView];
  [v21 setAlpha:0.0];

  v22 = JFX_getDrawOverlayBoundsOptionsDictionary();
  v23 = [JFXOverlayEffectDebugViewOptions debugViewOptionsWithDictionary:v22];
  [(CFXFullScreenTextEditViewController *)self setDebugOptions:v23];

  if (JFX_isDrawOverlayBoundsEnabled())
  {
    v24 = [(CFXFullScreenTextEditViewController *)self debugOptions];
    v25 = [v24 showTextBoundingBoxes];

    if (v25)
    {
      v26 = objc_alloc(MEMORY[0x277D75D18]);
      v27 = *MEMORY[0x277CBF3A0];
      v28 = *(MEMORY[0x277CBF3A0] + 8);
      v29 = *(MEMORY[0x277CBF3A0] + 16);
      v30 = *(MEMORY[0x277CBF3A0] + 24);
      v31 = [v26 initWithFrame:{*MEMORY[0x277CBF3A0], v28, v29, v30}];
      [(CFXFullScreenTextEditViewController *)self setDebugView:v31];

      v32 = [(CFXFullScreenTextEditViewController *)self debugView];
      v33 = [v32 layer];
      [v33 setBorderWidth:2.0];

      v34 = [MEMORY[0x277D75348] greenColor];
      v35 = [v34 CGColor];
      v36 = [(CFXFullScreenTextEditViewController *)self debugView];
      v37 = [v36 layer];
      [v37 setBorderColor:v35];

      v38 = [(CFXFullScreenTextEditViewController *)self view];
      v39 = [(CFXFullScreenTextEditViewController *)self debugView];
      [v38 addSubview:v39];

      v40 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v27, v28, v29, v30}];
      [v40 setTag:1];
      v41 = [v40 layer];
      [v41 setBorderWidth:4.0];

      v42 = [MEMORY[0x277D75348] yellowColor];
      v43 = [v42 CGColor];
      v44 = [v40 layer];
      [v44 setBorderColor:v43];

      v45 = [(CFXFullScreenTextEditViewController *)self debugView];
      [v45 addSubview:v40];

      v46 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v27, v28, v29, v30}];
      [v46 setTag:2];
      v47 = [v46 layer];
      [v47 setBorderWidth:2.0];

      v48 = [MEMORY[0x277D75348] orangeColor];
      v49 = [v48 CGColor];
      v50 = [v46 layer];
      [v50 setBorderColor:v49];

      v51 = [(CFXFullScreenTextEditViewController *)self debugView];
      [v51 addSubview:v46];

      v52 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 4.0, 4.0}];
      [v52 setTag:3];
      v53 = [MEMORY[0x277D75348] magentaColor];
      v54 = [v53 CGColor];
      v55 = [v52 layer];
      [v55 setBackgroundColor:v54];

      v56 = [(CFXFullScreenTextEditViewController *)self debugView];
      [v56 addSubview:v52];

      v57 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v27, v28, v29, v30}];
      [v57 setTag:4];
      v58 = [v57 layer];
      [v58 setBorderWidth:2.0];

      v59 = [MEMORY[0x277D75348] redColor];
      v60 = [v59 CGColor];
      v61 = [v57 layer];
      [v61 setBorderColor:v60];

      v62 = [(CFXFullScreenTextEditViewController *)self debugView];
      [v62 addSubview:v57];

      v63 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v27, v28, v29, v30}];
      [v63 setTag:5];
      v64 = [v63 layer];
      [v64 setBorderWidth:4.0];

      v65 = [MEMORY[0x277D75348] blackColor];
      v66 = [v65 CGColor];
      v67 = [v63 layer];
      [v67 setBorderColor:v66];

      v68 = [(CFXFullScreenTextEditViewController *)self debugView];
      [v68 addSubview:v63];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v28.receiver = self;
  v28.super_class = CFXFullScreenTextEditViewController;
  [(CFXFullScreenTextEditViewController *)&v28 viewDidAppear:a3];
  [(CFXFullScreenTextEditViewController *)self configureWorkingEffect];
  v4 = [[CFXEffectEditorView alloc] initWithMode:2 delegate:self];
  [(CFXFullScreenTextEditViewController *)self setEffectEditor:v4];

  v5 = [(CFXFullScreenTextEditViewController *)self view];
  v6 = [(CFXFullScreenTextEditViewController *)self effectEditor];
  [v5 addSubview:v6];

  v7 = [(CFXFullScreenTextEditViewController *)self view];
  [(CFXFullScreenTextEditViewController *)self effectEditorFrameRelativeToScreen];
  [v7 convertRect:0 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(CFXFullScreenTextEditViewController *)self effectEditor];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = [(CFXFullScreenTextEditViewController *)self insertingEffect];
  v18 = [(CFXFullScreenTextEditViewController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(CFXFullScreenTextEditViewController *)self delegate];
    v21 = [(CFXFullScreenTextEditViewController *)self workingEffect];
    v22 = [v20 fullScreenTextEditViewController:self shouldDisableEditingAnimationForEffect:v21];

    v17 |= v22;
  }

  objc_initWeak(&location, self);
  v23 = [(CFXFullScreenTextEditViewController *)self effectEditor];
  v24 = [(CFXFullScreenTextEditViewController *)self workingEffect];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__CFXFullScreenTextEditViewController_viewDidAppear___block_invoke;
  v25[3] = &unk_278D7B3F0;
  objc_copyWeak(&v26, &location);
  v25[4] = self;
  [v23 beginEditingEffect:v24 animated:(v17 ^ 1) & 1 withCompletionBlock:v25];

  if (v17)
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

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CFXFullScreenTextEditViewController;
  [(CFXFullScreenTextEditViewController *)&v6 viewWillDisappear:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];

  v5 = [(CFXFullScreenTextEditViewController *)self effectEditor];
  [v5 endEditingAnimated:0 withCompletionBlock:0];
}

- (void)keyboardDidHide:(id)a3
{
  v3 = [(CFXFullScreenTextEditViewController *)self effectEditor];
  [v3 endEditingAnimated:1 withCompletionBlock:0];
}

- (void)didTappedEmptyDimmedArea:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(CFXFullScreenTextEditViewController *)self effectEditor];
    [v4 endEditingAnimated:1 withCompletionBlock:0];
  }
}

- (void)configureWorkingEffect
{
  v3 = [(CFXFullScreenTextEditViewController *)self workingEffect];
  v4 = [v3 jtEffect];

  [v4 setHidden:0];
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
  [v4 setTopLevelTransform:&v31];
  v9 = [(CFXFullScreenTextEditViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10 & 1) != 0 && (-[CFXFullScreenTextEditViewController delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), -[CFXFullScreenTextEditViewController workingEffect](self, "workingEffect"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v11 fullScreenTextEditViewController:self shouldDisableEditingAnimationForEffect:v12], v12, v11, (v13))
  {
    v14 = 0;
  }

  else
  {
    v15 = [v4 trackingProps];
    v16 = [v15 trackingType];

    if (v16 != 1)
    {
      goto LABEL_7;
    }

    v14 = 2;
  }

  v17 = [v4 trackingProps];
  [v17 setTrackingType:v14];

LABEL_7:
  if ([v4 isTextFlipped])
  {
    CGAffineTransformMakeRotation(&v31, 3.14159265);
    v18 = [(CFXFullScreenTextEditViewController *)self view];
    [v18 bounds];
    v29 = *MEMORY[0x277CC08F0];
    v30 = *(MEMORY[0x277CC08F0] + 16);
    [v4 addTransform:&v31 withComponentTime:&v29 relativeTo:1 basisOrigin:?];
  }

  v19 = [MEMORY[0x277D75418] currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 1)
  {
    [v4 renderSize];
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

    [v4 setRenderSize:{v27, v28}];
  }

  [(CFXFullScreenTextEditViewController *)self scaleTextToFitTextEditingBounds:1];
}

- (void)scaleTextToFitTextEditingBounds:(BOOL)a3
{
  if (![(CFXFullScreenTextEditViewController *)self isRunningAnimation])
  {
    v5 = [(CFXFullScreenTextEditViewController *)self view];
    [(CFXFullScreenTextEditViewController *)self effectEditorFrameRelativeToScreen];
    [v5 convertRect:0 fromView:?];
    v7 = v6;
    v86 = v8;
    v10 = v9;
    v12 = v11;

    v13 = [(CFXFullScreenTextEditViewController *)self view];
    [v13 bounds];
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
    v24 = [(CFXFullScreenTextEditViewController *)self workingEffect];
    v25 = [v24 jtEffect];

    v26 = [v25 isEmoji];
    v27 = MEMORY[0x277CC08F0];
    if (a3 || (*&v102.a = *MEMORY[0x277CC08F0], v102.c = *(MEMORY[0x277CC08F0] + 16), [v25 imageFrameAtTime:&v102 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{0.0, 0.0, v10, v12}], v124.origin.x = v28 + -24.0, v124.origin.y = v29 + -34.0, v124.size.width = v30 + 48.0, v124.size.height = v31 + 58.0, v107.origin.x = x, v107.origin.y = y, v107.size.width = width, v107.size.height = height, !CGRectContainsRect(v107, v124)))
    {
      v94 = y;
      v85 = v7;
      if (v26)
      {
        v32 = 0.32;
      }

      else
      {
        v33 = [v25 strings];
        v34 = [v33 firstObject];
        if ([v34 length] >= 4)
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
      [v25 applyScaleToFitFrame:&v102 withComponentTime:0.0 relativeRect:{0.0, v83, v83, 0.0, 0.0, v10, v12}];
      *&v102.a = v96;
      v102.c = c;
      [v25 imageFrameAtTime:&v102 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{0.0, 0.0, v10, v12}];
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
      [v25 addTransform:&v102 withComponentTime:&v100 relativeTo:1 basisOrigin:{0.0, 0.0, v10, v91}];
      if (JFX_isDrawOverlayBoundsEnabled())
      {
        v61 = [(CFXFullScreenTextEditViewController *)self debugOptions];
        v62 = [v61 showTextBoundingBoxes];

        if (v62)
        {
          v63 = [(CFXFullScreenTextEditViewController *)self debugView];
          [v63 setFrame:{v85, v86, v10, v91}];

          v64 = [(CFXFullScreenTextEditViewController *)self debugView];
          v65 = [v64 viewWithTag:1];
          [v65 setFrame:{v84, v94, v82, height}];

          v66 = [(CFXFullScreenTextEditViewController *)self debugView];
          v67 = [v66 viewWithTag:2];
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
          v70 = [(CFXFullScreenTextEditViewController *)self debugView];
          v71 = [v70 viewWithTag:2];
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
          v74 = [(CFXFullScreenTextEditViewController *)self debugView];
          v75 = [v74 viewWithTag:3];
          [v75 setCenter:{v72, v73}];

          v76 = [(CFXFullScreenTextEditViewController *)self debugView];
          v77 = [v76 viewWithTag:4];
          [v77 setFrame:{v99, v81, v98, rect}];

          v78 = [(CFXFullScreenTextEditViewController *)self debugView];
          v79 = [v78 viewWithTag:5];
          [v79 setFrame:{v99 + 24.0, v57, v98 + -48.0, v58}];
        }
      }

      v80 = [(CFXFullScreenTextEditViewController *)self effectEditor];
      [v80 notifyEffectTransformDidChange];
    }
  }
}

- (void)effectEditorViewDidBeginEditing:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [(CFXFullScreenTextEditViewController *)self workingEffect];
  v4 = [v3 jtEffect];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [JFXEffectEditingUtilities disableAnimationForEffects:v5];
}

- (void)effectEditorViewDidEndEditing:(id)a3
{
  if (![(CFXFullScreenTextEditViewController *)self effectWasRemoved])
  {
    v4 = [(CFXFullScreenTextEditViewController *)self workingEffect];
    v5 = [v4 jtEffect];
    v8 = [JFXEffectEditingUtilities textForEffect:v5];

    v6 = [(CFXFullScreenTextEditViewController *)self delegate];
    v7 = [(CFXFullScreenTextEditViewController *)self textEffect];
    [v6 fullScreenTextEditViewController:self didFinishEditingEffect:v7 withUpdatedText:v8];

    +[CFXFullScreenTextEditViewController removeFullScreenTextEditor];
  }
}

- (id)effectEditorView:(id)a3 effectAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(CFXFullScreenTextEditViewController *)self workingEffect];
  v9 = [v8 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(CFXFullScreenTextEditViewController *)self workingEffect];
    v12 = [v11 jtEffect];

    [v7 bounds];
    v14 = 44.0 / v13;
    v27[0] = v12;
    v16 = 44.0 / v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v7 bounds];
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

- (BOOL)effectEditorView:(id)a3 isEffectAtPoint:(CGPoint)a4 effect:(id)a5
{
  y = a4.y;
  x = a4.x;
  v27[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v9 jtEffect];
    [v8 bounds];
    v14 = 44.0 / v13;
    v27[0] = v12;
    v16 = 44.0 / v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v8 bounds];
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

- (void)effectEditorView:(id)a3 didEditTextForEffect:(id)a4 newText:(id)a5
{
  v7 = a5;
  v8 = [a4 jtEffect];
  [JFXEffectEditingUtilities updateEffectText:v8 newText:v7];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CFXFullScreenTextEditViewController_effectEditorView_didEditTextForEffect_newText___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)effectEditorView:(id)a3 didRemoveEffect:(id)a4
{
  [(CFXFullScreenTextEditViewController *)self setEffectWasRemoved:1, a4];
  v5 = [(CFXFullScreenTextEditViewController *)self delegate];
  v6 = [(CFXFullScreenTextEditViewController *)self textEffect];
  [v5 fullScreenTextEditViewController:self didFinishEditingByRemovingEffect:v6];

  +[CFXFullScreenTextEditViewController removeFullScreenTextEditor];
}

- (CGRect)effectEditorView:(id)a3 frameForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4;
  v10 = [v9 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v9 jtEffect];
    v25 = *MEMORY[0x277CC08F0];
    v26 = *(MEMORY[0x277CC08F0] + 16);
    [v12 imageFrameAtTime:&v25 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{x, y, width, height}];
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

- (CGRect)effectEditorView:(id)a3 hitAreaBoundingFrameForEffect:(id)a4 adjustForMinimumSize:(BOOL)a5 relativeToBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5;
  v12 = a3;
  v13 = a4;
  v14 = [v13 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v16 = [v13 jtEffect];
    [v12 bounds];
    v31 = *MEMORY[0x277CC08F0];
    v32 = *(MEMORY[0x277CC08F0] + 16);
    [v16 hitAreaBoundingFrameAtTime:&v31 forcePosterFrame:1 includeDropShadow:1 adjustForMinimumSize:v10 normalizedMinimumSize:1 relativeTo:44.0 / v17 basisOrigin:{44.0 / v18, x, y, width, height}];
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

- (id)effectEditorView:(id)a3 overlayEffectFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v7 = [a4 jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    v8 = [JFXOverlayEffectFrame frameWithEffect:v7 relativeToSize:1 origin:&v10 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGPoint)effectEditorView:(id)a3 removeButtonPositionForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = [a4 jtEffect];
  v18 = *MEMORY[0x277CC08F0];
  v19 = *(MEMORY[0x277CC08F0] + 16);
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  v17[0] = *MEMORY[0x277CBF2C0];
  v17[1] = v10;
  v17[2] = *(MEMORY[0x277CBF2C0] + 32);
  [JFXEffectEditingUtilities removeButtonPositionForEffect:v9 atTime:&v18 atPosterFrameRelativeToBounds:v17 viewCorrectionTransform:x, y, width, height];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)effectEditorView:(id)a3 textEditingPropertiesForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = [a4 jtEffect];
  v12 = *MEMORY[0x277CC08F0];
  v13 = *(MEMORY[0x277CC08F0] + 16);
  v10 = [JFXEffectEditingUtilities newTextEditingPropertiesForEffect:v9 relativeTo:&v12 atTime:0 withNewText:x, y, width, height];

  return v10;
}

- (id)effectEditorView:(id)a3 textForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [JFXEffectEditingUtilities textForEffect:v4];

  return v5;
}

- (void)effectEditorView:(id)a3 didBeginEditingTextForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  [JFXEffectEditingUtilities beginTextEditingForEffect:v4];
}

- (void)effectEditorView:(id)a3 didEndEditingTextForEffect:(id)a4 wasCancelled:(BOOL)a5
{
  v8 = a4;
  if (![(CFXFullScreenTextEditViewController *)self effectWasRemoved])
  {
    v6 = [v8 jtEffect];
    [JFXEffectEditingUtilities updateEffectToDefaultTextIfEmpty:v6];

    v7 = [v8 jtEffect];
    [JFXEffectEditingUtilities endTextEditingForEffect:v7];
  }
}

- (BOOL)effectEditorView:(id)a3 shouldEditTextForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [JFXEffectEditingUtilities canEditTextForEffect:v4];

  return v5;
}

- (unint64_t)effectEditorView:(id)a3 maximumTextLengthForEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [JFXEffectEditingUtilities maximumTextLengthForEffect:v4];

  return v5;
}

- (CGPoint)effectEditorView:(id)a3 spacingBetweenCenterPointOfEffect:(id)a4 point:(CGPoint)a5 relativeToBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5.y;
  v11 = a5.x;
  v12 = [a4 jtEffect];
  v19 = *MEMORY[0x277CC08F0];
  v20 = *(MEMORY[0x277CC08F0] + 16);
  [JFXEffectEditingUtilities spacingBetweenCenterPointOfEffect:v12 point:&v19 relativeToBounds:v11 atTime:v10, x, y, width, height];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (BOOL)effectEditorView:(id)a3 isFaceTrackingEffect:(id)a4
{
  v4 = [a4 jtEffect];
  v5 = [v4 isCurrentlyTracking];

  return v5;
}

- (void)effectEditorView:(id)a3 applyAnimationTransformsToEffect:(id)a4 transforms:(id)a5
{
  v6 = a5;
  v7 = [a4 jtEffect];
  [v6 applyToEffect:v7];
}

- (BOOL)effectEditorView:(id)a3 shouldDisableEditingAnimationForEffect:(id)a4
{
  v5 = a4;
  v6 = [(CFXFullScreenTextEditViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CFXFullScreenTextEditViewController *)self delegate];
    v9 = [v8 fullScreenTextEditViewController:self shouldDisableEditingAnimationForEffect:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)effectEditorView:(id)a3 willBeginAnimationBeforeEditingEffect:(id)a4
{
  v6 = [(CFXFullScreenTextEditViewController *)self delegate:a3];
  v5 = [(CFXFullScreenTextEditViewController *)self textEffect];
  [v6 fullScreenTextEditViewController:self willBeginAnimationBeforeEditingEffect:v5];
}

- (id)effectEditorView:(id)a3 beginEditingAnimationFromFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v7 = [(CFXFullScreenTextEditViewController *)self textEffect:a3];
  v8 = [v7 jtEffect];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *MEMORY[0x277CC08F0];
    v12 = *(MEMORY[0x277CC08F0] + 16);
    v9 = [JFXOverlayEffectFrame frameWithEffect:v8 relativeToSize:1 origin:&v11 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)effectEditorView:(id)a3 beginEditingAnimationToFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v7 = [a4 jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    v8 = [JFXOverlayEffectFrame frameWithEffect:v7 relativeToSize:1 origin:&v10 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)effectEditorView:(id)a3 didStartBeginEditingAnimationForEffect:(id)a4 completion:(id)a5
{
  v6 = a5;
  [(CFXFullScreenTextEditViewController *)self setIsRunningAnimation:1];
  v7 = [(CFXFullScreenTextEditViewController *)self delegate];
  v8 = [(CFXFullScreenTextEditViewController *)self textEffect];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __106__CFXFullScreenTextEditViewController_effectEditorView_didStartBeginEditingAnimationForEffect_completion___block_invoke;
  v10[3] = &unk_278D7ACB0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 fullScreenTextEditViewController:self didBeginAnimationBeforeEditingEffect:v8 completion:v10];
}

uint64_t __106__CFXFullScreenTextEditViewController_effectEditorView_didStartBeginEditingAnimationForEffect_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 CFX_animateWithDuration:1 animatingIn:0 completion:0.4];
}

- (double)effectEditorView:(id)a3 durationForEndEditingAnimationForEffect:(id)a4
{
  v4 = [(CFXFullScreenTextEditViewController *)self effectWasRemoved:a3];
  result = 0.4;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

- (void)effectEditorView:(id)a3 willBeginAnimationAfterEditingEffect:(id)a4
{
  v5 = [a4 jtEffect];
  v8 = [JFXEffectEditingUtilities textForEffect:v5];

  v6 = [(CFXFullScreenTextEditViewController *)self delegate];
  v7 = [(CFXFullScreenTextEditViewController *)self textEffect];
  [v6 fullScreenTextEditViewController:self willBeginAnimationAfterEditingEffect:v7 updatedText:v8];
}

- (id)effectEditorView:(id)a3 endEditingAnimationFromFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v7 = [a4 jtEffect];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    v8 = [JFXOverlayEffectFrame frameWithEffect:v7 relativeToSize:1 origin:&v10 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)effectEditorView:(id)a3 endEditingAnimationToFrameForEffect:(id)a4 relativeToBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v7 = [(CFXFullScreenTextEditViewController *)self textEffect:a3];
  v8 = [v7 jtEffect];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *MEMORY[0x277CC08F0];
    v12 = *(MEMORY[0x277CC08F0] + 16);
    v9 = [JFXOverlayEffectFrame frameWithEffect:v8 relativeToSize:1 origin:&v11 time:1 forcePosterFrame:1 includeDropShadow:1 includeTextFrames:width, height];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)effectEditorView:(id)a3 didStartEndEditingAnimationForEffect:(id)a4
{
  [(CFXFullScreenTextEditViewController *)self setIsRunningAnimation:1, a4];

  [(CFXFullScreenTextEditViewController *)self CFX_animateWithDuration:0 animatingIn:0 completion:0.4];
}

- (void)effectEditorView:(id)a3 didCompleteEndEditingAnimationForEffect:(id)a4 completion:(id)a5
{
  v9 = a5;
  [(CFXFullScreenTextEditViewController *)self setIsRunningAnimation:0];
  v6 = [(CFXFullScreenTextEditViewController *)self delegate];

  if (v6)
  {
    v7 = [(CFXFullScreenTextEditViewController *)self delegate];
    v8 = [(CFXFullScreenTextEditViewController *)self textEffect];
    [v7 fullScreenTextEditViewController:self didFinishAnimationAfterEditingEffect:v8 completion:v9];
  }

  else
  {
    v9[2]();
  }
}

- (id)effectEditorView:(id)a3 calculateAnimatedFaceTrackingTransformWithCurrentFaceTrackingDataFromTrackingType:(int64_t)a4 interpolatedWithFaceTrackingTransform:(id)a5 toTrackingType:(int64_t)a6 atAnimationProgress:(float)a7
{
  v11 = a5;
  v12 = +[JFXVideoCameraController sharedInstance];
  v13 = [v12 mostRecentARMetadata];

  v14 = [v13 faceAnchor];

  if (v14)
  {
    v15 = [(CFXFullScreenTextEditViewController *)self delegate];
    v16 = [v15 faceTrackingInterfaceOrientationForfullScreenTextEditViewController:self];

    v17 = [JFXFaceTrackingTransformCalculator alloc];
    v18 = +[CFXMediaSettings sharedInstance];
    [v18 renderSize];
    v19 = [(JFXFaceTrackingTransformCalculator *)v17 initWithARMetaData:v13 outputSize:v16 playableInterfaceOrientation:?];

    v20 = [(JFXFaceTrackingTransformCalculator *)v19 calculateFaceTrackingTransform];
    [v11 cameraTransform];
    v56 = v22;
    v57 = v21;
    v54 = v24;
    v55 = v23;
    [v20 cameraTransform];
    *&v44 = a7;
    [JFXFaceTrackingTransformCalculator interpolateFrom:v57 to:v56 fraction:v55, v54, v25, v26, v27, v28, v44];
    [v11 transformForTrackingType:a4];
    v50 = v30;
    v52 = v29;
    v46 = v32;
    v48 = v31;
    [v20 transformForTrackingType:a6];
    *&v45 = a7;
    [JFXFaceTrackingTransformCalculator interpolateFrom:v52 to:v50 fraction:v48, v46, v33, v34, v35, v36, v45];
    v51 = v38;
    v53 = v37;
    v47 = v40;
    v49 = v39;
    v41 = [JFXFaceTrackedEffectTransform alloc];
    [v11 cameraProjection];
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

- (void)CFX_animateWithDuration:(double)a3 animatingIn:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [objc_opt_class() CFX_fadeTimingParameters];
  v10 = [objc_alloc(MEMORY[0x277D75D40]) initWithDuration:v9 timingParameters:a3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__CFXFullScreenTextEditViewController_CFX_animateWithDuration_animatingIn_completion___block_invoke;
  v13[3] = &unk_278D79E38;
  v13[4] = self;
  v14 = a4;
  [v10 addAnimations:v13];
  if (v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__CFXFullScreenTextEditViewController_CFX_animateWithDuration_animatingIn_completion___block_invoke_2;
    v11[3] = &unk_278D7A7C0;
    v12 = v8;
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