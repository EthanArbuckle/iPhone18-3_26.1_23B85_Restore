@interface PXZoomablePhotosLayout
+ (id)visualizeBestAnchorColumnsForLayouts:(id)layouts imageWidth:(double)width;
+ (void)getBestAnchorColumns:(int64_t *)columns forItemLayouts:(id)layouts startingAtBaseLayout:(id)layout anchorItem:(int64_t)item normalizedScaleCenterInAnchor:(CGPoint)anchor biasTowardsCenter:(BOOL)center;
- ($8F6F21C65DCD0A0F8AC24DFE540A6236)_spriteTransformForLayout:(SEL)layout;
- (BOOL)_getMiniModeInfo:(id *)info forLayout:(id)layout;
- (BOOL)_hasLastRowFilledStrategy;
- (BOOL)_isAllowedToShiftItem:(int64_t)item inLayout:(id)layout;
- (BOOL)_layoutAllowsCaptionsInSquare:(id)square;
- (BOOL)_layoutHasIndividualItems:(id)items;
- (BOOL)_layoutIsAspectFit:(id)fit;
- (BOOL)_layoutIsQuiteTransparent:(id)transparent;
- (BOOL)_layoutWantsSingleDateTitle;
- (BOOL)_performVisualShiftWithLayout:(id)layout movingItem:(int64_t)item toColumn:(int64_t)column;
- (BOOL)_wantsDecorationForNumberOfColumns:(int64_t)columns;
- (BOOL)_wantsMiniDecorationForNumberOfColumns:(int64_t)columns;
- (BOOL)fillSafeAreaBottomInset;
- (BOOL)isAnimating;
- (BOOL)useLowMemoryDecodeInLayout:(id)layout;
- (BOOL)zoomablePhotosViewModelIsResetToInitialState:(id)state;
- (CGPoint)normalizedScaleCenterInAnchorSprite;
- (CGPoint)scaleCenterTargetInViewport;
- (CGRect)boundsForLevel:(unint64_t)level;
- (CGRect)frameForItemAtIndexPath:(PXSimpleIndexPath *)path level:(unint64_t)level;
- (CGRect)itemsLayout:(id)layout bestCropRectForItem:(int64_t)item withAspectRatio:(double)ratio;
- (CGSize)_scaleForLayout:(id)layout;
- (CGSize)itemsLayout:(id)layout insetForItem:(int64_t)item;
- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)style;
- (PXGBurstStackEffect)burstStackEffect;
- (PXSimpleIndexPath)sectionIndexPath;
- (PXZoomablePhotosContentLayout)primaryItemsLayout;
- (PXZoomablePhotosLayout)init;
- (PXZoomablePhotosLayout)initWithViewModel:(id)model;
- (UIEdgeInsets)effectiveOverlayInsets;
- (UIEdgeInsets)inlineHeaderOverlayInsets;
- (UIEdgeInsets)overlayInsets;
- (_NSRange)_rangeOfItemsForContentInRect:(CGRect)rect;
- (double)_interItemSpacingForLayout:(id)layout;
- (double)_itemCaptionSpacingForLayout:(id)layout;
- (double)itemsLayout:(id)layout aspectRatioForItem:(int64_t)item;
- (id)_createLayoutWithNumberOfColumns:(int64_t)columns;
- (id)_debugColors;
- (id)_displayAssetForItem:(int64_t)item;
- (id)_displayFaceForItem:(int64_t)item;
- (id)axSpriteIndexes;
- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)customPixelBufferSourcesProviderForDisplayAssetsInLayout:(id)layout;
- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type;
- (id)debugQuickLookObject;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)itemsGeometry;
- (id)itemsLayout:(id)layout objectReferenceForItem:(int64_t)item;
- (id)locationNamesFutureForContentInRect:(CGRect)rect;
- (id)objectReferenceForSpriteIndex:(unsigned int)index;
- (id)presentedItemsGeometryForDataSource:(id)source;
- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (int64_t)_estimatedItemsPerScreenForLayout:(id)layout;
- (int64_t)itemsLayout:(id)layout itemForObjectReference:(id)reference options:(unint64_t)options;
- (unint64_t)behaviorForCaptureSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (unint64_t)contentChangeTrend;
- (unint64_t)desiredPlaceholderStyleInLayout:(id)layout;
- (unint64_t)supportedDisplayAssetPresentationStylesInLayout:(id)layout;
- (unsigned)itemsLayout:(id)layout effectIdForItem:(int64_t)item;
- (void)_callAddContentActionHandler;
- (void)_configureLayout:(id)layout;
- (void)_configureMiniModeSpriteModifierForLayout:(id)layout;
- (void)_ensureZoomingAnchor;
- (void)_modifyMiniModeSpritesForLayout:(id)layout spriteIndexRange:(_PXGSpriteIndexRange)range sprites:(id *)sprites;
- (void)_performAnchorAlignmentVisualShiftWithBaseLayout:(id)layout;
- (void)_updateBackgroundSprites;
- (void)_updateBlurEffect;
- (void)_updateDataSource;
- (void)_updateDebugVisualizationSprites;
- (void)_updateDecorationSource;
- (void)_updateDecorationVisibility;
- (void)_updateEffectProvider;
- (void)_updateEffectiveOverlayInsets;
- (void)_updateFloatingHeaderStyle;
- (void)_updateLayers;
- (void)_updateMiniMode;
- (void)_updatePinchEffect;
- (void)_updatePrefetching;
- (void)_updateSurroundingScrollableContent;
- (void)_updateVisualShifting;
- (void)_updateZoom;
- (void)_updateZoomTransforms;
- (void)addDecorationsToAllLayers:(id)layers;
- (void)appearStateDidChange;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)containingScrollViewDidScroll:(CGPoint)scroll;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)entityManagerDidChange;
- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)block;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)block;
- (void)getLastItem:(int64_t *)item lastColumn:(int64_t *)column forBodyLayout:(id)layout;
- (void)invalidateItemsLayout;
- (void)itemsLayout:(id)layout updateTagsInSpriteInfos:(id *)infos forItemsInRange:(_NSRange)range;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceSizeDidChange;
- (void)scrollSpeedRegimeDidChange;
- (void)setAddContentHandler:(id)handler;
- (void)setAnchorAssetReference:(id)reference;
- (void)setEffectProvider:(id)provider;
- (void)setEffectiveOverlayInsets:(UIEdgeInsets)insets;
- (void)setEnableAddContentAccessoryItem:(BOOL)item;
- (void)setInlineHeaderOverlayInsets:(UIEdgeInsets)insets;
- (void)setOverlayInsets:(UIEdgeInsets)insets;
- (void)setPreventFillingTopAreaInsets:(BOOL)insets;
- (void)setSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setSpec:(id)spec;
- (void)setWantsOverBackgroundFloatingHeaderAppearance:(BOOL)appearance;
- (void)update;
- (void)visibleRectDidChange;
- (void)willUpdate;
- (void)zoomablePhotosViewModelResetToInitialState:(id)state;
@end

@implementation PXZoomablePhotosLayout

- (void)entityManagerDidChange
{
  v4.receiver = self;
  v4.super_class = PXZoomablePhotosLayout;
  [(PXZoomablePhotosLayout *)&v4 entityManagerDidChange];
  PXZoomablePhotosInvalidate(self, 917504);
  entityManager = [(PXZoomablePhotosLayout *)self entityManager];

  if (entityManager)
  {
    PXZoomablePhotosInvalidate(self, 2);
  }
}

- (BOOL)_layoutWantsSingleDateTitle
{
  primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
  numberOfColumns = [primaryItemsLayout numberOfColumns];
  v4 = +[PXZoomablePhotosSettings sharedInstance];
  LOBYTE(numberOfColumns) = numberOfColumns <= [v4 maxColumnsForSingleDate];

  return numberOfColumns;
}

- (PXZoomablePhotosContentLayout)primaryItemsLayout
{
  primaryLayer = [(PXGZoomLayout *)self->_zoomLayout primaryLayer];
  itemsLayout = [primaryLayer itemsLayout];

  return itemsLayout;
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXZoomablePhotosLayout;
  [(PXGSplitLayout *)&v3 referenceSizeDidChange];
  if ([(PXZoomablePhotosLayout *)self _hasLastRowFilledStrategy])
  {
    [(PXZoomablePhotosLayout *)self _invalidateVisualShiftingEnsuringLastRowFilled];
  }
}

- (BOOL)_hasLastRowFilledStrategy
{
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  contentShiftStrategy = [viewModel contentShiftStrategy];

  return (contentShiftStrategy - 1) < 2;
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXZoomablePhotosLayout;
  [(PXGSplitLayout *)&v3 displayScaleDidChange];
  PXZoomablePhotosInvalidate(self, 16);
}

- (void)visibleRectDidChange
{
  v5.receiver = self;
  v5.super_class = PXZoomablePhotosLayout;
  [(PXGSplitLayout *)&v5 visibleRectDidChange];
  if (!self->_isPerformingUpdate)
  {
    PXZoomablePhotosInvalidate(self, 4129056);
  }

  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  inlinePlaybackController = [viewModel inlinePlaybackController];
  [inlinePlaybackController visibleRectDidChange];
}

