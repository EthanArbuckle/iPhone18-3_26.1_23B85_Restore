@interface CKBrowserDragViewController
+ (BOOL)supportsForceTouch;
- (CGPoint)anchorOffset;
- (CGPoint)dragViewCenter;
- (CGPoint)keyboardAnchorOffset;
- (CGPoint)keyboardDragViewCenter;
- (CGPoint)previousPanLocationInKeyboardView;
- (CGPoint)previousPanLocationInView;
- (CGRect)keyboardSourceRect;
- (CGRect)sourceRect;
- (CKBrowserDragViewController)initWithDragImage:(id)image inSourceRect:(CGRect)rect withSourcePoint:(CGPoint)point keyboardSourceRect:(CGRect)sourceRect keyboardSourcePoint:(CGPoint)sourcePoint withGestureRecognizer:(id)recognizer;
- (CKBrowserDragViewControllerDelegate)delegate;
- (UIView)keyboardWindowSourceView;
- (double)absoluteScale;
- (double)dragViewScale;
- (double)rotationAngle;
- (id)draggedSticker;
- (void)_reversePeelAnimationToPoint:(CGPoint)point keyboardPoint:(CGPoint)keyboardPoint forPlacement:(BOOL)placement shouldShrink:(BOOL)shrink completionBlock:(id)block;
- (void)animateBackToSourceCompletionBlock:(id)block;
- (void)applicationDidEnterBackground:(id)background;
- (void)commitDrag;
- (void)dealloc;
- (void)gestureRecognized:(id)recognized;
- (void)manuallyInitializeDragAtPoint:(CGPoint)point;
- (void)manuallyUpdateDragPositionToPoint:(CGPoint)point;
- (void)panGestureRecognized:(id)recognized;
- (void)setCanPeel:(BOOL)peel;
- (void)setPlusImageViewHidden:(BOOL)hidden;
- (void)setPressed:(BOOL)pressed;
- (void)setRotationAngle:(double)angle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CKBrowserDragViewController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKBrowserDragViewController;
  [(CKBrowserDragViewController *)&v4 dealloc];
}

- (CKBrowserDragViewController)initWithDragImage:(id)image inSourceRect:(CGRect)rect withSourcePoint:(CGPoint)point keyboardSourceRect:(CGRect)sourceRect keyboardSourcePoint:(CGPoint)sourcePoint withGestureRecognizer:(id)recognizer
{
  x = sourcePoint.x;
  y = point.y;
  v10 = point.x;
  height = rect.size.height;
  width = rect.size.width;
  v13 = rect.origin.y;
  v14 = rect.origin.x;
  imageCopy = image;
  v17 = *&x;
  v27.receiver = self;
  v27.super_class = CKBrowserDragViewController;
  v18 = [(CKBrowserDragViewController *)&v27 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    [(CKBrowserDragViewController *)v18 setGestureRecognizer:v17];
    [(CKBrowserDragViewController *)v19 setDragImage:imageCopy];
    [(CKBrowserDragViewController *)v19 setSourceRect:v14, v13, width, height];
    [(CKBrowserDragViewController *)v19 setKeyboardSourceRect:sourceRect.origin.x, sourceRect.origin.y, sourceRect.size.width, sourceRect.size.height];
    v20.f64[0] = v14;
    v21.f64[0] = width;
    v22.f64[0] = v10;
    [(CKBrowserDragViewController *)v19 setAnchorOffset:CKAnchorOffset(v20, v13, v21, height, v22, y)];
    v23.f64[0] = sourceRect.origin.x;
    v24.f64[0] = sourceRect.size.width;
    v25.f64[0] = v28;
    [(CKBrowserDragViewController *)v19 setKeyboardAnchorOffset:CKAnchorOffset(v23, sourceRect.origin.y, v24, sourceRect.size.height, v25, v29)];
  }

  return v19;
}

- (double)absoluteScale
{
  [(CKBrowserDragViewController *)self dragViewScale];
  v4 = v3;
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView initialScale];
  v7 = v4 * v6;

  return v7;
}

