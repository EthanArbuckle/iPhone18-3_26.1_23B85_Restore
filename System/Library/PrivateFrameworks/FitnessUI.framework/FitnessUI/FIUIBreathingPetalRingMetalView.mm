@interface FIUIBreathingPetalRingMetalView
- (CGPoint)ringCenter;
- (FIUIBreathingPetalRingMetalView)initWithFrame:(CGRect)frame petalColor:(int64_t)color numberOfPetals:(int64_t)petals showBlurTrails:(BOOL)trails device:(id)device;
- (FIUIDeepBreathingPetalRingViewDelegate)petalRingDelegate;
- (void)importDataFromPetalRing:(id)ring;
- (void)layoutSubviews;
@end

@implementation FIUIBreathingPetalRingMetalView

- (FIUIBreathingPetalRingMetalView)initWithFrame:(CGRect)frame petalColor:(int64_t)color numberOfPetals:(int64_t)petals showBlurTrails:(BOOL)trails device:(id)device
{
  trailsCopy = trails;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v32.receiver = self;
  v32.super_class = FIUIBreathingPetalRingMetalView;
  height = [(FIUIBreathingPetalRingMetalView *)&v32 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    [(FIUIBreathingPetalRingMetalView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FIUIBreathingPetalRingMetalView *)v17 setAutoresizingMask:18];
    [(FIUIBreathingPetalRingMetalView *)v17 setAutoresizesSubviews:1];
    v17->_numberOfPetals = petals;
    v17->_showBlurTrails = trailsCopy;
    if (deviceCopy)
    {
      v18 = deviceCopy;
    }

    else
    {
      v18 = MTLCreateSystemDefaultDevice();
    }

    v19 = v18;
    v20 = [objc_alloc(MEMORY[0x1E6974440]) initWithFrame:v18 device:{x, y, width, height}];
    mtkView = v17->_mtkView;
    v17->_mtkView = v20;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MTKView *)v17->_mtkView setBackgroundColor:clearColor];

    [(MTKView *)v17->_mtkView setFramebufferOnly:1];
    v23 = [[FIUIBreathingPetalRingMetalRenderer alloc] initWithMetalKitView:v17->_mtkView petalColor:color numberOfPetals:petals showBlurTrails:trailsCopy];
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
  mtkView = [(FIUIBreathingPetalRingMetalView *)self mtkView];
  [mtkView setFrame:{v4, v6, v8, v10}];
}

- (CGPoint)ringCenter
{
  [(FIUIBreathingPetalRingMetalRenderer *)self->_renderer ringCenter];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)importDataFromPetalRing:(id)ring
{
  if (ring)
  {
    [(FIUIBreathingPetalRingMetalRenderer *)self->_renderer importDataFromPetalRingMetalRenderer:*(ring + 55)];
  }
}

- (FIUIDeepBreathingPetalRingViewDelegate)petalRingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_petalRingDelegate);

  return WeakRetained;
}

@end