@interface NTKFaceView
+ (id)_swatchImageForColorOption:(id)a3 forDevice:(id)a4 color:(id)a5 size:(CGSize)a6;
+ (id)newFaceViewForFace:(id)a3;
+ (id)pigmentFromOption:(id)a3;
- (BOOL)_renderSynchronouslyIfNeededInGroup:(id)a3;
- (BOOL)_shouldHideUI;
- (BOOL)_useAlternateComplicationColorForGraphicCircularComplication:(id)a3;
- (BOOL)_useAlternateComplicationColorForGraphicCircularComplicationInSlot:(id)a3;
- (BOOL)_useAlternateComplicationColorForGraphicCircularComplicationInView:(id)a3;
- (BOOL)allFontsHidden;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)complicationDisplayWrapperView:(id)a3 shouldStartCustomDataAnimationFromEarlierView:(id)a4 laterView:(id)a5 isForward:(BOOL)a6 animationType:(unint64_t)a7;
- (BOOL)monochromeRichComplicationsEnabled;
- (BOOL)renderIfNeeded;
- (CGAffineTransform)_displayContentTransformForComplicationSlot:(SEL)a3 displayWrapper:(id)a4;
- (CGAffineTransform)_displayEditingTransformForComplicationSlot:(SEL)a3 displayWrapper:(id)a4;
- (CGRect)_faceViewFrameForEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5;
- (CGRect)_frameForComplicationDisplayWrapper:(id)a3 inSlot:(id)a4;
- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4;
- (CGRect)_keylineFrameForCustomEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5;
- (CGRect)_keylineFrameForCustomEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5 selectedSlot:(id)a6;
- (CGRect)_keylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (CGRect)_keylineFrameForEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5 selectedSlot:(id)a6;
- (CGRect)_keylineFrameFromRelativeFrame:(CGRect)a3 forEditingMode:(int64_t)a4 option:(id)a5 slot:(id)a6;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (CGRect)keylineFrameForCustomEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5;
- (CGRect)keylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4 selectedSlot:(id)a5;
- (CGSize)_maxSizeForComplicationSlot:(id)a3 layoutOverride:(int64_t)a4;
- (NSDate)currentDisplayDate;
- (NTKFaceColorPalette)faceColorPalette;
- (NTKFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (NTKFaceViewDelegate)delegate;
- (NTKInterpolatedColorPalette)interpolatedColorPalette;
- (double)_alphaForComplicationSlot:(id)a3 inEditOption:(id)a4 ofEditMode:(int64_t)a5;
- (double)_faceEditingScaleForEditMode:(int64_t)a3 slot:(id)a4;
- (double)_verticalPaddingForStatusBar;
- (id)_accessPrewarmedData;
- (id)_allViewsWithComplicationEditingDesaturationFilter;
- (id)_complicationSlotsHiddenByCurrentConfiguration;
- (id)_complicationSlotsHiddenByEditOption:(id)a3;
- (id)_defaultKeylineViewForComplicationSlot:(id)a3;
- (id)_editModesDisabledByCurrentConfiguration;
- (id)_editModesNotDisabledByCurrentConfiguration;
- (id)_editOptionThatHidesAllComplications;
- (id)_editOptionsThatHideEditModes;
- (id)_keylineViewForComplicationSlot:(id)a3;
- (id)_layoutRuleForComplicationSlot:(id)a3 withOverride:(int64_t)a4 inEditMode:(int64_t)a5;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_swatchColorForColorOption:(id)a3;
- (id)_swatchImageForColorOption:(id)a3 size:(CGSize)a4;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)allVisibleComplicationsForCurrentConfiguration;
- (id)closestVisibleComplicationSlotToSlot:(id)a3;
- (id)closestVisibleSlotToSlot:(id)a3 editMode:(int64_t)a4;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (id)complicationLayoutforSlot:(id)a3;
- (id)createFaceColorPalette;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)interpolatedColorForView:(id)a3;
- (id)layoutRuleForComplicationSlot:(id)a3 inState:(int64_t)a4 layoutOverride:(int64_t)a5;
- (id)optionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)swatchPrimaryColorForColorOption:(id)a3;
- (int64_t)_complicationPickerStyleForSlot:(id)a3;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (int64_t)complicationPickerStyleForSlot:(id)a3;
- (int64_t)legacyComplicationLayoutOverrideForSlot:(id)a3 complication:(id)a4;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (void)_addSaturationFilterToViews:(id)a3;
- (void)_applyEditConfigurationsWithForce:(BOOL)a3;
- (void)_applyFrozen;
- (void)_becameActiveFace;
- (void)_bringForegroundViewsToFront;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)_endScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_finalizeForSnapshotting:(id)a3;
- (void)_getKeylineFrame:(CGRect *)a3 padding:(UIEdgeInsets *)a4 forComplicationSlot:(id)a5 selected:(BOOL)a6;
- (void)_handleLocaleDidChange;
- (void)_layoutComplicationViewForSlot:(id)a3;
- (void)_layoutComplicationViewWithWrapper:(id)a3 forSlot:(id)a4;
- (void)_layoutComplicationViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_performPrewarmRoutine:(id)a3;
- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4;
- (void)_reorderSwitcherSnapshotView;
- (void)_setComplicationAlphaForTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 customEditMode:(int64_t)a6 slot:(id)a7;
- (void)_setTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_setupComplicationViewsIfHidden;
- (void)_startScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_teardownComplicationViewsIfNeeded;
- (void)_updateComplicationMaxSize;
- (void)_updateFaceColorPaletteWithOption:(id)a3 mode:(int64_t)a4;
- (void)_updateMaxSizeForDisplayWrapper:(id)a3 slot:(id)a4;
- (void)_updateSaturationForComplicationEditing;
- (void)_updateStatusIconVisibility;
- (void)applyBreathingFraction:(double)a3 forComplicationSlot:(id)a4;
- (void)changeComplicationsAlpha:(double)a3;
- (void)cleanupAfterEditing;
- (void)complicationDisplayWrapperView:(id)a3 updateCustomDataAnimationFromEarlierView:(id)a4 laterView:(id)a5 isForward:(BOOL)a6 animationType:(unint64_t)a7 animationDuration:(double)a8 animationFraction:(float)a9;
- (void)configureComplicationViewDisplayWrapper:(id)a3 forSlot:(id)a4;
- (void)configureForEditMode:(int64_t)a3;
- (void)configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)dealloc;
- (void)disableCrownEventReception;
- (void)enableCrownEventReception;
- (void)endScrubbingAnimated:(BOOL)a3;
- (void)endScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)ensureWidgetContentWithMetrics:(id)a3 timeout:(double)a4 completion:(id)a5;
- (void)enumerateComplicationDisplayWrappersWithBlock:(id)a3;
- (void)enumerateQuadViewsWithBlock:(id)a3;
- (void)hideAppropriateComplicationsForCurrentConfigurationInEditMode:(int64_t)a3;
- (void)layoutContainerView:(id)a3;
- (void)layoutSubviews;
- (void)loadContentToReplaceUnadornedSnapshot;
- (void)performScrollTestNamed:(id)a3 completion:(id)a4;
- (void)performWristRaiseAnimation;
- (void)populateFaceViewEditOptionsFromFace:(id)a3 forced:(BOOL)a4;
- (void)prepareForEditing;
- (void)prepareToZoom;
- (void)prepareWristRaiseAnimation;
- (void)reconfigureComplicationViews;
- (void)reloadSnapshotContentViews;
- (void)renderIfNeeded;
- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4;
- (void)setComplicationHidden:(BOOL)a3 atSlot:(id)a4;
- (void)setComplicationsShowEditingContent:(BOOL)a3;
- (void)setDataMode:(int64_t)a3;
- (void)setDetachedComplicationDisplayWrapper:(id)a3 forSlot:(id)a4;
- (void)setNeedsRender;
- (void)setNormalComplicationDisplayWrapper:(id)a3 forSlot:(id)a4;
- (void)setOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5 forceApply:(BOOL)a6;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setResourceDirectory:(id)a3;
- (void)setSelectedComplicationSlot:(id)a3;
- (void)setShouldShowUnsnapshotableContent:(BOOL)a3;
- (void)setShowContentForUnadornedSnapshot:(BOOL)a3;
- (void)setShowsCanonicalContent:(BOOL)a3;
- (void)setShowsLockedUI:(BOOL)a3;
- (void)setSlow:(BOOL)a3;
- (void)setSwitcherSnapshotView:(id)a3;
- (void)setTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 customEditMode:(int64_t)a6 slot:(id)a7;
- (void)setWidgetHostPriorityTransientSnapshot:(BOOL)a3;
- (void)shiftSelectedComplicationSlotIfHidden;
- (void)startScrubbingAnimated:(BOOL)a3;
- (void)startScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)updateRichCornerComplicationsInnerColor:(id)a3 outerColor:(id)a4;
- (void)willMoveToWindow:(id)a3;
@end

@implementation NTKFaceView

- (void)updateRichCornerComplicationsInnerColor:(id)a3 outerColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__NTKFaceView_ComplicationColor__updateRichCornerComplicationsInnerColor_outerColor___block_invoke;
  v10[3] = &unk_278783AC0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v10];
}

void __85__NTKFaceView_ComplicationColor__updateRichCornerComplicationsInnerColor_outerColor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 display];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  if ([v9 isEqualToString:@"top-left"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"top-right") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"bottom-left"))
  {

LABEL_6:
    [*(a1 + 32) setComplicationColor:*(a1 + 40)];
    v7 = [*(a1 + 32) complicationColor];
    [*(a1 + 32) setInterpolatedComplicationColor:v7];

    if (*(a1 + 48))
    {
      [*(a1 + 32) setAlternateComplicationColor:?];
    }

    v6 = [v5 display];
    [v6 updateMonochromeColor];
    goto LABEL_9;
  }

  v8 = [v9 isEqualToString:@"bottom-right"];

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_10:
}

+ (id)newFaceViewForFace:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(ViewClassForFace(v3));
  v5 = [v3 faceStyle];
  v6 = [v3 device];
  v7 = [v3 bundleIdentifier];

  v8 = [v4 initWithFaceStyle:v5 forDevice:v6 clientIdentifier:v7];
  return v8;
}

- (NTKFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  [v9 screenBounds];
  v30.receiver = self;
  v30.super_class = NTKFaceView;
  v11 = [(NTKFaceView *)&v30 initWithFrame:?];
  v12 = v11;
  if (v11)
  {
    [(NTKFaceView *)v11 setAccessibilityIdentifier:@"Watch Face"];
    v12->_faceStyle = a3;
    objc_storeStrong(&v12->_device, a4);
    v13 = [v10 copy];
    clientIdentifier = v12->_clientIdentifier;
    v12->_clientIdentifier = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    complicationDisplayWrappers = v12->_complicationDisplayWrappers;
    v12->_complicationDisplayWrappers = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    complicationLayouts = v12->_complicationLayouts;
    v12->_complicationLayouts = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    editConfigurations = v12->_editConfigurations;
    v12->_editConfigurations = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hiddenComplicationSlots = v12->_hiddenComplicationSlots;
    v12->_hiddenComplicationSlots = v21;

    v12->_complicationEditingSaturationValue = 1.0;
    v23 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
    complicationEditingSaturationFilter = v12->_complicationEditingSaturationFilter;
    v12->_complicationEditingSaturationFilter = v23;

    [(CAFilter *)v12->_complicationEditingSaturationFilter setName:@"EditingSaturationFilter"];
    v25 = [MEMORY[0x277D75348] whiteColor];
    complicationColor = v12->_complicationColor;
    v12->_complicationColor = v25;

    v27 = [MEMORY[0x277D75348] whiteColor];
    interpolatedComplicationColor = v12->_interpolatedComplicationColor;
    v12->_interpolatedComplicationColor = v27;

    CLKUIDefaultAlternateComplicationColor();
  }

  return 0;
}

