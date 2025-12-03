@interface NTKFaceView
+ (id)_swatchImageForColorOption:(id)option forDevice:(id)device color:(id)color size:(CGSize)size;
+ (id)newFaceViewForFace:(id)face;
+ (id)pigmentFromOption:(id)option;
- (BOOL)_renderSynchronouslyIfNeededInGroup:(id)group;
- (BOOL)_shouldHideUI;
- (BOOL)_useAlternateComplicationColorForGraphicCircularComplication:(id)complication;
- (BOOL)_useAlternateComplicationColorForGraphicCircularComplicationInSlot:(id)slot;
- (BOOL)_useAlternateComplicationColorForGraphicCircularComplicationInView:(id)view;
- (BOOL)allFontsHidden;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)complicationDisplayWrapperView:(id)view shouldStartCustomDataAnimationFromEarlierView:(id)earlierView laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type;
- (BOOL)monochromeRichComplicationsEnabled;
- (BOOL)renderIfNeeded;
- (CGAffineTransform)_displayContentTransformForComplicationSlot:(SEL)slot displayWrapper:(id)wrapper;
- (CGAffineTransform)_displayEditingTransformForComplicationSlot:(SEL)slot displayWrapper:(id)wrapper;
- (CGRect)_faceViewFrameForEditMode:(int64_t)mode option:(id)option slot:(id)slot;
- (CGRect)_frameForComplicationDisplayWrapper:(id)wrapper inSlot:(id)slot;
- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected;
- (CGRect)_keylineFrameForCustomEditMode:(int64_t)mode option:(id)option slot:(id)slot;
- (CGRect)_keylineFrameForCustomEditMode:(int64_t)mode option:(id)option slot:(id)slot selectedSlot:(id)selectedSlot;
- (CGRect)_keylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot;
- (CGRect)_keylineFrameForEditMode:(int64_t)mode option:(id)option slot:(id)slot selectedSlot:(id)selectedSlot;
- (CGRect)_keylineFrameFromRelativeFrame:(CGRect)frame forEditingMode:(int64_t)mode option:(id)option slot:(id)slot;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot;
- (CGRect)keylineFrameForCustomEditMode:(int64_t)mode option:(id)option slot:(id)slot;
- (CGRect)keylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot selectedSlot:(id)selectedSlot;
- (CGSize)_maxSizeForComplicationSlot:(id)slot layoutOverride:(int64_t)override;
- (NSDate)currentDisplayDate;
- (NTKFaceColorPalette)faceColorPalette;
- (NTKFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (NTKFaceViewDelegate)delegate;
- (NTKInterpolatedColorPalette)interpolatedColorPalette;
- (double)_alphaForComplicationSlot:(id)slot inEditOption:(id)option ofEditMode:(int64_t)mode;
- (double)_faceEditingScaleForEditMode:(int64_t)mode slot:(id)slot;
- (double)_verticalPaddingForStatusBar;
- (id)_accessPrewarmedData;
- (id)_allViewsWithComplicationEditingDesaturationFilter;
- (id)_complicationSlotsHiddenByCurrentConfiguration;
- (id)_complicationSlotsHiddenByEditOption:(id)option;
- (id)_defaultKeylineViewForComplicationSlot:(id)slot;
- (id)_editModesDisabledByCurrentConfiguration;
- (id)_editModesNotDisabledByCurrentConfiguration;
- (id)_editOptionThatHidesAllComplications;
- (id)_editOptionsThatHideEditModes;
- (id)_keylineViewForComplicationSlot:(id)slot;
- (id)_layoutRuleForComplicationSlot:(id)slot withOverride:(int64_t)override inEditMode:(int64_t)mode;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_swatchColorForColorOption:(id)option;
- (id)_swatchImageForColorOption:(id)option size:(CGSize)size;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)allVisibleComplicationsForCurrentConfiguration;
- (id)closestVisibleComplicationSlotToSlot:(id)slot;
- (id)closestVisibleSlotToSlot:(id)slot editMode:(int64_t)mode;
- (id)colorForView:(id)view accented:(BOOL)accented;
- (id)complicationLayoutforSlot:(id)slot;
- (id)createFaceColorPalette;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)interpolatedColorForView:(id)view;
- (id)layoutRuleForComplicationSlot:(id)slot inState:(int64_t)state layoutOverride:(int64_t)override;
- (id)optionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)swatchPrimaryColorForColorOption:(id)option;
- (int64_t)_complicationPickerStyleForSlot:(id)slot;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (int64_t)complicationPickerStyleForSlot:(id)slot;
- (int64_t)legacyComplicationLayoutOverrideForSlot:(id)slot complication:(id)complication;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_layoutStyleForSlot:(id)slot;
- (void)_addSaturationFilterToViews:(id)views;
- (void)_applyEditConfigurationsWithForce:(BOOL)force;
- (void)_applyFrozen;
- (void)_becameActiveFace;
- (void)_bringForegroundViewsToFront;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)_endScrubbingAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_finalizeForSnapshotting:(id)snapshotting;
- (void)_getKeylineFrame:(CGRect *)frame padding:(UIEdgeInsets *)padding forComplicationSlot:(id)slot selected:(BOOL)selected;
- (void)_handleLocaleDidChange;
- (void)_layoutComplicationViewForSlot:(id)slot;
- (void)_layoutComplicationViewWithWrapper:(id)wrapper forSlot:(id)slot;
- (void)_layoutComplicationViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_performPrewarmRoutine:(id)routine;
- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group;
- (void)_reorderSwitcherSnapshotView;
- (void)_setComplicationAlphaForTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption customEditMode:(int64_t)mode slot:(id)slot;
- (void)_setTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_setupComplicationViewsIfHidden;
- (void)_startScrubbingAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_teardownComplicationViewsIfNeeded;
- (void)_updateComplicationMaxSize;
- (void)_updateFaceColorPaletteWithOption:(id)option mode:(int64_t)mode;
- (void)_updateMaxSizeForDisplayWrapper:(id)wrapper slot:(id)slot;
- (void)_updateSaturationForComplicationEditing;
- (void)_updateStatusIconVisibility;
- (void)applyBreathingFraction:(double)fraction forComplicationSlot:(id)slot;
- (void)changeComplicationsAlpha:(double)alpha;
- (void)cleanupAfterEditing;
- (void)complicationDisplayWrapperView:(id)view updateCustomDataAnimationFromEarlierView:(id)earlierView laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction;
- (void)configureComplicationViewDisplayWrapper:(id)wrapper forSlot:(id)slot;
- (void)configureForEditMode:(int64_t)mode;
- (void)configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)dealloc;
- (void)disableCrownEventReception;
- (void)enableCrownEventReception;
- (void)endScrubbingAnimated:(BOOL)animated;
- (void)endScrubbingAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)ensureWidgetContentWithMetrics:(id)metrics timeout:(double)timeout completion:(id)completion;
- (void)enumerateComplicationDisplayWrappersWithBlock:(id)block;
- (void)enumerateQuadViewsWithBlock:(id)block;
- (void)hideAppropriateComplicationsForCurrentConfigurationInEditMode:(int64_t)mode;
- (void)layoutContainerView:(id)view;
- (void)layoutSubviews;
- (void)loadContentToReplaceUnadornedSnapshot;
- (void)performScrollTestNamed:(id)named completion:(id)completion;
- (void)performWristRaiseAnimation;
- (void)populateFaceViewEditOptionsFromFace:(id)face forced:(BOOL)forced;
- (void)prepareForEditing;
- (void)prepareToZoom;
- (void)prepareWristRaiseAnimation;
- (void)reconfigureComplicationViews;
- (void)reloadSnapshotContentViews;
- (void)renderIfNeeded;
- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group;
- (void)setComplicationHidden:(BOOL)hidden atSlot:(id)slot;
- (void)setComplicationsShowEditingContent:(BOOL)content;
- (void)setDataMode:(int64_t)mode;
- (void)setDetachedComplicationDisplayWrapper:(id)wrapper forSlot:(id)slot;
- (void)setNeedsRender;
- (void)setNormalComplicationDisplayWrapper:(id)wrapper forSlot:(id)slot;
- (void)setOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot forceApply:(BOOL)apply;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setResourceDirectory:(id)directory;
- (void)setSelectedComplicationSlot:(id)slot;
- (void)setShouldShowUnsnapshotableContent:(BOOL)content;
- (void)setShowContentForUnadornedSnapshot:(BOOL)snapshot;
- (void)setShowsCanonicalContent:(BOOL)content;
- (void)setShowsLockedUI:(BOOL)i;
- (void)setSlow:(BOOL)slow;
- (void)setSwitcherSnapshotView:(id)view;
- (void)setTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption customEditMode:(int64_t)mode slot:(id)slot;
- (void)setWidgetHostPriorityTransientSnapshot:(BOOL)snapshot;
- (void)shiftSelectedComplicationSlotIfHidden;
- (void)startScrubbingAnimated:(BOOL)animated;
- (void)startScrubbingAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)updateRichCornerComplicationsInnerColor:(id)color outerColor:(id)outerColor;
- (void)willMoveToWindow:(id)window;
@end

