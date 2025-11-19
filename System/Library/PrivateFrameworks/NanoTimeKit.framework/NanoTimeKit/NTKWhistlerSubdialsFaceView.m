@interface NTKWhistlerSubdialsFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_isAnalog;
- (BOOL)showGossamerUI;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (CGRect)_timeViewFrameRelativeToFaceView;
- (NSCache)backgroundSwatchesCache;
- (NSCache)styleSwatchesCache;
- (NTKFace)swatchesFace;
- (NTKFaceViewController)swatchesFaceViewController;
- (NTKWhistlerSubdialsFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_horizontalPaddingForStatusBar;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (double)_minimumBreathingScaleForComplicationSlot:(id)a3;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_filterProviderForSlot:(id)a3;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_renderDialSwatchImageForStyle:(unint64_t)a3 colorOption:(id)a4;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (id)dialView;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyColorsFromPalette:(id)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromNumeralOption:(unint64_t)a4 toNumeralOption:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_removeDialView;
- (void)_setNumerals:(unint64_t)a3;
- (void)_setupDialView;
- (void)_unloadSnapshotContentViews;
- (void)layoutSubviews;
- (void)loadComplicationPlaceholderViews;
- (void)rectangularViewDidBecomeInteractive:(id)a3;
- (void)rectangularViewDidEndInteractive:(id)a3;
- (void)updateMonochromeColorForRichComplicationView:(id)a3;
- (void)updateWithColorPalette:(id)a3;
@end

@implementation NTKWhistlerSubdialsFaceView

- (BOOL)showGossamerUI
{
  v3 = [(NTKWhistlerSubdialsFaceView *)self isMemberOfClass:objc_opt_class()];
  if (v3)
  {
    v4 = [(NTKFaceView *)self device];
    v5 = NTKShowGossamerUI(v4);

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (NTKWhistlerSubdialsFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[NTKMonochromeModel alloc] initWithDevice:v9];
  topFilterProvider = self->_topFilterProvider;
  self->_topFilterProvider = v10;

  v12 = [[NTKMonochromeModel alloc] initWithDevice:v9];
  centerFilterProvider = self->_centerFilterProvider;
  self->_centerFilterProvider = v12;

  v14 = [[NTKMonochromeModel alloc] initWithDevice:v9];
  bottomFilterProvider = self->_bottomFilterProvider;
  self->_bottomFilterProvider = v14;

  v21.receiver = self;
  v21.super_class = NTKWhistlerSubdialsFaceView;
  v16 = [(NTKFaceView *)&v21 initWithFaceStyle:a3 forDevice:v9 clientIdentifier:v8];

  if (v16)
  {
    v17 = objc_opt_new();
    timeViewContainerView = v16->_timeViewContainerView;
    v16->_timeViewContainerView = v17;

    v19 = [(NTKFaceView *)v16 contentView];
    [v19 addSubview:v16->_timeViewContainerView];

    v16->_numberSystem = -1;
  }

  return v16;
}

- (id)createFaceColorPalette
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__NTKWhistlerSubdialsFaceView_createFaceColorPalette__block_invoke;
  v11[3] = &unk_278786F88;
  v11[4] = self;
  v3 = [(NTKFaceView *)self device];
  v4 = __53__NTKWhistlerSubdialsFaceView_createFaceColorPalette__block_invoke(v11, v3);
  v6 = v5;
  v8 = v7;

  v9 = objc_alloc_init(NTKGossamerColorPalette);
  [(NTKGossamerColorPalette *)v9 setBackgroundStyle:self->_backgroundStyle];
  [(NTKGossamerColorPalette *)v9 setApproximateComplicationPositions:v4, v6, v8];

  return v9;
}

double __53__NTKWhistlerSubdialsFaceView_createFaceColorPalette__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_76);
  if (_block_invoke___cachedDevice_76)
  {
    v4 = _block_invoke___cachedDevice_76 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke___previousCLKDeviceVersion_76))
  {
    _block_invoke___cachedDevice_76 = v3;
    _block_invoke___previousCLKDeviceVersion_76 = [v3 version];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__NTKWhistlerSubdialsFaceView_createFaceColorPalette__block_invoke_2;
    v10[3] = &unk_278786F88;
    v10[4] = *(a1 + 32);
    _block_invoke_value_0_21 = __53__NTKWhistlerSubdialsFaceView_createFaceColorPalette__block_invoke_2(v10);
    _block_invoke_value_1_16 = v6;
    _block_invoke_value_2_12 = v7;
  }

  v8 = *&_block_invoke_value_0_21;
  os_unfair_lock_unlock(&_block_invoke_lock_76);

  return v8;
}

double __53__NTKWhistlerSubdialsFaceView_createFaceColorPalette__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _loadLayoutRules];
  [*(a1 + 32) bounds];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__NTKWhistlerSubdialsFaceView_createFaceColorPalette__block_invoke_3;
  v6[3] = &unk_278786F60;
  v6[4] = *(a1 + 32);
  v6[5] = v2;
  v3 = _Block_copy(v6);
  v4 = v3[2](v3, @"top");
  v3[2](v3, @"center");
  v3[2](v3, @"bottom");

  return v4;
}

CGFloat __53__NTKWhistlerSubdialsFaceView_createFaceColorPalette__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) complicationLayoutforSlot:a2];
  v4 = [v3 defaultLayoutRuleForState:0];
  [v4 referenceFrame];
  v5 = CGRectGetMidY(v7) / *(a1 + 40);

  return v5;
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (a4 == 11)
  {
    v9 = off_27877B7F8;
  }

  else
  {
    if (a4 != 10)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v9 = off_27877B6A0;
  }

  v10 = -[__objc2_class viewWithLegacyComplicationType:](*v9, "viewWithLegacyComplicationType:", [v7 complicationType]);
