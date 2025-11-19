@interface PBUIBokehWallpaperView
- (BOOL)_layerIsOutOfBounds:(id)a3;
- (BOOL)_lowPowerModeIsEnabled;
- (BOOL)_thermalStateIsCritical;
- (BOOL)isDisplayingWallpaperWithConfiguration:(id)a3 forVariant:(int64_t)a4;
- (CAGradientLayer)layer;
- (PBUIBokehWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8;
- (__IOSurface)_createSnapshotBuffer;
- (id)_generateImageFromImage:(id)a3 forBackdropParameters:(id *)a4 includeTint:(BOOL)a5 traitCollection:(id)a6;
- (id)snapshotImage;
- (int64_t)userInterfaceStyle;
- (void)_addBokehCircles:(int64_t)a3 inBounds:(CGRect)a4;
- (void)_correctGyroValues:(double *)a3 y:(double *)a4;
- (void)_destroyDisplayLink;
- (void)_handleVariantChange;
- (void)_initDisplayLink;
- (void)_screenDidUpdate:(id)a3;
- (void)_thermalStateDidChange:(id)a3;
- (void)_toggleCircleAnimations:(BOOL)a3;
- (void)_updateGradientAndFillColor;
- (void)_updateOrientationIfNeeded;
- (void)_updateVariantStatus;
- (void)_wallpaperDidChange:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setWallpaperAnimationEnabled:(BOOL)a3;
@end

@implementation PBUIBokehWallpaperView

- (void)_updateGradientAndFillColor
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_options objectForKey:@"bokehVariant"];
  v4 = [v3 stringValue];

  v5 = [PBUIBokehColorArbiter bokehColorForVariant:v4];
  v6 = [PBUIBokehColorArbiter gradientColorsForBokehColor:v5];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__PBUIBokehWallpaperView__updateGradientAndFillColor__block_invoke;
  v20[3] = &unk_278361E18;
  v20[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v20];
  if (v5 != self->_circleFillColor)
  {
    self->_circleFillColor = v5;
    v7 = [PBUIBokehColorArbiter legibilityColorForBokehColor:v5];
    [(PBUIWallpaperView *)self updateLegibilitySettingsForAverageColor:v7];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = self->_circleArray;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v16 + 1) + 8 * v12++) setColor:{self->_circleFillColor, v16}];
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v13 = [(PBUIBokehWallpaperView *)self layer];
  v14 = [v13 colors];

  if (v6 != v14)
  {
    v15 = [(PBUIBokehWallpaperView *)self layer];
    [v15 setColors:v6];
  }

  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __53__PBUIBokehWallpaperView__updateGradientAndFillColor__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 648) != 1 || *(v2 + 650) == 1)
  {
    v3 = *(v2 + 632);
    *(v2 + 632) = 0;

    v4 = *(v1 + 32);

    return [v4 _notifyBlursInvalidated];
  }

  return result;
}

- (int64_t)userInterfaceStyle
{
  v3 = [MEMORY[0x277D75CF0] sharedInstance];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currentStyle];
  }

  else
  {
    v6 = [(PBUIBokehWallpaperView *)self traitCollection];
    v5 = [v6 userInterfaceStyle];
  }

  return v5;
}

- (void)_initDisplayLink
{
  if (!self->_displayLink)
  {
    v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__screenDidUpdate_];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    v5 = self->_displayLink;
    v9 = CAFrameRateRangeMake(20.0, 60.0, 30.0);
    [(CADisplayLink *)v5 setPreferredFrameRateRange:*&v9.minimum, *&v9.maximum, *&v9.preferred];
    v6 = self->_displayLink;
    v7 = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:v7 forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)_destroyDisplayLink
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (__IOSurface)_createSnapshotBuffer
{
  v13[5] = *MEMORY[0x277D85DE8];
  [(PBUIBokehWallpaperView *)self frame];
  v4 = v3;
  v12[0] = *MEMORY[0x277CD2B88];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v2];
  v13[0] = v5;
  v12[1] = *MEMORY[0x277CD2A28];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v13[1] = v6;
  v12[2] = *MEMORY[0x277CD2A70];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1111970369];
  v13[2] = v7;
  v12[3] = *MEMORY[0x277CD2960];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:4];
  v12[4] = *MEMORY[0x277CD2970];
  v13[3] = v8;
  v13[4] = &unk_282FD5CE0;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];

  v10 = IOSurfaceCreate(v9);
  return v10;
}