- (void)willUpdate
{
  v7.receiver = self;
  v7.super_class = PXZoomablePhotosLayout;
  [(PXGSplitLayout *)&v7 willUpdate];
  self->_preUpdateFlags.willPerformUpdate = 1;
  if (self->_preUpdateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXZoomablePhotosLayout.m" lineNumber:1097 description:{@"Invalid parameter not satisfying: %@", @"!_preUpdateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout willUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXZoomablePhotosLayout.m" lineNumber:1098 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (void)update
{
  v77 = *MEMORY[0x277D85DE8];
  self->_isPerformingUpdate = 1;
  p_preUpdateFlags = &self->_preUpdateFlags;
  self->_preUpdateFlags.willPerformUpdate = 0;
  needsUpdate = self->_preUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_preUpdateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler handleFailureInFunction:v35 file:@"PXZoomablePhotosLayout.m" lineNumber:1105 description:{@"Invalid parameter not satisfying: %@", @"!_preUpdateFlags.isPerformingUpdate"}];

      needsUpdate = p_preUpdateFlags->needsUpdate;
    }

    p_preUpdateFlags->isPerformingUpdate = 1;
    p_preUpdateFlags->updated = 1;
    if (needsUpdate)
    {
      p_preUpdateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      viewModel = [(PXZoomablePhotosLayout *)self viewModel];
      specManager = [viewModel specManager];
      spec = [specManager spec];
      [(PXZoomablePhotosLayout *)self setSpec:spec];

      if (!p_preUpdateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
        [currentHandler2 handleFailureInFunction:v37 file:@"PXZoomablePhotosLayout.m" lineNumber:1111 description:{@"Invalid parameter not satisfying: %@", @"_preUpdateFlags.isPerformingUpdate"}];
      }
    }

    v8 = p_preUpdateFlags->needsUpdate;
    p_preUpdateFlags->updated |= 2uLL;
    if ((v8 & 2) != 0)
    {
      p_preUpdateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXZoomablePhotosLayout *)self _updateEffectProvider];
    }

    if (!p_preUpdateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler3 handleFailureInFunction:v39 file:@"PXZoomablePhotosLayout.m" lineNumber:1115 description:{@"Invalid parameter not satisfying: %@", @"_preUpdateFlags.isPerformingUpdate"}];
    }

    v9 = p_preUpdateFlags->needsUpdate;
    p_preUpdateFlags->updated |= 4uLL;
    if ((v9 & 4) != 0)
    {
      p_preUpdateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXZoomablePhotosLayout *)self _updateEffectiveOverlayInsets];
    }

    if (!p_preUpdateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler4 handleFailureInFunction:v41 file:@"PXZoomablePhotosLayout.m" lineNumber:1119 description:{@"Invalid parameter not satisfying: %@", @"_preUpdateFlags.isPerformingUpdate"}];
    }

    v10 = p_preUpdateFlags->needsUpdate;
    p_preUpdateFlags->updated |= 8uLL;
    if ((v10 & 8) != 0)
    {
      p_preUpdateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFF7;
      [(PXZoomablePhotosLayout *)self _updateLayers];
    }

    if (!p_preUpdateFlags->isPerformingUpdate)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler5 handleFailureInFunction:v43 file:@"PXZoomablePhotosLayout.m" lineNumber:1123 description:{@"Invalid parameter not satisfying: %@", @"_preUpdateFlags.isPerformingUpdate"}];
    }

    v11 = p_preUpdateFlags->needsUpdate;
    p_preUpdateFlags->updated |= 0x10uLL;
    if ((v11 & 0x10) != 0)
    {
      p_preUpdateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXZoomablePhotosLayout *)self _updateZoom];
    }

    if (!p_preUpdateFlags->isPerformingUpdate)
    {
      currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler6 handleFailureInFunction:v45 file:@"PXZoomablePhotosLayout.m" lineNumber:1127 description:{@"Invalid parameter not satisfying: %@", @"_preUpdateFlags.isPerformingUpdate"}];
    }

    v12 = p_preUpdateFlags->needsUpdate;
    p_preUpdateFlags->updated |= 0x20uLL;
    if ((v12 & 0x20) != 0)
    {
      p_preUpdateFlags->needsUpdate = v12 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXZoomablePhotosLayout *)self _updateMiniMode];
    }

    if (!p_preUpdateFlags->isPerformingUpdate)
    {
      currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler7 handleFailureInFunction:v47 file:@"PXZoomablePhotosLayout.m" lineNumber:1131 description:{@"Invalid parameter not satisfying: %@", @"_preUpdateFlags.isPerformingUpdate"}];
    }

    v13 = p_preUpdateFlags->needsUpdate;
    p_preUpdateFlags->updated |= 0x40uLL;
    if ((v13 & 0x40) != 0)
    {
      p_preUpdateFlags->needsUpdate = v13 & 0xFFFFFFFFFFFFFFBFLL;
      [(PXZoomablePhotosLayout *)self _updateDecorationVisibility];
    }

    if (!p_preUpdateFlags->isPerformingUpdate)
    {
      currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
      v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler8 handleFailureInFunction:v49 file:@"PXZoomablePhotosLayout.m" lineNumber:1135 description:{@"Invalid parameter not satisfying: %@", @"_preUpdateFlags.isPerformingUpdate"}];
    }

    v14 = p_preUpdateFlags->needsUpdate;
    p_preUpdateFlags->updated |= 0x80uLL;
    if ((v14 & 0x80) != 0)
    {
      p_preUpdateFlags->needsUpdate = v14 & 0xFFFFFFFFFFFFFF7FLL;
      [(PXZoomablePhotosLayout *)self _updateDataSource];
    }

    if (!p_preUpdateFlags->isPerformingUpdate)
    {
      currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
      v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler9 handleFailureInFunction:v51 file:@"PXZoomablePhotosLayout.m" lineNumber:1139 description:{@"Invalid parameter not satisfying: %@", @"_preUpdateFlags.isPerformingUpdate"}];
    }

    v15 = p_preUpdateFlags->needsUpdate;
    p_preUpdateFlags->updated |= 0x100uLL;
    if ((v15 & 0x100) != 0)
    {
      p_preUpdateFlags->needsUpdate = v15 & 0xFFFFFFFFFFFFFEFFLL;
      [(PXZoomablePhotosLayout *)self _updateVisualShifting];
    }

    if (!p_preUpdateFlags->isPerformingUpdate)
    {
      currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
      v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler10 handleFailureInFunction:v53 file:@"PXZoomablePhotosLayout.m" lineNumber:1143 description:{@"Invalid parameter not satisfying: %@", @"_preUpdateFlags.isPerformingUpdate"}];
    }

    v16 = p_preUpdateFlags->needsUpdate;
    p_preUpdateFlags->updated |= 0x200uLL;
    if ((v16 & 0x200) != 0)
    {
      p_preUpdateFlags->needsUpdate = v16 & 0xFFFFFFFFFFFFFDFFLL;
      [(PXZoomablePhotosLayout *)self _updateDecorationSource];
    }

    objc_storeStrong(&self->_presentedDataSource, self->_currentDataSource);
    p_preUpdateFlags->isPerformingUpdate = 0;
    if (p_preUpdateFlags->needsUpdate)
    {
      currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
      v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler11 handleFailureInFunction:v55 file:@"PXZoomablePhotosLayout.m" lineNumber:1149 description:{@"still needing to update %lu after update pass", p_preUpdateFlags->needsUpdate}];
    }
  }

  assetDecorationSource = [(PXZoomablePhotosLayout *)self assetDecorationSource];
  dataSource = [assetDecorationSource dataSource];

  assetDecorationSource2 = [(PXZoomablePhotosLayout *)self assetDecorationSource];
  selectionSnapshot = [assetDecorationSource2 selectionSnapshot];
  dataSource2 = [selectionSnapshot dataSource];

  identifier = [dataSource identifier];
  if (identifier != [dataSource2 identifier])
  {
    v23 = PXAssertGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v74 = dataSource;
      v75 = 2112;
      v76 = dataSource2;
      _os_log_fault_impl(&dword_21ABF3000, v23, OS_LOG_TYPE_FAULT, "assetDecorationSource (%@) and selection snapshot datasource (%@) do not match", buf, 0x16u);
    }
  }

  v72.receiver = self;
  v72.super_class = PXZoomablePhotosLayout;
  [(PXGSplitLayout *)&v72 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v25 = self->_postUpdateFlags.needsUpdate;
  if (v25)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler12 handleFailureInFunction:v57 file:@"PXZoomablePhotosLayout.m" lineNumber:1158 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v25 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 0x10000;
    if ((v25 & 0x10000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v25 & 0xFFFFFFFFFFFEFFFFLL;
      [(PXZoomablePhotosLayout *)self _updateZoomTransforms];
      if (!self->_postUpdateFlags.isPerformingUpdate)
      {
        currentHandler13 = [MEMORY[0x277CCA890] currentHandler];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
        [currentHandler13 handleFailureInFunction:v59 file:@"PXZoomablePhotosLayout.m" lineNumber:1163 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
      }
    }

    v26 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x20000uLL;
    if ((v26 & 0x20000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v26 & 0xFFFFFFFFFFFDFFFFLL;
      [(PXZoomablePhotosLayout *)self _updateBackgroundSprites];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler14 = [MEMORY[0x277CCA890] currentHandler];
      v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler14 handleFailureInFunction:v61 file:@"PXZoomablePhotosLayout.m" lineNumber:1167 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v27 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x40000uLL;
    if ((v27 & 0x40000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v27 & 0xFFFFFFFFFFFBFFFFLL;
      [(PXZoomablePhotosLayout *)self _updateBlurEffect];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler15 = [MEMORY[0x277CCA890] currentHandler];
      v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler15 handleFailureInFunction:v63 file:@"PXZoomablePhotosLayout.m" lineNumber:1171 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v28 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x80000uLL;
    if ((v28 & 0x80000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v28 & 0xFFFFFFFFFFF7FFFFLL;
      [(PXZoomablePhotosLayout *)self _updatePinchEffect];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler16 = [MEMORY[0x277CCA890] currentHandler];
      v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler16 handleFailureInFunction:v65 file:@"PXZoomablePhotosLayout.m" lineNumber:1175 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v29 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x100000uLL;
    if ((v29 & 0x100000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v29 & 0xFFFFFFFFFFEFFFFFLL;
      [(PXZoomablePhotosLayout *)self _updatePrefetching];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler17 = [MEMORY[0x277CCA890] currentHandler];
      v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler17 handleFailureInFunction:v67 file:@"PXZoomablePhotosLayout.m" lineNumber:1179 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v30 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x200000uLL;
    if ((v30 & 0x200000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v30 & 0xFFFFFFFFFFDFFFFFLL;
      [(PXZoomablePhotosLayout *)self _updateFloatingHeaderStyle];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler18 = [MEMORY[0x277CCA890] currentHandler];
      v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
      [currentHandler18 handleFailureInFunction:v69 file:@"PXZoomablePhotosLayout.m" lineNumber:1183 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v31 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x400000uLL;
    if ((v31 & 0x400000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v31 & 0xFFFFFFFFFFBFFFFFLL;
    }

    else
    {
      v32 = +[PXZoomablePhotosSettings sharedInstance];
      enableDebugSprites = [v32 enableDebugSprites];

      if (!enableDebugSprites)
      {
LABEL_78:
        self->_postUpdateFlags.isPerformingUpdate = 0;
        if (p_postUpdateFlags->needsUpdate)
        {
          currentHandler19 = [MEMORY[0x277CCA890] currentHandler];
          v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout update]"];
          [currentHandler19 handleFailureInFunction:v71 file:@"PXZoomablePhotosLayout.m" lineNumber:1187 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
        }

        goto LABEL_80;
      }
    }

    [(PXZoomablePhotosLayout *)self _updateDebugVisualizationSprites];
    goto LABEL_78;
  }

LABEL_80:
  self->_isPerformingUpdate = 0;
}

- (void)_updateEffectProvider
{
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  effectProvider = [viewModel effectProvider];
  [(PXZoomablePhotosLayout *)self setEffectProvider:effectProvider];
}

- (void)_updateEffectiveOverlayInsets
{
  [(PXZoomablePhotosLayout *)self effectiveOverlayInsets];
  v37 = v4;
  v38 = v3;
  v35 = v6;
  v36 = v5;
  [(PXZoomablePhotosLayout *)self overlayInsets];
  v8 = v7;
  v10 = v9;
  v32 = v11;
  v13 = v12;
  [(PXZoomablePhotosLayout *)self visibleRect];
  if (v14 >= 1.0)
  {
    v16 = 0;
  }

  else
  {
    activeAnchor = [(PXZoomablePhotosLayout *)self activeAnchor];
    v16 = ([activeAnchor anchoredContentEdges] & 4) == 0;
  }

  [(PXZoomablePhotosLayout *)self visibleRect];
  v34 = v17;
  [(PXZoomablePhotosLayout *)self visibleRect];
  v33 = v18;
  if ([(PXZoomablePhotosLayout *)self scrollSpeedRegime])
  {
    v19 = 0;
  }

  else
  {
    activeAnchor2 = [(PXZoomablePhotosLayout *)self activeAnchor];
    v19 = [activeAnchor2 isScrollingAnimationAnchor] ^ 1;
  }

  [(PXZoomablePhotosLayout *)self effectiveOverlayInsets];
  v21 = *MEMORY[0x277D3CF90];
  v22 = *(MEMORY[0x277D3CF90] + 8);
  v23 = *(MEMORY[0x277D3CF90] + 16);
  v24 = *(MEMORY[0x277D3CF90] + 24);
  v25 = PXEdgeInsetsEqualToEdgeInsets();
  if ((v25 & 1) == 0)
  {
    v26 = v34;
    if (v34 < v33)
    {
      v26 = v38;
      if (v8 < v38)
      {
        goto LABEL_12;
      }
    }
  }

  if ([(PXZoomablePhotosLayout *)self isAnimating])
  {
    goto LABEL_12;
  }

  anchorAssetReference = [(PXZoomablePhotosLayout *)self anchorAssetReference];

  if (anchorAssetReference)
  {
    goto LABEL_12;
  }

  if (v25 & v16 & v19)
  {
    v28 = v32;
  }

  else
  {
    v28 = v32;
    if (v25 & 1 | (!v16 || v8 < v38))
    {
      if ((v25 & 1) != 0 || v16 || !v19)
      {
LABEL_12:
        v13 = v35;
        v28 = v36;
        v10 = v37;
        v8 = v38;
        goto LABEL_13;
      }

      v13 = v35;
      v28 = v36;
      v10 = v37;
      v8 = v38;
      if (v34 >= v33)
      {
        v13 = v24;
        v28 = v23;
        v10 = v22;
        v8 = v21;
      }
    }
  }

LABEL_13:
  [(PXZoomablePhotosLayout *)self effectiveOverlayInsets];
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    rootLayout = [(PXZoomablePhotosLayout *)self rootLayout];
    v30 = [rootLayout createAnchorForVisibleAreaIgnoringEdges:1];
    autoInvalidate = [v30 autoInvalidate];

    [(PXZoomablePhotosLayout *)self setEffectiveOverlayInsets:v8, v10, v28, v13];
  }
}

- (UIEdgeInsets)effectiveOverlayInsets
{
  top = self->_effectiveOverlayInsets.top;
  left = self->_effectiveOverlayInsets.left;
  bottom = self->_effectiveOverlayInsets.bottom;
  right = self->_effectiveOverlayInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)overlayInsets
{
  top = self->_overlayInsets.top;
  left = self->_overlayInsets.left;
  bottom = self->_overlayInsets.bottom;
  right = self->_overlayInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)isAnimating
{
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  v3 = viewModel;
  if (viewModel)
  {
    [viewModel zoomState];
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)_updateLayers
{
  v57 = *MEMORY[0x277D85DE8];
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  allowedColumns = [viewModel allowedColumns];

  layers = self->_layers;
  v7 = "P";
  if (layers)
  {
    v8 = [(NSArray *)layers count];
    if (v8 == [allowedColumns count])
    {
      goto LABEL_32;
    }

    v43 = a2;
    v44 = allowedColumns;
    layers = self->_layers;
  }

  else
  {
    v43 = a2;
    v44 = allowedColumns;
  }

  v9 = [(NSArray *)layers mutableCopy];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  viewModel2 = [(PXZoomablePhotosLayout *)self viewModel];
  allowedColumns2 = [viewModel2 allowedColumns];

  obj = allowedColumns2;
  v14 = [allowedColumns2 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = v14;
  v46 = *v53;
  do
  {
    v16 = 0;
    do
    {
      if (*v53 != v46)
      {
        objc_enumerationMutation(obj);
      }

      integerValue = [*(*(&v52 + 1) + 8 * v16) integerValue];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __39__PXZoomablePhotosLayout__updateLayers__block_invoke;
      v51[3] = &__block_descriptor_40_e26_B32__0__PXGLayout_8Q16_B24l;
      v51[4] = integerValue;
      decoratedLayout = [v9 px_popFirstPassingTest:v51];
      if (!decoratedLayout)
      {
        decoratedLayout = [(PXZoomablePhotosLayout *)self _createLayoutWithNumberOfColumns:integerValue];
      }

      v19 = [(PXZoomablePhotosLayout *)self _wantsDecorationForNumberOfColumns:integerValue];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (!v19 || (isKindOfClass & 1) != 0)
      {
        if (v19 || (isKindOfClass & 1) == 0)
        {
          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_16;
        }

        v25 = decoratedLayout;
        if (v25)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
LABEL_24:
            decoratedLayout = [v25 decoratedLayout];

            [decoratedLayout removeFromSuperlayout];
            goto LABEL_25;
          }

          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v30 = objc_opt_class();
          v29 = NSStringFromClass(v30);
          px_descriptionForAssertionMessage = [v25 px_descriptionForAssertionMessage];
          [currentHandler handleFailureInMethod:v43 object:self file:@"PXZoomablePhotosLayout.m" lineNumber:1286 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layerToAdd", v29, px_descriptionForAssertionMessage}];
        }

        else
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          [currentHandler handleFailureInMethod:v43 object:self file:@"PXZoomablePhotosLayout.m" lineNumber:1286 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layerToAdd", v29}];
        }

        goto LABEL_24;
      }

      [decoratedLayout removeFromSuperlayout];
      v21 = [objc_alloc(MEMORY[0x277D73C70]) initWithDecoratedLayout:decoratedLayout];
      [v21 setDecorationSource:self->_assetDecorationSource];
      [v21 setContentSource:self->_assetDecorationSource];
      [v21 setAppliesAlphaToSublayouts:0];

      decoratedLayout = v21;
LABEL_16:
      v22 = [(PXZoomablePhotosLayout *)self _wantsMiniDecorationForNumberOfColumns:integerValue];
      decoratedLayout = decoratedLayout;
      [decoratedLayout setDecorationSizeClass:v22];
      viewModel3 = [(PXZoomablePhotosLayout *)self viewModel];
      wantsAssetIndexBadge = [viewModel3 wantsAssetIndexBadge];

      if (wantsAssetIndexBadge)
      {
        [decoratedLayout addActiveDecorations:&unk_282C48240];
      }

LABEL_25:
      [(NSArray *)v10 addObject:decoratedLayout];
      itemsLayout = [decoratedLayout itemsLayout];
      [(NSArray *)v11 addObject:itemsLayout];

      ++v16;
    }

    while (v15 != v16);
    v31 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    v15 = v31;
  }

  while (v31);
LABEL_31:

  v32 = self->_layers;
  self->_layers = v10;
  v33 = v10;

  v34 = v9;
  itemLayouts = self->_itemLayouts;
  self->_itemLayouts = v11;
  v36 = v11;

  PXZoomablePhotosInvalidate(self, 16);
  v37 = self->_itemLayoutByHeaderLevel[0];
  self->_itemLayoutByHeaderLevel[0] = 0;

  v38 = self->_itemLayoutByHeaderLevel[1];
  self->_itemLayoutByHeaderLevel[1] = 0;

  decadesItemLayout = self->_decadesItemLayout;
  self->_decadesItemLayout = 0;

  v50[0] = MEMORY[0x277D85DD0];
  v7 = "P";
  v50[1] = 3221225472;
  v50[2] = __39__PXZoomablePhotosLayout__updateLayers__block_invoke_160;
  v50[3] = &unk_278299018;
  v50[4] = self;
  [(NSArray *)v36 enumerateObjectsUsingBlock:v50];

  allowedColumns = v44;
LABEL_32:
  v40 = self->_itemLayouts;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = *(v7 + 105);
  v47[2] = __39__PXZoomablePhotosLayout__updateLayers__block_invoke_2;
  v47[3] = &unk_278299040;
  v48 = allowedColumns;
  selfCopy = self;
  v41 = allowedColumns;
  [(NSArray *)v40 enumerateObjectsUsingBlock:v47];
  PXZoomablePhotosInvalidate(self, 96);
}

- (PXGBurstStackEffect)burstStackEffect
{
  entityManager = [(PXGBurstStackEffect *)self->_burstStackEffect entityManager];
  burstStackEffect = [(PXZoomablePhotosLayout *)self entityManager];
  if (entityManager != burstStackEffect)
  {
    entityManager2 = [(PXZoomablePhotosLayout *)self entityManager];

    if (!entityManager2)
    {
      goto LABEL_5;
    }

    v6 = objc_alloc(MEMORY[0x277D73C68]);
    entityManager = [(PXZoomablePhotosLayout *)self entityManager];
    v7 = [v6 initWithEntityManager:entityManager];
    burstStackEffect = self->_burstStackEffect;
    self->_burstStackEffect = v7;
  }

LABEL_5:
  v8 = self->_burstStackEffect;

  return v8;
}

void __39__PXZoomablePhotosLayout__updateLayers__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = [v5 objectAtIndexedSubscript:a3];
  [v7 setNumberOfColumns:{objc_msgSend(v6, "integerValue")}];

  [*(a1 + 40) _configureLayout:v7];
}

- (void)_updateZoom
{
  v239[1] = *MEMORY[0x277D85DE8];
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  v4 = viewModel;
  v235 = 0;
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  if (viewModel)
  {
    [viewModel zoomState];
    v202 = BYTE8(v232);
  }

  else
  {
    v202 = 0;
  }

  v5 = self->_zoomLayout;
  v6 = self->_layers;
  v7 = self->_currentDataSource;
  oneColLayout = [(PXZoomablePhotosLayout *)self oneColLayout];
  if (oneColLayout)
  {
    if ([(NSArray *)self->_itemLayouts count]>= 2)
    {
      v9 = [(NSArray *)self->_itemLayouts objectAtIndexedSubscript:1];
      if (v9)
      {
        v10 = v9;
        [v9 numberOfColumns];
        PXFloatProgressBetween();
      }
    }

    PXFloatSaturate();
    [oneColLayout setOverrideAspectRatioAmount:1.0 - v11];
  }

  primaryLayer = [(PXGZoomLayout *)v5 primaryLayer];
  itemsLayout = [primaryLayer itemsLayout];
  v12 = *MEMORY[0x277CBF348];
  v13 = *(MEMORY[0x277CBF348] + 8);
  v14 = *&v229 == *MEMORY[0x277CBF348];
  if (*(&v229 + 1) != v13)
  {
    v14 = 0;
  }

  v206 = v14;
  wasTracking = self->_wasTracking;
  anchorAssetReference = [(PXZoomablePhotosLayout *)self anchorAssetReference];
  v198 = v7;
  v199 = v4;
  v195 = oneColLayout;
  if (anchorAssetReference)
  {
    anchorAssetReference2 = [v4 anchorAssetReference];
    if (anchorAssetReference2)
    {
      v17 = v6;
      v18 = v5;
      anchorAssetReference3 = [(PXZoomablePhotosLayout *)self anchorAssetReference];
      asset = [anchorAssetReference3 asset];
      v21 = v4;
      v22 = asset;
      anchorAssetReference4 = [v21 anchorAssetReference];
      asset2 = [anchorAssetReference4 asset];
      if (v22 == asset2)
      {
        v25 = 0;
      }

      else
      {
        v25 = [v22 isEqual:asset2] ^ 1;
      }

      v5 = v18;
      v6 = v17;
      v7 = v198;
      v4 = v199;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  if (BYTE8(v232) == 1)
  {
    anchorAssetReference5 = [(PXZoomablePhotosLayout *)self anchorAssetReference];
    v27 = anchorAssetReference5 == 0;

    if (BYTE8(v232))
    {
      v28 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v27 = 0;
  }

  anchorAssetReference6 = [(PXZoomablePhotosLayout *)self anchorAssetReference];
  v28 = anchorAssetReference6 != 0;

  if ((BYTE8(v232) & 1) == 0)
  {
    layoutExtendsContentBelowBounds = [v4 layoutExtendsContentBelowBounds];
    if (!v27)
    {
      v197 = layoutExtendsContentBelowBounds;
      goto LABEL_40;
    }

LABEL_34:
    v52 = [(PXZoomablePhotosLayout *)self createFenceWithType:0];
    [(PXZoomablePhotosLayout *)self _updateSurroundingScrollableContent];
    [primaryLayer visibleRect];
    PXPointDenormalize();
    v54 = v53;
    v56 = v55;
    anchorAssetReference7 = [v4 anchorAssetReference];
    v58 = [(PXAssetsDataSource *)v7 assetReferenceForAssetReference:anchorAssetReference7];

    if (v58)
    {
      v35 = itemsLayout;
      if ((BYTE9(v232) & 1) == 0)
      {
        [v58 indexPath];
        [itemsLayout frameForItem:v226];
        PXRectGetCenter();
      }

      [(PXZoomablePhotosLayout *)self setAnchorAssetReference:v58];
      v197 = 1;
      goto LABEL_38;
    }

    v35 = itemsLayout;
    if (([(PXAssetsDataSource *)v7 containsAnyItems]& 1) != 0)
    {
      v219 = 0u;
      v220 = 0u;
      if (v7)
      {
        [(PXAssetsDataSource *)v7 firstItemIndexPath];
        memset(&v236, 0, 32);
        [(PXAssetsDataSource *)v7 lastItemIndexPath];
        v68 = v220;
      }

      else
      {
        v68 = 0;
        memset(&v236, 0, 32);
      }

      loadedItems = [itemsLayout loadedItems];
      if (v68 >= loadedItems && v68 - loadedItems < v70)
      {
        [itemsLayout frameForItem:v220];
        v72 = v71;
        v74 = v73;
        v76 = v75;
        v78 = v77;
        [primaryLayer visibleRect];
        v247.origin.x = v79;
        v247.origin.y = v80;
        v247.size.width = v81;
        v247.size.height = v82;
        v241.origin.x = v72;
        v241.origin.y = v74;
        v241.size.width = v76;
        v241.size.height = v78;
        if (CGRectIntersectsRect(v241, v247))
        {
          currentDataSource = self->_currentDataSource;
          v227 = v219;
          v228 = v220;
          v58 = [(PXAssetsDataSource *)currentDataSource assetReferenceAtItemIndexPath:&v227];
          [itemsLayout frameForItem:v220];
          x = v242.origin.x;
          y = v242.origin.y;
          width = v242.size.width;
          height = v242.size.height;
          CGRectGetMidX(v242);
          v243.origin.x = x;
          v243.origin.y = y;
          v243.size.width = width;
          v243.size.height = height;
          MinY = CGRectGetMinY(v243);
LABEL_162:
          v111 = 1;
          goto LABEL_163;
        }
      }

      loadedItems2 = [itemsLayout loadedItems];
      if (*&v236.c >= loadedItems2 && *&v236.c - loadedItems2 < v90)
      {
        [itemsLayout frameForItem:*&v236.c];
        v92 = v91;
        v94 = v93;
        v96 = v95;
        v98 = v97;
        [primaryLayer visibleRect];
        v248.origin.x = v99;
        v248.origin.y = v100;
        v248.size.width = v101;
        v248.size.height = v102;
        v244.origin.x = v92;
        v244.origin.y = v94;
        v244.size.width = v96;
        v244.size.height = v98;
        if (CGRectIntersectsRect(v244, v248))
        {
          v103 = self->_currentDataSource;
          v227 = *&v236.a;
          v228 = *&v236.c;
          v58 = [(PXAssetsDataSource *)v103 assetReferenceAtItemIndexPath:&v227];
          [itemsLayout frameForItem:*&v236.c];
          v104 = v245.origin.x;
          v105 = v245.origin.y;
          v106 = v245.size.width;
          v107 = v245.size.height;
          CGRectGetMidX(v245);
          v246.origin.x = v104;
          v246.origin.y = v105;
          v246.size.width = v106;
          v246.size.height = v107;
          CGRectGetMaxY(v246);
          [primaryLayer contentSize];
          v109 = v108;
          [(PXZoomablePhotosLayout *)self visibleRect];
          MinY = v110 * 1.5;
          v111 = v109 <= v110 * 1.5;
LABEL_163:
          v197 = v111;
          [(PXZoomablePhotosLayout *)self setAnchorAssetReference:v58, MinY];
          if (v58)
          {
LABEL_38:
            [v58 indexPath];
            [v35 frameForItem:v225];
            PXPointNormalize();
            v60 = v59;
            v62 = v61;
            [primaryLayer visibleRect];
            PXPointSubtract();
            v12 = v63;
            v13 = v64;

LABEL_57:
            self->_scaleCenterTargetInViewport.x = v12;
            self->_scaleCenterTargetInViewport.y = v13;
            self->_normalizedScaleCenterInAnchorSprite.x = v60;
            self->_normalizedScaleCenterInAnchorSprite.y = v62;
            goto LABEL_58;
          }

          v60 = 0.5;
LABEL_56:
          v62 = 0.5;
          goto LABEL_57;
        }
      }

      v112 = [itemsLayout itemClosestTo:{v54, v56}];
      if (v112 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v188 = v112;
        identifier = [(PXAssetsDataSource *)v7 identifier];
        section = self->_sectionIndexPath.section;
        *&v227 = identifier;
        *(&v227 + 1) = section;
        *&v228 = v188;
        *(&v228 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        v191 = [(PXAssetsDataSource *)v7 assetReferenceAtItemIndexPath:&v227];
        v58 = v191;
        if (v191)
        {
          v192 = v191;
        }

        goto LABEL_162;
      }
    }

    [(PXZoomablePhotosLayout *)self setAnchorAssetReference:0];
    v60 = 0.5;
    v197 = 1;
    goto LABEL_56;
  }

LABEL_25:
  anchorAssetReference8 = [(PXZoomablePhotosLayout *)self anchorAssetReference];

  layoutExtendsContentBelowBounds2 = [v4 layoutExtendsContentBelowBounds];
  if (v27)
  {
    goto LABEL_34;
  }

  v197 = layoutExtendsContentBelowBounds2;
  if (anchorAssetReference8 && ((v25 | (!wasTracking && !v206)) & 1) != 0)
  {
    v32 = self->_currentDataSource;
    anchorAssetReference9 = [v4 anchorAssetReference];
    v34 = [(PXAssetsDataSource *)v32 assetReferenceForAssetReference:anchorAssetReference9];

    v35 = itemsLayout;
    if (v34)
    {
      [primaryLayer visibleRect];
      PXPointDenormalize();
      if ((BYTE9(v232) & 1) == 0)
      {
        [v34 indexPath];
        [itemsLayout frameForItem:v224];
        PXRectGetCenter();
      }

      [v34 indexPath];
      [itemsLayout frameForItem:v223];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v222 = 0;
      v220 = 0u;
      v221 = 0u;
      v219 = 0u;
      [(PXZoomablePhotosLayout *)self _spriteTransformForLayout:primaryLayer];
      memset(&v236, 0, sizeof(v236));
      v240.origin.x = v37;
      v240.origin.y = v39;
      v240.size.width = v41;
      v240.size.height = v43;
      CGRectApplyAffineTransform(v240, &v236);
      PXPointNormalize();
      v45 = v44;
      v47 = v46;
      PXGAssertErrValidPoint();
      self->_normalizedScaleCenterInAnchorSprite.x = v45;
      self->_normalizedScaleCenterInAnchorSprite.y = v47;
      [primaryLayer visibleRect];
      PXPointSubtract();
      self->_scaleCenterTargetInViewport.x = v48;
      self->_scaleCenterTargetInViewport.y = v49;
      [(PXZoomablePhotosLayout *)self setAnchorAssetReference:v34];
      [(PXGAnchor *)self->_anchor invalidate];
      anchor = self->_anchor;
      self->_anchor = 0;

      [(PXZoomablePhotosLayout *)self _performAnchorAlignmentVisualShiftWithBaseLayout:itemsLayout];
    }

    goto LABEL_58;
  }

LABEL_40:
  v35 = itemsLayout;
  if (v28)
  {
    [(PXZoomablePhotosLayout *)self _ensureZoomingAnchor];
    v65 = self->_anchor;
    self->_anchor = 0;

    v66 = *MEMORY[0x277D3CFB0];
    self->_scaleCenterTargetInViewport = *MEMORY[0x277D3CFB0];
    self->_normalizedScaleCenterInAnchorSprite = v66;
    [(PXZoomablePhotosLayout *)self setAnchorAssetReference:0];
    visualAnchorAssetReferenceItemByLayout = [(PXZoomablePhotosLayout *)self visualAnchorAssetReferenceItemByLayout];
    [visualAnchorAssetReferenceItemByLayout removeAllObjects];

    v197 = 0;
  }

LABEL_58:
  anchorAssetReference10 = [(PXZoomablePhotosLayout *)self anchorAssetReference];
  [(PXGZoomLayout *)self->_zoomLayout setAnchorObjectReference:anchorAssetReference10];

  [(PXZoomablePhotosLayout *)self scaleCenterTargetInViewport];
  [(PXGZoomLayout *)self->_zoomLayout setAnchorViewportCenter:?];
  anchorAssetReference11 = [(PXZoomablePhotosLayout *)self anchorAssetReference];

  if (anchorAssetReference11)
  {
    [(PXZoomablePhotosLayout *)self _ensureZoomingAnchor];
  }

  v115 = [(NSArray *)v6 objectAtIndexedSubscript:*(&v231 + 1)];
  layers = [(PXGZoomLayout *)v5 layers];
  if (v202)
  {
    layers2 = [(PXGZoomLayout *)v5 layers];
    v118 = [layers2 count];
    v119 = [(NSArray *)v6 count];

    if (v118 == v119)
    {
      v120 = layers;
    }

    else
    {
      v120 = layers;
      if (anchorAssetReference11)
      {
        [(PXZoomablePhotosLayout *)self _performAnchorAlignmentVisualShiftWithBaseLayout:v35];
        v121 = [(NSArray *)v6 sortedArrayUsingComparator:&__block_literal_global_163];

        [(NSMutableSet *)self->_itemLayoutsAllowedToLoad removeAllObjects];
        v120 = v121;
      }
    }
  }

  else
  {
    v239[0] = v115;
    v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v239 count:1];
  }

  v196 = v6;
  primaryLayer2 = [(PXGZoomLayout *)v5 primaryLayer];

  if (v115 != primaryLayer2)
  {
    PXZoomablePhotosInvalidate(self, 512);
    itemsLayout2 = [v115 itemsLayout];
    v124 = [(PXZoomablePhotosLayout *)self _layoutHasIndividualItems:itemsLayout2];

    if (v124)
    {
      lastReturnedDateInterval = self->_lastReturnedDateInterval;
      self->_lastReturnedDateInterval = 0;

      lastReturnedLocationNames = self->_lastReturnedLocationNames;
      self->_lastReturnedLocationNames = 0;
    }
  }

  v193 = !v206;
  v207 = v5;
  v194 = v120;
  v204 = v115;
  [(PXGZoomLayout *)v5 setLayers:v120 primaryLayer:v115];
  v127 = [(NSArray *)self->_itemLayouts objectAtIndexedSubscript:v233];
  v128 = [(NSArray *)self->_itemLayouts objectAtIndexedSubscript:*(&v233 + 1)];
  v129 = *(&v234 + 1);
  v130 = [(PXZoomablePhotosLayout *)self _layoutIsQuiteTransparent:v127];
  v205 = v128;
  v131 = [(PXZoomablePhotosLayout *)self _layoutIsQuiteTransparent:v128];
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v132 = self->_itemLayouts;
  v133 = [(NSArray *)v132 countByEnumeratingWithState:&v215 objects:v238 count:16];
  if (v133)
  {
    v134 = v133;
    v135 = 0;
    v136 = *v216;
    v137 = v129 * (2.0 - v129);
    if (!v131)
    {
      v137 = v129;
    }

    if (v130)
    {
      v138 = v137;
    }

    else
    {
      v138 = 1.0;
    }

    v139 = v129 * v129 * (v129 * v129);
    if (!v130 || !v131)
    {
      v139 = v129;
    }

    v140 = 1.0 - v139;
    v141 = 0.0;
    v142 = 0.0;
    do
    {
      v143 = 0;
      v144 = v135;
      do
      {
        if (*v216 != v136)
        {
          objc_enumerationMutation(v132);
        }

        v145 = *(*(&v215 + 1) + 8 * v143);
        if (v145 == v127)
        {
          v146 = v140;
          if (!v130)
          {
            [(PXZoomablePhotosLayout *)self _interItemSpacingForLayout:v127];
            v141 = v140 * v147;
            v146 = v140;
          }
        }

        else if (v145 == v205)
        {
          if (!v131)
          {
            [(PXZoomablePhotosLayout *)self _interItemSpacingForLayout:?];
            v149 = v138 * v148;
            if (v141 < v149)
            {
              v141 = v149;
            }
          }

          v146 = v138;
        }

        else if (v144 != v205 || v131 || v130)
        {
          v146 = 0.0;
        }

        else
        {
          v146 = 1.0;
        }

        [(PXZoomablePhotosContentLayout *)v145 setAlpha:v146];
        PXFloatSaturate();
        [(PXZoomablePhotosContentLayout *)v145 setAccessoryAlpha:?];
        if (v146 > 0.0)
        {
          [(NSMutableSet *)self->_itemLayoutsAllowedToLoad addObject:v145];
        }

        v135 = v145;

        if (v142 < v146)
        {
          v142 = v146;
        }

        ++v143;
        v144 = v135;
      }

      while (v134 != v143);
      v134 = [(NSArray *)v132 countByEnumeratingWithState:&v215 objects:v238 count:16];
    }

    while (v134);
  }

  else
  {
    v135 = 0;
  }

  [(PXZoomablePhotosLayout *)self displayScale];
  PXFloatRoundToPixel();
  if (v150 >= 1.0 || v150 <= 0.0)
  {
    v152 = v150;
  }

  else
  {
    v152 = 1.0;
  }

  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v153 = self->_itemLayouts;
  v154 = [(NSArray *)v153 countByEnumeratingWithState:&v211 objects:v237 count:16];
  if (v154)
  {
    v155 = v154;
    v156 = *v212;
    do
    {
      for (i = 0; i != v155; ++i)
      {
        if (*v212 != v156)
        {
          objc_enumerationMutation(v153);
        }

        v158 = *(*(&v211 + 1) + 8 * i);
        [(PXZoomablePhotosLayout *)self _scaleForLayout:v158];
        v160 = v159;
        if (v158 == v127)
        {
          [(PXZoomablePhotosLayout *)self _interItemSpacingForLayout:v158];
        }

        else
        {
          [(PXZoomablePhotosContentLayout *)v158 alpha];
          if (v161 == 0.0)
          {
            v166 = 0.0;
          }

          else
          {
            [(PXZoomablePhotosLayout *)self _interItemSpacingForLayout:v158];
            v163 = v162;
            v164 = [(PXZoomablePhotosLayout *)self _layoutIsAspectFit:v158];
            if (v152 < v163 || v164)
            {
              v166 = v163;
            }

            else
            {
              v166 = v152;
            }
          }
        }

        [(PXZoomablePhotosContentLayout *)v158 setInterItemSpacing:v166 / v160, v166 / v160];
        if ([(PXGZoomLayout *)v207 numberOfSublayouts]< 2)
        {
          v169 = 0;
        }

        else
        {
          anchorObjectReference = [(PXZoomablePhotosContentLayout *)v158 anchorObjectReference];
          if (anchorObjectReference)
          {
            lastObject = [(NSArray *)self->_itemLayouts lastObject];
            v169 = v158 == lastObject && !self->_scrolledWhileAnimatingZoom;
          }

          else
          {
            v169 = 0;
          }
        }

        v170 = [(PXZoomablePhotosLayout *)self _layoutHasIndividualItems:v158];
        [(PXZoomablePhotosContentLayout *)v158 setSpriteInfoFlags:0];
        [(PXZoomablePhotosContentLayout *)v158 setSpriteInfoFlags:([(PXZoomablePhotosContentLayout *)v158 spriteInfoFlags]| v169)];
        if (v170)
        {
          v171 = 0;
        }

        else
        {
          v171 = 16;
        }

        [(PXZoomablePhotosContentLayout *)v158 setSpriteInfoFlags:[(PXZoomablePhotosContentLayout *)v158 spriteInfoFlags]| v171];
        anchorObjectReference2 = [(PXZoomablePhotosContentLayout *)v158 anchorObjectReference];
        if (anchorObjectReference2)
        {
          itemsLayout3 = [v204 itemsLayout];
          [(PXZoomablePhotosContentLayout *)v158 setLoadItemsOutsideAnchorViewport:v158 == itemsLayout3];
        }

        else
        {
          [(PXZoomablePhotosContentLayout *)v158 setLoadItemsOutsideAnchorViewport:0];
        }
      }

      v155 = [(NSArray *)v153 countByEnumeratingWithState:&v211 objects:v237 count:16];
    }

    while (v155);
  }

  v174 = self->_itemLayoutByHeaderLevel[0];
  v175 = self->_itemLayoutByHeaderLevel[1];
  v176 = self->_inlineHeadersLayout;
  miniModeAnimator = [v199 miniModeAnimator];
  [miniModeAnimator gridMiniStylingPercentage];
  PXFloatSaturate();
  v179 = v178;

  if (v174 == v205)
  {
    v180 = v129;
  }

  else
  {
    v180 = 0.0;
  }

  if (v174 == v127)
  {
    v180 = 1.0 - v129;
  }

  [(PXZoomableInlineHeadersLayout *)v176 setYearsAlpha:v180 * v179];
  if (v175 == v205)
  {
    v181 = v129;
  }

  else
  {
    v181 = 0.0;
  }

  if (v175 == v127)
  {
    v181 = 1.0 - v129;
  }

  [(PXZoomableInlineHeadersLayout *)v176 setMonthsAlpha:v181 * v179];
  self->_wasTracking = v193;
  PXZoomablePhotosInvalidate(self, 0x10000);
  if ((v202 & 1) == 0 && [(PXZoomablePhotosLayout *)self isVisible])
  {
    viewModel2 = [(PXZoomablePhotosLayout *)self viewModel];
    [viewModel2 saveCurrentZoomLevelAsUserPreferredIfPossible];
  }

  v183 = +[PXZoomablePhotosSettings sharedInstance];
  hideBadgesDuringZoom = [v183 hideBadgesDuringZoom];

  if (hideBadgesDuringZoom)
  {
    [(PXNumberAnimator *)self->_decorationAlphaAnimator value];
    v185 = 1.0;
    if ((v202 & 1) != 0 && ((BYTE10(v232) & 1) != 0 || fabs(*&v230 + -1.0) >= 0.001))
    {
      v185 = 0.0;
    }

    [(PXNumberAnimator *)self->_decorationAlphaAnimator value];
    if (v186 != v185)
    {
      decorationAlphaAnimator = self->_decorationAlphaAnimator;
      v210[0] = MEMORY[0x277D85DD0];
      v210[1] = 3221225472;
      v210[2] = __37__PXZoomablePhotosLayout__updateZoom__block_invoke_2;
      v210[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
      *&v210[4] = v185;
      [(PXNumberAnimator *)decorationAlphaAnimator performChangesWithDuration:1 curve:v210 changes:0.2];
    }
  }

  v208[0] = MEMORY[0x277D85DD0];
  v208[1] = 3221225472;
  v208[2] = __37__PXZoomablePhotosLayout__updateZoom__block_invoke_3;
  v208[3] = &__block_descriptor_33_e69_v16__0__PXZoomablePhotosViewModel_PXMutableZoomablePhotosViewModel__8l;
  v209 = v197;
  [v199 performChanges:v208];
  PXZoomablePhotosInvalidate(self, 131136);
}

- (CGPoint)scaleCenterTargetInViewport
{
  x = self->_scaleCenterTargetInViewport.x;
  y = self->_scaleCenterTargetInViewport.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_updateMiniMode
{
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  miniModeAnimator = [viewModel miniModeAnimator];

  if (([miniModeAnimator isContentAnimating] & 1) == 0 && !objc_msgSend(miniModeAnimator, "targetState"))
  {
    self->_miniModeVerticalOffset = 0.0;
    miniModeFoldedRows = self->_miniModeFoldedRows;
    self->_miniModeFoldedRows = 0;

    v5 = 0;
    goto LABEL_6;
  }

  if (([(PXZoomablePhotosLayout *)self anchoredContentEdges]& 4) != 0)
  {
    v5 = 1;
LABEL_6:
    self->_miniModeIsAnchoringToBottom = v5;
  }

  itemLayouts = self->_itemLayouts;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__PXZoomablePhotosLayout__updateMiniMode__block_invoke;
  v8[3] = &unk_278299018;
  v8[4] = self;
  [(NSArray *)itemLayouts enumerateObjectsUsingBlock:v8];
  PXZoomablePhotosInvalidate(self, 0x40000);
}

- (void)_updateDecorationVisibility
{
  v3 = +[PXZoomablePhotosSettings sharedInstance];
  hideBadgesDuringZoom = [v3 hideBadgesDuringZoom];

  v5 = 1.0;
  v6 = 1.0;
  if (hideBadgesDuringZoom)
  {
    [(PXNumberAnimator *)self->_decorationAlphaAnimator presentationValue];
    v6 = v7;
    [(PXNumberAnimator *)self->_decorationAlphaAnimator value];
    v5 = v8;
  }

  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  miniModeAnimator = [viewModel miniModeAnimator];

  [miniModeAnimator gridMiniChromeVisibilityPercentage];
  PXFloatSaturate();
  v12 = v6 * v11;
  v13 = v5 * v11;
  primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
  itemLayouts = self->_itemLayouts;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__PXZoomablePhotosLayout__updateDecorationVisibility__block_invoke;
  v17[3] = &unk_2782990C8;
  v18 = primaryItemsLayout;
  v19 = v13;
  v20 = v12;
  v16 = primaryItemsLayout;
  [(NSArray *)itemLayouts enumerateObjectsUsingBlock:v17];
}

void __53__PXZoomablePhotosLayout__updateDecorationVisibility__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 decoratingLayout];
  v4 = *(a1 + 32);
  [v3 alpha];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v6 != v7)
  {
    v7 = 0.0;
    if (v4 == v9)
    {
      v7 = *(a1 + 48);
    }
  }

  [v3 setAlpha:v7];
  [v3 alpha];
  if (PXFloatApproximatelyEqualToFloat())
  {
    v8 = 0;
  }

  else
  {
    [v9 alpha];
    v8 = PXFloatApproximatelyEqualToFloat() ^ 1;
  }

  [v3 setEnabled:v8];
}

- (void)_updateDataSource
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = self->_dataSourceManager;
  v5 = self->_currentDataSource;
  dataSource = [(PXAssetsDataSourceManager *)v4 dataSource];
  v82 = v5;
  if (v5 == dataSource)
  {
    goto LABEL_75;
  }

  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  v8 = viewModel;
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  if (viewModel)
  {
    [viewModel zoomState];
  }

  spec = [(PXZoomablePhotosLayout *)self spec];
  v77 = v4;
  changeHistory = [(PXAssetsDataSourceManager *)v4 changeHistory];
  v10 = [changeHistory changeDetailsFromDataSourceIdentifier:-[PXAssetsDataSource identifier](v5 toDataSourceIdentifier:{"identifier"), -[PXAssetsDataSource identifier](dataSource, "identifier")}];

  firstObject = [v10 firstObject];
  fromDataSourceIdentifier = [firstObject fromDataSourceIdentifier];
  obj = dataSource;
  if (fromDataSourceIdentifier == [(PXAssetsDataSource *)v5 identifier])
  {
    lastObject = [v10 lastObject];
    v14 = v8;
    toDataSourceIdentifier = [lastObject toDataSourceIdentifier];
    identifier = [(PXAssetsDataSource *)dataSource identifier];

    v17 = toDataSourceIdentifier == identifier;
    v8 = v14;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosLayout.m" lineNumber:1807 description:@"Identifiers do not match"];

LABEL_7:
  p_sectionIndexPath = &self->_sectionIndexPath;
  section = self->_sectionIndexPath.section;
  dataSourceIdentifier = self->_sectionIndexPath.dataSourceIdentifier;
  v102 = *&self->_sectionIndexPath.item;
  if (v8)
  {
    [v8 sectionIndexPath];
    if (section != *(&v100 + 1))
    {
      [v8 sectionIndexPath];
      section = *(&v98 + 1);
      dataSourceIdentifier = v98;
LABEL_12:
      v102 = v99;
    }
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
    if (section)
    {
      section = 0;
      dataSourceIdentifier = 0;
      v98 = 0uLL;
      v99 = 0uLL;
      goto LABEL_12;
    }
  }

  v97 = 0;
  v21 = *&self->_sectionIndexPath.item;
  v96[0] = *&p_sectionIndexPath->dataSourceIdentifier;
  v96[1] = v21;
  [MEMORY[0x277D3CDD0] indexPathAfterApplyingChanges:v10 toIndexPath:v96 hasIncrementalChanges:&v97 objectChanged:0];
  v22 = v99;
  *&p_sectionIndexPath->dataSourceIdentifier = v98;
  *&self->_sectionIndexPath.item = v22;
  if (v97 == 1)
  {
    v24 = *&p_sectionIndexPath->dataSourceIdentifier;
    v23 = *&self->_sectionIndexPath.item;
  }

  else
  {
    dataSourceIdentifier = [(PXAssetsDataSource *)obj dataSourceIdentifier];
    p_sectionIndexPath->dataSourceIdentifier = dataSourceIdentifier;
    self->_sectionIndexPath.section = section;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v23 = vnegq_f64(v26);
    *&self->_sectionIndexPath.item = v23;
    v24.i64[0] = dataSourceIdentifier;
    v24.i64[1] = section;
  }

  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v24, *MEMORY[0x277D3CFD8]), vceqq_s64(v23, *(MEMORY[0x277D3CFD8] + 16))))))
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosLayout.m" lineNumber:1822 description:@"After-state index path is null. This indicates a missed update"];
  }

  primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
  loadedItems = [primaryItemsLayout loadedItems];
  if (v29)
  {
    v30 = loadedItems;
  }

  else
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v76 = v8;
  if (v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v75 = 0;
  }

  else
  {
    v75 = [primaryItemsLayout columnForItem:v30];
  }

  selfCopy = self;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v31 = v10;
  v32 = [v31 countByEnumeratingWithState:&v92 objects:v112 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = *v93;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v93 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v92 + 1) + 8 * i);
        if ([v37 hasAnyInsertionsRemovalsOrMoves])
        {
          v38 = [v37 itemChangesInSection:p_sectionIndexPath->section];
          v30 = [v38 indexAfterApplyingChangesToIndex:v30];

          v34 = 1;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v92 objects:v112 count:16];
    }

    while (v33);
  }

  else
  {
    v34 = 0;
  }

  v78 = primaryItemsLayout;

  if (([(PXAssetsDataSource *)v82 areAllSectionsConsideredAccurate]& 1) != 0)
  {
    areAllSectionsConsideredAccurate = 0;
  }

  else
  {
    areAllSectionsConsideredAccurate = [(PXAssetsDataSource *)obj areAllSectionsConsideredAccurate];
  }

  if ((BYTE8(v106) & 1) == 0)
  {
    numberOfColumns = [primaryItemsLayout numberOfColumns];
    if (numberOfColumns <= [spec maxColumnsForIndividualItems] && (areAllSectionsConsideredAccurate & 1) == 0 && ((v34 ^ 1) & 1) == 0)
    {
      createDefaultAnimationForCurrentContext = [(PXZoomablePhotosLayout *)selfCopy createDefaultAnimationForCurrentContext];
    }
  }

  if (v34)
  {
    viewModel2 = [(PXZoomablePhotosLayout *)selfCopy viewModel];
    assetsDataSourceManager = [viewModel2 assetsDataSourceManager];
    [assetsDataSourceManager performChanges:&__block_literal_global_176];

    PXZoomablePhotosInvalidate(selfCopy, 256);
    if ([(PXZoomablePhotosLayout *)selfCopy _hasLastRowFilledStrategy])
    {
      [(PXZoomablePhotosLayout *)selfCopy _invalidateVisualShiftingEnsuringLastRowFilled];
    }

    v44 = v75;
  }

  else
  {
    v44 = 0;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
  }

  selfCopy->_visuallyStableAnchorItem = v30;
  selfCopy->_visuallyStableAnchorItemDesiredColumn = v44;
  selfCopy->_visuallyStableAnchorAllowedCloseToTop = areAllSectionsConsideredAccurate;
  if (areAllSectionsConsideredAccurate)
  {
    selfCopy->_performedInitialVisualShift = 0;
  }

  v45 = areAllSectionsConsideredAccurate;
  filterPredicate = [(PXAssetsDataSource *)v82 filterPredicate];
  filterPredicate2 = [(PXAssetsDataSource *)obj filterPredicate];
  if (filterPredicate != filterPredicate2 && ([filterPredicate isEqual:filterPredicate2] & 1) == 0)
  {
    v45 = 15;
  }

  rootLayout = [(PXZoomablePhotosLayout *)selfCopy rootLayout];
  v49 = [rootLayout createAnchorForVisibleAreaIgnoringEdges:v45];
  autoInvalidate = [v49 autoInvalidate];

  objc_storeStrong(&selfCopy->_currentDataSource, obj);
  v51 = p_sectionIndexPath->section;
  v52 = obj;
  [(PXPhotosGridAssetDecorationSource *)selfCopy->_assetDecorationSource setDataSource:selfCopy->_currentDataSource section:v51];
  cachedClampedFetchResult = selfCopy->_cachedClampedFetchResult;
  selfCopy->_cachedClampedFetchResult = 0;

  selfCopy->_cachedClampedItemRange = xmmword_21AC7D580;
  anchorAssetReference = [(PXZoomablePhotosLayout *)selfCopy anchorAssetReference];

  if (anchorAssetReference)
  {
    anchorAssetReference2 = [(PXZoomablePhotosLayout *)selfCopy anchorAssetReference];
    v56 = [(PXAssetsDataSource *)obj assetReferenceForAssetReference:anchorAssetReference2];
    [(PXZoomablePhotosLayout *)selfCopy setAnchorAssetReference:v56];
  }

  v57 = selfCopy->_visualAnchorAssetReferenceItemByLayout;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v58 = NSAllMapTableKeys(v57);
  v59 = [v58 countByEnumeratingWithState:&v88 objects:v111 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v89;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v89 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v88 + 1) + 8 * j);
        v64 = [(NSMapTable *)v57 objectForKey:v63];
        if (v64)
        {
          v65 = v64;
          v66 = [(PXAssetsDataSource *)v52 assetReferenceForAssetReference:v64];

          [(NSMapTable *)v57 setObject:v66 forKey:v63];
          v52 = obj;
        }
      }

      v60 = [v58 countByEnumeratingWithState:&v88 objects:v111 count:16];
    }

    while (v60);
  }

  v67 = [MEMORY[0x277D73C80] defaultMediaVersionHandlerWithDataSourceBeforeChanges:v82 dataSourceAfterChanges:v52];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v68 = selfCopy->_layers;
  v69 = [(NSArray *)v68 countByEnumeratingWithState:&v84 objects:v110 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v85;
    do
    {
      for (k = 0; k != v70; ++k)
      {
        if (*v85 != v71)
        {
          objc_enumerationMutation(v68);
        }

        itemsLayout = [*(*(&v84 + 1) + 8 * k) itemsLayout];
        *&v98 = dataSourceIdentifier;
        *(&v98 + 1) = section;
        v99 = v102;
        [itemsLayout applySectionedChangeDetailsForSingleSection:v31 dataSourceBeforeChanges:v82 dataSourceAfterChanges:obj changeMediaVersionHandler:v67 sectionIndexPathBeforeState:&v98];
      }

      v70 = [(NSArray *)v68 countByEnumeratingWithState:&v84 objects:v110 count:16];
    }

    while (v70);
  }

  [(PXZoomablePhotosLayout *)selfCopy invalidateVersion];
  PXZoomablePhotosInvalidate(selfCopy, 1311232);
  dataSource = obj;
  if (!selfCopy->_performedInitialVisualShift && [(PXAssetsDataSource *)obj containsAnyItems])
  {
    PXZoomablePhotosInvalidate(selfCopy, 256);
  }

  v4 = v77;
LABEL_75:
}

- (void)_updateVisualShifting
{
  primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
  numberOfItems = [primaryItemsLayout numberOfItems];
  numberOfColumns = [primaryItemsLayout numberOfColumns];
  if (!numberOfItems)
  {
    goto LABEL_29;
  }

  v6 = numberOfColumns;
  if (!numberOfColumns)
  {
    goto LABEL_29;
  }

  [(PXZoomablePhotosLayout *)self visibleRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v43 = 0;
  v44 = 0;
  [(PXZoomablePhotosLayout *)self getLastItem:&v44 lastColumn:&v43 forBodyLayout:primaryItemsLayout];
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  contentShiftStrategy = [viewModel contentShiftStrategy];

  if (contentShiftStrategy == 2 && numberOfItems < v6)
  {
    v43 = 0;
    v44 = 0;
  }

  if (self->_performedInitialVisualShift)
  {
    if ([(PXZoomablePhotosLayout *)self isAnimating])
    {
      goto LABEL_26;
    }

    v17 = +[PXZoomablePhotosSettings sharedInstance];
    [v17 shiftingRequiredScreensTopDistance];
    v19 = v18;

    v20 = [primaryItemsLayout columnForItem:v44];
    v21 = v43;
    scrollSpeedRegime = [(PXZoomablePhotosLayout *)self scrollSpeedRegime];
    if (contentShiftStrategy == 2)
    {
      if (self->_visuallyStableAnchorLastRowFilled)
      {
LABEL_10:
        rootLayout = [(PXZoomablePhotosLayout *)self rootLayout];
        activeAnchor = [rootLayout activeAnchor];

        if (activeAnchor)
        {
LABEL_23:
          visuallyStableAnchorItemDesiredColumn = v43;
          visuallyStableAnchorItem = v44;
LABEL_24:
          selfCopy2 = self;
          v36 = primaryItemsLayout;
LABEL_25:
          [(PXZoomablePhotosLayout *)selfCopy2 _performVisualShiftWithLayout:v36 movingItem:visuallyStableAnchorItem toColumn:visuallyStableAnchorItemDesiredColumn];
          goto LABEL_26;
        }

        rootLayout2 = [(PXZoomablePhotosLayout *)self rootLayout];
        createAnchorForVisibleArea = [rootLayout2 createAnchorForVisibleArea];
        autoInvalidate = [createAnchorForVisibleArea autoInvalidate];

LABEL_22:
        goto LABEL_23;
      }
    }

    else
    {
      v32 = v10 / v14;
      if (contentShiftStrategy == 1 && self->_visuallyStableAnchorLastRowFilled && v32 > v19)
      {
        goto LABEL_10;
      }

      visuallyStableAnchorItem = self->_visuallyStableAnchorItem;
      if (visuallyStableAnchorItem != 0x7FFFFFFFFFFFFFFFLL && (v32 > v19 || self->_visuallyStableAnchorAllowedCloseToTop))
      {
        visuallyStableAnchorItemDesiredColumn = self->_visuallyStableAnchorItemDesiredColumn;
        goto LABEL_24;
      }

      v42 = scrollSpeedRegime;
      if ([(PXZoomablePhotosLayout *)self anchoredContentEdges]!= 4)
      {
        v45.origin.x = v8;
        v45.origin.y = v10;
        v45.size.width = v12;
        v45.size.height = v14;
        if (!CGRectIsEmpty(v45))
        {
          if ([primaryItemsLayout visualItemShift])
          {
            visualItemShift = [primaryItemsLayout visualItemShift];
            if (v42 < 3)
            {
              if (v42 != 2 || v32 >= 1.0 || visualItemShift <= 0)
              {
                if (v42)
                {
                  goto LABEL_26;
                }

                if (v32 >= 1.0)
                {
                  goto LABEL_26;
                }

                if (visualItemShift < 1)
                {
                  goto LABEL_26;
                }

                [primaryItemsLayout itemRangeInRect:{v8, v10, v12, v14}];
                if (numberOfItems > v41)
                {
                  goto LABEL_26;
                }
              }
            }

            else
            {
              v39 = v32 < v19 || v20 != v21;
              if (self->_scrolledWhileAnimatingZoom || !v39)
              {
                goto LABEL_26;
              }
            }

            selfCopy2 = self;
            v36 = primaryItemsLayout;
            visuallyStableAnchorItem = 0;
            visuallyStableAnchorItemDesiredColumn = 0;
            goto LABEL_25;
          }
        }
      }

      if (contentShiftStrategy == 1)
      {
        v46.origin.x = v8;
        v46.origin.y = v10;
        v46.size.width = v12;
        v46.size.height = v14;
        if (!CGRectIsEmpty(v46) && v20 != v21)
        {
          v40 = v32 <= v19 || v42 < 3;
          if (!v40 && !self->_scrolledWhileAnimatingZoom)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  else
  {
    self->_performedInitialVisualShift = 1;
    rootLayout2 = [(PXZoomablePhotosLayout *)self viewModel];
    contentStartsAtEnd = [rootLayout2 contentStartsAtEnd];
    if (contentShiftStrategy == 2 || (contentStartsAtEnd & 1) != 0)
    {
      activeAnchor2 = [(PXZoomablePhotosLayout *)self activeAnchor];
      if (activeAnchor2)
      {
        v30 = activeAnchor2;
        anchoredContentEdges = [(PXZoomablePhotosLayout *)self anchoredContentEdges];

        if ((anchoredContentEdges & 4) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

LABEL_26:
  if (![(PXZoomablePhotosLayout *)self scrollSpeedRegime])
  {
    self->_scrolledWhileAnimatingZoom = 0;
  }

  self->_visuallyStableAnchorItem = 0x7FFFFFFFFFFFFFFFLL;
  self->_visuallyStableAnchorItemDesiredColumn = 0;
  self->_visuallyStableAnchorAllowedCloseToTop = 0;
  self->_visuallyStableAnchorLastRowFilled = 0;
LABEL_29:
}

- (void)_updateDecorationSource
{
  v23 = *MEMORY[0x277D85DE8];
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  v4 = self->_assetDecorationSource;
  -[PXPhotosGridAssetDecorationSource setIsInSelectMode:](v4, "setIsInSelectMode:", [viewModel isInSelectMode]);
  selectionSnapshot = [viewModel selectionSnapshot];
  [(PXPhotosGridAssetDecorationSource *)v4 setSelectionSnapshot:selectionSnapshot];

  draggedAssetReferences = [viewModel draggedAssetReferences];
  [(PXPhotosGridAssetDecorationSource *)v4 setDraggedAssetReferences:draggedAssetReferences];

  -[PXPhotosGridAssetDecorationSource setDurationAlwaysHidden:](v4, "setDurationAlwaysHidden:", [viewModel hidesDurationLabelBadge]);
  -[PXPhotosGridAssetDecorationSource setForbiddenBadges:](v4, "setForbiddenBadges:", [viewModel viewBasedDecorationsEnabled] << 63 >> 63);
  if ([viewModel alwaysShowTopBadges])
  {
    [(PXPhotosGridAssetDecorationSource *)v4 setForbiddenBadges:[(PXPhotosGridAssetDecorationSource *)v4 forbiddenBadges]& 0xFFFFFFDFFFFFFFFFLL];
  }

  if ([viewModel wantsAssetIndexBadge])
  {
    [(PXPhotosGridAssetDecorationSource *)v4 setForbiddenBadges:[(PXPhotosGridAssetDecorationSource *)v4 forbiddenBadges]& 0xFFFFDFFFFFFFFFFFLL];
  }

  if ([viewModel showSensitiveWarningBadges])
  {
    [(PXPhotosGridAssetDecorationSource *)v4 setForbiddenBadges:[(PXPhotosGridAssetDecorationSource *)v4 forbiddenBadges]& 0xFFDFFFFFFFFFFFFFLL];
    [(PXPhotosGridAssetDecorationSource *)v4 setForbiddenBadges:[(PXPhotosGridAssetDecorationSource *)v4 forbiddenBadges]& 0xFFFFFFFFFFFFFFDFLL];
  }

  -[PXPhotosGridAssetDecorationSource setWantsDimmedSelectionStyle:](v4, "setWantsDimmedSelectionStyle:", [viewModel wantsDimmedSelectionStyle]);
  -[PXPhotosGridAssetDecorationSource setWantsNumberedSelectionStyle:](v4, "setWantsNumberedSelectionStyle:", [viewModel wantsNumberedSelectionStyle]);
  -[PXPhotosGridAssetDecorationSource setWantsFileSizeBadge:](v4, "setWantsFileSizeBadge:", [viewModel wantsFileSizeBadge]);
  -[PXPhotosGridAssetDecorationSource setWantsAssetIndexBadge:](v4, "setWantsAssetIndexBadge:", [viewModel wantsAssetIndexBadge]);
  [(PXPhotosGridAssetDecorationSource *)v4 setWantsSharedLibraryDecorations:[(PXAssetsDataSource *)self->_currentDataSource libraryFilter]!= 1];
  containerCollection = [(PXAssetsDataSource *)self->_currentDataSource containerCollection];
  -[PXPhotosGridAssetDecorationSource setWantsSensitiveWarningDecorations:](v4, "setWantsSensitiveWarningDecorations:", [containerCollection px_canContainPotentiallySensitiveContent]);

  containerCollection2 = [(PXAssetsDataSource *)self->_currentDataSource containerCollection];
  -[PXPhotosGridAssetDecorationSource setWantsStacksDecorations:](v4, "setWantsStacksDecorations:", [containerCollection2 px_isAllPhotosSmartAlbum]);

  v9 = +[PXPhotosGridSettings sharedInstance];
  -[PXPhotosGridAssetDecorationSource setEnableDebugDecoration:](v4, "setEnableDebugDecoration:", [v9 enableStacksReviewUI]);

  primaryLayer = [(PXGZoomLayout *)self->_zoomLayout primaryLayer];
  itemsLayout = [primaryLayer itemsLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = itemsLayout;
  }

  else
  {
    v12 = 0;
  }

  [(PXPhotosGridAssetDecorationSource *)v4 setDecoratedLayout:v12];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_itemLayouts;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17++) invalidateDecoration];
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA78]);

  return v2;
}

- (void)_updateZoomTransforms
{
  oneColLayout = [(PXZoomablePhotosLayout *)self oneColLayout];
  [(PXZoomablePhotosLayout *)self visibleRect];
  x = self->_normalizedScaleCenterInAnchorSprite.x;
  y = self->_normalizedScaleCenterInAnchorSprite.y;
  v7 = self->_visualAnchorAssetReferenceItemByLayout;
  firstObject = [(NSArray *)self->_itemLayouts firstObject];
  [firstObject itemAspectRatio];
  v10 = v9;

  anchorAssetReference = [(PXZoomablePhotosLayout *)self anchorAssetReference];
  v12 = anchorAssetReference;
  if (anchorAssetReference)
  {
    [anchorAssetReference indexPath];
    v13 = v59;
    [oneColLayout frameForItem:v59];
    if (oneColLayout)
    {
      PXSizeGetAspectRatio();
      v10 = v14;
    }

    [(PXZoomablePhotosLayout *)self scaleCenterTargetInViewport];
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    viewModel = [(PXZoomablePhotosLayout *)self viewModel];
    v16 = viewModel;
    if (viewModel)
    {
      [viewModel zoomState];
    }

    else
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
    }

    v20 = [(NSArray *)self->_itemLayouts objectAtIndexedSubscript:v56];
    v21 = [(NSArray *)self->_itemLayouts objectAtIndexedSubscript:*(&v56 + 1)];
    rootLayout = [(PXZoomablePhotosLayout *)self rootLayout];
    [rootLayout safeAreaInsets];
    PXEdgeInsetsAdd();
    PXEdgeInsetsInvert();

    v23 = [(NSMapTable *)v7 objectForKey:v20];
    v24 = v23;
    if (v23)
    {
      [v23 indexPath];
      v25 = v51;
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosLayout.m" lineNumber:1995 description:{@"Invalid parameter not satisfying: %@", @"fromAssetReference != nil"}];

      v25 = 0;
      v50 = 0u;
      v51 = 0u;
    }

    [v20 frameForItem:v25];
    PXPointDenormalize();
    [v20 contentSize];
    PXEdgeInsetsInsetRect();
    PXRectShiftedInsideConstrainingRect();
    PXPointSubtract();
    v26 = [(NSMapTable *)v7 objectForKey:v21];
    v27 = v26;
    if (v26)
    {
      [v26 indexPath];
      v28 = v49;
    }

    else
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosLayout.m" lineNumber:2006 description:{@"Invalid parameter not satisfying: %@", @"toAssetReference != nil"}];

      v28 = 0;
      v48 = 0u;
      v49 = 0u;
    }

    [v21 frameForItem:v28];
    PXPointDenormalize();
    v19 = y;
    [v21 contentSize];
    PXEdgeInsetsInsetRect();
    PXRectShiftedInsideConstrainingRect();
    PXPointSubtract();
    PXPointByLinearlyInterpolatingPoints();
    PXPointAdd();
    v17 = v29;
    v18 = v30;
  }

  else
  {
    v17 = *MEMORY[0x277D3CFB0];
    v18 = *(MEMORY[0x277D3CFB0] + 8);
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = y;
  }

  sublayoutDataStore = [(PXGZoomLayout *)self->_zoomLayout sublayoutDataStore];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __47__PXZoomablePhotosLayout__updateZoomTransforms__block_invoke;
  v38[3] = &unk_2782990F0;
  v38[4] = self;
  v41 = v13;
  v32 = v7;
  v39 = v32;
  v42 = a2;
  v43 = x;
  v44 = v19;
  v33 = oneColLayout;
  v40 = v33;
  v45 = v10;
  v46 = v17;
  v47 = v18;
  [sublayoutDataStore enumerateSublayoutGeometriesUsingBlock:v38];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    inlineHeadersLayout = self->_inlineHeadersLayout;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __47__PXZoomablePhotosLayout__updateZoomTransforms__block_invoke_2;
    v37[3] = &unk_278299118;
    v37[4] = self;
    [(PXZoomableInlineHeadersLayout *)inlineHeadersLayout performChangesWithLocalUpdate:v37];
  }
}

void __47__PXZoomablePhotosLayout__updateZoomTransforms__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(*(a1 + 32) + 1064) sublayoutDataStore];
  v7 = [v6 sublayoutAtIndex:a2];
  v8 = [v7 itemsLayout];

  v33 = *(MEMORY[0x277D73D60] + 16);
  v34 = *MEMORY[0x277D73D60];
  *&v38.a = *MEMORY[0x277D73D60];
  *&v38.c = v33;
  v32 = *(MEMORY[0x277D73D60] + 32);
  *&v38.tx = v32;
  v9 = *(MEMORY[0x277D73D60] + 48);
  v10 = [*(*(a1 + 32) + 1408) containsObject:v8];
  v11 = v10;
  if (*(a1 + 56) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = [*(a1 + 40) objectForKey:v8];
  v13 = v12;
  if (v12)
  {
    [v12 indexPath];
    v14 = v37;
  }

  else
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"PXZoomablePhotosLayout.m" lineNumber:2029 description:{@"Invalid parameter not satisfying: %@", @"anchorAssetReference != nil"}];

    v14 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  [v8 frameForItem:v14];
  PXPointDenormalize();
  v16 = v15;
  v18 = v17;
  [v8 alpha];
  v19 = 1.0;
  v20 = 1.0;
  if (v21 != 0.0)
  {
    [*(a1 + 32) _scaleForLayout:v8];
    v19 = v22;
    v20 = v23;
  }

  if (v8 == *(a1 + 48))
  {
    PXSizeGetAspectRatio();
  }

  else
  {
    [v8 itemAspectRatio];
  }

  v26 = *(a1 + 88);
  v25 = *(a1 + 96);
  v27 = *(a1 + 104);
  *&v35.a = v34;
  *&v35.c = v33;
  *&v35.tx = v32;
  *&v39.a = v34;
  *&v39.c = v33;
  *&v39.tx = v32;
  v28 = v24 / v26;
  CGAffineTransformTranslate(&v35, &v39, v25, v27);
  v38 = v35;
  v39 = v35;
  CGAffineTransformScale(&v35, &v39, v19, v20 * v28);
  v38 = v35;
  v39 = v35;
  CGAffineTransformTranslate(&v35, &v39, -v16, -v18);
  v38 = v35;
  v29 = (([*(*(a1 + 32) + 1376) indexOfObject:v8] + 1) * 20.0);
  v35 = v38;
  v39 = v38;
  CGAffineTransformTranslate(&v35, &v39, 0.0, 0.0);
  v9 = v9 + 0.0 + v29;
  v38 = v35;

  if ((v11 & 1) == 0)
  {
LABEL_12:
    v35 = v38;
    v39 = v38;
    CGAffineTransformTranslate(&v35, &v39, 100000.0, 0.0);
    v9 = v9 + 0.0;
    v38 = v35;
  }

LABEL_13:
  v30 = *&v38.c;
  *(a3 + 72) = *&v38.a;
  *(a3 + 88) = v30;
  *(a3 + 104) = *&v38.tx;
  *(a3 + 120) = v9;
  [v8 numberOfColumns];
  [v8 alpha];
  kdebug_trace();
}

- (void)_updateBackgroundSprites
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  location = self->_lightBackgroundSpriteIndexRange.location;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sublayoutDataStore = [(PXGZoomLayout *)self->_zoomLayout sublayoutDataStore];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PXZoomablePhotosLayout__updateBackgroundSprites__block_invoke;
  v5[3] = &unk_278299168;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = &v10;
  [sublayoutDataStore enumerateSublayoutGeometriesUsingBlock:v5];

  if (v7[3] >= 2)
  {
    v4 = *(v11 + 6);
  }

  else
  {
    v4 = self->_lightBackgroundSpriteIndexRange.location;
    *(v11 + 6) = v4;
  }

  [(PXZoomablePhotosLayout *)self modifySpritesInRange:v4 | ((self->_lightBackgroundSpriteIndexRange.location - v4 + self->_lightBackgroundSpriteIndexRange.length) << 32) state:&__block_literal_global_195];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

void __50__PXZoomablePhotosLayout__updateBackgroundSprites__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(*(a1 + 32) + 1064) sublayoutDataStore];
  v7 = [v6 sublayoutAtIndex:a2];
  v8 = [v7 itemsLayout];

  [v8 alpha];
  if (v9 > 0.0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    [v8 interItemSpacing];
    if (v10 > 0.0 && ([*(a1 + 32) _layoutIsQuiteTransparent:v8] & 1) == 0)
    {
      if (*(*(*(a1 + 48) + 8) + 24) >= (*(*(a1 + 32) + 1108) + *(*(a1 + 32) + 1104)))
      {
        v22 = PXGridZeroGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v31.a) = 0;
          _os_log_impl(&dword_21ABF3000, v22, OS_LOG_TYPE_ERROR, "Not enough background sprites available to satisfy visible layers", &v31, 2u);
        }
      }

      else
      {
        v11 = *(a3 + 88);
        *&v29.a = *(a3 + 72);
        *&v29.c = v11;
        *&v29.tx = *(a3 + 104);
        v30 = *(a3 + 120);
        [v8 loadedItemsRect];
        v31 = v29;
        v33 = CGRectApplyAffineTransform(v32, &v31);
        x = v33.origin.x;
        y = v33.origin.y;
        width = v33.size.width;
        height = v33.size.height;
        [*(a1 + 32) displayScale];
        PXFloatRoundToPixel();
        v17 = -v16;
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        v35 = CGRectInset(v34, v17, v17);
        v18 = *(a1 + 32);
        v19 = *(*(*(a1 + 48) + 8) + 24);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __50__PXZoomablePhotosLayout__updateBackgroundSprites__block_invoke_2;
        v23[3] = &unk_278299140;
        v26 = v35;
        v28 = v30;
        v27 = v29;
        v20 = v8;
        v21 = *(a1 + 32);
        v24 = v20;
        v25 = v21;
        [v18 modifySpritesInRange:v19 | 0x100000000 state:v23];
        ++*(*(*(a1 + 48) + 8) + 24);
        v22 = v24;
      }
    }
  }
}

