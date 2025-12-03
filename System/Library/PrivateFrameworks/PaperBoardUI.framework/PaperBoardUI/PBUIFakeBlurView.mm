@interface PBUIFakeBlurView
+ (id)_imageForStyle:(int64_t *)style withSource:(id)source overrideTraitCollection:(id)collection;
+ (void)_imageForStyle:(int64_t)style withSource:(id)source overrideTraitCollection:(id)collection result:(id)result;
- (BOOL)parallaxEnabledForVariant:(int64_t)variant;
- (BOOL)updateImageProviderView:(id)view withImage:(id)image;
- (NSString)description;
- (PBUIFakeBlurImageProviding)imageProvider;
- (PBUIFakeBlurObserver)observer;
- (PBUIFakeBlurView)initWithVariant:(int64_t)variant imageProvider:(id)provider fakeBlurRegistry:(id)registry wallpaperViewDelegate:(id)delegate transformOptions:(unint64_t)options reachabilityCoordinator:(id)coordinator;
- (PBUIFakeBlurView)initWithVariant:(int64_t)variant wallpaperViewController:(id)controller transformOptions:(unint64_t)options reachabilityCoordinator:(id)coordinator;
- (PBUIFakeBlurViewRegistering)fakeBlurRegistry;
- (PBUIWallpaperViewController)wallpaperViewController;
- (double)parallaxFactorForVariant:(int64_t)variant;
- (double)zoomFactorForVariant:(int64_t)variant;
- (id)_effectiveTraitCollectionForMode:(void *)mode;
- (id)imageForWallpaperStyle:(int64_t *)style variant:(int64_t)variant traitCollection:(id)collection;
- (void)_createOrRemoveMatchMoveAnimationIfNeeded;
- (void)_setImage:(uint64_t)image style:(int)style notify:;
- (void)_updateImageFromProviderWithTraitCollection:(uint64_t)collection;
- (void)_updateImageWithSource:(uint64_t)source overrideTraitCollection:(void *)collection notifyObserver:(void *)observer;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)handleReachabilityYOffsetDidChange;
- (void)layoutSubviews;
- (void)offsetWallpaperBy:(CGPoint)by;
- (void)reconfigureFromProvider;
- (void)reconfigureWithSource:(id)source;
- (void)requestStyle:(int64_t)style;
- (void)rotateToInterfaceOrientation:(int64_t)orientation;
- (void)setShouldMatchWallpaperPosition:(BOOL)position;
- (void)setTransformOptions:(unint64_t)options;
- (void)traitCollectionDidChange:(id)change;
- (void)updateImageFromProviderForWallpaperMode:(int64_t)mode;
- (void)updateImageWithSource:(id)source;
- (void)updateImageWithSource:(void *)source overrideTraitCollection:;
- (void)willMoveToWindow:(id)window;
@end

