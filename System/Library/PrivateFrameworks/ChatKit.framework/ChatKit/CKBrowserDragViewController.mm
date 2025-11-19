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
- (CKBrowserDragViewController)initWithDragImage:(id)a3 inSourceRect:(CGRect)a4 withSourcePoint:(CGPoint)a5 keyboardSourceRect:(CGRect)a6 keyboardSourcePoint:(CGPoint)a7 withGestureRecognizer:(id)a8;
- (CKBrowserDragViewControllerDelegate)delegate;
- (UIView)keyboardWindowSourceView;
- (double)absoluteScale;
- (double)dragViewScale;
- (double)rotationAngle;
- (id)draggedSticker;
- (void)_reversePeelAnimationToPoint:(CGPoint)a3 keyboardPoint:(CGPoint)a4 forPlacement:(BOOL)a5 shouldShrink:(BOOL)a6 completionBlock:(id)a7;
- (void)animateBackToSourceCompletionBlock:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)commitDrag;
- (void)dealloc;
- (void)gestureRecognized:(id)a3;
- (void)manuallyInitializeDragAtPoint:(CGPoint)a3;
- (void)manuallyUpdateDragPositionToPoint:(CGPoint)a3;
- (void)panGestureRecognized:(id)a3;
- (void)setCanPeel:(BOOL)a3;
- (void)setPlusImageViewHidden:(BOOL)a3;
- (void)setPressed:(BOOL)a3;
- (void)setRotationAngle:(double)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKBrowserDragViewController

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKBrowserDragViewController;
  [(CKBrowserDragViewController *)&v4 dealloc];
}

- (CKBrowserDragViewController)initWithDragImage:(id)a3 inSourceRect:(CGRect)a4 withSourcePoint:(CGPoint)a5 keyboardSourceRect:(CGRect)a6 keyboardSourcePoint:(CGPoint)a7 withGestureRecognizer:(id)a8
{
  x = a7.x;
  y = a5.y;
  v10 = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v16 = a3;
  v17 = *&x;
  v27.receiver = self;
  v27.super_class = CKBrowserDragViewController;
  v18 = [(CKBrowserDragViewController *)&v27 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    [(CKBrowserDragViewController *)v18 setGestureRecognizer:v17];
    [(CKBrowserDragViewController *)v19 setDragImage:v16];
    [(CKBrowserDragViewController *)v19 setSourceRect:v14, v13, width, height];
    [(CKBrowserDragViewController *)v19 setKeyboardSourceRect:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
    v20.f64[0] = v14;
    v21.f64[0] = width;
    v22.f64[0] = v10;
    [(CKBrowserDragViewController *)v19 setAnchorOffset:CKAnchorOffset(v20, v13, v21, height, v22, y)];
    v23.f64[0] = a6.origin.x;
    v24.f64[0] = a6.size.width;
    v25.f64[0] = v28;
    [(CKBrowserDragViewController *)v19 setKeyboardAnchorOffset:CKAnchorOffset(v23, a6.origin.y, v24, a6.size.height, v25, v29)];
  }

  return v19;
}

- (double)absoluteScale
{
  [(CKBrowserDragViewController *)self dragViewScale];
  v4 = v3;
  v5 = [(CKBrowserDragViewController *)self normalDragView];
  [v5 initialScale];
  v7 = v4 * v6;

  return v7;
}

- (void)animateBackToSourceCompletionBlock:(id)a3
{
  v35 = a3;
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
  [(CKBrowserDragViewController *)self _reversePeelAnimationToPoint:0 keyboardPoint:0 forPlacement:v35 shouldShrink:*&v24 completionBlock:vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v13, vmulq_f64(vsubq_f64(v11, v32), _Q3)), *&v25)), vdupq_lane_s64(v25, 0)), v26, *&v27, v28, *&v29];
}

- (void)_reversePeelAnimationToPoint:(CGPoint)a3 keyboardPoint:(CGPoint)a4 forPlacement:(BOOL)a5 shouldShrink:(BOOL)a6 completionBlock:(id)a7
{
  v7 = a6;
  v8 = a5;
  y = a3.y;
  x = a3.x;
  v12 = a7;
  v13 = [(CKBrowserDragViewController *)self normalDragView];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__CKBrowserDragViewController__reversePeelAnimationToPoint_keyboardPoint_forPlacement_shouldShrink_completionBlock___block_invoke;
  v15[3] = &unk_1E72EBDB8;
  v16 = v12;
  v14 = v12;
  [v13 reversePeelAnimationToPoint:v8 forPlacement:v7 shouldShrink:v15 completionBlock:{x, y}];
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

- (void)setPlusImageViewHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKBrowserDragViewController *)self normalDragView];
  [v5 setPlusImageViewHidden:v3];

  v6 = [(CKBrowserDragViewController *)self keyboardDragView];
  [v6 setPlusImageViewHidden:v3];
}