float __50__PXZoomablePhotosLayout__updateBackgroundSprites__block_invoke_2(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v20.origin.x = v9;
  v20.origin.y = v10;
  v20.size.width = v11;
  v20.size.height = v12;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = v9;
  v21.origin.y = v10;
  v21.size.width = v11;
  v21.size.height = v12;
  MidY = CGRectGetMidY(v21);
  v22.origin.x = v9;
  v22.origin.y = v10;
  v22.size.width = v11;
  v22.size.height = v12;
  Width = CGRectGetWidth(v22);
  v23.origin.x = v9;
  v23.origin.y = v10;
  v23.size.width = v11;
  v23.size.height = v12;
  Height = CGRectGetHeight(v23);
  v16.f64[0] = Width;
  v16.f64[1] = Height;
  *a3 = MidX;
  *&a3[1] = MidY;
  a3[2] = 0;
  a3[3] = vcvt_f32_f64(v16);
  *&a3[2] = *(a1 + 128) + 10.0;
  *(a4 + 52) = -1046478848;
  [*(a1 + 32) alpha];
  result = v17;
  *a4 = result;
  *(a5 + 32) = *(*(a1 + 40) + 1112);
  return result;
}

void __50__PXZoomablePhotosLayout__updateBackgroundSprites__block_invoke_193(uint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v5 = 0;
    v6 = vdupq_n_s64(v4 - 1);
    do
    {
      v7 = vdupq_n_s64(v5);
      v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_21AC7D610)));
      if (vuzp1_s16(v8, *v6.i8).u8[0])
      {
        *a4 = 0;
      }

      if (vuzp1_s16(v8, *&v6).i8[2])
      {
        a4[40] = 0;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_21AC7D600)))).i32[1])
      {
        a4[80] = 0;
        a4[120] = 0;
      }

      v5 += 4;
      a4 += 160;
    }

    while (((v4 + 3) & 0x1FFFFFFFCLL) != v5);
  }
}