LABEL_7:

  return v10;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v7;
    [v5 transitThemeFromTheme:1 toTheme:1 fraction:1.0];
    if ([(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
    {
      if ([v5 conformsToProtocol:&unk_28A7FF4C0])
      {
        v6 = [MEMORY[0x277D75348] clearColor];
        [v5 setPlatterColor:v6];
      }

      if ([v5 conformsToProtocol:&unk_28A81D338])
      {
        [v5 setTintedFraction:self->_tintedFraction];
      }

      [v5 transitionToMonochromeWithFraction:self->_monochromeFraction];
    }

    else
    {
      [(NTKWhistlerSubdialsFaceView *)self updateMonochromeColorForRichComplicationView:v5];
    }
  }
}

- (id)_filterProviderForSlot:(id)a3
{
  v4 = a3;
  if ([(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
  {
    if ([v4 isEqualToString:@"top"])
    {
      v5 = &OBJC_IVAR___NTKWhistlerSubdialsFaceView__topFilterProvider;
LABEL_8:
      self = *(&self->super.super.super.super.isa + *v5);
      goto LABEL_9;
    }

    if ([v4 isEqualToString:@"center"])
    {
      v5 = &OBJC_IVAR___NTKWhistlerSubdialsFaceView__centerFilterProvider;
      goto LABEL_8;
    }

    if ([v4 isEqualToString:@"bottom"])
    {
      v5 = &OBJC_IVAR___NTKWhistlerSubdialsFaceView__bottomFilterProvider;
      goto LABEL_8;
    }
  }

LABEL_9:
  v6 = self;

  return self;
}

- (void)updateMonochromeColorForRichComplicationView:(id)a3
{
  v7 = a3;
  v4 = [(NTKFaceView *)self faceColorPalette];
  if ([v4 isWhiteColor])
  {

LABEL_4:
    [v7 transitionToMonochromeWithFraction:0.0];
    goto LABEL_6;
  }

  v5 = [(NTKFaceView *)self faceColorPalette];
  v6 = [v5 isBlackColor];

  if (v6)
  {
    goto LABEL_4;
  }

  [v7 updateMonochromeColor];
LABEL_6:
}

- (void)_loadSnapshotContentViews
{
  v8.receiver = self;
  v8.super_class = NTKWhistlerSubdialsFaceView;
  [(NTKFaceView *)&v8 _loadSnapshotContentViews];
  if (!self->_composedView && [(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
  {
    v3 = [(NTKFaceView *)self rootContainerView];
    [v3 removeFromSuperview];
    v4 = [NTKGradientComposedView alloc];
    v5 = [(NTKFaceView *)self device];
    v6 = [(NTKGradientComposedView *)v4 initWithDevice:v5];
    composedView = self->_composedView;
    self->_composedView = v6;

    [(NTKGradientComposedView *)self->_composedView setRootContainerView:v3];
    [(NTKWhistlerSubdialsFaceView *)self addSubview:self->_composedView];
  }

  [(NTKWhistlerSubdialsFaceView *)self _setupDialView];
}

- (void)_unloadSnapshotContentViews
{
  v7.receiver = self;
  v7.super_class = NTKWhistlerSubdialsFaceView;
  [(NTKFaceView *)&v7 _unloadSnapshotContentViews];
  composedView = self->_composedView;
  if (composedView)
  {
    [(NTKGradientComposedView *)composedView removeFromSuperview];
    v4 = self->_composedView;
    self->_composedView = 0;

    v5 = [(NTKFaceView *)self rootContainerView];
    [v5 removeFromSuperview];
    v6 = [(NTKFaceView *)self timeView];
    [(NTKWhistlerSubdialsFaceView *)self insertSubview:v5 aboveSubview:v6];
  }

  [(NTKWhistlerSubdialsFaceView *)self _removeDialView];
}

- (void)_setupDialView
{
  v3 = [(NTKWhistlerSubdialsFaceView *)self dialView];
  [(NTKFaceView *)self setTimeView:v3];

  timeViewContainerView = self->_timeViewContainerView;
  v5 = [(NTKFaceView *)self timeView];
  [(UIView *)timeViewContainerView addSubview:v5];

  v6 = self->_timeViewContainerView;
  v7 = [(NTKFaceView *)self timeView];
  [v7 bounds];
  [(UIView *)v6 setBounds:?];
}

- (id)dialView
{
  v3 = [(NTKFaceView *)self device];
  ___LayoutConstants_block_invoke_67(v3, v11);
  v4 = v11[0];

  v5 = [NTKWhistlerSubdialsTimeView alloc];
  v6 = [(NTKFaceView *)self device];
  v7 = [(NTKWhistlerSubdialsTimeView *)v5 initWithFrame:0 style:v6 andDevice:0.0, 0.0, v4, v4];

  v8 = [(NTKWhistlerSubdialsFaceView *)self showGossamerUI];
  v9 = [(NTKFaceView *)self faceColorPalette];
  if (v8)
  {
    [(NTKDualTimeView *)v7 applyGossamerColorPalette:v9];
  }

  else
  {
    [(NTKDualTimeView *)v7 setColorPalette:v9];
  }

  [(NTKWhistlerSubdialsTimeView *)v7 setForcedNumberSystemForDigitalTimeLabel:self->_numberSystem];

  return v7;
}

- (void)_removeDialView
{
  v3 = [(NTKFaceView *)self timeView];
  [v3 removeFromSuperview];

  [(NTKFaceView *)self setTimeView:0];
}

- (BOOL)_isAnalog
{
  v2 = [(NTKFaceView *)self optionForCustomEditMode:15 slot:0];
  v3 = [v2 style] == 0;

  return v3;
}

- (void)updateWithColorPalette:(id)a3
{
  v4 = a3;
  [(NTKWhistlerSubdialsFaceView *)self _applyTransitionFraction:v4 fromPalette:v4 toPalette:0.0];
  v5 = [(NTKFaceView *)self timeView];
  [v5 setColorPalette:v4];
}

- (void)_loadLayoutRules
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__NTKWhistlerSubdialsFaceView__loadLayoutRules__block_invoke;
  v2[3] = &unk_278781388;
  v2[4] = self;
  NTKEnumerateComplicationStates(v2);
}

void __47__NTKWhistlerSubdialsFaceView__loadLayoutRules__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v59 = 0;
  *sx = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = [*(a1 + 32) device];
  ___LayoutConstants_block_invoke_67(v12, &v49);

  v45 = *(MEMORY[0x277D768C8] + 8);
  v46 = *MEMORY[0x277D768C8];
  v43 = *(MEMORY[0x277D768C8] + 24);
  v44 = *(MEMORY[0x277D768C8] + 16);
  v13 = *(&v53 + 1);
  v15 = v54;
  v14 = *&v55;
  v16 = a2 & 0xFFFFFFFFFFFFFFFELL;
  v41 = sx[0];
  v60.origin.x = v5;
  v60.origin.y = v7;
  v60.size.width = v9;
  v60.size.height = v11;
  MaxY = CGRectGetMaxY(v60);
  v17 = *&v53;
  v18 = *(&v50 + 1);
  v38 = *&v51;
  v39 = *(&v52 + 1);
  v20 = *(&v51 + 1);
  v19 = *&v52;
  v21 = [*(a1 + 32) device];
  v42 = v14;
  v22 = [NTKComplicationLayoutRule layoutRuleForDevice:v21 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v17 keylinePadding:v18, v20, v19, v13, v15, v14];

  v23 = [*(a1 + 32) complicationLayoutforSlot:@"top"];
  [v23 setDefaultLayoutRule:v22 forState:a2];

  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v20;
  v61.size.height = v19;
  v24 = CGRectGetMaxY(v61);
  v25 = 0.0;
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v25 = v41;
  }

  v26 = MaxY - v38 - v25 - v39;
  if (v16 == 2)
  {
    v27 = (v26 + v39 * (1.0 - sx[1]) * 0.5 - v24 - v19) * 0.5;
  }

  else
  {
    v27 = *&v50;
  }

  v28 = v24 + v27;
  v29 = [*(a1 + 32) device];
  v30 = [NTKComplicationLayoutRule layoutRuleForDevice:v29 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v17 keylinePadding:v28, v20, v19, v13, v15, v42];

  v31 = [*(a1 + 32) complicationLayoutforSlot:@"center"];
  [v31 setDefaultLayoutRule:v30 forState:a2];

  v32 = [*(a1 + 32) device];
  [v32 screenBounds];
  v34 = v33;

  v35 = [*(a1 + 32) device];
  v36 = [NTKComplicationLayoutRule layoutRuleForDevice:v35 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0.0 keylinePadding:v26, v34, v39, v46, v45, v44, v43];

  if (v16 == 2)
  {
    CGAffineTransformMakeScale(&v48, sx[1], sx[1]);
    v47 = v48;
    [v36 setEditingTransform:&v47];
  }

  v37 = [*(a1 + 32) complicationLayoutforSlot:@"bottom"];
  [v37 setDefaultLayoutRule:v36 forState:a2];
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"bottom"])
  {
    v7.receiver = self;
    v7.super_class = NTKWhistlerSubdialsFaceView;
    v5 = [(NTKFaceView *)&v7 _keylineStyleForComplicationSlot:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = NTKWhistlerSubdialsFaceView;
  [(NTKFaceView *)&v19 layoutSubviews];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NTKFaceView *)self device:0];
  ___LayoutConstants_block_invoke_67(v3, &v13);

  v4 = [(NTKFaceView *)self timeView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  [(NTKWhistlerSubdialsFaceView *)self bounds];
  [(UIView *)self->_timeViewContainerView setCenter:CGRectGetMaxX(v20) - *&v15 - v6 * 0.5, v8 * 0.5 + *(&v14 + 1)];
  v9 = MEMORY[0x2318D8E70]([(UIView *)self->_timeViewContainerView bounds]);
  v11 = v10;
  v12 = [(NTKFaceView *)self timeView];
  [v12 setCenter:{v9, v11}];
}

- (double)_horizontalPaddingForStatusBar
{
  v2 = [(NTKFaceView *)self device];
  ___LayoutConstants_block_invoke_67(v2, v5);
  v3 = v6;

  return v3;
}

- (double)_verticalPaddingForStatusBar
{
  v9.receiver = self;
  v9.super_class = NTKWhistlerSubdialsFaceView;
  [(NTKFaceView *)&v9 _verticalPaddingForStatusBar];
  v4 = v3;
  if (self->_backgroundStyle == 1)
  {
    v5 = [(NTKFaceView *)self device];
    ___LayoutConstants_block_invoke_67(v5, v7);
    v4 = v4 + v8;
  }

  return v4;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"bottom"])
  {
    v5 = [(NTKFaceView *)self device];
    [NTKModuleView cornerRadiusForComplicationFamily:1 forDevice:v5];
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKWhistlerSubdialsFaceView;
    [(NTKFaceView *)&v10 _keylineCornerRadiusForComplicationSlot:v4];
    v7 = v8;
  }

  return v7;
}

- (double)_minimumBreathingScaleForComplicationSlot:(id)a3
{
  v3 = [a3 isEqualToString:@"bottom"];
  v4 = &NTKLargeElementMinimumBreathingScale;
  if (!v3)
  {
    v4 = &NTKSmallElementMinimumBreathingScale;
  }

  return *v4;
}

- (void)_prepareForEditing
{
  v3 = [(NTKFaceView *)self timeView];
  [v3 setEditing:1];

  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&__block_literal_global_161];
}

