@interface NTKBasePhotosFaceView
- (BOOL)_curtainViewVisible;
- (Class)photosFaceClass;
- (NTKBasePhotosFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_backgroundImageAlphaForEditMode:(int64_t)mode;
- (double)_editSpeedForCustomEditMode:(int64_t)mode slot:(id)slot;
- (double)_foregroundAlphaForEditMode:(int64_t)mode;
- (double)_foregroundAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (double)_keylineCornerRadiusForComplicationSlot:(id)slot;
- (double)_timeLabelAlphaForEditMode:(int64_t)mode;
- (double)_timeTravelYAdjustment;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_selectedContentView;
- (id)createFaceColorPalette;
- (int64_t)_utilitySlotForSlot:(id)slot;
- (unint64_t)dateAlignment;
- (void)_animateIn;
- (void)_applyAlignment;
- (void)_applyComplicationContentSpecificAttributesAnimated:(BOOL)animated;
- (void)_applyDataMode;
- (void)_applyForegroundAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPhotosColorFrom:(id)from to:(id)to fraction:(double)fraction;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyScrubbingForegroundColor:(id)color shadowColor:(id)shadowColor;
- (void)_applySlow;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterOrb:(BOOL)orb;
- (void)_configureComplicationFactory;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_handleScreenWake;
- (void)_hideCurtainView;
- (void)_layoutForegroundContainerView;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_playPhoto;
- (void)_playStill;
- (void)_playVideo;
- (void)_playVideoForScreenWake:(id)wake;
- (void)_prepareForEditing;
- (void)_prepareForOrb;
- (void)_scheduleSleepPreloadTask;
- (void)_setComplicationsHidden:(BOOL)hidden;
- (void)_setDateAttributes:(id)attributes animated:(BOOL)animated;
- (void)_showCurtainView;
- (void)_startScrubbingAnimationFromUIViewAnimateWithDuration;
- (void)_unloadSnapshotContentViews;
- (void)_unpauseFromSwitcher;
- (void)_updatePaused;
- (void)applyPhotosColorRamp:(id)ramp photosMonoColorRamp:(id)colorRamp monochromeColorMatrix:(id)matrix toPhotosImageView:(id)view;
- (void)dealloc;
- (void)imageViewDidBeginPlaying:(id)playing;
- (void)layoutSubviews;
- (void)setMonochromeColorMatrix:(id)matrix;
- (void)setNoPhotosViewVisible:(BOOL)visible;
- (void)updateWithColorPalette:(id)palette;
@end

@implementation NTKBasePhotosFaceView

- (NTKBasePhotosFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKBasePhotosFaceView;
  v9 = [(NTKFaceView *)&v22 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    if (CLKIsClockFaceApp())
    {
      v10 = objc_alloc_init(NTKTaskScheduler);
      taskScheduler = v9->_taskScheduler;
      v9->_taskScheduler = v10;
    }

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    foregroundColor = v9->_foregroundColor;
    v9->_foregroundColor = whiteColor;

    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:*off_27877BE58];
    shadowColor = v9->_shadowColor;
    v9->_shadowColor = v14;

    v16 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    complicationFactory = v9->_complicationFactory;
    v9->_complicationFactory = v16;

    [(NTKBasePhotosFaceView *)v9 _configureComplicationFactory];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__unpauseFromSwitcher name:@"NTKFaceLibraryDismissedNotification" object:0];

    v19 = NTKDefaultMonochromeColorMatrix();
    monochromeColorMatrix = v9->_monochromeColorMatrix;
    v9->_monochromeColorMatrix = v19;
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"NTKFaceLibraryDismissedNotification" object:0];

  [(NSTimer *)self->_playOnWakeTimeout invalidate];
  [(NTKBasePhotosFaceView *)self _unloadSnapshotContentViews];
  [(NTKTaskScheduler *)self->_taskScheduler cancelAllTasks];
  v4.receiver = self;
  v4.super_class = NTKBasePhotosFaceView;
  [(NTKFaceView *)&v4 dealloc];
}

- (id)createFaceColorPalette
{
  v2 = [(NTKFaceColorPalette *)[NTKPhotosColorPalette alloc] initWithFaceClass:[(NTKBasePhotosFaceView *)self photosFaceClass]];

  return v2;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKBasePhotosFaceView;
  [(NTKDigitalFaceView *)&v12 layoutSubviews];
  foregroundContainerView = [(NTKFaceView *)self foregroundContainerView];
  [foregroundContainerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_posterImageView ntk_setBoundsAndPositionFromFrame:v5, v7, v9, v11];
  [(UIView *)self->_cornerView ntk_setBoundsAndPositionFromFrame:v5, v7, v9, v11];
  [(UIView *)self->_noPhotosView ntk_setBoundsAndPositionFromFrame:v5, v7, v9, v11];
}

- (unint64_t)dateAlignment
{
  if (self->_noPhotosViewVisible)
  {
    return 0;
  }

  else
  {
    return self->_dateAlignment;
  }
}