- (void)_updateBlurEffect
{
  v3 = +[PXZoomablePhotosSettings sharedInstance];
  enableBlurEffect = [v3 enableBlurEffect];

  if (enableBlurEffect)
  {
    viewModel = [(PXZoomablePhotosLayout *)self viewModel];
    v6 = +[PXZoomablePhotosSettings sharedInstance];
    miniModeAnimator = [viewModel miniModeAnimator];
    enableBlurDebugLayers = [v6 enableBlurDebugLayers];
    entityManager = [(PXZoomablePhotosLayout *)self entityManager];
    firstObject = [(NSArray *)self->_blurEffects firstObject];
    entityManager2 = [firstObject entityManager];

    if (entityManager2 != entityManager)
    {
      p_blurEffectsSpriteIndexRange = &self->_blurEffectsSpriteIndexRange;
      if (!self->_blurEffectsSpriteIndexRange.length)
      {
        *p_blurEffectsSpriteIndexRange = [(PXZoomablePhotosLayout *)self addSpriteCount:5 withInitialState:&__block_literal_global_199];
      }

      if ([(NSArray *)self->_blurEffects count])
      {
        blurEffects = self->_blurEffects;
        self->_blurEffects = 0;
      }

      if (entityManager && [miniModeAnimator isActive])
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __43__PXZoomablePhotosLayout__updateBlurEffect__block_invoke_2;
        v51[3] = &unk_278299250;
        v51[4] = self;
        v52 = v14;
        v53 = enableBlurDebugLayers;
        v15 = *p_blurEffectsSpriteIndexRange;
        v16 = v14;
        [(PXZoomablePhotosLayout *)self modifySpritesInRange:v15 fullState:v51];
        v17 = [v16 copy];
        v18 = self->_blurEffects;
        self->_blurEffects = v17;

        axGroup = [(PXZoomablePhotosLayout *)self axGroup];
        [axGroup updateIfNeeded];
      }
    }

    v20 = self->_blurEffects;
    if ([(NSArray *)v20 count])
    {
      v21 = +[PXZoomablePhotosSettings sharedInstance];
      primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      if ([(PXZoomablePhotosLayout *)self _getMiniModeInfo:&v46 forLayout:primaryItemsLayout])
      {
        miniModeFoldedRows = [(PXZoomablePhotosLayout *)self miniModeFoldedRows];
        if ([miniModeFoldedRows count])
        {
          [primaryItemsLayout referenceSize];
          v25 = v24;
          v27 = v26;
          [v21 maxBlurRadius];
          v29 = v28;
          [v21 blurDimmingStrength];
          v31 = v30;
          [primaryItemsLayout rowHeight];
          if (v32 == 0.0)
          {
            v33 = *(&v47 + 1);
          }

          else
          {
            v33 = v32;
          }

          v34 = [miniModeFoldedRows count];
          v35 = v34 / 5;
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __43__PXZoomablePhotosLayout__updateBlurEffect__block_invoke_4;
          v36[3] = &unk_2782992A0;
          if (v34 / 5 <= 1)
          {
            v35 = 1;
          }

          v36[4] = self;
          v38 = v34;
          v39 = v35;
          v37 = miniModeFoldedRows;
          v40 = v29;
          v41 = v31;
          v42 = v25;
          v43 = v27;
          v44 = v33;
          v45 = enableBlurDebugLayers;
          [(PXZoomablePhotosLayout *)self modifySpritesInRange:*&self->_blurEffectsSpriteIndexRange fullState:v36];
        }
      }
    }
  }
}

- (void)_updatePinchEffect
{
  v50 = *MEMORY[0x277D85DE8];
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  lastObject = [(NSArray *)self->_layers lastObject];
  lastObject2 = [(NSArray *)self->_itemLayouts lastObject];
  [(PXZoomablePhotosLayout *)self _scaleForLayout:lastObject2];
  v7 = v6;
  entityManager = [(PXZoomablePhotosLayout *)self entityManager];
  entityManager2 = [(PXGEdgeStretchEffect *)self->_edgeStretchEffect entityManager];
  v10 = entityManager2;
  if (entityManager2 == entityManager)
  {
    spec = [(PXZoomablePhotosLayout *)self spec];
    allowPinchEffect = [spec allowPinchEffect];

    if (allowPinchEffect)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  viewModel2 = [(PXZoomablePhotosLayout *)self viewModel];
  if ([viewModel2 lowMemoryMode])
  {
    goto LABEL_13;
  }

  viewModel3 = [(PXZoomablePhotosLayout *)self viewModel];
  if (![viewModel3 enablePinchEffect])
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  spec2 = [(PXZoomablePhotosLayout *)self spec];
  if (![spec2 allowPinchEffect] || !entityManager || -[PXZoomablePhotosLayout appearState](self, "appearState") != 1)
  {

    goto LABEL_12;
  }

  v16 = +[PXZoomablePhotosSettings sharedInstance];
  rubberBandEffect = [v16 rubberBandEffect];

  if (rubberBandEffect == 1)
  {
    v17 = objc_alloc(MEMORY[0x277D73C88]);
    entityManager3 = [(PXZoomablePhotosLayout *)self entityManager];
    v19 = [v17 initWithEntityManager:entityManager3];
    edgeStretchEffect = self->_edgeStretchEffect;
    self->_edgeStretchEffect = v19;

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __44__PXZoomablePhotosLayout__updatePinchEffect__block_invoke;
    v48[3] = &unk_2782991D8;
    v48[4] = self;
    self->_pinchEffectCaptureSpriteIndex = [(PXZoomablePhotosLayout *)self addSpriteWithInitialState:v48];
    axGroup = [(PXZoomablePhotosLayout *)self axGroup];
    [axGroup updateIfNeeded];

    goto LABEL_16;
  }

LABEL_14:
  if (self->_pinchEffectCaptureSpriteIndex != -1)
  {
    v22 = self->_edgeStretchEffect;
    self->_edgeStretchEffect = 0;

    [(PXZoomablePhotosLayout *)self removeSpritesInRange:self->_pinchEffectCaptureSpriteIndex | 0x100000000];
    self->_pinchEffectCaptureSpriteIndex = -1;
  }

LABEL_16:
  v23 = self->_edgeStretchEffect;
  if (v23)
  {
    [(PXZoomablePhotosLayout *)self styleForSpriteAtIndex:self->_pinchEffectCaptureSpriteIndex];
    v24 = v49;
    isDisplayingIndividualItems = [viewModel isDisplayingIndividualItems];
    primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];

    if (isDisplayingIndividualItems)
    {
      v30 = 0;
    }

    else
    {
      v27 = 0.9999;
      v29 = v24 > 0.0 || primaryItemsLayout == lastObject2;
      v30 = v7 < 0.9999 && v29;
    }

    [(PXZoomablePhotosLayout *)self visibleRect];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    primaryItemsLayout2 = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
    if (v30)
    {
      itemsLayout = [lastObject itemsLayout];

      if (itemsLayout == primaryItemsLayout2)
      {
        v47 = 0;
        memset(&v46, 0, sizeof(v46));
        [(PXZoomablePhotosLayout *)self _spriteTransformForLayout:lastObject];
        v45 = v46;
        v51.origin.x = v32;
        v51.origin.y = v34;
        v51.size.width = v36;
        v51.size.height = v38;
        CGRectApplyAffineTransform(v51, &v45);
        PXPointSubtract();
        [(PXGEdgeStretchEffect *)v23 setSampleRect:?];
      }
    }

    pinchEffectCaptureSpriteIndex = self->_pinchEffectCaptureSpriteIndex;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __44__PXZoomablePhotosLayout__updatePinchEffect__block_invoke_3;
    v43[3] = &unk_278299200;
    v43[4] = self;
    v44 = v30;
    [(PXZoomablePhotosLayout *)self modifySpritesInRange:pinchEffectCaptureSpriteIndex | 0x100000000 state:v43];
  }
}

- (void)_updatePrefetching
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = +[PXZoomablePhotosSettings sharedInstance];
  primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
  loadedItems = [primaryItemsLayout loadedItems];
  v6 = loadedItems;
  v7 = v5;
  p_prefetchedForLoadedItems = &self->_prefetchedForLoadedItems;
  v10 = v5 == self->_prefetchedForLoadedItems.length && loadedItems == self->_prefetchedForLoadedItems.location || v5 == 0;
  selfCopy = self;
  if (!v10)
  {
    v11 = [(PXZoomablePhotosLayout *)self _layoutHasIndividualItems:primaryItemsLayout];
    v12 = (v6 - (v7 >> 1)) & ~((v6 - (v7 >> 1)) >> 63);
    v13 = [primaryItemsLayout numberOfItems] - 1;
    if (v13 >= (v7 + v6 + (v7 >> 1) - 1))
    {
      v13 = v7 + v6 + (v7 >> 1) - 1;
    }

    v14 = v13 - v12;
    v15 = MEMORY[0x277D3CD58];
    v16 = MEMORY[0x277CCAA78];
    v17 = self->_currentDataSource;
    v18 = [v16 indexSetWithIndexesInRange:{v12, v14 + 1}];
    v19 = [v15 indexPathSetWithItemIndexes:v18 dataSourceIdentifier:-[PXAssetsDataSource identifier](v17 section:{"identifier"), selfCopy->_sectionIndexPath.section}];

    [(PXAssetsDataSource *)v17 prefetchIndexPaths:v19 level:!v11];
    p_prefetchedForLoadedItems->location = v6;
    p_prefetchedForLoadedItems->length = v7;

    self = selfCopy;
  }

  if ([(PXZoomablePhotosLayout *)self scrollSpeedRegime])
  {
    v20 = 0;
  }

  else
  {
    v20 = ![(PXZoomablePhotosLayout *)self isAnimating];
  }

  if ([v3 preheatThumbnailsWhenIdle])
  {
    v21 = v7 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    [primaryItemsLayout numberOfColumns];
    [(PXZoomablePhotosLayout *)self referenceSize];
    [(PXZoomablePhotosLayout *)self displayScale];
    PXSizeScale();
    v23 = v22;
    v25 = v24;
    if ([(PXZoomablePhotosLayout *)self scrollSpeedRegime]> 2 || [(PXZoomablePhotosLayout *)self isAnimating])
    {
      [(PXMediaProvider *)self->_preheatMediaProvider preheatThumbnailDataForAssets:0 origin:0 targetSize:v23, v25];
    }

    else if (v20)
    {
      presentedDataSource = [(PXZoomablePhotosLayout *)self presentedDataSource];
      v60 = *&self->_sectionIndexPath.item;
      v85 = *&self->_sectionIndexPath.dataSourceIdentifier;
      v86 = v60;
      v61 = [presentedDataSource assetsInSectionIndexPath:&v85];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v62 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v6 + (v7 >> 1);
      }

      [(PXMediaProvider *)self->_preheatMediaProvider preheatThumbnailDataForAssets:v61 origin:v62 targetSize:v23, v25];
    }
  }

  if ((([v3 preheatDenserZoomLevels] != 0) & v20) == 1 && v7 != 0)
  {
    viewModel = [(PXZoomablePhotosLayout *)self viewModel];
    isInteractiveZoomingAllowed = [viewModel isInteractiveZoomingAllowed];

    if (isInteractiveZoomingAllowed)
    {
      presentedDataSource2 = [(PXZoomablePhotosLayout *)self presentedDataSource];
      v30 = *&self->_sectionIndexPath.item;
      v85 = *&self->_sectionIndexPath.dataSourceIdentifier;
      v86 = v30;
      v63 = presentedDataSource2;
      v66 = [presentedDataSource2 assetsInSectionIndexPath:&v85];
      [(PXZoomablePhotosLayout *)self referenceSize];
      v32 = v31;
      v34 = v33;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = self->_itemLayouts;
      v35 = [(NSArray *)obj countByEnumeratingWithState:&v81 objects:v87 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = v6 + (v7 >> 1);
        v72 = *v82;
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v37 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v67 = v37;
        v65 = v37 + 1;
        v64 = &self->super.super.super.isa + 1;
        v38 = -1;
        do
        {
          v39 = 0;
          v40 = self + 16 * v38;
          v70 = &v64[v38];
          do
          {
            if (*v82 != v72)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v81 + 1) + 8 * v39);
            if (![(PXZoomablePhotosLayout *)self _layoutHasIndividualItems:v41]&& v38 + v39 <= 8 && (v70[v39 + 1312] & 1) == 0)
            {
              numberOfColumns = [primaryItemsLayout numberOfColumns];
              if (numberOfColumns < [v41 numberOfColumns])
              {
                v43 = floor(v32 / [v41 numberOfColumns]);
                [(PXZoomablePhotosLayout *)self displayScale];
                PXSizeScale();
                v45 = v44;
                v47 = v46;
                if (v67 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  currentHandler = [MEMORY[0x277CCA890] currentHandler];
                  v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSRange PXRangeWithMidLocationAndPadding(NSInteger, NSInteger)"}];
                  [currentHandler handleFailureInFunction:v56 file:@"NSRange+PhotosUIFoundation.h" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"midLocation != NSNotFound"}];
                }

                v48 = vcvtpd_s64_f64(v32 / v43) * vcvtpd_s64_f64(v34 / v43);
                if ((v48 & 0x8000000000000000) != 0)
                {
                  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
                  v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSRange PXRangeWithMidLocationAndPadding(NSInteger, NSInteger)"}];
                  [currentHandler2 handleFailureInFunction:v58 file:@"NSRange+PhotosUIFoundation.h" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"padding >= 0"}];
                }

                v91.length = [v66 count];
                v89.location = (v67 - v48) & ~((v67 - v48) >> 63);
                v89.length = v65 + v48 - v89.location;
                v91.location = 0;
                v90 = NSIntersectionRange(v89, v91);
                location = v90.location;
                length = v90.length;
                v92.location = *(v40 + 146);
                v51 = *(v40 + 147);
                v92.length = v51;
                v52 = NSIntersectionRange(v90, v92).length / (v51 + 1) >= 0.9 || length == 0;
                self = selfCopy;
                if (!v52)
                {
                  *(v40 + 146) = location;
                  *(v40 + 147) = length;
                  v70[v39 + 1312] = 1;
                  preheatQueue = [MEMORY[0x277D3CD68] preheatQueue];
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __44__PXZoomablePhotosLayout__updatePrefetching__block_invoke;
                  block[3] = &unk_2782992F0;
                  v54 = v66;
                  v76 = location;
                  v77 = length;
                  v74 = v54;
                  v75 = selfCopy;
                  v78 = v45;
                  v79 = v47;
                  v80 = v38 + v39 + 1;
                  dispatch_async(preheatQueue, block);

                  self = selfCopy;
                }
              }
            }

            ++v39;
            v40 += 16;
          }

          while (v36 != v39);
          v38 += v39;
          v36 = [(NSArray *)obj countByEnumeratingWithState:&v81 objects:v87 count:16];
        }

        while (v36);
      }
    }
  }
}

- (void)_updateFloatingHeaderStyle
{
  [(PXZoomablePhotosLayout *)self effectiveOverlayInsets];
  v3 = PXEdgeInsetsEqualToEdgeInsets();
  [(PXZoomablePhotosLayout *)self visibleRect];

  [(PXZoomablePhotosLayout *)self setWantsOverBackgroundFloatingHeaderAppearance:(v4 < 1.0) & ~v3];
}

- (void)_updateDebugVisualizationSprites
{
  v4 = +[PXZoomablePhotosSettings sharedInstance];
  enableDebugSprites = [v4 enableDebugSprites];

  if (self->_debugVisualizationSpriteTitles)
  {
    if (enableDebugSprites)
    {
LABEL_3:
      v6 = [(NSArray *)self->_debugVisualizationSpriteTitles count];
      p_debugVisualizationSpriteIndexRange = &self->_debugVisualizationSpriteIndexRange;
      LODWORD(v8) = self->_debugVisualizationSpriteIndexRange.length;
      if (!v8)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __58__PXZoomablePhotosLayout__updateDebugVisualizationSprites__block_invoke;
        v15[3] = &unk_278299318;
        v16 = xmmword_21AC7D640;
        v15[4] = self;
        v9 = [(PXZoomablePhotosLayout *)self addSpriteCount:v6 withInitialState:v15];
        *p_debugVisualizationSpriteIndexRange = v9;
        v8 = HIDWORD(v9);
      }

      if (v8 != v6)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosLayout.m" lineNumber:2455 description:{@"Invalid parameter not satisfying: %@", @"_debugVisualizationSpriteIndexRange.length == spriteCount"}];
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __58__PXZoomablePhotosLayout__updateDebugVisualizationSprites__block_invoke_2;
      v12[3] = &unk_278299340;
      v14 = v6;
      v12[4] = self;
      v12[5] = a2;
      v13 = xmmword_21AC7D640;
      [(PXZoomablePhotosLayout *)self modifySpritesInRange:*p_debugVisualizationSpriteIndexRange state:v12];
      return;
    }
  }

  else
  {
    self->_debugVisualizationSpriteTitles = &unk_282C48258;
    if (enableDebugSprites)
    {
      goto LABEL_3;
    }
  }

  v10 = &self->_debugVisualizationSpriteIndexRange;
  if (self->_debugVisualizationSpriteIndexRange.length)
  {
    [(PXZoomablePhotosLayout *)self removeSpritesInRange:*v10];
    *v10 = *MEMORY[0x277D73D68];
  }
}

- (void)didUpdate
{
  v7.receiver = self;
  v7.super_class = PXZoomablePhotosLayout;
  [(PXGSplitLayout *)&v7 didUpdate];
  if (self->_preUpdateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXZoomablePhotosLayout.m" lineNumber:1194 description:{@"Invalid parameter not satisfying: %@", @"!_preUpdateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomablePhotosLayout didUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXZoomablePhotosLayout.m" lineNumber:1195 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (unint64_t)contentChangeTrend
{
  v7 = 0u;
  v6 = 0u;
  v3 = [(PXZoomablePhotosLayout *)self viewModel:0];
  v4 = v3;
  if (v3)
  {
    [v3 zoomState];
  }

  else
  {
    v7 = 0u;
    v6 = 0u;
  }

  if (![(PXZoomablePhotosLayout *)self isAnimating])
  {
    return 0;
  }

  if (BYTE9(v7))
  {
    return 3;
  }

  if (*(&v6 + 1) > 0.0)
  {
    return 1;
  }

  return 2;
}

- (void)appearStateDidChange
{
  v3.receiver = self;
  v3.super_class = PXZoomablePhotosLayout;
  [(PXZoomablePhotosLayout *)&v3 appearStateDidChange];
  if ([(PXZoomablePhotosLayout *)self appearState]== 1)
  {
    PXZoomablePhotosInvalidate(self, 786432);
  }
}

void __44__PXZoomablePhotosLayout__updatePinchEffect__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(MEMORY[0x277D73D58] + 16);
  *v4 = *MEMORY[0x277D73D58];
  v4[1] = v5;
  v6 = MEMORY[0x277D73D78];
  v7 = *(a3 + 24);
  v8 = *(MEMORY[0x277D73D78] + 16);
  *v7 = *MEMORY[0x277D73D78];
  v7[1] = v8;
  v9 = v6[5];
  v7[4] = v6[4];
  v7[5] = v9;
  v10 = v6[3];
  v7[2] = v6[2];
  v7[3] = v10;
  v11 = v6[9];
  v7[8] = v6[8];
  v7[9] = v11;
  v12 = v6[7];
  v7[6] = v6[6];
  v7[7] = v12;
  v13 = *(a3 + 32);
  v14 = MEMORY[0x277D73D70];
  *(v13 + 32) = *(MEMORY[0x277D73D70] + 32);
  v15 = v14[1];
  *v13 = *v14;
  *(v13 + 16) = v15;
  *(*(a3 + 32) + 1) = 9;
  v16 = **(a3 + 8);
  v17 = [*(a1 + 32) entityManager];
  v18 = [v17 effectComponent];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__PXZoomablePhotosLayout__updatePinchEffect__block_invoke_2;
  v19[3] = &unk_2782991B0;
  v20 = v16;
  v19[4] = *(a1 + 32);
  [v18 performChanges:v19];
}

void __44__PXZoomablePhotosLayout__updatePinchEffect__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1072);
  v4 = a2;
  LODWORD(v3) = [v3 effectId];
  v5 = [v4 mutableEffectIds];

  *(v5 + 4 * *(a1 + 40)) = v3;
}

void __44__PXZoomablePhotosLayout__updatePinchEffect__block_invoke_3(uint64_t a1, uint64_t a2, float32x2_t *a3, float *a4)
{
  [*(a1 + 32) visibleRect];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidY = CGRectGetMidY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v16 = CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v13 = CGRectGetHeight(v20);
  v14.f64[0] = v16;
  v14.f64[1] = v13;
  *a3 = MidX;
  *&a3[1] = MidY;
  a3[3] = vcvt_f32_f64(v14);
  a3[2] = 0xBFE0000000000000;
  v15 = 0.0;
  if (*(a1 + 40))
  {
    v15 = 1.0;
  }

  *a4 = v15;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[56].item;
  *&retstr->dataSourceIdentifier = *&self[56].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (CGPoint)normalizedScaleCenterInAnchorSprite
{
  x = self->_normalizedScaleCenterInAnchorSprite.x;
  y = self->_normalizedScaleCenterInAnchorSprite.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)inlineHeaderOverlayInsets
{
  top = self->_inlineHeaderOverlayInsets.top;
  left = self->_inlineHeaderOverlayInsets.left;
  bottom = self->_inlineHeaderOverlayInsets.bottom;
  right = self->_inlineHeaderOverlayInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)debugQuickLookObject
{
  v3 = [(NSArray *)self->_itemLayouts count];
  if (v3)
  {
    v3 = [PXZoomablePhotosLayout visualizeBestAnchorColumnsForLayouts:self->_itemLayouts imageWidth:1024.0];
  }

  return v3;
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  if ((change & 6) != 0)
  {
    presentedDataSource = [(PXZoomablePhotosLayout *)self presentedDataSource];
    identifier = [presentedDataSource identifier];

    section = self->_sectionIndexPath.section;
    v14 = identifier;
    PXGAXAddSimpleIndexPathGroupChangeUserInfo();
  }

  v12.receiver = self;
  v12.super_class = PXZoomablePhotosLayout;
  [(PXZoomablePhotosLayout *)&v12 axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXZoomablePhotosViewModelObserverContext == context)
  {
    if (changeCopy)
    {
      PXZoomablePhotosInvalidate(self, 720944);
    }

    if ((changeCopy & 6) != 0)
    {
      PXZoomablePhotosInvalidate(self, 720952);
    }

    if ((changeCopy & 2) != 0)
    {
      PXZoomablePhotosInvalidate(self, 512);
    }

    if ((*&changeCopy & 0x20010) != 0)
    {
      PXZoomablePhotosInvalidate(self, 520);
    }

    if ((changeCopy & 0x800) != 0)
    {
      PXZoomablePhotosInvalidate(self, 8);
      if ((changeCopy & 0x10000) == 0)
      {
LABEL_18:
        if ((changeCopy & 0x20000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if ((changeCopy & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    PXZoomablePhotosInvalidate(self, 2);
    if ((changeCopy & 0x20000000) == 0)
    {
LABEL_20:
      if ((changeCopy & 0x2660) != 0)
      {
        PXZoomablePhotosInvalidate(self, 512);
      }

      if ((changeCopy & 0x80000) != 0)
      {
        PXZoomablePhotosInvalidate(self, 8);
      }

      if ((*&changeCopy & 0xE00000) != 0)
      {
        PXZoomablePhotosInvalidate(self, 8);
      }

      if ((changeCopy & 0x1000000) != 0)
      {
        PXZoomablePhotosInvalidate(self, 0x100000);
      }

      if ((changeCopy & 0x8000000) == 0)
      {
        goto LABEL_33;
      }

LABEL_31:
      v9 = 128;
      goto LABEL_32;
    }

LABEL_19:
    PXZoomablePhotosInvalidate(self, 8);
    goto LABEL_20;
  }

  if (PXZoomablePhotosDataSourceObserverContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (PXZoomablePhotosSpecManagerObserverContext == context)
  {
    if (changeCopy)
    {
      v9 = 1;
      goto LABEL_32;
    }
  }

  else if (PXZoomablePhotosDecorationAlphaAnimatorContext == context)
  {
    if ((changeCopy & 3) != 0)
    {
      v9 = 64;
      goto LABEL_32;
    }
  }

  else
  {
    if (PXZoomablePhotosMiniModeAnimatorContext != context)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosLayout.m" lineNumber:3437 description:{@"%@ got unexpected observer context:%p", self, context}];

      abort();
    }

    if ((changeCopy & 7) != 0)
    {
      v9 = 4456544;
LABEL_32:
      PXZoomablePhotosInvalidate(self, v9);
    }
  }

LABEL_33:
}

- (unint64_t)behaviorForCaptureSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  location = self->_blurEffectsSpriteIndexRange.location;
  v6 = location > index;
  v5 = self->_blurEffectsSpriteIndexRange.length + location;
  return !v6 && v5 > index;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  superlayout = [layoutCopy superlayout];
  numberOfColumns = [superlayout numberOfColumns];
  objc_initWeak(&location, self);
  v8 = [PXPhotosGridAddButtonViewUserData alloc];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __64__PXZoomablePhotosLayout_viewUserDataForSpriteAtIndex_inLayout___block_invoke;
  v19 = &unk_278299458;
  objc_copyWeak(&v20, &location);
  v9 = [(PXPhotosGridAddButtonViewUserData *)v8 initWithStyle:numberOfColumns < 5 actionHandler:&v16];
  [superlayout itemCornerRadius];
  [(PXPhotosGridAddButtonViewUserData *)v9 setCornerRadius:fminf(fminf(v10, v11), fminf(v12, v13))];
  spec = [(PXZoomablePhotosLayout *)self spec];
  -[PXPhotosGridAddButtonViewUserData setPreferredUserInterfaceStyle:](v9, "setPreferredUserInterfaceStyle:", [spec preferredUserInterfaceStyle]);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v9;
}

void __64__PXZoomablePhotosLayout_viewUserDataForSpriteAtIndex_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callAddContentActionHandler];
}

- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout
{
  v17[5] = *MEMORY[0x277D85DE8];
  v4 = index - self->_debugVisualizationSpriteIndexRange.location;
  _debugColors = [(PXZoomablePhotosLayout *)self _debugColors];
  v6 = [_debugColors objectAtIndexedSubscript:{v4 % objc_msgSend(_debugColors, "count")}];
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v8 = [defaultParagraphStyle mutableCopy];

  [v8 setAlignment:1];
  v16[0] = *MEMORY[0x277D740A8];
  v9 = [MEMORY[0x277D74300] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x277D743F8]];
  v10 = *MEMORY[0x277D740C0];
  v17[0] = v9;
  v17[1] = v6;
  v11 = *MEMORY[0x277D74118];
  v16[1] = v10;
  v16[2] = v11;
  v17[2] = v8;
  v17[3] = &unk_282C48270;
  v12 = *MEMORY[0x277D74158];
  v16[3] = *MEMORY[0x277D74160];
  v16[4] = v12;
  blackColor = [MEMORY[0x277D75348] blackColor];
  v17[4] = blackColor;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  return v14;
}

- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout
{
  layout = [(NSArray *)self->_debugVisualizationSpriteTitles objectAtIndexedSubscript:index - self->_debugVisualizationSpriteIndexRange.location, layout];
  v5 = @"⌖";
  if (layout)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", @"⌖", layout];
  }

  return v5;
}

- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy == self)
  {
    lightBackgroundSpriteIndexRange = self->_lightBackgroundSpriteIndexRange;
    v12 = lightBackgroundSpriteIndexRange.location > index;
    v11 = lightBackgroundSpriteIndexRange.length + lightBackgroundSpriteIndexRange.location;
    v12 = !v12 && v11 > index;
    if (v12)
    {
      spec = [(PXZoomablePhotosLayout *)self spec];
      [spec defaultBackgroundColor];
    }

    else
    {
      spec = [(PXZoomablePhotosLayout *)self _debugColors];
      [spec objectAtIndexedSubscript:{index % objc_msgSend(spec, "count")}];
    }
    v9 = ;
  }

  else
  {
    spec = [(PXZoomablePhotosLayout *)self _debugColors];
    itemsLayout = [(PXZoomablePhotosLayout *)layoutCopy itemsLayout];
    v9 = [spec objectAtIndexedSubscript:{objc_msgSend(itemsLayout, "numberOfColumns") % objc_msgSend(spec, "count")}];
  }

  return v9;
}