void __49__NTKWhistlerSubdialsFaceView__prepareForEditing__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 layer];
  [v3 setAllowsGroupOpacity:1];
}

- (void)_cleanupAfterEditing
{
  v3 = [(NTKFaceView *)self timeView];
  [v3 setEditing:0];

  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&__block_literal_global_50];
}

void __51__NTKWhistlerSubdialsFaceView__cleanupAfterEditing__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 layer];
  [v3 setAllowsGroupOpacity:0];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14 = a3;
  if (![(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
  {
    if (a4 == 19)
    {
      -[NTKWhistlerSubdialsFaceView _setNumerals:](self, "_setNumerals:", [v14 numeralOption]);
      goto LABEL_18;
    }

    if (a4 != 15)
    {
      if (a4 != 10)
      {
        goto LABEL_18;
      }

      v8 = [(NTKFaceView *)self faceColorPalette];
      [(NTKWhistlerSubdialsFaceView *)self updateWithColorPalette:v8];
      goto LABEL_17;
    }

LABEL_13:
    v13 = [(NTKFaceView *)self timeView];
    [v13 setStyle:{objc_msgSend(v14, "style")}];

    goto LABEL_18;
  }

  if (a4 == 15)
  {
    goto LABEL_13;
  }

  v7 = [(NTKFaceView *)self faceColorPalette];
  v8 = v7;
  if (self->_complicationPlaceholderViews)
  {
    [v7 setIsSwatchPreview:1];
  }

  switch(a4)
  {
    case 10:
      [(NTKWhistlerSubdialsFaceView *)self _applyColorsFromPalette:v8];
      break;
    case 19:
      -[NTKWhistlerSubdialsFaceView _setNumerals:](self, "_setNumerals:", [v14 numeralOption]);
      break;
    case 17:
      v9 = [v14 backgroundStyle];
      [v8 setBackgroundStyle:v9];
      [(NTKWhistlerSubdialsFaceView *)self setBackgroundStyle:v9];
      [(NTKWhistlerSubdialsFaceView *)self _applyColorsFromPalette:v8];
      v10 = [(NTKFaceView *)self delegate];
      [v10 faceViewWantsComplicationKeylineFramesReloaded];

      v11 = [(NTKFaceView *)self delegate];
      [v11 faceViewDidChangeWantsStatusBarIconShadow];

      v12 = [(NTKFaceView *)self delegate];
      [v12 faceViewDidChangePaddingForStatusBar];

      break;
  }

LABEL_17:

LABEL_18:
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v26 = a4;
  v11 = a5;
  if ([(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
  {
    if (a6 != 15)
    {
      v12 = [(NTKFaceView *)self interpolatedColorPalette];
      v13 = [v12 fromPalette];
      v14 = [v12 toPalette];
      if (self->_complicationPlaceholderViews)
      {
        [v13 setIsSwatchPreview:1];
        [v14 setIsSwatchPreview:1];
      }

      switch(a6)
      {
        case 10:
          v25 = [(NTKWhistlerSubdialsFaceView *)self backgroundStyle];
          [v13 setBackgroundStyle:v25];
          [v14 setBackgroundStyle:v25];
          [(NTKWhistlerSubdialsFaceView *)self _applyColorsFromPalette:v12];
          break;
        case 19:
          -[NTKWhistlerSubdialsFaceView _applyTransitionFraction:fromNumeralOption:toNumeralOption:](self, "_applyTransitionFraction:fromNumeralOption:toNumeralOption:", [v26 numeralOption], objc_msgSend(v11, "numeralOption"), a3);
          break;
        case 17:
          v15 = [v26 backgroundStyle];
          v16 = [v11 backgroundStyle];
          v17 = [(NTKFaceView *)self faceColorPalette];
          v18 = [v17 pigmentEditOption];

          [v13 setPigmentEditOption:v18];
          [v13 setBackgroundStyle:v15];
          [v14 setPigmentEditOption:v18];
          [v14 setBackgroundStyle:v16];
          [v12 setTransitionFraction:a3];
          [(NTKWhistlerSubdialsFaceView *)self _applyColorsFromPalette:v12];

          break;
      }

      goto LABEL_18;
    }

LABEL_13:
    v24 = [(NTKFaceView *)self timeView];
    [v24 applyTransitionFraction:objc_msgSend(v26 fromStyle:"style") toStyle:{objc_msgSend(v11, "style"), a3}];

    goto LABEL_18;
  }

  switch(a6)
  {
    case 19:
      -[NTKWhistlerSubdialsFaceView _applyTransitionFraction:fromNumeralOption:toNumeralOption:](self, "_applyTransitionFraction:fromNumeralOption:toNumeralOption:", [v26 numeralOption], objc_msgSend(v11, "numeralOption"), a3);
      break;
    case 15:
      goto LABEL_13;
    case 10:
      v19 = [(NTKFaceView *)self interpolatedColorPalette];
      v20 = [v19 fromPalette];

      v21 = [(NTKFaceView *)self interpolatedColorPalette];
      v22 = [v21 toPalette];

      v23 = [(NTKFaceView *)self timeView];
      [v23 applyTransitionFraction:v20 fromColorPalette:v22 toColorPalette:a3];

      [(NTKWhistlerSubdialsFaceView *)self _applyTransitionFraction:v20 fromPalette:v22 toPalette:a3];
      break;
  }

LABEL_18:
}

- (void)_applyTransitionFraction:(double)a3 fromNumeralOption:(unint64_t)a4 toNumeralOption:(unint64_t)a5
{
  if ([(NTKFaceView *)self isAnalog])
  {
    v9 = self;
    v10 = a5;
LABEL_5:

    [(NTKWhistlerSubdialsFaceView *)v9 _setNumerals:v10];
    return;
  }

  if (a4 == a5)
  {
    v9 = self;
    v10 = a4;
    goto LABEL_5;
  }

  CLKMapFractionIntoRange();
  if (a3 >= 0.5)
  {
    v12 = v11;
    a4 = a5;
  }

  else
  {
    v12 = v11;
  }

  CLKMapFractionIntoRange();
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeScale(&v17, v13, v13);
  [(NTKWhistlerSubdialsFaceView *)self _setNumerals:a4];
  v14 = [(NTKFaceView *)self timeView];
  v15 = [v14 digitalTimeLabel];

  [v15 setAlpha:v12];
  v16 = v17;
  [v15 setTransform:&v16];
}

- (void)_applyColorsFromPalette:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 scaleFactor];
  [v5 doubleValue];
  self->_scaleFactor = v6;

  memset(&v40, 0, sizeof(v40));
  CGAffineTransformMakeScale(&v40, self->_scaleFactor, self->_scaleFactor);
  v7 = [(NTKFaceView *)self rootContainerView];
  v39 = v40;
  [v7 setTransform:&v39];

  [(NTKGradientComposedView *)self->_composedView applyGossamerColorPalette:v4];
  v8 = [(NTKFaceView *)self timeView];
  [v8 applyGossamerColorPalette:v4];

  v9 = [v4 foregroundColor];
  topFilterProvider = self->_topFilterProvider;
  v11 = [v4 topAccentColor];
  [(NTKMonochromeModel *)topFilterProvider setAccentColor:v11];

  [(NTKMonochromeModel *)self->_topFilterProvider setNonAccentColor:v9];
  v12 = self->_topFilterProvider;
  v13 = [v4 topApproximateBackgroundColor];
  [(NTKMonochromeModel *)v12 setBackgroundColor:v13];

  centerFilterProvider = self->_centerFilterProvider;
  v15 = [v4 centerAccentColor];
  [(NTKMonochromeModel *)centerFilterProvider setAccentColor:v15];

  [(NTKMonochromeModel *)self->_centerFilterProvider setNonAccentColor:v9];
  v16 = self->_centerFilterProvider;
  v17 = [v4 centerApproximateBackgroundColor];
  [(NTKMonochromeModel *)v16 setBackgroundColor:v17];

  bottomFilterProvider = self->_bottomFilterProvider;
  v19 = [v4 bottomAccentColor];
  [(NTKMonochromeModel *)bottomFilterProvider setAccentColor:v19];

  [(NTKMonochromeModel *)self->_bottomFilterProvider setNonAccentColor:v9];
  v20 = self->_bottomFilterProvider;
  v21 = [v4 bottomApproximateBackgroundColor];
  [(NTKMonochromeModel *)v20 setBackgroundColor:v21];

  v22 = [v4 monochromeFraction];
  [v22 doubleValue];
  self->_monochromeFraction = v23;

  v24 = [v4 tintedFraction];
  [v24 doubleValue];
  self->_tintedFraction = v25;

  monochromeFraction = self->_monochromeFraction;
  tintedFraction = self->_tintedFraction;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __55__NTKWhistlerSubdialsFaceView__applyColorsFromPalette___block_invoke;
  v38[3] = &__block_descriptor_48_e56_v24__0__NSString_8__NTKComplicationDisplayWrapperView_16l;
  *&v38[4] = tintedFraction;
  *&v38[5] = monochromeFraction;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v38];
  if (self->_complicationPlaceholderViews)
  {
    v28 = [v4 swatchComplicationPlaceholderColor];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = self->_complicationPlaceholderViews;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v35;
      do
      {
        v33 = 0;
        do
        {
          if (*v35 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v34 + 1) + 8 * v33++) setBackgroundColor:{v28, v34}];
        }

        while (v31 != v33);
        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v31);
    }
  }
}