- (void)viewDidLoad
{
  v46.receiver = self;
  v46.super_class = CKBrowserDragViewController;
  [(CKBrowserDragViewController *)&v46 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  v4 = [(CKBrowserDragViewController *)self dragImage];

  if (v4)
  {
    v5 = [CKBrowserDragStickerView alloc];
    [(CKBrowserDragViewController *)self sourceRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(CKBrowserDragViewController *)self dragImage];
    v15 = [(CKBrowserDragStickerView *)v5 initWithSourceRect:v14 dragImage:v7, v9, v11, v13];
    [(CKBrowserDragViewController *)self setNormalDragView:v15];

    v16 = [(CKBrowserDragViewController *)self canPeel];
    v17 = [(CKBrowserDragViewController *)self normalDragView];
    [v17 setCanPeel:v16];

    v18 = [(CKBrowserDragViewController *)self isPressed];
    v19 = [(CKBrowserDragViewController *)self normalDragView];
    [v19 setPressed:v18];

    v20 = [(CKBrowserDragViewController *)self view];
    v21 = [(CKBrowserDragViewController *)self normalDragView];
    [v20 addSubview:v21];

    v22 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];

    if (v22)
    {
      v23 = [CKBrowserDragStickerView alloc];
      [(CKBrowserDragViewController *)self sourceRect];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = [(CKBrowserDragViewController *)self dragImage];
      v33 = [(CKBrowserDragStickerView *)v23 initWithSourceRect:v32 dragImage:v25, v27, v29, v31];
      [(CKBrowserDragViewController *)self setKeyboardDragView:v33];

      v34 = [(CKBrowserDragViewController *)self canPeel];
      v35 = [(CKBrowserDragViewController *)self keyboardDragView];
      [v35 setCanPeel:v34];

      v36 = [(CKBrowserDragViewController *)self isPressed];
      v37 = [(CKBrowserDragViewController *)self keyboardDragView];
      [v37 setPressed:v36];

      v38 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
      v39 = [(CKBrowserDragViewController *)self keyboardDragView];
      [v38 addSubview:v39];
    }
  }

  v40 = [(CKBrowserDragViewController *)self gestureRecognizer];
  [v40 addTarget:self action:sel_gestureRecognized_];

  v41 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_panGestureRecognized_];
  v42 = [(CKBrowserDragViewController *)self view];
  [v42 addGestureRecognizer:v41];

  [(CKBrowserDragViewController *)self setPanGestureRecognizer:v41];
  v43 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];

  if (v43)
  {
    v44 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_panGestureRecognized_];
    v45 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
    [v45 addGestureRecognizer:v44];

    [(CKBrowserDragViewController *)self setKeyboardPanGestureRecognizer:v44];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v26.receiver = self;
  v26.super_class = CKBrowserDragViewController;
  [(CKBrowserDragViewController *)&v26 viewDidAppear:a3];
  v4 = [(CKBrowserDragViewController *)self keyboardDragView];
  [v4 animatePeelWithCompletion:0];

  v5 = [(CKBrowserDragViewController *)self normalDragView];
  [v5 animatePeelWithCompletion:0];

  v6 = [(CKBrowserDragViewController *)self gestureRecognizer];
  v7 = [(CKBrowserDragViewController *)self view];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;
  v12 = [(CKBrowserDragViewController *)self normalDragView];
  [v12 setInitialDragStartPosition:{v9, v11}];

  v13 = [(CKBrowserDragViewController *)self gestureRecognizer];
  v14 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
  [v13 locationInView:v14];
  v16 = v15;
  v18 = v17;
  v19 = [(CKBrowserDragViewController *)self keyboardDragView];
  [v19 setInitialDragStartPosition:{v16, v18}];

  if (![(CKBrowserDragViewController *)self isPressed])
  {
    [(CKBrowserDragViewController *)self setPressed:1];
    v20 = [(CKBrowserDragViewController *)self normalDragView];
    v21 = [(CKBrowserDragViewController *)self normalDragView];
    [v21 initialDragStartPosition];
    [v20 attachElasticEffectsForLocation:?];

    v22 = [(CKBrowserDragViewController *)self keyboardDragView];
    v23 = [(CKBrowserDragViewController *)self keyboardDragView];
    [v23 initialDragStartPosition];
    [v22 attachElasticEffectsForLocation:?];
  }

  v24 = [(CKBrowserDragViewController *)self normalDragView];
  [v24 updateAnimationTimerObserving];

  v25 = [(CKBrowserDragViewController *)self keyboardDragView];
  [v25 updateAnimationTimerObserving];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CKBrowserDragViewController;
  [(CKBrowserDragViewController *)&v9 viewDidDisappear:a3];
  v4 = [(CKBrowserDragViewController *)self normalDragView];
  [v4 updateAnimationTimerObserving];

  v5 = [(CKBrowserDragViewController *)self keyboardDragView];
  [v5 updateAnimationTimerObserving];

  v6 = [(CKBrowserDragViewController *)self keyboardDragView];
  [v6 removeFromSuperview];

  v7 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
  v8 = [(CKBrowserDragViewController *)self keyboardPanGestureRecognizer];
  [v7 removeGestureRecognizer:v8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = [(CKBrowserDragViewController *)self delegate:a4];
  [v5 browserDragViewController:self dragEndedWithTarget:0];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = CKBrowserDragViewController;
  [(CKBrowserDragViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(CKBrowserDragViewController *)self setHasMovedToWindow:1];
}

- (void)gestureRecognized:(id)a3
{
  v35 = a3;
  v4 = [(CKBrowserDragViewController *)self view];
  v5 = [v4 window];
  if (!v5 && [(CKBrowserDragViewController *)self hasMovedToWindow])
  {

LABEL_13:
    [(CKBrowserDragViewController *)self setPressed:0];
    v33 = [(CKBrowserDragViewController *)self normalDragView];
    [v33 detachElasticEffects];

    v34 = [(CKBrowserDragViewController *)self keyboardDragView];
    [v34 detachElasticEffects];

    [(CKBrowserDragViewController *)self commitDrag];
    goto LABEL_14;
  }

  if ([v35 state] == 1)
  {
  }

  else
  {
    v6 = [v35 state];

    if (v6 != 2)
    {
      goto LABEL_13;
    }
  }

  if ([(CKBrowserDragViewController *)self isPressed])
  {
    v7 = [(CKBrowserDragViewController *)self normalDragView];
    v8 = [(CKBrowserDragViewController *)self view];
    [v35 locationInView:v8];
    [v7 updateElasticEffectsForLocation:?];

    v9 = [(CKBrowserDragViewController *)self keyboardDragView];
    v10 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
    [v35 locationInView:v10];
    [v9 updateElasticEffectsForLocation:?];
  }

  if ([(CKBrowserDragViewController *)self _orbScalingEnabled]&& [(CKBrowserDragViewController *)self canScale])
  {
    v11 = [v35 touches];
    v12 = [v11 firstObject];

    [v12 force];
    v14 = v13;
    [v12 maximumPossibleForce];
    v16 = v14 / v15 + v14 / v15;
    v17 = [(CKBrowserDragViewController *)self normalDragView];
    [v17 setDragViewScale:v16];

    v18 = [(CKBrowserDragViewController *)self keyboardDragView];
    [v18 setDragViewScale:v16];
  }

  [(CKBrowserDragViewController *)self dragViewCenter];
  v20 = v19;
  v22 = v21;
  v23 = [(CKBrowserDragViewController *)self normalDragView];
  [v23 initialSize];
  v25 = v24;
  v27 = v26;
  [(CKBrowserDragViewController *)self absoluteScale];
  v29 = v28;
  [(CKBrowserDragViewController *)self rotationAngle];
  v31 = [CKBrowserDragControllerTarget targetWithScreenCoordinate:0 initialSize:v20 scale:v22 meshScaleFactor:v25 rotation:v27 associatedLayoutIntent:v29, 1.4, v30];

  v32 = [(CKBrowserDragViewController *)self delegate];
  [v32 browserDragViewController:self draggedWithTarget:v31];

LABEL_14:
}

- (CGPoint)dragViewCenter
{
  v2 = [(CKBrowserDragViewController *)self normalDragView];
  [v2 dragViewCenter];
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
  v2 = [(CKBrowserDragViewController *)self keyboardDragView];
  [v2 dragViewCenter];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)manuallyInitializeDragAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CKBrowserDragViewController *)self setPressed:1];
  v6 = [(CKBrowserDragViewController *)self normalDragView];
  [v6 attachElasticEffectsForLocation:{x, y}];

  v7 = [(CKBrowserDragViewController *)self keyboardDragView];
  [v7 attachElasticEffectsForLocation:{x, y}];
}

- (void)manuallyUpdateDragPositionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CKBrowserDragViewController *)self normalDragView];
  [v6 updateElasticEffectsForLocation:{x, y}];

  v7 = [(CKBrowserDragViewController *)self keyboardDragView];
  [v7 updateElasticEffectsForLocation:{x, y}];
}

- (void)panGestureRecognized:(id)a3
{
  v45 = a3;
  v4 = [(CKBrowserDragViewController *)self keyboardPanGestureRecognizer];

  if (v4 == v45)
  {
    v5 = [(CKBrowserDragViewController *)self keyboardWindowSourceView];
    if ([v45 state] == 1)
    {
      [v45 locationInView:v5];
      v11 = self;
      goto LABEL_21;
    }
  }

  else
  {
    v5 = [(CKBrowserDragViewController *)self view];
    if ([v45 state] == 1)
    {
      [v45 locationInView:v5];
      v8 = self;
LABEL_19:
      [(CKBrowserDragViewController *)v8 setPreviousPanLocationInView:v6, v7];
      goto LABEL_22;
    }
  }

  if ([v45 state] == 2)
  {
    [v45 locationInView:v5];
    v13 = v12;
    v15 = v14;
    if (v4 == v45)
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

      v40 = [(CKBrowserDragViewController *)self normalDragView];
      [v40 dragViewScale];
      v42 = v39 + v41;

      v43 = [(CKBrowserDragViewController *)self normalDragView];
      [v43 setDragViewScale:v42];

      v44 = [(CKBrowserDragViewController *)self keyboardDragView];
      [v44 setDragViewScale:v42];
    }

    [(CKBrowserDragViewController *)self setPreviousPanLocationInView:v13, v15];
    if (v4 != v45)
    {
      v8 = self;
      v6 = v13;
      v7 = v15;
      goto LABEL_19;
    }

    v11 = self;
    v9 = v13;
    v10 = v15;
  }

  else
  {
    if ([v45 state] != 3)
    {
      goto LABEL_22;
    }

    v22 = *MEMORY[0x1E695EFF8];
    v23 = *(MEMORY[0x1E695EFF8] + 8);
    [(CKBrowserDragViewController *)self setPreviousPanLocationInView:*MEMORY[0x1E695EFF8], v23];
    v11 = self;
    v9 = v22;
    v10 = v23;
  }

