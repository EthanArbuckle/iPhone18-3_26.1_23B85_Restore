@interface CKActionMenuWindow
+ (id)sharedInstance;
- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)actionMenuGestureRecognized:(id)a3;
- (void)dismissActionMenuViewAnimated:(BOOL)a3;
- (void)presentActionMenuView:(id)a3 fromPoint:(CGPoint)a4 inView:(id)a5 animated:(BOOL)a6;
@end

@implementation CKActionMenuWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = CKActionMenuWindow;
  v5 = [(UIAutoRotatingWindow *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  if (([(CKActionMenuWindow *)self isHidden]& 1) != 0)
  {
    return 1;
  }

  v5 = [(CKActionMenuWindow *)self rootViewController];
  v6 = [v5 view];
  v7 = [v6 isHidden];

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance_once_2 != -1)
  {
    +[CKActionMenuWindow sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance_1;

  return v3;
}

void __36__CKActionMenuWindow_sharedInstance__block_invoke()
{
  v0 = [CKActionMenuWindow alloc];
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 bounds];
  v2 = [(CKActionMenuWindow *)v0 initWithFrame:?];
  v3 = sharedInstance_sSharedInstance_1;
  sharedInstance_sSharedInstance_1 = v2;

  v4 = sharedInstance_sSharedInstance_1;
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 actionMenuWindowLevel];
  [v4 setWindowLevel:?];
}

- (void)presentActionMenuView:(id)a3 fromPoint:(CGPoint)a4 inView:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  y = a4.y;
  x = a4.x;
  v48 = a3;
  v11 = a5;
  v12 = [v11 window];
  [v12 frame];
  [(CKActionMenuWindow *)self setFrame:?];

  v13 = [(CKActionMenuWindow *)self actionMenuView];
  if (v13 != v48)
  {
    [v13 removeFromSuperview];
    [(CKActionMenuWindow *)self setActionMenuView:v48];
    [(CKActionMenuWindow *)self addSubview:v48];
    [MEMORY[0x1E69DD258] attemptRotationToDeviceOrientation];
  }

  [(CKActionMenuWindow *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [MEMORY[0x1E69DC668] sharedApplication];
  [v22 statusBarFrame];
  v24 = v23;

  if (CKMainScreenScale_once_61 != -1)
  {
    [CKActionMenuWindow presentActionMenuView:fromPoint:inView:animated:];
  }

  v25 = *&CKMainScreenScale_sMainScreenScale_61;
  v26 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_61 == 0.0)
  {
    v25 = 1.0;
  }

  v27 = ceil(v25 * 4.0) / v25;
  v28 = *&CKMainScreenScale_sMainScreenScale_61;
  if (*&CKMainScreenScale_sMainScreenScale_61 == 0.0)
  {
    v28 = 1.0;
  }

  v29 = v24 + ceil(v28 * 4.0) / v28 * 0.5;
  if (v27 < v29)
  {
    v27 = v29;
  }

  *&v30.f64[0] = CKMainScreenScale_sMainScreenScale_61;
  if (*&CKMainScreenScale_sMainScreenScale_61 != 0.0)
  {
    v26 = *&CKMainScreenScale_sMainScreenScale_61;
  }

  *&v30.f64[1] = CKMainScreenScale_sMainScreenScale_61;
  __asm { FMOV            V4.2D, #1.0 }

  v36 = vbslq_s8(vceqzq_f64(v30), _Q4, v30);
  __asm { FMOV            V3.2D, #4.0 }

  v38 = vdivq_f64(vrndpq_f64(vmulq_f64(v36, _Q3)), v36);
  v39 = v15 + v38.f64[0];
  v40 = v17 + v27;
  v41 = v19 - vaddvq_f64(v38);
  v42 = v21 - (v27 + ceil(v26 * 4.0) / v26);
  [(CKActionMenuWindow *)self convertPoint:v11 fromView:x, y];
  v44 = v43;
  v46 = v45;

  [v48 presentActionMenuViewFromPoint:v6 inRect:0 animated:v44 completion:{v46, v39, v40, v41, v42}];
  [(CKActionMenuWindow *)self setHidden:0];
  v47 = [(CKActionMenuWindow *)self actionMenuView];
  [(CKActionMenuWindow *)self bringSubviewToFront:v47];
}

- (void)dismissActionMenuViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKActionMenuWindow *)self actionMenuView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CKActionMenuWindow_dismissActionMenuViewAnimated___block_invoke;
  v7[3] = &unk_1E72ECCA8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [v6 dismissActionMenuViewAnimated:v3 completion:v7];
}

void __52__CKActionMenuWindow_dismissActionMenuViewAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) actionMenuView];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    [*(a1 + 40) setActionMenuView:0];
    v4 = *(a1 + 40);

    [v4 setHidden:1];
  }
}

- (void)actionMenuGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = [(CKActionMenuWindow *)self actionMenuView];
  [v5 actionMenuGestureRecognized:v4];
}

@end