void __55__NTKWhistlerSubdialsFaceView__applyColorsFromPalette___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  if ([v4 conformsToProtocol:&unk_28A81D338])
  {
    [v4 setTintedFraction:*(a1 + 32)];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 transitionToMonochromeWithFraction:*(a1 + 40)];
  }
}

- (void)loadComplicationPlaceholderViews
{
  v46[3] = *MEMORY[0x277D85DE8];
  if (!self->_complicationPlaceholderViews)
  {
    v3 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:@"top"];
    v4 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:@"center"];
    v5 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:@"bottom"];
    [v3 bounds];
    v7 = v6 * 0.5;
    [v3 frame];
    MinX = CGRectGetMinX(v47);
    [v4 frame];
    MinY = CGRectGetMinY(v48);
    [v3 frame];
    v10 = MinY - CGRectGetMaxY(v49);
    [v5 bounds];
    v12 = v11;
    v36 = v5;
    [v5 bounds];
    v14 = v12 / v13;
    [(NTKWhistlerSubdialsFaceView *)self bounds];
    v16 = v15 + MinX * -2.0;
    [v4 frame];
    v17 = v10 + CGRectGetMaxY(v50);
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    v38 = v3;
    [v3 frame];
    v19 = [v18 initWithFrame:?];
    v20 = objc_alloc(MEMORY[0x277D75D18]);
    v37 = v4;
    [v4 frame];
    v21 = [v20 initWithFrame:?];
    v22 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{MinX, v17, v16, v16 / v14}];
    v23 = [v19 layer];
    [v23 setCornerRadius:v7];

    v24 = [v21 layer];
    [v24 setCornerRadius:v7];

    v25 = [v22 layer];
    v26 = [(NTKFaceView *)self device];
    ___LayoutConstants_block_invoke_67(v26, v43);
    [v25 setCornerRadius:v44];

    v46[0] = v19;
    v46[1] = v21;
    v46[2] = v22;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    complicationPlaceholderViews = self->_complicationPlaceholderViews;
    self->_complicationPlaceholderViews = v27;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = self->_complicationPlaceholderViews;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v40;
      do
      {
        v33 = 0;
        do
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v39 + 1) + 8 * v33);
          v35 = [(NTKFaceView *)self complicationContainerView];
          [v35 addSubview:v34];

          ++v33;
        }

        while (v31 != v33);
        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v31);
    }
  }
}