- (id)_debugColors
{
  if (_debugColors_onceToken != -1)
  {
    dispatch_once(&_debugColors_onceToken, &__block_literal_global_255);
  }

  v3 = _debugColors_colors;

  return v3;
}

void __38__PXZoomablePhotosLayout__debugColors__block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
  for (i = 0; i != 10; ++i)
  {
    v1 = [MEMORY[0x277D75348] colorWithHue:i / 10.0 saturation:0.8 brightness:0.8 alpha:1.0];
    [v4 addObject:v1];
  }

  v2 = [v4 copy];
  v3 = _debugColors_colors;
  _debugColors_colors = v2;
}

- (BOOL)useLowMemoryDecodeInLayout:(id)layout
{
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  useLowMemoryDecode = [viewModel useLowMemoryDecode];

  return useLowMemoryDecode;
}

- (id)customPixelBufferSourcesProviderForDisplayAssetsInLayout:(id)layout
{
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  inlinePlaybackController = [viewModel inlinePlaybackController];

  return inlinePlaybackController;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout
{
  layoutCopy = layout;
  v6 = [layoutCopy itemForSpriteIndex:0];
  numberOfItems = [layoutCopy numberOfItems];

  v8 = numberOfItems - v6;
  v9 = self->_cachedClampedItemRange.location == v6 && self->_cachedClampedItemRange.length == v8;
  if (v9 && (cachedClampedFetchResult = self->_cachedClampedFetchResult) != 0)
  {
    v11 = cachedClampedFetchResult;
  }

  else
  {
    currentDataSource = self->_currentDataSource;
    v13 = *&self->_sectionIndexPath.item;
    v16[0] = *&self->_sectionIndexPath.dataSourceIdentifier;
    v16[1] = v13;
    v14 = [(PXAssetsDataSource *)currentDataSource assetsInSectionIndexPath:v16];
    v11 = PXDisplayAssetFetchResultSubfetchResultWithRange();
    objc_storeStrong(&self->_cachedClampedFetchResult, v11);
    self->_cachedClampedItemRange.location = v6;
    self->_cachedClampedItemRange.length = v8;
  }

  return v11;
}

- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)style
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (unint64_t)desiredPlaceholderStyleInLayout:(id)layout
{
  if ([(PXZoomablePhotosLayout *)self isAnimating])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)supportedDisplayAssetPresentationStylesInLayout:(id)layout
{
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  inlinePlaybackController = [viewModel inlinePlaybackController];
  maxNumberOfPlayingItems = [inlinePlaybackController maxNumberOfPlayingItems];

  if (maxNumberOfPlayingItems < 1)
  {
    isDisplayingIndividualItems = 0;
  }

  else
  {
    viewModel2 = [(PXZoomablePhotosLayout *)self viewModel];
    isDisplayingIndividualItems = [viewModel2 isDisplayingIndividualItems];
  }

  v9 = +[PXZoomablePhotosSettings sharedInstance];
  enableInlineVideo = [v9 enableInlineVideo];

  v11 = +[PXZoomablePhotosSettings sharedInstance];
  enableInlineSpatialPhoto = [v11 enableInlineSpatialPhoto];

  if (enableInlineSpatialPhoto)
  {
    viewModel3 = [(PXZoomablePhotosLayout *)self viewModel];
    inlinePlaybackController2 = [viewModel3 inlinePlaybackController];
    isSpatialPhotoPlaybackEnabled = [inlinePlaybackController2 isSpatialPhotoPlaybackEnabled];

    v16 = 3;
    if ((enableInlineVideo & isDisplayingIndividualItems) == 0)
    {
      v16 = 1;
    }

    if (isSpatialPhotoPlaybackEnabled & isDisplayingIndividualItems)
    {
      return v16 | 0x10;
    }

    else
    {
      return v16;
    }
  }

  else if ((enableInlineVideo & isDisplayingIndividualItems) != 0)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)zoomablePhotosViewModelResetToInitialState:(id)state
{
  if ([(PXZoomablePhotosLayout *)self _hasLastRowFilledStrategy])
  {
    self->_performedInitialVisualShift = 0;

    PXZoomablePhotosInvalidate(self, 256);
  }
}

- (BOOL)zoomablePhotosViewModelIsResetToInitialState:(id)state
{
  if ([(PXZoomablePhotosLayout *)self _hasLastRowFilledStrategy])
  {
    primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
    v8 = 0;
    v9 = 0;
    [(PXZoomablePhotosLayout *)self getLastItem:&v9 lastColumn:&v8 forBodyLayout:primaryItemsLayout];
    v5 = [primaryItemsLayout columnForItem:v9];
    v6 = !self->_performedInitialVisualShift || v5 == v8;
  }

  else
  {
    return 1;
  }

  return v6;
}

- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  enumeratorCopy = enumerator;
  height = [(PXZoomablePhotosLayout *)self _rangeOfItemsForContentInRect:x, y, width, height];
  if (height != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v11;
    if (v11)
    {
      v13 = height;
      v14 = self->_currentDataSource;
      identifier = [(PXAssetsDataSource *)v14 identifier];
      section = self->_sectionIndexPath.section;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __59__PXZoomablePhotosLayout_enumerateAssetsInRect_enumerator___block_invoke;
      v20[3] = &unk_278299430;
      v21 = v14;
      selfCopy = self;
      v23 = enumeratorCopy;
      v19[0] = identifier;
      v19[1] = section;
      v19[2] = v13;
      v19[3] = 0x7FFFFFFFFFFFFFFFLL;
      v18[0] = identifier;
      v18[1] = section;
      v18[2] = v12 + v13 - 1;
      v18[3] = 0x7FFFFFFFFFFFFFFFLL;
      v17 = v14;
      [(PXAssetsDataSource *)v17 enumerateItemIndexPathsStartingAtIndexPath:v19 untilEndIndexPath:v18 usingBlock:v20];
    }
  }
}

void __59__PXZoomablePhotosLayout_enumerateAssetsInRect_enumerator___block_invoke(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 32);
  v5 = a2[1];
  v13 = *a2;
  v14 = v5;
  v6 = [v4 assetAtItemIndexPath:&v13];
  v7 = [*(a1 + 40) primaryItemsLayout];
  v8 = [v7 spriteIndexForItem:*(a2 + 2)];
  if (v7)
  {
    [v7 geometryForSpriteAtIndex:v8];
    v9 = *(&v14 + 8);
    v11 = *(&v13 + 1);
    v10 = *&v13;
  }

  else
  {
    v9 = 0;
    v11 = 0.0;
    v10 = 0.0;
  }

  v12 = vmul_f32(v9, 0x3F0000003F000000);
  (*(*(a1 + 48) + 16))(v10 - v12.f32[0], v11 - v12.f32[1], v9.f32[0], v9.f32[1]);
}

- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  enumeratorCopy = enumerator;
  if ([(PXZoomablePhotosLayout *)self _rangeOfItemsForContentInRect:x, y, width, height]!= 0x7FFFFFFFFFFFFFFFLL && v10)
  {
    currentDataSource = self->_currentDataSource;
    v12 = *&self->_sectionIndexPath.item;
    v15[0] = *&self->_sectionIndexPath.dataSourceIdentifier;
    v15[1] = v12;
    v13 = [(PXAssetsDataSource *)currentDataSource assetCollectionAtSectionIndexPath:v15];
    primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
    [primaryItemsLayout visibleRect];
    enumeratorCopy[2](enumeratorCopy, v13, primaryItemsLayout);
  }
}

- (id)locationNamesFutureForContentInRect:(CGRect)rect
{
  v4 = [(PXZoomablePhotosLayout *)self _rangeOfItemsForContentInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5) == 0)
  {
    lastReturnedLocationNames = self->_lastReturnedLocationNames;
  }

  else
  {
    v7 = v4;
    if (![(PXZoomablePhotosLayout *)self isAnimating]|| (lastReturnedLocationNames = self->_lastReturnedLocationNames) == 0)
    {
      v9 = self->_currentDataSource;
      v10 = [(PXAssetsDataSource *)v9 numberOfItemsInSection:self->_sectionIndexPath.section];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __62__PXZoomablePhotosLayout_locationNamesFutureForContentInRect___block_invoke;
      v21[3] = &unk_2782993E0;
      v11 = v22;
      v22[0] = v9;
      v22[1] = self;
      v22[2] = v7;
      v22[3] = v6;
      v23 = v7 + v6 == v10;
      v12 = v9;
      v13 = v21;
      goto LABEL_8;
    }
  }

  v14 = lastReturnedLocationNames;
  lastReturnedLocationNamesDataSourceIdentifier = self->_lastReturnedLocationNamesDataSourceIdentifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__PXZoomablePhotosLayout_locationNamesFutureForContentInRect___block_invoke_3;
  v19[3] = &unk_278299408;
  v11 = v20;
  v20[0] = v14;
  v20[1] = lastReturnedLocationNamesDataSourceIdentifier;
  v12 = v14;
  v13 = v19;
LABEL_8:
  v16 = [v13 copy];

  v17 = _Block_copy(v16);

  return v17;
}

id __62__PXZoomablePhotosLayout_locationNamesFutureForContentInRect___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) identifier] == a2)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA940]);
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 1800);
    v7 = *(a1 + 48);
    v8 = v7 + *(a1 + 56) - 1;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__PXZoomablePhotosLayout_locationNamesFutureForContentInRect___block_invoke_2;
    v16[3] = &unk_2782993B8;
    v17 = v5;
    v9 = v4;
    v18 = v9;
    v15[0] = a2;
    v15[1] = v6;
    v15[2] = v7;
    v15[3] = 0x7FFFFFFFFFFFFFFFLL;
    v14[0] = a2;
    v14[1] = v6;
    v14[2] = v8;
    v14[3] = 0x7FFFFFFFFFFFFFFFLL;
    [v17 enumerateItemIndexPathsStartingAtIndexPath:v15 untilEndIndexPath:v14 usingBlock:v16];
    v10 = PXArrayFromFrequencySortAndDeduplicationOfNSStringSet();
    v11 = v10;
    if ((*(a1 + 64) & 1) == 0 && [v10 count] >= 2)
    {
      v12 = [v11 subarrayWithRange:{0, 1}];

      v11 = v12;
    }

    objc_storeStrong((*(a1 + 40) + 1440), v11);
    *(*(a1 + 40) + 1448) = a2;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __62__PXZoomablePhotosLayout_locationNamesFutureForContentInRect___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == a2)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __62__PXZoomablePhotosLayout_locationNamesFutureForContentInRect___block_invoke_2(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = [v3 assetAtItemIndexPath:v8];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 localizedGeoDescription];
    if (v6)
    {
      v7 = v6;
      [*(a1 + 40) addObject:v6];
    }
  }
}

- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (![(PXZoomablePhotosLayout *)self _layoutWantsSingleDateTitle])
  {
    height = [(PXZoomablePhotosLayout *)self _rangeOfItemsForContentInRect:x, y, width, height];
    v12 = v18;
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_7:
    lastReturnedDateInterval = self->_lastReturnedDateInterval;
    goto LABEL_8;
  }

  PXEdgeInsetsMake();
  PXEdgeInsetsInsetRect();
  height = [(PXZoomablePhotosLayout *)self _rangeOfItemsForContentInRect:?];
  v12 = v11 != 0;
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (![(PXZoomablePhotosLayout *)self isAnimating]|| (lastReturnedDateInterval = self->_lastReturnedDateInterval) == 0)
  {
    v14 = self->_currentDataSource;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __66__PXZoomablePhotosLayout_dateIntervalFutureForContentInRect_type___block_invoke;
    v26[3] = &unk_278299368;
    v15 = v27;
    v27[2] = height;
    v27[3] = v12;
    v27[0] = v14;
    v27[1] = self;
    v27[4] = type;
    v16 = v14;
    v17 = v26;
    goto LABEL_9;
  }

LABEL_8:
  v19 = lastReturnedDateInterval;
  lastReturnedDateIntervalDataSourceIdentifier = self->_lastReturnedDateIntervalDataSourceIdentifier;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__PXZoomablePhotosLayout_dateIntervalFutureForContentInRect_type___block_invoke_2;
  v24[3] = &unk_278299390;
  v15 = v25;
  v25[0] = v19;
  v25[1] = lastReturnedDateIntervalDataSourceIdentifier;
  v16 = v19;
  v17 = v24;
LABEL_9:
  v21 = [v17 copy];

  v22 = _Block_copy(v21);

  return v22;
}

id __66__PXZoomablePhotosLayout_dateIntervalFutureForContentInRect_type___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) identifier] == a2)
  {
    v4 = *(a1 + 48);
    if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = *(a1 + 56)) == 0)
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(*(a1 + 40) + 1800);
      v8 = v4 + v5 - 1;
      v27 = a2;
      v28 = v7;
      v29 = v4;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      v9 = [v6 assetAtItemIndexPath:&v27];
      v10 = *(a1 + 32);
      v27 = a2;
      v28 = v7;
      v29 = v8;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = [v10 assetAtItemIndexPath:&v27];
      if (*(a1 + 64) == 1)
      {
        [v9 importDate];
      }

      else
      {
        [v9 creationDate];
      }
      v15 = ;
      if (*(a1 + 64) == 1)
      {
        [v11 importDate];
      }

      else
      {
        [v11 creationDate];
      }
      v16 = ;
      v25 = 0;
      v26 = 0;
      [MEMORY[0x277CBEAA8] px_unionStartDate:&v26 endDate:&v25 withDate:v15];
      v17 = v26;
      v18 = v25;
      v23 = v18;
      v24 = v17;
      [MEMORY[0x277CBEAA8] px_unionStartDate:&v24 endDate:&v23 withDate:v16];
      v14 = v24;

      v13 = v23;
    }

    v19 = +[PXZoomablePhotosSettings sharedInstance];
    v20 = [v19 titleUseDateRange];

    if ((v20 & 1) == 0)
    {
      v21 = v14;

      v13 = v21;
    }

    v12 = 0;
    if (v14 && v13)
    {
      v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v13];
    }

    objc_storeStrong((*(a1 + 40) + 1424), v12);
    *(*(a1 + 40) + 1432) = a2;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __66__PXZoomablePhotosLayout_dateIntervalFutureForContentInRect_type___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == a2)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_NSRange)_rangeOfItemsForContentInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
  v9 = primaryItemsLayout;
  if (!primaryItemsLayout || (v10 = [primaryItemsLayout numberOfColumns], -[PXZoomablePhotosLayout spec](self, "spec"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "maxColumnsForIndividualItems"), v11, v10 > v12) || (-[PXZoomablePhotosLayout convertRect:toDescendantLayout:](self, "convertRect:toDescendantLayout:", v9, x, y, width, height), CGRectIsNull(v19)) || (PXPointIsNull() & 1) != 0)
  {
    v13 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    [v9 contentSize];
    [v9 contentSize];
    PXRectShiftedInsideConstrainingRect();
    v14 = [v9 itemRangeInRect:?];
    v13 = v17;
  }

  v15 = v14;
  v16 = v13;
  result.length = v16;
  result.location = v15;
  return result;
}

