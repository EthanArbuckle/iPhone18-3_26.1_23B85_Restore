@interface NTKAnalogVideoFaceView
+ (int64_t)uiSensitivity;
- (CGPoint)_contentCenterOffset;
- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4;
- (CGSize)videoDialSize;
- (NTKAnalogVideoFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (UIEdgeInsets)_insetsForDialSize:(CGSize)a3;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_handAlphaForEditMode:(int64_t)a3;
- (id)_complicationsPlatterColor;
- (id)_slotForUtilitySlot:(int64_t)a3;
- (id)_tapHighlightImage;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (int64_t)_utilitySlotForSlot:(id)a3;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applySlow;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterOrb:(BOOL)a3;
- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)_faceLibraryDismissed;
- (void)_handleOrdinaryScreenWake;
- (void)_handleWristRaiseScreenWake;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareForOrb;
- (void)_setVideoPlayerDataSource:(id)a3;
- (void)_transformVideoPlayerView:(unint64_t)a3;
- (void)_unloadSnapshotContentViews;
- (void)customizeFaceViewForListing:(id)a3 changeEvent:(unint64_t)a4 animated:(BOOL)a5;
- (void)faceViewWasTapped:(id)a3;
- (void)layoutSubviews;
- (void)screenDidTurnOffAnimated:(BOOL)a3;
- (void)setDataMode:(int64_t)a3;
- (void)setNormalComplicationDisplayWrapper:(id)a3 forSlot:(id)a4;
- (void)setVideoDialSize:(CGSize)a3;
- (void)setupVideoPlayerView;
@end

@implementation NTKAnalogVideoFaceView

+ (int64_t)uiSensitivity
{
  if (![a1 isRichComplicationsEnabled])
  {
    return 0;
  }

  return NTKBlueRidgeUISensitivity();
}

- (NTKAnalogVideoFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v26.receiver = self;
  v26.super_class = NTKAnalogVideoFaceView;
  v10 = [(NTKAnalogFaceView *)&v26 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:v9];
  v11 = v10;
  if (v10)
  {
    v10->_previousDataMode = 0;
    v12 = [MEMORY[0x277D75348] whiteColor];
    complicationColor = v11->_complicationColor;
    v11->_complicationColor = v12;

    v11->_videoDialSize = *MEMORY[0x277CBF3A8];
    v14 = -[NTKColorCircularUtilitarianFaceViewComplicationFactory initWithFaceView:device:graphicCornerComplications:]([NTKColorCircularUtilitarianFaceViewComplicationFactory alloc], "initWithFaceView:device:graphicCornerComplications:", v11, v8, [objc_opt_class() isRichComplicationsEnabled]);
    faceViewComplicationFactory = v11->_faceViewComplicationFactory;
    v11->_faceViewComplicationFactory = v14;

    v16 = [(NTKAnalogVideoFaceView *)v11 faceViewComplicationFactory];
    [v16 setDelegate:v11];

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
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v11 selector:sel__faceLibraryDismissed name:@"NTKFaceLibraryDismissedNotification" object:0];

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
  v6 = [(NTKFaceView *)self contentView];
  [v6 insertSubview:self->_backgroundContainerView atIndex:0];

  v7 = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
  [v7 applyComplicationContentSpecificAttributesAnimated:0 faceView:self];

  [(NTKAnalogVideoFaceView *)self setupVideoPlayerView];
  if (!self->_faceTapControl)
  {
    v8 = objc_opt_new();
    faceTapControl = self->_faceTapControl;
    self->_faceTapControl = v8;

    [(NTKFaceViewTapControl *)self->_faceTapControl addTarget:self action:sel_faceViewWasTapped_ forControlEvents:64];
    v10 = [(NTKFaceViewTapControl *)self->_faceTapControl highlightImageView];
    v11 = [(NTKAnalogVideoFaceView *)self _tapHighlightImage];
    [v10 setImage:v11];

    v12 = [(NTKFaceView *)self contentView];
    [v12 addSubview:self->_faceTapControl];
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

- (void)setNormalComplicationDisplayWrapper:(id)a3 forSlot:(id)a4
{
  v4.receiver = self;
  v4.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v4 setNormalComplicationDisplayWrapper:a3 forSlot:a4];
}

- (void)setDataMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v5 setDataMode:?];
  [(NTKFaceViewTapControl *)self->_faceTapControl setHighlighted:0];
  [(NTKFaceViewTapControl *)self->_faceTapControl setUserInteractionEnabled:a3 == 1];
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

