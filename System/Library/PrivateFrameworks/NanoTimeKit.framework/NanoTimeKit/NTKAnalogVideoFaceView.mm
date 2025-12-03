@interface NTKAnalogVideoFaceView
+ (int64_t)uiSensitivity;
- (CGPoint)_contentCenterOffset;
- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected;
- (CGSize)videoDialSize;
- (NTKAnalogVideoFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (UIEdgeInsets)_insetsForDialSize:(CGSize)size;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_handAlphaForEditMode:(int64_t)mode;
- (id)_complicationsPlatterColor;
- (id)_slotForUtilitySlot:(int64_t)slot;
- (id)_tapHighlightImage;
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (int64_t)_utilitySlotForSlot:(id)slot;
- (unint64_t)_layoutStyleForSlot:(id)slot;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applySlow;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterOrb:(BOOL)orb;
- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)_faceLibraryDismissed;
- (void)_handleOrdinaryScreenWake;
- (void)_handleWristRaiseScreenWake;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareForOrb;
- (void)_setVideoPlayerDataSource:(id)source;
- (void)_transformVideoPlayerView:(unint64_t)view;
- (void)_unloadSnapshotContentViews;
- (void)customizeFaceViewForListing:(id)listing changeEvent:(unint64_t)event animated:(BOOL)animated;
- (void)faceViewWasTapped:(id)tapped;
- (void)layoutSubviews;
- (void)screenDidTurnOffAnimated:(BOOL)animated;
- (void)setDataMode:(int64_t)mode;
- (void)setNormalComplicationDisplayWrapper:(id)wrapper forSlot:(id)slot;
- (void)setVideoDialSize:(CGSize)size;
- (void)setupVideoPlayerView;
@end

@implementation NTKAnalogVideoFaceView

+ (int64_t)uiSensitivity
{
  if (![self isRichComplicationsEnabled])
  {
    return 0;
  }

  return NTKBlueRidgeUISensitivity();
}

- (NTKAnalogVideoFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = NTKAnalogVideoFaceView;
  v10 = [(NTKAnalogFaceView *)&v26 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifierCopy];
  v11 = v10;
  if (v10)
  {
    v10->_previousDataMode = 0;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    complicationColor = v11->_complicationColor;
    v11->_complicationColor = whiteColor;

    v11->_videoDialSize = *MEMORY[0x277CBF3A8];
    v14 = -[NTKColorCircularUtilitarianFaceViewComplicationFactory initWithFaceView:device:graphicCornerComplications:]([NTKColorCircularUtilitarianFaceViewComplicationFactory alloc], "initWithFaceView:device:graphicCornerComplications:", v11, deviceCopy, [objc_opt_class() isRichComplicationsEnabled]);
    faceViewComplicationFactory = v11->_faceViewComplicationFactory;
    v11->_faceViewComplicationFactory = v14;

    faceViewComplicationFactory = [(NTKAnalogVideoFaceView *)v11 faceViewComplicationFactory];
    [faceViewComplicationFactory setDelegate:v11];

    [(NTKFaceView *)v11 setComplicationFactory:v11->_faceViewComplicationFactory];
    objc_initWeak(&location, v11);
    v17 = v11->_faceViewComplicationFactory;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__NTKAnalogVideoFaceView_initWithFaceStyle_forDevice_clientIdentifier___block_invoke;
    v23[3] = &unk_278780A58;
    objc_copyWeak(&v24, &location);
    [(NTKFaceViewComplicationFactory *)v17 setForegroundColorProviderBlock:v23];
    v18 = v11->_faceViewComplicationFactory;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__NTKAnalogVideoFaceView_initWithFaceStyle_forDevice_clientIdentifier___block_invoke_2;
    v21[3] = &unk_278780A58;
    objc_copyWeak(&v22, &location);
    [(NTKFaceViewComplicationFactory *)v18 setPlatterColorProviderBlock:v21];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__faceLibraryDismissed name:@"NTKFaceLibraryDismissedNotification" object:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v11;
}

id __71__NTKAnalogVideoFaceView_initWithFaceStyle_forDevice_clientIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _complicationsForegroundColor];

  return v2;
}