@implementation PBUIFakeBlurView

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = PBUIFakeBlurView;
  [(PBUIFakeBlurView *)&v27 layoutSubviews];
  [(UIView *)self->_providedImageView sizeToFit];
  [(PBUIFakeBlurView *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if (soft_PF_IS_PAD_DEVICE() && soft_PUIDynamicRotationIsActive() && height > width)
  {
    BSRectGetCenter();
    v12 = v11;
    v14 = v13;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    width = v16;
    height = v17;

    x = v12 - width * 0.5;
    y = v14 - height * 0.5;
  }

  reachabilityCoordinator = self->_reachabilityCoordinator;
  if (reachabilityCoordinator)
  {
    window = [(PBUIFakeBlurView *)self window];
    if (([(PBUIWallpaperReachabilityCoordinating *)reachabilityCoordinator isWindowIgnoredForReachability:window]& 1) != 0)
    {
    }

    else
    {
      shouldMatchWallpaperPosition = [(PBUIFakeBlurView *)self shouldMatchWallpaperPosition];

      if (shouldMatchWallpaperPosition)
      {
        [(PBUIWallpaperReachabilityCoordinating *)self->_reachabilityCoordinator effectiveReachabilityYOffset];
        v22 = -v21;
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v29 = CGRectOffset(v28, 0.0, v22);
        x = v29.origin.x;
        y = v29.origin.y;
        width = v29.size.width;
        height = v29.size.height;
      }
    }
  }

  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v31 = CGRectOffset(v30, self->_wallpaperOffset.x, self->_wallpaperOffset.y);
  v23 = v31.origin.x;
  v24 = v31.origin.y;
  v25 = v31.size.width;
  v26 = v31.size.height;
  [(PBUIWallpaperView *)self->_wallpaperView setFrame:?];
  [(PBUIWallpaperView *)self->_wallpaperView setNeedsLayout];
  [(PBUIReplicaDebugView *)self->_debugView setFrame:v23, v24, v25, v26];
}

- (void)reconfigureFromProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_imageProvider);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    transformOptions = [(PBUIFakeBlurView *)self transformOptions];
    variant = [(PBUIFakeBlurView *)self variant];
    wallpaperView = self->_wallpaperView;
    [v9 parallaxFactorForVariant:variant];
    [(PBUIWallpaperView *)wallpaperView setParallaxFactor:?];
    v7 = (transformOptions & 8) != 0 ? 0 : [v9 parallaxEnabledForVariant:variant];
    [(PBUIWallpaperView *)self->_wallpaperView setParallaxEnabled:v7];
    WeakRetained = v9;
    if ((transformOptions & 4) == 0)
    {
      v8 = self->_wallpaperView;
      [v9 zoomFactorForVariant:variant];
      [(PBUIWallpaperView *)v8 setZoomFactor:?];
      WeakRetained = v9;
    }
  }
}

- (void)_createOrRemoveMatchMoveAnimationIfNeeded
{
  v35[4] = *MEMORY[0x277D85DE8];
  if (self)
  {
    window = [self window];
    layer = [window layer];
    superlayer = [layer superlayer];

    v4Superlayer = [superlayer superlayer];

    if (v4Superlayer)
    {
      v4Superlayer = [superlayer superlayer];

      superlayer = v4Superlayer;
    }

    if (!superlayer)
    {
      goto LABEL_18;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"AlignFakeWallpaperToLayer-%p", superlayer];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_3() bounds];
    v7 = v6;
    v9 = v8;
    traitCollection = [self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == -1)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom2 = [currentDevice userInterfaceIdiom];

      v12 = (userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1;
    }

    else
    {
      v12 = userInterfaceIdiom == 0;
    }

    v15 = 0;
    if (v12 && v9 < v7)
    {
      v15 = soft_PUIFeatureEnabled(0);
    }

    v16 = self[440];
    layer2 = [self layer];
    v18 = layer2;
    if (v16 != 1 || (v15 & 1) != 0)
    {
      [layer2 removeAnimationForKey:v4Superlayer];
    }

    else
    {
      animationKeys = [layer2 animationKeys];
      v20 = [animationKeys containsObject:v4Superlayer];

      if (v20)
      {
LABEL_17:

LABEL_18:
        return;
      }

      [superlayer bounds];
      [self setFrame:?];
      [self layoutIfNeeded];
      v18 = objc_alloc_init(MEMORY[0x277CD9EE8]);
      [v18 setSourceLayer:superlayer];
      v21 = MEMORY[0x277CCAE60];
      v36.origin.x = OUTLINED_FUNCTION_0_0();
      MinX = CGRectGetMinX(v36);
      v37.origin.x = OUTLINED_FUNCTION_0_0();
      v23 = [v21 valueWithCGPoint:{MinX, CGRectGetMinY(v37)}];
      v35[0] = v23;
      v24 = MEMORY[0x277CCAE60];
      v38.origin.x = OUTLINED_FUNCTION_0_0();
      MaxX = CGRectGetMaxX(v38);
      v39.origin.x = OUTLINED_FUNCTION_0_0();
      v26 = [v24 valueWithCGPoint:{MaxX, CGRectGetMinY(v39)}];
      v35[1] = v26;
      v27 = MEMORY[0x277CCAE60];
      v40.origin.x = OUTLINED_FUNCTION_0_0();
      v28 = CGRectGetMaxX(v40);
      v41.origin.x = OUTLINED_FUNCTION_0_0();
      v29 = [v27 valueWithCGPoint:{v28, CGRectGetMaxY(v41)}];
      v35[2] = v29;
      v30 = MEMORY[0x277CCAE60];
      v42.origin.x = OUTLINED_FUNCTION_0_0();
      v31 = CGRectGetMinX(v42);
      v43.origin.x = OUTLINED_FUNCTION_0_0();
      v32 = [v30 valueWithCGPoint:{v31, CGRectGetMaxY(v43)}];
      v35[3] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
      [v18 setSourcePoints:v33];

      [v18 setDuration:INFINITY];
      [v18 setFillMode:*MEMORY[0x277CDA230]];
      [v18 setRemovedOnCompletion:0];
      layer3 = [self layer];
      [layer3 addAnimation:v18 forKey:v4Superlayer];
    }

    goto LABEL_17;
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PBUIFakeBlurView;
  [(PBUIFakeBlurView *)&v3 didMoveToWindow];
  [(PBUIFakeBlurView *)self _createOrRemoveMatchMoveAnimationIfNeeded];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  requestedStyle = self->_requestedStyle;
  effectiveStyle = self->_effectiveStyle;
  v6 = PBUIWallpaperStyleDescription(requestedStyle);
  if (requestedStyle == effectiveStyle)
  {
    v7 = @"style";
  }

  else
  {
    v8 = [v3 appendObject:v6 withName:@"requestedStyle"];

    v6 = PBUIWallpaperStyleDescription(self->_effectiveStyle);
    v7 = @"effectiveStyle";
  }

  v9 = [v3 appendObject:v6 withName:v7];

  appendSuper = [v3 appendSuper];
  build = [v3 build];

  return build;
}