- (PBUIBokehWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 variant:(int64_t)a5 cacheGroup:(id)a6 delegate:(id)a7 options:(unint64_t)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v50.receiver = self;
  v50.super_class = PBUIBokehWallpaperView;
  v18 = [(PBUIWallpaperView *)&v50 initWithFrame:v17 configuration:a5 variant:a6 cacheGroup:a7 delegate:a8 options:x, y, width, height];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_10;
  }

  v20 = [(PBUIBokehWallpaperView *)v18 layer];
  [v20 setSortsSublayers:1];

  v19->_snapshotBuffer = [(PBUIBokehWallpaperView *)v19 _createSnapshotBuffer];
  v19->_contentIsVisible = 1;
  [(PBUIBokehWallpaperView *)v19 _handleVariantChange];
  v21 = [v17 proceduralWallpaperOptions];
  options = v19->_options;
  v19->_options = v21;

  v23 = [MEMORY[0x277CCA8D8] mainBundle];
  v24 = [v23 bundleIdentifier];
  if ([v24 isEqualToString:@"com.apple.springboard"])
  {

LABEL_5:
    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    [v28 addObserver:v19 selector:sel__screenDimmed_ name:@"SBLockScreenDimmedNotification" object:0];

    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 addObserver:v19 selector:sel__screenUndimmed_ name:@"SBLockScreenUndimmedNotification" object:0];

    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:v19 selector:sel__wallpaperDidChange_ name:@"SBFWallpaperDidChangeNotification" object:0];

    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 addObserver:v19 selector:sel__thermalStateDidChange_ name:*MEMORY[0x277CCA600] object:0];

    goto LABEL_6;
  }

  v25 = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [v25 bundleIdentifier];
  v27 = [v26 isEqualToString:@"com.apple.PaperBoard"];

  if (v27)
  {
    goto LABEL_5;
  }

LABEL_6:
  v32 = [MEMORY[0x277CBEB18] array];
  circleArray = v19->_circleArray;
  v19->_circleArray = v32;

  [(PBUIBokehWallpaperView *)v19 _updateGradientAndFillColor];
  [(PBUIBokehWallpaperView *)v19 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = [MEMORY[0x277D75418] currentDevice];
  v43 = [v42 userInterfaceIdiom];

  if (v43 == 1)
  {
    UIRectCenteredRect();
    v35 = v44;
    v37 = v45;
    v39 = v46;
    v41 = v47;
    v48 = v47 / 22.0 * 1.3;
  }

  else
  {
    v48 = v41 / 28.0;
  }

  [(PBUIBokehWallpaperView *)v19 _addBokehCircles:v48 inBounds:v35, v37, v39, v41];
  [(PBUIWallpaperView *)v19 setParallaxEnabled:0];
  [(PBUIBokehWallpaperView *)v19 _toggleCircleAnimations:0];
  [(PBUIBokehWallpaperView *)v19 setWallpaperAnimationEnabled:1];
  v19->_blursNeedInvalidation = 1;
LABEL_10:

  return v19;
}

- (CAGradientLayer)layer
{
  v4.receiver = self;
  v4.super_class = PBUIBokehWallpaperView;
  v2 = [(PBUIBokehWallpaperView *)&v4 layer];

  return v2;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PBUIBokehWallpaperView;
  [(PBUIWallpaperView *)&v3 didMoveToWindow];
  if ([(PBUIWallpaperView *)self wallpaperAnimationEnabled])
  {
    [(PBUIBokehWallpaperView *)self setWallpaperAnimationEnabled:1];
  }
}