- (void)performScrollTestNamed:(id)a3 completion:(id)a4
{
  v6 = a4;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:@"NTKPPTInvalidFace" reason:@"Only Siri face supports scrolling." userInfo:MEMORY[0x277CBEC10]];
  [v4 raise];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

- (void)_handleLocaleDidChange
{
  if ([(NTKFaceView *)self timeScrubbing])
  {

    [(NTKFaceView *)self endScrubbingAnimated:0];
  }
}

- (BOOL)monochromeRichComplicationsEnabled
{
  v2 = [(NTKFaceView *)self device];
  v3 = NTKMonochromeComplicationsEnabledForDevice();

  return v3;
}

- (BOOL)_shouldHideUI
{
  v2 = [objc_opt_class() uiSensitivity];
  v3 = [MEMORY[0x277CBBB70] sharedMonitor];
  LOBYTE(v2) = [v3 shouldHideForSensitivity:v2];

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  if (self->_crownAssertionToken)
  {
    [(NTKCrownAssertionHandler *)self->_crownHandler relinquishCrownAssertionForToken:?];
  }

  v4.receiver = self;
  v4.super_class = NTKFaceView;
  [(NTKFaceView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKFaceView;
  [(NTKFaceView *)&v12 layoutSubviews];
  [(NTKFaceView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  if (!CGRectIsEmpty(v13) && (width != self->_boundsSizeForComputedLayouts.width || height != self->_boundsSizeForComputedLayouts.height))
  {
    [(NSMutableDictionary *)self->_complicationLayouts removeAllObjects];
    [(NTKFaceView *)self _loadLayoutRules];
    [(NTKFaceView *)self _updateComplicationMaxSize];
    [(NTKFaceView *)self _adjustUIForBoundsChange];
    self->_boundsSizeForComputedLayouts.width = width;
    self->_boundsSizeForComputedLayouts.height = height;
  }

  foregroundContainerView = self->_foregroundContainerView;
  if (foregroundContainerView)
  {
    [(NTKFaceView *)self bounds];
    [(UIView *)foregroundContainerView ntk_setBoundsAndPositionFromFrame:?];
  }

  else
  {
    [(NTKFaceView *)self _layoutComplicationViews];
  }

  [(NTKFaceView *)self _bringForegroundViewsToFront];
  unadornedSnapshotView = self->_unadornedSnapshotView;
  if (unadornedSnapshotView)
  {
    [(CLKDevice *)self->_device screenBounds];
    [(UIView *)unadornedSnapshotView setFrame:?];
  }

  sensitiveUIShieldView = self->_sensitiveUIShieldView;
  if (sensitiveUIShieldView)
  {
    [(NTKExtraLargeTimeView *)sensitiveUIShieldView setFrame:x, y, width, height];
    [(NTKFaceView *)self bringSubviewToFront:self->_sensitiveUIShieldView];
  }

  switcherSnapshotView = self->_switcherSnapshotView;
  [(NTKFaceView *)self bounds];
  [(UIImageView *)switcherSnapshotView setFrame:?];
  [(NTKFaceView *)self _reorderSwitcherSnapshotView];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NTKFaceView;
  [(NTKFaceView *)&v13 willMoveToWindow:v4];
  v5 = [(NTKFaceView *)self window];

  if (!v4 && v5)
  {
    self->_removedFromWindowDuringThisTransaction = 1;
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __32__NTKFaceView_willMoveToWindow___block_invoke;
    v10 = &unk_27877DC58;
    objc_copyWeak(&v11, &location);
    [NTKTransactionCommitCoordinator addTransactionCommitHandler:&v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v6 = [(NTKFaceView *)self window:v7];
  if (!v4 || v6)
  {
  }

  else if (!self->_removedFromWindowDuringThisTransaction)
  {
    [(NTKFaceView *)self setNeedsRender];
    self->_needsImageQueueDiscardOnRender = 1;
  }
}

void __32__NTKFaceView_willMoveToWindow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[642] = 0;
  }
}

- (void)setShouldShowUnsnapshotableContent:(BOOL)a3
{
  if (self->_shouldShowUnsnapshotableContent != a3)
  {
    self->_shouldShowUnsnapshotableContent = a3;
    if (a3)
    {
      [(NTKFaceView *)self _loadSnapshotContentViews];
      objc_initWeak(&location, self);
      editConfigurations = self->_editConfigurations;
      v6 = MEMORY[0x277D85DD0];
      v7 = 3221225472;
      v8 = __50__NTKFaceView_setShouldShowUnsnapshotableContent___block_invoke;
      v9 = &unk_2787875A8;
      objc_copyWeak(&v10, &location);
      [(NSMutableDictionary *)editConfigurations enumerateKeysAndObjectsUsingBlock:&v6];
      [(NTKFaceView *)self _updateTimeOffset:v6];
      [(NTKFaceView *)self _applyFrozen];
      [(NTKFaceView *)self _applySlow];
      [(NTKFaceView *)self _applyDataMode];
      [(NTKFaceView *)self _updateStatusIconVisibility];
      [(NTKFaceView *)self _applyShowsCanonicalContent];
      [(NTKFaceView *)self setNeedsRender];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained faceViewWillUnloadSnapshotContentViews];

      [(NTKFaceView *)self _unloadSnapshotContentViews];
    }
  }
}

void __50__NTKFaceView_setShouldShowUnsnapshotableContent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 integerValue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__NTKFaceView_setShouldShowUnsnapshotableContent___block_invoke_2;
  v9[3] = &unk_278787580;
  objc_copyWeak(v11, (a1 + 32));
  v8 = v6;
  v10 = v8;
  v11[1] = v7;
  [v8 enumerateSlotsWithBlock:v9];

  objc_destroyWeak(v11);
}

void __50__NTKFaceView_setShouldShowUnsnapshotableContent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) editOptionForSlot:v3];
  [WeakRetained _updateFaceColorPaletteWithOption:v4 mode:*(a1 + 48)];
  [WeakRetained _applyOption:v4 forCustomEditMode:*(a1 + 48) slot:v3];
}

- (void)setDataMode:(int64_t)a3
{
  if (self->_dataMode != a3)
  {
    kdebug_trace();
    self->_dataMode = a3;
    [(NTKFaceView *)self _applyDataMode];

    [(NTKFaceView *)self _updateStatusIconVisibility];
  }
}

- (void)setShowsCanonicalContent:(BOOL)a3
{
  if (self->_showsCanonicalContent != a3)
  {
    self->_showsCanonicalContent = a3;
    [(NTKFaceView *)self _applyShowsCanonicalContent];
  }
}

- (void)setShowContentForUnadornedSnapshot:(BOOL)a3
{
  if (self->_showContentForUnadornedSnapshot != a3)
  {
    self->_showContentForUnadornedSnapshot = a3;
    [(NTKFaceView *)self _applyShowContentForUnadornedSnapshot];
  }
}

- (void)setShowsLockedUI:(BOOL)a3
{
  if (self->_showsLockedUI != a3)
  {
    self->_showsLockedUI = a3;
    [(NTKFaceView *)self _applyShowsLockedUI];
  }
}

- (NSDate)currentDisplayDate
{
  v2 = self->_overrideDate;
  if (!v2)
  {
    v3 = +[NTKTimeOffsetManager sharedManager];
    v2 = [v3 faceDisplayTime];
  }

  return v2;
}

- (void)setResourceDirectory:(id)a3
{
  v7 = a3;
  if (([v7 isEqualToString:self->_resourceDirectory] & 1) == 0)
  {
    v4 = [(NSString *)self->_resourceDirectory copy];
    v5 = [v7 copy];
    resourceDirectory = self->_resourceDirectory;
    self->_resourceDirectory = v5;

    [(NTKFaceView *)self _updateForResourceDirectoryChange:v4];
  }
}

- (id)optionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  editConfigurations = self->_editConfigurations;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  v9 = [(NSMutableDictionary *)editConfigurations objectForKey:v8];

  v10 = [v9 editOptionForSlot:v7];

  return v10;
}

- (void)setOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5 forceApply:(BOOL)a6
{
  v6 = a6;
  v18 = a3;
  v10 = a5;
  [(NTKFaceView *)self _updateFaceColorPaletteWithOption:v18 mode:a4];
  editConfigurations = self->_editConfigurations;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v13 = [(NSMutableDictionary *)editConfigurations objectForKey:v12];

  if (!v13)
  {
    v13 = objc_alloc_init(NTKEditModeConfiguration);
    v14 = self->_editConfigurations;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableDictionary *)v14 setObject:v13 forKey:v15];
  }

  v16 = [(NTKEditModeConfiguration *)v13 editOptionForSlot:v10];
  if (NTKEqualObjects(v18, v16))
  {
    v17 = !v6;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    [(NTKEditModeConfiguration *)v13 setEditOption:v18 forSlot:v10];
    if (a4 != 10)
    {
      [(NTKFaceView *)self hideAppropriateComplicationsForCurrentConfigurationInEditMode:a4];
    }

    [(NTKFaceView *)self _applyOption:v18 forCustomEditMode:a4 slot:v10];
  }
}

- (int64_t)legacyComplicationLayoutOverrideForSlot:(id)a3 complication:(id)a4
{
  v6 = a3;
  v7 = -[NTKFaceView _legacyLayoutOverrideforComplicationType:slot:](self, "_legacyLayoutOverrideforComplicationType:slot:", [a4 complicationType], v6);

  return v7;
}

- (void)configureComplicationViewDisplayWrapper:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NTKFaceView *)self _updateMaxSizeForDisplayWrapper:v6 slot:v7];
  [v6 setEditing:self->_complicationsShowEditingContent];
  [(NTKFaceView *)self alphaForDimmedState];
  [v6 setAlphaForDimmedState:?];
  [v6 setTextLayoutStyle:{-[NTKFaceView layoutStyleForSlot:](self, "layoutStyleForSlot:", v7)}];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__NTKFaceView_configureComplicationViewDisplayWrapper_forSlot___block_invoke;
  v9[3] = &unk_2787875D0;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [v6 setDisplayConfigurationHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __63__NTKFaceView_configureComplicationViewDisplayWrapper_forSlot___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (objc_opt_respondsToSelector())
  {
    v4 = [v6 filterProvider];

    if (!v4)
    {
      v5 = [WeakRetained _filterProviderForSlot:*(a1 + 32)];
      [v6 setFilterProvider:v5];
    }
  }

  [WeakRetained configureComplicationView:v6 forSlot:*(a1 + 32)];
}