- (void)requestStyle:(int64_t)style
{
  if (self->_requestedStyle != style)
  {
    self->_requestedStyle = style;
    WeakRetained = objc_loadWeakRetained(&self->_imageProvider);

    if (WeakRetained)
    {
      if (objc_opt_respondsToSelector())
      {
        [(UIView *)self->_providedImageView requestStyle:style];
      }

      traitCollection = [(PBUIFakeBlurView *)self traitCollection];
      [(PBUIFakeBlurView *)self _updateImageFromProviderWithTraitCollection:traitCollection];
    }

    else
    {
      traitCollection = [(PBUIFakeBlurView *)self wallpaperViewController];
      v7 = [traitCollection _sourceForFakeBlurView:self];
      fakeBlurViewOverrideTraitCollection = [traitCollection fakeBlurViewOverrideTraitCollection];
      [PBUIFakeBlurView _updateImageWithSource:v7 overrideTraitCollection:fakeBlurViewOverrideTraitCollection notifyObserver:?];
    }
  }
}

- (void)handleReachabilityYOffsetDidChange
{
  [(PBUIFakeBlurView *)self setNeedsLayout];

  [(PBUIFakeBlurView *)self layoutIfNeeded];
}

- (PBUIFakeBlurView)initWithVariant:(int64_t)variant imageProvider:(id)provider fakeBlurRegistry:(id)registry wallpaperViewDelegate:(id)delegate transformOptions:(unint64_t)options reachabilityCoordinator:(id)coordinator
{
  providerCopy = provider;
  registryCopy = registry;
  delegateCopy = delegate;
  coordinatorCopy = coordinator;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v38.receiver = self;
  v38.super_class = PBUIFakeBlurView;
  v19 = [(PBUIFakeBlurView *)&v38 initWithFrame:?];

  if (v19)
  {
    v19->_wallpaperOffset = *MEMORY[0x277CBF348];
    v20 = [[PBUIWallpaperConfiguration alloc] initWithVariant:variant type:1];
    v21 = [PBUIWallpaperView alloc];
    v22 = [(PBUIWallpaperView *)v21 initWithFrame:v20 configuration:variant variant:0 cacheGroup:delegateCopy delegate:0 options:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    wallpaperView = v19->_wallpaperView;
    v19->_wallpaperView = v22;

    [(PBUIFakeBlurView *)v19 addSubview:v19->_wallpaperView];
    [(PBUIFakeBlurView *)v19 setTransformOptions:options];
    newImageProviderView = [providerCopy newImageProviderView];
    providedImageView = v19->_providedImageView;
    v19->_providedImageView = newImageProviderView;

    [(UIView *)v19->_providedImageView setOpaque:1];
    layer = [(UIView *)v19->_providedImageView layer];
    [layer setContentsOpaque:1];

    [(PBUIWallpaperView *)v19->_wallpaperView setContentView:v19->_providedImageView];
    objc_storeWeak(&v19->_imageProvider, providerCopy);
    objc_storeWeak(&v19->_fakeBlurRegistry, registryCopy);
    [registryCopy _registerFakeBlurView:v19];
    [(PBUIFakeBlurView *)v19 reconfigureFromProvider];
    v19->_effectiveStyle = -1;
    v19->_requestedStyle = -1;
    v19->_shouldMatchWallpaperPosition = 1;
    objc_storeStrong(&v19->_reachabilityCoordinator, coordinator);
    [(PBUIWallpaperReachabilityCoordinating *)v19->_reachabilityCoordinator addReachabilityObserver:v19];
    if (PBUIReplicaDebugModeIsEnabled())
    {
      v27 = [PBUIReplicaDebugView alloc];
      [(PBUIFakeBlurView *)v19 bounds];
      v28 = [(PBUIReplicaDebugView *)v27 initWithFrame:?];
      debugView = v19->_debugView;
      v19->_debugView = v28;

      [(PBUIReplicaDebugView *)v19->_debugView setAutoresizingMask:18];
      v30 = MEMORY[0x277CCACA8];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v30 stringWithFormat:@"%@ (%p)", v32, v19];

      [(PBUIReplicaDebugView *)v19->_debugView setTitle:v33];
      v34 = v19->_debugView;
      orangeColor = [MEMORY[0x277D75348] orangeColor];
      v36 = [orangeColor colorWithAlphaComponent:0.4];
      [(PBUIReplicaDebugView *)v34 setColor:v36];

      [(PBUIFakeBlurView *)v19 addSubview:v19->_debugView];
    }

    else
    {
      v33 = v19->_debugView;
      v19->_debugView = 0;
    }
  }

  return v19;
}

