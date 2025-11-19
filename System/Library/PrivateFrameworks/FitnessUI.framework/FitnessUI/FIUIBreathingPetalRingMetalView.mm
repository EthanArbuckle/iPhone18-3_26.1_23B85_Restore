@interface FIUIBreathingPetalRingMetalView
- (CGPoint)ringCenter;
- (FIUIBreathingPetalRingMetalView)initWithFrame:(CGRect)a3 petalColor:(int64_t)a4 numberOfPetals:(int64_t)a5 showBlurTrails:(BOOL)a6 device:(id)a7;
- (FIUIDeepBreathingPetalRingViewDelegate)petalRingDelegate;
- (void)importDataFromPetalRing:(id)a3;
- (void)layoutSubviews;
@end

@implementation FIUIBreathingPetalRingMetalView

- (FIUIBreathingPetalRingMetalView)initWithFrame:(CGRect)a3 petalColor:(int64_t)a4 numberOfPetals:(int64_t)a5 showBlurTrails:(BOOL)a6 device:(id)a7
{
  v7 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a7;
  v32.receiver = self;
  v32.super_class = FIUIBreathingPetalRingMetalView;
  v16 = [(FIUIBreathingPetalRingMetalView *)&v32 initWithFrame:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    [(FIUIBreathingPetalRingMetalView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FIUIBreathingPetalRingMetalView *)v17 setAutoresizingMask:18];
    [(FIUIBreathingPetalRingMetalView *)v17 setAutoresizesSubviews:1];
    v17->_numberOfPetals = a5;
    v17->_showBlurTrails = v7;
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = MTLCreateSystemDefaultDevice();
    }

    v19 = v18;
    v20 = [objc_alloc(MEMORY[0x1E6974440]) initWithFrame:v18 device:{x, y, width, height}];
    mtkView = v17->_mtkView;
    v17->_mtkView = v20;

    v22 = [MEMORY[0x1E69DC888] clearColor];
    [(MTKView *)v17->_mtkView setBackgroundColor:v22];

    [(MTKView *)v17->_mtkView setFramebufferOnly:1];
    v23 = [[FIUIBreathingPetalRingMetalRenderer alloc] initWithMetalKitView:v17->_mtkView petalColor:a4 numberOfPetals:a5 showBlurTrails:v7];
    renderer = v17->_renderer;
    v17->_renderer = v23;

    [(MTKView *)v17->_mtkView setDelegate:v17->_renderer];
    objc_initWeak(&location, v17);
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __97__FIUIBreathingPetalRingMetalView_initWithFrame_petalColor_numberOfPetals_showBlurTrails_device___block_invoke;
    v29 = &unk_1E878BDC0;
    objc_copyWeak(&v30, &location);
    [(FIUIBreathingPetalRingMetalRenderer *)v17->_renderer setStateUpdateBlock:&v26];
    [(FIUIBreathingPetalRingMetalView *)v17 addSubview:v17->_mtkView, v26, v27, v28, v29];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __97__FIUIBreathingPetalRingMetalView_initWithFrame_petalColor_numberOfPetals_showBlurTrails_device___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained petalRingDelegate];
  [v1 petalRingViewDisplayLinkDidFire:WeakRetained];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = FIUIBreathingPetalRingMetalView;
  [(FIUIBreathingPetalRingMetalView *)&v12 layoutSubviews];
  [(FIUIBreathingPetalRingMetalView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(FIUIBreathingPetalRingMetalView *)self mtkView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (CGPoint)ringCenter
{
  [(FIUIBreathingPetalRingMetalRenderer *)self->_renderer ringCenter];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)importDataFromPetalRing:(id)a3
{
  if (a3)
  {
    [(FIUIBreathingPetalRingMetalRenderer *)self->_renderer importDataFromPetalRingMetalRenderer:*(a3 + 55)];
  }
}

- (FIUIDeepBreathingPetalRingViewDelegate)petalRingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_petalRingDelegate);

  return WeakRetained;
}

@end