- (void)setNormalComplicationDisplayWrapper:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_complicationDisplayWrappers objectForKey:v7];
  v9 = v8;
  if (v8 != v6)
  {
    if (v8)
    {
      [v8 setNeedsResizeHandler:0];
      [v9 removeFromSuperview];
      [(NSMutableDictionary *)self->_complicationDisplayWrappers removeObjectForKey:v7];
    }

    if (v6)
    {
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __59__NTKFaceView_setNormalComplicationDisplayWrapper_forSlot___block_invoke;
      v12[3] = &unk_27877F610;
      objc_copyWeak(&v14, &location);
      v10 = v7;
      v13 = v10;
      [v6 setNeedsResizeHandler:v12];
      v11 = [(NTKFaceView *)self _complicationContainerViewForSlot:v10];
      [v11 addSubview:v6];

      [(NSMutableDictionary *)self->_complicationDisplayWrappers setObject:v6 forKey:v10];
      [(NTKContainerView *)self->_foregroundContainerView setNeedsLayout];
      [(NTKFaceView *)self _updateMaxSizeForDisplayWrapper:v6 slot:v10];
      [v6 setEditing:self->_complicationsShowEditingContent];
      [(NTKFaceView *)self alphaForDimmedState];
      [v6 setAlphaForDimmedState:?];
      [v6 setAnimationDelegate:self];
      if (self->_complicationsShowEditingContent)
      {
        [(NTKFaceView *)self _updateSaturationForComplicationEditing];
      }

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __59__NTKFaceView_setNormalComplicationDisplayWrapper_forSlot___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _layoutComplicationViewForSlot:*(a1 + 32)];
}

- (void)setDetachedComplicationDisplayWrapper:(id)a3 forSlot:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_complicationDisplayWrappers objectForKey:v6];
  v8 = v10;
  v9 = v7;
  if (v7 != v10)
  {
    if (v7)
    {
      [(NSMutableDictionary *)self->_complicationDisplayWrappers removeObjectForKey:v6];
      v8 = v10;
    }

    if (v8)
    {
      [(NSMutableDictionary *)self->_complicationDisplayWrappers setObject:v10 forKey:v6];
    }
  }
}

- (void)setSlow:(BOOL)a3
{
  if (self->_slow != a3)
  {
    self->_slow = a3;
    [(NTKFaceView *)self _applySlow];
  }
}

- (BOOL)renderIfNeeded
{
  if ([(NTKFaceView *)self dataMode]== 2 || [(NTKFaceView *)self dataMode]== 4 || (NTKIsScreenOn() & 1) == 0 && (NTKIsDaemonOrFaceSnapshotService() & 1) == 0)
  {
    v3 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(NTKFaceView *)self renderIfNeeded];
    }

    self->_needsRender = 0;
    return 0;
  }

  else
  {

    return [(NTKFaceView *)self _renderSynchronouslyIfNeededInGroup:0];
  }
}

- (void)setNeedsRender
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "%@ setNeedsRender failed. ***** PLEASE FILE A RADAR ON Watch Faces *****", &v2, 0xCu);
}

void __29__NTKFaceView_setNeedsRender__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained renderIfNeeded];
  [WeakRetained faceStyle];
  kdebug_trace();
}

- (void)prepareWristRaiseAnimation
{
  [(NTKExtraLargeTimeView *)self->_sensitiveUIShieldView prepareWristRaiseAnimation];

  [(NTKFaceView *)self _prepareWristRaiseAnimation];
}

- (void)performWristRaiseAnimation
{
  [(NTKExtraLargeTimeView *)self->_sensitiveUIShieldView performWristRaiseAnimation];

  [(NTKFaceView *)self _performWristRaiseAnimation];
}

- (void)setComplicationsShowEditingContent:(BOOL)a3
{
  if (self->_complicationsShowEditingContent != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_complicationsShowEditingContent = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__NTKFaceView_setComplicationsShowEditingContent___block_invoke;
    v5[3] = &__block_descriptor_33_e56_v24__0__NSString_8__NTKComplicationDisplayWrapperView_16l;
    v6 = a3;
    [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
  }
}

- (void)prepareForEditing
{
  self->_editing = 1;
  v3 = [(NTKFaceView *)self delegate];
  [v3 faceViewWantsUnadornedSnapshotViewRemoved];

  [(NTKFaceView *)self _setupComplicationViewsIfHidden];

  [(NTKFaceView *)self _prepareForEditing];
}

- (void)cleanupAfterEditing
{
  self->_editing = 0;
  self->_toEditMode = 0;
  self->_fromEditMode = 0;
  self->_editModeTransitionFraction = 0.0;
  [(NTKFaceView *)self _teardownComplicationViewsIfNeeded];
  [(NTKFaceView *)self _cleanupAfterEditing];
  v3 = [(NTKFaceView *)self faceColorPalette];
  [v3 resetColorCache];
}

- (void)populateFaceViewEditOptionsFromFace:(id)a3 forced:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__NTKFaceView_populateFaceViewEditOptionsFromFace_forced___block_invoke;
  v8[3] = &unk_278787640;
  v9 = v6;
  v10 = self;
  v11 = a4;
  v7 = v6;
  [v7 enumerateCustomEditModesWithBlock:v8];
}

void __58__NTKFaceView_populateFaceViewEditOptionsFromFace_forced___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NTKFaceView_populateFaceViewEditOptionsFromFace_forced___block_invoke_2;
  v7[3] = &unk_278787618;
  v5 = v4;
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  v10 = a2;
  v11 = *(a1 + 48);
  [v5 enumerateSlotsForCustomEditMode:a2 withBlock:v7];
}

void __58__NTKFaceView_populateFaceViewEditOptionsFromFace_forced___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) selectedOptionForCustomEditMode:*(a1 + 48) slot:v3];
  if (v4)
  {
    [*(a1 + 40) setOption:v4 forCustomEditMode:*(a1 + 48) slot:v3 forceApply:*(a1 + 56)];
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      v12 = 2048;
      v13 = v3;
      _os_log_error_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_ERROR, "Missing option for face %{public}@, %lu, %lu", &v8, 0x20u);
    }
  }
}

- (void)configureForEditMode:(int64_t)a3
{
  [(NTKFaceView *)self _setTransitionFraction:a3 fromEditMode:a3 toEditMode:0.0];

  [(NTKFaceView *)self _configureForEditMode:a3];
}

- (void)configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [NTKFaceView _setTransitionFraction:"_setTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];

  [(NTKFaceView *)self _configureForTransitionFraction:a4 fromEditMode:a5 toEditMode:a3];
}

- (void)setTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 customEditMode:(int64_t)a6 slot:(id)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(NTKFaceView *)self faceColorPalette];

  if (a6 == 10 && v15)
  {
    v16 = [objc_opt_class() pigmentFromOption:v12];
    v17 = [(NTKFaceView *)self interpolatedColorPalette];
    v18 = [v17 fromPalette];
    [v18 setPigmentEditOption:v16];

    v19 = [objc_opt_class() pigmentFromOption:v13];
    v20 = [(NTKFaceView *)self interpolatedColorPalette];
    v21 = [v20 toPalette];
    [v21 setPigmentEditOption:v19];

    v22 = [(NTKFaceView *)self interpolatedColorPalette];
    [v22 setTransitionFraction:a3];
  }

  [(NTKFaceView *)self _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:v14 slot:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v24 = [WeakRetained faceViewComplicationSlots];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      v29 = 0;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(NTKFaceView *)self _setComplicationAlphaForTransitionFraction:v12 fromOption:v13 toOption:a6 customEditMode:*(*(&v30 + 1) + 8 * v29++) slot:a3, v30];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v27);
  }
}

- (CGRect)keylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4 selectedSlot:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(NTKFaceView *)self optionForCustomEditMode:a3 slot:v9];
  [(NTKFaceView *)self _keylineFrameForEditMode:a3 option:v10 slot:v9 selectedSlot:v8];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)keylineFrameForCustomEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5
{
  [(NTKFaceView *)self _keylineFrameForEditMode:a3 option:a4 slot:a5 selectedSlot:a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_keylineFrameForEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5 selectedSlot:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  [(NTKFaceView *)self _relativeKeylineFrameForCustomEditMode:a3 slot:v11];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  if (CGRectIsNull(v29))
  {
    [(NTKFaceView *)self _keylineFrameForCustomEditMode:a3 option:v12 slot:v11 selectedSlot:v10];
  }

  else
  {
    [(NTKFaceView *)self _keylineFrameFromRelativeFrame:a3 forEditingMode:v12 option:v11 slot:x, y, width, height];
  }

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)_keylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = [(NTKFaceView *)self optionForCustomEditMode:a3 slot:v6];
  [(NTKFaceView *)self _keylineFrameForEditMode:a3 option:v7 slot:v6 selectedSlot:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_keylineFrameForCustomEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5 selectedSlot:(id)a6
{
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (double)_faceEditingScaleForEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = [(NTKFaceView *)self optionForCustomEditMode:a3 slot:v6];
  [(NTKFaceView *)self faceViewFrameForEditMode:a3 option:v7 slot:v6];
  v9 = v8;

  v10 = [MEMORY[0x277CBBAE8] currentDevice];
  [v10 screenBounds];
  v12 = v11;

  return v9 / v12;
}

- (CGRect)_keylineFrameFromRelativeFrame:(CGRect)a3 forEditingMode:(int64_t)a4 option:(id)a5 slot:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = MEMORY[0x277CBBAE8];
  v14 = a6;
  v15 = a5;
  v16 = [v13 currentDevice];
  [v16 screenBounds];
  v18 = v17;

  [(NTKFaceView *)self faceViewFrameForEditMode:a4 option:v15 slot:v14];
  v20 = v19;

  v21 = [(NTKFaceView *)self device];
  CLKPointRoundForDevice();
  v23 = v22;
  v25 = v24;

  CGAffineTransformMakeScale(&v39, v20 / v18, v20 / v18);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v41 = CGRectApplyAffineTransform(v40, &v39);
  CGRectOffset(v41, v23, v25);
  v26 = [(NTKFaceView *)self device];
  CLKPixelAlignRectForDevice();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = v28;
  v36 = v30;
  v37 = v32;
  v38 = v34;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (BOOL)canBecomeFirstResponder
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(NTKFaceView *)self delegate];
  v4 = [v3 faceViewComplicationSlots];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:*(*(&v15 + 1) + 8 * i), v15];
        v11 = [v10 display];
        v12 = [v11 canBecomeFirstResponder];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)becomeFirstResponder
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NTKFaceView *)self delegate];
  v4 = [v3 faceViewComplicationSlots];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:*(*(&v14 + 1) + 8 * i), v14];
        v11 = [v10 display];
        if ([v11 canBecomeFirstResponder] && (objc_msgSend(v11, "becomeFirstResponder") & 1) != 0)
        {

          v12 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (void)setSelectedComplicationSlot:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_selectedComplicationSlot] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedComplicationSlot, a3);
    [(NTKFaceView *)self _updateSaturationForComplicationEditing];
    [(NTKFaceView *)self setNeedsLayout];
  }

  [(NTKFaceView *)self shiftSelectedComplicationSlotIfHidden];
}

- (id)closestVisibleSlotToSlot:(id)a3 editMode:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1)
  {
    v8 = [(NTKFaceView *)self closestVisibleComplicationSlotToSlot:v6];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (id)closestVisibleComplicationSlotToSlot:(id)a3
{
  v4 = a3;
  if (v4 && [(NTKFaceView *)self complicationIsHiddenAtSlot:v4])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained faceViewComplicationSlots];

    v7 = [v6 indexOfObject:v4];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = (v8 + 1) % [v6 count];
    while (1)
    {
      if (v9 == v8)
      {
        v11 = 0;
        goto LABEL_12;
      }

      v10 = [v6 objectAtIndexedSubscript:v9];
      if (![(NTKFaceView *)self complicationIsHiddenAtSlot:v10])
      {
        break;
      }

      v9 = (v9 + 1) % [v6 count];
    }

    if (v9 == v8)
    {
      v11 = 0;
      v4 = v10;
    }

    else
    {
      v4 = v10;
      v11 = v4;
    }

LABEL_12:
  }

  else
  {
    v4 = v4;
    v11 = v4;
  }

  return v11;
}