- (PBUIFakeBlurView)initWithVariant:(int64_t)variant wallpaperViewController:(id)controller transformOptions:(unint64_t)options reachabilityCoordinator:(id)coordinator
{
  controllerCopy = controller;
  v11 = [(PBUIFakeBlurView *)self initWithVariant:variant imageProvider:self fakeBlurRegistry:controllerCopy wallpaperViewDelegate:controllerCopy transformOptions:options reachabilityCoordinator:coordinator];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_wallpaperViewController, controllerCopy);
    v13 = [controllerCopy _sourceForFakeBlurView:v12];
    [(PBUIFakeBlurView *)v12 reconfigureWithSource:v13];
  }

  return v12;
}

- (void)dealloc
{
  wallpaperViewController = [(PBUIFakeBlurView *)self wallpaperViewController];
  [wallpaperViewController _unregisterFakeBlurView:self];
  if (self->_providedImageView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(UIView *)self->_providedImageView invalidate];
  }

  v4.receiver = self;
  v4.super_class = PBUIFakeBlurView;
  [(PBUIFakeBlurView *)&v4 dealloc];
}

- (void)reconfigureWithSource:(id)source
{
  sourceCopy = source;
  transformOptions = [(PBUIFakeBlurView *)self transformOptions];
  wallpaperView = self->_wallpaperView;
  [sourceCopy parallaxFactor];
  [(PBUIWallpaperView *)wallpaperView setParallaxFactor:?];
  if ((transformOptions & 8) != 0 || ![sourceCopy parallaxEnabled])
  {
    allowsParallax = 0;
  }

  else
  {
    allowsParallax = [objc_opt_class() allowsParallax];
  }

  [(PBUIWallpaperView *)self->_wallpaperView setParallaxEnabled:allowsParallax];
  if ((transformOptions & 4) == 0)
  {
    v7 = self->_wallpaperView;
    [sourceCopy zoomFactor];
    [(PBUIWallpaperView *)v7 setZoomFactor:?];
  }
}