LABEL_21:
  [(CKBrowserDragViewController *)v11 setPreviousPanLocationInKeyboardView:v9, v10];
LABEL_22:
}

- (double)dragViewScale
{
  v2 = [(CKBrowserDragViewController *)self normalDragView];
  [v2 dragViewScale];
  v4 = v3;

  return v4;
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = [(CKBrowserDragViewController *)self delegate];
  [v4 browserDragViewController:self dragEndedWithTarget:0];
}

- (void)commitDrag
{
  v3 = [(CKBrowserDragViewController *)self gestureRecognizer];
  [v3 removeTarget:self action:sel_gestureRecognized_];

  [(CKBrowserDragViewController *)self setGestureRecognizer:0];
  [(CKBrowserDragViewController *)self dragViewCenter];
  v5 = v4;
  v7 = v6;
  v8 = [(CKBrowserDragViewController *)self normalDragView];
  [v8 initialSize];
  v10 = v9;
  v12 = v11;
  [(CKBrowserDragViewController *)self absoluteScale];
  v14 = v13;
  [(CKBrowserDragViewController *)self rotationAngle];
  v17 = [CKBrowserDragControllerTarget targetWithScreenCoordinate:0 initialSize:v5 scale:v7 meshScaleFactor:v10 rotation:v12 associatedLayoutIntent:v14, 1.4, v15];

  v16 = [(CKBrowserDragViewController *)self delegate];
  [v16 browserDragViewController:self dragEndedWithTarget:v17];
}

- (void)setRotationAngle:(double)a3
{
  v5 = [(CKBrowserDragViewController *)self normalDragView];
  [v5 setRotationAngle:a3];

  v6 = [(CKBrowserDragViewController *)self keyboardDragView];
  [v6 setRotationAngle:a3];
}

- (double)rotationAngle
{
  v2 = [(CKBrowserDragViewController *)self normalDragView];
  [v2 rotationAngle];
  v4 = v3;

  return v4;
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    v4 = a3;
    self->_pressed = a3;
    v6 = [(CKBrowserDragViewController *)self normalDragView];
    [v6 setPressed:v4];

    v7 = [(CKBrowserDragViewController *)self keyboardDragView];
    [v7 setPressed:v4];
  }
}

- (void)setCanPeel:(BOOL)a3
{
  if (self->_canPeel != a3)
  {
    v4 = a3;
    self->_canPeel = a3;
    v6 = [(CKBrowserDragViewController *)self normalDragView];
    [v6 setCanPeel:v4];

    v7 = [(CKBrowserDragViewController *)self keyboardDragView];
    [v7 setCanPeel:v4];
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
  v2 = [(CKBrowserDragViewController *)self normalDragView];
  v3 = [v2 draggedSticker];

  return v3;
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