id __71__NTKAnalogVideoFaceView_initWithFaceStyle_forDevice_clientIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _complicationsPlatterColor];

  return v2;
}

- (void)_loadSnapshotContentViews
{
  v13.receiver = self;
  v13.super_class = NTKAnalogVideoFaceView;
  [(NTKAnalogFaceView *)&v13 _loadSnapshotContentViews];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  [(NTKAnalogVideoFaceView *)self bounds];
  v4 = [v3 initWithFrame:?];
  backgroundContainerView = self->_backgroundContainerView;
  self->_backgroundContainerView = v4;

  [(UIView *)self->_backgroundContainerView setAutoresizingMask:18];
  contentView = [(NTKFaceView *)self contentView];
  [contentView insertSubview:self->_backgroundContainerView atIndex:0];

  faceViewComplicationFactory = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
  [faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:0 faceView:self];

  [(NTKAnalogVideoFaceView *)self setupVideoPlayerView];
  if (!self->_faceTapControl)
  {
    v8 = objc_opt_new();
    faceTapControl = self->_faceTapControl;
    self->_faceTapControl = v8;

    [(NTKFaceViewTapControl *)self->_faceTapControl addTarget:self action:sel_faceViewWasTapped_ forControlEvents:64];
    highlightImageView = [(NTKFaceViewTapControl *)self->_faceTapControl highlightImageView];
    _tapHighlightImage = [(NTKAnalogVideoFaceView *)self _tapHighlightImage];
    [highlightImageView setImage:_tapHighlightImage];

    contentView2 = [(NTKFaceView *)self contentView];
    [contentView2 addSubview:self->_faceTapControl];
  }
}

- (void)_unloadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKAnalogVideoFaceView;
  [(NTKAnalogFaceView *)&v6 _unloadSnapshotContentViews];
  [(UIView *)self->_backgroundContainerView removeFromSuperview];
  backgroundContainerView = self->_backgroundContainerView;
  self->_backgroundContainerView = 0;

  [(NTKVideoPlayerView *)self->_videoPlayerView removeFromSuperview];
  videoPlayerView = self->_videoPlayerView;
  self->_videoPlayerView = 0;

  [(NTKFaceViewTapControl *)self->_faceTapControl removeFromSuperview];
  faceTapControl = self->_faceTapControl;
  self->_faceTapControl = 0;
}

- (void)setNormalComplicationDisplayWrapper:(id)wrapper forSlot:(id)slot
{
  v4.receiver = self;
  v4.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v4 setNormalComplicationDisplayWrapper:wrapper forSlot:slot];
}

- (void)setDataMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v5 setDataMode:?];
  [(NTKFaceViewTapControl *)self->_faceTapControl setHighlighted:0];
  [(NTKFaceViewTapControl *)self->_faceTapControl setUserInteractionEnabled:mode == 1];
}

- (void)_applyDataMode
{
  v3.receiver = self;
  v3.super_class = NTKAnalogVideoFaceView;
  [(NTKAnalogFaceView *)&v3 _applyDataMode];
  [(NTKVideoPlayerView *)self->_videoPlayerView applyDataMode:[(NTKFaceView *)self dataMode] comingFromDataMode:self->_previousDataMode];
  self->_previousDataMode = [(NTKFaceView *)self dataMode];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKAnalogVideoFaceView;
  [(NTKAnalogFaceView *)&v7 layoutSubviews];
  backgroundContainerView = self->_backgroundContainerView;
  [(NTKAnalogVideoFaceView *)self bounds];
  [(UIView *)backgroundContainerView ntk_setBoundsAndPositionFromFrame:?];
  videoPlayerView = self->_videoPlayerView;
  [(NTKAnalogVideoFaceView *)self bounds];
  [(UIView *)videoPlayerView ntk_setBoundsAndPositionFromFrame:?];
  faceTapControl = self->_faceTapControl;
  [(NTKAnalogVideoFaceView *)self bounds];
  MidX = CGRectGetMidX(v8);
  [(NTKAnalogVideoFaceView *)self bounds];
  [(NTKFaceViewTapControl *)faceTapControl setCenter:MidX, CGRectGetMidY(v9)];
  [(NTKFaceViewTapControl *)self->_faceTapControl sizeToFit];
}

