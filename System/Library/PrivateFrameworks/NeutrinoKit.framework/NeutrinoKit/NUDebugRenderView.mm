@interface NUDebugRenderView
- (NUDebugRenderView)initWithFrame:(CGRect)a3;
- (void)_debugToggle:(id)a3;
- (void)_orientWithX:(double)a3 andY:(double)a4;
- (void)_resetOrientation:(id)a3;
- (void)_setupDeviceMotion;
- (void)_startDeviceMotion;
- (void)_stopDeviceMotion;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
- (void)setDebugMode:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation NUDebugRenderView

- (void)_setupDeviceMotion
{
  if ([(CMMotionManager *)self->_motionManager isDeviceMotionAvailable])
  {
    [(CMMotionManager *)self->_motionManager setDeviceMotionUpdateInterval:0.0166666667];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v10[3] = 0;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    objc_initWeak(&location, self);
    motionManager = self->_motionManager;
    v4 = [MEMORY[0x277CCABD8] mainQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__NUDebugRenderView__setupDeviceMotion__block_invoke;
    v5[3] = &unk_279974060;
    v5[4] = v10;
    v5[5] = v9;
    objc_copyWeak(&v6, &location);
    v7 = xmmword_25BD44910;
    [(CMMotionManager *)motionManager startDeviceMotionUpdatesUsingReferenceFrame:2 toQueue:v4 withHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
    _Block_object_dispose(v9, 8);
    _Block_object_dispose(v10, 8);
  }
}

void __39__NUDebugRenderView__setupDeviceMotion__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    [a2 rotationRate];
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) - v5 * 0.1;
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v6 * 0.1;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _orientWithX:*(a1 + 56) + *(*(*(a1 + 32) + 8) + 24) andY:*(a1 + 64) + *(*(*(a1 + 40) + 8) + 24)];
  }
}

- (void)_stopDeviceMotion
{
  [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
  motionManager = self->_motionManager;
  self->_motionManager = 0;
}

- (void)_startDeviceMotion
{
  v3 = objc_alloc_init(MEMORY[0x277CC1CD8]);
  motionManager = self->_motionManager;
  self->_motionManager = v3;

  [(CMMotionManager *)self->_motionManager setShowsDeviceMovementDisplay:1];
  v5 = self->_motionManager;

  [(CMMotionManager *)v5 setDeviceMotionUpdateInterval:0.0166666667];
}

- (void)_resetOrientation:(id)a3
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.25];
  v4 = MEMORY[0x277CD9FF0];
  v5 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v4 setAnimationTimingFunction:v5];

  v6 = [(NURenderView *)self _containerLayer];
  v7 = *(MEMORY[0x277CD9DE8] + 80);
  v11[4] = *(MEMORY[0x277CD9DE8] + 64);
  v11[5] = v7;
  v8 = *(MEMORY[0x277CD9DE8] + 112);
  v11[6] = *(MEMORY[0x277CD9DE8] + 96);
  v11[7] = v8;
  v9 = *(MEMORY[0x277CD9DE8] + 16);
  v11[0] = *MEMORY[0x277CD9DE8];
  v11[1] = v9;
  v10 = *(MEMORY[0x277CD9DE8] + 48);
  v11[2] = *(MEMORY[0x277CD9DE8] + 32);
  v11[3] = v10;
  [v6 setSublayerTransform:v11];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)_orientWithX:(double)a3 andY:(double)a4
{
  [(NUDebugRenderView *)self bounds];
  Width = CGRectGetWidth(v28);
  [(NUDebugRenderView *)self bounds];
  Height = CGRectGetHeight(v29);
  if (Width >= Height)
  {
    Height = Width;
  }

  v9 = -1.0 / Height;
  [(NUDebugRenderView *)self bounds];
  v10 = CGRectGetWidth(v30);
  [(NUDebugRenderView *)self bounds];
  v11 = CGRectGetHeight(v31);
  if (v10 >= v11)
  {
    v11 = v10;
  }

  v12 = *(MEMORY[0x277CD9DE8] + 48);
  *&v18.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v18.m23 = v12;
  *&v18.m31 = *(MEMORY[0x277CD9DE8] + 64);
  v18.m33 = *(MEMORY[0x277CD9DE8] + 80);
  v13 = *(MEMORY[0x277CD9DE8] + 16);
  *&v18.m11 = *MEMORY[0x277CD9DE8];
  *&v18.m13 = v13;
  v18.m34 = v9;
  v14 = *(MEMORY[0x277CD9DE8] + 112);
  *&v18.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v18.m43 = v14;
  CATransform3DTranslate(&v19, &v18, 0.0, 0.0, -v11);
  v24 = *&v19.m21;
  v25 = *&v19.m23;
  v26 = *&v19.m31;
  m33 = v19.m33;
  v22 = *&v19.m11;
  v23 = *&v19.m13;
  v20 = *&v19.m41;
  v21 = *&v19.m43;
  v18 = v19;
  CATransform3DRotate(&v19, &v18, a3, 0.0, 1.0, 0.0);
  v24 = *&v19.m21;
  v25 = *&v19.m23;
  v26 = *&v19.m31;
  m33 = v19.m33;
  v22 = *&v19.m11;
  v23 = *&v19.m13;
  v20 = *&v19.m41;
  v21 = *&v19.m43;
  v18 = v19;
  CATransform3DRotate(&v19, &v18, a4, 1.0, 0.0, 0.0);
  v24 = *&v19.m21;
  v25 = *&v19.m23;
  v26 = *&v19.m31;
  m33 = v19.m33;
  v22 = *&v19.m11;
  v23 = *&v19.m13;
  m34 = v19.m34;
  v20 = *&v19.m41;
  v21 = *&v19.m43;
  v16 = [(NURenderView *)self _roiLayer];
  [v16 setZPosition:200.0];

  v17 = [(NURenderView *)self _containerLayer];
  *&v19.m21 = v24;
  *&v19.m23 = v25;
  *&v19.m31 = v26;
  v19.m33 = m33;
  *&v19.m11 = v22;
  *&v19.m13 = v23;
  v19.m34 = m34;
  *&v19.m41 = v20;
  *&v19.m43 = v21;
  [v17 setSublayerTransform:&v19];
}