- (CGRect)boundsForLevel:(unint64_t)level
{
  [(PXZoomablePhotosContentLayout *)self->_itemLayoutByHeaderLevel[level] contentSize];
  v4 = v3;
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  result.size.height = v6;
  result.size.width = v4;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)frameForItemAtIndexPath:(PXSimpleIndexPath *)path level:(unint64_t)level
{
  v4 = [(PXZoomablePhotosContentLayout *)self->_itemLayoutByHeaderLevel[level] frameForItem:path->item];
  v12.n128_u64[0] = v8.n128_u64[0];
  v5 = v9.n128_u64[0];
  v6 = v10.n128_u64[0];
  v7 = v11.n128_u64[0];
  v8.n128_u64[0] = 1.0;
  v9.n128_u64[0] = v12.n128_u64[0];
  v10.n128_u64[0] = v5;
  v11.n128_u64[0] = v6;
  v12.n128_u64[0] = v7;

  MEMORY[0x28219D358](v4, v8, v9, v10, v11, v12);
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_displayFaceForItem:(int64_t)item
{
  v5 = self->_currentDataSource;
  identifier = [(PXAssetsDataSource *)v5 identifier];
  section = self->_sectionIndexPath.section;
  v10[0] = identifier;
  v10[1] = section;
  v10[2] = item;
  v10[3] = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [(PXAssetsDataSource *)v5 primaryFaceForAssetAtItemIndexPath:v10];

  return v8;
}

- (id)_displayAssetForItem:(int64_t)item
{
  v5 = self->_currentDataSource;
  identifier = [(PXAssetsDataSource *)v5 identifier];
  section = self->_sectionIndexPath.section;
  v10[0] = identifier;
  v10[1] = section;
  v10[2] = item;
  v10[3] = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [(PXAssetsDataSource *)v5 assetAtItemIndexPath:v10];

  return v8;
}

- (CGSize)itemsLayout:(id)layout insetForItem:(int64_t)item
{
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  if ([viewModel aspectFit])
  {
    v7 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    assetDecorationSource = [(PXZoomablePhotosLayout *)self assetDecorationSource];
    [assetDecorationSource expectedInsetsForItem:item];
    v7 = v10;
    v8 = v11;
  }

  v12 = v7;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)itemsLayout:(id)layout updateTagsInSpriteInfos:(id *)infos forItemsInRange:(_NSRange)range
{
  [(PXAssetsDataSource *)self->_currentDataSource identifier];

  PXUpdateSectionedSpriteInfoTagsForItemsInRange();
}

- (unsigned)itemsLayout:(id)layout effectIdForItem:(int64_t)item
{
  v5 = [(PXZoomablePhotosLayout *)self _displayAssetForItem:item];
  v6 = [(NSCache *)self->_providedEffectByAsset objectForKey:v5];
  entityManager = [v6 entityManager];
  entityManager2 = [(PXZoomablePhotosLayout *)self entityManager];

  if (entityManager != entityManager2)
  {
    [(NSCache *)self->_providedEffectByAsset removeObjectForKey:v5];

    v6 = 0;
  }

  effectId = [v6 effectId];
  if (effectId)
  {
    effectId2 = effectId;
  }

  else
  {
    effectProvider = [(PXZoomablePhotosLayout *)self effectProvider];

    if (!effectProvider || (-[PXZoomablePhotosLayout effectProvider](self, "effectProvider"), v13 = objc_claimAutoreleasedReturnValue(), -[PXZoomablePhotosLayout entityManager](self, "entityManager"), v14 = objc_claimAutoreleasedReturnValue(), (v13)[2](v13, v14, v5), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, !v15) || (-[NSCache setObject:forKey:](self->_providedEffectByAsset, "setObject:forKey:", v15, v5), effectId2 = [v15 effectId], v15, !effectId2))
    {
      if ([v5 representsBurst])
      {
        burstStackEffect = [(PXZoomablePhotosLayout *)self burstStackEffect];
        effectId2 = [burstStackEffect effectId];
      }

      else
      {
        effectId2 = 0;
      }
    }
  }

  return effectId2;
}

- (CGRect)itemsLayout:(id)layout bestCropRectForItem:(int64_t)item withAspectRatio:(double)ratio
{
  v8 = [(PXZoomablePhotosLayout *)self _displayAssetForItem:item];
  v9 = *MEMORY[0x277CBF398];
  v10 = *(MEMORY[0x277CBF398] + 8);
  v11 = *(MEMORY[0x277CBF398] + 16);
  v12 = *(MEMORY[0x277CBF398] + 24);
  if (([v8 representsBurst] & 1) == 0)
  {
    viewModel = [(PXZoomablePhotosLayout *)self viewModel];
    preferredAssetCropDelegate = [viewModel preferredAssetCropDelegate];

    if (preferredAssetCropDelegate)
    {
      [preferredAssetCropDelegate preferredCropForAsset:v8 withAspectRatio:ratio];
      v9 = v15;
      v10 = v16;
      v11 = v17;
      v12 = v18;
    }

    else
    {
      viewModel2 = [(PXZoomablePhotosLayout *)self viewModel];
      isFaceModeEnabled = [viewModel2 isFaceModeEnabled];

      if (isFaceModeEnabled)
      {
        v21 = [(PXZoomablePhotosLayout *)self _displayFaceForItem:item];
        v22 = v21;
        if (v21)
        {
          [v21 normalizedCropRect];
          v9 = v23;
          v10 = v24;
          v11 = v25;
          v12 = v26;
        }
      }
    }

    v35.origin.x = v9;
    v35.origin.y = v10;
    v35.size.width = v11;
    v35.size.height = v12;
    if (CGRectIsEmpty(v35))
    {
      PXGBestCropRectForDisplayAsset();
      v9 = v27;
      v10 = v28;
      v11 = v29;
      v12 = v30;
    }
  }

  v36.origin.x = v9;
  v36.origin.y = v10;
  v36.size.width = v11;
  v36.size.height = v12;
  if (CGRectIsEmpty(v36))
  {
    v9 = *MEMORY[0x277D3CFC0];
    v10 = *(MEMORY[0x277D3CFC0] + 8);
    v11 = *(MEMORY[0x277D3CFC0] + 16);
    v12 = *(MEMORY[0x277D3CFC0] + 24);
  }

  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (double)itemsLayout:(id)layout aspectRatioForItem:(int64_t)item
{
  v4 = [(PXZoomablePhotosLayout *)self _displayAssetForItem:item];
  [v4 aspectRatio];
  v6 = v5;

  return v6;
}

- (id)itemsLayout:(id)layout objectReferenceForItem:(int64_t)item
{
  v6 = self->_currentDataSource;
  identifier = [(PXAssetsDataSource *)v6 identifier];
  section = self->_sectionIndexPath.section;
  v11[0] = identifier;
  v11[1] = section;
  v11[2] = item;
  v11[3] = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [(PXAssetsDataSource *)v6 objectReferenceAtIndexPath:v11];

  return v9;
}

- (int64_t)itemsLayout:(id)layout itemForObjectReference:(id)reference options:(unint64_t)options
{
  optionsCopy = options;
  referenceCopy = reference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyAssetReference = referenceCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    keyAssetReference = [referenceCopy keyAssetReference];
  }

  v9 = keyAssetReference;
  if (!keyAssetReference)
  {
    goto LABEL_15;
  }

  if (optionsCopy)
  {
    v10 = [(PXAssetsDataSource *)self->_currentDataSource objectReferenceNearestToObjectReference:keyAssetReference];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      if (!v10)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  v10 = v9;
LABEL_12:
  currentDataSource = self->_currentDataSource;
  if (currentDataSource)
  {
    [(PXAssetsDataSource *)currentDataSource indexPathForAssetReference:v10];
  }

LABEL_15:
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_ensureZoomingAnchor
{
  if ([(PXGAnchor *)self->_anchor canBeReused])
  {
    rootLayout = [(PXZoomablePhotosLayout *)self rootLayout];
    rootLayout2 = [rootLayout createAnchorWithAnchor:self->_anchor];
    autoInvalidate = [rootLayout2 autoInvalidate];
    anchor = self->_anchor;
    self->_anchor = autoInvalidate;
  }

  else
  {
    anchorAssetReference = [(PXZoomablePhotosLayout *)self anchorAssetReference];

    if (!anchorAssetReference)
    {
      return;
    }

    anchorAssetReference2 = [(PXZoomablePhotosLayout *)self anchorAssetReference];
    rootLayout = [(PXZoomablePhotosLayout *)self dynamicSpriteReferenceForObjectReference:anchorAssetReference2];

    rootLayout2 = [(PXZoomablePhotosLayout *)self rootLayout];
    [(PXZoomablePhotosLayout *)self scaleCenterTargetInViewport];
    anchor = [rootLayout2 createAnchorForScrollingSpriteForSpriteReference:rootLayout normalizedAnchorPoint:self->_normalizedScaleCenterInAnchorSprite.x toVisibleLocation:{self->_normalizedScaleCenterInAnchorSprite.y, v8, v9}];
    autoInvalidate2 = [anchor autoInvalidate];
    v11 = self->_anchor;
    self->_anchor = autoInvalidate2;
  }
}

- ($8F6F21C65DCD0A0F8AC24DFE540A6236)_spriteTransformForLayout:(SEL)layout
{
  v6 = a4;
  v7 = MEMORY[0x277D73D60];
  v8 = *(MEMORY[0x277D73D60] + 16);
  *&retstr->var0.a = *MEMORY[0x277D73D60];
  *&retstr->var0.c = v8;
  *&retstr->var0.tx = *(v7 + 32);
  retstr->var1 = *(v7 + 48);
  superlayout = [v6 superlayout];

  if (superlayout)
  {
    memset(v13, 0, sizeof(v13));
    v10 = [(PXGZoomLayout *)self->_zoomLayout sublayoutDataStore:0];
    v11 = v10;
    if (v10)
    {
      [v10 geometryForSublayout:v6];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    *&retstr->var0.a = *(v13 + 8);
    *&retstr->var0.c = *(&v13[1] + 8);
    *&retstr->var0.tx = *(&v13[2] + 8);
    retstr->var1 = *(&v13[3] + 1);
  }

  return result;
}

- (void)_performAnchorAlignmentVisualShiftWithBaseLayout:(id)layout
{
  v63 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if ((PXPointIsValid() & 1) == 0)
  {
    v4 = PXAssertGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21ABF3000, v4, OS_LOG_TYPE_ERROR, "This value should be set to PXPointNull when not relevant", buf, 2u);
    }
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *buf = 0u;
  v57 = 0u;
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  v6 = viewModel;
  if (viewModel)
  {
    [viewModel zoomState];
  }

  else
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *buf = 0u;
    v57 = 0u;
  }

  anchorAssetReference = [(PXZoomablePhotosLayout *)self anchorAssetReference];
  v8 = anchorAssetReference;
  if (anchorAssetReference)
  {
    [anchorAssetReference indexPath];
    v9 = v55;
  }

  else
  {
    v9 = 0;
    v55 = 0u;
    v54 = 0u;
  }

  y = 0.5;
  x = 0.5;
  if ((PXPointIsNull() & 1) == 0)
  {
    x = self->_normalizedScaleCenterInAnchorSprite.x;
    y = self->_normalizedScaleCenterInAnchorSprite.y;
  }

  v12 = *&v61 + v60 - *(&v58 + 1);
  v13 = self->_itemLayouts;
  v14 = [(NSArray *)v13 count];
  v15 = layoutCopy;
  numberOfColumns = [layoutCopy numberOfColumns];
  v51 = 0;
  selfCopy = self;
  if (numberOfColumns == 1 && v14 > 1)
  {
    v17 = [(NSArray *)v13 objectAtIndexedSubscript:1];
    v18 = [(PXZoomablePhotosLayout *)self _isAllowedToShiftItem:v9 inLayout:v17];

    if (v18)
    {
      v51 = 0;
    }

    else
    {
      v51 = 1;
      v19 = [(NSArray *)v13 objectAtIndexedSubscript:1];
      v20 = [v19 columnForItem:v9];
      numberOfColumns2 = [v19 numberOfColumns];
      x = (1.0 / numberOfColumns2 * 0.5 + v20 * (1.0 / numberOfColumns2) + 1.0 / numberOfColumns2 * -0.5) / (1.0 - 1.0 / numberOfColumns2);
    }
  }

  v42 = &v42;
  MEMORY[0x28223BE20](numberOfColumns);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  [PXZoomablePhotosLayout getBestAnchorColumns:v23 forItemLayouts:v13 startingAtBaseLayout:v15 anchorItem:v9 normalizedScaleCenterInAnchor:x biasTowardsCenter:y, v42];
  v24 = +[PXZoomablePhotosSettings sharedInstance];
  enableCrossfadeFallback = [v24 enableCrossfadeFallback];

  if (v14 >= 1)
  {
    v26 = 0;
    p_updateFlags = &selfCopy->super.super._updateFlags;
    v43 = v12 < 1.5;
    v27 = enableCrossfadeFallback ^ 1;
    v50 = v13;
    v47 = v14;
    v46 = v23;
    v49 = v8;
    v44 = enableCrossfadeFallback ^ 1;
    do
    {
      v28 = [(NSArray *)v13 objectAtIndexedSubscript:v26];
      v29 = *&v23[8 * v26];
      v30 = v8;
      if (v51)
      {
        v31 = [v28 numberOfColumns] == 3;
      }

      else
      {
        v31 = 0;
      }

      if (v28 == v15)
      {
        if (((v31 | v27 | v43) & 1) == 0)
        {
LABEL_27:
          v32 = [v28 columnForItem:v9];
          v33 = (v29 + v9 - v32) & ~((v29 + v9 - v32) >> 63);
          v34 = v9;
          v35 = selfCopy;
          v36 = p_updateFlags;
          v37 = [(PXAssetsDataSource *)selfCopy->_currentDataSource numberOfItemsInSection:*&p_updateFlags[74].isPerformingUpdate];
          if (v33 >= v37 - 1)
          {
            v33 = v37 - 1;
          }

          if (v33 != v34)
          {
            currentDataSource = v35->_currentDataSource;
            identifier = [(PXAssetsDataSource *)currentDataSource identifier];
            v40 = *&v36[74].isPerformingUpdate;
            v53[0] = identifier;
            v53[1] = v40;
            v53[2] = v33;
            v53[3] = 0x7FFFFFFFFFFFFFFFLL;
            v41 = [(PXAssetsDataSource *)currentDataSource assetReferenceAtItemIndexPath:v53];

            v30 = v41;
          }

          v15 = layoutCopy;
          v9 = v34;
          v14 = v47;
          v23 = v46;
          v27 = v44;
        }
      }

      else if (((v31 | v27 | [(PXZoomablePhotosLayout *)selfCopy _performVisualShiftWithLayout:v28 movingItem:v9 toColumn:v29]) & 1) == 0)
      {
        goto LABEL_27;
      }

      [(NSMapTable *)selfCopy->_visualAnchorAssetReferenceItemByLayout setObject:v30 forKey:v28];

      ++v26;
      v8 = v49;
      v13 = v50;
    }

    while (v14 != v26);
  }
}

- (BOOL)_performVisualShiftWithLayout:(id)layout movingItem:(int64_t)item toColumn:(int64_t)column
{
  layoutCopy = layout;
  v9 = [(PXZoomablePhotosLayout *)self _layoutHasIndividualItems:layoutCopy];
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  contentShiftStrategy = [viewModel contentShiftStrategy];

  v12 = !v9;
  [(PXZoomablePhotosLayout *)self visibleRect];
  if (!(column | item) || !v9 || contentShiftStrategy == 2 || (PXSizeIsEmpty() & 1) == 0 && [(PXZoomablePhotosLayout *)self _isAllowedToShiftItem:item inLayout:layoutCopy])
  {
    v13 = 1;
  }

  else
  {
    column = 0;
    v13 = 0;
    item = 0;
  }

  viewModel2 = [(PXZoomablePhotosLayout *)self viewModel];
  if ([viewModel2 contentShiftStrategy] != 2 || !v9)
  {

    goto LABEL_12;
  }

  numberOfColumns = [layoutCopy numberOfColumns];

  if (numberOfColumns < 2)
  {
LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  [(PXZoomablePhotosLayout *)self safeAreaInsets];
  v17 = v16;
  [(PXZoomablePhotosLayout *)self visibleRect];
  v19 = v18 - v17;
  numberOfColumns2 = [layoutCopy numberOfColumns];
  [(PXZoomablePhotosLayout *)self referenceSize];
  v22 = vcvtpd_s64_f64(v19 / (v21 / numberOfColumns2)) - (numberOfColumns2 + [layoutCopy numberOfItems] - 1) / numberOfColumns2;
  v23 = v22 & ~(v22 >> 63);
LABEL_13:
  [layoutCopy shiftItem:item toColumn:column topPaddingRows:v23 hideIncompleteRows:v12];

  return v13;
}

- (BOOL)_isAllowedToShiftItem:(int64_t)item inLayout:(id)layout
{
  v5 = [(PXZoomablePhotosLayout *)self _estimatedItemsPerScreenForLayout:layout];
  v6 = +[PXZoomablePhotosSettings sharedInstance];
  [v6 shiftingRequiredScreensTopDistance];
  v8 = v7;

  return v8 * v5 <= item;
}

- (int64_t)_estimatedItemsPerScreenForLayout:(id)layout
{
  layoutCopy = layout;
  [(PXZoomablePhotosLayout *)self visibleRect];
  v6 = v5;
  numberOfColumns = [layoutCopy numberOfColumns];

  PXSizeGetArea();
  return (v8 / (v6 / numberOfColumns * (v6 / numberOfColumns)));
}

- (void)setWantsOverBackgroundFloatingHeaderAppearance:(BOOL)appearance
{
  if (self->_wantsOverBackgroundFloatingHeaderAppearance != appearance)
  {
    v9 = v3;
    v10 = v4;
    self->_wantsOverBackgroundFloatingHeaderAppearance = appearance;
    viewModel = [(PXZoomablePhotosLayout *)self viewModel];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__PXZoomablePhotosLayout_setWantsOverBackgroundFloatingHeaderAppearance___block_invoke;
    v7[3] = &__block_descriptor_33_e69_v16__0__PXZoomablePhotosViewModel_PXMutableZoomablePhotosViewModel__8l;
    appearanceCopy = appearance;
    [viewModel performChanges:v7];
  }
}

uint64_t __58__PXZoomablePhotosLayout__updateDebugVisualizationSprites__block_invoke(uint64_t result, unint64_t a2, void *a3)
{
  v3 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v4 = result;
    v6 = a3[3];
    v5 = a3[4];
    v7 = a3[2];
    v28 = *MEMORY[0x277D73D78];
    v26 = *(MEMORY[0x277D73D78] + 80);
    v27 = *(MEMORY[0x277D73D78] + 16);
    v24 = *(MEMORY[0x277D73D78] + 48);
    v25 = *(MEMORY[0x277D73D78] + 64);
    v22 = *(MEMORY[0x277D73D78] + 144);
    v23 = *(MEMORY[0x277D73D78] + 32);
    v20 = *(MEMORY[0x277D73D78] + 112);
    v21 = *(MEMORY[0x277D73D78] + 128);
    v19 = *(MEMORY[0x277D73D78] + 96);
    v17 = *(MEMORY[0x277D73D70] + 16);
    v18 = *MEMORY[0x277D73D70];
    v8 = *(MEMORY[0x277D73D70] + 32);
    do
    {
      v9 = *(v4 + 40);
      v10 = *(v4 + 48);
      v30.origin.x = 0.0;
      v30.origin.y = 0.0;
      v30.size.width = v9;
      v30.size.height = v10;
      MidX = CGRectGetMidX(v30);
      v31.origin.x = 0.0;
      v31.origin.y = 0.0;
      v31.size.width = v9;
      v31.size.height = v10;
      MidY = CGRectGetMidY(v31);
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      v32.size.width = v9;
      v32.size.height = v10;
      Width = CGRectGetWidth(v32);
      v33.origin.x = 0.0;
      v33.origin.y = 0.0;
      v33.size.width = v9;
      v33.size.height = v10;
      Height = CGRectGetHeight(v33);
      v14.f64[0] = Width;
      v14.f64[1] = Height;
      *v7 = MidX;
      *&v7[1] = MidY;
      v7[2] = 0xC059000000000000;
      v7[3] = vcvt_f32_f64(v14);
      *v6 = v28;
      v6[1] = v27;
      v6[4] = v25;
      v6[5] = v26;
      v6[2] = v23;
      v6[3] = v24;
      v6[8] = v21;
      v6[9] = v22;
      v6[6] = v19;
      v6[7] = v20;
      *(v5 + 32) = v8;
      *v5 = v18;
      *(v5 + 16) = v17;
      *(v5 + 1) = 3;
      v15 = vcvt_f32_f64(*(v4 + 40));
      result = [*(v4 + 32) displayScale];
      *&v16 = v16;
      *(v5 + 8) = vmul_n_f32(v15, *&v16);
      v7 += 4;
      v6 += 10;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

void __58__PXZoomablePhotosLayout__updateDebugVisualizationSprites__block_invoke_2(uint64_t a1, unint64_t a2, double *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) visibleRect];
  v7 = v6;
  v9 = v8;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v10 = [*(a1 + 32) viewModel];
  v11 = v10;
  if (v10)
  {
    [v10 zoomState];
  }

  else
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
  }

  MEMORY[0x28223BE20]();
  v13 = &v49 - 2 * v12;
  v14 = [*(a1 + 32) anchorAssetReference];

  if (v14)
  {
    v15 = [*(a1 + 32) primaryItemsLayout];
    v16 = [*(a1 + 32) anchorAssetReference];
    v17 = v16;
    v49 = v9;
    v50 = v7;
    if (v16)
    {
      [v16 indexPath];
      v18 = v55;
    }

    else
    {
      v18 = 0;
      v54 = 0u;
      v55 = 0u;
    }

    [v15 frameForItem:{v18, v49, v50}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    *&v52 = 0;
    memset(&v51, 0, sizeof(v51));
    v31 = *(a1 + 32);
    v32 = [v31[133] primaryLayer];
    [v31 _spriteTransformForLayout:v32];

    v63 = v51;
    v65.origin.x = v24;
    v65.origin.y = v26;
    v65.size.width = v28;
    v65.size.height = v30;
    CGRectApplyAffineTransform(v65, &v63);
    PXRectGetCenter();
    v22 = v33;
    v21 = v34;
    [*(a1 + 32) normalizedScaleCenterInAnchorSprite];
    if ((PXPointIsNull() & 1) == 0)
    {
      [*(a1 + 32) normalizedScaleCenterInAnchorSprite];
    }

    PXPointDenormalize();
    v19 = v35;
    v20 = v36;
  }

  else
  {
    v19 = *MEMORY[0x277D3CFB0];
    v20 = *(MEMORY[0x277D3CFB0] + 8);
    v21 = v20;
    v22 = *MEMORY[0x277D3CFB0];
  }

  v37 = HIDWORD(a2);
  v53 = 0;
  v52 = 0u;
  memset(&v51, 0, sizeof(v51));
  v38 = *(a1 + 32);
  v39 = [v38 primaryItemsLayout];
  [v38 _getMiniModeInfo:&v51 forLayout:v39];

  *v13 = v22;
  v13[1] = v21;
  v13[2] = v19;
  v13[3] = v20;
  [*(a1 + 32) scaleCenterTargetInViewport];
  PXPointAdd();
  v13[4] = v40;
  v13[5] = v41;
  PXPointDenormalize();
  v13[6] = v42;
  v13[7] = v43;
  *(v13 + 4) = *&v51.tx;
  if (*(a1 + 64) == 5)
  {
    if (!v37)
    {
      return;
    }
  }

  else
  {
    v48 = [MEMORY[0x277CCA890] currentHandler];
    [v48 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXZoomablePhotosLayout.m" lineNumber:2486 description:{@"Invalid parameter not satisfying: %@", @"i == spriteCount"}];

    if (!v37)
    {
      return;
    }
  }

  v44 = 0;
  v45 = *(a1 + 56) * -0.5 + 10.0;
  v46 = (v13 + 1);
  do
  {
    v47 = *v46 - v45;
    *a3 = *(v46 - 1);
    a3[1] = v47;
    a3[2] = (-200.0 - v44++);
    a3 += 4;
    v46 += 2;
  }

  while (v37 != v44);
}

void __44__PXZoomablePhotosLayout__updatePrefetching__block_invoke(uint64_t a1)
{
  v2 = PXDisplayAssetFetchResultSubfetchResultWithRange();
  [*(*(a1 + 40) + 1144) preheatThumbnailDataForAssets:v2 origin:0 targetSize:{*(a1 + 64), *(a1 + 72)}];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__PXZoomablePhotosLayout__updatePrefetching__block_invoke_2;
  v4[3] = &unk_2782992C8;
  v3 = *(a1 + 80);
  v4[4] = *(a1 + 40);
  v4[5] = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __43__PXZoomablePhotosLayout__updateBlurEffect__block_invoke_2(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = [*(a1 + 32) entityManager];
  v6 = [v5 effectComponent];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PXZoomablePhotosLayout__updateBlurEffect__block_invoke_3;
  v9[3] = &unk_278299228;
  v7 = a3[1];
  v11 = *a3;
  v12 = v7;
  v13 = *(a3 + 4);
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  v14 = *(a1 + 48);
  [v6 performChanges:v9];
}

void __43__PXZoomablePhotosLayout__updateBlurEffect__block_invoke_4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = [*(a1 + 32) entityManager];
  v7 = [v6 effectComponent];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__PXZoomablePhotosLayout__updateBlurEffect__block_invoke_5;
  v12[3] = &unk_278299278;
  v22 = a2;
  v15 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = v9;
  v18 = *(a1 + 96);
  v10 = a3[1];
  v19 = *a3;
  v20 = v10;
  v21 = *(a3 + 4);
  v23 = *(a1 + 104);
  v11 = *(a1 + 32);
  v13 = v8;
  v14 = v11;
  [v7 performChanges:v12];
}

void __43__PXZoomablePhotosLayout__updateBlurEffect__block_invoke_5(uint64_t a1, void *a2)
{
  v32 = a2;
  LODWORD(v3) = *(a1 + 148);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (v7 == v3 - 1)
      {
        v8 = *(a1 + 48) - v6;
      }

      else
      {
        v8 = *(a1 + 56);
      }

      v9 = v8 + v6;
      v10 = [*(a1 + 32) count] - (v8 + v6);
      v11 = [*(a1 + 32) count] + ~v6;
      v12 = [*(a1 + 32) objectAtIndexedSubscript:v10 & ~(v10 >> 63)];
      v13 = [*(a1 + 32) objectAtIndexedSubscript:v11 & ~(v11 >> 63)];
      if (v12)
      {
        [v12 collapseProgress];
      }

      if (v13)
      {
        [v13 collapseProgress];
      }

      [v12 yPosition];
      [v13 yPosition];
      PXFloatByLinearlyInterpolatingFloats();
      v34 = *(a1 + 64);
      PXFloatByLinearlyInterpolatingFloats();
      v33 = v14;
      PXFloatByLinearlyInterpolatingFloats();
      v15 = 0.0;
      PXRectWithCenterAndSize();
      x = v36.origin.x;
      y = v36.origin.y;
      width = v36.size.width;
      height = v36.size.height;
      v20 = *(a1 + 120) + v4;
      v21 = 0.0 + -0.1;
      MidX = CGRectGetMidX(v36);
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      MidY = CGRectGetMidY(v37);
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      v35 = CGRectGetWidth(v38);
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      v24 = CGRectGetHeight(v39);
      v25.f64[0] = v35;
      v25.f64[1] = v24;
      *v20 = MidX;
      *(v20 + 8) = MidY;
      *(v20 + 16) = v21;
      *(v20 + 24) = vcvt_f32_f64(v25);
      v26 = 0.0;
      if ((v11 & 0x8000000000000000) == 0 && (PXFloatApproximatelyEqualToFloat() & 1) == 0)
      {
        v27 = PXFloatApproximatelyEqualToFloat();
        v28 = 0.2;
        if (!*(a1 + 152))
        {
          v28 = 1.0;
        }

        if (v27)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v28;
        }

        if (v27)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = v34 * v33;
        }
      }

      *(*(a1 + 128) + v5) = v26;
      v29 = [*(*(a1 + 40) + 1088) objectAtIndexedSubscript:v7];
      [v29 setExposure:0.0];
      PXFloatSaturate();
      [v29 setMultiplier:?];
      [v29 setRadius:v15];
      v30 = *(*(a1 + 112) + 4 * v7);
      v31 = [v29 effectId];
      *([v32 mutableEffectIds] + 4 * v30) = v31;

      ++v7;
      v3 = *(a1 + 148);
      v5 += 160;
      v4 += 32;
      v6 = v9;
    }

    while (v7 < v3);
  }
}

void __43__PXZoomablePhotosLayout__updateBlurEffect__block_invoke_3(uint64_t a1, void *a2)
{
  v37 = a2;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v35 = *(MEMORY[0x277D73D58] + 16);
    v36 = *MEMORY[0x277D73D58];
    v34 = *MEMORY[0x277D73D78];
    v32 = *(MEMORY[0x277D73D78] + 80);
    v33 = *(MEMORY[0x277D73D78] + 16);
    v30 = *(MEMORY[0x277D73D78] + 48);
    v31 = *(MEMORY[0x277D73D78] + 64);
    v28 = *(MEMORY[0x277D73D78] + 144);
    v29 = *(MEMORY[0x277D73D78] + 32);
    v26 = *(MEMORY[0x277D73D78] + 112);
    v27 = *(MEMORY[0x277D73D78] + 128);
    v25 = *(MEMORY[0x277D73D78] + 96);
    v23 = *(MEMORY[0x277D73D70] + 16);
    v24 = *MEMORY[0x277D73D70];
    __asm { FMOV            V8.2S, #1.0 }

    v12 = *(MEMORY[0x277D73D70] + 32);
    do
    {
      v13 = objc_alloc(MEMORY[0x277D73C90]);
      v14 = [*(a1 + 32) entityManager];
      v15 = [v13 initWithEntityManager:v14];

      [*(a1 + 40) addObject:v15];
      v16 = (*(a1 + 64) + v3);
      *v16 = v36;
      v16[1] = v35;
      v17 = (*(a1 + 72) + v4);
      *v17 = v34;
      v17[1] = v33;
      v17[4] = v31;
      v17[5] = v32;
      v17[2] = v29;
      v17[3] = v30;
      v17[8] = v27;
      v17[9] = v28;
      v17[6] = v25;
      v17[7] = v26;
      v18 = *(a1 + 80) + v5;
      *v18 = v24;
      *(v18 + 16) = v23;
      *(v18 + 32) = v12;
      v19 = *(a1 + 80) + v5;
      if (*(a1 + 88) == 1)
      {
        *(v19 + 8) = _D8;
        v20 = 5;
      }

      else
      {
        v20 = 9;
      }

      *(v19 + 1) = v20;
      v21 = *(*(a1 + 56) + 4 * v6);
      v22 = [v15 effectId];
      *([v37 mutableEffectIds] + 4 * v21) = v22;

      ++v6;
      v5 += 40;
      v4 += 160;
      v3 += 32;
    }

    while (v6 < *(a1 + 48));
  }
}

uint64_t __37__PXZoomablePhotosLayout__updateZoom__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 itemsLayout];
  v6 = [v5 numberOfColumns];

  v7 = [v4 itemsLayout];

  v8 = [v7 numberOfColumns];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v8 > v6;
  }
}

BOOL __39__PXZoomablePhotosLayout__updateLayers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 itemsLayout];
  v4 = [v3 numberOfColumns] == *(a1 + 32);

  return v4;
}

void __39__PXZoomablePhotosLayout__updateLayers__block_invoke_160(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 numberOfColumns];
  v8 = [*(a1 + 32) spec];
  v9 = [v8 maxColumnsForStickyHeaderDisplay];

  if (v7 <= v9)
  {
    goto LABEL_8;
  }

  v10 = *(a1 + 32);
  v11 = v10 + 173;
  if (!v10[174])
  {
    v11 = v10 + 174;
    goto LABEL_7;
  }

  if (!*v11)
  {
LABEL_7:
    objc_storeStrong(v11, a2);
    goto LABEL_8;
  }

  if (!v10[175])
  {
    objc_storeStrong(v10 + 175, a2);
    *a4 = 1;
  }

LABEL_8:
}