- (void)_setVideoPlayerDataSource:(id)a3
{
  v9 = a3;
  v4 = [(NTKAnalogVideoFaceView *)self videoPlayerView];
  v5 = [v4 dataSource];

  if (v5 != v9)
  {
    v6 = [(NTKAnalogVideoFaceView *)self videoPlayerView];
    [v6 setDataSource:v9];

    v7 = [(NTKAnalogVideoFaceView *)self videoPlayerView];
    v8 = [v9 posterImage];
    [v7 setPosterImage:v8];
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

- (void)_cleanupAfterOrb:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v4 _cleanupAfterOrb:a3];
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

- (void)screenDidTurnOffAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKAnalogVideoFaceView;
  [(NTKFaceView *)&v4 screenDidTurnOffAnimated:a3];
  [(NTKAnalogVideoFaceView *)self _tearDownTransitioningView:0];
  [(NTKVideoPlayerView *)self->_videoPlayerView handleScreenOff];
}

- (void)faceViewWasTapped:(id)a3
{
  if ([(NTKAnalogVideoFaceView *)self _shouldAnimateComplicationsOnTap])
  {
    v4 = [(NTKAnalogVideoFaceView *)self _complicationsTapColor];
    complicationColor = self->_complicationColor;
    self->_complicationColor = v4;

    v6 = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
    [v6 applyComplicationContentSpecificAttributesAnimated:1 faceView:self];
  }

  [(NTKVideoPlayerView *)self->_videoPlayerView videoPlayerViewWasTapped];

  [(NTKAnalogVideoFaceView *)self _faceViewWasTapped];
}

- (id)_tapHighlightImage
{
  v2 = [(NTKFaceView *)self device];
  v3 = NTKNoHighlightDialTapImage(v2);

  return v3;
}

- (void)_configureTimeView:(id)a3
{
  v8.receiver = self;
  v8.super_class = NTKAnalogVideoFaceView;
  v3 = a3;
  [(NTKAnalogFaceView *)&v8 _configureTimeView:v3];
  v4 = [v3 minuteHandView];
  v5 = [MEMORY[0x277D75348] blackColor];
  [v4 setHandDotColor:v5];

  v6 = [v3 secondHandView];

  v7 = [MEMORY[0x277D75348] systemOrangeColor];
  [v6 setColor:v7];
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceView *)self device];
  if ([v5 deviceCategory] == 1)
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [v4 isEqualToString:@"bottom-center"];

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v16 = a8;
  if ([(NTKAnalogVideoFaceView *)self _layoutStyleForSlot:?]== 1)
  {
    v14 = [(NTKAnalogVideoFaceView *)self _utilitySlotForSlot:v16];
    v15 = [(NTKFaceView *)self device];
    [NTKUtilityComplicationFactory curvedCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v14 forDevice:v15];
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
    v5 = [(NTKFaceView *)self delegate];
    v6 = [v5 faceViewComplicationIsEmptyForSlot:@"bottom-center"];

    v7 = [(NTKFaceView *)self _complicationSlotsHiddenByCurrentConfiguration];
    v8 = [v7 containsObject:@"bottom-center"];

    v9 = [(NTKFaceView *)self device];
    v10 = ___LayoutConstants_block_invoke_17(v9, v9);
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
  v3 = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
  [v3 applyComplicationContentSpecificAttributesAnimated:1 faceView:self];
}

- (id)_complicationsPlatterColor
{
  v2 = [(NTKAnalogVideoFaceView *)self _complicationsForegroundColor];
  v3 = NTKColorByPremultiplyingAlpha(v2, 0.15);

  return v3;
}