@implementation NTKFaceView

- (void)updateRichCornerComplicationsInnerColor:(id)color outerColor:(id)outerColor
{
  colorCopy = color;
  outerColorCopy = outerColor;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__NTKFaceView_ComplicationColor__updateRichCornerComplicationsInnerColor_outerColor___block_invoke;
  v10[3] = &unk_278783AC0;
  v10[4] = self;
  v11 = colorCopy;
  v12 = outerColorCopy;
  v8 = outerColorCopy;
  v9 = colorCopy;
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

+ (id)newFaceViewForFace:(id)face
{
  faceCopy = face;
  v4 = objc_alloc(ViewClassForFace(faceCopy));
  faceStyle = [faceCopy faceStyle];
  device = [faceCopy device];
  bundleIdentifier = [faceCopy bundleIdentifier];

  v8 = [v4 initWithFaceStyle:faceStyle forDevice:device clientIdentifier:bundleIdentifier];
  return v8;
}

- (NTKFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  [deviceCopy screenBounds];
  v30.receiver = self;
  v30.super_class = NTKFaceView;
  v11 = [(NTKFaceView *)&v30 initWithFrame:?];
  v12 = v11;
  if (v11)
  {
    [(NTKFaceView *)v11 setAccessibilityIdentifier:@"Watch Face"];
    v12->_faceStyle = style;
    objc_storeStrong(&v12->_device, device);
    v13 = [identifierCopy copy];
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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    complicationColor = v12->_complicationColor;
    v12->_complicationColor = whiteColor;

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    interpolatedComplicationColor = v12->_interpolatedComplicationColor;
    v12->_interpolatedComplicationColor = whiteColor2;

    CLKUIDefaultAlternateComplicationColor();
  }

  return 0;
}

- (void)performScrollTestNamed:(id)named completion:(id)completion
{
  completionCopy = completion;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:@"NTKPPTInvalidFace" reason:@"Only Siri face supports scrolling." userInfo:MEMORY[0x277CBEC10]];
  [v4 raise];

  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v5 = completionCopy;
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
  device = [(NTKFaceView *)self device];
  v3 = NTKMonochromeComplicationsEnabledForDevice();

  return v3;
}