- (void)_applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 primaryColor];
  v11 = [v9 primaryColor];
  if ([v8 isBlackColor])
  {
    v12 = 1;
  }

  else
  {
    v12 = [v8 isWhiteColor];
  }

  if ([v9 isBlackColor])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v9 isWhiteColor];
  }

  v14 = 1.0 - a3;
  v15 = 0.0;
  if ((v12 & v13) == 0)
  {
    v15 = a3;
  }

  if (v12 | v13 ^ 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.0 - a3;
  }

  if ((v12 | v13))
  {
    if (v12)
    {
      [(NTKFaceView *)self setInterpolatedComplicationColor:v11, v14];
      v17 = self;
      v18 = v11;
LABEL_18:
      [(NTKFaceView *)v17 setComplicationColor:v18];
      goto LABEL_19;
    }

    if (v13)
    {
      [(NTKFaceView *)self setInterpolatedComplicationColor:v10, v14];
      v17 = self;
      v18 = v10;
      goto LABEL_18;
    }
  }

  else
  {
    v19 = NTKInterpolateBetweenColors();
    [(NTKFaceView *)self setInterpolatedComplicationColor:v19];
    [(NTKFaceView *)self setComplicationColor:v19];
  }

LABEL_19:
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__NTKWhistlerSubdialsFaceView__applyTransitionFraction_fromPalette_toPalette___block_invoke;
  v20[3] = &unk_278786FF0;
  v20[4] = self;
  v21 = v12 ^ v13;
  v22 = v12 & v13 & 1;
  *&v20[5] = v16;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v20];
}