- (void)_addBokehCircles:(int64_t)a3 inBounds:(CGRect)a4
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v9 = a3;
    do
    {
      v10 = [[PBUIBokehWallpaperCircle alloc] initWithSuperviewBounds:self->_circleFillColor color:x, y, width, height];
      [(NSMutableArray *)self->_circleArray addObject:v10];

      --v9;
    }

    while (v9);
  }

  v11 = [(PBUIBokehWallpaperView *)self layer:a4.origin.x];
  [v11 setAllowsGroupBlending:0];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v12 = [(PBUIBokehWallpaperView *)self _lowPowerModeIsEnabled];
  v13 = [(PBUIBokehWallpaperView *)self _thermalStateIsCritical];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_circleArray;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    v18 = *MEMORY[0x277CDA548];
    v19 = v12 || v13;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v23 + 1) + 8 * i);
        [v21 randomize];
        [v21 setCompositingFilter:v18];
        if (v19)
        {
          [v21 configureAnimationsWithPhase:{((vcvts_n_f32_s32(rand(), 0x1FuLL) * 26.0) + 8.0)}];
        }

        v22 = [(PBUIBokehWallpaperView *)self layer];
        [v22 addSublayer:v21];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (BOOL)_layerIsOutOfBounds:(id)a3
{
  v3 = a3;
  [v3 superviewBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 size];
  v13 = -v12;
  [v3 size];
  v15 = -v14;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v27 = CGRectInset(v26, v13, v15);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  [v3 position];
  v21 = v20;
  v23 = v22;

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v25.x = v21;
  v25.y = v23;
  return !CGRectContainsPoint(v28, v25);
}

- (void)_correctGyroValues:(double *)a3 y:(double *)a4
{
  v6 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  if (v6 == 4)
  {
    v7 = *a3;
    *a3 = *a4;
LABEL_7:
    v8 = -v7;
    goto LABEL_8;
  }

  if (v6 != 3)
  {
    if (v6 != 2)
    {
      return;
    }

    *a3 = -*a3;
    v7 = *a4;
    goto LABEL_7;
  }

  v8 = *a3;
  *a3 = -*a4;
LABEL_8:
  *a4 = v8;
}

- (void)_thermalStateDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PBUIBokehWallpaperView__thermalStateDidChange___block_invoke;
  block[3] = &unk_278361E18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __49__PBUIBokehWallpaperView__thermalStateDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 thermalState] != 3;

  v4 = *(a1 + 32);

  return [v4 setWallpaperAnimationEnabled:v3];
}

- (BOOL)_lowPowerModeIsEnabled
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  if ([v3 isEqualToString:@"com.apple.springboard"])
  {

LABEL_4:
    v7 = [MEMORY[0x277CCAC38] processInfo];
    v8 = [v7 isLowPowerModeEnabled];

    return v8;
  }

  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.PaperBoard"];

  if (v6)
  {
    goto LABEL_4;
  }

  return 0;
}

- (BOOL)_thermalStateIsCritical
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  if ([v3 isEqualToString:@"com.apple.springboard"])
  {
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 isEqualToString:@"com.apple.PaperBoard"];

    if (!v6)
    {
      return 0;
    }
  }

  v7 = [MEMORY[0x277CCAC38] processInfo];
  v8 = [v7 thermalState] == 3;

  return v8;
}

- (void)setWallpaperAnimationEnabled:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = PBUIBokehWallpaperView;
  [(PBUIWallpaperView *)&v13 setWallpaperAnimationEnabled:?];
  if ([(PBUIWallpaperView *)self _isVisible])
  {
    if (!v3 || self->_contentIsVisible)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
LABEL_9:
    if ([(PBUIWallpaperView *)self _isVisible])
    {
      cachedSnapshotImage = self->_cachedSnapshotImage;
      self->_cachedSnapshotImage = 0;

      v11 = [(PBUIBokehWallpaperView *)self snapshotImage];
      v12 = self->_cachedSnapshotImage;
      self->_cachedSnapshotImage = v11;
    }

    if ((((self->_displayLink == 0) ^ v3) & 1) == 0)
    {
      if (self->_blursNeedInvalidation)
      {
        [(PBUIWallpaperView *)self _notifyBlursInvalidated];
        self->_blursNeedInvalidation = 0;
      }

      if (v3)
      {
        if (self->_contentIsVisible && ![(PBUIBokehWallpaperView *)self _lowPowerModeIsEnabled]&& ![(PBUIBokehWallpaperView *)self _thermalStateIsCritical])
        {
          [(PBUIBokehWallpaperView *)self _toggleCircleAnimations:1];
          [(PBUIBokehWallpaperView *)self _initDisplayLink];
        }
      }

      else
      {
        [(PBUIBokehWallpaperView *)self _destroyDisplayLink];
        [(PBUIBokehWallpaperView *)self _toggleCircleAnimations:0];
      }
    }

    return;
  }

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleIdentifier];
  if ([v6 isEqualToString:@"com.apple.springboard"])
  {

    return;
  }

  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.PaperBoard"];

  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }
}