- (void)animateBackToSourceCompletionBlock:(id)block
{
  blockCopy = block;
  [(CKBrowserDragViewController *)self sourceRect];
  v33 = v5;
  v34 = v4;
  v30 = v7;
  v31 = v6;
  v8 = MEMORY[0x1E695F058];
  if (CKMainScreenScale_once_82 != -1)
  {
    CKAnchorOffset_cold_1();
  }

  v32 = v8[1];
  v9 = *&CKMainScreenScale_sMainScreenScale_82;
  [(CKBrowserDragViewController *)self keyboardSourceRect];
  v13.f64[0] = v12;
  *&v15 = v14;
  if (CKMainScreenScale_once_82 != -1)
  {
    v28 = v10;
    v29 = v13;
    v26 = v15;
    v27 = v11;
    CKAnchorOffset_cold_1();
    *&v15 = v26;
    v11.f64[0] = v27.f64[0];
    *&v10 = v28;
    v13.f64[0] = v29.f64[0];
  }

  if (v9 == 0.0)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = v9;
  }

  v17.f64[0] = v31;
  v17.f64[1] = v30;
  v18 = vsubq_f64(v17, v32);
  __asm { FMOV            V3.2D, #0.5 }

  v17.f64[0] = v34;
  v17.f64[1] = v33;
  v24 = vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v17, vmulq_f64(v18, _Q3)), v16)), vdupq_lane_s64(*&v16, 0));
  v25 = CKMainScreenScale_sMainScreenScale_82;
  if (*&CKMainScreenScale_sMainScreenScale_82 == 0.0)
  {
    *&v25 = 1.0;
  }

  *&v11.f64[1] = v15;
  *&v13.f64[1] = v10;
  [(CKBrowserDragViewController *)self _reversePeelAnimationToPoint:0 keyboardPoint:0 forPlacement:blockCopy shouldShrink:*&v24 completionBlock:vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v13, vmulq_f64(vsubq_f64(v11, v32), _Q3)), *&v25)), vdupq_lane_s64(v25, 0)), v26, *&v27, v28, *&v29];
}

- (void)_reversePeelAnimationToPoint:(CGPoint)point keyboardPoint:(CGPoint)keyboardPoint forPlacement:(BOOL)placement shouldShrink:(BOOL)shrink completionBlock:(id)block
{
  shrinkCopy = shrink;
  placementCopy = placement;
  y = point.y;
  x = point.x;
  blockCopy = block;
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__CKBrowserDragViewController__reversePeelAnimationToPoint_keyboardPoint_forPlacement_shouldShrink_completionBlock___block_invoke;
  v15[3] = &unk_1E72EBDB8;
  v16 = blockCopy;
  v14 = blockCopy;
  [normalDragView reversePeelAnimationToPoint:placementCopy forPlacement:shrinkCopy shouldShrink:v15 completionBlock:{x, y}];
}

uint64_t __116__CKBrowserDragViewController__reversePeelAnimationToPoint_keyboardPoint_forPlacement_shouldShrink_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setPlusImageViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView setPlusImageViewHidden:hiddenCopy];

  keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
  [keyboardDragView setPlusImageViewHidden:hiddenCopy];
}