void __78__NTKWhistlerSubdialsFaceView__applyTransitionFraction_fromPalette_toPalette___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = [*(a1 + 32) normalComplicationDisplayWrapperForSlot:a2];
  v3 = [v8 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = v8;
  if (isKindOfClass)
  {
    v6 = [v8 display];
    v7 = v6;
    if ((*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1)
    {
      [v6 transitionToMonochromeWithFraction:*(a1 + 40)];
    }

    else
    {
      [v6 updateMonochromeColor];
    }

    v5 = v8;
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  v5 = 1.0;
  if (a3 == 15)
  {
    v6 = [(NTKFaceView *)self device];
    ___LayoutConstants_block_invoke_67(v6, v19);
    v5 = v20;
  }

  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeScale(&v18, v5, v5);
  v7 = [(NTKFaceView *)self timeView];
  v17 = v18;
  [v7 setTransform:&v17];

  v8 = [(NTKFaceView *)self timeView];
  [(NTKWhistlerSubdialsFaceView *)self _timeViewAlphaForEditMode:a3];
  [v8 setAlpha:?];

  v9 = [(NTKFaceView *)self complicationContainerView];
  [(NTKWhistlerSubdialsFaceView *)self _complicationAlphaForEditMode:a3];
  [v9 setAlpha:?];

  if ([(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
  {
    v10 = [(NTKFaceView *)self delegate];
    [v10 faceViewWantsCustomKeylineFramesReloadedForEditMode:15];

    editingComplicationsPalette = self->_editingComplicationsPalette;
    if (a3 == 1)
    {
      if (!editingComplicationsPalette)
      {
        v12 = [(NTKFaceView *)self faceColorPalette];
        v13 = [v12 copy];
        [v13 setIsEditingComplications:1];
        v14 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v12 toPalette:v13];
        v15 = self->_editingComplicationsPalette;
        self->_editingComplicationsPalette = v14;

        editingComplicationsPalette = self->_editingComplicationsPalette;
      }

      [(NTKInterpolatedColorPalette *)editingComplicationsPalette setTransitionFraction:1.0];
      [(NTKWhistlerSubdialsFaceView *)self _applyColorsFromPalette:self->_editingComplicationsPalette];
    }

    else if (editingComplicationsPalette)
    {
      self->_editingComplicationsPalette = 0;

      v16 = [(NTKFaceView *)self faceColorPalette];
      [(NTKWhistlerSubdialsFaceView *)self _applyColorsFromPalette:v16];
    }
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v8 = [(NTKFaceView *)self device];
  ___LayoutConstants_block_invoke_67(v8, v22);

  CLKInterpolateBetweenFloatsClipped();
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeScale(&v21, v9, v9);
  v10 = [(NTKFaceView *)self timeView];
  v20 = v21;
  [v10 setTransform:&v20];

  v11 = [(NTKFaceView *)self timeView];
  [(NTKWhistlerSubdialsFaceView *)self _timeViewAlphaForEditMode:a4];
  [(NTKWhistlerSubdialsFaceView *)self _timeViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v11 setAlpha:?];

  v12 = [(NTKFaceView *)self complicationContainerView];
  [(NTKWhistlerSubdialsFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKWhistlerSubdialsFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v12 setAlpha:?];

  if ([(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
  {
    v13 = [(NTKFaceView *)self delegate];
    [v13 faceViewWantsCustomKeylineFramesReloadedForEditMode:15];

    editingComplicationsPalette = self->_editingComplicationsPalette;
    if (a4 == 1 || a5 == 1)
    {
      if (!editingComplicationsPalette)
      {
        v16 = [(NTKFaceView *)self faceColorPalette];
        v17 = [v16 copy];
        [v17 setIsEditingComplications:1];
        v18 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v16 toPalette:v17];
        v19 = self->_editingComplicationsPalette;
        self->_editingComplicationsPalette = v18;
      }

      CLKInterpolateBetweenFloatsClipped();
      [(NTKInterpolatedColorPalette *)self->_editingComplicationsPalette setTransitionFraction:?];
      [(NTKWhistlerSubdialsFaceView *)self _applyColorsFromPalette:self->_editingComplicationsPalette];
    }

    else if (editingComplicationsPalette)
    {
      self->_editingComplicationsPalette = 0;

      v15 = [(NTKFaceView *)self faceColorPalette];
      [(NTKWhistlerSubdialsFaceView *)self _applyColorsFromPalette:v15];
    }
  }
}

- (double)_timeViewAlphaForEditMode:(int64_t)a3
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
  v3 = a3 == 19 || a3 == 15;
  result = 0.2;
  if (!v3)
  {
    return 1.0;
  }

  return result;
}

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 15 || a3 == 19)
  {
    [(NTKFaceView *)self _faceEditingScaleForEditMode:a3 slot:v6];
    v8 = v7;
    v9 = [(NTKFaceView *)self device];
    ___LayoutConstants_block_invoke_67(v9, v14);
    v10 = v14[0];

    if ([(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
    {
      v10 = v10 * self->_scaleFactor;
    }

    v11 = NTKKeylineViewWithCircle(v10, v8);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKWhistlerSubdialsFaceView;
    v11 = [(NTKFaceView *)&v15 _keylineViewForCustomEditMode:a3 slot:v6];
  }

  v12 = v11;

  return v12;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = 148;
  if (a3 != 15 && a3 != 19)
  {
    v9.receiver = self;
    v9.super_class = NTKWhistlerSubdialsFaceView;
    v7 = [(NTKFaceView *)&v9 _keylineLabelAlignmentForCustomEditMode:a3 slot:v6];
  }

  return v7;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 19 || a3 == 15)
  {
    [(NTKWhistlerSubdialsFaceView *)self _timeViewFrameRelativeToFaceView];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = NTKWhistlerSubdialsFaceView;
    [(NTKFaceView *)&v19 _relativeKeylineFrameForCustomEditMode:a3 slot:v6];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_timeViewFrameRelativeToFaceView
{
  scaleFactor = 1.0;
  if ([(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
  {
    scaleFactor = self->_scaleFactor;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [(NTKFaceView *)self device:0];
  ___LayoutConstants_block_invoke_67(v4, &v26);

  v5 = [(NTKFaceView *)self device];
  [v5 screenBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = v7;
  v33.origin.y = v9;
  v33.size.width = v11;
  v33.size.height = v13;
  MidY = CGRectGetMidY(v33);
  v16 = *&v26;
  v17 = [(NTKFaceView *)self device];
  [v17 screenBounds];
  v19 = v18 - *&v28 - v16 * 0.5;
  v20 = v16 * 0.5 + *(&v27 + 1);

  v21 = scaleFactor * v16;
  v22 = scaleFactor * v16 * 0.5;
  v23 = MidX + (v19 - MidX) * scaleFactor - v22;
  v24 = MidY + (v20 - MidY) * scaleFactor - v22;
  v25 = scaleFactor * v16;
  result.size.height = v25;
  result.size.width = v21;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = NTKLargeElementScaleForBreathingFraction(a3);
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeScale(&v18, v7, v7);
  if (![(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
  {
    if (a4 != 19 && a4 != 15)
    {
      if (a4 != 10)
      {
        return;
      }

      timeViewContainerView = self->_timeViewContainerView;
      v9 = *(MEMORY[0x277CBF2C0] + 16);
      *&v17.a = *MEMORY[0x277CBF2C0];
      *&v17.c = v9;
      *&v17.tx = *(MEMORY[0x277CBF2C0] + 32);
      [(UIView *)timeViewContainerView setTransform:&v17];
      v17 = v18;
      v10 = self;
      goto LABEL_17;
    }

    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&v17.a = *MEMORY[0x277CBF2C0];
    *&v17.c = v11;
    *&v17.tx = *(MEMORY[0x277CBF2C0] + 32);
    v12 = self;
    goto LABEL_15;
  }

  if (a4 > 16)
  {
    if (a4 == 19)
    {
      goto LABEL_14;
    }

    if (a4 != 17)
    {
      return;
    }

LABEL_13:
    composedView = self->_composedView;
    v17 = v18;
    [(NTKGradientComposedView *)composedView setTransform:&v17];
    v10 = self->_timeViewContainerView;
    v14 = *(MEMORY[0x277CBF2C0] + 16);
    *&v17.a = *MEMORY[0x277CBF2C0];
    *&v17.c = v14;
    v15 = *(MEMORY[0x277CBF2C0] + 32);
LABEL_16:
    *&v17.tx = v15;
LABEL_17:
    [(NTKWhistlerSubdialsFaceView *)v10 setTransform:&v17, *&v17.a, *&v17.c, *&v17.tx];
    return;
  }

  if (a4 == 10)
  {
    goto LABEL_13;
  }

  if (a4 == 15)
  {
LABEL_14:
    v12 = self->_composedView;
    v16 = *(MEMORY[0x277CBF2C0] + 16);
    *&v17.a = *MEMORY[0x277CBF2C0];
    *&v17.c = v16;
    *&v17.tx = *(MEMORY[0x277CBF2C0] + 32);
LABEL_15:
    [v12 setTransform:{&v17, *&v17.a, *&v17.c, *&v17.tx}];
    v10 = self->_timeViewContainerView;
    *&v17.a = *&v18.a;
    *&v17.c = *&v18.c;
    v15 = *&v18.tx;
    goto LABEL_16;
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = NTKScaleForRubberBandingFraction(a3);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, v7, v7);
  if ([(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
  {
    if (a4 > 16)
    {
      if (a4 == 19)
      {
LABEL_13:
        composedView = self->_composedView;
        v14 = *(MEMORY[0x277CBF2C0] + 16);
        *&v15.a = *MEMORY[0x277CBF2C0];
        *&v15.c = v14;
        *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
        [(NTKGradientComposedView *)composedView setTransform:&v15];
LABEL_14:
        timeViewContainerView = self->_timeViewContainerView;
        *&v15.a = *&v16.a;
        *&v15.c = *&v16.c;
        v12 = *&v16.tx;
        goto LABEL_15;
      }

      if (a4 != 17)
      {
        return;
      }
    }

    else if (a4 != 10)
    {
      if (a4 != 15)
      {
        return;
      }

      goto LABEL_13;
    }

    v9 = self->_composedView;
    v15 = v16;
    [(NTKGradientComposedView *)v9 setTransform:&v15];
    timeViewContainerView = self->_timeViewContainerView;
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&v15.a = *MEMORY[0x277CBF2C0];
    *&v15.c = v11;
    v12 = *(MEMORY[0x277CBF2C0] + 32);
LABEL_15:
    *&v15.tx = v12;
    [(UIView *)timeViewContainerView setTransform:&v15];
    return;
  }

  if (a4 == 19 || a4 == 15)
  {
    goto LABEL_14;
  }

  if (a4 == 10)
  {
    v8 = [(NTKFaceView *)self contentView];
    v15 = v16;
    [v8 setTransform:&v15];
  }
}

- (void)_setNumerals:(unint64_t)a3
{
  v4 = CLKLocaleNumberSystemFromNumeralOption(a3);
  if (self->_numberSystem != v4)
  {
    v5 = v4;
    self->_numberSystem = v4;
    v6 = [(NTKFaceView *)self device];
    v7 = NTKShowIndicScriptNumerals(v6);

    if (v7)
    {
      v8 = [(NTKFaceView *)self timeView];
      [v8 setForcedNumberSystemForDigitalTimeLabel:v5];

      [(NTKWhistlerSubdialsFaceView *)self setNeedsLayout];
    }
  }
}

- (void)rectangularViewDidBecomeInteractive:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceView *)self timeView];
  v6 = [v5 layer];
  [v6 setAllowsGroupOpacity:1];

  v7 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__NTKWhistlerSubdialsFaceView_rectangularViewDidBecomeInteractive___block_invoke;
  v9[3] = &unk_27877E438;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 animateWithDuration:4 delay:v9 options:&__block_literal_global_63 animations:0.3 completion:0.0];
}

void __67__NTKWhistlerSubdialsFaceView_rectangularViewDidBecomeInteractive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timeView];
  [v2 setAlpha:0.33];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__NTKWhistlerSubdialsFaceView_rectangularViewDidBecomeInteractive___block_invoke_2;
  v4[3] = &unk_278787018;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 enumerateComplicationDisplayWrappersWithBlock:v4];
}

void __67__NTKWhistlerSubdialsFaceView_rectangularViewDidBecomeInteractive___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 display];
  v5 = *(a1 + 32);

  if (v4 != v5)
  {
    [v6 setAlpha:0.33];
  }
}

- (void)rectangularViewDidEndInteractive:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NTKWhistlerSubdialsFaceView_rectangularViewDidEndInteractive___block_invoke;
  v4[3] = &unk_27877DB10;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__NTKWhistlerSubdialsFaceView_rectangularViewDidEndInteractive___block_invoke_3;
  v3[3] = &unk_2787802F8;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:4 delay:v4 options:v3 animations:0.3 completion:0.0];
}

uint64_t __64__NTKWhistlerSubdialsFaceView_rectangularViewDidEndInteractive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timeView];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 32);

  return [v3 enumerateComplicationDisplayWrappersWithBlock:&__block_literal_global_65_1];
}

void __64__NTKWhistlerSubdialsFaceView_rectangularViewDidEndInteractive___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) timeView];
  v1 = [v2 layer];
  [v1 setAllowsGroupOpacity:0];
}

- (NSCache)backgroundSwatchesCache
{
  backgroundSwatchesCache = self->_backgroundSwatchesCache;
  if (!backgroundSwatchesCache)
  {
    v4 = objc_opt_new();
    v5 = self->_backgroundSwatchesCache;
    self->_backgroundSwatchesCache = v4;

    backgroundSwatchesCache = self->_backgroundSwatchesCache;
  }

  return backgroundSwatchesCache;
}

- (NSCache)styleSwatchesCache
{
  styleSwatchesCache = self->_styleSwatchesCache;
  if (!styleSwatchesCache)
  {
    v4 = objc_opt_new();
    v5 = self->_styleSwatchesCache;
    self->_styleSwatchesCache = v4;

    styleSwatchesCache = self->_styleSwatchesCache;
  }

  return styleSwatchesCache;
}

- (NTKFace)swatchesFace
{
  swatchesFace = self->_swatchesFace;
  if (!swatchesFace)
  {
    v4 = [(NTKFaceView *)self device];
    v5 = [NTKFace defaultFaceOfStyle:34 forDevice:v4];
    v6 = self->_swatchesFace;
    self->_swatchesFace = v5;

    v7 = self->_swatchesFace;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__NTKWhistlerSubdialsFaceView_swatchesFace__block_invoke;
    v9[3] = &unk_278781568;
    v9[4] = self;
    [(NTKFace *)v7 enumerateComplicationSlotsWithBlock:v9];
    swatchesFace = self->_swatchesFace;
  }

  return swatchesFace;
}

void __43__NTKWhistlerSubdialsFaceView_swatchesFace__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 896);
  v3 = a2;
  v4 = +[NTKComplication nullComplication];
  [v2 setComplication:v4 forSlot:v3];
}

- (NTKFaceViewController)swatchesFaceViewController
{
  swatchesFaceViewController = self->_swatchesFaceViewController;
  if (!swatchesFaceViewController)
  {
    v4 = [(NTKWhistlerSubdialsFaceView *)self swatchesFace];
    v5 = [[NTKFaceViewController alloc] initWithFace:v4 configuration:&__block_literal_global_73];
    v6 = self->_swatchesFaceViewController;
    self->_swatchesFaceViewController = v5;

    [(NTKFaceViewController *)self->_swatchesFaceViewController freeze];
    v7 = [(NTKFaceViewController *)self->_swatchesFaceViewController view];
    [v7 setNeedsLayout];

    v8 = [(NTKFaceViewController *)self->_swatchesFaceViewController view];
    [v8 layoutIfNeeded];

    v9 = [(NTKFaceViewController *)self->_swatchesFaceViewController faceView];
    [v9 loadComplicationPlaceholderViews];
    [v9 populateFaceViewEditOptionsFromFace:v4 forced:1];

    swatchesFaceViewController = self->_swatchesFaceViewController;
  }

  return swatchesFaceViewController;
}

void __57__NTKWhistlerSubdialsFaceView_swatchesFaceViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDataMode:3];
  [v2 setShowsCanonicalContent:1];
  [v2 setShowContentForUnadornedSnapshot:1];
  [v2 setShowsLockedUI:0];
  [v2 setIgnoreSnapshotImages:1];
  [v2 setShouldUseSampleTemplate:1];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &unk_28418B7B8;
  if (a3 != 15)
  {
    v4 = 0;
  }

  if (a3 == 17)
  {
    return &unk_28418B7A0;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(NTKWhistlerSubdialsFaceView *)self showGossamerUI])
  {
    if (a4 == 15)
    {
LABEL_5:
      if (a4 == 17)
      {
        v10 = v8;
        v11 = [v9 objectForKeyedSubscript:&unk_284185A58];
      }

      else
      {
        v10 = [v9 objectForKeyedSubscript:&unk_284185A70];
        v11 = v8;
      }

      v22 = v11;
      v63 = [v9 objectForKeyedSubscript:&unk_284185A40];
      v24 = [v63 pigmentEditOption];
      v25 = MEMORY[0x277CCACA8];
      v26 = [v24 identifier];
      v27 = [v25 stringWithFormat:@"%@-%@-%@", v10, v22, v26];

      if (a4 == 17)
      {
        [(NTKWhistlerSubdialsFaceView *)self backgroundSwatchesCache];
      }

      else
      {
        [(NTKWhistlerSubdialsFaceView *)self styleSwatchesCache];
      }
      v28 = ;
      v20 = [v28 objectForKey:v27];

      if (!v20)
      {
        v61 = [(NTKWhistlerSubdialsFaceView *)self swatchesFaceViewController];
        v29 = [v61 faceView];
        v60 = [(NTKWhistlerSubdialsFaceView *)self swatchesFace];
        [v60 selectOption:v24 forCustomEditMode:10 slot:0];
        [v60 selectOption:v22 forCustomEditMode:15 slot:0];
        [v60 selectOption:v10 forCustomEditMode:17 slot:0];
        [v29 bounds];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v59 = v29;
        [v29 _timeViewFrameRelativeToFaceView];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v66.width = v35;
        v66.height = v37;
        UIGraphicsBeginImageContextWithOptions(v66, 0, 0.0);
        v46 = [v29 layer];
        [v46 renderInContext:UIGraphicsGetCurrentContext()];

        v57 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v47 = [(NTKWhistlerSubdialsFaceView *)self backgroundSwatchesCache];
        v58 = v27;
        [v47 setObject:v57 forKey:v27];

        v67.width = v43;
        v67.height = v45;
        UIGraphicsBeginImageContextWithOptions(v67, 0, 0.0);
        CurrentContext = UIGraphicsGetCurrentContext();
        [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v43, v45, v43 * 0.5}];
        v49 = v62 = v10;
        v50 = v22;
        v51 = [v49 CGPath];

        v52 = v51;
        v22 = v50;
        CGContextAddPath(CurrentContext, v52);
        CGContextClip(CurrentContext);
        v68.origin.x = v31;
        v68.origin.y = v33;
        v68.size.width = v35;
        v68.size.height = v37;
        v69 = CGRectOffset(v68, -v39, -v41);
        [v57 drawInRect:{v69.origin.x, v69.origin.y, v69.size.width, v69.size.height}];
        v53 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v54 = [(NTKWhistlerSubdialsFaceView *)self styleSwatchesCache];
        [v54 setObject:v53 forKey:v58];

        if (a4 == 17)
        {
          v55 = v57;
        }

        else
        {
          v55 = v53;
        }

        v20 = v55;

        v10 = v62;
        v27 = v58;
      }

      goto LABEL_24;
    }

    if (a4 != 19)
    {
      if (a4 == 17)
      {
        goto LABEL_5;
      }

LABEL_13:
      v64.receiver = self;
      v64.super_class = NTKWhistlerSubdialsFaceView;
      v20 = [(NTKFaceView *)&v64 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
      goto LABEL_25;
    }

LABEL_12:
    v21 = v8;
    v10 = [(NTKFaceView *)self timeView];
    v22 = [v10 _digitalLabelFont];
    v23 = [(NTKFaceView *)self device];
    v20 = [v21 swatchImageWithFont:v22 device:v23 baseline:0.0];

LABEL_24:
    goto LABEL_25;
  }

  if (a4 == 19)
  {
    goto LABEL_12;
  }

  if (a4 != 15)
  {
    goto LABEL_13;
  }

  v12 = [(NTKWhistlerSubdialsFaceView *)self styleSwatchesCache];
  v13 = [v8 style];
  v14 = [v9 objectForKeyedSubscript:&unk_284185A40];
  v15 = [v14 pigmentEditOption];

  v16 = MEMORY[0x277CCACA8];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v18 = [v15 identifier];
  v19 = [v16 stringWithFormat:@"%@-%@", v17, v18];

  v20 = [v12 objectForKey:v19];
  if (!v20)
  {
    v20 = [(NTKWhistlerSubdialsFaceView *)self _renderDialSwatchImageForStyle:v13 colorOption:v15];
    [v12 setObject:v20 forKey:v19];
  }

LABEL_25:

  return v20;
}

- (id)_renderDialSwatchImageForStyle:(unint64_t)a3 colorOption:(id)a4
{
  v6 = a4;
  v7 = [(NTKFaceView *)self timeView];

  if (!v7)
  {
    [(NTKWhistlerSubdialsFaceView *)self _loadSnapshotContentViews];
  }

  [(NTKFaceView *)self setOption:v6 forCustomEditMode:10 slot:0];
  v8 = [(NTKFaceView *)self timeView];
  v9 = [v8 style];
  [v8 setStyle:a3];
  [v8 bounds];
  v14 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:{v10, v11, v12, v13}];
  [(NTKWhistlerSubdialsFaceView *)self layoutIfNeeded];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__NTKWhistlerSubdialsFaceView__renderDialSwatchImageForStyle_colorOption___block_invoke;
  v18[3] = &unk_2787820A8;
  v19 = v8;
  v15 = v8;
  v16 = [v14 imageWithActions:v18];
  [v15 setStyle:v9];

  return v16;
}

void __74__NTKWhistlerSubdialsFaceView__renderDialSwatchImageForStyle_colorOption___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

@end