- (double)_timeTravelYAdjustment
{
  dateAlignment = [(NTKBasePhotosFaceView *)self dateAlignment];
  result = 0.0;
  if (dateAlignment != 1)
  {
    v5.receiver = self;
    v5.super_class = NTKBasePhotosFaceView;
    [(NTKBackgroundImageFaceView *)&v5 _timeTravelYAdjustment];
  }

  return result;
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v28[9] = *MEMORY[0x277D85DE8];
  if ([(NTKBasePhotosFaceView *)self dateAlignment]== 1)
  {
    [(NTKBasePhotosFaceView *)self bounds];
    device = [(NTKFaceView *)self device];
    v11 = [MEMORY[0x277CBBAF8] metricsWithDevice:device identitySizeClass:2];
    v27[0] = &unk_284182308;
    v27[1] = &unk_284182320;
    v28[0] = &unk_2841881D8;
    v28[1] = &unk_2841881E8;
    v27[2] = &unk_284182338;
    v27[3] = &unk_284182350;
    v28[2] = &unk_2841881F8;
    v28[3] = &unk_284188208;
    v27[4] = &unk_284182368;
    v27[5] = &unk_284182380;
    v28[4] = &unk_284188218;
    v28[5] = &unk_284188228;
    v27[6] = &unk_284182398;
    v27[7] = &unk_2841823B0;
    v28[6] = &unk_284188238;
    v28[7] = &unk_284188228;
    v27[8] = &unk_2841823C8;
    v28[8] = &unk_284188228;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:9];
    [v11 scaledValue:v12 withOverrides:99.0];

    CLKAlterRect();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    device2 = [(NTKFaceView *)self device];
    v22 = NTKDigitalTimeLabelStyleWideRightSideMargin(device2);
    device3 = [(NTKFaceView *)self device];
    height = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:device3 applyAdvanceFudge:v14 forDevice:v16, v18, v20, v22];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = NTKBasePhotosFaceView;
    height = [(NTKBackgroundImageFaceView *)&v26 _digitalTimeLabelStyleFromViewMode:mode faceBounds:x, y, width, height];
  }

  return height;
}

- (void)_layoutForegroundContainerView
{
  v2.receiver = self;
  v2.super_class = NTKBasePhotosFaceView;
  [(NTKFaceView *)&v2 _layoutForegroundContainerView];
}

- (void)setNoPhotosViewVisible:(BOOL)visible
{
  if (self->_noPhotosViewVisible != visible)
  {
    visibleCopy = visible;
    [(UIView *)self->_currentGradientView removeFromSuperview];
    currentGradientView = self->_currentGradientView;
    self->_currentGradientView = 0;

    dateAlignment = [(NTKBasePhotosFaceView *)self dateAlignment];
    self->_noPhotosViewVisible = visibleCopy;
    if (visibleCopy)
    {
      if (self->_noPhotosView)
      {
        v7 = 0;
      }

      else
      {
        v8 = [NTKAlbumEmptyView alloc];
        device = [(NTKFaceView *)self device];
        v10 = [(NTKAlbumEmptyView *)v8 initForDevice:device];
        noPhotosView = self->_noPhotosView;
        self->_noPhotosView = v10;

        [(NTKBasePhotosFaceView *)self insertSubview:self->_noPhotosView atIndex:0];
        [(NTKBasePhotosFaceView *)self setNeedsLayout];
        v7 = !self->_noPhotosViewVisible;
      }
    }

    else
    {
      v7 = 1;
    }

    [(NTKAlbumEmptyView *)self->_noPhotosView setHidden:v7];
    [(NTKPhotoImageView *)self->_posterImageView setHidden:self->_noPhotosViewVisible];
    timeView = [(NTKFaceView *)self timeView];
    [timeView setHidden:self->_noPhotosViewVisible];

    if ([(NTKBasePhotosFaceView *)self dateAlignment]!= dateAlignment)
    {
      [(NTKBasePhotosFaceView *)self _applyAlignment];
    }

    if (self->_noPhotosViewVisible != visibleCopy)
    {
      [(NTKBasePhotosFaceView *)self _applyPhotosColor];
      LOBYTE(visibleCopy) = self->_noPhotosViewVisible;
    }

    [(NTKBasePhotosFaceView *)self _setComplicationsHidden:visibleCopy];
    if (self->_noPhotosViewVisible)
    {
      v13 = +[NTKPhotoAnalysis defaultAnalysis];
      [(NTKBasePhotosFaceView *)self _setDateAttributes:v13 animated:0];
    }
  }
}

- (void)_loadLayoutRules
{
  v29 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = NTKBasePhotosFaceView;
  [(NTKFaceView *)&v26 _loadLayoutRules];
  [(NTKBasePhotosFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(NTKBackgroundImageFaceView *)self _shouldAdjustLayoutForTimeTravel])
  {
    [(NTKBasePhotosFaceView *)self _timeTravelYAdjustment];
    CLKAlterRect();
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v27[0] = @"top";
  v27[1] = @"bottom";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:{2, 0}];
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        v21 = [(NTKFaceView *)self complicationLayoutforSlot:v20];
        [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v21 forSlot:[(NTKBasePhotosFaceView *)self _utilitySlotForSlot:v20] withBounds:v4, v6, v8, v10];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v17);
  }
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationFactory = self->_complicationFactory;
  slotCopy = slot;
  complicationCopy = complication;
  v11 = [(NTKUtilityComplicationFactory *)complicationFactory newViewForComplication:complicationCopy family:family forSlot:[(NTKBasePhotosFaceView *)self _utilitySlotForSlot:slotCopy]];

  [(NTKBasePhotosFaceView *)self _configureComplicationView:v11 forSlot:slotCopy];
  return v11;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  if ([viewCopy conformsToProtocol:&unk_28A859958])
  {
    v7 = *MEMORY[0x277D74420];
    v8 = viewCopy;
    [v8 setFontWeight:v7];
    [v8 setForegroundColor:self->_foregroundColor];
    [v8 setShadowColor:self->_shadowColor];
    [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundAlphaForEditing:[(NTKFaceView *)self editing]];
    [v8 setForegroundAlpha:?];
    [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForEditing:[(NTKFaceView *)self editing]];
    [v8 setForegroundImageAlpha:?];
    [v8 setUsesLegibility:(*(self + 1184) >> 2) & 1];
    [v8 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKBasePhotosFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", slotCopy))}];
    [v8 setSuppressesInternalColorOverrides:1];
    [v8 setHidden:self->_noPhotosViewVisible];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v8 setBackgroundColor:clearColor];
  }
}