- (void)viewDidLoad
{
  v46.receiver = self;
  v46.super_class = CKBrowserDragViewController;
  [(CKBrowserDragViewController *)&v46 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  dragImage = [(CKBrowserDragViewController *)self dragImage];

  if (dragImage)
  {
    v5 = [CKBrowserDragStickerView alloc];
    [(CKBrowserDragViewController *)self sourceRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    dragImage2 = [(CKBrowserDragViewController *)self dragImage];
    v15 = [(CKBrowserDragStickerView *)v5 initWithSourceRect:dragImage2 dragImage:v7, v9, v11, v13];
    [(CKBrowserDragViewController *)self setNormalDragView:v15];

    canPeel = [(CKBrowserDragViewController *)self canPeel];
    normalDragView = [(CKBrowserDragViewController *)self normalDragView];
    [normalDragView setCanPeel:canPeel];

    isPressed = [(CKBrowserDragViewController *)self isPressed];
    normalDragView2 = [(CKBrowserDragViewController *)self normalDragView];
    [normalDragView2 setPressed:isPressed];

    view = [(CKBrowserDragViewController *)self view];
    normalDragView3 = [(CKBrowserDragViewController *)self normalDragView];
    [view addSubview:normalDragView3];

    keyboardWindowSourceView = [(CKBrowserDragViewController *)self keyboardWindowSourceView];

    if (keyboardWindowSourceView)
    {
      v23 = [CKBrowserDragStickerView alloc];
      [(CKBrowserDragViewController *)self sourceRect];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      dragImage3 = [(CKBrowserDragViewController *)self dragImage];
      v33 = [(CKBrowserDragStickerView *)v23 initWithSourceRect:dragImage3 dragImage:v25, v27, v29, v31];
      [(CKBrowserDragViewController *)self setKeyboardDragView:v33];

      canPeel2 = [(CKBrowserDragViewController *)self canPeel];
      keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
      [keyboardDragView setCanPeel:canPeel2];

      isPressed2 = [(CKBrowserDragViewController *)self isPressed];
      keyboardDragView2 = [(CKBrowserDragViewController *)self keyboardDragView];
      [keyboardDragView2 setPressed:isPressed2];

      keyboardWindowSourceView2 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
      keyboardDragView3 = [(CKBrowserDragViewController *)self keyboardDragView];
      [keyboardWindowSourceView2 addSubview:keyboardDragView3];
    }
  }

  gestureRecognizer = [(CKBrowserDragViewController *)self gestureRecognizer];
  [gestureRecognizer addTarget:self action:sel_gestureRecognized_];

  v41 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_panGestureRecognized_];
  view2 = [(CKBrowserDragViewController *)self view];
  [view2 addGestureRecognizer:v41];

  [(CKBrowserDragViewController *)self setPanGestureRecognizer:v41];
  keyboardWindowSourceView3 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];

  if (keyboardWindowSourceView3)
  {
    v44 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_panGestureRecognized_];
    keyboardWindowSourceView4 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
    [keyboardWindowSourceView4 addGestureRecognizer:v44];

    [(CKBrowserDragViewController *)self setKeyboardPanGestureRecognizer:v44];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v26.receiver = self;
  v26.super_class = CKBrowserDragViewController;
  [(CKBrowserDragViewController *)&v26 viewDidAppear:appear];
  keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
  [keyboardDragView animatePeelWithCompletion:0];

  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView animatePeelWithCompletion:0];

  gestureRecognizer = [(CKBrowserDragViewController *)self gestureRecognizer];
  view = [(CKBrowserDragViewController *)self view];
  [gestureRecognizer locationInView:view];
  v9 = v8;
  v11 = v10;
  normalDragView2 = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView2 setInitialDragStartPosition:{v9, v11}];

  gestureRecognizer2 = [(CKBrowserDragViewController *)self gestureRecognizer];
  keyboardWindowSourceView = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
  [gestureRecognizer2 locationInView:keyboardWindowSourceView];
  v16 = v15;
  v18 = v17;
  keyboardDragView2 = [(CKBrowserDragViewController *)self keyboardDragView];
  [keyboardDragView2 setInitialDragStartPosition:{v16, v18}];

  if (![(CKBrowserDragViewController *)self isPressed])
  {
    [(CKBrowserDragViewController *)self setPressed:1];
    normalDragView3 = [(CKBrowserDragViewController *)self normalDragView];
    normalDragView4 = [(CKBrowserDragViewController *)self normalDragView];
    [normalDragView4 initialDragStartPosition];
    [normalDragView3 attachElasticEffectsForLocation:?];

    keyboardDragView3 = [(CKBrowserDragViewController *)self keyboardDragView];
    keyboardDragView4 = [(CKBrowserDragViewController *)self keyboardDragView];
    [keyboardDragView4 initialDragStartPosition];
    [keyboardDragView3 attachElasticEffectsForLocation:?];
  }

  normalDragView5 = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView5 updateAnimationTimerObserving];

  keyboardDragView5 = [(CKBrowserDragViewController *)self keyboardDragView];
  [keyboardDragView5 updateAnimationTimerObserving];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = CKBrowserDragViewController;
  [(CKBrowserDragViewController *)&v9 viewDidDisappear:disappear];
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView updateAnimationTimerObserving];

  keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
  [keyboardDragView updateAnimationTimerObserving];

  keyboardDragView2 = [(CKBrowserDragViewController *)self keyboardDragView];
  [keyboardDragView2 removeFromSuperview];

  keyboardWindowSourceView = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
  keyboardPanGestureRecognizer = [(CKBrowserDragViewController *)self keyboardPanGestureRecognizer];
  [keyboardWindowSourceView removeGestureRecognizer:keyboardPanGestureRecognizer];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5 = [(CKBrowserDragViewController *)self delegate:coordinator];
  [v5 browserDragViewController:self dragEndedWithTarget:0];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CKBrowserDragViewController;
  [(CKBrowserDragViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(CKBrowserDragViewController *)self setHasMovedToWindow:1];
}