- (void)shiftSelectedComplicationSlotIfHidden
{
  v4 = [(NTKFaceView *)self selectedComplicationSlot];
  if ([(NTKFaceView *)self complicationIsHiddenAtSlot:?])
  {
    v3 = [(NTKFaceView *)self closestVisibleComplicationSlotToSlot:v4];
    [(NTKFaceView *)self setSelectedComplicationSlot:v3];
  }
}

- (int64_t)complicationPickerStyleForSlot:(id)a3
{
  v4 = a3;
  if ([(CLKDevice *)self->_device deviceCategory]!= 1 && ([(NTKFaceView *)self layoutStyleForSlot:v4]== 1 || [(NTKFaceView *)self layoutStyleForSlot:v4]== 2))
  {
    v5 = 2;
  }

  else
  {
    v5 = [(NTKFaceView *)self _complicationPickerStyleForSlot:v4];
  }

  return v5;
}

- (id)layoutRuleForComplicationSlot:(id)a3 inState:(int64_t)a4 layoutOverride:(int64_t)a5
{
  v7 = [(NSMutableDictionary *)self->_complicationLayouts objectForKey:a3];
  v8 = [v7 layoutRuleForComplicationState:a4 layoutOverride:a5];

  return v8;
}

- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4
{
  v4 = a4;
  v24 = 0u;
  v25 = 0u;
  v6 = a3;
  [(NTKFaceView *)self _getKeylineFrame:&v24 padding:0 forComplicationSlot:v6 selected:v4];
  v7 = [(NTKFaceView *)self _complicationContainerViewForSlot:v6];
  [(NTKFaceView *)self convertRect:v7 fromCoordinateSpace:v24, v25];
  *&v24 = v8;
  *(&v24 + 1) = v9;
  *&v25 = v10;
  *(&v25 + 1) = v11;

  [(NTKFaceView *)self _keylineFrameFromRelativeFrame:1 forEditingMode:0 option:v6 slot:v24, v25];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)applyBreathingFraction:(double)a3 forComplicationSlot:(id)a4
{
  v6 = a4;
  [(NTKFaceView *)self _minimumBreathingScaleForComplicationSlot:v6];
  v8 = NTKScaleForBreathingFraction(a3, v7);
  v9 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:v6];
  if (v9)
  {
    memset(&v12, 0, sizeof(v12));
    [(NTKFaceView *)self _displayEditingTransformForComplicationSlot:v6 displayWrapper:v9];
    v10 = v12;
    CGAffineTransformScale(&v11, &v10, v8, v8);
    v12 = v11;
    [v9 setEditingTransform:&v11];
  }
}

- (void)setSwitcherSnapshotView:(id)a3
{
  v5 = a3;
  switcherSnapshotView = self->_switcherSnapshotView;
  v7 = v5;
  if (switcherSnapshotView != v5)
  {
    [(UIImageView *)switcherSnapshotView removeFromSuperview];
    objc_storeStrong(&self->_switcherSnapshotView, a3);
    if (self->_switcherSnapshotView)
    {
      [(NTKFaceView *)self addSubview:?];
    }
  }
}

- (void)layoutContainerView:(id)a3
{
  [(NTKFaceView *)self _layoutComplicationViews];
  [(NTKFaceView *)self _layoutForegroundContainerView];
  [(NTKFaceView *)self _bringForegroundViewsToFront];
  if (self->_sensitiveUIShieldView)
  {

    [(NTKFaceView *)self bringSubviewToFront:?];
  }
}

- (id)complicationLayoutforSlot:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_complicationLayouts objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(NTKComplicationLayout);
    [(NSMutableDictionary *)self->_complicationLayouts setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)enumerateComplicationDisplayWrappersWithBlock:(id)a3
{
  v4 = a3;
  complicationDisplayWrappers = self->_complicationDisplayWrappers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__NTKFaceView_enumerateComplicationDisplayWrappersWithBlock___block_invoke;
  v7[3] = &unk_278787668;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)complicationDisplayWrappers enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)reconfigureComplicationViews
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__NTKFaceView_reconfigureComplicationViews__block_invoke;
  v2[3] = &unk_278787018;
  v2[4] = self;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v2];
}

void __43__NTKFaceView_reconfigureComplicationViews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 display];
  [v4 configureComplicationView:v6 forSlot:v5];
}

- (void)reloadSnapshotContentViews
{
  if (self->_shouldShowUnsnapshotableContent)
  {
    [(NTKFaceView *)self setShouldShowUnsnapshotableContent:0];
    [(NTKFaceView *)self setShouldShowUnsnapshotableContent:1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained faceViewDidReloadSnapshotContentViews];
  }
}

- (void)_loadSnapshotContentViews
{
  if ([(NTKFaceView *)self _supportsUnadornedSnapshot]&& self->_unadornedSnapshotRemoved)
  {

    [(NTKFaceView *)self loadContentToReplaceUnadornedSnapshot];
  }
}

- (void)_applyEditConfigurationsWithForce:(BOOL)a3
{
  objc_initWeak(&location, self);
  editConfigurations = self->_editConfigurations;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__NTKFaceView__applyEditConfigurationsWithForce___block_invoke;
  v6[3] = &unk_2787876B8;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v8 = a3;
  [(NSMutableDictionary *)editConfigurations enumerateKeysAndObjectsUsingBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__NTKFaceView__applyEditConfigurationsWithForce___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__NTKFaceView__applyEditConfigurationsWithForce___block_invoke_2;
  v9[3] = &unk_278787690;
  v9[4] = *(a1 + 32);
  v10 = v5;
  v13 = *(a1 + 48);
  v11 = WeakRetained;
  v12 = v6;
  v8 = v5;
  [v8 enumerateSlotsWithBlock:v9];
}

void __49__NTKFaceView__applyEditConfigurationsWithForce___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) optionForCustomEditMode:*(a1 + 56) slot:v5];
  v4 = [*(a1 + 40) editOptionForSlot:v5];
  if ((*(a1 + 64) & 1) != 0 || ([v3 isEqual:v4] & 1) == 0)
  {
    [*(a1 + 48) _updateFaceColorPaletteWithOption:v4 mode:*(a1 + 56)];
    [*(a1 + 48) _applyOption:v4 forCustomEditMode:*(a1 + 56) slot:v5];
  }
}

- (void)loadContentToReplaceUnadornedSnapshot
{
  [(NTKFaceView *)self _loadContentToReplaceUnadornedSnapshot];
  [(NTKFaceView *)self _updateTimeOffset];
  [(NTKFaceView *)self _applyFrozen];
  [(NTKFaceView *)self _applySlow];
  [(NTKFaceView *)self _applyDataMode];
  [(NTKFaceView *)self _updateStatusIconVisibility];
  [(NTKFaceView *)self _applyEditConfigurationsWithForce:0];

  [(NTKFaceView *)self setNeedsRender];
}

- (void)_reorderSwitcherSnapshotView
{
  if (self->_switcherSnapshotView)
  {
    [(NTKFaceView *)self sendSubviewToBack:?];
  }
}

- (void)enumerateQuadViewsWithBlock:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_allSubQuadViews;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(NTKFaceView *)self setNeedsRender];
  self->_needsImageQueueDiscardOnRender |= v4;
  [(NTKFaceView *)self _renderSynchronouslyIfNeededInGroup:v6];

  v7 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    v11 = @"NO";
    if (v4)
    {
      v11 = @"YES";
    }

    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_INFO, "Render Synchronously - FaceView: %@, DiscardContents: %@", &v12, 0x16u);
  }
}

- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__NTKFaceView__renderSynchronouslyWithImageQueueDiscard_inGroup___block_invoke;
  v8[3] = &unk_278780230;
  v10 = a3;
  v9 = v6;
  v7 = v6;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v8];
}

void __65__NTKFaceView__renderSynchronouslyWithImageQueueDiscard_inGroup___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v7 display];
    [v6 renderSynchronouslyWithImageQueueDiscard:*(a1 + 40) inGroup:*(a1 + 32)];
  }
}

- (BOOL)_renderSynchronouslyIfNeededInGroup:(id)a3
{
  v4 = a3;
  if (self->_needsRender)
  {
    v5 = [(NTKFaceView *)self window];

    if (v5)
    {
      [(NTKFaceView *)self _renderSynchronouslyWithImageQueueDiscard:self->_needsImageQueueDiscardOnRender inGroup:v4];
      self->_needsImageQueueDiscardOnRender = 0;
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  self->_needsRender = 0;

  return v5;
}

- (double)_verticalPaddingForStatusBar
{
  v2 = [(CLKDevice *)self->_device sizeClass];
  result = 2.0;
  if (!v2)
  {
    return 2.5;
  }

  return result;
}

- (void)_becameActiveFace
{
  if ([(NTKFaceView *)self canBecomeFirstResponder])
  {

    [(NTKFaceView *)self becomeFirstResponder];
  }
}

- (void)prepareToZoom
{
  v3 = [(NTKFaceView *)self delegate];
  [v3 faceViewWantsUnadornedSnapshotViewRemoved];

  self->_zooming = 1;

  [(NTKFaceView *)self _prepareToZoom];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain(40, "NTKLoggingDomainTritium");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSDate *)self->_overrideDate description];
    v9 = [v8 UTF8String];
    v10 = [(NSDate *)v6 description];
    v13 = 136315650;
    v14 = v9;
    v15 = 2080;
    v16 = [v10 UTF8String];
    v17 = 1024;
    v18 = 1;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "setOverrideDate: %s -> %s, shouldApply: %{BOOL}d", &v13, 0x1Cu);
  }

  overrideDate = self->_overrideDate;
  self->_overrideDate = v6;
  v12 = v6;

  [(NTKTimeView *)self->_timeView setOverrideDate:v12 duration:a4];
  [(NTKExtraLargeTimeView *)self->_sensitiveUIShieldView setOverrideDate:v12 duration:a4];
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(NTKFaceView *)self complicationFactory];
  v11 = [v10 newLegacyViewForComplication:v9 family:a4 slot:v8];

  return v11;
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = [(NTKFaceView *)self complicationFactory];
  if (v7 && (v8 = v7, [(NTKFaceView *)self complicationFactory], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
  {
    v11 = [(NTKFaceView *)self complicationFactory];
    v12 = [v11 legacyLayoutOverrideforComplicationType:a3 slot:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKFaceView *)self complicationFactory];
  [v8 configureComplicationView:v7 forSlot:v6];
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceView *)self complicationFactory];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NTKFaceView *)self complicationFactory];
    v8 = [v7 layoutStyleForSlot:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v17 = a8;
  if (a3)
  {
    *a3 = 0.0;
  }

  if (a4)
  {
    *a4 = 0.0;
  }

  if (a5)
  {
    *a5 = 0.0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a6)
  {
    *a6 = *MEMORY[0x277CBF348];
  }

  v14 = [(NTKFaceView *)self complicationFactory];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(NTKFaceView *)self complicationFactory];
    [v16 curvedComplicationCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v17];
  }
}

- (void)_loadLayoutRules
{
  v2 = [(NTKFaceView *)self complicationFactory];
  [v2 loadLayoutRules];
}

- (void)_bringForegroundViewsToFront
{
  if (self->_foregroundContainerView)
  {
    v3 = [(NTKFaceView *)self contentView];
    [v3 bringSubviewToFront:self->_foregroundContainerView];
  }
}

- (void)_applyFrozen
{
  v3 = [(NTKFaceView *)self timeView];
  [v3 setFrozen:{-[NTKFaceView isFrozen](self, "isFrozen")}];

  sensitiveUIShieldView = self->_sensitiveUIShieldView;
  v5 = [(NTKFaceView *)self isFrozen];

  [(NTKExtraLargeTimeView *)sensitiveUIShieldView setFrozen:v5];
}