- (void)setupVideoPlayerView
{
  v3 = [NTKVideoPlayerView alloc];
  [(NTKAnalogVideoFaceView *)self bounds];
  v4 = [(NTKVideoPlayerView *)v3 initWithFrame:?];
  videoPlayerView = self->_videoPlayerView;
  self->_videoPlayerView = v4;

  [(NTKVideoPlayerView *)self->_videoPlayerView setDelegate:self];
  [(NTKVideoPlayerView *)self->_videoPlayerView setVideoPlayerResizeGravity:0];
  [(NTKVideoPlayerView *)self->_videoPlayerView setShouldApplyVideoInsetToPosterImage:1];
  [(UIView *)self->_backgroundContainerView addSubview:self->_videoPlayerView];
  [(NTKAnalogVideoFaceView *)self sendSubviewToBack:self->_backgroundContainerView];

  [(NTKAnalogVideoFaceView *)self _customizeVideoPlayerOnSetup];
}

- (void)_setVideoPlayerDataSource:(id)source
{
  sourceCopy = source;
  videoPlayerView = [(NTKAnalogVideoFaceView *)self videoPlayerView];
  dataSource = [videoPlayerView dataSource];

  if (dataSource != sourceCopy)
  {
    videoPlayerView2 = [(NTKAnalogVideoFaceView *)self videoPlayerView];
    [videoPlayerView2 setDataSource:sourceCopy];

    videoPlayerView3 = [(NTKAnalogVideoFaceView *)self videoPlayerView];
    posterImage = [sourceCopy posterImage];
    [videoPlayerView3 setPosterImage:posterImage];
  }
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v3 _applyFrozen];
  [(NTKVideoPlayerView *)self->_videoPlayerView applyFrozen:[(NTKFaceView *)self isFrozen]];
}

- (void)_applySlow
{
  v3.receiver = self;
  v3.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v3 _applySlow];
  [(NTKVideoPlayerView *)self->_videoPlayerView applySlow:[(NTKFaceView *)self isSlow]];
}

- (void)_prepareForOrb
{
  v3.receiver = self;
  v3.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v3 _prepareForOrb];
  [(NTKVideoPlayerView *)self->_videoPlayerView applyOrbing:1];
}

- (void)_cleanupAfterOrb:(BOOL)orb
{
  v4.receiver = self;
  v4.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v4 _cleanupAfterOrb:orb];
  [(NTKVideoPlayerView *)self->_videoPlayerView applyOrbing:0];
}

- (void)_handleWristRaiseScreenWake
{
  v3.receiver = self;
  v3.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v3 _handleWristRaiseScreenWake];
  [(NTKAnalogVideoFaceView *)self _handleEitherScreenWake];
  [(NTKVideoPlayerView *)self->_videoPlayerView handleWristRaiseScreenWake];
}

- (void)_handleOrdinaryScreenWake
{
  v3.receiver = self;
  v3.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v3 _handleOrdinaryScreenWake];
  [(NTKAnalogVideoFaceView *)self _handleEitherScreenWake];
  [(NTKVideoPlayerView *)self->_videoPlayerView handleOrdinaryScreenWake];
}

- (void)screenDidTurnOffAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v4 screenDidTurnOffAnimated:animated];
  [(NTKAnalogVideoFaceView *)self _tearDownTransitioningView:0];
  [(NTKVideoPlayerView *)self->_videoPlayerView handleScreenOff];
}