- (void)gestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  view = [(CKBrowserDragViewController *)self view];
  window = [view window];
  if (!window && [(CKBrowserDragViewController *)self hasMovedToWindow])
  {

LABEL_13:
    [(CKBrowserDragViewController *)self setPressed:0];
    normalDragView = [(CKBrowserDragViewController *)self normalDragView];
    [normalDragView detachElasticEffects];

    keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
    [keyboardDragView detachElasticEffects];

    [(CKBrowserDragViewController *)self commitDrag];
    goto LABEL_14;
  }

  if ([recognizedCopy state] == 1)
  {
  }

  else
  {
    state = [recognizedCopy state];

    if (state != 2)
    {
      goto LABEL_13;
    }
  }

  if ([(CKBrowserDragViewController *)self isPressed])
  {
    normalDragView2 = [(CKBrowserDragViewController *)self normalDragView];
    view2 = [(CKBrowserDragViewController *)self view];
    [recognizedCopy locationInView:view2];
    [normalDragView2 updateElasticEffectsForLocation:?];

    keyboardDragView2 = [(CKBrowserDragViewController *)self keyboardDragView];
    keyboardWindowSourceView = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
    [recognizedCopy locationInView:keyboardWindowSourceView];
    [keyboardDragView2 updateElasticEffectsForLocation:?];
  }

  if ([(CKBrowserDragViewController *)self _orbScalingEnabled]&& [(CKBrowserDragViewController *)self canScale])
  {
    touches = [recognizedCopy touches];
    firstObject = [touches firstObject];

    [firstObject force];
    v14 = v13;
    [firstObject maximumPossibleForce];
    v16 = v14 / v15 + v14 / v15;
    normalDragView3 = [(CKBrowserDragViewController *)self normalDragView];
    [normalDragView3 setDragViewScale:v16];

    keyboardDragView3 = [(CKBrowserDragViewController *)self keyboardDragView];
    [keyboardDragView3 setDragViewScale:v16];
  }

  [(CKBrowserDragViewController *)self dragViewCenter];
  v20 = v19;
  v22 = v21;
  normalDragView4 = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView4 initialSize];
  v25 = v24;
  v27 = v26;
  [(CKBrowserDragViewController *)self absoluteScale];
  v29 = v28;
  [(CKBrowserDragViewController *)self rotationAngle];
  v31 = [CKBrowserDragControllerTarget targetWithScreenCoordinate:0 initialSize:v20 scale:v22 meshScaleFactor:v25 rotation:v27 associatedLayoutIntent:v29, 1.4, v30];

  delegate = [(CKBrowserDragViewController *)self delegate];
  [delegate browserDragViewController:self draggedWithTarget:v31];

LABEL_14:
}