- (id)_accessPrewarmedData
{
  v2 = +[NTKFaceViewClassPrewarmCache sharedInstance];
  v3 = [v2 prewarmDataForClass:objc_opt_class()];

  return v3;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_keylineFrameForCustomEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5
{
  [(NTKFaceView *)self _keylineFrameForCustomEditMode:a3 option:a4 slot:a5 selectedSlot:a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 1)
  {
    return 0;
  }

  else
  {
    return 272;
  }
}

- (id)_editOptionsThatHideEditModes
{
  v2 = [(NTKFaceView *)self delegate];
  v3 = [v2 faceViewEditOptionsThatHideEditModes];

  return v3;
}

- (id)allVisibleComplicationsForCurrentConfiguration
{
  v2 = [(NTKFaceView *)self delegate];
  v3 = [v2 faceViewAllVisibleComplicationsForCurrentConfiguration];

  return v3;
}

- (id)_editOptionThatHidesAllComplications
{
  v2 = [(NTKFaceView *)self delegate];
  v3 = [v2 faceViewEditOptionThatHidesAllComplications];

  return v3;
}

- (id)_complicationSlotsHiddenByEditOption:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceView *)self _editOptionThatHidesAllComplications];
  v6 = [v5 isEqual:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (v6)
  {
    [WeakRetained faceViewComplicationSlots];
  }

  else
  {
    [WeakRetained faceViewComplicationSlotsHiddenByEditOption:v4];
  }
  v9 = ;

  return v9;
}

- (id)_complicationSlotsHiddenByCurrentConfiguration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__54;
  v11 = __Block_byref_object_dispose__54;
  v12 = [MEMORY[0x277CBEB58] set];
  editConfigurations = self->_editConfigurations;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NTKFaceView__complicationSlotsHiddenByCurrentConfiguration__block_invoke;
  v6[3] = &unk_278787708;
  v6[4] = self;
  v6[5] = &v7;
  [(NSMutableDictionary *)editConfigurations enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __61__NTKFaceView__complicationSlotsHiddenByCurrentConfiguration__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NTKFaceView__complicationSlotsHiddenByCurrentConfiguration__block_invoke_2;
  v6[3] = &unk_2787876E0;
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  [v5 enumerateSlotsWithBlock:v6];
}

void __61__NTKFaceView__complicationSlotsHiddenByCurrentConfiguration__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) editOptionForSlot:a2];
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = [v3 _complicationSlotsHiddenByEditOption:v6];
  [v4 addObjectsFromArray:v5];
}

- (void)setComplicationHidden:(BOOL)a3 atSlot:(id)a4
{
  v4 = a3;
  v8 = a4;
  if ([(NTKFaceView *)self complicationIsHiddenAtSlot:?]!= v4)
  {
    hiddenComplicationSlots = self->_hiddenComplicationSlots;
    if (v4)
    {
      [(NSMutableSet *)hiddenComplicationSlots addObject:v8];
    }

    else
    {
      [(NSMutableSet *)hiddenComplicationSlots removeObject:v8];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained faceViewDidHideOrShowComplicationSlot];
  }
}

- (void)_setupComplicationViewsIfHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained faceViewDidHideOrShowComplicationSlot];
}

- (void)_teardownComplicationViewsIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained faceViewDidHideOrShowComplicationSlot];
}

- (void)_setComplicationAlphaForTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 customEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(NTKFaceView *)self _complicationSlotsHiddenByEditOption:v12];
  v16 = [v15 containsObject:v14];

  v17 = [(NTKFaceView *)self _complicationSlotsHiddenByEditOption:v13];
  v18 = [v17 containsObject:v14];

  if (v16 != v18)
  {
    if (!self->_editing)
    {
      a3 = 1.0;
    }

    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __98__NTKFaceView__setComplicationAlphaForTransitionFraction_fromOption_toOption_customEditMode_slot___block_invoke;
    v19[3] = &unk_278787730;
    objc_copyWeak(v22, &location);
    v20 = v12;
    v22[1] = a6;
    v21 = v13;
    v22[2] = *&a3;
    [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v19];

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

void __98__NTKFaceView__setComplicationAlphaForTransitionFraction_fromOption_toOption_customEditMode_slot___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _alphaForComplicationSlot:v6 inEditOption:*(a1 + 32) ofEditMode:*(a1 + 56)];
  [WeakRetained _alphaForComplicationSlot:v6 inEditOption:*(a1 + 40) ofEditMode:*(a1 + 56)];

  CLKInterpolateBetweenFloatsClipped();
  [v5 setAlpha:?];
}

- (BOOL)allFontsHidden
{
  v2 = [(NTKFaceView *)self _editModesDisabledByCurrentConfiguration];
  v3 = [v2 containsObject:&unk_284185D58];

  return v3;
}

- (id)_editModesNotDisabledByCurrentConfiguration
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v4 = [(NSMutableDictionary *)self->_editConfigurations allKeys];
  v5 = [v3 setWithArray:v4];

  v6 = [(NTKFaceView *)self _editModesDisabledByCurrentConfiguration];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 removeObject:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_editModesDisabledByCurrentConfiguration
{
  v3 = [(NTKFaceView *)self _editOptionsThatHideEditModes];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__54;
  v15 = __Block_byref_object_dispose__54;
  v16 = [MEMORY[0x277CBEB58] set];
  editConfigurations = self->_editConfigurations;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NTKFaceView__editModesDisabledByCurrentConfiguration__block_invoke;
  v8[3] = &unk_278787758;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [(NSMutableDictionary *)editConfigurations enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __55__NTKFaceView__editModesDisabledByCurrentConfiguration__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__NTKFaceView__editModesDisabledByCurrentConfiguration__block_invoke_2;
  v10[3] = &unk_278783688;
  v5 = a1[4];
  v6 = a1[5];
  v11 = v4;
  v12 = v5;
  v7 = v6;
  v8 = a1[6];
  v13 = v7;
  v14 = v8;
  v9 = v4;
  [v9 enumerateSlotsWithBlock:v10];
}

void __55__NTKFaceView__editModesDisabledByCurrentConfiguration__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) editOptionForSlot:a2];
  v4 = *(*(a1 + 40) + 592);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__NTKFaceView__editModesDisabledByCurrentConfiguration__block_invoke_3;
  v6[3] = &unk_278787758;
  v7 = *(a1 + 48);
  v8 = v3;
  v9 = *(a1 + 56);
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __55__NTKFaceView__editModesDisabledByCurrentConfiguration__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = [v3 containsObject:*(a1 + 40)];

  if (v4)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v5];
  }
}

- (void)hideAppropriateComplicationsForCurrentConfigurationInEditMode:(int64_t)a3
{
  objc_initWeak(&location, self);
  v4 = [(NTKFaceView *)self _complicationSlotsHiddenByCurrentConfiguration];
  v5 = [v4 count];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained faceViewComplicationSlots];
  self->_everyComplicationHidden = v5 == [v7 count];

  v8 = [(NSMutableSet *)self->_hiddenComplicationSlots copy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__NTKFaceView_hideAppropriateComplicationsForCurrentConfigurationInEditMode___block_invoke;
  v16[3] = &unk_278781568;
  v16[4] = self;
  [v8 enumerateObjectsUsingBlock:v16];

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __77__NTKFaceView_hideAppropriateComplicationsForCurrentConfigurationInEditMode___block_invoke_2;
  v13 = &unk_278787780;
  objc_copyWeak(&v15, &location);
  v9 = v4;
  v14 = v9;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&v10];
  [(NTKFaceView *)self shiftSelectedComplicationSlotIfHidden:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __77__NTKFaceView_hideAppropriateComplicationsForCurrentConfigurationInEditMode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [*(a1 + 32) containsObject:v9];
  v8 = 1.0;
  if (v7)
  {
    [WeakRetained setComplicationHidden:1 atSlot:{v9, 1.0}];
    v8 = 0.0;
  }

  [v5 setAlpha:v8];
}

- (int64_t)_complicationPickerStyleForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceView *)self complicationFactory];
  if (v5 && (v6 = v5, [(NTKFaceView *)self complicationFactory], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(NTKFaceView *)self complicationFactory];
    v10 = [v9 complicationPickerStyleForSlot:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_keylineViewForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceView *)self complicationFactory];

  if (!v5 || (-[NTKFaceView complicationFactory](self, "complicationFactory"), v6 = objc_claimAutoreleasedReturnValue(), [v6 keylineViewForComplicationSlot:v4], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [(NTKFaceView *)self _defaultKeylineViewForComplicationSlot:v4];
  }

  return v7;
}

- (id)_defaultKeylineViewForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([(NTKFaceView *)self _keylineStyleForComplicationSlot:v4])
  {
    NTKFittedCircleKeylineView();
  }

  else
  {
    [(NTKFaceView *)self _keylineCornerRadiusForComplicationSlot:v4];
    NTKKeylineViewWithContinuousCurveCornerRadius(v5);
  }
  v6 = ;

  return v6;
}

- (void)_finalizeForSnapshotting:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "NTKFaceView(%@) _finalizeForSnapshotting just immediatly call completion", &v7, 0xCu);
  }

  if (v3)
  {
    v3[2](v3);
  }
}

- (void)_performPrewarmRoutine:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (CGRect)_faceViewFrameForEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5
{
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  if (a4 == 10)
  {
    v7 = [(NTKFaceView *)self _swatchImageForColorOption:a3 size:a4, a5, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_swatchImageForColorOption:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__54;
  v22 = __Block_byref_object_dispose__54;
  v23 = 0;
  if ([v7 conformsToProtocol:&unk_28A87B948])
  {
    v8 = [(NTKFaceView *)self faceColorPalette];

    if (v8)
    {
      v9 = [(NTKFaceView *)self faceColorPalette];
      v10 = [v7 pigmentEditOption];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __47__NTKFaceView__swatchImageForColorOption_size___block_invoke;
      v17[3] = &unk_2787877A8;
      v17[4] = &v18;
      *&v17[5] = width;
      *&v17[6] = height;
      [v9 executeWithOption:v10 block:v17];
    }
  }

  v11 = v19[5];
  if (!v11)
  {
    v12 = [(NTKFaceView *)self _swatchColorForColorOption:v7];
    v13 = [objc_opt_class() _swatchImageForColorOption:v7 forDevice:self->_device color:v12 size:{width, height}];
    v14 = v19[5];
    v19[5] = v13;

    v11 = v19[5];
  }

  v15 = v11;
  _Block_object_dispose(&v18, 8);

  return v15;
}

void __47__NTKFaceView__swatchImageForColorOption_size___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 swatchImageForSize:{*(a1 + 40), *(a1 + 48)}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)_swatchImageForColorOption:(id)a3 forDevice:(id)a4 color:(id)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!_swatchImageForColorOption_forDevice_color_size__swatches)
  {
    v13 = objc_opt_new();
    v14 = _swatchImageForColorOption_forDevice_color_size__swatches;
    _swatchImageForColorOption_forDevice_color_size__swatches = v13;
  }

  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  [v12 getRed:&v35 green:&v34 blue:&v33 alpha:&v32];
  v15 = MEMORY[0x277CCACA8];
  v17 = v34;
  v16 = v35;
  v19 = v32;
  v18 = v33;
  v37.width = width;
  v37.height = height;
  v20 = NSStringFromCGSize(v37);
  v21 = [v15 stringWithFormat:@"%f-%f-%f-%f-%@", v16, v17, v18, v19, v20];

  v22 = [_swatchImageForColorOption_forDevice_color_size__swatches objectForKey:v21];
  if (!v22)
  {
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v10 swatchStyle]);
      width = v24;
      height = v25;
    }

    v26 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{width, height}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__NTKFaceView__swatchImageForColorOption_forDevice_color_size___block_invoke;
    v28[3] = &unk_278780D88;
    v29 = v12;
    v30 = width;
    v31 = height;
    v22 = [v26 imageWithActions:v28];
    [_swatchImageForColorOption_forDevice_color_size__swatches setObject:v22 forKey:v21];
  }

  return v22;
}