- (void)setTransformOptions:(unint64_t)options
{
  if (self->_transformOptions != options)
  {
    v10 = v3;
    v11 = v4;
    self->_transformOptions = options;
    if (PBUIWallpaperTransformOptionsShouldIgnoreRotation(options))
    {
      wallpaperView = self->_wallpaperView;
      v8 = *(MEMORY[0x277CBF2C0] + 16);
      v9[0] = *MEMORY[0x277CBF2C0];
      v9[1] = v8;
      v9[2] = *(MEMORY[0x277CBF2C0] + 32);
      [(PBUIWallpaperView *)wallpaperView setTransform:v9];
    }

    [(PBUIWallpaperView *)self->_wallpaperView setTransformOptions:options];
    if (objc_opt_respondsToSelector())
    {
      [(UIView *)self->_providedImageView setTransformOptions:options];
    }
  }
}

+ (id)_imageForStyle:(int64_t *)style withSource:(id)source overrideTraitCollection:(id)collection
{
  sourceCopy = source;
  collectionCopy = collection;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v10 = *style;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__PBUIFakeBlurView__imageForStyle_withSource_overrideTraitCollection___block_invoke;
  v13[3] = &unk_278362290;
  v13[4] = &v14;
  v13[5] = style;
  [self _imageForStyle:v10 withSource:sourceCopy overrideTraitCollection:collectionCopy result:v13];
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __70__PBUIFakeBlurView__imageForStyle_withSource_overrideTraitCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = a2;
  **(a1 + 40) = a4;
}

+ (void)_imageForStyle:(int64_t)style withSource:(id)source overrideTraitCollection:(id)collection result:(id)result
{
  sourceCopy = source;
  collectionCopy = collection;
  resultCopy = result;
  if (style == 3)
  {
    blurredImage = [sourceCopy blurredImage];
    blurredImageURL = [sourceCopy blurredImageURL];
    if (blurredImage)
    {
      style = 3;
    }

    else
    {
      style = 0;
    }
  }

  else
  {
    legibilitySettings = [sourceCopy legibilitySettings];
    contentColor = [legibilitySettings contentColor];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    _WallpaperBackdropParametersForStyleAndAverageColor(style, contentColor, &v34);
    HasTint = _WallpaperStyleHasTint(style);
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    blurredImage = [sourceCopy imageForBackdropParameters:&v30 includeTint:HasTint overrideTraitCollection:collectionCopy];
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    blurredImageURL = [sourceCopy imageURLForBackdropParameters:&v30 includeTint:HasTint overrideTraitCollection:collectionCopy];
    if (!blurredImage)
    {
      if (style)
      {
        *&v30 = 0;
        *(&v30 + 1) = &v30;
        *&v31 = 0x3032000000;
        *(&v31 + 1) = __Block_byref_object_copy__0;
        *&v32 = __Block_byref_object_dispose__0;
        *(&v32 + 1) = 0;
        v24 = 0;
        v25 = &v24;
        v26 = 0x3032000000;
        v27 = __Block_byref_object_copy__0;
        v28 = __Block_byref_object_dispose__0;
        v29 = 0;
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __77__PBUIFakeBlurView__imageForStyle_withSource_overrideTraitCollection_result___block_invoke;
        v19[3] = &unk_2783622B8;
        v19[4] = &v30;
        v19[5] = &v24;
        v19[6] = &v20;
        [self _imageForStyle:3 withSource:sourceCopy overrideTraitCollection:collectionCopy result:v19];
        blurredImage = *(*(&v30 + 1) + 40);
        snapshotImageURL = v25[5];

        style = v21[3];
        _Block_object_dispose(&v20, 8);
        _Block_object_dispose(&v24, 8);

        _Block_object_dispose(&v30, 8);
      }

      else
      {
        blurredImage = [sourceCopy snapshotImage];
        snapshotImageURL = [sourceCopy snapshotImageURL];
      }

      blurredImageURL = snapshotImageURL;
    }
  }

  resultCopy[2](resultCopy, blurredImage, blurredImageURL, style);
}