- (double)_foregroundAlphaForEditMode:(int64_t)mode
{
  result = 0.2;
  if (mode != 10)
  {
    return 1.0;
  }

  return result;
}

- (double)_foregroundAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKBasePhotosFaceView *)self _foregroundAlphaForEditMode:mode];
  [(NTKBasePhotosFaceView *)self _foregroundAlphaForEditMode:editMode];

  CLKInterpolateBetweenFloatsClipped();
  return result;
}

- (void)_applyForegroundAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKBasePhotosFaceView *)self _foregroundAlphaForTransitionFraction:mode fromEditMode:editMode toEditMode:fraction];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__NTKBasePhotosFaceView__applyForegroundAlphaForTransitionFraction_fromEditMode_toEditMode___block_invoke;
  v7[3] = &__block_descriptor_40_e56_v24__0__NSString_8__NTKComplicationDisplayWrapperView_16l;
  v7[4] = v6;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v7];
}

void __92__NTKBasePhotosFaceView__applyForegroundAlphaForTransitionFraction_fromEditMode_toEditMode___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  if ([v4 conformsToProtocol:&unk_28A859958])
  {
    [v4 setForegroundAlpha:*(a1 + 32)];
    [v4 setForegroundImageAlpha:*(a1 + 32)];
  }
}

- (void)_applyComplicationContentSpecificAttributesAnimated:(BOOL)animated
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__NTKBasePhotosFaceView__applyComplicationContentSpecificAttributesAnimated___block_invoke;
  v3[3] = &unk_278780230;
  animatedCopy = animated;
  v3[4] = self;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v3];
}

void __77__NTKBasePhotosFaceView__applyComplicationContentSpecificAttributesAnimated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  v5 = v4;
  if (*(a1 + 40) == 1)
  {
    v6 = MEMORY[0x277D75D18];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __77__NTKBasePhotosFaceView__applyComplicationContentSpecificAttributesAnimated___block_invoke_2;
    v12 = &unk_27877E438;
    v7 = v4;
    v8 = *(a1 + 32);
    v13 = v7;
    v14 = v8;
    [v6 transitionWithView:v7 duration:5242880 options:&v9 animations:0 completion:0.5];
  }

  else
  {
    [v4 setForegroundColor:*(*(a1 + 32) + 1152)];
  }

  [v5 setShadowColor:{*(*(a1 + 32) + 1160), v9, v10, v11, v12}];
  [v5 setUsesLegibility:(*(*(a1 + 32) + 1184) >> 2) & 1];
}

void __77__NTKBasePhotosFaceView__applyComplicationContentSpecificAttributesAnimated___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__NTKBasePhotosFaceView__applyComplicationContentSpecificAttributesAnimated___block_invoke_3;
  v5[3] = &unk_27877E438;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 performWithoutAnimation:v5];
}

- (void)_setComplicationsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  complicationContainerView = [(NTKFaceView *)self complicationContainerView];
  [complicationContainerView setHidden:hiddenCopy];
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKBasePhotosFaceView;
  [(NTKBackgroundImageFaceView *)&v4 _prepareForEditing];
  [(NTKBasePhotosFaceView *)self _setComplicationsHidden:0];
  v3 = +[NTKPhotoAnalysis defaultAnalysis];
  [(NTKBasePhotosFaceView *)self _setDateAttributes:v3 animated:1];
}

- (void)_cleanupAfterEditing
{
  [(NTKBasePhotosFaceView *)self _setComplicationsHidden:self->_noPhotosViewVisible];
  v3.receiver = self;
  v3.super_class = NTKBasePhotosFaceView;
  [(NTKBackgroundImageFaceView *)&v3 _cleanupAfterEditing];
}

- (double)_backgroundImageAlphaForEditMode:(int64_t)mode
{
  result = 0.5;
  if (mode != 14)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = NTKBasePhotosFaceView;
    [(NTKBackgroundImageFaceView *)&v6 _backgroundImageAlphaForEditMode:0.5];
  }

  return result;
}

- (double)_timeLabelAlphaForEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    return 0.2;
  }

  result = 1.0;
  if (mode == 1)
  {
    return 0.2;
  }

  return result;
}