- (void)_toggleCircleAnimations:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_circleArray;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAnimationsEnabled:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateOrientationIfNeeded
{
  if (self->_snapshotBuffer)
  {
    [(PBUIBokehWallpaperView *)self frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    IOSurfaceGetWidth(self->_snapshotBuffer);
    IOSurfaceGetHeight(self->_snapshotBuffer);
    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    CGRectGetWidth(v17);
    v11 = v4;
    v12 = v6;
    v13 = v8;
    v14 = v10;

    CGRectGetHeight(*&v11);
  }

  else
  {
    self->_snapshotBuffer = [(PBUIBokehWallpaperView *)self _createSnapshotBuffer];
    cachedSnapshotImage = self->_cachedSnapshotImage;
    self->_cachedSnapshotImage = 0;
  }
}

- (void)_handleVariantChange
{
  v4.receiver = self;
  v4.super_class = PBUIBokehWallpaperView;
  [(PBUIWallpaperView *)&v4 _handleVariantChange];
  v3 = [(PBUIWallpaperView *)self variant]== 0;
  if (self->_isOnLockScreen != v3)
  {
    self->_isOnLockScreen = v3;
  }

  [(PBUIBokehWallpaperView *)self _updateVariantStatus];
}

- (void)_screenDidUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PBUIWallpaperView *)self _isVisible])
  {
    cachedSnapshotImage = self->_cachedSnapshotImage;
    self->_cachedSnapshotImage = 0;

    self->_blursNeedInvalidation = 1;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setAnimationDuration:0.699999988];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_circleArray;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([(PBUIBokehWallpaperView *)self _layerIsOutOfBounds:v11, v13])
          {
            [v11 randomize];
          }

          else
          {
            [v4 duration];
            [v11 updatePositionWithTime:self->_isOnLockScreen dx:? dy:? lockScreen:?];
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [MEMORY[0x277CD9FF0] commit];
  }

  else
  {
    if (self->_hasSingleVariant)
    {
      v12 = self->_cachedSnapshotImage;
      self->_cachedSnapshotImage = 0;

      self->_blursNeedInvalidation = 1;
    }

    [(PBUIBokehWallpaperView *)self setWallpaperAnimationEnabled:0];
  }
}

- (void)_wallpaperDidChange:(id)a3
{
  v11 = objc_alloc_init(PBUIWallpaperConfigurationManager);
  v4 = [(PBUIWallpaperConfigurationManager *)v11 wallpaperConfigurationForVariant:[(PBUIWallpaperView *)self variant] includingValuesForTypes:0 wallpaperMode:0];
  v5 = [v4 proceduralWallpaperOptions];
  v6 = [v5 objectForKey:@"bokehVariant"];
  v7 = [v6 stringValue];
  v8 = [(NSDictionary *)self->_options objectForKey:@"bokehVariant"];
  v9 = [v8 stringValue];
  v10 = [v7 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    objc_storeStrong(&self->_options, v5);
    [(PBUIBokehWallpaperView *)self _updateGradientAndFillColor];
  }
}

- (void)_updateVariantStatus
{
  v12 = objc_alloc_init(PBUIWallpaperConfigurationManager);
  v3 = [(PBUIWallpaperConfigurationManager *)v12 wallpaperConfigurationForVariant:0 includingValuesForTypes:0 wallpaperMode:0];
  v4 = [v3 proceduralWallpaperOptions];
  v5 = [v4 objectForKey:@"bokehVariant"];
  v6 = [v5 stringValue];

  v7 = [(PBUIWallpaperConfigurationManager *)v12 wallpaperConfigurationForVariant:1 includingValuesForTypes:0 wallpaperMode:0];
  v8 = [v7 proceduralWallpaperOptions];
  v9 = [v8 objectForKey:@"bokehVariant"];
  v10 = [v9 stringValue];

  v11 = [v10 isEqualToString:v6];
  if (self->_hasSingleVariant != v11)
  {
    self->_hasSingleVariant = v11;
  }
}