- (CGPoint)dragViewCenter
{
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView dragViewCenter];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)keyboardDragViewCenter
{
  keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
  [keyboardDragView dragViewCenter];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)manuallyInitializeDragAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CKBrowserDragViewController *)self setPressed:1];
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView attachElasticEffectsForLocation:{x, y}];

  keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
  [keyboardDragView attachElasticEffectsForLocation:{x, y}];
}

- (void)manuallyUpdateDragPositionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView updateElasticEffectsForLocation:{x, y}];

  keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
  [keyboardDragView updateElasticEffectsForLocation:{x, y}];
}

- (void)panGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  keyboardPanGestureRecognizer = [(CKBrowserDragViewController *)self keyboardPanGestureRecognizer];

  if (keyboardPanGestureRecognizer == recognizedCopy)
  {
    keyboardWindowSourceView = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
    if ([recognizedCopy state] == 1)
    {
      [recognizedCopy locationInView:keyboardWindowSourceView];
      selfCopy5 = self;
      goto LABEL_21;
    }
  }

  else
  {
    keyboardWindowSourceView = [(CKBrowserDragViewController *)self view];
    if ([recognizedCopy state] == 1)
    {
      [recognizedCopy locationInView:keyboardWindowSourceView];
      selfCopy3 = self;
LABEL_19:
      [(CKBrowserDragViewController *)selfCopy3 setPreviousPanLocationInView:v6, v7];
      goto LABEL_22;
    }
  }

  if ([recognizedCopy state] == 2)
  {
    [recognizedCopy locationInView:keyboardWindowSourceView];
    v13 = v12;
    v15 = v14;
    if (keyboardPanGestureRecognizer == recognizedCopy)
    {
      [(CKBrowserDragViewController *)self previousPanLocationInKeyboardView];
      v17 = v24;
      v19 = v25;
      [(CKBrowserDragViewController *)self keyboardDragViewCenter];
    }

    else
    {
      [(CKBrowserDragViewController *)self previousPanLocationInView];
      v17 = v16;
      v19 = v18;
      [(CKBrowserDragViewController *)self dragViewCenter];
    }

    v26 = v20;
    v27 = v21;
    if ([(CKBrowserDragViewController *)self canRotate])
    {
      v28 = atan2(v15 - v27, v13 - v26);
      v29 = v28 - atan2(v19 - v27, v17 - v26);
      [(CKBrowserDragViewController *)self rotationAngle];
      [(CKBrowserDragViewController *)self setRotationAngle:(v29 + v30)];
    }

    if (![(CKBrowserDragViewController *)self _orbScalingEnabled]&& [(CKBrowserDragViewController *)self canScale])
    {
      v31 = v26 - v17;
      v32 = v27 - v19;
      v33 = hypotf(v31, v32);
      v34 = v26 - v13;
      v35 = v27 - v15;
      v36 = hypotf(v34, v35) - v33;
      v37 = +[CKUIBehavior sharedBehaviors];
      [v37 dragPinchGestureScaleFactor];
      v39 = v36 / v38;

      normalDragView = [(CKBrowserDragViewController *)self normalDragView];
      [normalDragView dragViewScale];
      v42 = v39 + v41;

      normalDragView2 = [(CKBrowserDragViewController *)self normalDragView];
      [normalDragView2 setDragViewScale:v42];

      keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
      [keyboardDragView setDragViewScale:v42];
    }

    [(CKBrowserDragViewController *)self setPreviousPanLocationInView:v13, v15];
    if (keyboardPanGestureRecognizer != recognizedCopy)
    {
      selfCopy3 = self;
      v6 = v13;
      v7 = v15;
      goto LABEL_19;
    }

    selfCopy5 = self;
    v9 = v13;
    v10 = v15;
  }

  else
  {
    if ([recognizedCopy state] != 3)
    {
      goto LABEL_22;
    }

    v22 = *MEMORY[0x1E695EFF8];
    v23 = *(MEMORY[0x1E695EFF8] + 8);
    [(CKBrowserDragViewController *)self setPreviousPanLocationInView:*MEMORY[0x1E695EFF8], v23];
    selfCopy5 = self;
    v9 = v22;
    v10 = v23;
  }