- (int64_t)_utilitySlotForSlot:(id)slot
{
  slotCopy = slot;
  dateAlignment = [(NTKBasePhotosFaceView *)self dateAlignment];
  if ([slotCopy isEqual:@"top"])
  {
    v6 = dateAlignment == 0;
    v7 = 5;
  }

  else
  {
    if (![slotCopy isEqual:@"bottom"])
    {
      v8 = 0;
      goto LABEL_9;
    }

    v6 = dateAlignment == 0;
    v7 = 7;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

LABEL_9:

  return v8;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)slot
{
  complicationFactory = self->_complicationFactory;
  v4 = [(NTKBasePhotosFaceView *)self _utilitySlotForSlot:slot];

  [(NTKUtilityComplicationFactory *)complicationFactory keylineCornerRadiusForSlot:v4];
  return result;
}

- (void)_configureComplicationFactory
{
  [(NTKUtilityComplicationFactory *)self->_complicationFactory setForegroundAlpha:1.0];
  complicationFactory = self->_complicationFactory;

  [(NTKUtilityComplicationFactory *)complicationFactory setForegroundImageAlpha:1.0];
}

- (void)_applyAlignment
{
  [(UIView *)self->_currentGradientView removeFromSuperview];
  currentGradientView = self->_currentGradientView;
  self->_currentGradientView = 0;

  [(NTKBasePhotosFaceView *)self _loadLayoutRules];
  [(NTKBasePhotosFaceView *)self setNeedsLayout];
  foregroundContainerView = [(NTKFaceView *)self foregroundContainerView];
  [foregroundContainerView setNeedsLayout];

  [(NTKDigitalFaceView *)self invalidateDigitalTimeLabelStyle];
  delegate = [(NTKFaceView *)self delegate];
  [delegate faceViewWantsComplicationKeylineFramesReloaded];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    palette = [(NTKBasePhotosFaceView *)self palette];
    [(NTKBasePhotosFaceView *)self updateWithColorPalette:palette];
LABEL_14:

    goto LABEL_15;
  }

  if (mode != 14)
  {
    if (mode != 12)
    {
      goto LABEL_15;
    }

    palette = NTKCompanionClockFaceLocalizedString(@"PHOTOS_FACE_NO_CUSTOM_PHOTOS_TEXT_COMPANION", @"No photos");
    v10 = NTKCompanionClockFaceLocalizedString(@"PHOTOS_FACE_NO_SYNCED_ALBUM_TEXT_COMPANION", @"No synced photos");
    v11 = NTKCompanionClockFaceLocalizedString(@"PHOTOS_FACE_NO_MEMORIES_TEXT_COMPANION", @"No memories");
    if ([optionCopy photosContent] == 1)
    {
      [(NTKAlbumEmptyView *)self->_noPhotosView setBodyLabelText:palette];
    }

    if (![optionCopy photosContent])
    {
      [(NTKAlbumEmptyView *)self->_noPhotosView setBodyLabelText:v10];
    }

    if ([optionCopy photosContent] == 2)
    {
      [(NTKAlbumEmptyView *)self->_noPhotosView setBodyLabelText:v11];
    }

    goto LABEL_14;
  }

  dateAlignment = [(NTKBasePhotosFaceView *)self dateAlignment];
  self->_dateAlignment = [optionCopy alignment];
  if ([(NTKBasePhotosFaceView *)self dateAlignment]!= dateAlignment)
  {
    [(NTKBasePhotosFaceView *)self _applyAlignment];
  }

LABEL_15:
}

- (void)updateWithColorPalette:(id)palette
{
  paletteCopy = palette;
  colorRampImage = [paletteCopy colorRampImage];
  photosColorRamp = self->_photosColorRamp;
  self->_photosColorRamp = colorRampImage;

  monocolorRampImage = [paletteCopy monocolorRampImage];

  photosMonoColorRamp = self->_photosMonoColorRamp;
  self->_photosMonoColorRamp = monocolorRampImage;

  [(NTKBasePhotosFaceView *)self _applyPhotosColor];
}

- (void)applyPhotosColorRamp:(id)ramp photosMonoColorRamp:(id)colorRamp monochromeColorMatrix:(id)matrix toPhotosImageView:(id)view
{
  matrixCopy = matrix;
  viewCopy = view;
  colorRampCopy = colorRamp;
  rampCopy = ramp;
  if (NTKIsDefaultMonochromeColorMatrix(matrixCopy))
  {
    v13 = colorRampCopy;
  }

  else
  {
    v13 = rampCopy;
  }

  v14 = v13;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__NTKBasePhotosFaceView_applyPhotosColorRamp_photosMonoColorRamp_monochromeColorMatrix_toPhotosImageView___block_invoke;
  block[3] = &unk_27877E238;
  v19 = v14;
  v20 = matrixCopy;
  v21 = viewCopy;
  v15 = viewCopy;
  v16 = matrixCopy;
  v17 = v14;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_applyPhotosColorFrom:(id)from to:(id)to fraction:(double)fraction
{
  monochromeColorMatrix = self->_monochromeColorMatrix;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__NTKBasePhotosFaceView__applyPhotosColorFrom_to_fraction___block_invoke;
  v8[3] = &unk_278780280;
  v8[4] = self;
  [NTKPhotosColorPalette colorRampForMonochromeColorMatrix:monochromeColorMatrix fromPalette:from toPalette:to transitionFraction:v8 completion:fraction];
}

void __59__NTKBasePhotosFaceView__applyPhotosColorFrom_to_fraction___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__NTKBasePhotosFaceView__applyPhotosColorFrom_to_fraction___block_invoke_2;
  v11[3] = &unk_278780258;
  v15 = a4;
  v12 = v7;
  v13 = v8;
  v14 = *(a1 + 32);
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 14)
  {
    v6 = NTKScaleForRubberBandingFraction(fraction);
    foregroundContainerView = [(NTKFaceView *)self foregroundContainerView];
    CGAffineTransformMakeScale(&v9, v6, v6);
    [foregroundContainerView setTransform:&v9];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKBasePhotosFaceView;
    [(NTKBackgroundImageFaceView *)&v8 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:fraction];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    interpolatedColorPalette2 = [(NTKFaceView *)self interpolatedColorPalette];
    toPalette = [interpolatedColorPalette2 toPalette];
    [(NTKBasePhotosFaceView *)self _applyPhotosColorFrom:fromPalette to:toPalette fraction:fraction];
  }

  else if (mode == 14)
  {
    if (fraction >= 0.5)
    {
      v15 = toOptionCopy;
    }

    else
    {
      v15 = optionCopy;
    }

    [(NTKBasePhotosFaceView *)self _applyOption:v15 forCustomEditMode:14 slot:slotCopy];
    v16 = (fraction * -2.0 + 1.0) * (fraction * -2.0 + 1.0) * (fabs(fraction * -2.0 + 1.0) * -2.0 + 3.0);
    timeView = [(NTKFaceView *)self timeView];
    [timeView setAlpha:v16];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __93__NTKBasePhotosFaceView__applyTransitionFraction_fromOption_toOption_forCustomEditMode_slot___block_invoke;
    v22[3] = &__block_descriptor_40_e56_v24__0__NSString_8__NTKComplicationDisplayWrapperView_16l;
    *&v22[4] = v16;
    [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v22];
  }
}