void __77__PBUIFakeBlurView__imageForStyle_withSource_overrideTraitCollection_result___block_invoke(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  *(*(a1[6] + 8) + 24) = a4;
}

- (void)rotateToInterfaceOrientation:(int64_t)orientation
{
  if ((PBUIWallpaperTransformOptionsShouldIgnoreRotation(self->_transformOptions) & 1) == 0)
  {
    if (PBUIWallpaperTransformOptionsShouldIgnoreLandscapeRotation(self->_transformOptions))
    {
      wallpaperView = self->_wallpaperView;
      switch(orientation)
      {
        case 1:
          v6 = 0.0;
          break;
        case 3:
          v6 = 1.57079633;
          break;
        case 4:
          v6 = -1.57079633;
          break;
        default:
          v6 = 3.14159265;
          if (orientation != 2)
          {
            v6 = 0.0;
          }

          break;
      }

      CGAffineTransformMakeRotation(&v11, v6);
      UIIntegralTransform();
      CGAffineTransformInvert(&v11, &v10);
    }

    else
    {
      if (soft_PF_IS_PAD_DEVICE() && soft_PUIDynamicRotationIsActive())
      {
        v7 = self->_wallpaperView;
        v8 = *(MEMORY[0x277CBF2C0] + 16);
        *&v11.a = *MEMORY[0x277CBF2C0];
        *&v11.c = v8;
        *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
LABEL_25:
        [(PBUIWallpaperView *)v7 setTransform:&v11];
        goto LABEL_26;
      }

      wallpaperView = self->_wallpaperView;
      switch(orientation)
      {
        case 1:
          v9 = 0.0;
          break;
        case 3:
          v9 = 1.57079633;
          break;
        case 4:
          v9 = -1.57079633;
          break;
        default:
          v9 = 3.14159265;
          if (orientation != 2)
          {
            v9 = 0.0;
          }

          break;
      }

      CGAffineTransformMakeRotation(&v10, v9);
      UIIntegralTransform();
    }

    v7 = wallpaperView;
    goto LABEL_25;
  }

LABEL_26:
  [(PBUIFakeBlurView *)self layoutIfNeeded];
}

- (void)offsetWallpaperBy:(CGPoint)by
{
  if (self->_wallpaperOffset.x != by.x || self->_wallpaperOffset.y != by.y)
  {
    self->_wallpaperOffset = by;
    [(PBUIFakeBlurView *)self setNeedsLayout];

    [(PBUIFakeBlurView *)self layoutIfNeeded];
  }
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = PBUIFakeBlurView;
  [(PBUIFakeBlurView *)&v5 willMoveToWindow:window];
  layer = [(PBUIFakeBlurView *)self layer];
  [layer removeAllAnimations];
}