LABEL_21:
  [(CKBrowserDragViewController *)selfCopy5 setPreviousPanLocationInKeyboardView:v9, v10];
LABEL_22:
}

- (double)dragViewScale
{
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView dragViewScale];
  v4 = v3;

  return v4;
}

- (void)applicationDidEnterBackground:(id)background
{
  delegate = [(CKBrowserDragViewController *)self delegate];
  [delegate browserDragViewController:self dragEndedWithTarget:0];
}

- (void)commitDrag
{
  gestureRecognizer = [(CKBrowserDragViewController *)self gestureRecognizer];
  [gestureRecognizer removeTarget:self action:sel_gestureRecognized_];

  [(CKBrowserDragViewController *)self setGestureRecognizer:0];
  [(CKBrowserDragViewController *)self dragViewCenter];
  v5 = v4;
  v7 = v6;
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView initialSize];
  v10 = v9;
  v12 = v11;
  [(CKBrowserDragViewController *)self absoluteScale];
  v14 = v13;
  [(CKBrowserDragViewController *)self rotationAngle];
  v17 = [CKBrowserDragControllerTarget targetWithScreenCoordinate:0 initialSize:v5 scale:v7 meshScaleFactor:v10 rotation:v12 associatedLayoutIntent:v14, 1.4, v15];

  delegate = [(CKBrowserDragViewController *)self delegate];
  [delegate browserDragViewController:self dragEndedWithTarget:v17];
}

- (void)setRotationAngle:(double)angle
{
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView setRotationAngle:angle];

  keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
  [keyboardDragView setRotationAngle:angle];
}

- (double)rotationAngle
{
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  [normalDragView rotationAngle];
  v4 = v3;

  return v4;
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    pressedCopy = pressed;
    self->_pressed = pressed;
    normalDragView = [(CKBrowserDragViewController *)self normalDragView];
    [normalDragView setPressed:pressedCopy];

    keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
    [keyboardDragView setPressed:pressedCopy];
  }
}

- (void)setCanPeel:(BOOL)peel
{
  if (self->_canPeel != peel)
  {
    peelCopy = peel;
    self->_canPeel = peel;
    normalDragView = [(CKBrowserDragViewController *)self normalDragView];
    [normalDragView setCanPeel:peelCopy];

    keyboardDragView = [(CKBrowserDragViewController *)self keyboardDragView];
    [keyboardDragView setCanPeel:peelCopy];
  }
}

+ (BOOL)supportsForceTouch
{
  if (supportsForceTouch_once != -1)
  {
    +[CKBrowserDragViewController supportsForceTouch];
  }

  return supportsForceTouch_supportsForceTouch;
}

uint64_t __49__CKBrowserDragViewController_supportsForceTouch__block_invoke()
{
  result = MGGetBoolAnswer();
  supportsForceTouch_supportsForceTouch = result;
  return result;
}

- (id)draggedSticker
{
  normalDragView = [(CKBrowserDragViewController *)self normalDragView];
  draggedSticker = [normalDragView draggedSticker];

  return draggedSticker;
}

- (CKBrowserDragViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)keyboardWindowSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardWindowSourceView);

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

- (CGRect)keyboardSourceRect
{
  x = self->_keyboardSourceRect.origin.x;
  y = self->_keyboardSourceRect.origin.y;
  width = self->_keyboardSourceRect.size.width;
  height = self->_keyboardSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)anchorOffset
{
  x = self->_anchorOffset.x;
  y = self->_anchorOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)keyboardAnchorOffset
{
  x = self->_keyboardAnchorOffset.x;
  y = self->_keyboardAnchorOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)previousPanLocationInView
{
  x = self->_previousPanLocationInView.x;
  y = self->_previousPanLocationInView.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)previousPanLocationInKeyboardView
{
  x = self->_previousPanLocationInKeyboardView.x;
  y = self->_previousPanLocationInKeyboardView.y;
  result.y = y;
  result.x = x;
  return result;
}

@end