void __63__NTKFaceView__swatchImageForColorOption_forDevice_color_size___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setFill];
  v5 = [v4 format];

  v6 = MEMORY[0x2318D8E70]([v5 bounds]);
  v8 = v7;

  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = -1.0 / v10;

  v12 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v6 startAngle:v8 endAngle:(*(a1 + 40) + v11) * 0.5 clockwise:{0.0, 6.28318531}];
  [v12 fill];
}

- (id)swatchPrimaryColorForColorOption:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__54;
  v16 = __Block_byref_object_dispose__54;
  v17 = 0;
  if ([v4 conformsToProtocol:&unk_28A87B948] && (-[NTKFaceView faceColorPalette](self, "faceColorPalette"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(NTKFaceView *)self faceColorPalette];
    v7 = [v4 pigmentEditOption];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__NTKFaceView_swatchPrimaryColorForColorOption___block_invoke;
    v11[3] = &unk_2787877D0;
    v11[4] = &v12;
    [v6 executeWithOption:v7 block:v11];
  }

  else
  {
    v8 = [(NTKFaceView *)self _swatchColorForColorOption:v4];
    v6 = v13[5];
    v13[5] = v8;
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __48__NTKFaceView_swatchPrimaryColorForColorOption___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 swatchPrimaryColor];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_swatchColorForColorOption:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28A87B948] && (-[NTKFaceView faceColorPalette](self, "faceColorPalette"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__54;
    v21 = __Block_byref_object_dispose__54;
    v22 = 0;
    v6 = [(NTKFaceView *)self faceColorPalette];
    v7 = [v4 pigmentEditOption];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__NTKFaceView__swatchColorForColorOption___block_invoke;
    v16[3] = &unk_2787877D0;
    v16[4] = &v17;
    [v6 executeWithOption:v7 block:v16];

    v8 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      device = self->_device;
      v10 = v4;
      v11 = [(NTKFaceView *)self faceColorPalette];
      v12 = [v10 pigmentEditOption];

      v13 = [v11 copyWithOption:v12];
      v14 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:v13 units:1];

      v8 = [v14 foregroundColor];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] whiteColor];
    }
  }

  return v8;
}

void __42__NTKFaceView__swatchColorForColorOption___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 swatch];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_updateStatusIconVisibility
{
  if (!self->_timeScrubbing)
  {
    if (self->_transitioningBetweenLiveAndScrubbing)
    {
      wasScrubbingAtStartOfTransition = self->_wasScrubbingAtStartOfTransition;
      if (!self->_editing)
      {
        goto LABEL_6;
      }
    }

    else
    {
      wasScrubbingAtStartOfTransition = 1;
      if (!self->_editing)
      {
        goto LABEL_6;
      }
    }

LABEL_12:
    v4 = 0;
    goto LABEL_10;
  }

  wasScrubbingAtStartOfTransition = 0;
  if (self->_editing)
  {
    goto LABEL_12;
  }

LABEL_6:
  v3 = self->_dataMode != 3 && self->_statusIconVisible;
  v4 = v3 & wasScrubbingAtStartOfTransition;
LABEL_10:
  [(NTKFaceView *)self _prepareForStatusChange:v4];
}

- (BOOL)complicationDisplayWrapperView:(id)a3 shouldStartCustomDataAnimationFromEarlierView:(id)a4 laterView:(id)a5 isForward:(BOOL)a6 animationType:(unint64_t)a7
{
  v9 = a4;
  v10 = a5;
  v11 = [a3 family];
  isKindOfClass = 1;
  if ((v11 - 10) >= 3 && v11 != 8)
  {
    if (v11 == 9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

- (void)complicationDisplayWrapperView:(id)a3 updateCustomDataAnimationFromEarlierView:(id)a4 laterView:(id)a5 isForward:(BOOL)a6 animationType:(unint64_t)a7 animationDuration:(double)a8 animationFraction:(float)a9
{
  v12 = a6;
  v19 = a4;
  v15 = a5;
  v16 = [a3 family];
  if (v16 <= 10)
  {
    if (v16 == 8)
    {
      v18 = NTKRichComplicationCornerUtilities;
      goto LABEL_9;
    }

    if (v16 != 10)
    {
      goto LABEL_10;
    }

LABEL_7:
    v18 = objc_opt_class();
LABEL_9:
    *&v17 = a9;
    [(__objc2_class *)v18 updateCustomDataAnimationFromEarlierView:v19 laterView:v15 isForward:v12 animationType:a7 animationDuration:a8 animationFraction:v17];
    goto LABEL_10;
  }

  if (v16 == 11 || v16 == 12)
  {
    goto LABEL_7;
  }

LABEL_10:
}

- (BOOL)_useAlternateComplicationColorForGraphicCircularComplicationInView:(id)a3
{
  v5 = a3;
  v6 = [(NTKFaceView *)self _legacyShouldSwapGraphicCircularComplicationColors];
  if (!v5 || !v6)
  {
    goto LABEL_11;
  }

  while (![v5 isMemberOfClass:objc_opt_class()])
  {
    v3 = [v5 superview];

    v5 = v3;
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  v5 = v5;
  v7 = [v5 family];
  v8 = v7;
  if (v7 == 12 || v7 == 10)
  {
    v9 = [v5 complicationSlotIdentifier];
    LOBYTE(v3) = [(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplicationInSlot:v9];
  }

  if (v8 != 10 && v8 != 12)
  {
LABEL_11:
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (BOOL)_useAlternateComplicationColorForGraphicCircularComplicationInSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceView *)self delegate];
  v6 = [v5 faceViewComplicationForSlot:v4];

  LOBYTE(self) = [(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplication:v6];
  return self;
}

- (BOOL)_useAlternateComplicationColorForGraphicCircularComplication:(id)a3
{
  v3 = a3;
  v4 = [v3 complicationType];
  v5 = 0;
  if (v4 > 37)
  {
    if (v4 != 38)
    {
      if (v4 != 48)
      {
        goto LABEL_10;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      v6 = [v3 complication];
      v7 = [v6 bundleIdentifier];

      LOBYTE(v6) = [&unk_28418B890 containsObject:v7];
      if ((v6 & 1) == 0)
      {
        goto LABEL_10;
      }

      v5 = 0;
    }
  }

  else if (v4 != 1 && v4 != 5)
  {
LABEL_10:
    v5 = 1;
  }

  return v5;
}

- (void)_setTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  self->_editModeTransitionFraction = a3;
  self->_fromEditMode = a4;
  self->_toEditMode = a5;
  [(NTKFaceView *)self _updateComplicationMaxSize];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__NTKFaceView__setTransitionFraction_fromEditMode_toEditMode___block_invoke;
  v9[3] = &unk_2787877F8;
  v9[4] = self;
  v9[5] = a4;
  v9[6] = a5;
  *&v9[7] = a3;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v9];
  [(NTKFaceView *)self setNeedsLayout];
  [(NTKContainerView *)self->_foregroundContainerView setNeedsLayout];
}

void __62__NTKFaceView__setTransitionFraction_fromEditMode_toEditMode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = 0.0;
  if (([*(a1 + 32) complicationIsHiddenAtSlot:v10] & 1) == 0)
  {
    v7 = [*(a1 + 32) optionForCustomEditMode:*(a1 + 40) slot:v10];
    v8 = [*(a1 + 32) optionForCustomEditMode:*(a1 + 48) slot:v10];
    [*(a1 + 32) _alphaForComplicationSlot:v10 inEditOption:v7 ofEditMode:*(a1 + 40)];
    [*(a1 + 32) _alphaForComplicationSlot:v10 inEditOption:v8 ofEditMode:*(a1 + 48)];
    CLKInterpolateBetweenFloatsClipped();
    v6 = v9;
  }

  [v5 setAlpha:v6];
}

- (double)_alphaForComplicationSlot:(id)a3 inEditOption:(id)a4 ofEditMode:(int64_t)a5
{
  v8 = a3;
  v9 = [(NTKFaceView *)self _complicationSlotsHiddenByEditOption:a4];
  v10 = [v9 containsObject:v8];

  v11 = 0.0;
  if ((v10 & 1) == 0)
  {
    if ([(NTKFaceView *)self _fadesComplicationSlot:v8 inEditMode:a5])
    {
      v11 = 0.2;
    }

    else
    {
      v11 = 1.0;
    }
  }

  return v11;
}

- (CGRect)_frameForComplicationDisplayWrapper:(id)a3 inSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 preferredSize];
  v9 = v8;
  v11 = v10;
  v12 = [v7 layoutOverride];

  if (self->_editing)
  {
    v13 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:v6 withOverride:v12 inEditMode:self->_fromEditMode];
    v14 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:v6 withOverride:v12 inEditMode:self->_toEditMode];
    v15 = [v13 isEqual:v14];
    [v13 calculateLayoutFrameForBoundsSize:{v9, v11}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    if ((v15 & 1) == 0)
    {
      [v14 calculateLayoutFrameForBoundsSize:{v9, v11}];
      CLKInterpolateBetweenRects();
      v17 = v24;
      v19 = v25;
      v21 = v26;
      v23 = v27;
    }
  }

  else
  {
    v13 = [(NTKFaceView *)self layoutRuleForComplicationSlot:v6 inState:0 layoutOverride:v12];
    [v13 calculateLayoutFrameForBoundsSize:{v9, v11}];
    v17 = v28;
    v19 = v29;
    v21 = v30;
    v23 = v31;
  }

  v32 = v17;
  v33 = v19;
  v34 = v21;
  v35 = v23;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGAffineTransform)_displayEditingTransformForComplicationSlot:(SEL)a3 displayWrapper:(id)a4
{
  v8 = a4;
  v9 = MEMORY[0x277CBF2C0];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v10;
  *&retstr->tx = *(v9 + 32);
  v11 = [a5 layoutOverride];
  if (self->_editing)
  {
    v12 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:v8 withOverride:v11 inEditMode:self->_fromEditMode];
    v13 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:v8 withOverride:v11 inEditMode:self->_toEditMode];
    if ([v12 isEqual:v13])
    {
      if (v13)
      {
        [v13 editingTransform];
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
      }

      *&retstr->a = v16;
      *&retstr->c = v17;
      *&retstr->tx = v18;
      goto LABEL_16;
    }

    if (v12)
    {
      [v12 editingTransform];
      if (!v13)
      {
LABEL_15:
        CLKInterpolateBetweenTransform();
LABEL_16:

        goto LABEL_17;
      }
    }

    else if (!v13)
    {
      goto LABEL_15;
    }

    [v13 editingTransform];
    goto LABEL_15;
  }

  v14 = [(NTKFaceView *)self layoutRuleForComplicationSlot:v8 inState:0 layoutOverride:v11];
  v12 = v14;
  if (v14)
  {
    [v14 editingTransform];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  *&retstr->a = v16;
  *&retstr->c = v17;
  *&retstr->tx = v18;
LABEL_17:

  return result;
}