- (void)addDecorationsToAllLayers:(id)layers
{
  v16 = *MEMORY[0x277D85DE8];
  layersCopy = layers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_layers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 addActiveDecorations:{layersCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_updateSurroundingScrollableContent
{
  v3 = MEMORY[0x277D3CF90];
  v4 = *(MEMORY[0x277D3CF90] + 8);
  v5 = *(MEMORY[0x277D3CF90] + 24);
  superlayout = [(PXZoomablePhotosLayout *)self superlayout];

  if (superlayout)
  {
    rootLayout = [(PXZoomablePhotosLayout *)self rootLayout];
    v25 = 0u;
    v26 = 0u;
    superlayout2 = [(PXZoomablePhotosLayout *)self superlayout];
    sublayoutDataStore = [superlayout2 sublayoutDataStore];
    v10 = sublayoutDataStore;
    v23 = v4;
    v24 = v5;
    if (sublayoutDataStore)
    {
      [sublayoutDataStore geometryForSublayout:self];
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    superlayout3 = [(PXZoomablePhotosLayout *)self superlayout];
    [rootLayout convertRect:superlayout3 fromLayout:{v26, v25}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [rootLayout frame];
    [rootLayout flexibleRegionInsets];
    PXEdgeInsetsInsetRect();
    MaxY = CGRectGetMaxY(v27);
    v28.origin.x = v15;
    v28.origin.y = v17;
    v28.size.width = v19;
    v28.size.height = v21;
    v12 = MaxY - CGRectGetMaxY(v28);
    v29.origin.x = v15;
    v29.origin.y = v17;
    v29.size.width = v19;
    v29.size.height = v21;
    MinY = CGRectGetMinY(v29);

    v4 = v23;
    v5 = v24;
  }

  else
  {
    MinY = *v3;
    v12 = v3[2];
  }

  self->_surroundingScrollableContent.top = MinY;
  self->_surroundingScrollableContent.left = v4;
  self->_surroundingScrollableContent.bottom = v12;
  self->_surroundingScrollableContent.right = v5;
}

- (void)invalidateItemsLayout
{
  primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
  [primaryItemsLayout setNeedsUpdate];
}

- (id)presentedItemsGeometryForDataSource:(id)source
{
  sourceCopy = source;
  presentedDataSource = [(PXZoomablePhotosLayout *)self presentedDataSource];
  v6 = [sourceCopy isEqual:presentedDataSource];

  if (v6)
  {
    primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
    itemsGeometry = [primaryItemsLayout itemsGeometry];
  }

  else
  {
    itemsGeometry = 0;
  }

  return itemsGeometry;
}

- (void)_callAddContentActionHandler
{
  addContentHandler = [(PXZoomablePhotosLayout *)self addContentHandler];
  v3 = addContentHandler;
  if (addContentHandler)
  {
    (*(addContentHandler + 16))(addContentHandler);
  }

  else
  {
    v4 = PXAssertGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_21ABF3000, v4, OS_LOG_TYPE_ERROR, "Missing add content handler for add button press", v5, 2u);
    }
  }
}

- (BOOL)_wantsMiniDecorationForNumberOfColumns:(int64_t)columns
{
  spec = [(PXZoomablePhotosLayout *)self spec];
  minColumnsForMiniBadges = [spec minColumnsForMiniBadges];

  return minColumnsForMiniBadges <= columns;
}

- (BOOL)_wantsDecorationForNumberOfColumns:(int64_t)columns
{
  spec = [(PXZoomablePhotosLayout *)self spec];
  maxColumnsForBadges = [spec maxColumnsForBadges];

  v6 = +[PXZoomablePhotosSettings sharedInstance];
  enableBadges = [v6 enableBadges];
  if (maxColumnsForBadges >= columns)
  {
    v8 = enableBadges;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)_itemCaptionSpacingForLayout:(id)layout
{
  layoutCopy = layout;
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  v6 = 0.0;
  if ([viewModel captionsVisible] && (-[PXZoomablePhotosLayout _layoutIsAspectFit:](self, "_layoutIsAspectFit:", layoutCopy) || -[PXZoomablePhotosLayout _layoutAllowsCaptionsInSquare:](self, "_layoutAllowsCaptionsInSquare:", layoutCopy)))
  {
    spec = [(PXZoomablePhotosLayout *)self spec];
    [spec captionSpacing];
    v6 = v8;
  }

  return v6;
}

- (double)_interItemSpacingForLayout:(id)layout
{
  layoutCopy = layout;
  spec = [(PXZoomablePhotosLayout *)self spec];
  v6 = [(PXZoomablePhotosLayout *)self _layoutIsAspectFit:layoutCopy];
  v7 = [(PXZoomablePhotosLayout *)self _layoutHasIndividualItems:layoutCopy];

  if (v6)
  {
    if (v7)
    {
      [spec aspectFitInteritemSpacing];
    }
  }

  else if (v7)
  {
    [spec interitemSpacing];
  }

  [(PXZoomablePhotosLayout *)self displayScale];
  PXFloatRoundToPixel();
  v9 = v8;

  return v9;
}

- (BOOL)_layoutHasIndividualItems:(id)items
{
  itemsCopy = items;
  spec = [(PXZoomablePhotosLayout *)self spec];
  numberOfColumns = [itemsCopy numberOfColumns];

  LOBYTE(itemsCopy) = numberOfColumns <= [spec maxColumnsForIndividualItems];
  return itemsCopy;
}

- (BOOL)_layoutIsQuiteTransparent:(id)transparent
{
  transparentCopy = transparent;
  spec = [(PXZoomablePhotosLayout *)self spec];
  hasTransparentHorizontalMargins = [spec hasTransparentHorizontalMargins];

  if (hasTransparentHorizontalMargins)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(PXZoomablePhotosLayout *)self _layoutIsAspectFit:transparentCopy];
    [transparentCopy itemCornerRadius];
    if (fmaxf(fmaxf(v8, v9), fmaxf(v10, v11)) >= 3.0)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)_layoutAllowsCaptionsInSquare:(id)square
{
  squareCopy = square;
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  aspectFit = [viewModel aspectFit];
  v7 = [(PXZoomablePhotosLayout *)self _layoutHasIndividualItems:squareCopy];

  if (v7)
  {
    LOBYTE(v7) = [viewModel allowsCaptionsInSquare];
  }

  return (aspectFit ^ 1) & v7;
}

- (BOOL)_layoutIsAspectFit:(id)fit
{
  fitCopy = fit;
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  if ([viewModel aspectFit] && -[PXZoomablePhotosLayout _layoutHasIndividualItems:](self, "_layoutHasIndividualItems:", fitCopy))
  {
    supportsContentMode = [fitCopy supportsContentMode];
  }

  else
  {
    supportsContentMode = 0;
  }

  return supportsContentMode;
}

- (void)getLastItem:(int64_t *)item lastColumn:(int64_t *)column forBodyLayout:(id)layout
{
  layoutCopy = layout;
  numberOfItems = [layoutCopy numberOfItems];
  numberOfColumns = [layoutCopy numberOfColumns];
  *item = numberOfItems - 1;
  numberOfAccessoryItems = [layoutCopy numberOfAccessoryItems];

  *column = numberOfColumns + ~(numberOfAccessoryItems % numberOfColumns);
}

- (BOOL)_getMiniModeInfo:(id *)info forLayout:(id)layout
{
  layoutCopy = layout;
  v7 = MEMORY[0x277CBF398];
  miniModeIsAnchoringToBottom = self->_miniModeIsAnchoringToBottom;
  [layoutCopy visibleRect];
  if (miniModeIsAnchoringToBottom)
  {
    v10 = v9 * 0.5;
    [layoutCopy contentSize];
    v12 = v11;
  }

  else
  {
    [(PXZoomablePhotosLayout *)self safeAreaInsets];
    PXEdgeInsetsInsetRect();
    PXPointDenormalize();
    v10 = v13;
    v12 = v14;
    [layoutCopy contentSize];
    if (v12 >= v15)
    {
      v12 = v15;
    }
  }

  v17 = *v7;
  v16 = v7[1];
  v18 = v7[2];
  v48 = v7[3];
  v19 = 1.0;
  if (PXPointIsNull())
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (!info)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v46 = v16;
  v47 = v10;
  [layoutCopy referenceSize];
  v24 = v23;
  v25 = v23 / 5.0 * 5.0;
  [layoutCopy rowHeight];
  if (v26 == 0.0)
  {
    v27 = v24 / 5.0 * 5.0;
  }

  else
  {
    v27 = v26;
  }

  if (v27 == 0.0)
  {
    v28 = 1.5;
  }

  else
  {
    v28 = floor(v25 / v27) + 0.5;
  }

  v21 = [layoutCopy itemRangeInRect:{0.0, v12 - v25, v24, v24 / 5.0 * 5.0}];
  v20 = v29;
  loadedItems = [layoutCopy loadedItems];
  if (v21 < loadedItems || v21 - loadedItems >= v31)
  {
    v22 = 0;
    v16 = v46;
    v10 = v47;
    if (!info)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v33 = v12 - v27 * v28;
  [layoutCopy visibleRect];
  v16 = v33 - (v34 - v25);
  v48 = v33 - v16;
  spec = [(PXZoomablePhotosLayout *)self spec];
  [spec miniModeEdgeMargins];
  v37 = v36;
  v39 = v38;

  [(PXZoomablePhotosLayoutSpec *)self->_spec miniModeInteritemSpacing];
  v41 = v37 + v39 - v40;
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  miniModeAnimator = [viewModel miniModeAnimator];
  [miniModeAnimator gridMiniStylingPercentage];
  v19 = -v41 / v24 * v44 + 1.0;

  v22 = 1;
  v18 = v24;
  v17 = 0.0;
  v10 = v47;
  if (info)
  {
LABEL_22:
    info->var0.origin.x = v17;
    info->var0.origin.y = v16;
    info->var0.size.width = v18;
    info->var0.size.height = v48;
    info->var1.x = v10;
    info->var1.y = v12;
    info->var2 = v19;
    info->var3.location = v21;
    info->var3.length = v20;
  }

LABEL_23:

  return v22;
}

- (void)_modifyMiniModeSpritesForLayout:(id)layout spriteIndexRange:(_PXGSpriteIndexRange)range sprites:(id *)sprites
{
  layoutCopy = layout;
  if ([layoutCopy numberOfItems])
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    memset(&v68, 0, sizeof(v68));
    if ([(PXZoomablePhotosLayout *)self _getMiniModeInfo:&v68 forLayout:layoutCopy])
    {
      v9 = HIDWORD(*&range);
      viewModel = [(PXZoomablePhotosLayout *)self viewModel];
      miniModeAnimator = [viewModel miniModeAnimator];

      spec = [(PXZoomablePhotosLayout *)self spec];
      [spec miniModeEdgeMargins];
      var2 = sprites->var2;
      [miniModeAnimator gridMiniStylingPercentage];
      v63 = v14;
      selfCopy = self;
      if (v9)
      {
        v17 = -1;
        v16 = 0.0;
        v18 = 1.79769313e308;
        while (2)
        {
          v19 = (var2 + 32 * v9 - 4);
          while (1)
          {
            v20 = v9 - 1;
            v21 = *(v19 - 5) + *v19 * 0.5;
            v22 = vabdd_f64(*(&v69 + 1), v21);
            if (v22 <= v18 && *v19 > 0.0)
            {
              break;
            }

            if (v17 != -1)
            {
              goto LABEL_14;
            }

            v19 -= 8;
            v17 = -1;
            --v9;
            if (v20 + 1 <= 1)
            {
              v15 = 0xFFFFFFFFLL;
              goto LABEL_15;
            }
          }

          v16 = *(&v69 + 1) - v21;
          v17 = v9 - 1;
          v18 = v22;
          if (v9-- > 1)
          {
            continue;
          }

          break;
        }

        v15 = 0xFFFFFFFFLL;
        if (v20 != 0xFFFFFFFF)
        {
LABEL_14:
          v24 = [layoutCopy itemForSpriteIndex:{*(&v69 + 1), 0.5}];
          v15 = [layoutCopy spriteIndexForItem:{v24 - objc_msgSend(layoutCopy, "columnForItem:", v24) + objc_msgSend(layoutCopy, "numberOfColumns")}];
        }
      }

      else
      {
        v15 = 0xFFFFFFFFLL;
        v16 = 0.0;
      }

LABEL_15:
      v25 = v63 * v16;
      [layoutCopy referenceSize];
      [spec miniModeInteritemSpacing];
      [spec interitemSpacing];
      v61 = layoutCopy;
      [layoutCopy numberOfColumns];
      PXFloatByLinearlyInterpolatingFloats();
      v27 = v26;
      CGRectGetMinY(v68);
      CGRectGetMaxY(v68);
      Height = CGRectGetHeight(v68);
      v59 = spec;
      [spec miniModeItemCornerRadius];
      [miniModeAnimator gridMiniChromeVisibilityPercentage];
      v30 = v29;
      v31 = objc_alloc_init(MEMORY[0x277CBEB40]);
      v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (sprites->var0)
      {
        v32 = 0;
        v33 = 0;
        v34 = 1.0 - v30;
        v35 = (var2 + 8);
        do
        {
          PXFloatNormalize();
          PXFloatSaturate();
          v37 = v36;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          if (miniModeAnimator)
          {
            [miniModeAnimator collapseProgressForNormalizedYPosition:v36];
            v38 = *(&v65 + 1);
            v39 = *&v65;
            v40 = *(&v66 + 1);
            v41 = *&v66;
          }

          else
          {
            v40 = 0.0;
            v41 = 0.0;
            v38 = 0.0;
            v39 = 0.0;
          }

          if (v33 >= v15)
          {
            v39 = v34 * v39;
          }

          v42 = *&v70;
          v43 = *(&v69 + 1) + (v25 + *v35 - *(&v69 + 1)) * *&v70;
          *(v35 - 1) = *&v69 + (*(v35 - 1) - *&v69) * v38 * *&v70;
          *v35 = v43 + v41 * Height;
          v35[1] = v40 + v35[1];
          v44 = (sprites->var3 + v32);
          v45 = v38 * (v27 * v42) * v44[15];
          v44[15] = v45;
          v46 = v39 * *v44;
          *v44 = v46;
          PXGCornerRadiusByLinearlyInterpolatingCornerRadii();
          *(v44 + 9) = v47;
          *(v44 + 10) = v48;
          *(v44 + 11) = v49;
          *(v44 + 12) = v50;
          v51 = [MEMORY[0x277CCABB0] numberWithDouble:{v37, *&v63}];
          v52 = v37 > 0.0 && v37 < 1.0;
          if (v52 && ([v31 containsObject:v51] & 1) == 0)
          {
            v53 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
            [v31 addObject:v53];

            v54 = [PXZoomableMiniModeFoldedRow alloc];
            v55 = *v35;
            v64[0] = v65;
            v64[1] = v66;
            v64[2] = v67;
            v56 = [(PXZoomableMiniModeFoldedRow *)v54 initWithCollapseProgress:v64 yPosition:v55];
            [v62 addObject:v56];
          }

          ++v33;
          v32 += 160;
          v35 += 4;
        }

        while (v33 < sprites->var0);
      }

      primaryItemsLayout = [(PXZoomablePhotosLayout *)selfCopy primaryItemsLayout];

      layoutCopy = v61;
      if (primaryItemsLayout == v61)
      {
        [(PXZoomablePhotosLayout *)selfCopy setMiniModeVerticalOffset:v25];
        v58 = [v62 copy];
        [(PXZoomablePhotosLayout *)selfCopy setMiniModeFoldedRows:v58];
      }
    }
  }
}

- (void)_configureMiniModeSpriteModifierForLayout:(id)layout
{
  layoutCopy = layout;
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  miniModeAnimator = [viewModel miniModeAnimator];

  if ([miniModeAnimator isActive])
  {
    objc_initWeak(&location, self);
    v7 = objc_alloc(MEMORY[0x277D73CC0]);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __68__PXZoomablePhotosLayout__configureMiniModeSpriteModifierForLayout___block_invoke;
    v12 = &unk_278298FD0;
    objc_copyWeak(&v13, &location);
    v8 = [v7 initWithStateHandler:&v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  [layoutCopy setSpriteModifier:{v8, v9, v10, v11, v12}];
}

void __68__PXZoomablePhotosLayout__configureMiniModeSpriteModifierForLayout___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v9;
  v11 = *(a4 + 32);
  [WeakRetained _modifyMiniModeSpritesForLayout:v7 spriteIndexRange:a3 sprites:v10];
}

- (void)_configureLayout:(id)layout
{
  layoutCopy = layout;
  spec = [(PXZoomablePhotosLayout *)self spec];
  numberOfColumns = [layoutCopy numberOfColumns];
  maxColumnsForIndividualItems = [spec maxColumnsForIndividualItems];
  userInterfaceIdiom = [spec userInterfaceIdiom];
  userInterfaceIdiom2 = [spec userInterfaceIdiom];
  userInterfaceIdiom3 = [spec userInterfaceIdiom];
  if ([spec userInterfaceIdiom] == 1 && objc_msgSend(spec, "layoutOrientation") == 2)
  {
    v8 = PFIsPhotosPicker();
  }

  else
  {
    v8 = 0;
  }

  options = [spec options];
  [(PXZoomablePhotosLayout *)self _interItemSpacingForLayout:layoutCopy];
  v11 = v10;
  v12 = [(PXZoomablePhotosLayout *)self _layoutIsAspectFit:layoutCopy];
  v16 = 0.0;
  if (numberOfColumns <= maxColumnsForIndividualItems)
  {
    if (v12)
    {
      [spec aspectFitItemCornerRadius];
    }

    else
    {
      [spec itemCornerRadius];
    }

    [(PXZoomablePhotosLayout *)self displayScale];
    PXFloatFloorToPixel();
    *&v16 = v16;
  }

  LODWORD(v13) = LODWORD(v16);
  LODWORD(v14) = LODWORD(v16);
  LODWORD(v15) = LODWORD(v16);
  [layoutCopy setItemCornerRadius:{v16, v13, v14, v15}];
  [spec itemAspectRatio];
  [layoutCopy setItemAspectRatio:?];
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  isFaceModeEnabled = [viewModel isFaceModeEnabled];

  numberOfColumns2 = [layoutCopy numberOfColumns];
  if (v12)
  {
    if (isFaceModeEnabled)
    {
      v71 = numberOfColumns2 <= [spec maxColumnsForSaliency];
    }

    else
    {
      v71 = 0;
    }

    aspectFitEdgeMargins = [spec aspectFitEdgeMargins];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = 1;
LABEL_23:
    v36 = userInterfaceIdiom2 == 2 || userInterfaceIdiom == 4 || userInterfaceIdiom3 == 5;
    if (((v36 | (options >> 2) | v8) & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v71 = ((isFaceModeEnabled & 1) != 0 || [spec useSaliency]) && numberOfColumns2 <= objc_msgSend(spec, "maxColumnsForSaliency");
  if (userInterfaceIdiom != 4 || numberOfColumns <= maxColumnsForIndividualItems)
  {
    aspectFitEdgeMargins = [spec squareEdgeMargins];
    v22 = v30;
    v24 = v31;
    v26 = v32;
    v28 = v33;
    v29 = 0;
    goto LABEL_23;
  }

  v29 = 0;
LABEL_33:
  [(PXZoomablePhotosLayout *)self safeAreaInsets];
  v38 = v37;
  v40 = v39;
  aspectFitEdgeMargins = PXEdgeInsetsAdd();
  v22 = v41;
  v24 = v42;
  v26 = v43;
  v28 = v44;
  if (v38 != v40)
  {
    v45 = +[PXPhotosGridSettings sharedInstance];
    [v45 sidebarPadding];
    v47 = v38 + v46;

    if (v24 < v47)
    {
      v24 = v47;
    }
  }

LABEL_36:
  v48 = MEMORY[0x21CEE04B0](aspectFitEdgeMargins);
  v49 = 0;
  if (numberOfColumns <= maxColumnsForIndividualItems)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0;
  }

  if ((v50 & 1) == 0 && userInterfaceIdiom != 4)
  {
    v49 = [(PXZoomablePhotosLayout *)self preventFillingTopAreaInsets]^ 1;
  }

  fillSafeAreaBottomInset = [(PXZoomablePhotosLayout *)self fillSafeAreaBottomInset];
  if (numberOfColumns <= maxColumnsForIndividualItems && (userInterfaceIdiom == 4 || (MEMORY[0x21CEE04B0]() & 1) == 0))
  {
    [(PXZoomablePhotosLayout *)self effectiveOverlayInsets];
    v53 = v52;
    PXEdgeInsetsAdd();
    v22 = v54;
    v24 = v55;
    v26 = v56;
    v28 = v57;
    v49 = (v53 == 0.0) & v49;
  }

  if ([layoutCopy supportsContentMode])
  {
    [layoutCopy setContentMode:v29];
  }

  if (numberOfColumns > maxColumnsForIndividualItems)
  {
    [layoutCopy setEnablePerItemCornerRadius:0];
    [layoutCopy setEnablePerItemInsets:0];
    effectProvider = [(PXZoomablePhotosLayout *)self effectProvider];
    [layoutCopy setEnableEffects:effectProvider != 0];
  }

  else
  {
    burstStackEffect = [(PXZoomablePhotosLayout *)self burstStackEffect];
    [burstStackEffect setNumberOfItemsStackedBehind:2];

    [layoutCopy setEnablePerItemCornerRadius:1];
    [layoutCopy setEnablePerItemInsets:1];
    [layoutCopy setEnableEffects:1];
  }

  [layoutCopy setHideIncompleteLastRowOrColumn:numberOfColumns > maxColumnsForIndividualItems];
  [layoutCopy setEnableBestCropRect:v71];
  [layoutCopy setInterItemSpacing:{v11, v11}];
  [(PXZoomablePhotosLayout *)self _itemCaptionSpacingForLayout:layoutCopy];
  [layoutCopy setItemCaptionSpacing:?];
  [layoutCopy setPadding:{v22, v24, v26, v28}];
  [layoutCopy setFillSafeAreaTopInset:v49];
  [layoutCopy setFillSafeAreaBottomInset:fillSafeAreaBottomInset];
  if (userInterfaceIdiom == 4)
  {
    v60 = 2;
  }

  else
  {
    v60 = 1;
  }

  [layoutCopy setDropTargetStyle:v60];
  viewModel2 = [(PXZoomablePhotosLayout *)self viewModel];
  dropTargetAssetReference = [viewModel2 dropTargetAssetReference];
  [layoutCopy setDropTargetObjectReference:dropTargetAssetReference];

  [layoutCopy setAccessoryItemContentSource:self];
  enableAddContentAccessoryItem = [(PXZoomablePhotosLayout *)self enableAddContentAccessoryItem];
  v64 = numberOfColumns <= maxColumnsForIndividualItems && enableAddContentAccessoryItem;
  [layoutCopy setNumberOfAccessoryItems:v64];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v65 = 2 * (numberOfColumns <= maxColumnsForIndividualItems);
    v66 = layoutCopy;
    [v66 setStyle:v65];
    axGroup = [v66 axGroup];

    [axGroup setAxRole:{-[PXZoomablePhotosLayout bodyLayoutAXGroupRole](self, "bodyLayoutAXGroupRole")}];
    if (userInterfaceIdiom == 4)
    {
      v68 = 9;
    }

    else
    {
      v68 = 0;
    }

    [axGroup setLeafFeatures:{objc_msgSend(axGroup, "leafFeatures") | v68}];
  }
}

- (id)_createLayoutWithNumberOfColumns:(int64_t)columns
{
  v5 = +[PXZoomablePhotosSettings sharedInstance];
  enableDebugLayers = [v5 enableDebugLayers];

  if (enableDebugLayers)
  {
    v7 = 5;
  }

  else
  {
    v7 = 2;
  }

  if (columns == 1)
  {
    v8 = objc_alloc_init(MEMORY[0x277D73CC8]);
    [v8 setMediaKind:v7];
    [v8 setOverrideAspectRatioAmount:0.0];
    v9 = v8;
    oneColLayout = self->_oneColLayout;
    self->_oneColLayout = v9;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D73CA0]);
    [(PXGOneColumnLayout *)v9 setMediaKind:v7];
    [(PXGOneColumnLayout *)v9 setLazy:1];
    [(PXGOneColumnLayout *)v9 setMediaTargetSizeIgnoresSpacing:1];
    [(PXGOneColumnLayout *)v9 setCanHandleVisibleRectRejection:1];
    [(PXGOneColumnLayout *)v9 setAccessoryMediaKind:10];
    [(PXGOneColumnLayout *)v9 setAccessoryPresentationType:1];
    oneColLayout = [(PXZoomablePhotosLayout *)self viewModel];
    -[PXGOneColumnLayout setEnableCornerRadiusMaskingWhenAlignedWithEdge:](v9, "setEnableCornerRadiusMaskingWhenAlignedWithEdge:", [oneColLayout enableCornerRadiusMaskingWhenAlignedWithEdge]);
  }

  [(PXGOneColumnLayout *)v9 setNumberOfColumns:columns];
  [(PXGOneColumnLayout *)v9 setContentSource:self];
  [(PXGOneColumnLayout *)v9 setNumberOfItems:[(PXAssetsDataSource *)self->_currentDataSource numberOfItemsInSection:self->_sectionIndexPath.section]];
  [(PXGOneColumnLayout *)v9 setDelegate:self];
  [(PXZoomablePhotosLayout *)self _configureLayout:v9];

  return v9;
}

- (CGSize)_scaleForLayout:(id)layout
{
  v33 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  viewModel = [(PXZoomablePhotosLayout *)self viewModel];
  v6 = viewModel;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (viewModel)
  {
    [viewModel zoomState];
  }

  v7 = [(NSArray *)self->_itemLayouts objectAtIndexedSubscript:0, v27, v28, v29, v30];
  v8 = [(NSArray *)self->_itemLayouts objectAtIndexedSubscript:0];
  [v7 numberOfColumns];
  [v7 rowHeight];
  [v8 numberOfColumns];
  [v8 rowHeight];
  PXSizeByLinearlyInterpolatingSize();
  PXSizeScale();
  v10 = v9;
  v12 = v11;
  v13 = 1.0 / [layoutCopy numberOfColumns];
  [layoutCopy rowHeight];
  v15 = v14;

  v16 = v10 / v13;
  if (v15 == 0.0 || v12 == 0.0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v12 / v15;
  }

  if ((*&v18 <= -1 || ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v18 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v21 = PXAssertGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v32 = v18;
      _os_log_error_impl(&dword_21ABF3000, v21, OS_LOG_TYPE_ERROR, "Invalid height scale:%.3f", buf, 0xCu);
    }
  }

  if ((*&v16 <= -1 || ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v16 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v24 = PXAssertGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v32 = v16;
      _os_log_error_impl(&dword_21ABF3000, v24, OS_LOG_TYPE_ERROR, "Invalid width scale:%.3f", buf, 0xCu);
    }
  }

  v25 = v16;
  v26 = v18;
  result.height = v26;
  result.width = v25;
  return result;
}

- (id)itemsGeometry
{
  primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
  itemsGeometry = [primaryItemsLayout itemsGeometry];

  return itemsGeometry;
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  LODWORD(v3) = index;
  v10 = -1;
  if ([(PXZoomablePhotosLayout *)self isSpriteIndex:*&index decoratingSpriteWithIndex:&v10])
  {
    v3 = v10;
  }

  else
  {
    v3 = v3;
  }

  primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
  v6 = [(PXZoomablePhotosLayout *)self convertSpriteIndex:v3 toDescendantLayout:primaryItemsLayout];

  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    primaryItemsLayout2 = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
    v8 = [primaryItemsLayout2 hitTestResultForSpriteIndex:v6];
  }

  return v8;
}

- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)block
{
  zoomLayout = self->_zoomLayout;
  if (zoomLayout)
  {
    v4 = 0;
    (*(block + 2))(block, zoomLayout, &v4);
  }
}

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = MEMORY[0x277D3CFD8];
  v17 = *(MEMORY[0x277D3CFD8] + 8);
  v18 = *(MEMORY[0x277D3CFD8] + 24);
  fullyVisibleEdgesWithDefaultTolerance = [(PXZoomablePhotosLayout *)self fullyVisibleEdgesWithDefaultTolerance];
  if ((fullyVisibleEdgesWithDefaultTolerance & 4) == 0)
  {
    if ((fullyVisibleEdgesWithDefaultTolerance & 1) == 0)
    {
      v7 = *v5;
      goto LABEL_11;
    }

    currentDataSource = self->_currentDataSource;
    if (currentDataSource)
    {
      [(PXAssetsDataSource *)currentDataSource firstItemIndexPath];
      goto LABEL_8;
    }

LABEL_9:
    v7 = 0;
    memset(v16, 0, sizeof(v16));
    goto LABEL_10;
  }

  v8 = self->_currentDataSource;
  if (!v8)
  {
    goto LABEL_9;
  }

  [(PXAssetsDataSource *)v8 lastItemIndexPath];
LABEL_8:
  v7 = *&v16[0];
LABEL_10:
  v17 = *(v16 + 8);
  v18 = *(&v16[1] + 1);
LABEL_11:
  if (v7 == *MEMORY[0x277D3CF78])
  {
    anchorAssetReference = [(PXZoomablePhotosLayout *)self anchorAssetReference];

    if (!anchorAssetReference)
    {
LABEL_17:
      v15.receiver = self;
      v15.super_class = PXZoomablePhotosLayout;
      [(PXZoomablePhotosLayout *)&v15 enumerateVisibleAnchoringSpriteIndexesUsingBlock:blockCopy];
      goto LABEL_18;
    }

    anchorAssetReference2 = [(PXZoomablePhotosLayout *)self anchorAssetReference];
  }

  else
  {
    v12 = self->_currentDataSource;
    *&v16[0] = v7;
    *(v16 + 8) = v17;
    *(&v16[1] + 1) = v18;
    anchorAssetReference2 = [(PXAssetsDataSource *)v12 assetReferenceAtItemIndexPath:v16];
  }

  v13 = anchorAssetReference2;
  if (!anchorAssetReference2)
  {
    goto LABEL_17;
  }

  v14 = [(PXZoomablePhotosLayout *)self spriteIndexForObjectReference:anchorAssetReference2];
  LOBYTE(v16[0]) = 0;
  blockCopy[2](blockCopy, v14, 1, v16);

LABEL_18:
}

- (id)objectReferenceForSpriteIndex:(unsigned int)index
{
  v4 = [(PXGZoomLayout *)self->_zoomLayout itemForSpriteIndex:[(PXZoomablePhotosLayout *)self convertSpriteIndex:*&index toDescendantLayout:self->_zoomLayout]];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = self->_currentDataSource;
    identifier = [(PXAssetsDataSource *)v7 identifier];
    section = self->_sectionIndexPath.section;
    v11[0] = identifier;
    v11[1] = section;
    v11[2] = v6;
    v11[3] = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [(PXAssetsDataSource *)v7 assetReferenceAtItemIndexPath:v11];
  }

  return v5;
}

- (void)scrollSpeedRegimeDidChange
{
  v3.receiver = self;
  v3.super_class = PXZoomablePhotosLayout;
  [(PXGSplitLayout *)&v3 scrollSpeedRegimeDidChange];
  PXZoomablePhotosInvalidate(self, 1048836);
}

- (void)containingScrollViewDidScroll:(CGPoint)scroll
{
  y = scroll.y;
  x = scroll.x;
  anchorAssetReference = [(PXZoomablePhotosLayout *)self anchorAssetReference];
  if (anchorAssetReference)
  {
    v7 = anchorAssetReference;
    v8 = PXFloatApproximatelyEqualToFloat();

    if ((v8 & 1) == 0)
    {
      self->_scaleCenterTargetInViewport.y = self->_scaleCenterTargetInViewport.y - y;
      anchor = self->_anchor;
      self->_anchor = 0;

      self->_scrolledWhileAnimatingZoom = 1;
      PXZoomablePhotosInvalidate(self, 16);
    }
  }

  v10.receiver = self;
  v10.super_class = PXZoomablePhotosLayout;
  [(PXZoomablePhotosLayout *)&v10 containingScrollViewDidScroll:x, y];
}

- (BOOL)fillSafeAreaBottomInset
{
  spec = [(PXZoomablePhotosLayout *)self spec];
  userInterfaceIdiom = [spec userInterfaceIdiom];
  LOBYTE(v5) = 0;
  if (MEMORY[0x21CEE04B0]() && userInterfaceIdiom == 2)
  {
    if ([spec sizeClass] == 2)
    {
      viewModel = [(PXZoomablePhotosLayout *)self viewModel];
      v5 = [viewModel isInSelectMode] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)setSafeAreaInsets:(UIEdgeInsets)insets
{
  v4.receiver = self;
  v4.super_class = PXZoomablePhotosLayout;
  [(PXZoomablePhotosLayout *)&v4 setSafeAreaInsets:insets.top, insets.left, insets.bottom, insets.right];
  PXZoomablePhotosInvalidate(self, 520);
}

- (void)setEffectProvider:(id)provider
{
  aBlock = provider;
  v4 = _Block_copy(self->_effectProvider);
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v4 == v5)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v8 = _Block_copy(aBlock);
      effectProvider = self->_effectProvider;
      self->_effectProvider = v8;

      PXZoomablePhotosInvalidate(self, 8);
      [(NSCache *)self->_providedEffectByAsset removeAllObjects];
      [(NSArray *)self->_itemLayouts enumerateObjectsUsingBlock:&__block_literal_global_87_8523];
    }
  }
}

- (void)setEnableAddContentAccessoryItem:(BOOL)item
{
  if (self->_enableAddContentAccessoryItem != item)
  {
    self->_enableAddContentAccessoryItem = item;
    PXZoomablePhotosInvalidate(self, 8);
  }
}

- (void)setAddContentHandler:(id)handler
{
  if (self->_addContentHandler != handler)
  {
    v4 = [handler copy];
    addContentHandler = self->_addContentHandler;
    self->_addContentHandler = v4;

    v6 = self->_addContentHandler != 0;

    [(PXZoomablePhotosLayout *)self setEnableAddContentAccessoryItem:v6];
  }
}

- (void)setPreventFillingTopAreaInsets:(BOOL)insets
{
  if (self->_preventFillingTopAreaInsets != insets)
  {
    self->_preventFillingTopAreaInsets = insets;
    PXZoomablePhotosInvalidate(self, 8);
  }
}

- (void)setEffectiveOverlayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_effectiveOverlayInsets = &self->_effectiveOverlayInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_effectiveOverlayInsets->top = top;
    p_effectiveOverlayInsets->left = left;
    p_effectiveOverlayInsets->bottom = bottom;
    p_effectiveOverlayInsets->right = right;

    PXZoomablePhotosInvalidate(self, 2097160);
  }
}

- (void)setInlineHeaderOverlayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_inlineHeaderOverlayInsets = &self->_inlineHeaderOverlayInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_inlineHeaderOverlayInsets->top = top;
    p_inlineHeaderOverlayInsets->left = left;
    p_inlineHeaderOverlayInsets->bottom = bottom;
    p_inlineHeaderOverlayInsets->right = right;
    inlineHeadersLayout = self->_inlineHeadersLayout;

    [(PXZoomableInlineHeadersLayout *)inlineHeadersLayout invalidateGeometry];
  }
}

- (void)setOverlayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_overlayInsets = &self->_overlayInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_overlayInsets->top = top;
    p_overlayInsets->left = left;
    p_overlayInsets->bottom = bottom;
    p_overlayInsets->right = right;

    PXZoomablePhotosInvalidate(self, 4);
  }
}