- (void)setShouldMatchWallpaperPosition:(BOOL)position
{
  if (self->_shouldMatchWallpaperPosition != position)
  {
    positionCopy = position;
    self->_shouldMatchWallpaperPosition = position;
    if (objc_opt_respondsToSelector())
    {
      [(UIView *)self->_providedImageView setShouldMatchWallpaperPosition:positionCopy];
    }

    [(PBUIFakeBlurView *)self _createOrRemoveMatchMoveAnimationIfNeeded];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PBUIFakeBlurView;
  [(PBUIFakeBlurView *)&v9 traitCollectionDidChange:changeCopy];
  if (_WallpaperStyleUpdatesWithUserInterfaceStyle(self->_requestedStyle))
  {
    traitCollection = [(PBUIFakeBlurView *)self traitCollection];
    userInterfaceStyle = [changeCopy userInterfaceStyle];
    if (userInterfaceStyle != [traitCollection userInterfaceStyle])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __45__PBUIFakeBlurView_traitCollectionDidChange___block_invoke;
      v7[3] = &unk_2783622E0;
      v7[4] = self;
      v8 = traitCollection;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

void __45__PBUIFakeBlurView_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 488));

  v4 = *v2;
  if (WeakRetained)
  {
    v5 = *(a1 + 40);

    [(PBUIFakeBlurView *)v4 _updateImageFromProviderWithTraitCollection:v5];
  }

  else
  {
    __45__PBUIFakeBlurView_traitCollectionDidChange___block_invoke_cold_1(v4, v2, a1);
  }
}

- (BOOL)updateImageProviderView:(id)view withImage:(id)image
{
  viewCopy = view;
  imageCopy = image;
  v7 = objc_opt_class();
  v8 = viewCopy;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = objc_opt_class();
  v12 = imageCopy;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = 0;
  if (v10 && v14)
  {
    image = [v10 image];
    v15 = v14 != image;
    if (v14 != image)
    {
      [v10 setImage:v14];
    }
  }

  return v15;
}

- (id)imageForWallpaperStyle:(int64_t *)style variant:(int64_t)variant traitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(PBUIFakeBlurView *)self variant]!= variant)
  {
    [PBUIFakeBlurView imageForWallpaperStyle:variant:traitCollection:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_wallpaperViewController);
  v10 = [WeakRetained _sourceForFakeBlurView:self];

  if (v10)
  {
    v11 = [objc_opt_class() _imageForStyle:style withSource:v10 overrideTraitCollection:collectionCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)parallaxFactorForVariant:(int64_t)variant
{
  if ([(PBUIFakeBlurView *)self variant]!= variant)
  {
    [PBUIFakeBlurView parallaxFactorForVariant:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_wallpaperViewController);
  v5 = [WeakRetained _sourceForFakeBlurView:self];
  [v5 parallaxFactor];
  v7 = v6;

  return v7;
}

- (BOOL)parallaxEnabledForVariant:(int64_t)variant
{
  if ([(PBUIFakeBlurView *)self variant]!= variant)
  {
    [PBUIFakeBlurView parallaxEnabledForVariant:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_wallpaperViewController);
  v5 = [WeakRetained _sourceForFakeBlurView:self];

  if ([v5 parallaxEnabled])
  {
    allowsParallax = [objc_opt_class() allowsParallax];
  }

  else
  {
    allowsParallax = 0;
  }

  return allowsParallax;
}

- (double)zoomFactorForVariant:(int64_t)variant
{
  if ([(PBUIFakeBlurView *)self variant]!= variant)
  {
    [PBUIFakeBlurView zoomFactorForVariant:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_wallpaperViewController);
  v5 = [WeakRetained _sourceForFakeBlurView:self];
  [v5 zoomFactor];
  v7 = v6;

  return v7;
}

- (PBUIFakeBlurObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (PBUIFakeBlurImageProviding)imageProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_imageProvider);

  return WeakRetained;
}

- (PBUIFakeBlurViewRegistering)fakeBlurRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_fakeBlurRegistry);

  return WeakRetained;
}

- (PBUIWallpaperViewController)wallpaperViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperViewController);

  return WeakRetained;
}