- (void)_prepareForEditing
{
  v7.receiver = self;
  v7.super_class = NTKAnalogVideoFaceView;
  [(NTKAnalogFaceView *)&v7 _prepareForEditing];
  v3 = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
  [v3 prepareForEditingForFaceView:self];

  [(NTKAnalogVideoFaceView *)self _setupTransitioningViewIfNeeded:1];
  [(NTKFaceView *)self _applyEditConfigurationsWithForce:1];
  [(NTKVideoPlayerView *)self->_videoPlayerView transitionToEditing];
  v4 = [(NTKFaceView *)self device];
  [v4 screenCornerRadius];
  v6 = v5;

  NTKApplyViewCornerRadius(self, v6);
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKAnalogVideoFaceView;
  [(NTKAnalogFaceView *)&v4 _cleanupAfterEditing];
  v3 = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
  [v3 cleanupAfterEditingForFaceView:self];

  [(NTKAnalogVideoFaceView *)self _tearDownTransitioningView:0];
  NTKApplyViewCornerRadius(self, 0.0);
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4
{
  if ([a3 isEqualToString:{@"bottom-center", a4}])
  {
    v5 = [(NTKFaceView *)self delegate];
    [v5 faceViewWantsCustomKeylineFramesReloadedForEditMode:12];

    v6 = [(NTKFaceView *)self delegate];
    [v6 faceViewWantsCustomKeylineFramesReloadedForEditMode:15];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  transitioningView = self->_transitioningView;
  if (transitioningView)
  {
    [(NTKEditOptionTransitioningView *)transitioningView setOption:a3, a4, a5];
  }

  faceViewComplicationFactory = self->_faceViewComplicationFactory;

  [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:0 faceView:self, a5];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v8 = [(NTKFaceView *)self editing];
  if (a4 && !a5 && v8)
  {
    [(NTKAnalogVideoFaceView *)self _tearDownTransitioningView:0];
  }

  v9 = [(NTKFaceView *)self timeView];
  [(NTKAnalogVideoFaceView *)self _handAlphaForEditMode:a4];
  [(NTKAnalogVideoFaceView *)self _handAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v9 setAlpha:?];

  v10 = [(NTKFaceView *)self foregroundContainerView];
  [(NTKAnalogVideoFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKAnalogVideoFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v10 setAlpha:?];

  transitioningView = self->_transitioningView;
  [(NTKAnalogVideoFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKAnalogVideoFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();

  [(NTKEditOptionTransitioningView *)transitioningView setDimmingAlpha:?];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = NTKAlphaForRubberBandingFraction(a3);
  [(NTKAnalogVideoFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKEditOptionTransitioningView *)self->_transitioningView setDimmingAlpha:v8 * v9];
  transitioningView = self->_transitioningView;

  [(NTKEditOptionTransitioningView *)transitioningView setRubberBandingFraction:a3];
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceView *)self device];
  if ([v5 deviceCategory] != 1)
  {
    if ([v4 isEqualToString:@"top-left"])
    {
    }

    else
    {
      v7 = [v4 isEqualToString:@"top-right"];

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

- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([objc_opt_class() isRichComplicationsEnabled] && ((objc_msgSend(v6, "isEqualToString:", @"top-left") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"top-right")))
  {
    v7 = [(NTKAnalogVideoFaceView *)self faceViewComplicationFactory];
    [v7 keylineFrameForCornerComplicationSlot:v6 selected:v4];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = NTKAnalogVideoFaceView;
    [(NTKFaceView *)&v24 _keylineFrameForComplicationSlot:v6 selected:v4];
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

- (void)customizeFaceViewForListing:(id)a3 changeEvent:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v16 = v8;
  if (a4 != 2 || (v9 = [(NTKAnalogVideoFaceView *)self _shouldAnimateComplicationsOnTap], v8 = v16, !v9))
  {
    v10 = [v8 color];
    v8 = v16;
    if (v10)
    {
      v11 = v10;
      complicationColor = self->_complicationColor;
      v13 = [v16 color];

      v8 = v16;
      if (complicationColor != v13)
      {
        v14 = [v16 color];
        v15 = self->_complicationColor;
        self->_complicationColor = v14;

        [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:v5 faceView:self];
        v8 = v16;
      }
    }
  }
}

- (void)_transformVideoPlayerView:(unint64_t)a3
{
  if (a3 == 2)
  {
    v9 = [&unk_28418AE28 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(&unk_28418AE28, "count"))}];
    [v9 floatValue];

    v5 = [(NTKAnalogVideoFaceView *)self videoPlayerView];
    CLKDegreesToRadians();
LABEL_9:
    CGAffineTransformMakeRotation(&v11, v8);
    v4 = v5;
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    if (_transformVideoPlayerView__onceToken != -1)
    {
      [NTKAnalogVideoFaceView _transformVideoPlayerView:];
    }

    v10 = 0.0;
    v7 = +[NTKDate faceDate];
    NTKHourMinuteSecondAnglesForTime(0, 0, &v10, v7, _transformVideoPlayerView___calendar);

    v5 = [(NTKAnalogVideoFaceView *)self videoPlayerView];
    v8 = v10;
    goto LABEL_9;
  }

  if (a3)
  {
    return;
  }

  v4 = [(NTKAnalogVideoFaceView *)self videoPlayerView];
  v5 = v4;
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&v11.a = *MEMORY[0x277CBF2C0];
  *&v11.c = v6;
  *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
LABEL_10:
  [v4 setVideoPlayerTransform:&v11];
}

void __52__NTKAnalogVideoFaceView__transformVideoPlayerView___block_invoke()
{
  v0 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v1 = _transformVideoPlayerView___calendar;
  _transformVideoPlayerView___calendar = v0;
}

- (void)setVideoDialSize:(CGSize)a3
{
  p_videoDialSize = &self->_videoDialSize;
  self->_videoDialSize = a3;
  v5 = [(NTKAnalogVideoFaceView *)self videoPlayerView];
  [(NTKAnalogVideoFaceView *)self _insetsForDialSize:p_videoDialSize->width, p_videoDialSize->height];
  [v5 setVideoPlayerInset:?];
}

- (UIEdgeInsets)_insetsForDialSize:(CGSize)a3
{
  if (a3.width == 0.0)
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    width = a3.width;
    v8 = [(NTKFaceView *)self device:a3.width];
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

- (int64_t)_utilitySlotForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"top-left"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"top-right"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"bottom-left"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"bottom-right"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"bottom-center"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"date"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1) <= 0xB && ((0xA0Fu >> v4))
  {
    v5 = *off_278780A78[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_handAlphaForEditMode:(int64_t)a3
{
  result = 0.2;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  result = 0.2;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = 0.2;
  if (a3 < 2)
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