- (void)faceViewWasTapped:(id)tapped
{
  if ([(NTKAnalogVideoFaceView *)self _shouldAnimateComplicationsOnTap])
  {
    _complicationsTapColor = [(NTKAnalogVideoFaceView *)self _complicationsTapColor];
    complicationColor = self->_complicationColor;
    self->_complicationColor = _complicationsTapColor;

    faceViewComplicationFactory = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
    [faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:1 faceView:self];
  }

  [(NTKVideoPlayerView *)self->_videoPlayerView videoPlayerViewWasTapped];

  [(NTKAnalogVideoFaceView *)self _faceViewWasTapped];
}

- (id)_tapHighlightImage
{
  device = [(NTKFaceView *)self device];
  v3 = NTKNoHighlightDialTapImage(device);

  return v3;
}

- (void)_configureTimeView:(id)view
{
  v8.receiver = self;
  v8.super_class = NTKAnalogVideoFaceView;
  viewCopy = view;
  [(NTKAnalogFaceView *)&v8 _configureTimeView:viewCopy];
  minuteHandView = [viewCopy minuteHandView];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [minuteHandView setHandDotColor:blackColor];

  secondHandView = [viewCopy secondHandView];

  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [secondHandView setColor:systemOrangeColor];
}

- (unint64_t)_layoutStyleForSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKFaceView *)self device];
  if ([device deviceCategory] == 1)
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [slotCopy isEqualToString:@"bottom-center"];

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  slotCopy = slot;
  if ([(NTKAnalogVideoFaceView *)self _layoutStyleForSlot:?]== 1)
  {
    v14 = [(NTKAnalogVideoFaceView *)self _utilitySlotForSlot:slotCopy];
    device = [(NTKFaceView *)self device];
    [NTKUtilityComplicationFactory curvedCircleRadius:radius centerAngle:angle maxAngularWidth:width circleCenter:center interior:interior forSlot:v14 forDevice:device];
  }
}

- (CGPoint)_contentCenterOffset
{
  if ([objc_opt_class() isRichComplicationsEnabled])
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    delegate = [(NTKFaceView *)self delegate];
    v6 = [delegate faceViewComplicationIsEmptyForSlot:@"bottom-center"];

    _complicationSlotsHiddenByCurrentConfiguration = [(NTKFaceView *)self _complicationSlotsHiddenByCurrentConfiguration];
    v8 = [_complicationSlotsHiddenByCurrentConfiguration containsObject:@"bottom-center"];

    device = [(NTKFaceView *)self device];
    v10 = ___LayoutConstants_block_invoke_17(device, device);
    v12 = v11;
    v3 = v13;
    v4 = v14;

    if ((v6 & 1) == 0 && (v8 & 1) == 0)
    {
      v3 = v10;
      v4 = v12;
    }
  }

  v15 = v3;
  v16 = v4;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)_faceLibraryDismissed
{
  [(NTKVideoPlayerView *)self->_videoPlayerView faceLibraryWasDismissed];
  faceViewComplicationFactory = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
  [faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:1 faceView:self];
}

- (id)_complicationsPlatterColor
{
  _complicationsForegroundColor = [(NTKAnalogVideoFaceView *)self _complicationsForegroundColor];
  v3 = NTKColorByPremultiplyingAlpha(_complicationsForegroundColor, 0.15);

  return v3;
}