- (void)setAnchorAssetReference:(id)reference
{
  referenceCopy = reference;
  if (self->__anchorAssetReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->__anchorAssetReference, reference);
    [(PXGZoomLayout *)self->_zoomLayout setAnchorObjectReference:v6];
    referenceCopy = v6;
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  spec = self->_spec;
  if (spec != specCopy)
  {
    specCopy2 = spec;
    v8 = specCopy;
    defaultNumberOfColumns = [(PXZoomablePhotosLayoutSpec *)specCopy2 defaultNumberOfColumns];
    defaultNumberOfColumns2 = [(PXZoomablePhotosLayoutSpec *)v8 defaultNumberOfColumns];
    layoutOrientation = [(PXZoomablePhotosLayoutSpec *)specCopy2 layoutOrientation];
    layoutOrientation2 = [(PXZoomablePhotosLayoutSpec *)v8 layoutOrientation];
    if ([(PXZoomablePhotosLayoutSpec *)v8 userInterfaceIdiom]== 1)
    {
      layoutOrientation3 = [(PXZoomablePhotosLayoutSpec *)v8 layoutOrientation];
      if (layoutOrientation != layoutOrientation2 && layoutOrientation3 == 1)
      {
        v51 = specCopy2;
        viewModel = [(PXZoomablePhotosLayout *)self viewModel];
        userDefaults = [viewModel userDefaults];
        preferredIndividualItemsColumnsNumber = [userDefaults preferredIndividualItemsColumnsNumber];

        v16 = preferredIndividualItemsColumnsNumber;
        if (preferredIndividualItemsColumnsNumber)
        {
          supportedColumns = [(PXZoomablePhotosLayoutSpec *)v8 supportedColumns];
          integerValue = [preferredIndividualItemsColumnsNumber integerValue];
          supportedColumns2 = [(PXZoomablePhotosLayoutSpec *)v8 supportedColumns];
          v18 = [supportedColumns objectAtIndexedSubscript:{-[PXZoomablePhotosLayoutSpec bestColumnIndexForPreferredNumberOfColumns:allowedColumns:](v8, "bestColumnIndexForPreferredNumberOfColumns:allowedColumns:", integerValue, supportedColumns2)}];
          defaultNumberOfColumns2 = [v18 integerValue];

          v16 = preferredIndividualItemsColumnsNumber;
        }

        specCopy2 = v51;
      }
    }

    if (layoutOrientation != layoutOrientation2)
    {
      PXZoomablePhotosInvalidate(self, 512);
    }

    primaryItemsLayout = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
    v21 = defaultNumberOfColumns == [primaryItemsLayout numberOfColumns] && defaultNumberOfColumns != defaultNumberOfColumns2;

    maxColumnsForIndividualItems = [(PXZoomablePhotosLayoutSpec *)specCopy2 maxColumnsForIndividualItems];
    maxColumnsForIndividualItems2 = [(PXZoomablePhotosLayoutSpec *)v8 maxColumnsForIndividualItems];
    [(PXZoomablePhotosLayoutSpec *)specCopy2 itemAspectRatio];
    v23 = v22;
    [(PXZoomablePhotosLayoutSpec *)v8 itemAspectRatio];
    v25 = v24;
    minColumnsForMiniBadges = [(PXZoomablePhotosLayoutSpec *)specCopy2 minColumnsForMiniBadges];
    minColumnsForMiniBadges2 = [(PXZoomablePhotosLayoutSpec *)v8 minColumnsForMiniBadges];
    allowPinchEffect = [(PXZoomablePhotosLayoutSpec *)specCopy2 allowPinchEffect];
    allowPinchEffect2 = [(PXZoomablePhotosLayoutSpec *)v8 allowPinchEffect];
    v26 = specCopy2;
    hasTransparentHorizontalMargins = [(PXZoomablePhotosLayoutSpec *)specCopy2 hasTransparentHorizontalMargins];
    hasTransparentHorizontalMargins2 = [(PXZoomablePhotosLayoutSpec *)v8 hasTransparentHorizontalMargins];
    [(PXZoomablePhotosLayoutSpec *)self->_spec layoutMargins];
    [(PXZoomablePhotosLayoutSpec *)v8 layoutMargins];
    if (!PXEdgeInsetsEqualToEdgeInsets() || ([(PXZoomablePhotosLayoutSpec *)self->_spec aspectFitEdgeMargins], [(PXZoomablePhotosLayoutSpec *)v8 aspectFitEdgeMargins], !PXEdgeInsetsEqualToEdgeInsets()) || ([(PXZoomablePhotosLayoutSpec *)self->_spec squareEdgeMargins], [(PXZoomablePhotosLayoutSpec *)v8 squareEdgeMargins], (PXEdgeInsetsEqualToEdgeInsets() & 1) == 0))
    {
      PXZoomablePhotosInvalidate(self, 852024);
    }

    userInterfaceStyle = [(PXZoomablePhotosLayoutSpec *)self->_spec userInterfaceStyle];
    if (userInterfaceStyle != [(PXZoomablePhotosLayoutSpec *)v8 userInterfaceStyle]|| (v30 = [(PXZoomablePhotosLayoutSpec *)self->_spec userInterfaceLevel], v30 != [(PXZoomablePhotosLayoutSpec *)v8 userInterfaceLevel]))
    {
      ++self->_backgroundMediaVersion;
      PXZoomablePhotosInvalidate(self, 131080);
    }

    objc_storeStrong(&self->_spec, spec);
    inlineHeadersSpec = [(PXZoomablePhotosLayoutSpec *)v8 inlineHeadersSpec];
    [(PXZoomableInlineHeadersLayout *)self->_inlineHeadersLayout setSpec:inlineHeadersSpec];

    if (v21)
    {
      viewModel2 = [(PXZoomablePhotosLayout *)self viewModel];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __34__PXZoomablePhotosLayout_setSpec___block_invoke;
      v57[3] = &unk_278298F88;
      v57[4] = self;
      v57[5] = defaultNumberOfColumns2;
      [viewModel2 performChanges:v57];
    }

    v33 = hasTransparentHorizontalMargins ^ hasTransparentHorizontalMargins2;
    if ([(PXZoomablePhotosLayout *)self _hasLastRowFilledStrategy])
    {
      primaryItemsLayout2 = [(PXZoomablePhotosLayout *)self primaryItemsLayout];
      numberOfColumns = [primaryItemsLayout2 numberOfColumns];

      if (numberOfColumns < 1)
      {
        v38 = 0;
      }

      else
      {
        supportedColumns3 = [(PXZoomablePhotosLayoutSpec *)v8 supportedColumns];
        v37 = [MEMORY[0x277CCABB0] numberWithInteger:numberOfColumns];
        v38 = [supportedColumns3 containsObject:v37] ^ 1;
      }

      if ((v21 | v38))
      {
        [(PXZoomablePhotosLayout *)self _invalidateVisualShiftingEnsuringLastRowFilled];
      }
    }

    v40 = maxColumnsForIndividualItems != maxColumnsForIndividualItems2 || minColumnsForMiniBadges != minColumnsForMiniBadges2;
    if (v23 != v25)
    {
      v40 = 1;
    }

    if ((v40 | v33))
    {
      PXZoomablePhotosInvalidate(self, 65592);
    }

    if (allowPinchEffect != allowPinchEffect2)
    {
      PXZoomablePhotosInvalidate(self, 0x80000);
    }

    rootLayout = [(PXZoomablePhotosLayout *)self rootLayout];
    activeAnchor = [rootLayout activeAnchor];

    if (!activeAnchor)
    {
      rootLayout2 = [(PXZoomablePhotosLayout *)self rootLayout];
      createAnchorForVisibleArea = [rootLayout2 createAnchorForVisibleArea];
      autoInvalidate = [createAnchorForVisibleArea autoInvalidate];
    }
  }
}

void __34__PXZoomablePhotosLayout_setSpec___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  v4 = [v3 viewModel];
  v5 = [v4 allowedColumns];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v7 = [v5 indexOfObject:v6];

  [v8 zoomToColumnIndex:v7 withAnchorAssetReference:0 animated:0];
}

- (PXZoomablePhotosLayout)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosLayout.m" lineNumber:345 description:{@"%s is not available as initializer", "-[PXZoomablePhotosLayout init]"}];

  abort();
}

- (PXZoomablePhotosLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  v47.receiver = self;
  v47.super_class = PXZoomablePhotosLayout;
  v6 = [(PXZoomablePhotosLayout *)&v47 init];
  if (v6)
  {
    specManager = [modelCopy specManager];
    [specManager registerChangeObserver:v6 context:PXZoomablePhotosSpecManagerObserverContext];
    spec = [specManager spec];
    objc_storeStrong(&v6->_spec, spec);
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    itemLayoutsAllowedToLoad = v6->_itemLayoutsAllowedToLoad;
    v6->_itemLayoutsAllowedToLoad = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEA78]);
    providedEffectByAsset = v6->_providedEffectByAsset;
    v6->_providedEffectByAsset = v11;

    [(NSCache *)v6->_providedEffectByAsset setCountLimit:200];
    initialNumberOfColumns = [spec initialNumberOfColumns];
    if (initialNumberOfColumns > [spec maxColumnsForIndividualItems])
    {
      assetsDataSourceManager = [modelCopy assetsDataSourceManager];
      dataSource = [assetsDataSourceManager dataSource];
      areAllSectionsConsideredAccurate = [dataSource areAllSectionsConsideredAccurate];

      if ((areAllSectionsConsideredAccurate & 1) == 0)
      {
        assetsDataSourceManager2 = [modelCopy assetsDataSourceManager];
        [assetsDataSourceManager2 performChanges:&__block_literal_global_8528];
      }
    }

    v18 = [modelCopy bestColumnIndexForPreferredNumberOfColumns:initialNumberOfColumns];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __44__PXZoomablePhotosLayout_initWithViewModel___block_invoke_2;
    v46[3] = &__block_descriptor_40_e44_v16__0___PXMutableZoomablePhotosViewModel__8l;
    v46[4] = v18;
    [modelCopy performInitialChanges:v46];
    v6->_bodyLayoutAXGroupRole = 0;
    objc_storeStrong(&v6->_viewModel, model);
    [(PXZoomablePhotosViewModel *)v6->_viewModel registerChangeObserver:v6 context:PXZoomablePhotosViewModelObserverContext];
    [(PXZoomablePhotosViewModel *)v6->_viewModel setGeometryDelegate:v6];
    assetsDataSourceManager3 = [modelCopy assetsDataSourceManager];
    dataSourceManager = v6->_dataSourceManager;
    v6->_dataSourceManager = assetsDataSourceManager3;

    [(PXAssetsDataSourceManager *)v6->_dataSourceManager registerChangeObserver:v6 context:PXZoomablePhotosDataSourceObserverContext];
    dataSource2 = [(PXAssetsDataSourceManager *)v6->_dataSourceManager dataSource];
    currentDataSource = v6->_currentDataSource;
    v6->_currentDataSource = dataSource2;

    if (modelCopy)
    {
      [modelCopy sectionIndexPath];
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    *&v6->_sectionIndexPath.dataSourceIdentifier = v44;
    *&v6->_sectionIndexPath.item = v45;
    v23 = objc_alloc_init(PXPhotosGridAssetDecorationSource);
    assetDecorationSource = v6->_assetDecorationSource;
    v6->_assetDecorationSource = v23;

    [(PXPhotosGridAssetDecorationSource *)v6->_assetDecorationSource setDataSource:v6->_currentDataSource section:v6->_sectionIndexPath.section];
    badgesModifier = [modelCopy badgesModifier];
    [(PXPhotosGridAssetDecorationSource *)v6->_assetDecorationSource setBadgesModifier:badgesModifier];

    loadingStatusManager = [modelCopy loadingStatusManager];
    [(PXPhotosGridAssetDecorationSource *)v6->_assetDecorationSource setLoadingStatusManager:loadingStatusManager];

    v27 = *MEMORY[0x277D3CFB0];
    v6->_normalizedScaleCenterInAnchorSprite = *MEMORY[0x277D3CFB0];
    v6->_scaleCenterTargetInViewport = v27;
    v28 = objc_alloc_init(MEMORY[0x277D73CF8]);
    zoomLayout = v6->_zoomLayout;
    v6->_zoomLayout = v28;

    [(PXGZoomLayout *)v6->_zoomLayout setContentSource:v6];
    mediaProvider = [modelCopy mediaProvider];
    preheatMediaProvider = v6->_preheatMediaProvider;
    v6->_preheatMediaProvider = mediaProvider;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    visualAnchorAssetReferenceItemByLayout = v6->_visualAnchorAssetReferenceItemByLayout;
    v6->_visualAnchorAssetReferenceItemByLayout = weakToStrongObjectsMapTable;

    inlineHeadersDataSourceManager = [modelCopy inlineHeadersDataSourceManager];

    if (inlineHeadersDataSourceManager)
    {
      v35 = [PXZoomableInlineHeadersLayout alloc];
      inlineHeadersDataSourceManager2 = [modelCopy inlineHeadersDataSourceManager];
      v37 = [(PXZoomableInlineHeadersLayout *)v35 initWithDataSourceManager:inlineHeadersDataSourceManager2];
      inlineHeadersLayout = v6->_inlineHeadersLayout;
      v6->_inlineHeadersLayout = v37;

      inlineHeadersSpec = [spec inlineHeadersSpec];
      [(PXZoomableInlineHeadersLayout *)v6->_inlineHeadersLayout setSpec:inlineHeadersSpec];

      [(PXZoomableInlineHeadersLayout *)v6->_inlineHeadersLayout setGeometrySource:v6];
    }

    v40 = [objc_alloc(MEMORY[0x277D3CD80]) initWithValue:1.0];
    decorationAlphaAnimator = v6->_decorationAlphaAnimator;
    v6->_decorationAlphaAnimator = v40;

    [(PXNumberAnimator *)v6->_decorationAlphaAnimator registerChangeObserver:v6 context:PXZoomablePhotosDecorationAlphaAnimatorContext];
    miniModeAnimator = [modelCopy miniModeAnimator];
    [miniModeAnimator registerChangeObserver:v6 context:PXZoomablePhotosMiniModeAnimatorContext];

    [(PXGSplitLayout *)v6 setMode:5];
    [(PXGSplitLayout *)v6 setFirstSublayout:v6->_zoomLayout];
    [(PXGSplitLayout *)v6 setSecondSublayout:v6->_inlineHeadersLayout];
    v6->_pinchEffectCaptureSpriteIndex = -1;
    v6->_lightBackgroundSpriteIndexRange = [(PXZoomablePhotosLayout *)v6 addSpriteCount:5 withInitialState:&__block_literal_global_75];
    [(PXZoomablePhotosLayout *)v6 setContentSource:v6];
    PXZoomablePhotosInvalidate(v6, 8324031);
  }

  return v6;
}

void __44__PXZoomablePhotosLayout_initWithViewModel___block_invoke_3(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v5 = a3[3];
    v4 = a3[4];
    v6 = a3[2];
    v7 = *MEMORY[0x277D73D58];
    v8 = *(MEMORY[0x277D73D58] + 16);
    v9 = *MEMORY[0x277D73D78];
    v10 = *(MEMORY[0x277D73D78] + 16);
    v12 = *(MEMORY[0x277D73D78] + 64);
    v11 = *(MEMORY[0x277D73D78] + 80);
    v14 = *(MEMORY[0x277D73D78] + 32);
    v13 = *(MEMORY[0x277D73D78] + 48);
    v16 = *(MEMORY[0x277D73D78] + 128);
    v15 = *(MEMORY[0x277D73D78] + 144);
    v18 = *(MEMORY[0x277D73D78] + 96);
    v17 = *(MEMORY[0x277D73D78] + 112);
    v19 = *MEMORY[0x277D73D70];
    v20 = *(MEMORY[0x277D73D70] + 16);
    __asm { FMOV            V22.2S, #1.0 }

    v26 = *(MEMORY[0x277D73D70] + 32);
    do
    {
      *v6 = v7;
      v6[1] = v8;
      v6 += 2;
      *v5 = v9;
      v5[1] = v10;
      v5[4] = v12;
      v5[5] = v11;
      v5[2] = v14;
      v5[3] = v13;
      v5[8] = v16;
      v5[9] = v15;
      v5[6] = v18;
      v5[7] = v17;
      *(v4 + 32) = v26;
      *v4 = v19;
      *(v4 + 16) = v20;
      v5 += 10;
      *(v4 + 1) = 5;
      *(v4 + 8) = _D22;
      v4 += 40;
      --v3;
    }

    while (v3);
  }
}

+ (id)visualizeBestAnchorColumnsForLayouts:(id)layouts imageWidth:(double)width
{
  layoutsCopy = layouts;
  v7 = [layoutsCopy count];
  v8 = (v7 - 1);
  PXEdgeInsetsMake();
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __74__PXZoomablePhotosLayout_visualizeBestAnchorColumnsForLayouts_imageWidth___block_invoke;
  v20 = &unk_2782994A0;
  widthCopy = width;
  v23 = v10 + v9 + width * 0.075 * v8 + (width * 0.075 * 0.5 * v8 + v7 * (width * 0.075)) * v7;
  v24 = v9;
  v25 = v11;
  v26 = v10;
  v27 = v12;
  widthCopy2 = width;
  v29 = v7;
  v21 = layoutsCopy;
  v30 = width * 0.075;
  v31 = width * 0.075 * 0.5;
  selfCopy = self;
  v33 = v31 * v8 + v7 * (width * 0.075);
  v34 = width * 0.075;
  v13 = layoutsCopy;
  v14 = MEMORY[0x21CEE0170](1, 0, &v17, width, v23);
  v15 = [MEMORY[0x277D755B8] imageWithCGImage:{v14, v17, v18, v19, v20}];
  CGImageRelease(v14);

  return v15;
}

void __74__PXZoomablePhotosLayout_visualizeBestAnchorColumnsForLayouts_imageWidth___block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v74 = *MEMORY[0x277D85DE8];
  PXEdgeInsetsInsetSize();
  v13 = v12;
  CGContextTranslateCTM(a2, 0.0, *(a1 + 48));
  CGContextScaleCTM(a2, 1.0, -1.0);
  CGContextSetRGBFillColor(a2, 1.0, 1.0, 1.0, 1.0);
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  CGContextFillRect(a2, v76);
  PXClamp();
  CGContextSetLineWidth(a2, v14);
  CGContextTranslateCTM(a2, *(a1 + 64), *(a1 + 56));
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v62 = (&v53 - 2 * v20);
  v65 = [*(a1 + 32) indexOfObjectPassingTest:{&__block_literal_global_275, v19}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v54 = *(a1 + 32);
  v57 = [v54 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v57)
  {
    v56 = *v70;
    p_y = &v62->y;
    v55 = 0.9;
    v63 = 0x3FC999999999999ALL;
    v61 = 0x3FD3333333333333;
    v60 = 0x3FE999999999999ALL;
    do
    {
      v21 = 0;
      do
      {
        if (*v70 != v56)
        {
          objc_enumerationMutation(v54);
        }

        v58 = v21;
        v22 = *(*(&v69 + 1) + 8 * v21);
        CGContextSetRGBStrokeColor(a2, v55, v55, v55, 1.0);
        if (*(a1 + 96) >= 1)
        {
          v23 = 0;
          do
          {
            v24 = [*(a1 + 32) objectAtIndexedSubscript:v23];
            v25 = [v24 numberOfColumns];
            if ([v24 numberOfColumns] >= 1)
            {
              v26 = 0;
              v27 = 1.0 / v25;
              do
              {
                v77.origin.x = v13 * (v27 * v26);
                v77.size.height = *(a1 + 104);
                v77.origin.y = (v77.size.height + *(a1 + 112)) * v23;
                v77.size.width = v13 * v27;
                CGContextStrokeRect(a2, v77);
                ++v26;
              }

              while (v26 < [v24 numberOfColumns]);
            }

            ++v23;
          }

          while (v23 < *(a1 + 96));
        }

        v28 = [v22 numberOfColumns];
        v66 = 0;
        v67 = fmax(v13 * (1.0 / v28) / 20.0, 3.0);
        v29 = (v67 - 1);
        v30 = 1;
        do
        {
          v59 = v30;
          if ([v22 numberOfColumns] >= 1)
          {
            v68 = 0;
            while (v67 < 1)
            {
LABEL_38:
              v51 = v68 + 1;
              v52 = [v22 numberOfColumns];
              v68 = v51;
              if (v51 >= v52)
              {
                goto LABEL_39;
              }
            }

            v31 = 0;
            while (2)
            {
              v32 = v66;
              [*(a1 + 120) getBestAnchorColumns:v17 forItemLayouts:*(a1 + 32) startingAtBaseLayout:v22 anchorItem:v68 normalizedScaleCenterInAnchor:v66 & 1 biasTowardsCenter:{v31 / v29, 0.5}];
              v33 = 1.0;
              if (v32)
              {
                v34 = 0.68;
                v35 = 0.26;
                v36 = &v75;
                goto LABEL_27;
              }

              v33 = 0.5;
              v34 = 0.5;
              v35 = 0.5;
              v37 = 0.5;
              if (v65 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v38 = *&v17[8 * v65];
                if (v38)
                {
                  if (v38 == 1)
                  {
                    v33 = 0.0;
                    v34 = *&v60;
                    goto LABEL_24;
                  }

                  v35 = 1.0;
                  v33 = 0.0;
                  v34 = 0.0;
                }

                else
                {
                  v34 = 0.0;
                  v33 = 1.0;
LABEL_24:
                  v35 = 0.0;
                }

                v36 = &v74;
LABEL_27:
                v37 = *(v36 - 32);
              }

              CGContextSetRGBStrokeColor(a2, v33, v34, v35, v37);
              if (*(a1 + 96) >= 1)
              {
                v39 = 0;
                v40 = p_y;
                do
                {
                  v41 = [*(a1 + 32) objectAtIndexedSubscript:v39];
                  v42 = *&v17[8 * v39];
                  v43 = [*(a1 + 32) objectAtIndexedSubscript:v39];
                  v44 = [v43 numberOfColumns];

                  if (v41 == v22)
                  {
                    v45 = v31 / v29;
                  }

                  else
                  {
                    v45 = 0.5;
                  }

                  v46 = v13 * (v45 * (1.0 / v44) + v42 * (1.0 / v44));
                  v47 = *(a1 + 104) * 0.5 + v39 * (*(a1 + 104) + *(a1 + 112));
                  *(v40 - 1) = v46;
                  *v40 = v47;

                  ++v39;
                  v48 = *(a1 + 96);
                  v40 += 2;
                }

                while (v39 < v48);
                if (v48 >= 2)
                {
                  v49 = 0;
                  v50 = v62;
                  do
                  {
                    CGContextStrokeLineSegments(a2, v50, 2uLL);
                    ++v49;
                    ++v50;
                  }

                  while (v49 < *(a1 + 96) - 1);
                }
              }

              if (++v31 == v67)
              {
                goto LABEL_38;
              }

              continue;
            }
          }

LABEL_39:
          v30 = 0;
          v66 = 1;
        }

        while ((v59 & 1) != 0);
        CGContextTranslateCTM(a2, 0.0, *(a1 + 128) + *(a1 + 136));
        v21 = v58 + 1;
      }

      while (v58 + 1 != v57);
      v57 = [v54 countByEnumeratingWithState:&v69 objects:v73 count:16];
    }

    while (v57);
  }
}

+ (void)getBestAnchorColumns:(int64_t *)columns forItemLayouts:(id)layouts startingAtBaseLayout:(id)layout anchorItem:(int64_t)item normalizedScaleCenterInAnchor:(CGPoint)anchor biasTowardsCenter:(BOOL)center
{
  centerCopy = center;
  x = anchor.x;
  v87 = a2;
  selfCopy = self;
  v114 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  layoutCopy = layout;
  v13 = [layoutsCopy count];
  v14 = [layoutsCopy indexOfObject:layoutCopy];
  v112 = v13;
  if (v13 <= 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:v87 object:selfCopy file:@"PXZoomablePhotosLayout.m" lineNumber:2589 description:{@"Invalid parameter not satisfying: %@", @"layoutCount > 0"}];
  }

  if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:v87 object:selfCopy file:@"PXZoomablePhotosLayout.m" lineNumber:2590 description:{@"Invalid parameter not satisfying: %@", @"anchorItem != NSNotFound"}];
  }

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:v87 object:selfCopy file:@"PXZoomablePhotosLayout.m" lineNumber:2591 description:{@"Invalid parameter not satisfying: %@", @"baseLayoutIndex != NSNotFound"}];
  }

  PXGAssertErrValidPoint();
  v111 = [layoutCopy columnForItem:item];
  numberOfColumns = [layoutCopy numberOfColumns];
  if (v112 < 1)
  {
LABEL_11:
    v16 = 0;
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v17 = [layoutsCopy objectAtIndexedSubscript:v16];
      numberOfColumns2 = [v17 numberOfColumns];

      if (numberOfColumns2 > 1)
      {
        break;
      }

      if (v112 == ++v16)
      {
        goto LABEL_11;
      }
    }
  }

  v19 = [layoutsCopy objectAtIndexedSubscript:v16];
  numberOfColumns3 = [v19 numberOfColumns];

  columnsCopy = columns;
  v85 = layoutCopy;
  if (centerCopy)
  {
    v96 = numberOfColumns3 / 2;
    v22 = 1;
  }

  else
  {
    v23 = v111;
    if (v14 != v16)
    {
      v23 = 0;
    }

    v96 = v23;
    if (v14 == v16)
    {
      v22 = 1;
    }

    else
    {
      v22 = numberOfColumns3;
    }
  }

  v97 = v22;
  v84 = &v84;
  MEMORY[0x28223BE20](v21);
  v98 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29 = MEMORY[0x28223BE20](v28).n128_u64[0];
  v89 = &v84 - v30;
  v32 = 8 * v31;
  v103 = 8 * v31;
  if (numberOfColumns3 >= 1)
  {
    v33 = v98;
    v34 = v27;
    v35 = v89;
    v36 = numberOfColumns3;
    do
    {
      *v33 = 0;
      if (v112 >= 1)
      {
        bzero(v34, v32);
        memset_pattern16(v35, &unk_21AC7D660, v103);
        v32 = v103;
      }

      v35 += v32;
      v34 += v32;
      ++v33;
      --v36;
    }

    while (v36);
  }

  v37 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v97)
  {
    v77 = v85;
    goto LABEL_92;
  }

  v38 = 0;
  v39 = 1.0 / numberOfColumns;
  v40 = 1.0 / numberOfColumns3;
  v41 = v39 * 0.5 + v39 * v111;
  v42 = x * v39 + v39 * v111;
  v109 = v39;
  v43 = 0.5;
  v95 = v40;
  v94 = v40 * 0.5;
  v93 = -v41;
  v99 = v40 / v39;
  v92 = 1.0 - v40 / v39;
  v106 = v41;
  v110 = v42;
  v108 = v41 - v42;
  v44 = v96;
  v45 = &v27[8 * v112 * v96];
  v46 = &v89[8 * v112 * v96];
  v104 = 1000.0;
  v91 = -0.025;
  v90 = 0.025;
  do
  {
    v102 = v38;
    v47 = v38 + v44;
    v48 = PXFloatApproximatelyEqualToFloat();
    v49 = v110;
    if ((v48 & 1) == 0)
    {
      v49 = (v94 + v95 * v47 + v93 * v99) / v92;
    }

    v100 = v47;
    v101 = v45;
    if (v112 < 1)
    {
      v51 = 0.0;
      goto LABEL_81;
    }

    v50 = 0;
    v105 = v106 - v49;
    v51 = 0.0;
    v52 = 0.0;
    while (1)
    {
      v53 = [layoutsCopy objectAtIndexedSubscript:v50];
      numberOfColumns4 = [v53 numberOfColumns];
      v55 = numberOfColumns4;
      v56 = numberOfColumns4;
      v57 = 1.0 / numberOfColumns4;
      v58 = v57 / v109;
      if (numberOfColumns4)
      {
        v59 = v49 + v105 * v58;
        if (centerCopy)
        {
          v59 = v43;
        }

        v60 = vcvtmd_s64_f64(v59 * v56);
        if (numberOfColumns4 - 1 < v60)
        {
          v60 = numberOfColumns4 - 1;
        }

        v61 = v60 & ~(v60 >> 63);
      }

      else
      {
        v61 = 0x7FFFFFFFFFFFFFFFLL;
      }

      location = 0;
      if (!v50)
      {
        goto LABEL_43;
      }

      v63 = [layoutsCopy objectAtIndexedSubscript:v50 - 1];
      if ([v63 numberOfColumns] <= 1)
      {

LABEL_43:
        length = v55;
        if (!v55)
        {
          goto LABEL_80;
        }

        goto LABEL_44;
      }

      v64 = *(v45 - 1);

      if (v64 == 0.0)
      {
        goto LABEL_43;
      }

      if (PXFloatApproximatelyEqualToFloat())
      {
LABEL_41:
        v65.location = 0;
LABEL_73:
        v65.length = v55;
        goto LABEL_74;
      }

      if (v52 > 0.0)
      {
        v65.location = vcvtpd_s64_f64((v64 + v91 + v57 * -0.5) * v56);
        goto LABEL_73;
      }

      if (v52 >= 0.0)
      {
        goto LABEL_41;
      }

      v65.location = 0;
      v65.length = vcvtmd_s64_f64((v64 + v90 + v57 * -0.5) * v56) + 1;
LABEL_74:
      v116.location = 0;
      v116.length = v55;
      v73 = NSIntersectionRange(v65, v116);
      length = v73.length;
      location = v73.location;
      if (!v73.length)
      {
        goto LABEL_80;
      }

LABEL_44:
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_80;
      }

      v67 = length + location - 1;
      if (v67 >= v61)
      {
        v67 = v61;
      }

      v68 = location <= v67 ? v67 : location;
      if (v67 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_80;
      }

      if (v14 == v50 && v111 >= location && v111 - location < length && v68 != v111 && !centerCopy)
      {
        break;
      }

      v69 = v57 * 0.5 + v57 * v68;
      v70 = vabdd_f64(v69, v110 + v108 * v58);
      if (v14 == v50 && (v111 - location >= length || v111 < location))
      {
        v70 = v70 + v104;
      }

      *&v46[8 * v50] = v68;
      *v45 = v69;
      if (v14 != v50 && v52 == 0.0 && v55 >= 2 && (PXFloatApproximatelyEqualToFloat() & 1) == 0)
      {
        PXFloatSign();
        if (v50 <= v14)
        {
          v52 = v72;
        }

        else
        {
          v52 = -v72;
        }
      }

      v51 = v51 + v70;

      ++v50;
      ++v45;
      v43 = 0.5;
      if (v112 == v50)
      {
        goto LABEL_81;
      }
    }

    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:v87 object:selfCopy file:@"PXZoomablePhotosLayout.m" lineNumber:2724 description:{@"finalColumn (%ld) != baseAnchorColumn (%ld)", v68, v111}];

LABEL_80:
    v51 = 1.79769313e308;
    v43 = 0.5;
LABEL_81:
    PXGAssertErrValidFloat();
    *&v98[8 * v100] = v51;
    v75 = v103;
    v38 = v102 + 1;
    v45 = &v101[v103 / 8];
    v46 += v103;
    v76 = v97;
    v44 = v96;
  }

  while (v102 + 1 != v97);
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  v29 = 1.79769313e308;
  v77 = v85;
  do
  {
    if (*&v98[8 * v44] < v29)
    {
      v37 = v44;
      v29 = *&v98[8 * v44];
    }

    ++v44;
    --v76;
  }

  while (v76);
  if (v37 == 0x7FFFFFFFFFFFFFFFLL || v29 >= 1.79769313e308)
  {
LABEL_92:
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:v87 object:selfCopy file:@"PXZoomablePhotosLayout.m" lineNumber:2781 description:@"Must be able to find a zoom plan solution"];

    v75 = v103;
  }

  memcpy(columnsCopy, &v89[8 * v37 * v112], v75);

  v80 = layoutsCopy;
}

@end