- (BOOL)_shouldHideUI
{
  uiSensitivity = [objc_opt_class() uiSensitivity];
  mEMORY[0x277CBBB70] = [MEMORY[0x277CBBB70] sharedMonitor];
  LOBYTE(uiSensitivity) = [mEMORY[0x277CBBB70] shouldHideForSensitivity:uiSensitivity];

  return uiSensitivity;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v13.receiver = self;
  v13.super_class = NTKFaceView;
  [(NTKFaceView *)&v13 willMoveToWindow:windowCopy];
  window = [(NTKFaceView *)self window];

  if (!windowCopy && window)
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
  if (!windowCopy || v6)
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

- (void)setShouldShowUnsnapshotableContent:(BOOL)content
{
  if (self->_shouldShowUnsnapshotableContent != content)
  {
    self->_shouldShowUnsnapshotableContent = content;
    if (content)
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

- (void)setDataMode:(int64_t)mode
{
  if (self->_dataMode != mode)
  {
    kdebug_trace();
    self->_dataMode = mode;
    [(NTKFaceView *)self _applyDataMode];

    [(NTKFaceView *)self _updateStatusIconVisibility];
  }
}

- (void)setShowsCanonicalContent:(BOOL)content
{
  if (self->_showsCanonicalContent != content)
  {
    self->_showsCanonicalContent = content;
    [(NTKFaceView *)self _applyShowsCanonicalContent];
  }
}

- (void)setShowContentForUnadornedSnapshot:(BOOL)snapshot
{
  if (self->_showContentForUnadornedSnapshot != snapshot)
  {
    self->_showContentForUnadornedSnapshot = snapshot;
    [(NTKFaceView *)self _applyShowContentForUnadornedSnapshot];
  }
}

- (void)setShowsLockedUI:(BOOL)i
{
  if (self->_showsLockedUI != i)
  {
    self->_showsLockedUI = i;
    [(NTKFaceView *)self _applyShowsLockedUI];
  }
}

- (NSDate)currentDisplayDate
{
  faceDisplayTime = self->_overrideDate;
  if (!faceDisplayTime)
  {
    v3 = +[NTKTimeOffsetManager sharedManager];
    faceDisplayTime = [v3 faceDisplayTime];
  }

  return faceDisplayTime;
}

- (void)setResourceDirectory:(id)directory
{
  directoryCopy = directory;
  if (([directoryCopy isEqualToString:self->_resourceDirectory] & 1) == 0)
  {
    v4 = [(NSString *)self->_resourceDirectory copy];
    v5 = [directoryCopy copy];
    resourceDirectory = self->_resourceDirectory;
    self->_resourceDirectory = v5;

    [(NTKFaceView *)self _updateForResourceDirectoryChange:v4];
  }
}

- (id)optionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  editConfigurations = self->_editConfigurations;
  v6 = MEMORY[0x277CCABB0];
  slotCopy = slot;
  v8 = [v6 numberWithInteger:mode];
  v9 = [(NSMutableDictionary *)editConfigurations objectForKey:v8];

  v10 = [v9 editOptionForSlot:slotCopy];

  return v10;
}

- (void)setOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot forceApply:(BOOL)apply
{
  applyCopy = apply;
  optionCopy = option;
  slotCopy = slot;
  [(NTKFaceView *)self _updateFaceColorPaletteWithOption:optionCopy mode:mode];
  editConfigurations = self->_editConfigurations;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  v13 = [(NSMutableDictionary *)editConfigurations objectForKey:v12];

  if (!v13)
  {
    v13 = objc_alloc_init(NTKEditModeConfiguration);
    v14 = self->_editConfigurations;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
    [(NSMutableDictionary *)v14 setObject:v13 forKey:v15];
  }

  v16 = [(NTKEditModeConfiguration *)v13 editOptionForSlot:slotCopy];
  if (NTKEqualObjects(optionCopy, v16))
  {
    v17 = !applyCopy;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    [(NTKEditModeConfiguration *)v13 setEditOption:optionCopy forSlot:slotCopy];
    if (mode != 10)
    {
      [(NTKFaceView *)self hideAppropriateComplicationsForCurrentConfigurationInEditMode:mode];
    }

    [(NTKFaceView *)self _applyOption:optionCopy forCustomEditMode:mode slot:slotCopy];
  }
}

- (int64_t)legacyComplicationLayoutOverrideForSlot:(id)slot complication:(id)complication
{
  slotCopy = slot;
  v7 = -[NTKFaceView _legacyLayoutOverrideforComplicationType:slot:](self, "_legacyLayoutOverrideforComplicationType:slot:", [complication complicationType], slotCopy);

  return v7;
}

- (void)configureComplicationViewDisplayWrapper:(id)wrapper forSlot:(id)slot
{
  wrapperCopy = wrapper;
  slotCopy = slot;
  [(NTKFaceView *)self _updateMaxSizeForDisplayWrapper:wrapperCopy slot:slotCopy];
  [wrapperCopy setEditing:self->_complicationsShowEditingContent];
  [(NTKFaceView *)self alphaForDimmedState];
  [wrapperCopy setAlphaForDimmedState:?];
  [wrapperCopy setTextLayoutStyle:{-[NTKFaceView layoutStyleForSlot:](self, "layoutStyleForSlot:", slotCopy)}];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__NTKFaceView_configureComplicationViewDisplayWrapper_forSlot___block_invoke;
  v9[3] = &unk_2787875D0;
  objc_copyWeak(&v11, &location);
  v8 = slotCopy;
  v10 = v8;
  [wrapperCopy setDisplayConfigurationHandler:v9];

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

- (void)setNormalComplicationDisplayWrapper:(id)wrapper forSlot:(id)slot
{
  wrapperCopy = wrapper;
  slotCopy = slot;
  v8 = [(NSMutableDictionary *)self->_complicationDisplayWrappers objectForKey:slotCopy];
  v9 = v8;
  if (v8 != wrapperCopy)
  {
    if (v8)
    {
      [v8 setNeedsResizeHandler:0];
      [v9 removeFromSuperview];
      [(NSMutableDictionary *)self->_complicationDisplayWrappers removeObjectForKey:slotCopy];
    }

    if (wrapperCopy)
    {
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __59__NTKFaceView_setNormalComplicationDisplayWrapper_forSlot___block_invoke;
      v12[3] = &unk_27877F610;
      objc_copyWeak(&v14, &location);
      v10 = slotCopy;
      v13 = v10;
      [wrapperCopy setNeedsResizeHandler:v12];
      v11 = [(NTKFaceView *)self _complicationContainerViewForSlot:v10];
      [v11 addSubview:wrapperCopy];

      [(NSMutableDictionary *)self->_complicationDisplayWrappers setObject:wrapperCopy forKey:v10];
      [(NTKContainerView *)self->_foregroundContainerView setNeedsLayout];
      [(NTKFaceView *)self _updateMaxSizeForDisplayWrapper:wrapperCopy slot:v10];
      [wrapperCopy setEditing:self->_complicationsShowEditingContent];
      [(NTKFaceView *)self alphaForDimmedState];
      [wrapperCopy setAlphaForDimmedState:?];
      [wrapperCopy setAnimationDelegate:self];
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

- (void)setDetachedComplicationDisplayWrapper:(id)wrapper forSlot:(id)slot
{
  wrapperCopy = wrapper;
  slotCopy = slot;
  v7 = [(NSMutableDictionary *)self->_complicationDisplayWrappers objectForKey:slotCopy];
  v8 = wrapperCopy;
  v9 = v7;
  if (v7 != wrapperCopy)
  {
    if (v7)
    {
      [(NSMutableDictionary *)self->_complicationDisplayWrappers removeObjectForKey:slotCopy];
      v8 = wrapperCopy;
    }

    if (v8)
    {
      [(NSMutableDictionary *)self->_complicationDisplayWrappers setObject:wrapperCopy forKey:slotCopy];
    }
  }
}

- (void)setSlow:(BOOL)slow
{
  if (self->_slow != slow)
  {
    self->_slow = slow;
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
  selfCopy = self;
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

- (void)setComplicationsShowEditingContent:(BOOL)content
{
  if (self->_complicationsShowEditingContent != content)
  {
    v7 = v3;
    v8 = v4;
    self->_complicationsShowEditingContent = content;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__NTKFaceView_setComplicationsShowEditingContent___block_invoke;
    v5[3] = &__block_descriptor_33_e56_v24__0__NSString_8__NTKComplicationDisplayWrapperView_16l;
    contentCopy = content;
    [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
  }
}

- (void)prepareForEditing
{
  self->_editing = 1;
  delegate = [(NTKFaceView *)self delegate];
  [delegate faceViewWantsUnadornedSnapshotViewRemoved];

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
  faceColorPalette = [(NTKFaceView *)self faceColorPalette];
  [faceColorPalette resetColorCache];
}

- (void)populateFaceViewEditOptionsFromFace:(id)face forced:(BOOL)forced
{
  faceCopy = face;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__NTKFaceView_populateFaceViewEditOptionsFromFace_forced___block_invoke;
  v8[3] = &unk_278787640;
  v9 = faceCopy;
  selfCopy = self;
  forcedCopy = forced;
  v7 = faceCopy;
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

- (void)configureForEditMode:(int64_t)mode
{
  [(NTKFaceView *)self _setTransitionFraction:mode fromEditMode:mode toEditMode:0.0];

  [(NTKFaceView *)self _configureForEditMode:mode];
}

- (void)configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [NTKFaceView _setTransitionFraction:"_setTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];

  [(NTKFaceView *)self _configureForTransitionFraction:mode fromEditMode:editMode toEditMode:fraction];
}

- (void)setTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption customEditMode:(int64_t)mode slot:(id)slot
{
  v35 = *MEMORY[0x277D85DE8];
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  faceColorPalette = [(NTKFaceView *)self faceColorPalette];

  if (mode == 10 && faceColorPalette)
  {
    v16 = [objc_opt_class() pigmentFromOption:optionCopy];
    interpolatedColorPalette = [(NTKFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    [fromPalette setPigmentEditOption:v16];

    v19 = [objc_opt_class() pigmentFromOption:toOptionCopy];
    interpolatedColorPalette2 = [(NTKFaceView *)self interpolatedColorPalette];
    toPalette = [interpolatedColorPalette2 toPalette];
    [toPalette setPigmentEditOption:v19];

    interpolatedColorPalette3 = [(NTKFaceView *)self interpolatedColorPalette];
    [interpolatedColorPalette3 setTransitionFraction:fraction];
  }

  [(NTKFaceView *)self _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slotCopy slot:fraction];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  faceViewComplicationSlots = [WeakRetained faceViewComplicationSlots];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = faceViewComplicationSlots;
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

        [(NTKFaceView *)self _setComplicationAlphaForTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode customEditMode:*(*(&v30 + 1) + 8 * v29++) slot:fraction, v30];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v27);
  }
}

- (CGRect)keylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot selectedSlot:(id)selectedSlot
{
  selectedSlotCopy = selectedSlot;
  slotCopy = slot;
  v10 = [(NTKFaceView *)self optionForCustomEditMode:mode slot:slotCopy];
  [(NTKFaceView *)self _keylineFrameForEditMode:mode option:v10 slot:slotCopy selectedSlot:selectedSlotCopy];
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

- (CGRect)keylineFrameForCustomEditMode:(int64_t)mode option:(id)option slot:(id)slot
{
  [(NTKFaceView *)self _keylineFrameForEditMode:mode option:option slot:slot selectedSlot:slot];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_keylineFrameForEditMode:(int64_t)mode option:(id)option slot:(id)slot selectedSlot:(id)selectedSlot
{
  selectedSlotCopy = selectedSlot;
  slotCopy = slot;
  optionCopy = option;
  [(NTKFaceView *)self _relativeKeylineFrameForCustomEditMode:mode slot:slotCopy];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  if (CGRectIsNull(v29))
  {
    [(NTKFaceView *)self _keylineFrameForCustomEditMode:mode option:optionCopy slot:slotCopy selectedSlot:selectedSlotCopy];
  }

  else
  {
    [(NTKFaceView *)self _keylineFrameFromRelativeFrame:mode forEditingMode:optionCopy option:slotCopy slot:x, y, width, height];
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

- (CGRect)_keylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v7 = [(NTKFaceView *)self optionForCustomEditMode:mode slot:slotCopy];
  [(NTKFaceView *)self _keylineFrameForEditMode:mode option:v7 slot:slotCopy selectedSlot:slotCopy];
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

- (CGRect)_keylineFrameForCustomEditMode:(int64_t)mode option:(id)option slot:(id)slot selectedSlot:(id)selectedSlot
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

- (double)_faceEditingScaleForEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v7 = [(NTKFaceView *)self optionForCustomEditMode:mode slot:slotCopy];
  [(NTKFaceView *)self faceViewFrameForEditMode:mode option:v7 slot:slotCopy];
  v9 = v8;

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  [currentDevice screenBounds];
  v12 = v11;

  return v9 / v12;
}

- (CGRect)_keylineFrameFromRelativeFrame:(CGRect)frame forEditingMode:(int64_t)mode option:(id)option slot:(id)slot
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13 = MEMORY[0x277CBBAE8];
  slotCopy = slot;
  optionCopy = option;
  currentDevice = [v13 currentDevice];
  [currentDevice screenBounds];
  v18 = v17;

  [(NTKFaceView *)self faceViewFrameForEditMode:mode option:optionCopy slot:slotCopy];
  v20 = v19;

  device = [(NTKFaceView *)self device];
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
  device2 = [(NTKFaceView *)self device];
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
  delegate = [(NTKFaceView *)self delegate];
  faceViewComplicationSlots = [delegate faceViewComplicationSlots];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = faceViewComplicationSlots;
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
        display = [v10 display];
        canBecomeFirstResponder = [display canBecomeFirstResponder];

        if (canBecomeFirstResponder)
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
  delegate = [(NTKFaceView *)self delegate];
  faceViewComplicationSlots = [delegate faceViewComplicationSlots];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = faceViewComplicationSlots;
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
        display = [v10 display];
        if ([display canBecomeFirstResponder] && (objc_msgSend(display, "becomeFirstResponder") & 1) != 0)
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

- (void)setSelectedComplicationSlot:(id)slot
{
  slotCopy = slot;
  if (([slotCopy isEqual:self->_selectedComplicationSlot] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedComplicationSlot, slot);
    [(NTKFaceView *)self _updateSaturationForComplicationEditing];
    [(NTKFaceView *)self setNeedsLayout];
  }

  [(NTKFaceView *)self shiftSelectedComplicationSlotIfHidden];
}

- (id)closestVisibleSlotToSlot:(id)slot editMode:(int64_t)mode
{
  slotCopy = slot;
  v7 = slotCopy;
  if (mode == 1)
  {
    v8 = [(NTKFaceView *)self closestVisibleComplicationSlotToSlot:slotCopy];
  }

  else
  {
    v8 = slotCopy;
  }

  v9 = v8;

  return v9;
}

- (id)closestVisibleComplicationSlotToSlot:(id)slot
{
  slotCopy = slot;
  if (slotCopy && [(NTKFaceView *)self complicationIsHiddenAtSlot:slotCopy])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    faceViewComplicationSlots = [WeakRetained faceViewComplicationSlots];

    v7 = [faceViewComplicationSlots indexOfObject:slotCopy];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = (v8 + 1) % [faceViewComplicationSlots count];
    while (1)
    {
      if (v9 == v8)
      {
        v11 = 0;
        goto LABEL_12;
      }

      v10 = [faceViewComplicationSlots objectAtIndexedSubscript:v9];
      if (![(NTKFaceView *)self complicationIsHiddenAtSlot:v10])
      {
        break;
      }

      v9 = (v9 + 1) % [faceViewComplicationSlots count];
    }

    if (v9 == v8)
    {
      v11 = 0;
      slotCopy = v10;
    }

    else
    {
      slotCopy = v10;
      v11 = slotCopy;
    }

LABEL_12:
  }

  else
  {
    slotCopy = slotCopy;
    v11 = slotCopy;
  }

  return v11;
}

- (void)shiftSelectedComplicationSlotIfHidden
{
  selectedComplicationSlot = [(NTKFaceView *)self selectedComplicationSlot];
  if ([(NTKFaceView *)self complicationIsHiddenAtSlot:?])
  {
    v3 = [(NTKFaceView *)self closestVisibleComplicationSlotToSlot:selectedComplicationSlot];
    [(NTKFaceView *)self setSelectedComplicationSlot:v3];
  }
}

- (int64_t)complicationPickerStyleForSlot:(id)slot
{
  slotCopy = slot;
  if ([(CLKDevice *)self->_device deviceCategory]!= 1 && ([(NTKFaceView *)self layoutStyleForSlot:slotCopy]== 1 || [(NTKFaceView *)self layoutStyleForSlot:slotCopy]== 2))
  {
    v5 = 2;
  }

  else
  {
    v5 = [(NTKFaceView *)self _complicationPickerStyleForSlot:slotCopy];
  }

  return v5;
}

- (id)layoutRuleForComplicationSlot:(id)slot inState:(int64_t)state layoutOverride:(int64_t)override
{
  v7 = [(NSMutableDictionary *)self->_complicationLayouts objectForKey:slot];
  v8 = [v7 layoutRuleForComplicationState:state layoutOverride:override];

  return v8;
}

- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected
{
  selectedCopy = selected;
  v24 = 0u;
  v25 = 0u;
  slotCopy = slot;
  [(NTKFaceView *)self _getKeylineFrame:&v24 padding:0 forComplicationSlot:slotCopy selected:selectedCopy];
  v7 = [(NTKFaceView *)self _complicationContainerViewForSlot:slotCopy];
  [(NTKFaceView *)self convertRect:v7 fromCoordinateSpace:v24, v25];
  *&v24 = v8;
  *(&v24 + 1) = v9;
  *&v25 = v10;
  *(&v25 + 1) = v11;

  [(NTKFaceView *)self _keylineFrameFromRelativeFrame:1 forEditingMode:0 option:slotCopy slot:v24, v25];
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

- (void)applyBreathingFraction:(double)fraction forComplicationSlot:(id)slot
{
  slotCopy = slot;
  [(NTKFaceView *)self _minimumBreathingScaleForComplicationSlot:slotCopy];
  v8 = NTKScaleForBreathingFraction(fraction, v7);
  v9 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:slotCopy];
  if (v9)
  {
    memset(&v12, 0, sizeof(v12));
    [(NTKFaceView *)self _displayEditingTransformForComplicationSlot:slotCopy displayWrapper:v9];
    v10 = v12;
    CGAffineTransformScale(&v11, &v10, v8, v8);
    v12 = v11;
    [v9 setEditingTransform:&v11];
  }
}

- (void)setSwitcherSnapshotView:(id)view
{
  viewCopy = view;
  switcherSnapshotView = self->_switcherSnapshotView;
  v7 = viewCopy;
  if (switcherSnapshotView != viewCopy)
  {
    [(UIImageView *)switcherSnapshotView removeFromSuperview];
    objc_storeStrong(&self->_switcherSnapshotView, view);
    if (self->_switcherSnapshotView)
    {
      [(NTKFaceView *)self addSubview:?];
    }
  }
}

- (void)layoutContainerView:(id)view
{
  [(NTKFaceView *)self _layoutComplicationViews];
  [(NTKFaceView *)self _layoutForegroundContainerView];
  [(NTKFaceView *)self _bringForegroundViewsToFront];
  if (self->_sensitiveUIShieldView)
  {

    [(NTKFaceView *)self bringSubviewToFront:?];
  }
}

- (id)complicationLayoutforSlot:(id)slot
{
  slotCopy = slot;
  v5 = [(NSMutableDictionary *)self->_complicationLayouts objectForKey:slotCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(NTKComplicationLayout);
    [(NSMutableDictionary *)self->_complicationLayouts setObject:v5 forKey:slotCopy];
  }

  return v5;
}

- (void)enumerateComplicationDisplayWrappersWithBlock:(id)block
{
  blockCopy = block;
  complicationDisplayWrappers = self->_complicationDisplayWrappers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__NTKFaceView_enumerateComplicationDisplayWrappersWithBlock___block_invoke;
  v7[3] = &unk_278787668;
  v8 = blockCopy;
  v6 = blockCopy;
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

- (void)_applyEditConfigurationsWithForce:(BOOL)force
{
  objc_initWeak(&location, self);
  editConfigurations = self->_editConfigurations;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__NTKFaceView__applyEditConfigurationsWithForce___block_invoke;
  v6[3] = &unk_2787876B8;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  forceCopy = force;
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

- (void)enumerateQuadViewsWithBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
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

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group
{
  discardCopy = discard;
  v16 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  [(NTKFaceView *)self setNeedsRender];
  self->_needsImageQueueDiscardOnRender |= discardCopy;
  [(NTKFaceView *)self _renderSynchronouslyIfNeededInGroup:groupCopy];

  v7 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    v11 = @"NO";
    if (discardCopy)
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

- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group
{
  groupCopy = group;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__NTKFaceView__renderSynchronouslyWithImageQueueDiscard_inGroup___block_invoke;
  v8[3] = &unk_278780230;
  discardCopy = discard;
  v9 = groupCopy;
  v7 = groupCopy;
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

- (BOOL)_renderSynchronouslyIfNeededInGroup:(id)group
{
  groupCopy = group;
  if (self->_needsRender)
  {
    window = [(NTKFaceView *)self window];

    if (window)
    {
      [(NTKFaceView *)self _renderSynchronouslyWithImageQueueDiscard:self->_needsImageQueueDiscardOnRender inGroup:groupCopy];
      self->_needsImageQueueDiscardOnRender = 0;
      LOBYTE(window) = 1;
    }
  }

  else
  {
    LOBYTE(window) = 0;
  }

  self->_needsRender = 0;

  return window;
}

- (double)_verticalPaddingForStatusBar
{
  sizeClass = [(CLKDevice *)self->_device sizeClass];
  result = 2.0;
  if (!sizeClass)
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
  delegate = [(NTKFaceView *)self delegate];
  [delegate faceViewWantsUnadornedSnapshotViewRemoved];

  self->_zooming = 1;

  [(NTKFaceView *)self _prepareToZoom];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = _NTKLoggingObjectForDomain(40, "NTKLoggingDomainTritium");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSDate *)self->_overrideDate description];
    uTF8String = [v8 UTF8String];
    v10 = [(NSDate *)dateCopy description];
    v13 = 136315650;
    v14 = uTF8String;
    v15 = 2080;
    uTF8String2 = [v10 UTF8String];
    v17 = 1024;
    v18 = 1;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "setOverrideDate: %s -> %s, shouldApply: %{BOOL}d", &v13, 0x1Cu);
  }

  overrideDate = self->_overrideDate;
  self->_overrideDate = dateCopy;
  v12 = dateCopy;

  [(NTKTimeView *)self->_timeView setOverrideDate:v12 duration:duration];
  [(NTKExtraLargeTimeView *)self->_sensitiveUIShieldView setOverrideDate:v12 duration:duration];
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  slotCopy = slot;
  complicationCopy = complication;
  complicationFactory = [(NTKFaceView *)self complicationFactory];
  v11 = [complicationFactory newLegacyViewForComplication:complicationCopy family:family slot:slotCopy];

  return v11;
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  slotCopy = slot;
  complicationFactory = [(NTKFaceView *)self complicationFactory];
  if (complicationFactory && (v8 = complicationFactory, [(NTKFaceView *)self complicationFactory], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
  {
    complicationFactory2 = [(NTKFaceView *)self complicationFactory];
    v12 = [complicationFactory2 legacyLayoutOverrideforComplicationType:type slot:slotCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  slotCopy = slot;
  viewCopy = view;
  complicationFactory = [(NTKFaceView *)self complicationFactory];
  [complicationFactory configureComplicationView:viewCopy forSlot:slotCopy];
}

- (unint64_t)_layoutStyleForSlot:(id)slot
{
  slotCopy = slot;
  complicationFactory = [(NTKFaceView *)self complicationFactory];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    complicationFactory2 = [(NTKFaceView *)self complicationFactory];
    v8 = [complicationFactory2 layoutStyleForSlot:slotCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  slotCopy = slot;
  if (radius)
  {
    *radius = 0.0;
  }

  if (angle)
  {
    *angle = 0.0;
  }

  if (width)
  {
    *width = 0.0;
  }

  if (interior)
  {
    *interior = 0;
  }

  if (center)
  {
    *center = *MEMORY[0x277CBF348];
  }

  complicationFactory = [(NTKFaceView *)self complicationFactory];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    complicationFactory2 = [(NTKFaceView *)self complicationFactory];
    [complicationFactory2 curvedComplicationCircleRadius:radius centerAngle:angle maxAngularWidth:width circleCenter:center interior:interior forSlot:slotCopy];
  }
}

- (void)_loadLayoutRules
{
  complicationFactory = [(NTKFaceView *)self complicationFactory];
  [complicationFactory loadLayoutRules];
}

- (void)_bringForegroundViewsToFront
{
  if (self->_foregroundContainerView)
  {
    contentView = [(NTKFaceView *)self contentView];
    [contentView bringSubviewToFront:self->_foregroundContainerView];
  }
}

- (void)_applyFrozen
{
  timeView = [(NTKFaceView *)self timeView];
  [timeView setFrozen:{-[NTKFaceView isFrozen](self, "isFrozen")}];

  sensitiveUIShieldView = self->_sensitiveUIShieldView;
  isFrozen = [(NTKFaceView *)self isFrozen];

  [(NTKExtraLargeTimeView *)sensitiveUIShieldView setFrozen:isFrozen];
}

- (id)_accessPrewarmedData
{
  v2 = +[NTKFaceViewClassPrewarmCache sharedInstance];
  v3 = [v2 prewarmDataForClass:objc_opt_class()];

  return v3;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot
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

- (CGRect)_keylineFrameForCustomEditMode:(int64_t)mode option:(id)option slot:(id)slot
{
  [(NTKFaceView *)self _keylineFrameForCustomEditMode:mode option:option slot:slot selectedSlot:slot];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 1)
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
  delegate = [(NTKFaceView *)self delegate];
  faceViewEditOptionsThatHideEditModes = [delegate faceViewEditOptionsThatHideEditModes];

  return faceViewEditOptionsThatHideEditModes;
}

- (id)allVisibleComplicationsForCurrentConfiguration
{
  delegate = [(NTKFaceView *)self delegate];
  faceViewAllVisibleComplicationsForCurrentConfiguration = [delegate faceViewAllVisibleComplicationsForCurrentConfiguration];

  return faceViewAllVisibleComplicationsForCurrentConfiguration;
}

- (id)_editOptionThatHidesAllComplications
{
  delegate = [(NTKFaceView *)self delegate];
  faceViewEditOptionThatHidesAllComplications = [delegate faceViewEditOptionThatHidesAllComplications];

  return faceViewEditOptionThatHidesAllComplications;
}

- (id)_complicationSlotsHiddenByEditOption:(id)option
{
  optionCopy = option;
  _editOptionThatHidesAllComplications = [(NTKFaceView *)self _editOptionThatHidesAllComplications];
  v6 = [_editOptionThatHidesAllComplications isEqual:optionCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (v6)
  {
    [WeakRetained faceViewComplicationSlots];
  }

  else
  {
    [WeakRetained faceViewComplicationSlotsHiddenByEditOption:optionCopy];
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

- (void)setComplicationHidden:(BOOL)hidden atSlot:(id)slot
{
  hiddenCopy = hidden;
  slotCopy = slot;
  if ([(NTKFaceView *)self complicationIsHiddenAtSlot:?]!= hiddenCopy)
  {
    hiddenComplicationSlots = self->_hiddenComplicationSlots;
    if (hiddenCopy)
    {
      [(NSMutableSet *)hiddenComplicationSlots addObject:slotCopy];
    }

    else
    {
      [(NSMutableSet *)hiddenComplicationSlots removeObject:slotCopy];
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

- (void)_setComplicationAlphaForTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption customEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  v15 = [(NTKFaceView *)self _complicationSlotsHiddenByEditOption:optionCopy];
  v16 = [v15 containsObject:slotCopy];

  v17 = [(NTKFaceView *)self _complicationSlotsHiddenByEditOption:toOptionCopy];
  v18 = [v17 containsObject:slotCopy];

  if (v16 != v18)
  {
    if (!self->_editing)
    {
      fraction = 1.0;
    }

    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __98__NTKFaceView__setComplicationAlphaForTransitionFraction_fromOption_toOption_customEditMode_slot___block_invoke;
    v19[3] = &unk_278787730;
    objc_copyWeak(v22, &location);
    v20 = optionCopy;
    v22[1] = mode;
    v21 = toOptionCopy;
    v22[2] = *&fraction;
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
  _editModesDisabledByCurrentConfiguration = [(NTKFaceView *)self _editModesDisabledByCurrentConfiguration];
  v3 = [_editModesDisabledByCurrentConfiguration containsObject:&unk_284185D58];

  return v3;
}

- (id)_editModesNotDisabledByCurrentConfiguration
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  allKeys = [(NSMutableDictionary *)self->_editConfigurations allKeys];
  v5 = [v3 setWithArray:allKeys];

  _editModesDisabledByCurrentConfiguration = [(NTKFaceView *)self _editModesDisabledByCurrentConfiguration];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [_editModesDisabledByCurrentConfiguration countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_editModesDisabledByCurrentConfiguration);
        }

        [v5 removeObject:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [_editModesDisabledByCurrentConfiguration countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_editModesDisabledByCurrentConfiguration
{
  _editOptionsThatHideEditModes = [(NTKFaceView *)self _editOptionsThatHideEditModes];
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
  v5 = _editOptionsThatHideEditModes;
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

- (void)hideAppropriateComplicationsForCurrentConfigurationInEditMode:(int64_t)mode
{
  objc_initWeak(&location, self);
  _complicationSlotsHiddenByCurrentConfiguration = [(NTKFaceView *)self _complicationSlotsHiddenByCurrentConfiguration];
  v5 = [_complicationSlotsHiddenByCurrentConfiguration count];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  faceViewComplicationSlots = [WeakRetained faceViewComplicationSlots];
  self->_everyComplicationHidden = v5 == [faceViewComplicationSlots count];

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
  v9 = _complicationSlotsHiddenByCurrentConfiguration;
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

- (int64_t)_complicationPickerStyleForSlot:(id)slot
{
  slotCopy = slot;
  complicationFactory = [(NTKFaceView *)self complicationFactory];
  if (complicationFactory && (v6 = complicationFactory, [(NTKFaceView *)self complicationFactory], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    complicationFactory2 = [(NTKFaceView *)self complicationFactory];
    v10 = [complicationFactory2 complicationPickerStyleForSlot:slotCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  complicationFactory = [(NTKFaceView *)self complicationFactory];

  if (!complicationFactory || (-[NTKFaceView complicationFactory](self, "complicationFactory"), v6 = objc_claimAutoreleasedReturnValue(), [v6 keylineViewForComplicationSlot:slotCopy], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [(NTKFaceView *)self _defaultKeylineViewForComplicationSlot:slotCopy];
  }

  return v7;
}

- (id)_defaultKeylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([(NTKFaceView *)self _keylineStyleForComplicationSlot:slotCopy])
  {
    NTKFittedCircleKeylineView();
  }

  else
  {
    [(NTKFaceView *)self _keylineCornerRadiusForComplicationSlot:slotCopy];
    NTKKeylineViewWithContinuousCurveCornerRadius(v5);
  }
  v6 = ;

  return v6;
}

- (void)_finalizeForSnapshotting:(id)snapshotting
{
  v9 = *MEMORY[0x277D85DE8];
  snapshottingCopy = snapshotting;
  v4 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "NTKFaceView(%@) _finalizeForSnapshotting just immediatly call completion", &v7, 0xCu);
  }

  if (snapshottingCopy)
  {
    snapshottingCopy[2](snapshottingCopy);
  }
}

- (void)_performPrewarmRoutine:(id)routine
{
  if (routine)
  {
    (*(routine + 2))(routine);
  }
}

- (CGRect)_faceViewFrameForEditMode:(int64_t)mode option:(id)option slot:(id)slot
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

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  if (mode == 10)
  {
    v7 = [(NTKFaceView *)self _swatchImageForColorOption:option size:mode, options, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_swatchImageForColorOption:(id)option size:(CGSize)size
{
  height = size.height;
  width = size.width;
  optionCopy = option;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__54;
  v22 = __Block_byref_object_dispose__54;
  v23 = 0;
  if ([optionCopy conformsToProtocol:&unk_28A87B948])
  {
    faceColorPalette = [(NTKFaceView *)self faceColorPalette];

    if (faceColorPalette)
    {
      faceColorPalette2 = [(NTKFaceView *)self faceColorPalette];
      pigmentEditOption = [optionCopy pigmentEditOption];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __47__NTKFaceView__swatchImageForColorOption_size___block_invoke;
      v17[3] = &unk_2787877A8;
      v17[4] = &v18;
      *&v17[5] = width;
      *&v17[6] = height;
      [faceColorPalette2 executeWithOption:pigmentEditOption block:v17];
    }
  }

  v11 = v19[5];
  if (!v11)
  {
    v12 = [(NTKFaceView *)self _swatchColorForColorOption:optionCopy];
    v13 = [objc_opt_class() _swatchImageForColorOption:optionCopy forDevice:self->_device color:v12 size:{width, height}];
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

+ (id)_swatchImageForColorOption:(id)option forDevice:(id)device color:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  optionCopy = option;
  deviceCopy = device;
  colorCopy = color;
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
  [colorCopy getRed:&v35 green:&v34 blue:&v33 alpha:&v32];
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
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [optionCopy swatchStyle]);
      width = v24;
      height = v25;
    }

    v26 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{width, height}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__NTKFaceView__swatchImageForColorOption_forDevice_color_size___block_invoke;
    v28[3] = &unk_278780D88;
    v29 = colorCopy;
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

- (id)swatchPrimaryColorForColorOption:(id)option
{
  optionCopy = option;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__54;
  v16 = __Block_byref_object_dispose__54;
  v17 = 0;
  if ([optionCopy conformsToProtocol:&unk_28A87B948] && (-[NTKFaceView faceColorPalette](self, "faceColorPalette"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    faceColorPalette = [(NTKFaceView *)self faceColorPalette];
    pigmentEditOption = [optionCopy pigmentEditOption];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__NTKFaceView_swatchPrimaryColorForColorOption___block_invoke;
    v11[3] = &unk_2787877D0;
    v11[4] = &v12;
    [faceColorPalette executeWithOption:pigmentEditOption block:v11];
  }

  else
  {
    v8 = [(NTKFaceView *)self _swatchColorForColorOption:optionCopy];
    faceColorPalette = v13[5];
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

- (id)_swatchColorForColorOption:(id)option
{
  optionCopy = option;
  if ([optionCopy conformsToProtocol:&unk_28A87B948] && (-[NTKFaceView faceColorPalette](self, "faceColorPalette"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__54;
    v21 = __Block_byref_object_dispose__54;
    v22 = 0;
    faceColorPalette = [(NTKFaceView *)self faceColorPalette];
    pigmentEditOption = [optionCopy pigmentEditOption];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__NTKFaceView__swatchColorForColorOption___block_invoke;
    v16[3] = &unk_2787877D0;
    v16[4] = &v17;
    [faceColorPalette executeWithOption:pigmentEditOption block:v16];

    foregroundColor = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      device = self->_device;
      v10 = optionCopy;
      faceColorPalette2 = [(NTKFaceView *)self faceColorPalette];
      pigmentEditOption2 = [v10 pigmentEditOption];

      v13 = [faceColorPalette2 copyWithOption:pigmentEditOption2];
      v14 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:v13 units:1];

      foregroundColor = [v14 foregroundColor];
    }

    else
    {
      foregroundColor = [MEMORY[0x277D75348] whiteColor];
    }
  }

  return foregroundColor;
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

- (BOOL)complicationDisplayWrapperView:(id)view shouldStartCustomDataAnimationFromEarlierView:(id)earlierView laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type
{
  earlierViewCopy = earlierView;
  laterViewCopy = laterView;
  family = [view family];
  isKindOfClass = 1;
  if ((family - 10) >= 3 && family != 8)
  {
    if (family == 9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (void)complicationDisplayWrapperView:(id)view updateCustomDataAnimationFromEarlierView:(id)earlierView laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction
{
  forwardCopy = forward;
  earlierViewCopy = earlierView;
  laterViewCopy = laterView;
  family = [view family];
  if (family <= 10)
  {
    if (family == 8)
    {
      v18 = NTKRichComplicationCornerUtilities;
      goto LABEL_9;
    }

    if (family != 10)
    {
      goto LABEL_10;
    }

LABEL_7:
    v18 = objc_opt_class();
LABEL_9:
    *&v17 = fraction;
    [(__objc2_class *)v18 updateCustomDataAnimationFromEarlierView:earlierViewCopy laterView:laterViewCopy isForward:forwardCopy animationType:type animationDuration:duration animationFraction:v17];
    goto LABEL_10;
  }

  if (family == 11 || family == 12)
  {
    goto LABEL_7;
  }

LABEL_10:
}

- (BOOL)_useAlternateComplicationColorForGraphicCircularComplicationInView:(id)view
{
  viewCopy = view;
  _legacyShouldSwapGraphicCircularComplicationColors = [(NTKFaceView *)self _legacyShouldSwapGraphicCircularComplicationColors];
  if (!viewCopy || !_legacyShouldSwapGraphicCircularComplicationColors)
  {
    goto LABEL_11;
  }

  while (![viewCopy isMemberOfClass:objc_opt_class()])
  {
    superview = [viewCopy superview];

    viewCopy = superview;
    if (!superview)
    {
      goto LABEL_11;
    }
  }

  viewCopy = viewCopy;
  family = [viewCopy family];
  v8 = family;
  if (family == 12 || family == 10)
  {
    complicationSlotIdentifier = [viewCopy complicationSlotIdentifier];
    LOBYTE(superview) = [(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplicationInSlot:complicationSlotIdentifier];
  }

  if (v8 != 10 && v8 != 12)
  {
LABEL_11:
    LOBYTE(superview) = 0;
  }

  return superview & 1;
}

- (BOOL)_useAlternateComplicationColorForGraphicCircularComplicationInSlot:(id)slot
{
  slotCopy = slot;
  delegate = [(NTKFaceView *)self delegate];
  v6 = [delegate faceViewComplicationForSlot:slotCopy];

  LOBYTE(self) = [(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplication:v6];
  return self;
}

- (BOOL)_useAlternateComplicationColorForGraphicCircularComplication:(id)complication
{
  complicationCopy = complication;
  complicationType = [complicationCopy complicationType];
  v5 = 0;
  if (complicationType > 37)
  {
    if (complicationType != 38)
    {
      if (complicationType != 48)
      {
        goto LABEL_10;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      complication = [complicationCopy complication];
      bundleIdentifier = [complication bundleIdentifier];

      LOBYTE(complication) = [&unk_28418B890 containsObject:bundleIdentifier];
      if ((complication & 1) == 0)
      {
        goto LABEL_10;
      }

      v5 = 0;
    }
  }

  else if (complicationType != 1 && complicationType != 5)
  {
LABEL_10:
    v5 = 1;
  }

  return v5;
}

- (void)_setTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  self->_editModeTransitionFraction = fraction;
  self->_fromEditMode = mode;
  self->_toEditMode = editMode;
  [(NTKFaceView *)self _updateComplicationMaxSize];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__NTKFaceView__setTransitionFraction_fromEditMode_toEditMode___block_invoke;
  v9[3] = &unk_2787877F8;
  v9[4] = self;
  v9[5] = mode;
  v9[6] = editMode;
  *&v9[7] = fraction;
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

- (double)_alphaForComplicationSlot:(id)slot inEditOption:(id)option ofEditMode:(int64_t)mode
{
  slotCopy = slot;
  v9 = [(NTKFaceView *)self _complicationSlotsHiddenByEditOption:option];
  v10 = [v9 containsObject:slotCopy];

  v11 = 0.0;
  if ((v10 & 1) == 0)
  {
    if ([(NTKFaceView *)self _fadesComplicationSlot:slotCopy inEditMode:mode])
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

- (CGRect)_frameForComplicationDisplayWrapper:(id)wrapper inSlot:(id)slot
{
  slotCopy = slot;
  wrapperCopy = wrapper;
  [wrapperCopy preferredSize];
  v9 = v8;
  v11 = v10;
  layoutOverride = [wrapperCopy layoutOverride];

  if (self->_editing)
  {
    v13 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:slotCopy withOverride:layoutOverride inEditMode:self->_fromEditMode];
    v14 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:slotCopy withOverride:layoutOverride inEditMode:self->_toEditMode];
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
    v13 = [(NTKFaceView *)self layoutRuleForComplicationSlot:slotCopy inState:0 layoutOverride:layoutOverride];
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

- (CGAffineTransform)_displayEditingTransformForComplicationSlot:(SEL)slot displayWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9 = MEMORY[0x277CBF2C0];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v10;
  *&retstr->tx = *(v9 + 32);
  layoutOverride = [a5 layoutOverride];
  if (self->_editing)
  {
    v12 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:wrapperCopy withOverride:layoutOverride inEditMode:self->_fromEditMode];
    v13 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:wrapperCopy withOverride:layoutOverride inEditMode:self->_toEditMode];
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

  v14 = [(NTKFaceView *)self layoutRuleForComplicationSlot:wrapperCopy inState:0 layoutOverride:layoutOverride];
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

- (CGAffineTransform)_displayContentTransformForComplicationSlot:(SEL)slot displayWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9 = MEMORY[0x277CBF2C0];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v10;
  *&retstr->tx = *(v9 + 32);
  layoutOverride = [a5 layoutOverride];
  if (self->_editing)
  {
    v12 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:wrapperCopy withOverride:layoutOverride inEditMode:self->_fromEditMode];
    v13 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:wrapperCopy withOverride:layoutOverride inEditMode:self->_toEditMode];
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

  v14 = [(NTKFaceView *)self layoutRuleForComplicationSlot:wrapperCopy inState:0 layoutOverride:layoutOverride];
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

- (void)_updateMaxSizeForDisplayWrapper:(id)wrapper slot:(id)slot
{
  slotCopy = slot;
  wrapperCopy = wrapper;
  -[NTKFaceView _maxSizeForComplicationSlot:layoutOverride:](self, "_maxSizeForComplicationSlot:layoutOverride:", slotCopy, [wrapperCopy layoutOverride]);
  v8 = v7;
  v10 = v9;

  [wrapperCopy setMaxSize:{v8, v10}];
}

- (CGSize)_maxSizeForComplicationSlot:(id)slot layoutOverride:(int64_t)override
{
  if (self->_editing)
  {
    fromEditMode = self->_fromEditMode;
    slotCopy = slot;
    v8 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:slotCopy withOverride:override inEditMode:fromEditMode];
    v9 = [(NTKFaceView *)self _layoutRuleForComplicationSlot:slotCopy withOverride:override inEditMode:self->_toEditMode];

    LOBYTE(slotCopy) = [v8 isEqual:v9];
    [v8 maximumSize];
    v11 = v10;
    v13 = v12;
    if ((slotCopy & 1) == 0)
    {
      [v9 maximumSize];
      CLKInterpolateBetweenSizes();
      v11 = v14;
      v13 = v15;
    }
  }

  else
  {
    slotCopy2 = slot;
    v8 = [(NTKFaceView *)self layoutRuleForComplicationSlot:slotCopy2 inState:0 layoutOverride:override];

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

- (void)_getKeylineFrame:(CGRect *)frame padding:(UIEdgeInsets *)padding forComplicationSlot:(id)slot selected:(BOOL)selected
{
  selectedCopy = selected;
  slotCopy = slot;
  v38 = slotCopy;
  if (selectedCopy)
  {
    v11 = [(NSMutableDictionary *)self->_complicationLayouts objectForKey:slotCopy];
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
    v12 = [(NSMutableDictionary *)self->_complicationDisplayWrappers objectForKey:slotCopy];
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

  if (frame)
  {
    frame->origin.x = v14 - v24;
    frame->origin.y = v16 - v22;
    frame->size.width = v18 - (-v28 - v24);
    frame->size.height = v20 - (-v26 - v22);
  }

  if (padding)
  {
    padding->top = v22;
    padding->left = v24;
    padding->bottom = v26;
    padding->right = v28;
  }
}

- (id)_layoutRuleForComplicationSlot:(id)slot withOverride:(int64_t)override inEditMode:(int64_t)mode
{
  slotCopy = slot;
  v9 = slotCopy;
  if (mode)
  {
    if (mode == 1)
    {
      if ([slotCopy isEqual:self->_selectedComplicationSlot])
      {
        mode = 3;
      }

      else
      {
        mode = 2;
      }
    }

    else
    {
      mode = 1;
    }
  }

  v10 = [(NTKFaceView *)self layoutRuleForComplicationSlot:v9 inState:mode layoutOverride:override];

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

- (void)_layoutComplicationViewForSlot:(id)slot
{
  slotCopy = slot;
  v5 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:slotCopy];
  [(NTKFaceView *)self _layoutComplicationViewWithWrapper:v5 forSlot:slotCopy];
}

- (void)_layoutComplicationViewWithWrapper:(id)wrapper forSlot:(id)slot
{
  wrapperCopy = wrapper;
  slotCopy = slot;
  [(NTKFaceView *)self _frameForComplicationDisplayWrapper:wrapperCopy inSlot:slotCopy];
  [wrapperCopy ntk_setBoundsAndPositionFromFrame:?];
  if (self->_editing)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    [(NTKFaceView *)self _displayEditingTransformForComplicationSlot:slotCopy displayWrapper:wrapperCopy];
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

  [wrapperCopy setEditingTransform:{v8, v11, v12, v13, v14, v15, v16}];
  [(NTKFaceView *)self _displayContentTransformForComplicationSlot:slotCopy displayWrapper:wrapperCopy];
  [wrapperCopy setContentTransform:&v14];
  v10 = [(NTKFaceView *)self _complicationContainerViewForSlot:slotCopy];
  [v10 bringSubviewToFront:wrapperCopy];
}

- (void)startScrubbingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  date = [MEMORY[0x277CBEAA8] date];
  analyticsTimeTravelSessionStart = self->_analyticsTimeTravelSessionStart;
  self->_analyticsTimeTravelSessionStart = date;

  [(NTKFaceView *)self startScrubbingAnimated:animatedCopy withCompletion:0];
}

- (void)startScrubbingAnimated:(BOOL)animated withCompletion:(id)completion
{
  completionCopy = completion;
  if ([(NTKFaceView *)self _supportsTimeScrubbing]&& !self->_timeScrubbing)
  {
    self->_transitioningBetweenLiveAndScrubbing = 1;
    self->_wasScrubbingAtStartOfTransition = 0;
    delegate = [(NTKFaceView *)self delegate];
    [delegate faceViewWillEnterTimeTravel];

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__NTKFaceView_startScrubbingAnimated_withCompletion___block_invoke;
    v7[3] = &unk_278781070;
    objc_copyWeak(&v9, &location);
    v8 = completionCopy;
    [(NTKFaceView *)self _startScrubbingAnimated:1 withCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)_startScrubbingAnimated:(BOOL)animated withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)endScrubbingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v16[3] = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_analyticsTimeTravelSessionStart];
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
  [(NTKFaceView *)self endScrubbingAnimated:animatedCopy withCompletion:0];
}

- (void)endScrubbingAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_transitioningBetweenLiveAndScrubbing)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
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
    delegate = [(NTKFaceView *)self delegate];
    [delegate faceViewWillExitTimeTravel];

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__NTKFaceView_endScrubbingAnimated_withCompletion___block_invoke;
    v11[3] = &unk_278781070;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    [(NTKFaceView *)self _endScrubbingAnimated:animatedCopy withCompletion:v11];
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

- (void)_endScrubbingAnimated:(BOOL)animated withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
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
      selfCopy2 = self;
      _os_log_impl(&dword_22D9C5000, p_super, OS_LOG_TYPE_DEFAULT, "[CROWN] Face %@ taking crown assertion", &v7, 0xCu);
    }

    v6 = [(NTKCrownAssertionHandler *)self->_crownHandler takeCrownAssertionForToken:self->_crownAssertionToken];
    p_super = &self->_crownAssertionToken->super;
    self->_crownAssertionToken = v6;
  }

  else if (v5)
  {
    v7 = 138412290;
    selfCopy2 = self;
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
      selfCopy = self;
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
    array = [MEMORY[0x277CBEB18] array];
    timeView = [(NTKFaceView *)self timeView];

    if (timeView)
    {
      timeView2 = [(NTKFaceView *)self timeView];
      [array addObject:timeView2];
    }

    complicationDisplayWrappers = self->_complicationDisplayWrappers;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__NTKFaceView__allViewsWithComplicationEditingDesaturationFilter__block_invoke;
    v11[3] = &unk_278786F38;
    v7 = array;
    v12 = v7;
    [(NSMutableDictionary *)complicationDisplayWrappers enumerateKeysAndObjectsUsingBlock:v11];
    _additonalViewsToApplyDesaturationDuringComplicationEditing = [(NTKFaceView *)self _additonalViewsToApplyDesaturationDuringComplicationEditing];
    if (_additonalViewsToApplyDesaturationDuringComplicationEditing)
    {
      [v7 addObjectsFromArray:_additonalViewsToApplyDesaturationDuringComplicationEditing];
    }

    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (void)_addSaturationFilterToViews:(id)views
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = views;
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
        layer = [v6 layer];
        filters = [layer filters];

        v9 = [filters countByEnumeratingWithState:&v23 objects:v32 count:16];
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
              objc_enumerationMutation(filters);
            }

            name = [*(*(&v23 + 1) + 8 * v12) name];
            v14 = [name isEqualToString:@"EditingSaturationFilter"];

            if (v14)
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [filters countByEnumeratingWithState:&v23 objects:v32 count:16];
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

          layer2 = [v6 layer];
          filters2 = [layer2 filters];

          if (filters2)
          {
            layer3 = [v6 layer];
            filters3 = [layer3 filters];
            filters = [filters3 mutableCopy];

            [filters addObject:self->_complicationEditingSaturationFilter];
          }

          else
          {
            complicationEditingSaturationFilter = self->_complicationEditingSaturationFilter;
            filters = [MEMORY[0x277CBEA60] arrayWithObjects:&complicationEditingSaturationFilter count:1];
          }

          layer4 = [v6 layer];
          [layer4 setFilters:filters];
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
  _allViewsWithComplicationEditingDesaturationFilter = [(NTKFaceView *)self _allViewsWithComplicationEditingDesaturationFilter];
  [(NTKFaceView *)self _addSaturationFilterToViews:_allViewsWithComplicationEditingDesaturationFilter];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"filters.%@.inputAmount", @"EditingSaturationFilter"];
  selectedComplicationSlot = [(NTKFaceView *)self selectedComplicationSlot];
  v17 = selectedComplicationSlot;
  if (selectedComplicationSlot)
  {
    v6 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:selectedComplicationSlot];
  }

  else
  {
    v6 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = _allViewsWithComplicationEditingDesaturationFilter;
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
        layer = [v12 layer];
        v15 = layer;
        if (v12 == v6)
        {
          [layer setValue:&unk_284189908 forKeyPath:v4];
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

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  viewCopy = view;
  device = [(NTKFaceView *)self device];
  v8 = NTKShowGossamerUI(device);

  if ((v8 & 1) == 0)
  {
    if ([(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplicationInView:viewCopy])
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

- (id)filtersForView:(id)view style:(int64_t)style
{
  viewCopy = view;
  device = [(NTKFaceView *)self device];
  v7 = NTKShowGossamerUI(device);

  if ((v7 & 1) == 0)
  {
    if ([(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplicationInView:viewCopy])
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

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  [(NTKFaceView *)self alternateComplicationColor];
  objc_claimAutoreleasedReturnValue();
  [(NTKFaceView *)self complicationColor];
  objc_claimAutoreleasedReturnValue();
  NTKMonochromeFilterForStyle();
}

- (id)filterForView:(id)view style:(int64_t)style
{
  [(NTKFaceView *)self alternateComplicationColor];
  objc_claimAutoreleasedReturnValue();
  [(NTKFaceView *)self interpolatedComplicationColor];
  objc_claimAutoreleasedReturnValue();
  NTKMonochromeFilterForStyle();
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  accentedCopy = accented;
  viewCopy = view;
  device = [(NTKFaceView *)self device];
  v8 = NTKShowGossamerUI(device);

  if ((v8 & 1) != 0 || ![(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplicationInView:viewCopy])
  {
    if (accentedCopy)
    {
      goto LABEL_4;
    }
  }

  else if (!accentedCopy)
  {
LABEL_4:
    complicationColor = [(NTKFaceView *)self complicationColor];
    goto LABEL_7;
  }

  complicationColor = [(NTKFaceView *)self alternateComplicationColor];
LABEL_7:
  v10 = complicationColor;

  return v10;
}

- (id)interpolatedColorForView:(id)view
{
  viewCopy = view;
  device = [(NTKFaceView *)self device];
  v6 = NTKShowGossamerUI(device);

  if ((v6 & 1) != 0 || ![(NTKFaceView *)self _useAlternateComplicationColorForGraphicCircularComplicationInView:viewCopy])
  {
    interpolatedComplicationColor = [(NTKFaceView *)self interpolatedComplicationColor];
  }

  else
  {
    interpolatedComplicationColor = [(NTKFaceView *)self alternateComplicationColor];
  }

  v8 = interpolatedComplicationColor;

  return v8;
}

- (void)changeComplicationsAlpha:(double)alpha
{
  complicationContainerView = [(NTKFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:alpha];
}

- (id)createFaceColorPalette
{
  delegate = [(NTKFaceView *)self delegate];
  faceViewWantsFaceColorPalette = [delegate faceViewWantsFaceColorPalette];

  return faceViewWantsFaceColorPalette;
}

+ (id)pigmentFromOption:(id)option
{
  optionCopy = option;
  if ([optionCopy conformsToProtocol:&unk_28A87B948])
  {
    pigmentEditOption = [optionCopy pigmentEditOption];
  }

  else
  {
    pigmentEditOption = 0;
  }

  return pigmentEditOption;
}

- (void)_updateFaceColorPaletteWithOption:(id)option mode:(int64_t)mode
{
  optionCopy = option;
  faceColorPalette = [(NTKFaceView *)self faceColorPalette];

  if (mode == 10 && faceColorPalette)
  {
    v7 = [objc_opt_class() pigmentFromOption:optionCopy];
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
    createFaceColorPalette = [(NTKFaceView *)self createFaceColorPalette];
    v5 = self->_faceColorPalette;
    self->_faceColorPalette = createFaceColorPalette;

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
    faceColorPalette = [(NTKFaceView *)self faceColorPalette];

    if (faceColorPalette)
    {
      v4 = [NTKInterpolatedColorPalette alloc];
      faceColorPalette2 = [(NTKFaceView *)self faceColorPalette];
      v6 = [(NTKInterpolatedColorPalette *)v4 initWithColorPalette:faceColorPalette2];
      interpolatedColorPalette = self->_interpolatedColorPalette;
      self->_interpolatedColorPalette = v6;
    }
  }

  v8 = self->_interpolatedColorPalette;

  return v8;
}

- (void)ensureWidgetContentWithMetrics:(id)metrics timeout:(double)timeout completion:(id)completion
{
  metricsCopy = metrics;
  completionCopy = completion;
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
  v11 = metricsCopy;
  v19 = v11;
  v12 = v10;
  timeoutCopy = timeout;
  v20 = v12;
  v21 = v23;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__NTKFaceView_ensureWidgetContentWithMetrics_timeout_completion___block_invoke_180;
  v15[3] = &unk_27877FD78;
  v16 = completionCopy;
  v17 = v23;
  v13 = completionCopy;
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

- (void)setWidgetHostPriorityTransientSnapshot:(BOOL)snapshot
{
  if (self->_widgetHostPriorityTransientSnapshot != snapshot)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_widgetHostPriorityTransientSnapshot = snapshot;
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
  dataMode = [self dataMode];
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