void __93__NTKBasePhotosFaceView__applyTransitionFraction_fromOption_toOption_forCustomEditMode_slot___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 display];
  [v4 setAlpha:v3];
}

- (double)_editSpeedForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 14)
  {
    return 150.0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKBasePhotosFaceView;
  [(NTKFaceView *)&v7 _editSpeedForCustomEditMode:mode slot:slot];
  return result;
}

- (id)_selectedContentView
{
  if (self->_noPhotosViewVisible)
  {
    v2 = &OBJC_IVAR___NTKBasePhotosFaceView__noPhotosView;
  }

  else
  {
    v2 = &OBJC_IVAR___NTKBasePhotosFaceView__posterImageView;
  }

  return *(&self->super.super.super.super.super.super.isa + *v2);
}

- (void)_applyFrozen
{
  v4.receiver = self;
  v4.super_class = NTKBasePhotosFaceView;
  [(NTKFaceView *)&v4 _applyFrozen];
  if ([(NTKFaceView *)self isFrozen])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  *(self + 1184) = *(self + 1184) & 0xFD | v3;
  [(NTKBasePhotosFaceView *)self _updatePaused];
}

- (void)_applySlow
{
  v3.receiver = self;
  v3.super_class = NTKBasePhotosFaceView;
  [(NTKFaceView *)&v3 _applySlow];
  [(NTKBasePhotosFaceView *)self _updatePaused];
}

- (void)_prepareForOrb
{
  v3.receiver = self;
  v3.super_class = NTKBasePhotosFaceView;
  [(NTKFaceView *)&v3 _prepareForOrb];
  [(NTKBasePhotosFaceView *)self _updatePaused];
}

- (void)_cleanupAfterOrb:(BOOL)orb
{
  v4.receiver = self;
  v4.super_class = NTKBasePhotosFaceView;
  [(NTKFaceView *)&v4 _cleanupAfterOrb:orb];
  [(NTKBasePhotosFaceView *)self _updatePaused];
}

- (void)_updatePaused
{
  v3 = [(NTKFaceView *)self isFrozen]|| [(NTKFaceView *)self orbing]|| [(NTKFaceView *)self isSlow]|| [(NTKFaceView *)self dataMode]!= 1;
  if (self->_paused != v3)
  {
    self->_paused = v3;
    if (v3)
    {
      if ([(NTKPhotoImageView *)self->_posterImageView isPlaying])
      {
        [(NTKPhotoImageView *)self->_posterImageView interruptPlayback];
      }

      self->_shouldPlayOnWake = 0;
    }

    else if ([(NTKBasePhotosFaceView *)self _screenOn])
    {
      self->_shouldPlayOnWake = 0;
      [(NTKBasePhotosFaceView *)self _playPhoto];
    }

    else
    {
      self->_shouldPlayOnWake = 1;
      [(NSTimer *)self->_playOnWakeTimeout invalidate];
      v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__playVideoForScreenWake_ selector:0 userInfo:0 repeats:0.25];
      playOnWakeTimeout = self->_playOnWakeTimeout;
      self->_playOnWakeTimeout = v4;
    }

    self->_updateWhenUnpausing = 0;
  }
}