- (CGAffineTransform)_displayContentTransformForComplicationSlot:(SEL)a3 displayWrapper:(id)a4
{
  v8 = a4;
  v9 = MEMORY[0x277CBF2C0];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v10;
  *&retstr->tx = *(v9 + 32);
  v11 = [a5 layoutOverride];
  if (self->_editing)
  {
    v12 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:v8 withOverride:v11 inEditMode:self->_fromEditMode];
    v13 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:v8 withOverride:v11 inEditMode:self->_toEditMode];
    if ([v12 isEqual:v13])
    {
      if (v13)
      {
        [v13 contentTransform];
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
      }

      *&retstr->a = v16;
      *&retstr->c = v17;
      *&retstr->tx = v18;
      goto LABEL_16;
    }

    if (v12)
    {
      [v12 contentTransform];
      if (!v13)
      {
LABEL_15:
        CLKInterpolateBetweenTransform();
LABEL_16:

        goto LABEL_17;
      }
    }

    else if (!v13)
    {
      goto LABEL_15;
    }

    [v13 contentTransform];
    goto LABEL_15;
  }

  v14 = [(NTKFaceView *)self layoutRuleForComplicationSlot:v8 inState:0 layoutOverride:v11];
  v12 = v14;
  if (v14)
  {
    [v14 contentTransform];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
  }

  *&retstr->a = v16;
  *&retstr->c = v17;
  *&retstr->tx = v18;
LABEL_17:

  return result;
}

- (void)_updateComplicationMaxSize
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__NTKFaceView__updateComplicationMaxSize__block_invoke;
  v3[3] = &unk_278787820;
  objc_copyWeak(&v4, &location);
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __41__NTKFaceView__updateComplicationMaxSize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateMaxSizeForDisplayWrapper:v5 slot:v6];
}

- (void)_updateMaxSizeForDisplayWrapper:(id)a3 slot:(id)a4
{
  v6 = a4;
  v11 = a3;
  -[NTKFaceView _maxSizeForComplicationSlot:layoutOverride:](self, "_maxSizeForComplicationSlot:layoutOverride:", v6, [v11 layoutOverride]);
  v8 = v7;
  v10 = v9;

  [v11 setMaxSize:{v8, v10}];
}

- (CGSize)_maxSizeForComplicationSlot:(id)a3 layoutOverride:(int64_t)a4
{
  if (self->_editing)
  {
    fromEditMode = self->_fromEditMode;
    v7 = a3;
    v8 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:v7 withOverride:a4 inEditMode:fromEditMode];
    v9 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:v7 withOverride:a4 inEditMode:self->_toEditMode];

    LOBYTE(v7) = [v8 isEqual:v9];
    [v8 maximumSize];
    v11 = v10;
    v13 = v12;
    if ((v7 & 1) == 0)
    {
      [v9 maximumSize];
      CLKInterpolateBetweenSizes();
      v11 = v14;
      v13 = v15;
    }
  }

  else
  {
    v16 = a3;
    v8 = [(NTKFaceView *)self layoutRuleForComplicationSlot:v16 inState:0 layoutOverride:a4];

    [v8 maximumSize];
    v11 = v17;
    v13 = v18;
  }

  v19 = v11;
  v20 = v13;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)_getKeylineFrame:(CGRect *)a3 padding:(UIEdgeInsets *)a4 forComplicationSlot:(id)a5 selected:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v38 = v10;
  if (v6)
  {
    v11 = [(NSMutableDictionary *)self->_complicationLayouts objectForKey:v10];
    v12 = [v11 defaultLayoutRuleForState:3];

    [v12 referenceFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 keylinePadding];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_complicationDisplayWrappers objectForKey:v10];
    v29 = -[NTKFaceView layoutRuleForComplicationSlot:inState:layoutOverride:](self, "layoutRuleForComplicationSlot:inState:layoutOverride:", v38, 2, [v12 layoutOverride]);
    if ([(NTKFaceView *)self _layoutStyleForSlot:v38]== 1 || [(NTKFaceView *)self _layoutStyleForSlot:v38]== 2)
    {
      [v29 referenceFrame];
    }

    else
    {
      [v12 preferredSize];
      [v29 calculateLayoutFrameForBoundsSize:?];
    }

    v14 = v30;
    v16 = v31;
    v18 = v32;
    v20 = v33;
    [v29 keylinePadding];
    v22 = v34;
    v24 = v35;
    v26 = v36;
    v28 = v37;
  }

  if (a3)
  {
    a3->origin.x = v14 - v24;
    a3->origin.y = v16 - v22;
    a3->size.width = v18 - (-v28 - v24);
    a3->size.height = v20 - (-v26 - v22);
  }

  if (a4)
  {
    a4->top = v22;
    a4->left = v24;
    a4->bottom = v26;
    a4->right = v28;
  }
}

- (id)_layoutRuleForComplicationSlot:(id)a3 withOverride:(int64_t)a4 inEditMode:(int64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    if (a5 == 1)
    {
      if ([v8 isEqual:self->_selectedComplicationSlot])
      {
        a5 = 3;
      }

      else
      {
        a5 = 2;
      }
    }

    else
    {
      a5 = 1;
    }
  }

  v10 = [(NTKFaceView *)self layoutRuleForComplicationSlot:v9 inState:a5 layoutOverride:a4];

  return v10;
}

- (void)_layoutComplicationViews
{
  kdebug_trace();
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __39__NTKFaceView__layoutComplicationViews__block_invoke;
  v6 = &unk_278787820;
  objc_copyWeak(&v7, &location);
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&v3];
  [(NTKFaceView *)self _didLayoutComplicationViews:v3];
  kdebug_trace();
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __39__NTKFaceView__layoutComplicationViews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _layoutComplicationViewWithWrapper:v5 forSlot:v6];
}

- (void)_layoutComplicationViewForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:v4];
  [(NTKFaceView *)self _layoutComplicationViewWithWrapper:v5 forSlot:v4];
}

- (void)_layoutComplicationViewWithWrapper:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NTKFaceView *)self _frameForComplicationDisplayWrapper:v6 inSlot:v7];
  [v6 ntk_setBoundsAndPositionFromFrame:?];
  if (self->_editing)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    [(NTKFaceView *)self _displayEditingTransformForComplicationSlot:v7 displayWrapper:v6];
    v11 = v14;
    v12 = v15;
    v13 = v16;
    v8 = &v11;
  }

  else
  {
    v9 = *(MEMORY[0x277CBF2C0] + 16);
    v14 = *MEMORY[0x277CBF2C0];
    v15 = v9;
    v16 = *(MEMORY[0x277CBF2C0] + 32);
    v8 = &v14;
  }

  [v6 setEditingTransform:{v8, v11, v12, v13, v14, v15, v16}];
  [(NTKFaceView *)self _displayContentTransformForComplicationSlot:v7 displayWrapper:v6];
  [v6 setContentTransform:&v14];
  v10 = [(NTKFaceView *)self _complicationContainerViewForSlot:v7];
  [v10 bringSubviewToFront:v6];
}

- (void)startScrubbingAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  analyticsTimeTravelSessionStart = self->_analyticsTimeTravelSessionStart;
  self->_analyticsTimeTravelSessionStart = v5;

  [(NTKFaceView *)self startScrubbingAnimated:v3 withCompletion:0];
}

- (void)startScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v5 = a4;
  if ([(NTKFaceView *)self _supportsTimeScrubbing]&& !self->_timeScrubbing)
  {
    self->_transitioningBetweenLiveAndScrubbing = 1;
    self->_wasScrubbingAtStartOfTransition = 0;
    v6 = [(NTKFaceView *)self delegate];
    [v6 faceViewWillEnterTimeTravel];

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__NTKFaceView_startScrubbingAnimated_withCompletion___block_invoke;
    v7[3] = &unk_278781070;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    [(NTKFaceView *)self _startScrubbingAnimated:1 withCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else if (v5)
  {
    v5[2](v5);
  }
}

void __53__NTKFaceView_startScrubbingAnimated_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v7 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 675) = 1;
    *(WeakRetained + 433) = 0;
    v4 = +[NTKDate faceDate];
    v5 = v7[56];
    v7[56] = v4;

    objc_storeStrong(v7 + 55, v7[56]);
    v3 = v7;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
    v3 = v7;
  }
}

- (void)_startScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)endScrubbingAnimated:(BOOL)a3
{
  v12 = a3;
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:self->_analyticsTimeTravelSessionStart];
  v6 = v5;
  v7 = NTKFaceStyleDescription([(NTKFaceView *)self faceStyle]);
  v15[0] = @"eventName";
  v15[1] = @"face";
  v16[0] = @"sessionduration";
  v16[1] = v7;
  v15[2] = @"value";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v16[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  AnalyticsSendEvent();

  v13[0] = @"eventName";
  v13[1] = @"face";
  v14[0] = @"maximumoffset";
  v14[1] = v7;
  v13[2] = @"value";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_analyticsTimeTravelMaximumOffset];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  AnalyticsSendEvent();

  self->_analyticsTimeTravelMaximumOffset = 0.0;
  [(NTKFaceView *)self endScrubbingAnimated:v12 withCompletion:0];
}

- (void)endScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_transitioningBetweenLiveAndScrubbing)
  {
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }

  else
  {
    [(NTKFaceView *)self _resetSequencerBoundaries];
    scrubDate = self->_scrubDate;
    self->_scrubDate = 0;

    self->_transitioningBetweenLiveAndScrubbing = 1;
    self->_timeScrubbing = 0;
    self->_wasScrubbingAtStartOfTransition = 1;
    v9 = [(NTKFaceView *)self delegate];
    [v9 faceViewWillExitTimeTravel];

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__NTKFaceView_endScrubbingAnimated_withCompletion___block_invoke;
    v11[3] = &unk_278781070;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    [(NTKFaceView *)self _endScrubbingAnimated:v4 withCompletion:v11];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained faceViewDidScrubToDate:0 forced:1];

    [(NTKFaceView *)self applyRubberBandingFraction:0 forCustomEditMode:0 slot:0.0];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __51__NTKFaceView_endScrubbingAnimated_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 433) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))();
    v3 = v5;
  }
}

- (void)_endScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)enableCrownEventReception
{
  v9 = *MEMORY[0x277D85DE8];
  dataMode = self->_dataMode;
  p_super = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  v5 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (dataMode == 1)
  {
    if (v5)
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_22D9C5000, p_super, OS_LOG_TYPE_DEFAULT, "[CROWN] Face %@ taking crown assertion", &v7, 0xCu);
    }

    v6 = [(NTKCrownAssertionHandler *)self->_crownHandler takeCrownAssertionForToken:self->_crownAssertionToken];
    p_super = &self->_crownAssertionToken->super;
    self->_crownAssertionToken = v6;
  }

  else if (v5)
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_22D9C5000, p_super, OS_LOG_TYPE_DEFAULT, "[CROWN] Face %@ not taking crown assertion in background", &v7, 0xCu);
  }
}

- (void)disableCrownEventReception
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_crownAssertionToken)
  {
    v3 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = self;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Face %@ releasing crown assertion", &v5, 0xCu);
    }

    [(NTKCrownAssertionHandler *)self->_crownHandler relinquishCrownAssertionForToken:self->_crownAssertionToken];
    crownAssertionToken = self->_crownAssertionToken;
    self->_crownAssertionToken = 0;
  }
}