- (id)_generateImageFromImage:(id)a3 forBackdropParameters:(id *)a4 includeTint:(BOOL)a5 traitCollection:(id)a6
{
  v7 = a5;
  v33[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = v11;
  var7 = a4->var7;
  if (var7 == 1)
  {
    v16 = MEMORY[0x277D75C80];
    v33[0] = v11;
    v17 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v33[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v19 = [v16 traitCollectionWithTraitsFromCollections:v18];

    v12 = v19;
    goto LABEL_13;
  }

  if (var7)
  {
LABEL_13:
    a4->var3 = 1.79769313e308;
    v20 = [PBUIBokehColorArbiter colorSwatchForBokehColor:?];

    v27.receiver = self;
    v27.super_class = PBUIBokehWallpaperView;
    v21 = *&a4->var2;
    v28 = *&a4->var0;
    v29 = v21;
    v22 = *&a4->var6;
    v30 = *&a4->var4;
    v31 = v22;
    v23 = [(PBUIWallpaperView *)&v27 _generateImageFromImage:v20 forBackdropParameters:&v28 includeTint:v7 traitCollection:v12];
    v10 = v20;
    goto LABEL_16;
  }

  if (a4->var0 == -2 && a4->var1 == *MEMORY[0x277D77370] && !a4->var2 && ((var3 = a4->var3, var3 == 1.79769313e308) || var3 == 0.0) && a4->var4 == 1.79769313e308 && a4->var5 == 1.79769313e308 && a4->var6 == 1.79769313e308)
  {
    v15 = [(PBUIBokehWallpaperView *)self snapshotImage];
  }

  else
  {
    v32.receiver = self;
    v32.super_class = PBUIBokehWallpaperView;
    v24 = *&a4->var2;
    v28 = *&a4->var0;
    v29 = v24;
    v25 = *&a4->var6;
    v30 = *&a4->var4;
    v31 = v25;
    v15 = [(PBUIWallpaperView *)&v32 _generateImageFromImage:v10 forBackdropParameters:&v28 includeTint:v7 traitCollection:v11];
  }

  v23 = v15;
LABEL_16:

  return v23;
}

- (id)snapshotImage
{
  cachedSnapshotImage = self->_cachedSnapshotImage;
  if (!cachedSnapshotImage)
  {
    [(PBUIBokehWallpaperView *)self _updateOrientationIfNeeded];
    v4 = MEMORY[0x277D755B8];
    v5 = [(PBUIBokehWallpaperView *)self layer];
    v6 = [v4 pbui_imageSnapshotFromLayer:v5 buffer:self->_snapshotBuffer];
    v7 = self->_cachedSnapshotImage;
    self->_cachedSnapshotImage = v6;

    cachedSnapshotImage = self->_cachedSnapshotImage;
  }

  return cachedSnapshotImage;
}

- (BOOL)isDisplayingWallpaperWithConfiguration:(id)a3 forVariant:(int64_t)a4
{
  v5 = a3;
  if ([v5 wallpaperType] == 2)
  {
    options = self->_options;
    v7 = [v5 proceduralWallpaperOptions];
    v8 = [(NSDictionary *)options isEqualToDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  if ([v4 isEqualToString:@"com.apple.springboard"])
  {

LABEL_4:
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 removeObserver:self name:@"SBLockScreenDimmedNotification" object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 removeObserver:self name:@"SBLockScreenUndimmedNotification" object:0];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 removeObserver:self name:@"SBWallpaperDidChangeNotification" object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 removeObserver:self name:*MEMORY[0x277CCA600] object:0];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 removeObserver:self name:*MEMORY[0x277CCA5E8] object:0];

    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.PaperBoard"];

  if (v7)
  {
    goto LABEL_4;
  }

LABEL_5:
  CFRelease(self->_snapshotBuffer);
  v13.receiver = self;
  v13.super_class = PBUIBokehWallpaperView;
  [(PBUIWallpaperView *)&v13 dealloc];
}

@end