- (void)_playPhoto
{
  if ([(NTKPhotoImageView *)self->_posterImageView isPhotoIris]&& ([(NTKPhotoImageView *)self->_posterImageView irisURL], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {

    [(NTKBasePhotosFaceView *)self _playVideo];
  }

  else
  {

    [(NTKBasePhotosFaceView *)self _playStill];
  }
}

- (void)_playStill
{
  [(NTKBasePhotosFaceView *)self _hideCurtainView];
  if (self->_shouldPlayIntro)
  {
    [(NTKBasePhotosFaceView *)self _animateIn];
    self->_shouldPlayIntro = 0;
  }
}

- (void)_playVideo
{
  shouldPlayIntro = self->_shouldPlayIntro;
  posterImageView = self->_posterImageView;
  if (shouldPlayIntro)
  {
    [(NTKPhotoImageView *)posterImageView playWithMode:2];
    self->_shouldPlayIntro = 0;
  }

  else if ([(NTKPhotoImageView *)posterImageView isPlaying])
  {
    [(NTKBasePhotosFaceView *)self _hideCurtainView];
    self->_isStartingPlaybackOnSingleTap = 0;
    v5 = self->_posterImageView;

    [(NTKPhotoImageView *)v5 resumeInterruptedPlayback];
  }
}

- (void)_playVideoForScreenWake:(id)wake
{
  [(NSTimer *)self->_playOnWakeTimeout invalidate];
  if (self->_shouldPlayOnWake && !self->_preLoadingPhotoOnSleep)
  {
    self->_shouldPlayOnWake = 0;
    if ([(NTKPhotoImageView *)self->_posterImageView isPhotoIris])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__NTKBasePhotosFaceView__playVideoForScreenWake___block_invoke;
      block[3] = &unk_27877DB10;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {

      [(NTKBasePhotosFaceView *)self _playStill];
    }
  }
}

- (void)_unpauseFromSwitcher
{
  if (self->_updateWhenUnpausing)
  {
    [(NTKBasePhotosFaceView *)self _updatePaused];
    self->_updateWhenUnpausing = 0;
  }
}

- (void)_loadSnapshotContentViews
{
  v32.receiver = self;
  v32.super_class = NTKBasePhotosFaceView;
  [(NTKBackgroundImageFaceView *)&v32 _loadSnapshotContentViews];
  if ((*(self + 1184) & 1) == 0)
  {
    [(NTKBasePhotosFaceView *)self _invalidatePreloadedPhoto];
    [(NTKPhotoImageView *)self->_posterImageView removeFromSuperview];
    v3 = [NTKPhotoImageView alloc];
    [(NTKBasePhotosFaceView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    device = [(NTKFaceView *)self device];
    v13 = [(NTKPhotoImageView *)v3 initWithFrame:device forDevice:v5, v7, v9, v11];
    posterImageView = self->_posterImageView;
    self->_posterImageView = v13;

    [(NTKBasePhotosFaceView *)self _applyPhotosColor];
    [(NTKPhotoImageView *)self->_posterImageView setDelegate:self];
    layer = [(NTKPhotoImageView *)self->_posterImageView layer];
    [layer setAllowsEdgeAntialiasing:0];

    layer2 = [(NTKPhotoImageView *)self->_posterImageView layer];
    [layer2 setAllowsGroupOpacity:0];

    contentView = [(NTKFaceView *)self contentView];
    [contentView addSubview:self->_posterImageView];

    contentView2 = [(NTKFaceView *)self contentView];
    [contentView2 sendSubviewToBack:self->_posterImageView];

    v19 = [NTKRoundedCornerOverlayView alloc];
    [(NTKBasePhotosFaceView *)self bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    device2 = [(NTKFaceView *)self device];
    v29 = [(NTKRoundedCornerOverlayView *)v19 initWithFrame:device2 forDeviceCornerRadius:v21, v23, v25, v27];
    cornerView = self->_cornerView;
    self->_cornerView = v29;

    contentView3 = [(NTKFaceView *)self contentView];
    [contentView3 insertSubview:self->_cornerView aboveSubview:self->_posterImageView];

    *(self + 1184) |= 1u;
    *(self + 1184) |= 2u;
  }
}

- (void)_unloadSnapshotContentViews
{
  v7.receiver = self;
  v7.super_class = NTKBasePhotosFaceView;
  [(NTKBackgroundImageFaceView *)&v7 _unloadSnapshotContentViews];
  self->_updateWhenUnpausing = 0;
  if (*(self + 1184))
  {
    [(NTKPhotoImageView *)self->_posterImageView removeFromSuperview];
    [(UIView *)self->_cornerView removeFromSuperview];
    [(UIView *)self->_currentGradientView removeFromSuperview];
    currentGradientView = self->_currentGradientView;
    self->_currentGradientView = 0;

    [(NTKAlbumEmptyView *)self->_noPhotosView removeFromSuperview];
    noPhotosView = self->_noPhotosView;
    self->_noPhotosView = 0;

    posterImageView = self->_posterImageView;
    self->_posterImageView = 0;

    cornerView = self->_cornerView;
    self->_cornerView = 0;

    *(self + 1184) &= ~1u;
    *(self + 1184) &= ~2u;
  }
}

- (void)_applyDataMode
{
  v7.receiver = self;
  v7.super_class = NTKBasePhotosFaceView;
  [(NTKFaceView *)&v7 _applyDataMode];
  dataMode = [(NTKFaceView *)self dataMode];
  v4 = dataMode;
  if ((dataMode - 3) >= 3)
  {
    if (dataMode == 2)
    {
      device = [(NTKFaceView *)self device];
      if ([device isLocked])
      {
      }

      else
      {
        screenWillGoDark = [(NTKBasePhotosFaceView *)self screenWillGoDark];

        if (screenWillGoDark)
        {
          [(NTKTaskScheduler *)self->_taskScheduler cancelAllTasks];
          [(NTKBasePhotosFaceView *)self _scheduleSleepPreloadTask];
        }
      }
    }

    else
    {
      if (dataMode != 1)
      {
        goto LABEL_3;
      }

      if (self->_previousDataMode == 3)
      {
        self->_updateWhenUnpausing = 1;
        goto LABEL_3;
      }
    }
  }

  [(NTKBasePhotosFaceView *)self _updatePaused];
LABEL_3:
  self->_previousDataMode = v4;
}

- (void)_scheduleSleepPreloadTask
{
  self->_preloadedPhotoOnSleep = 0;
  objc_initWeak(&location, self);
  taskScheduler = self->_taskScheduler;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__NTKBasePhotosFaceView__scheduleSleepPreloadTask__block_invoke;
  v5[3] = &unk_2787802A8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v4 = [(NTKTaskScheduler *)taskScheduler scheduleTask:v5 identifier:@"com.apple.ntk.NTKBasePhotosFaceView"];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __50__NTKBasePhotosFaceView__scheduleSleepPreloadTask__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained screenWillGoDark] && (v3[1121] & 1) == 0)
  {
    v4 = 1;
    v3[1096] = 1;
    v3[1120] = 1;
    [v3 _preloadNextPhoto];
    v3[1120] = 0;
    v3[1121] = 1;
    if (v3[1097] == 1 && [*(a1 + 32) _screenOn])
    {
      [v3 _playVideoForScreenWake:0];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_animateIn
{
  memset(&v6, 0, sizeof(v6));
  CGAffineTransformMakeScale(&v6, 0.95, 0.95);
  v5 = v6;
  [(UIView *)self->_cornerView setTransform:&v5];
  v5 = v6;
  [(NTKPhotoImageView *)self->_posterImageView setTransform:&v5];
  [(NTKPhotoImageView *)self->_posterImageView setAlpha:0.0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__NTKBasePhotosFaceView__animateIn__block_invoke;
  v4[3] = &unk_27877DB10;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v4 options:0 animations:0.8 completion:0.0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__NTKBasePhotosFaceView__animateIn__block_invoke_2;
  v3[3] = &unk_27877DB10;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v3 options:0 animations:0.25 completion:0.1];
}

uint64_t __35__NTKBasePhotosFaceView__animateIn__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1072);
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v8 = *MEMORY[0x277CBF2C0];
  v7 = v8;
  v9 = v6;
  v10 = *(MEMORY[0x277CBF2C0] + 32);
  v5 = v10;
  [v2 setTransform:&v8];
  v3 = *(*(a1 + 32) + 1144);
  v8 = v7;
  v9 = v6;
  v10 = v5;
  return [v3 setTransform:&v8];
}

- (void)_handleScreenWake
{
  [(NTKTaskScheduler *)self->_taskScheduler cancelAllTasks];

  [(NTKBasePhotosFaceView *)self _playVideoForScreenWake:0];
}

- (void)_showCurtainView
{
  blackView = self->_blackView;
  if (!blackView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKPhotoImageView *)self->_posterImageView bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_blackView;
    self->_blackView = v5;

    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)self->_blackView setBackgroundColor:blackColor];

    blackView = self->_blackView;
  }

  foregroundContainerView = [(NTKFaceView *)self foregroundContainerView];
  [(NTKBasePhotosFaceView *)self insertSubview:blackView belowSubview:foregroundContainerView];
}

- (void)_hideCurtainView
{
  [(UIView *)self->_blackView removeFromSuperview];
  blackView = self->_blackView;
  self->_blackView = 0;
}

- (BOOL)_curtainViewVisible
{
  superview = [(UIView *)self->_blackView superview];
  v3 = superview != 0;

  return v3;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v9.receiver = self;
  v9.super_class = NTKBasePhotosFaceView;
  [NTKBackgroundImageFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  [(NTKBasePhotosFaceView *)self _applyForegroundAlphaForTransitionFraction:mode fromEditMode:editMode toEditMode:fraction];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = NTKBasePhotosFaceView;
  [(NTKBackgroundImageFaceView *)&v6 _configureForEditMode:?];
  if (mode == 14 || mode == 1)
  {
    v5 = +[NTKPhotoAnalysis defaultAnalysis];
    [(NTKBasePhotosFaceView *)self _setDateAttributes:v5 animated:1];
  }

  [(NTKBasePhotosFaceView *)self _applyForegroundAlphaForTransitionFraction:mode fromEditMode:mode toEditMode:0.0];
}

- (void)setMonochromeColorMatrix:(id)matrix
{
  objc_storeStrong(&self->_monochromeColorMatrix, matrix);
  palette = [(NTKBasePhotosFaceView *)self palette];
  isOriginalColor = [palette isOriginalColor];

  if ((isOriginalColor & 1) == 0)
  {

    [(NTKBasePhotosFaceView *)self _applyPhotosColor];
  }
}

- (void)_setDateAttributes:(id)attributes animated:(BOOL)animated
{
  animatedCopy = animated;
  v60 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v7 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    dateAlignment = [(NTKBasePhotosFaceView *)self dateAlignment];
    v9 = @"Bottom";
    if (!dateAlignment)
    {
      v9 = @"Top";
    }

    *buf = 138412290;
    v59 = v9;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Applying color analysis for %@", buf, 0xCu);
  }

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  legibilityGradientColor = self->_legibilityGradientColor;
  self->_legibilityGradientColor = 0;

  if ([attributesCopy isComplexBackground])
  {
    v12 = MEMORY[0x277D75348];
    [attributesCopy bgHue];
    v14 = v13;
    [attributesCopy bgSaturation];
    v16 = v15;
    [attributesCopy bgBrightness];
    v18 = [v12 colorWithHue:v14 saturation:v16 brightness:v17 alpha:0.7];
    v19 = self->_legibilityGradientColor;
    self->_legibilityGradientColor = v18;
  }

  else if ([attributesCopy isColoredText])
  {
    v20 = MEMORY[0x277D75348];
    [attributesCopy textHue];
    v22 = v21;
    [attributesCopy textSaturation];
    v24 = v23;
    [attributesCopy textBrightness];
    v26 = [v20 colorWithHue:v22 saturation:v24 brightness:v25 alpha:1.0];

    v27 = 0;
    v28 = 0;
    v29 = 0;
    whiteColor = v26;
    goto LABEL_10;
  }

  v30 = MEMORY[0x277D75348];
  [attributesCopy shadowHue];
  v32 = v31;
  [attributesCopy shadowSaturation];
  v34 = v33;
  [attributesCopy shadowBrightness];
  v29 = [v30 colorWithHue:v32 saturation:v34 brightness:v35 alpha:*off_27877BE58];
  v28 = 4;
  v27 = 1;
LABEL_10:
  objc_storeStrong(&self->_foregroundColor, whiteColor);
  *(self + 1184) = *(self + 1184) & 0xFB | v28;
  objc_storeStrong(&self->_shadowColor, v29);
  timeView = [(NTKFaceView *)self timeView];
  v37 = timeView;
  if (animatedCopy)
  {
    v38 = MEMORY[0x277D75D18];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __53__NTKBasePhotosFaceView__setDateAttributes_animated___block_invoke;
    v52[3] = &unk_2787802D0;
    v53 = timeView;
    v54 = whiteColor;
    selfCopy = self;
    v57 = v27;
    v56 = v29;
    [v38 transitionWithView:v53 duration:5242880 options:v52 animations:0 completion:0.5];
    v39 = self->_currentGradientView;
    if (v39)
    {
      currentGradientView = self->_currentGradientView;
      self->_currentGradientView = 0;

      v41 = MEMORY[0x277D75D18];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __53__NTKBasePhotosFaceView__setDateAttributes_animated___block_invoke_2;
      v50[3] = &unk_27877DB10;
      v51 = v39;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __53__NTKBasePhotosFaceView__setDateAttributes_animated___block_invoke_3;
      v48[3] = &unk_2787802F8;
      v49 = v51;
      [v41 animateWithDuration:v50 animations:v48 completion:0.5];
    }

    if (self->_legibilityGradientColor)
    {
      v42 = [(NTKBasePhotosFaceView *)self _newGradientViewWithColor:?];
      v43 = self->_currentGradientView;
      self->_currentGradientView = v42;

      [(NTKPhotoImageView *)self->_posterImageView addSubview:self->_currentGradientView];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __53__NTKBasePhotosFaceView__setDateAttributes_animated___block_invoke_4;
      v47[3] = &unk_27877DB10;
      v47[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v47 animations:0.5];
    }

    animatedCopy = animatedCopy;
  }

  else
  {
    [timeView setColor:whiteColor];
    [v37 setUsesLegibility:{v27 & -[NTKBasePhotosFaceView _timeLabelUsesLegibility](self, "_timeLabelUsesLegibility")}];
    [v37 setShadowColor:v29];
    [(UIView *)self->_currentGradientView removeFromSuperview];
    v44 = self->_currentGradientView;
    self->_currentGradientView = 0;

    if (self->_legibilityGradientColor)
    {
      v45 = [(NTKBasePhotosFaceView *)self _newGradientViewWithColor:?];
      v46 = self->_currentGradientView;
      self->_currentGradientView = v45;

      [(UIView *)self->_currentGradientView setAlpha:1.0];
      [(NTKPhotoImageView *)self->_posterImageView addSubview:self->_currentGradientView];
    }
  }

  [(NTKBasePhotosFaceView *)self _applyComplicationContentSpecificAttributesAnimated:animatedCopy];
  [(NTKBasePhotosFaceView *)self setNeedsLayout];
}

uint64_t __53__NTKBasePhotosFaceView__setDateAttributes_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setColor:*(a1 + 40)];
  if ([*(a1 + 48) _timeLabelUsesLegibility])
  {
    v2 = *(a1 + 64);
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 32) setUsesLegibility:v2 & 1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);

  return [v3 setShadowColor:v4];
}