- (void)_prepareForEditing
{
  v7.receiver = self;
  v7.super_class = NTKAnalogVideoFaceView;
  [(NTKAnalogFaceView *)&v7 _prepareForEditing];
  faceViewComplicationFactory = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
  [faceViewComplicationFactory prepareForEditingForFaceView:self];

  [(NTKAnalogVideoFaceView *)self _setupTransitioningViewIfNeeded:1];
  [(NTKFaceView *)self _applyEditConfigurationsWithForce:1];
  [(NTKVideoPlayerView *)self->_videoPlayerView transitionToEditing];
  device = [(NTKFaceView *)self device];
  [device screenCornerRadius];
  v6 = v5;

  NTKApplyViewCornerRadius(self, v6);
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKAnalogVideoFaceView;
  [(NTKAnalogFaceView *)&v4 _cleanupAfterEditing];
  faceViewComplicationFactory = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
  [faceViewComplicationFactory cleanupAfterEditingForFaceView:self];

  [(NTKAnalogVideoFaceView *)self _tearDownTransitioningView:0];
  NTKApplyViewCornerRadius(self, 0.0);
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication
{
  if ([slot isEqualToString:{@"bottom-center", complication}])
  {
    delegate = [(NTKFaceView *)self delegate];
    [delegate faceViewWantsCustomKeylineFramesReloadedForEditMode:12];

    delegate2 = [(NTKFaceView *)self delegate];
    [delegate2 faceViewWantsCustomKeylineFramesReloadedForEditMode:15];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  transitioningView = self->_transitioningView;
  if (transitioningView)
  {
    [(NTKEditOptionTransitioningView *)transitioningView setOption:option, mode, slot];
  }

  faceViewComplicationFactory = self->_faceViewComplicationFactory;

  [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:0 faceView:self, slot];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  editing = [(NTKFaceView *)self editing];
  if (mode && !editMode && editing)
  {
    [(NTKAnalogVideoFaceView *)self _tearDownTransitioningView:0];
  }

  timeView = [(NTKFaceView *)self timeView];
  [(NTKAnalogVideoFaceView *)self _handAlphaForEditMode:mode];
  [(NTKAnalogVideoFaceView *)self _handAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  foregroundContainerView = [(NTKFaceView *)self foregroundContainerView];
  [(NTKAnalogVideoFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKAnalogVideoFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [foregroundContainerView setAlpha:?];

  transitioningView = self->_transitioningView;
  [(NTKAnalogVideoFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKAnalogVideoFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();

  [(NTKEditOptionTransitioningView *)transitioningView setDimmingAlpha:?];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8 = NTKAlphaForRubberBandingFraction(fraction);
  [(NTKAnalogVideoFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKEditOptionTransitioningView *)self->_transitioningView setDimmingAlpha:v8 * v9];
  transitioningView = self->_transitioningView;

  [(NTKEditOptionTransitioningView *)transitioningView setRubberBandingFraction:fraction];
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKFaceView *)self device];
  if ([device deviceCategory] != 1)
  {
    if ([slotCopy isEqualToString:@"top-left"])
    {
    }

    else
    {
      v7 = [slotCopy isEqualToString:@"top-right"];

      if ((v7 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v6 = 1;
    goto LABEL_8;
  }

LABEL_3:
  v6 = 0;
LABEL_8:

  return v6;
}

- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected
{
  selectedCopy = selected;
  slotCopy = slot;
  if ([objc_opt_class() isRichComplicationsEnabled] && ((objc_msgSend(slotCopy, "isEqualToString:", @"top-left") & 1) != 0 || objc_msgSend(slotCopy, "isEqualToString:", @"top-right")))
  {
    faceViewComplicationFactory = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
    [faceViewComplicationFactory keylineFrameForCornerComplicationSlot:slotCopy selected:selectedCopy];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = NTKAnalogVideoFaceView;
    [(NTKFaceView *)&v24 _keylineFrameForComplicationSlot:slotCopy selected:selectedCopy];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)customizeFaceViewForListing:(id)listing changeEvent:(unint64_t)event animated:(BOOL)animated
{
  animatedCopy = animated;
  listingCopy = listing;
  v16 = listingCopy;
  if (event != 2 || (v9 = [(NTKAnalogVideoFaceView *)self _shouldAnimateComplicationsOnTap], listingCopy = v16, !v9))
  {
    color = [listingCopy color];
    listingCopy = v16;
    if (color)
    {
      v11 = color;
      complicationColor = self->_complicationColor;
      color2 = [v16 color];

      listingCopy = v16;
      if (complicationColor != color2)
      {
        color3 = [v16 color];
        v15 = self->_complicationColor;
        self->_complicationColor = color3;

        [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:animatedCopy faceView:self];
        listingCopy = v16;
      }
    }
  }
}

- (void)_transformVideoPlayerView:(unint64_t)view
{
  if (view == 2)
  {
    v9 = [&unk_28418AE28 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(&unk_28418AE28, "count"))}];
    [v9 floatValue];

    videoPlayerView = [(NTKAnalogVideoFaceView *)self videoPlayerView];
    CLKDegreesToRadians();
LABEL_9:
    CGAffineTransformMakeRotation(&v11, v8);
    videoPlayerView2 = videoPlayerView;
    goto LABEL_10;
  }

  if (view == 1)
  {
    if (_transformVideoPlayerView__onceToken != -1)
    {
      [NTKAnalogVideoFaceView _transformVideoPlayerView:];
    }

    v10 = 0.0;
    v7 = +[NTKDate faceDate];
    NTKHourMinuteSecondAnglesForTime(0, 0, &v10, v7, _transformVideoPlayerView___calendar);

    videoPlayerView = [(NTKAnalogVideoFaceView *)self videoPlayerView];
    v8 = v10;
    goto LABEL_9;
  }

  if (view)
  {
    return;
  }

  videoPlayerView2 = [(NTKAnalogVideoFaceView *)self videoPlayerView];
  videoPlayerView = videoPlayerView2;
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&v11.a = *MEMORY[0x277CBF2C0];
  *&v11.c = v6;
  *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
LABEL_10:
  [videoPlayerView2 setVideoPlayerTransform:&v11];
}

void __52__NTKAnalogVideoFaceView__transformVideoPlayerView___block_invoke()
{
  v0 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v1 = _transformVideoPlayerView___calendar;
  _transformVideoPlayerView___calendar = v0;
}

- (void)setVideoDialSize:(CGSize)size
{
  p_videoDialSize = &self->_videoDialSize;
  self->_videoDialSize = size;
  videoPlayerView = [(NTKAnalogVideoFaceView *)self videoPlayerView];
  [(NTKAnalogVideoFaceView *)self _insetsForDialSize:p_videoDialSize->width, p_videoDialSize->height];
  [videoPlayerView setVideoPlayerInset:?];
}

- (UIEdgeInsets)_insetsForDialSize:(CGSize)size
{
  if (size.width == 0.0)
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    width = size.width;
    v8 = [(NTKFaceView *)self device:size.width];
    [v8 screenBounds];
    v10 = v9;

    v3 = (v10 - width) * 0.5;
    v4 = v3;
    v5 = v3;
    v6 = v3;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (int64_t)_utilitySlotForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"top-left"])
  {
    v4 = 1;
  }

  else if ([slotCopy isEqualToString:@"top-right"])
  {
    v4 = 2;
  }

  else if ([slotCopy isEqualToString:@"bottom-left"])
  {
    v4 = 3;
  }

  else if ([slotCopy isEqualToString:@"bottom-right"])
  {
    v4 = 4;
  }

  else if ([slotCopy isEqualToString:@"bottom-center"])
  {
    v4 = 10;
  }

  else if ([slotCopy isEqualToString:@"date"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)slot
{
  v4 = slot - 1;
  if (slot - 1) <= 0xB && ((0xA0Fu >> v4))
  {
    v5 = *off_278780A78[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_handAlphaForEditMode:(int64_t)mode
{
  result = 0.2;
  if (!mode)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)mode
{
  result = 0.2;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = 0.2;
  if (mode < 2)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)videoDialSize
{
  width = self->_videoDialSize.width;
  height = self->_videoDialSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end