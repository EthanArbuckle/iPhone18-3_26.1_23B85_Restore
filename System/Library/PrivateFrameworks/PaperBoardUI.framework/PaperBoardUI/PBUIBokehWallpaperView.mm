@interface PBUIBokehWallpaperView
- (BOOL)_layerIsOutOfBounds:(id)bounds;
- (BOOL)_lowPowerModeIsEnabled;
- (BOOL)_thermalStateIsCritical;
- (BOOL)isDisplayingWallpaperWithConfiguration:(id)configuration forVariant:(int64_t)variant;
- (CAGradientLayer)layer;
- (PBUIBokehWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options;
- (__IOSurface)_createSnapshotBuffer;
- (id)_generateImageFromImage:(id)image forBackdropParameters:(id *)parameters includeTint:(BOOL)tint traitCollection:(id)collection;
- (id)snapshotImage;
- (int64_t)userInterfaceStyle;
- (void)_addBokehCircles:(int64_t)circles inBounds:(CGRect)bounds;
- (void)_correctGyroValues:(double *)values y:(double *)y;
- (void)_destroyDisplayLink;
- (void)_handleVariantChange;
- (void)_initDisplayLink;
- (void)_screenDidUpdate:(id)update;
- (void)_thermalStateDidChange:(id)change;
- (void)_toggleCircleAnimations:(BOOL)animations;
- (void)_updateGradientAndFillColor;
- (void)_updateOrientationIfNeeded;
- (void)_updateVariantStatus;
- (void)_wallpaperDidChange:(id)change;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setWallpaperAnimationEnabled:(BOOL)enabled;
@end

@implementation PBUIBokehWallpaperView

- (void)_updateGradientAndFillColor
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_options objectForKey:@"bokehVariant"];
  stringValue = [v3 stringValue];

  v5 = [PBUIBokehColorArbiter bokehColorForVariant:stringValue];
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

  layer = [(PBUIBokehWallpaperView *)self layer];
  colors = [layer colors];

  if (v6 != colors)
  {
    layer2 = [(PBUIBokehWallpaperView *)self layer];
    [layer2 setColors:v6];
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
  mEMORY[0x277D75CF0] = [MEMORY[0x277D75CF0] sharedInstance];
  v4 = mEMORY[0x277D75CF0];
  if (mEMORY[0x277D75CF0])
  {
    currentStyle = [mEMORY[0x277D75CF0] currentStyle];
  }

  else
  {
    traitCollection = [(PBUIBokehWallpaperView *)self traitCollection];
    currentStyle = [traitCollection userInterfaceStyle];
  }

  return currentStyle;
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
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
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

- (PBUIBokehWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v50.receiver = self;
  v50.super_class = PBUIBokehWallpaperView;
  height = [(PBUIWallpaperView *)&v50 initWithFrame:configurationCopy configuration:variant variant:group cacheGroup:delegate delegate:options options:x, y, width, height];
  v19 = height;
  if (!height)
  {
    goto LABEL_10;
  }

  layer = [(PBUIBokehWallpaperView *)height layer];
  [layer setSortsSublayers:1];

  v19->_snapshotBuffer = [(PBUIBokehWallpaperView *)v19 _createSnapshotBuffer];
  v19->_contentIsVisible = 1;
  [(PBUIBokehWallpaperView *)v19 _handleVariantChange];
  proceduralWallpaperOptions = [configurationCopy proceduralWallpaperOptions];
  options = v19->_options;
  v19->_options = proceduralWallpaperOptions;

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.springboard"])
  {

LABEL_5:
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__screenDimmed_ name:@"SBLockScreenDimmedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v19 selector:sel__screenUndimmed_ name:@"SBLockScreenUndimmedNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v19 selector:sel__wallpaperDidChange_ name:@"SBFWallpaperDidChangeNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v19 selector:sel__thermalStateDidChange_ name:*MEMORY[0x277CCA600] object:0];

    goto LABEL_6;
  }

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier2 = [mainBundle2 bundleIdentifier];
  v27 = [bundleIdentifier2 isEqualToString:@"com.apple.PaperBoard"];

  if (v27)
  {
    goto LABEL_5;
  }

LABEL_6:
  array = [MEMORY[0x277CBEB18] array];
  circleArray = v19->_circleArray;
  v19->_circleArray = array;

  [(PBUIBokehWallpaperView *)v19 _updateGradientAndFillColor];
  [(PBUIBokehWallpaperView *)v19 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
  layer = [(PBUIBokehWallpaperView *)&v4 layer];

  return layer;
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

- (void)_addBokehCircles:(int64_t)circles inBounds:(CGRect)bounds
{
  v28 = *MEMORY[0x277D85DE8];
  if (circles >= 1)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    circlesCopy = circles;
    do
    {
      height = [[PBUIBokehWallpaperCircle alloc] initWithSuperviewBounds:self->_circleFillColor color:x, y, width, height];
      [(NSMutableArray *)self->_circleArray addObject:height];

      --circlesCopy;
    }

    while (circlesCopy);
  }

  v11 = [(PBUIBokehWallpaperView *)self layer:bounds.origin.x];
  [v11 setAllowsGroupBlending:0];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  _lowPowerModeIsEnabled = [(PBUIBokehWallpaperView *)self _lowPowerModeIsEnabled];
  _thermalStateIsCritical = [(PBUIBokehWallpaperView *)self _thermalStateIsCritical];
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
    v19 = _lowPowerModeIsEnabled || _thermalStateIsCritical;
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

        layer = [(PBUIBokehWallpaperView *)self layer];
        [layer addSublayer:v21];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (BOOL)_layerIsOutOfBounds:(id)bounds
{
  boundsCopy = bounds;
  [boundsCopy superviewBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [boundsCopy size];
  v13 = -v12;
  [boundsCopy size];
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
  [boundsCopy position];
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

- (void)_correctGyroValues:(double *)values y:(double *)y
{
  activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  if (activeInterfaceOrientation == 4)
  {
    v7 = *values;
    *values = *y;
LABEL_7:
    v8 = -v7;
    goto LABEL_8;
  }

  if (activeInterfaceOrientation != 3)
  {
    if (activeInterfaceOrientation != 2)
    {
      return;
    }

    *values = -*values;
    v7 = *y;
    goto LABEL_7;
  }

  v8 = *values;
  *values = -*y;
LABEL_8:
  *y = v8;
}

- (void)_thermalStateDidChange:(id)change
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.springboard"])
  {

LABEL_4:
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    return isLowPowerModeEnabled;
  }

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier2 = [mainBundle2 bundleIdentifier];
  v6 = [bundleIdentifier2 isEqualToString:@"com.apple.PaperBoard"];

  if (v6)
  {
    goto LABEL_4;
  }

  return 0;
}

- (BOOL)_thermalStateIsCritical
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.springboard"])
  {
  }

  else
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v6 = [bundleIdentifier2 isEqualToString:@"com.apple.PaperBoard"];

    if (!v6)
    {
      return 0;
    }
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v8 = [processInfo thermalState] == 3;

  return v8;
}

- (void)setWallpaperAnimationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13.receiver = self;
  v13.super_class = PBUIBokehWallpaperView;
  [(PBUIWallpaperView *)&v13 setWallpaperAnimationEnabled:?];
  if ([(PBUIWallpaperView *)self _isVisible])
  {
    if (!enabledCopy || self->_contentIsVisible)
    {
      goto LABEL_9;
    }
  }

  else if (!enabledCopy)
  {
LABEL_9:
    if ([(PBUIWallpaperView *)self _isVisible])
    {
      cachedSnapshotImage = self->_cachedSnapshotImage;
      self->_cachedSnapshotImage = 0;

      snapshotImage = [(PBUIBokehWallpaperView *)self snapshotImage];
      v12 = self->_cachedSnapshotImage;
      self->_cachedSnapshotImage = snapshotImage;
    }

    if ((((self->_displayLink == 0) ^ enabledCopy) & 1) == 0)
    {
      if (self->_blursNeedInvalidation)
      {
        [(PBUIWallpaperView *)self _notifyBlursInvalidated];
        self->_blursNeedInvalidation = 0;
      }

      if (enabledCopy)
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

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.springboard"])
  {

    return;
  }

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier2 = [mainBundle2 bundleIdentifier];
  v9 = [bundleIdentifier2 isEqualToString:@"com.apple.PaperBoard"];

  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }
}

- (void)_toggleCircleAnimations:(BOOL)animations
{
  animationsCopy = animations;
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

        [*(*(&v9 + 1) + 8 * v8++) setAnimationsEnabled:{animationsCopy, v9}];
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

- (void)_screenDidUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
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
            [updateCopy duration];
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

- (void)_wallpaperDidChange:(id)change
{
  v11 = objc_alloc_init(PBUIWallpaperConfigurationManager);
  v4 = [(PBUIWallpaperConfigurationManager *)v11 wallpaperConfigurationForVariant:[(PBUIWallpaperView *)self variant] includingValuesForTypes:0 wallpaperMode:0];
  proceduralWallpaperOptions = [v4 proceduralWallpaperOptions];
  v6 = [proceduralWallpaperOptions objectForKey:@"bokehVariant"];
  stringValue = [v6 stringValue];
  v8 = [(NSDictionary *)self->_options objectForKey:@"bokehVariant"];
  stringValue2 = [v8 stringValue];
  v10 = [stringValue isEqualToString:stringValue2];

  if ((v10 & 1) == 0)
  {
    objc_storeStrong(&self->_options, proceduralWallpaperOptions);
    [(PBUIBokehWallpaperView *)self _updateGradientAndFillColor];
  }
}

- (void)_updateVariantStatus
{
  v12 = objc_alloc_init(PBUIWallpaperConfigurationManager);
  v3 = [(PBUIWallpaperConfigurationManager *)v12 wallpaperConfigurationForVariant:0 includingValuesForTypes:0 wallpaperMode:0];
  proceduralWallpaperOptions = [v3 proceduralWallpaperOptions];
  v5 = [proceduralWallpaperOptions objectForKey:@"bokehVariant"];
  stringValue = [v5 stringValue];

  v7 = [(PBUIWallpaperConfigurationManager *)v12 wallpaperConfigurationForVariant:1 includingValuesForTypes:0 wallpaperMode:0];
  proceduralWallpaperOptions2 = [v7 proceduralWallpaperOptions];
  v9 = [proceduralWallpaperOptions2 objectForKey:@"bokehVariant"];
  stringValue2 = [v9 stringValue];

  v11 = [stringValue2 isEqualToString:stringValue];
  if (self->_hasSingleVariant != v11)
  {
    self->_hasSingleVariant = v11;
  }
}

- (id)_generateImageFromImage:(id)image forBackdropParameters:(id *)parameters includeTint:(BOOL)tint traitCollection:(id)collection
{
  tintCopy = tint;
  v33[2] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  collectionCopy = collection;
  v12 = collectionCopy;
  var7 = parameters->var7;
  if (var7 == 1)
  {
    v16 = MEMORY[0x277D75C80];
    v33[0] = collectionCopy;
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
    parameters->var3 = 1.79769313e308;
    v20 = [PBUIBokehColorArbiter colorSwatchForBokehColor:?];

    v27.receiver = self;
    v27.super_class = PBUIBokehWallpaperView;
    v21 = *&parameters->var2;
    v28 = *&parameters->var0;
    v29 = v21;
    v22 = *&parameters->var6;
    v30 = *&parameters->var4;
    v31 = v22;
    v23 = [(PBUIWallpaperView *)&v27 _generateImageFromImage:v20 forBackdropParameters:&v28 includeTint:tintCopy traitCollection:v12];
    imageCopy = v20;
    goto LABEL_16;
  }

  if (parameters->var0 == -2 && parameters->var1 == *MEMORY[0x277D77370] && !parameters->var2 && ((var3 = parameters->var3, var3 == 1.79769313e308) || var3 == 0.0) && parameters->var4 == 1.79769313e308 && parameters->var5 == 1.79769313e308 && parameters->var6 == 1.79769313e308)
  {
    snapshotImage = [(PBUIBokehWallpaperView *)self snapshotImage];
  }

  else
  {
    v32.receiver = self;
    v32.super_class = PBUIBokehWallpaperView;
    v24 = *&parameters->var2;
    v28 = *&parameters->var0;
    v29 = v24;
    v25 = *&parameters->var6;
    v30 = *&parameters->var4;
    v31 = v25;
    snapshotImage = [(PBUIWallpaperView *)&v32 _generateImageFromImage:imageCopy forBackdropParameters:&v28 includeTint:tintCopy traitCollection:collectionCopy];
  }

  v23 = snapshotImage;
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
    layer = [(PBUIBokehWallpaperView *)self layer];
    v6 = [v4 pbui_imageSnapshotFromLayer:layer buffer:self->_snapshotBuffer];
    v7 = self->_cachedSnapshotImage;
    self->_cachedSnapshotImage = v6;

    cachedSnapshotImage = self->_cachedSnapshotImage;
  }

  return cachedSnapshotImage;
}

- (BOOL)isDisplayingWallpaperWithConfiguration:(id)configuration forVariant:(int64_t)variant
{
  configurationCopy = configuration;
  if ([configurationCopy wallpaperType] == 2)
  {
    options = self->_options;
    proceduralWallpaperOptions = [configurationCopy proceduralWallpaperOptions];
    v8 = [(NSDictionary *)options isEqualToDictionary:proceduralWallpaperOptions];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dealloc
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.springboard"])
  {

LABEL_4:
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"SBLockScreenDimmedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"SBLockScreenUndimmedNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 removeObserver:self name:@"SBWallpaperDidChangeNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 removeObserver:self name:*MEMORY[0x277CCA600] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 removeObserver:self name:*MEMORY[0x277CCA5E8] object:0];

    goto LABEL_5;
  }

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier2 = [mainBundle2 bundleIdentifier];
  v7 = [bundleIdentifier2 isEqualToString:@"com.apple.PaperBoard"];

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