- (id)_allViewsWithComplicationEditingDesaturationFilter
{
  if ([(NTKFaceView *)self _wantsDimWithDesaturationFilterDuringComplicationEditing])
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = [(NTKFaceView *)self timeView];

    if (v4)
    {
      v5 = [(NTKFaceView *)self timeView];
      [v3 addObject:v5];
    }

    complicationDisplayWrappers = self->_complicationDisplayWrappers;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__NTKFaceView__allViewsWithComplicationEditingDesaturationFilter__block_invoke;
    v11[3] = &unk_278786F38;
    v7 = v3;
    v12 = v7;
    [(NSMutableDictionary *)complicationDisplayWrappers enumerateKeysAndObjectsUsingBlock:v11];
    v8 = [(NTKFaceView *)self _additonalViewsToApplyDesaturationDuringComplicationEditing];
    if (v8)
    {
      [v7 addObjectsFromArray:v8];
    }

    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (void)_addSaturationFilterToViews:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v22 = *v28;
    do
    {
      v5 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = [v6 layer];
        v8 = [v7 filters];

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
LABEL_8:
          v12 = 0;
          while (1)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v23 + 1) + 8 * v12) name];
            v14 = [v13 isEqualToString:@"EditingSaturationFilter"];

            if (v14)
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
              if (v10)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:

          v15 = [v6 layer];
          v16 = [v15 filters];

          if (v16)
          {
            v17 = [v6 layer];
            v18 = [v17 filters];
            v8 = [v18 mutableCopy];

            [v8 addObject:self->_complicationEditingSaturationFilter];
          }

          else
          {
            complicationEditingSaturationFilter = self->_complicationEditingSaturationFilter;
            v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&complicationEditingSaturationFilter count:1];
          }

          v19 = [v6 layer];
          [v19 setFilters:v8];
        }

        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v4);
  }
}

- (void)_updateSaturationForComplicationEditing
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(NTKFaceView *)self _allViewsWithComplicationEditingDesaturationFilter];
  [(NTKFaceView *)self _addSaturationFilterToViews:v3];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"filters.%@.inputAmount", @"EditingSaturationFilter"];
  v5 = [(NTKFaceView *)self selectedComplicationSlot];
  v17 = v5;
  if (v5)
  {
    v6 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:v5];
  }

  else
  {
    v6 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 layer];
        v15 = v13;
        if (v12 == v6)
        {
          [v13 setValue:&unk_284189908 forKeyPath:v4];
        }

        else
        {
          *&v14 = self->_complicationEditingSaturationValue;
          v16 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
          [v15 setValue:v16 forKeyPath:v4];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v6 = a3;
  v7 = [(NTKFaceView *)self device];
  v8 = NTKShowGossamerUI(v7);

  if ((v8 & 1) == 0)
  {
    if ([(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplicationInView:v6])
    {
      [(NTKFaceView *)self complicationColor];
      objc_claimAutoreleasedReturnValue();
      [(NTKFaceView *)self alternateComplicationColor];
      objc_claimAutoreleasedReturnValue();
      CLKUIMonochromeFiltersForStyle();
    }
  }

  [(NTKFaceView *)self alternateComplicationColor];
  objc_claimAutoreleasedReturnValue();
  [(NTKFaceView *)self complicationColor];
  objc_claimAutoreleasedReturnValue();
  [(NTKFaceView *)self complicationBackgroundColor];
  objc_claimAutoreleasedReturnValue();
  CLKUIMonochromeFiltersForStyleWithTintedBackground();
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  v5 = a3;
  v6 = [(NTKFaceView *)self device];
  v7 = NTKShowGossamerUI(v6);

  if ((v7 & 1) == 0)
  {
    if ([(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplicationInView:v5])
    {
      [(NTKFaceView *)self interpolatedComplicationColor];
      objc_claimAutoreleasedReturnValue();
      [(NTKFaceView *)self alternateComplicationColor];
      objc_claimAutoreleasedReturnValue();
      CLKUIMonochromeFiltersForStyle();
    }
  }

  [(NTKFaceView *)self alternateComplicationColor];
  objc_claimAutoreleasedReturnValue();
  [(NTKFaceView *)self interpolatedComplicationColor];
  objc_claimAutoreleasedReturnValue();
  [(NTKFaceView *)self complicationBackgroundColor];
  objc_claimAutoreleasedReturnValue();
  CLKUIMonochromeFiltersForStyleWithTintedBackground();
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  [(NTKFaceView *)self alternateComplicationColor];
  objc_claimAutoreleasedReturnValue();
  [(NTKFaceView *)self complicationColor];
  objc_claimAutoreleasedReturnValue();
  NTKMonochromeFilterForStyle();
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  [(NTKFaceView *)self alternateComplicationColor];
  objc_claimAutoreleasedReturnValue();
  [(NTKFaceView *)self interpolatedComplicationColor];
  objc_claimAutoreleasedReturnValue();
  NTKMonochromeFilterForStyle();
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NTKFaceView *)self device];
  v8 = NTKShowGossamerUI(v7);

  if ((v8 & 1) != 0 || ![(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplicationInView:v6])
  {
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else if (!v4)
  {
LABEL_4:
    v9 = [(NTKFaceView *)self complicationColor];
    goto LABEL_7;
  }

  v9 = [(NTKFaceView *)self alternateComplicationColor];
LABEL_7:
  v10 = v9;

  return v10;
}

- (id)interpolatedColorForView:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceView *)self device];
  v6 = NTKShowGossamerUI(v5);

  if ((v6 & 1) != 0 || ![(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplicationInView:v4])
  {
    v7 = [(NTKFaceView *)self interpolatedComplicationColor];
  }

  else
  {
    v7 = [(NTKFaceView *)self alternateComplicationColor];
  }

  v8 = v7;

  return v8;
}

- (void)changeComplicationsAlpha:(double)a3
{
  v4 = [(NTKFaceView *)self complicationContainerView];
  [v4 setAlpha:a3];
}

- (id)createFaceColorPalette
{
  v2 = [(NTKFaceView *)self delegate];
  v3 = [v2 faceViewWantsFaceColorPalette];

  return v3;
}

+ (id)pigmentFromOption:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_28A87B948])
  {
    v4 = [v3 pigmentEditOption];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateFaceColorPaletteWithOption:(id)a3 mode:(int64_t)a4
{
  v9 = a3;
  v6 = [(NTKFaceView *)self faceColorPalette];

  if (a4 == 10 && v6)
  {
    v7 = [objc_opt_class() pigmentFromOption:v9];
    [(NTKFaceColorPalette *)self->_faceColorPalette setPigmentEditOption:v7];
    interpolatedColorPalette = self->_interpolatedColorPalette;
    if (interpolatedColorPalette)
    {
      [(NTKInterpolatedColorPalette *)interpolatedColorPalette setFromPalette:self->_faceColorPalette];
      [(NTKInterpolatedColorPalette *)self->_interpolatedColorPalette setToPalette:self->_faceColorPalette];
    }
  }
}

- (NTKFaceColorPalette)faceColorPalette
{
  faceColorPalette = self->_faceColorPalette;
  if (!faceColorPalette)
  {
    v4 = [(NTKFaceView *)self createFaceColorPalette];
    v5 = self->_faceColorPalette;
    self->_faceColorPalette = v4;

    if (self->_faceColorPalette)
    {
      v6 = [(NTKFaceView *)self optionForCustomEditMode:10 slot:0];
      if (v6)
      {
        v7 = [objc_opt_class() pigmentFromOption:v6];
        [(NTKFaceColorPalette *)self->_faceColorPalette setPigmentEditOption:v7];
      }

      faceColorPalette = self->_faceColorPalette;
    }

    else
    {
      faceColorPalette = 0;
    }
  }

  return faceColorPalette;
}

- (NTKInterpolatedColorPalette)interpolatedColorPalette
{
  if (!self->_interpolatedColorPalette)
  {
    v3 = [(NTKFaceView *)self faceColorPalette];

    if (v3)
    {
      v4 = [NTKInterpolatedColorPalette alloc];
      v5 = [(NTKFaceView *)self faceColorPalette];
      v6 = [(NTKInterpolatedColorPalette *)v4 initWithColorPalette:v5];
      interpolatedColorPalette = self->_interpolatedColorPalette;
      self->_interpolatedColorPalette = v6;
    }
  }

  v8 = self->_interpolatedColorPalette;

  return v8;
}

- (void)ensureWidgetContentWithMetrics:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = dispatch_group_create();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__54;
  v23[4] = __Block_byref_object_dispose__54;
  v24 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke;
  v18[3] = &unk_278787898;
  v11 = v8;
  v19 = v11;
  v12 = v10;
  v22 = a4;
  v20 = v12;
  v21 = v23;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_180;
  v15[3] = &unk_27877FD78;
  v16 = v9;
  v17 = v23;
  v13 = v9;
  v14 = MEMORY[0x277D85CD0];
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], v15);

  _Block_object_dispose(v23, 8);
}

void __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = *(a1 + 32);
    v24 = 0;
    v9 = [v8 childTaskNamed:v7 error:&v24];
    v10 = v24;
    if (!v9)
    {
      v11 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_cold_1(v7, v10, v11);
      }
    }

    v12 = v6;
    dispatch_group_enter(*(a1 + 40));
    v13 = *(a1 + 56);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_178;
    v18[3] = &unk_278787870;
    v19 = v9;
    v20 = v7;
    v21 = v20;
    v22 = v12;
    v17 = *(a1 + 40);
    v14 = v17;
    v23 = v17;
    v15 = v9;
    v16 = v12;
    [v16 prepareSnapshotContentWithTimeout:v18 completion:v13];
  }
}

void __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_178(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_2;
  block[3] = &unk_278787848;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v3;
  v12 = *(a1 + 56);
  v6 = *(a1 + 64);
  v4 = v6;
  v13 = v6;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 finishWithError:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_2_cold_1(a1, v4, v5);
    }
  }

  if (*(a1 + 56))
  {
    v6 = _NTKLoggingObjectForDomain(64, "NTKLoggingDomainFaceSnapshotRenderer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_2_cold_2(a1, (a1 + 56), v6);
    }

    [*(*(*(a1 + 80) + 8) + 40) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 72));
}

void __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_180(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v2 = MEMORY[0x277CCA9B8];
    v3 = [*(*(*(a1 + 40) + 8) + 40) copy];
    v5 = [v2 errorWithDomain:@"com.apple.nanotimekit.faceSnapshotRenderer" code:5 userInfo:v3];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)setWidgetHostPriorityTransientSnapshot:(BOOL)a3
{
  if (self->_widgetHostPriorityTransientSnapshot != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_widgetHostPriorityTransientSnapshot = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__NTKFaceView_setWidgetHostPriorityTransientSnapshot___block_invoke;
    v5[3] = &unk_278787018;
    v5[4] = self;
    [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
  }
}

void __54__NTKFaceView_setWidgetHostPriorityTransientSnapshot___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setWidgetHostPriorityTransientSnapshot:*(*(a1 + 32) + 668)];
  }
}

- (NTKFaceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)renderIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 134218496;
  v4 = [a1 dataMode];
  v5 = 1024;
  v6 = NTKIsScreenOn();
  v7 = 1024;
  v8 = NTKIsDaemonOrFaceSnapshotService();
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "renderWasIgnored dataMode:%ld NTKIsScreenOn:%d NTKIsDaemonOrFaceSnapshotService:%d)", &v3, 0x18u);
}

void __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Add child task for %@ failed: %@", &v3, 0x16u);
}

void __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Finish child task for slot %@, widget %@ failed: %@", &v5, 0x20u);
}

void __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_2_cold_2(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 64) widgetIdentifier];
  v7 = *a2;
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "Slot %@ for %@ encountered error: %@", &v8, 0x20u);
}

@end