- (void)_updateImageFromProviderWithTraitCollection:(uint64_t)collection
{
  if (collection)
  {
    v15 = *(collection + 416);
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((collection + 488));
    v5 = [WeakRetained imageForWallpaperStyle:&v15 variant:objc_msgSend(collection traitCollection:{"variant"), v3}];

    OUTLINED_FUNCTION_6_0(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

- (void)_updateImageWithSource:(uint64_t)source overrideTraitCollection:(void *)collection notifyObserver:(void *)observer
{
  if (source)
  {
    v16 = *(source + 416);
    observerCopy = observer;
    collectionCopy = collection;
    v6 = [objc_opt_class() _imageForStyle:&v16 withSource:collectionCopy overrideTraitCollection:observerCopy];

    OUTLINED_FUNCTION_6_0(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

- (id)_effectiveTraitCollectionForMode:(void *)mode
{
  if (mode)
  {
    wallpaperViewController = [mode wallpaperViewController];
    fakeBlurViewOverrideTraitCollection = [wallpaperViewController fakeBlurViewOverrideTraitCollection];

    if (!fakeBlurViewOverrideTraitCollection)
    {
      if (a2 == 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      fakeBlurViewOverrideTraitCollection = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:v5];
    }
  }

  else
  {
    fakeBlurViewOverrideTraitCollection = 0;
  }

  return fakeBlurViewOverrideTraitCollection;
}

- (void)updateImageWithSource:(id)source
{
  sourceCopy = source;
  v5 = -[PBUIFakeBlurView _effectiveTraitCollectionForMode:](self, [sourceCopy wallpaperMode]);
  [PBUIFakeBlurView _updateImageWithSource:sourceCopy overrideTraitCollection:v5 notifyObserver:?];
}

- (void)updateImageWithSource:(void *)source overrideTraitCollection:
{
  if (self)
  {
    [PBUIFakeBlurView _updateImageWithSource:self overrideTraitCollection:a2 notifyObserver:source];
  }
}

- (void)_setImage:(uint64_t)image style:(int)style notify:
{
  v7 = a2;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 488));
    v9 = [WeakRetained updateImageProviderView:*(self + 448) withImage:v7];

    if (v9)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __43__PBUIFakeBlurView__setImage_style_notify___block_invoke;
      v12[3] = &unk_278361E18;
      v12[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v12];
      layer = [*(self + 432) layer];
      [layer reloadValueForKeyPath:@"contents"];

      [*(self + 432) setNeedsLayout];
    }

    if (*(self + 424) != image)
    {
      *(self + 424) = image;
      if (style)
      {
        v11 = objc_loadWeakRetained((self + 480));
        [v11 fakeBlurView:self didChangeStyle:*(self + 424)];
      }
    }
  }
}

- (void)updateImageFromProviderForWallpaperMode:(int64_t)mode
{
  v4 = [(PBUIFakeBlurView *)self _effectiveTraitCollectionForMode:mode];
  [(PBUIFakeBlurView *)self _updateImageFromProviderWithTraitCollection:v4];
}

void __45__PBUIFakeBlurView_traitCollectionDidChange___block_invoke_cold_1(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = [a1 wallpaperViewController];
  v5 = [v6 _sourceForFakeBlurView:*a2];
  if (*a2)
  {
    [PBUIFakeBlurView _updateImageWithSource:v5 overrideTraitCollection:*(a3 + 40) notifyObserver:?];
  }
}

- (void)imageForWallpaperStyle:variant:traitCollection:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_5();
  PBUIStringForWallpaperVariant(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_3() variant];
  PBUIStringForWallpaperVariant(v3);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  [OUTLINED_FUNCTION_2(v4 v5];
}

- (void)parallaxFactorForVariant:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_5();
  PBUIStringForWallpaperVariant(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_3() variant];
  PBUIStringForWallpaperVariant(v3);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  [OUTLINED_FUNCTION_2(v4 v5];
}

- (void)parallaxEnabledForVariant:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_5();
  PBUIStringForWallpaperVariant(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_3() variant];
  PBUIStringForWallpaperVariant(v3);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  [OUTLINED_FUNCTION_2(v4 v5];
}

- (void)zoomFactorForVariant:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_5();
  PBUIStringForWallpaperVariant(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_3() variant];
  PBUIStringForWallpaperVariant(v3);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  [OUTLINED_FUNCTION_2(v4 v5];
}

@end