- (void)_debugToggle:(id)a3
{
  showDebug = self->_showDebug;
  if ([a3 state] == 1)
  {

    [(NUDebugRenderView *)self setDebugMode:!showDebug];
  }
}

- (void)setDebugMode:(BOOL)a3
{
  if (self->_showDebug != a3)
  {
    v8.receiver = self;
    v8.super_class = NUDebugRenderView;
    [(NURenderView *)&v8 setDebugMode:?];
    self->_showDebug = a3;
    v5 = [(NURenderView *)self _roiLayer];
    v6 = v5;
    if (self->_showDebug)
    {
      [v5 setBorderWidth:2.0];
      v7 = [MEMORY[0x277D75348] whiteColor];
      [v6 setBorderColor:{objc_msgSend(v7, "CGColor")}];

      [(NUDebugRenderView *)self _startDeviceMotion];
      [(NUDebugRenderView *)self _setupDeviceMotion];
    }

    else
    {
      [(NUDebugRenderView *)self _stopDeviceMotion];
      [v6 setBorderWidth:0.0];
      [(NUDebugRenderView *)self _resetOrientation:0];
    }
  }
}

- (void)dealloc
{
  [(NUDebugRenderView *)self _stopDeviceMotion];
  v3.receiver = self;
  v3.super_class = NUDebugRenderView;
  [(NUDebugRenderView *)&v3 dealloc];
}

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = NUDebugRenderView;
  [(NUDebugRenderView *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setBounds:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = NUDebugRenderView;
  [(NUDebugRenderView *)&v3 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (NUDebugRenderView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = NUDebugRenderView;
  v3 = [(NURenderView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v3 action:sel__debugToggle_];
    doubleTap = v3->_doubleTap;
    v3->_doubleTap = v4;

    [(UILongPressGestureRecognizer *)v3->_doubleTap setNumberOfTouchesRequired:3];
    [(NUDebugRenderView *)v3 addGestureRecognizer:v3->_doubleTap];
    if ([MEMORY[0x277D2CFB8] isViewDebugEnabled])
    {
      v8.receiver = v3;
      v8.super_class = NUDebugRenderView;
      [(NURenderView *)&v8 setDebugMode:1];
    }

    v6 = v3;
  }

  return v3;
}

@end