- (void)imageViewDidBeginPlaying:(id)playing
{
  if (self->_isStartingPlaybackOnSingleTap)
  {
    self->_isStartingPlaybackOnSingleTap = 0;

    [(NTKBasePhotosFaceView *)self _didStartPlayingIrisOnSingleTap];
  }

  else
  {
    if ([(NTKBasePhotosFaceView *)self _curtainViewVisible])
    {
      [(NTKBasePhotosFaceView *)self _animateIn];
    }

    [(NTKBasePhotosFaceView *)self _hideCurtainView];
  }
}

- (void)_applyScrubbingForegroundColor:(id)color shadowColor:(id)shadowColor
{
  colorCopy = color;
  shadowColorCopy = shadowColor;
  timeView = [(NTKFaceView *)self timeView];
  [timeView setColor:colorCopy];
  [timeView setShadowColor:shadowColorCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__NTKBasePhotosFaceView__applyScrubbingForegroundColor_shadowColor___block_invoke;
  v11[3] = &unk_27877F148;
  v12 = colorCopy;
  v13 = shadowColorCopy;
  v9 = shadowColorCopy;
  v10 = colorCopy;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v11];
}

void __68__NTKBasePhotosFaceView__applyScrubbingForegroundColor_shadowColor___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  [v4 setForegroundColor:*(a1 + 32)];
  [v4 setShadowColor:*(a1 + 40)];
}

- (void)_startScrubbingAnimationFromUIViewAnimateWithDuration
{
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(NTKBasePhotosFaceView *)self _applyScrubbingForegroundColor:whiteColor shadowColor:clearColor];
}

- (Class)photosFaceClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end