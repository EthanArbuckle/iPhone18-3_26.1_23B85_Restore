@interface PXPhotosSectionedLayout
- ($B01073AA55A67B413588F7AD9EFB6822)maskCornerRadius;
- ($B01073AA55A67B413588F7AD9EFB6822)preferredCornerRadius;
- (BOOL)_configureSectionLayout:(id)layout sectionIndexPath:(PXSimpleIndexPath *)path;
- (BOOL)_shouldFaultInSection:(int64_t)section inDataSource:(id)source;
- (BOOL)layout:(id)layout shouldPreventFaultOutOfSublayout:(id)sublayout;
- (BOOL)shouldApplySpriteTransformToSublayouts;
- (CGRect)maskRect;
- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)size;
- (PXPhotosSectionedLayout)init;
- (PXPhotosSectionedLayout)initWithViewModel:(id)model;
- (id)_createAnimationForChangeFromDataSource:(id)source toDataSource:(id)dataSource changeDetails:(id)details;
- (id)axSpriteIndexes;
- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type;
- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index;
- (id)layout:(id)layout navigationObjectReferenceForSublayoutAtIndex:(int64_t)index;
- (id)locationNamesFutureForContentInRect:(CGRect)rect;
- (id)navigationObjectReferenceForLocation:(CGPoint)location;
- (id)presentedItemsGeometryForSection:(unint64_t)section inDataSource:(id)source;
- (id)topmostHeaderSnapshotInRect:(CGRect)rect;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (void)_forceSectionIfNeeded:(int64_t)needed;
- (void)_invalidateCaptureSprite;
- (void)_invalidatePreferredCornerRadius;
- (void)_invalidateSublayoutsConfiguration;
- (void)_invalidateSublayoutsDataSource;
- (void)_invalidateSublayoutsSpec;
- (void)_performAddActionForSectionLayout:(id)layout;
- (void)_updateCaptureSprite;
- (void)_updatePreferredCornerRadius;
- (void)_updateSublayoutGridConfiguratorForLayout:(id)layout;
- (void)_updateSublayoutsConfiguration;
- (void)_updateSublayoutsDataSource;
- (void)_updateSublayoutsSpec;
- (void)assetSectionLayoutDidConfigureLayouts:(id)layouts;
- (void)didFaultInSublayout:(id)sublayout atIndex:(int64_t)index fromEstimatedContentSize:(CGSize)size;
- (void)didUpdate;
- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateAssetsSectionSublayoutsInRect:(CGRect)rect usingBlock:(id)block;
- (void)enumerateAssetsSectionSublayoutsUsingBlock:(id)block;
- (void)enumerateItemsGeometriesInRect:(CGRect)rect dataSource:(id)source usingBlock:(id)block;
- (void)enumerateSectionBoundariesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setBodyLayoutProvider:(id)provider;
- (void)setHeaderLayoutProvider:(id)provider;
- (void)setHorizontalScrollingHintFactor:(double)factor;
- (void)setInterSectionSpacing:(double)spacing;
- (void)setMaskCornerRadius:(id)radius;
- (void)setMaskRect:(CGRect)rect;
- (void)setPreferredCornerRadius:(id)radius;
- (void)setSpec:(id)spec;
- (void)update;
- (void)willRemoveSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags;
- (void)willUpdate;
@end

@implementation PXPhotosSectionedLayout

- ($B01073AA55A67B413588F7AD9EFB6822)maskCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (CGRect)maskRect
{
  x = self->_maskRect.origin.x;
  y = self->_maskRect.origin.y;
  width = self->_maskRect.size.width;
  height = self->_maskRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($B01073AA55A67B413588F7AD9EFB6822)preferredCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA78]);

  return v2;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PhotosViewModelObserverContext != context)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:1048 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (change)
  {
    if (self->_isUpdatingSublayouts)
    {
      [(PXPhotosSectionedLayout *)self _updateSublayoutsDataSource];
    }

    else
    {
      [(PXPhotosSectionedLayout *)self _invalidateSublayoutsDataSource];
      if (([(PXAssetsDataSource *)self->_assetsDataSource areAllSectionsConsideredAccurate]& 1) == 0)
      {
        [(PXPhotosSectionedLayout *)self setNeedsUpdate];
      }
    }
  }

  if ((change & 0x144100000F06) != 0)
  {
    if (self->_isUpdatingSublayouts)
    {
      [(PXPhotosSectionedLayout *)self _updateSublayoutsConfiguration];
    }

    else
    {
      [(PXPhotosSectionedLayout *)self _invalidateSublayoutsConfiguration];
    }
  }

  if ((change & 0x14000) != 0)
  {
    [(PXPhotosSectionedLayout *)self _invalidateSublayoutsSpec];
    [(PXPhotosSectionedLayout *)self _invalidateSublayoutsConfiguration];
    if ((~change & 0x4004000) == 0)
    {
      createAnimation = [(PXPhotosSectionedLayout *)self createAnimation];
      [createAnimation setDuration:0.3];
    }

    rootLayout = [(PXPhotosSectionedLayout *)self rootLayout];
    createAnchorForVisibleArea = [rootLayout createAnchorForVisibleArea];
    autoInvalidate = [createAnchorForVisibleArea autoInvalidate];
  }

  if ((change & 2) != 0)
  {
    self->_dataSourceIdentifierOfCachedSectionsWithSelectedItems = *MEMORY[0x277D3CF78];
  }
}

- (BOOL)layout:(id)layout shouldPreventFaultOutOfSublayout:(id)sublayout
{
  layoutCopy = layout;
  sublayoutCopy = sublayout;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentLayout = [sublayoutCopy contentLayout];
    if (self->_dataSourceIdentifierOfCachedSectionsWithSelectedItems == *MEMORY[0x277D3CF78])
    {
      viewModel = [(PXPhotosSectionedLayout *)self viewModel];
      selectionSnapshot = [viewModel selectionSnapshot];

      dataSource = [selectionSnapshot dataSource];
      self->_dataSourceIdentifierOfCachedSectionsWithSelectedItems = [dataSource identifier];

      selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
      v13 = [selectedIndexPaths sectionsWithItemsForDataSourceIdentifier:self->_dataSourceIdentifierOfCachedSectionsWithSelectedItems];
      cachedSectionsWithSelectedItems = self->_cachedSectionsWithSelectedItems;
      self->_cachedSectionsWithSelectedItems = v13;
    }

    dataSource2 = [contentLayout dataSource];
    identifier = [dataSource2 identifier];
    dataSourceIdentifierOfCachedSectionsWithSelectedItems = self->_dataSourceIdentifierOfCachedSectionsWithSelectedItems;

    if (identifier == dataSourceIdentifierOfCachedSectionsWithSelectedItems)
    {
      section = [contentLayout section];
      v19 = self->_cachedSectionsWithSelectedItems;
      v20 = [(NSIndexSet *)v19 containsIndex:section]|| [(NSIndexSet *)v19 containsIndex:section - 1]|| [(NSIndexSet *)v19 containsIndex:section + 1];
    }

    else
    {
      v20 = 0;
    }

    bodyLayoutProvider = [(PXPhotosSectionedLayout *)self bodyLayoutProvider];
    bodyContentLayout = [contentLayout bodyContentLayout];
    v23 = [bodyLayoutProvider shouldPreventFaultOutOfBodyLayout:bodyContentLayout inAssetSectionLayout:contentLayout];

    hasPointReferences = 1;
    if (!v20 && (v23 & 1) == 0)
    {
      hasPointReferences = [layoutCopy hasPointReferences];
    }
  }

  else
  {
    hasPointReferences = 0;
  }

  return hasPointReferences;
}

- (void)assetSectionLayoutDidConfigureLayouts:(id)layouts
{
  layoutsCopy = layouts;
  bodyContentLayout = [layoutsCopy bodyContentLayout];

  if (bodyContentLayout)
  {
    bodyLayoutProvider = [(PXPhotosSectionedLayout *)self bodyLayoutProvider];
    bodyContentLayout2 = [layoutsCopy bodyContentLayout];
    [bodyLayoutProvider configureSectionBodyLayout:bodyContentLayout2 inAssetSectionLayout:layoutsCopy forSectionedLayout:self];
  }
}

- (id)layout:(id)layout navigationObjectReferenceForSublayoutAtIndex:(int64_t)index
{
  viewModel = [(PXPhotosSectionedLayout *)self viewModel];
  [(PXPhotosSectionedLayout *)self _forceSectionIfNeeded:index];
  currentDataSource = [viewModel currentDataSource];
  v11[0] = [currentDataSource identifier];
  v11[1] = index;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v12 = vnegq_f64(v8);
  v9 = [currentDataSource assetCollectionReferenceAtSectionIndexPath:v11];

  return v9;
}

- (id)layout:(id)layout createSublayoutAtIndex:(int64_t)index
{
  viewModel = [(PXPhotosSectionedLayout *)self viewModel];
  [(PXPhotosSectionedLayout *)self _forceSectionIfNeeded:index];
  currentDataSource = [viewModel currentDataSource];
  v8 = [(PXPhotosSectionedLayout *)self _shouldFaultInSection:index inDataSource:currentDataSource];

  if (v8)
  {
    v9 = [PXAssetsSectionLayout alloc];
    assetsDataSource = [(PXPhotosSectionedLayout *)self assetsDataSource];
    loadingStatusManager = [viewModel loadingStatusManager];
    assetImportStatusManager = [viewModel assetImportStatusManager];
    inlinePlaybackController = [viewModel inlinePlaybackController];
    spec = [(PXPhotosSectionedLayout *)self spec];
    assetsSpec = [spec assetsSpec];
    v16 = [(PXAssetsSectionLayout *)v9 initWithSection:index dataSource:assetsDataSource loadingStatusManager:loadingStatusManager assetImportStatusManager:assetImportStatusManager inlinePlaybackController:inlinePlaybackController zoomLevel:4 spec:assetsSpec];

    [(PXAssetsSectionLayout *)v16 setDelegate:self];
    if ([viewModel wantsSingleRowScrollingLayout])
    {
      [(PXAssetsSectionLayout *)v16 setPreferredInitialContentLayoutAxis:2];
      [(PXAssetsSectionLayout *)v16 setPreferredInitialContentLayoutNumberOfRows:&unk_282C480F0];
    }

    decorationViewClass = [viewModel decorationViewClass];
    assetDecorationSource = [(PXAssetsSectionLayout *)v16 assetDecorationSource];
    [assetDecorationSource setDecorationViewClass:decorationViewClass];

    assetsDataSource2 = [(PXPhotosSectionedLayout *)self assetsDataSource];
    identifier = [assetsDataSource2 identifier];

    v23[0] = identifier;
    v23[1] = index;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v24 = vnegq_f64(v21);
    [(PXPhotosSectionedLayout *)self _configureSectionLayout:v16 sectionIndexPath:v23];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_forceSectionIfNeeded:(int64_t)needed
{
  viewModel = [(PXPhotosSectionedLayout *)self viewModel];
  v6 = viewModel;
  if (self->_numberOfForcedSections <= 19)
  {
    currentDataSource = [viewModel currentDataSource];
    v8 = [currentDataSource numberOfItemsInSection:needed];

    if (!v8)
    {
      dataSourceManager = [v6 dataSourceManager];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __49__PXPhotosSectionedLayout__forceSectionIfNeeded___block_invoke;
      v10[3] = &unk_278298B90;
      v10[4] = self;
      v10[5] = needed;
      [dataSourceManager performChanges:v10];
    }
  }
}

void __49__PXPhotosSectionedLayout__forceSectionIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA78];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 indexSetWithIndex:v4];
  LODWORD(v4) = [v5 forceAccurateSectionsIfNeeded:v6];

  if (v4)
  {
    ++*(*(a1 + 32) + 1160);
  }
}

- (CGSize)layout:(id)layout estimatedContentSizeForSublayoutAtIndex:(int64_t)index referenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  assetsDataSource = [(PXPhotosSectionedLayout *)self assetsDataSource];
  identifier = [assetsDataSource identifier];
  bodyLayoutProvider = [(PXPhotosSectionedLayout *)self bodyLayoutProvider];
  v12 = bodyLayoutProvider;
  if (self->_bodyProviderRespondsTo.estimatedContentSize)
  {
    v28 = identifier;
    indexCopy2 = index;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v30 = vnegq_f64(v13);
    [bodyLayoutProvider sectionedLayout:self estimatedContentSizeForBodyLayoutAtIndexPath:&v28 dataSource:assetsDataSource referenceSize:{width, height}];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v28 = identifier;
    indexCopy2 = index;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v30 = vnegq_f64(v18);
    v19 = [assetsDataSource assetCollectionAtSectionIndexPath:&v28];
    estimatedAssetCount = [assetsDataSource numberOfItemsInSection:index];
    v21 = [assetsDataSource hasCurationForAssetCollection:v19];
    if (!estimatedAssetCount)
    {
      if ([v19 estimatedAssetCount] == 0x7FFFFFFFFFFFFFFFLL)
      {
        estimatedAssetCount = 0;
      }

      else
      {
        estimatedAssetCount = [v19 estimatedAssetCount];
      }
    }

    spec = [(PXPhotosSectionedLayout *)self spec];
    assetsSpec = [spec assetsSpec];
    [PXAssetsSectionLayout estimatedSizeWithReferenceSize:v19 assetCollection:estimatedAssetCount numberOfAssets:v21 isCurated:4 zoomLevel:assetsSpec spec:width, height];
    v15 = v24;
    v17 = v25;
  }

  v26 = v15;
  v27 = v17;
  result.height = v27;
  result.width = v26;
  return result;
}

- (BOOL)shouldApplySpriteTransformToSublayouts
{
  placementOverride = [(PXPhotosSectionedLayout *)self placementOverride];
  v3 = placementOverride == 0;

  return v3;
}

- (id)navigationObjectReferenceForLocation:(CGPoint)location
{
  v16.receiver = self;
  v16.super_class = PXPhotosSectionedLayout;
  v4 = [(PXPhotosSectionedLayout *)&v16 navigationObjectReferenceForLocation:location.x, location.y];
  viewModel = [(PXPhotosSectionedLayout *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  currentDataSource2 = [viewModel currentDataSource];
  numberOfSections = [currentDataSource2 numberOfSections];

  if (numberOfSections >= 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [currentDataSource assetReferenceForAssetReference:v4];
      v10 = v9;
      if (v9)
      {
        [v9 indexPath];
        if (*&v15[0] != *MEMORY[0x277D3CF78])
        {
          [v10 indexPath];
          v11.f64[0] = NAN;
          v11.f64[1] = NAN;
          v15[0] = v14;
          v15[1] = vnegq_f64(v11);
          v12 = [currentDataSource assetCollectionReferenceAtSectionIndexPath:v15];

          v4 = v12;
        }
      }
    }
  }

  return v4;
}

- (void)willRemoveSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags
{
  v21.receiver = self;
  v21.super_class = PXPhotosSectionedLayout;
  sublayoutCopy = sublayout;
  [(PXGStackLayout *)&v21 willRemoveSublayout:sublayoutCopy atIndex:index flags:flags];
  px_assetsSectionLayout = [sublayoutCopy px_assetsSectionLayout];

  if (!px_assetsSectionLayout)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:846 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sublayout.px_assetsSectionLayout", v16}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [px_assetsSectionLayout px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:846 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sublayout.px_assetsSectionLayout", v16, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  assetCollection = [px_assetsSectionLayout assetCollection];
  viewModel = [(PXPhotosSectionedLayout *)self viewModel];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__PXPhotosSectionedLayout_willRemoveSublayout_atIndex_flags___block_invoke;
  v19[3] = &unk_278298B68;
  v20 = assetCollection;
  v13 = assetCollection;
  [viewModel performChanges:v19];
}

void __61__PXPhotosSectionedLayout_willRemoveSublayout_atIndex_flags___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 visibleAssetCollections];
  [v3 removeObject:*(a1 + 32)];
}

- (void)didFaultInSublayout:(id)sublayout atIndex:(int64_t)index fromEstimatedContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v22.receiver = self;
  v22.super_class = PXPhotosSectionedLayout;
  sublayoutCopy = sublayout;
  [(PXPhotosSectionedLayout *)&v22 didFaultInSublayout:sublayoutCopy atIndex:index fromEstimatedContentSize:width, height];
  px_assetsSectionLayout = [sublayoutCopy px_assetsSectionLayout];

  if (!px_assetsSectionLayout)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:836 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sublayout.px_assetsSectionLayout", v17}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [px_assetsSectionLayout px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:836 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sublayout.px_assetsSectionLayout", v17, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  assetCollection = [px_assetsSectionLayout assetCollection];
  viewModel = [(PXPhotosSectionedLayout *)self viewModel];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__PXPhotosSectionedLayout_didFaultInSublayout_atIndex_fromEstimatedContentSize___block_invoke;
  v20[3] = &unk_278298B68;
  v21 = assetCollection;
  v14 = assetCollection;
  [viewModel performChanges:v20];
}

void __80__PXPhotosSectionedLayout_didFaultInSublayout_atIndex_fromEstimatedContentSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 visibleAssetCollections];
  [v3 addObject:*(a1 + 32)];
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  v28 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = referenceCopy;
    assetsDataSource = [(PXPhotosSectionedLayout *)self assetsDataSource];
    decoratedSpriteReference = [assetsDataSource assetReferenceForAssetReference:v9];

    if (decoratedSpriteReference)
    {
      v12 = decoratedSpriteReference;
      *objectReference = decoratedSpriteReference;
      [v12 indexPath];
      v13 = v25;
    }

    else if (options)
    {
      assetsDataSource2 = [(PXPhotosSectionedLayout *)self assetsDataSource];
      v20 = [assetsDataSource2 objectReferenceNearestToObjectReference:v9];

      if (v20)
      {
        v21 = v20;
        *objectReference = v20;
        [v21 indexPath];
        v13 = v24;
      }

      else
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = referenceCopy;
    decoratedSpriteReference = [v9 decoratedSpriteReference];
    v13 = [(PXPhotosSectionedLayout *)self sublayoutIndexForSpriteReference:decoratedSpriteReference options:options];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v9;
      *objectReference = v9;
    }

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = referenceCopy;
    assetsDataSource3 = [(PXPhotosSectionedLayout *)self assetsDataSource];
    v16 = [assetsDataSource3 assetCollectionReferenceForAssetCollectionReference:v9];

    if (v16)
    {
      v17 = v16;
      *objectReference = v16;
      [v17 indexPath];
      v13 = v23;
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_22;
  }

  v18 = PXAssertGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = referenceCopy;
    _os_log_error_impl(&dword_21ABF3000, v18, OS_LOG_TYPE_ERROR, "Unhandled object reference type: %@", buf, 0xCu);
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:

  return v13;
}

- (void)setPreferredCornerRadius:(id)radius
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(self->_preferredCornerRadius, v7))) & 1) == 0)
  {
    self->_preferredCornerRadius.var0.var0.topLeft = v3;
    self->_preferredCornerRadius.var0.var0.topRight = v4;
    self->_preferredCornerRadius.var0.var0.bottomLeft = v5;
    self->_preferredCornerRadius.var0.var0.bottomRight = v6;
    [(PXPhotosSectionedLayout *)self _invalidateSublayoutsConfiguration:*&radius.var0.var0.var0];
  }
}

- (void)setMaskCornerRadius:(id)radius
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(self->_maskCornerRadius, v7))) & 1) == 0)
  {
    self->_maskCornerRadius.var0.var0.topLeft = v3;
    self->_maskCornerRadius.var0.var0.topRight = v4;
    self->_maskCornerRadius.var0.var0.bottomLeft = v5;
    self->_maskCornerRadius.var0.var0.bottomRight = v6;
    [(PXPhotosSectionedLayout *)self _invalidateCaptureSprite:*&radius.var0.var0.var0];
  }
}

- (void)setMaskRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_maskRect = &self->_maskRect;
  if (!CGRectEqualToRect(self->_maskRect, rect))
  {
    p_maskRect->origin.x = x;
    p_maskRect->origin.y = y;
    p_maskRect->size.width = width;
    p_maskRect->size.height = height;

    [(PXPhotosSectionedLayout *)self _invalidateCaptureSprite];
  }
}

- (void)_updatePreferredCornerRadius
{
  [(PXPhotosSectionedLayout *)self horizontalScrollingHintFactor];
  PXFloatByLinearlyInterpolatingFloats();

  [(PXPhotosSectionedLayout *)self setPreferredCornerRadius:?];
}

- (void)_invalidatePreferredCornerRadius
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout _invalidatePreferredCornerRadius]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosSectionedLayout.m" lineNumber:753 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXPhotosSectionedLayout *)self setNeedsUpdate];
  }
}

- (void)_updateCaptureSprite
{
  [(PXPhotosSectionedLayout *)self maskRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXPhotosSectionedLayout *)self maskCornerRadius];
  LODWORD(v14) = v13;
  LODWORD(v16) = v15;
  v17.i64[0] = __PAIR64__(v15, v13);
  v17.i64[1] = __PAIR64__(v12, v11);
  if (vminv_u16(vmovn_s32(vceqq_f32(v17, *MEMORY[0x277D73D18]))))
  {
    v31.origin.x = v4;
    v31.origin.y = v6;
    v21 = v12;
    v22 = v11;
    v31.size.width = v8;
    v31.size.height = v10;
    v23 = v14;
    v24 = v16;
    IsInfinite = CGRectIsInfinite(v31);
    v12 = v21;
    v11 = v22;
    v14 = v23;
    v16 = v24;
    if (IsInfinite)
    {
      v19 = 0;
      captureSpriteIndex = self->_captureSpriteIndex;
      goto LABEL_7;
    }
  }

  captureSpriteIndex = self->_captureSpriteIndex;
  if (captureSpriteIndex == -1)
  {
    v23 = v14;
    v24 = v16;
    v21 = v12;
    v22 = v11;
    captureSpriteIndex = [(PXPhotosSectionedLayout *)self addSpriteWithInitialState:&__block_literal_global_453];
    LODWORD(v12) = v21;
    LODWORD(v11) = v22;
    LODWORD(v14) = v23;
    LODWORD(v16) = v24;
    self->_captureSpriteIndex = captureSpriteIndex;
    v19 = 1;
LABEL_7:
    if (captureSpriteIndex == -1)
    {
      return;
    }

    goto LABEL_8;
  }

  v19 = 1;
LABEL_8:
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__PXPhotosSectionedLayout__updateCaptureSprite__block_invoke_2;
  v25[3] = &__block_descriptor_81_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
  *&v25[4] = v4;
  *&v25[5] = v6;
  *&v25[6] = v8;
  *&v25[7] = v10;
  v30 = v19;
  v26 = v14;
  v27 = v16;
  v28 = v11;
  v29 = v12;
  [(PXPhotosSectionedLayout *)self modifySpritesInRange:captureSpriteIndex | 0x100000000 state:v25, v21, v22, v23, v24];
}

__n128 __47__PXPhotosSectionedLayout__updateCaptureSprite__block_invoke_2(__n128 *a1, uint64_t a2, float32x2_t *a3, uint64_t a4)
{
  v7 = a1[2].n128_f64[0];
  v8 = a1[2].n128_f64[1];
  v9 = a1[3].n128_f64[0];
  v10 = a1[3].n128_f64[1];
  v18.origin.x = v7;
  v18.origin.y = v8;
  v18.size.width = v9;
  v18.size.height = v10;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = v7;
  v19.origin.y = v8;
  v19.size.width = v9;
  v19.size.height = v10;
  MidY = CGRectGetMidY(v19);
  v20.origin.x = v7;
  v20.origin.y = v8;
  v20.size.width = v9;
  v20.size.height = v10;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v7;
  v21.origin.y = v8;
  v21.size.width = v9;
  v21.size.height = v10;
  Height = CGRectGetHeight(v21);
  v14.f64[0] = Width;
  v14.f64[1] = Height;
  *a3 = MidX;
  *&a3[1] = MidY;
  a3[3] = vcvt_f32_f64(v14);
  a3[2] = 0xBFF0000000000000;
  v15 = 0.0;
  if (a1[5].n128_u8[0])
  {
    v15 = 1.0;
  }

  *a4 = v15;
  result = a1[4];
  *(a4 + 36) = result;
  return result;
}

double __47__PXPhotosSectionedLayout__updateCaptureSprite__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = *(MEMORY[0x277D73D58] + 16);
  *v3 = *MEMORY[0x277D73D58];
  v3[1] = v4;
  v5 = a3[3];
  v6 = MEMORY[0x277D73D78];
  v7 = *(MEMORY[0x277D73D78] + 16);
  *v5 = *MEMORY[0x277D73D78];
  v5[1] = v7;
  v8 = v6[5];
  v5[4] = v6[4];
  v5[5] = v8;
  v9 = v6[3];
  v5[2] = v6[2];
  v5[3] = v9;
  v10 = v6[9];
  v5[8] = v6[8];
  v5[9] = v10;
  v11 = v6[7];
  v5[6] = v6[6];
  v5[7] = v11;
  v12 = a3[4];
  v13 = MEMORY[0x277D73D70];
  *(v12 + 32) = *(MEMORY[0x277D73D70] + 32);
  v14 = v13[1];
  *v12 = *v13;
  *(v12 + 16) = v14;
  v15 = a3[4];
  *(v15 + 1) = 9;
  __asm { FMOV            V0.2S, #1.0 }

  *(v15 + 8) = result;
  *(a3[4] + 34) = 8;
  return result;
}

- (void)_invalidateCaptureSprite
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_postUpdateFlags.updated)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout _invalidateCaptureSprite]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosSectionedLayout.m" lineNumber:722 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXPhotosSectionedLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSublayoutsConfiguration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self->_shouldRecreateBodyLayouts)
  {
    p_isRecreatingContentLayouts = &self->_isRecreatingContentLayouts;
    self->_isRecreatingContentLayouts = 1;
  }

  else
  {
    shouldRecreateHeaderLayouts = self->_shouldRecreateHeaderLayouts;
    p_isRecreatingContentLayouts = &self->_isRecreatingContentLayouts;
    self->_isRecreatingContentLayouts = shouldRecreateHeaderLayouts;
    if (!shouldRecreateHeaderLayouts)
    {
      goto LABEL_5;
    }
  }

  [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
LABEL_5:
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__PXPhotosSectionedLayout__updateSublayoutsConfiguration__block_invoke;
  v6[3] = &unk_278298B20;
  v6[4] = self;
  v6[5] = &v7;
  [(PXPhotosSectionedLayout *)self enumerateAssetsSectionSublayoutsUsingBlock:v6];
  if (*(v8 + 24) == 1)
  {
    createDefaultAnimationForCurrentContext = [(PXPhotosSectionedLayout *)self createDefaultAnimationForCurrentContext];
  }

  self->_shouldRecreateBodyLayouts = 0;
  self->_shouldRecreateHeaderLayouts = 0;
  *p_isRecreatingContentLayouts = 0;
  _Block_object_dispose(&v7, 8);
}

void __57__PXPhotosSectionedLayout__updateSublayoutsConfiguration__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 assetsDataSource];
  v8 = [v7 identifier];

  v9 = *(a1 + 32);
  v11[0] = v8;
  v11[1] = a2;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v12 = vnegq_f64(v10);
  LOBYTE(a2) = [v9 _configureSectionLayout:v6 sectionIndexPath:v11];

  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | a2) & 1;
}

- (void)_invalidateSublayoutsConfiguration
{
  if (!self->_isRecreatingContentLayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 0x10;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 0x10) != 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout _invalidateSublayoutsConfiguration]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXPhotosSectionedLayout.m" lineNumber:695 description:{@"invalidating %lu after it already has been updated", 16}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 16;
    if (!willPerformUpdate)
    {

      [(PXPhotosSectionedLayout *)self setNeedsUpdate];
    }
  }
}

- (void)_updateSublayoutGridConfiguratorForLayout:(id)layout
{
  layoutCopy = layout;
  spec = [layoutCopy spec];
  assetCollection = [layoutCopy assetCollection];

  v9 = [spec sectionConfiguratorForAssetCollection:assetCollection inZoomLevel:4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewModel = [(PXPhotosSectionedLayout *)self viewModel];
    [v9 setAspectFitContent:{objc_msgSend(viewModel, "aspectFitContent")}];
    [viewModel zoomStep];
    [v9 setZoomStep:v8];
  }
}

- (void)_updateSublayoutsSpec
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__PXPhotosSectionedLayout__updateSublayoutsSpec__block_invoke;
  v2[3] = &unk_278298AF8;
  v2[4] = self;
  [(PXPhotosSectionedLayout *)self enumerateAssetsSectionSublayoutsUsingBlock:v2];
}

void __48__PXPhotosSectionedLayout__updateSublayoutsSpec__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 spec];
  v9 = [v6 assetsSpec];

  [v5 setSpec:v9];
  v7 = [v5 headerLayout];
  v8 = [*(a1 + 32) spec];
  [v7 setSpec:v8];

  [*(a1 + 32) _updateSublayoutGridConfiguratorForLayout:v5];
}

- (void)_invalidateSublayoutsSpec
{
  if (!self->_isRecreatingContentLayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 2;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout _invalidateSublayoutsSpec]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXPhotosSectionedLayout.m" lineNumber:669 description:{@"invalidating %lu after it already has been updated", 2}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 2;
    if (!willPerformUpdate)
    {

      [(PXPhotosSectionedLayout *)self setNeedsUpdate];
    }
  }
}

void __48__PXPhotosSectionedLayout_reloadVideoThumbnails__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 layoutForItemChanges];
  v5 = [v4 numberOfItems];
  v6 = [v3 dataSource];
  v7 = [v6 identifier];
  v8 = [v3 section];

  v9 = [MEMORY[0x277D3CCC8] changeDetailsWithChangedIndexRange:{0, v5}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__PXPhotosSectionedLayout_reloadVideoThumbnails__block_invoke_2;
  v11[3] = &unk_278298AD0;
  v13 = v7;
  v14 = v8;
  v12 = v6;
  v10 = v6;
  [v4 setNumberOfItems:v5 withChangeDetails:v9 changeMediaVersionHandler:v11];
}

BOOL __48__PXPhotosSectionedLayout_reloadVideoThumbnails__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a3;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [v3 assetAtItemIndexPath:&v8];
  v5 = v4;
  v6 = v4 && [v4 mediaType] == 2;

  return v6;
}

- (void)_updateSublayoutsDataSource
{
  viewModel = [(PXPhotosSectionedLayout *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];

  v6 = self->_assetsDataSource;
  dataSource = [dataSourceManager dataSource];
  if (v6 != dataSource)
  {
    sublayoutDataStore = [(PXPhotosSectionedLayout *)self sublayoutDataStore];
    numberOfSections = [(PXAssetsDataSource *)v6 numberOfSections];
    v45 = sublayoutDataStore;
    if (numberOfSections != [sublayoutDataStore count])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:551 description:{@"Invalid parameter not satisfying: %@", @"numberOfSublayoutsBefore == sublayoutDataStore.count"}];
    }

    changeHistory = [dataSourceManager changeHistory];
    v11 = [changeHistory changeDetailsFromDataSourceIdentifier:-[PXAssetsDataSource identifier](v6 toDataSourceIdentifier:{"identifier"), -[PXAssetsDataSource identifier](dataSource, "identifier")}];

    if (self->_isUpdatingSublayouts)
    {
      v44 = dataSourceManager;
      if ([v11 count] != 1)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:561 description:{@"While updating sublayouts, expecting only one data source change, got %lu", objc_msgSend(v11, "count")}];
      }

      firstObject = [v11 firstObject];
      sectionsWithItemChanges = [firstObject sectionsWithItemChanges];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __54__PXPhotosSectionedLayout__updateSublayoutsDataSource__block_invoke;
      v58[3] = &unk_278298A10;
      v58[4] = self;
      v58[5] = a2;
      [sectionsWithItemChanges enumerateIndexesUsingBlock:v58];

      sectionChanges = [firstObject sectionChanges];
      if (([sectionChanges hasIncrementalChanges] & 1) == 0)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:567 description:@"Section changes while updating sublayouts must be incremental."];
      }

      insertedIndexes = [sectionChanges insertedIndexes];
      v16 = [insertedIndexes count];

      if (v16)
      {
        currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
        insertedIndexes2 = [sectionChanges insertedIndexes];
        [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:568 description:{@"Sections %@ inserted while updating sublayouts, this is not supported.", insertedIndexes2}];
      }

      removedIndexes = [sectionChanges removedIndexes];
      v18 = [removedIndexes count];

      if (v18)
      {
        currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
        removedIndexes2 = [sectionChanges removedIndexes];
        [currentHandler5 handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:569 description:{@"Sections %@ removed while updating sublayouts, this is not supported.", removedIndexes2}];
      }

      dataSourceManager = v44;
    }

    else
    {
      if (([(PXAssetsDataSource *)v6 containsAnyItems]& 1) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = [(PXAssetsDataSource *)v6 areAllSectionsConsideredAccurate]^ 1;
      }

      if (([(PXAssetsDataSource *)dataSource containsAnyItems]& 1) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = [(PXAssetsDataSource *)dataSource areAllSectionsConsideredAccurate]^ 1;
      }

      if (v19 == v20)
      {
        v21 = [(PXPhotosSectionedLayout *)self _createAnimationForChangeFromDataSource:v6 toDataSource:dataSource changeDetails:v11];
      }

      viewModel2 = [(PXPhotosSectionedLayout *)self viewModel];
      viewModelHelper = [viewModel2 viewModelHelper];
      if ([viewModelHelper isFiltering])
      {
        if ([(PXAssetsDataSource *)v6 areAllSectionsConsideredAccurate])
        {
          if ([(PXAssetsDataSource *)dataSource areAllSectionsConsideredAccurate])
          {
            v24 = 0;
          }

          else
          {
            v24 = 15;
          }
        }

        else
        {
          v24 = 15;
        }
      }

      else
      {
        v24 = 0;
      }

      rootLayout = [(PXPhotosSectionedLayout *)self rootLayout];
      v26 = [rootLayout createAnchorForVisibleAreaIgnoringEdges:v24];
      autoInvalidate = [v26 autoInvalidate];

      activeAnchor = [(PXPhotosSectionedLayout *)self activeAnchor];

      if (!activeAnchor)
      {
        v29 = [(PXPhotosSectionedLayout *)self createAnchorWithAnchor:autoInvalidate];
        autoInvalidate2 = [v29 autoInvalidate];
      }
    }

    objc_storeStrong(&self->_assetsDataSource, dataSource);
    v56 = 0;
    v57 = 0;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __54__PXPhotosSectionedLayout__updateSublayoutsDataSource__block_invoke_2;
    v53[3] = &unk_278298A38;
    v54 = v6;
    v31 = dataSource;
    v55 = v31;
    [(PXPhotosSectionedLayout *)self applySectionedChangeDetails:v11 dataSourceBeforeChanges:v54 dataSourceAfterChanges:v31 sublayoutProvider:self outChangedSections:&v57 outSectionsWithItemChanges:&v56 changeMediaVersionHandler:v53];
    v32 = v57;
    v33 = v56;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __54__PXPhotosSectionedLayout__updateSublayoutsDataSource__block_invoke_3;
    v50[3] = &unk_278298A60;
    v50[4] = self;
    v34 = v31;
    v51 = v34;
    v35 = v45;
    v52 = v35;
    [v33 enumerateIndexesUsingBlock:v50];
    [(PXPhotosSectionedLayout *)self invalidateVersion];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __54__PXPhotosSectionedLayout__updateSublayoutsDataSource__block_invoke_4;
    v46[3] = &unk_278298A88;
    v36 = v32;
    v47 = v36;
    v48 = v34;
    selfCopy = self;
    [(PXPhotosSectionedLayout *)self enumerateAssetsSectionSublayoutsUsingBlock:v46];
    if (!self->_isUpdatingSublayouts)
    {
      [(PXPhotosSectionedLayout *)self _invalidateSublayoutsSpec];
      [(PXPhotosSectionedLayout *)self _invalidateSublayoutsConfiguration];
    }
  }
}

void __54__PXPhotosSectionedLayout__updateSublayoutsDataSource__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) sublayoutAtIndex:a2 loadIfNeeded:0];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXPhotosSectionedLayout.m" lineNumber:564 description:{@"While updating sublayouts, got a change to section %lu that's already loaded.", a2}];
  }
}

BOOL __54__PXPhotosSectionedLayout__updateSublayoutsDataSource__block_invoke_2(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *(a1 + 32);
  v6 = a2[1];
  v18 = *a2;
  v19 = v6;
  v7 = [v5 assetAtItemIndexPath:&v18];
  v8 = *(a1 + 40);
  v9 = a3[1];
  v18 = *a3;
  v19 = v9;
  v10 = [v8 assetAtItemIndexPath:&v18];
  v11 = v7;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
    v15 = 0;
  }

  else
  {
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v16 = [v11 isContentEqualTo:v12];
      if (!v16)
      {
        v16 = [v13 isContentEqualTo:v11];
      }

      v15 = v16 != 2;
    }
  }

  return v15;
}

void __54__PXPhotosSectionedLayout__updateSublayoutsDataSource__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _shouldFaultInSection:a2 inDataSource:*(a1 + 40)];
  v5 = [*(a1 + 48) sublayoutProviderAtIndex:a2];

  v6 = [*(a1 + 48) sublayoutAtIndex:a2];

  if (v6)
  {
    if ((v4 ^ (v5 == 0)))
    {
      return;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  if (v7 == 1)
  {
LABEL_8:
    [*(a1 + 32) removeSublayoutsInRange:{a2, 1}];
    v8 = *(a1 + 32);
    if (v4)
    {
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    [v8 insertSublayoutProvider:v9 inRange:{a2, 1}];
  }
}

void __54__PXPhotosSectionedLayout__updateSublayoutsDataSource__block_invoke_4(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] containsIndex:a2];
  v7 = [a1[5] identifier];
  [v5 setDataSource:a1[5] section:a2];
  v8 = [v5 bodyContentLayout];

  if (v8)
  {
    v9 = [a1[6] bodyLayoutProvider];
    v10 = a1[6];
    v11 = [v5 bodyContentLayout];
    v12 = a1[5];
    v19 = v7;
    v20 = a2;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v21 = vnegq_f64(v13);
    [v9 sectionedLayout:v10 bodyLayout:v11 didChangeDataSource:v12 sectionIndexPath:&v19 hasSectionChanges:v6];
  }

  v14 = [v5 headerLayout];
  if (v14)
  {
    v15 = [a1[6] headerLayoutProvider];
    v17 = a1[5];
    v16 = a1[6];
    v19 = v7;
    v20 = a2;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v21 = vnegq_f64(v18);
    [v15 sectionedLayout:v16 headerLayout:v14 didChangeDataSource:v17 sectionIndexPath:&v19 hasSectionChanges:v6];
  }
}

- (void)_invalidateSublayoutsDataSource
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout _invalidateSublayoutsDataSource]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosSectionedLayout.m" lineNumber:538 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXPhotosSectionedLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v7.receiver = self;
  v7.super_class = PXPhotosSectionedLayout;
  [(PXGStackLayout *)&v7 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXPhotosSectionedLayout.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout didUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXPhotosSectionedLayout.m" lineNumber:534 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  self->_numberOfForcedSections = 0;
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout update]"];
      [currentHandler handleFailureInFunction:v12 file:@"PXPhotosSectionedLayout.m" lineNumber:503 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXPhotosSectionedLayout *)self _updateSublayoutsDataSource];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout update]"];
        [currentHandler2 handleFailureInFunction:v14 file:@"PXPhotosSectionedLayout.m" lineNumber:507 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXPhotosSectionedLayout *)self _updateSublayoutsSpec];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout update]"];
      [currentHandler3 handleFailureInFunction:v16 file:@"PXPhotosSectionedLayout.m" lineNumber:510 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20uLL;
    if ((v6 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXPhotosSectionedLayout *)self _updatePreferredCornerRadius];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout update]"];
      [currentHandler4 handleFailureInFunction:v18 file:@"PXPhotosSectionedLayout.m" lineNumber:513 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v7 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXPhotosSectionedLayout *)self _updateSublayoutsConfiguration];
      v7 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v7)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout update]"];
      [currentHandler5 handleFailureInFunction:v20 file:@"PXPhotosSectionedLayout.m" lineNumber:517 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  isUpdatingSublayouts = self->_isUpdatingSublayouts;
  self->_isUpdatingSublayouts = 1;
  v25.receiver = self;
  v25.super_class = PXPhotosSectionedLayout;
  [(PXGStackLayout *)&v25 update];
  self->_isUpdatingSublayouts = isUpdatingSublayouts;
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v10 = self->_postUpdateFlags.needsUpdate;
  if (v10)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout update]"];
      [currentHandler6 handleFailureInFunction:v22 file:@"PXPhotosSectionedLayout.m" lineNumber:524 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v10 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 1;
    if (v10)
    {
      p_postUpdateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFFELL;
      [(PXPhotosSectionedLayout *)self _updateCaptureSprite];
      v10 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v10)
    {
      currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout update]"];
      [currentHandler7 handleFailureInFunction:v24 file:@"PXPhotosSectionedLayout.m" lineNumber:528 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (void)willUpdate
{
  v7.receiver = self;
  v7.super_class = PXPhotosSectionedLayout;
  [(PXGStackLayout *)&v7 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXPhotosSectionedLayout.m" lineNumber:496 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionedLayout willUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXPhotosSectionedLayout.m" lineNumber:497 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (BOOL)_configureSectionLayout:(id)layout sectionIndexPath:(PXSimpleIndexPath *)path
{
  layoutCopy = layout;
  viewModel = [(PXPhotosSectionedLayout *)self viewModel];
  dropTargetAssetReference = [layoutCopy dropTargetAssetReference];
  dropTargetAssetReference2 = [viewModel dropTargetAssetReference];

  tapbackStatusManager = [layoutCopy tapbackStatusManager];
  tapbackStatusManager2 = [viewModel tapbackStatusManager];

  v13 = tapbackStatusManager != tapbackStatusManager2 || dropTargetAssetReference != dropTargetAssetReference2;
  headerLayout = [layoutCopy headerLayout];
  if (headerLayout)
  {
    shouldRecreateHeaderLayouts = self->_shouldRecreateHeaderLayouts;

    if (!shouldRecreateHeaderLayouts)
    {
      goto LABEL_33;
    }
  }

  else
  {
    headerLayoutProvider = [(PXPhotosSectionedLayout *)self headerLayoutProvider];
    if (headerLayoutProvider)
    {
    }

    else if (!self->_shouldRecreateHeaderLayouts)
    {
      goto LABEL_33;
    }
  }

  v79 = 1;
  headerLayoutProvider2 = [(PXPhotosSectionedLayout *)self headerLayoutProvider];
  assetsDataSource = [(PXPhotosSectionedLayout *)self assetsDataSource];
  spec = [(PXPhotosSectionedLayout *)self spec];
  v20 = *&path->item;
  *location = *&path->dataSourceIdentifier;
  v78 = v20;
  v21 = [headerLayoutProvider2 createSectionHeaderLayoutForSectionedLayout:self dataSource:assetsDataSource sectionIndexPath:location spec:spec outAlignment:&v79];

  headerLayout2 = [layoutCopy headerLayout];

  if (headerLayout2 != v21)
  {
    [layoutCopy setHeaderLayout:v21];
    v13 = 1;
  }

  v23 = 2;
  v24 = 7;
  v25 = v79 == 4;
  if (v79 != 4)
  {
    v24 = 0;
  }

  if (v79 == 3)
  {
    v25 = 0;
  }

  else
  {
    v23 = v24;
  }

  v26 = 1;
  v27 = v79 != 2;
  if (v79 == 1)
  {
    v27 = 1;
  }

  else
  {
    v26 = v79 == 2;
  }

  v28 = v79 > 2 || v27;
  v29 = v79 > 2 && v25;
  if (v79 <= 2)
  {
    v30 = v26;
  }

  else
  {
    v30 = v23;
  }

  [layoutCopy setMode:v30];
  [layoutCopy setFloatingModesRespectSafeArea:v28];
  [layoutCopy setAdjustSublayoutZPositions:v29];
  [layoutCopy setShouldExcludeTopAndBottomPaddingFromReferenceSize:v29];

LABEL_33:
  bodyContentLayout = [layoutCopy bodyContentLayout];
  if (bodyContentLayout)
  {
    shouldRecreateBodyLayouts = self->_shouldRecreateBodyLayouts;

    if (!shouldRecreateBodyLayouts)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  bodyLayoutProvider = [(PXPhotosSectionedLayout *)self bodyLayoutProvider];
  if (bodyLayoutProvider)
  {

LABEL_39:
    LOBYTE(v79) = 1;
    bodyLayoutProvider2 = [(PXPhotosSectionedLayout *)self bodyLayoutProvider];
    assetsDataSource2 = [(PXPhotosSectionedLayout *)self assetsDataSource];
    spec2 = [(PXPhotosSectionedLayout *)self spec];
    v37 = *&path->item;
    *location = *&path->dataSourceIdentifier;
    v78 = v37;
    v38 = [bodyLayoutProvider2 createSectionBodyLayoutForSectionedLayout:self dataSource:assetsDataSource2 sectionIndexPath:location spec:spec2 outWantsDecoration:&v79];

    [layoutCopy setDisableConfigurators:v38 != 0];
    bodyContentLayout2 = [layoutCopy bodyContentLayout];
    LOBYTE(bodyLayoutProvider2) = bodyContentLayout2 != v38;

    v13 |= bodyLayoutProvider2;
    [layoutCopy setBodyContentLayout:v38 wantsDecoration:v79];

    goto LABEL_40;
  }

  if (self->_shouldRecreateBodyLayouts)
  {
    goto LABEL_39;
  }

LABEL_40:
  [viewModel headerFloatingThresholdOffset];
  [layoutCopy setFloatingThresholdOffset:?];
  selectionSnapshot = [viewModel selectionSnapshot];
  [layoutCopy setSelectionSnapshot:selectionSnapshot];

  draggedAssetReferences = [viewModel draggedAssetReferences];
  [layoutCopy setDraggedAssetReferences:draggedAssetReferences];

  dropTargetAssetReference3 = [viewModel dropTargetAssetReference];
  [layoutCopy setDropTargetAssetReference:dropTargetAssetReference3];

  [layoutCopy setIsSelecting:{objc_msgSend(viewModel, "isInSelectMode")}];
  [layoutCopy setCanStartSelecting:1];
  [layoutCopy setWantsDimmedSelectionStyle:{objc_msgSend(viewModel, "wantsDimmedSelectionStyle")}];
  [layoutCopy setWantsNumberedSelectionStyle:{objc_msgSend(viewModel, "wantsNumberedSelectionStyle")}];
  [layoutCopy setWantsFileSizeBadge:{objc_msgSend(viewModel, "wantsFileSizeBadge")}];
  [layoutCopy setWantsAssetIndexBadge:{objc_msgSend(viewModel, "wantsAssetIndexBadge")}];
  [layoutCopy setRemovesContentLayoutWhenEmpty:0];
  tapbackStatusManager3 = [viewModel tapbackStatusManager];
  [layoutCopy setTapbackStatusManager:tapbackStatusManager3];

  decorationDataSource = [viewModel decorationDataSource];
  [layoutCopy setDecorationDataSource:decorationDataSource];

  [(PXPhotosSectionedLayout *)self preferredCornerRadius];
  [layoutCopy setPreferredCornerRadius:?];
  [layoutCopy setWantsDecorationSpritesHostedInDecoratedSprite:{objc_msgSend(viewModel, "wantsDecorationSpritesHostedInDecoratedSprite")}];
  LOBYTE(decorationDataSource) = [layoutCopy isFaceModeEnabled];
  v45 = decorationDataSource ^ [viewModel isFaceModeEnabled] | v13;
  [layoutCopy setFaceModeEnabled:{objc_msgSend(viewModel, "isFaceModeEnabled")}];
  dataSource = [layoutCopy dataSource];
  identifier = [dataSource identifier];
  section = [layoutCopy section];
  location[0] = identifier;
  location[1] = section;
  v49.f64[0] = NAN;
  v49.f64[1] = NAN;
  v78 = vnegq_f64(v49);
  v50 = [dataSource assetCollectionReferenceAtSectionIndexPath:location];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  if (![viewModel allowsInlineAddBehavior] || (objc_msgSend(viewModel, "isInSelectMode") & 1) != 0 || !objc_msgSend(assetCollectionActionManager, "canPerformActionType:assetCollectionReference:", *MEMORY[0x277D3CE68], v50) || (objc_msgSend(dataSource, "containsAnyItems") & 1) == 0 && (objc_msgSend(viewModel, "allowsEmptyPlaceholderBehavior") & 1) != 0)
  {
    addContentActionHandler = [layoutCopy addContentActionHandler];

    if (!addContentActionHandler)
    {
      goto LABEL_48;
    }

    [layoutCopy setAddContentActionHandler:0];
    goto LABEL_47;
  }

  addContentActionHandler2 = [layoutCopy addContentActionHandler];

  if (!addContentActionHandler2)
  {
    objc_initWeak(location, self);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __68__PXPhotosSectionedLayout__configureSectionLayout_sectionIndexPath___block_invoke;
    v75[3] = &unk_2782989E8;
    objc_copyWeak(&v76, location);
    [layoutCopy setAddContentActionHandler:v75];
    objc_destroyWeak(&v76);
    objc_destroyWeak(location);
LABEL_47:
    v45 = 1;
  }

LABEL_48:
  [layoutCopy setAutomaticallyUpdatesPadding:1];
  [(PXPhotosSectionedLayout *)self interSectionSpacing];
  [layoutCopy setIntersectionSpacing:?];
  headerLayout3 = [layoutCopy headerLayout];
  if ([viewModel allowsSelectSectionAction])
  {
    isInSelectMode = [viewModel isInSelectMode];
  }

  else
  {
    isInSelectMode = 0;
  }

  [headerLayout3 setIsInSelectMode:isInSelectMode];
  selectionSnapshot2 = [viewModel selectionSnapshot];
  [headerLayout3 setSelectionSnapshot:selectionSnapshot2];

  viewBasedDecorationsEnabled = [viewModel viewBasedDecorationsEnabled];
  assetDecorationSource = [layoutCopy assetDecorationSource];
  assetDecorationSource3 = assetDecorationSource;
  if (!viewBasedDecorationsEnabled)
  {
    forbiddenBadges = [viewModel forbiddenBadges];
    v60 = [assetDecorationSource3 forbiddenBadges] | forbiddenBadges;
    goto LABEL_55;
  }

  [assetDecorationSource setForbiddenBadges:-1];

  assetDecorationSource2 = [layoutCopy assetDecorationSource];
  [assetDecorationSource2 setDurationAlwaysHidden:1];

  if ([viewModel wantsAssetIndexBadge])
  {
    assetDecorationSource3 = [layoutCopy assetDecorationSource];
    v60 = [assetDecorationSource3 forbiddenBadges] & 0xFFFFDFFFFFFFFFFFLL;
LABEL_55:
    [assetDecorationSource3 setForbiddenBadges:v60];
  }

  allowsInteractiveFavoriteBadges = [viewModel allowsInteractiveFavoriteBadges];
  assetDecorationSource4 = [layoutCopy assetDecorationSource];
  [assetDecorationSource4 setHidesInteractiveFavoriteBadges:allowsInteractiveFavoriteBadges ^ 1u];

  badgesModifier = [viewModel badgesModifier];
  assetDecorationSource5 = [layoutCopy assetDecorationSource];
  [assetDecorationSource5 setBadgesModifier:badgesModifier];

  [layoutCopy setItemCaptionsVisible:{objc_msgSend(viewModel, "captionsVisible")}];
  [(PXPhotosSectionedLayout *)self _updateSublayoutGridConfiguratorForLayout:layoutCopy];
  headerLayout4 = [layoutCopy headerLayout];
  if (headerLayout4)
  {
    configureSectionHeaderLayout = self->_headerProviderRespondsTo.configureSectionHeaderLayout;

    if (configureSectionHeaderLayout)
    {
      headerLayoutProvider3 = [(PXPhotosSectionedLayout *)self headerLayoutProvider];
      headerLayout5 = [layoutCopy headerLayout];
      [headerLayoutProvider3 configureSectionHeaderLayout:headerLayout5 inAssetSectionLayout:layoutCopy forSectionedLayout:self];
    }
  }

  bodyContentLayout3 = [layoutCopy bodyContentLayout];

  if (bodyContentLayout3)
  {
    bodyLayoutProvider3 = [(PXPhotosSectionedLayout *)self bodyLayoutProvider];
    bodyContentLayout4 = [layoutCopy bodyContentLayout];
    [bodyLayoutProvider3 configureSectionBodyLayout:bodyContentLayout4 inAssetSectionLayout:layoutCopy forSectionedLayout:self];
  }

  return v45 & 1;
}

void __68__PXPhotosSectionedLayout__configureSectionLayout_sectionIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performAddActionForSectionLayout:v3];
}

- (void)enumerateSectionBoundariesWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  sublayoutDataStore = [(PXPhotosSectionedLayout *)self sublayoutDataStore];
  v8 = [sublayoutDataStore count];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__PXPhotosSectionedLayout_enumerateSectionBoundariesWithOptions_usingBlock___block_invoke;
  v10[3] = &unk_2782989C0;
  v11 = blockCopy;
  v9 = blockCopy;
  [sublayoutDataStore enumerateSublayoutGeometriesInRange:0 options:v8 usingBlock:{options, v10}];
}

uint64_t __76__PXPhotosSectionedLayout_enumerateSectionBoundariesWithOptions_usingBlock___block_invoke(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, void *a7)
{
  a2.n128_u64[0] = a7[6];
  a3.n128_u64[0] = a7[7];
  a4.n128_u64[0] = a7[4];
  a5.n128_u64[0] = a7[5];
  return (*(*(a1 + 32) + 16))(a2, a3, a4, a5);
}

- (void)enumerateAssetsSectionSublayoutsInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  sublayoutDataStore = [(PXPhotosSectionedLayout *)self sublayoutDataStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__PXPhotosSectionedLayout_enumerateAssetsSectionSublayoutsInRect_usingBlock___block_invoke;
  v12[3] = &unk_278298998;
  v13 = blockCopy;
  v11 = blockCopy;
  [sublayoutDataStore enumerateSublayoutsInRect:v12 usingBlock:{x, y, width, height}];
}

uint64_t __77__PXPhotosSectionedLayout_enumerateAssetsSectionSublayoutsInRect_usingBlock___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v12 = [a7 px_assetsSectionLayout];
  if (v12)
  {
    v12 = (*(*(a1 + 32) + 16))(a2, a3, a4, a5);
  }

  return MEMORY[0x2821F9730](v12);
}

- (void)enumerateAssetsSectionSublayoutsUsingBlock:(id)block
{
  blockCopy = block;
  sublayoutDataStore = [(PXPhotosSectionedLayout *)self sublayoutDataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__PXPhotosSectionedLayout_enumerateAssetsSectionSublayoutsUsingBlock___block_invoke;
  v7[3] = &unk_278298E38;
  v8 = blockCopy;
  v6 = blockCopy;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v7];
}

uint64_t __70__PXPhotosSectionedLayout_enumerateAssetsSectionSublayoutsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 px_assetsSectionLayout];
  if (v4)
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F9730](v4);
}

- (BOOL)_shouldFaultInSection:(int64_t)section inDataSource:(id)source
{
  if ([source numberOfItemsInSection:section] <= 0)
  {
    viewModel = [(PXPhotosSectionedLayout *)self viewModel];
    v5 = [viewModel allowsEmptyPlaceholderBehavior] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_performAddActionForSectionLayout:(id)layout
{
  v18 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  dataSource = [layoutCopy dataSource];
  identifier = [dataSource identifier];
  section = [layoutCopy section];

  *&buf[0] = identifier;
  *(&buf[0] + 1) = section;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  buf[1] = vnegq_f64(v8);
  v9 = [dataSource assetCollectionReferenceAtSectionIndexPath:buf];
  viewModel = [(PXPhotosSectionedLayout *)self viewModel];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];

  v12 = [assetCollectionActionManager actionPerformerForActionType:*MEMORY[0x277D3CE68] assetCollectionReference:v9];
  if (v12)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__PXPhotosSectionedLayout__performAddActionForSectionLayout___block_invoke;
    v15[3] = &unk_278298970;
    v16 = v9;
    [v12 performActionWithCompletionHandler:v15];
    v13 = v16;
  }

  else
  {
    v13 = PXGridZeroGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      assetCollection = [v9 assetCollection];
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = assetCollection;
      _os_log_impl(&dword_21ABF3000, v13, OS_LOG_TYPE_ERROR, "Missing action performer for add button action. Asset collection: %@", buf, 0xCu);
    }
  }
}

void __61__PXPhotosSectionedLayout__performAddActionForSectionLayout___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PXGridZeroGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) assetCollection];
      v13 = 138412290;
      v14 = v8;
      v9 = "Add action succeeded for asset collection %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_21ABF3000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [*(a1 + 32) assetCollection];
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    v9 = "Add action failed for asset collection %@ with error %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

- (id)_createAnimationForChangeFromDataSource:(id)source toDataSource:(id)dataSource changeDetails:(id)details
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  detailsCopy = details;
  createDefaultAnimationForCurrentContext = [(PXPhotosSectionedLayout *)self createDefaultAnimationForCurrentContext];
  delegate = [createDefaultAnimationForCurrentContext delegate];

  if (!delegate && [MEMORY[0x277D3CDD0] changeDetailsAreOnlyInsertionsOrOnlyRemovalsAtEnd:detailsCopy fromDataSource:sourceCopy toDataSource:dataSourceCopy])
  {
    v13 = objc_alloc_init(PXPhotosSlideAnimationDelegate);
    [createDefaultAnimationForCurrentContext setDelegate:v13];
  }

  return createDefaultAnimationForCurrentContext;
}

- (void)enumerateItemsGeometriesInRect:(CGRect)rect dataSource:(id)source usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  sourceCopy = source;
  assetsDataSource = [(PXPhotosSectionedLayout *)self assetsDataSource];
  v14 = [sourceCopy isEqual:assetsDataSource];

  if (v14)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__PXPhotosSectionedLayout_enumerateItemsGeometriesInRect_dataSource_usingBlock___block_invoke;
    v15[3] = &unk_278298948;
    v16 = blockCopy;
    [(PXPhotosSectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v15 usingBlock:x, y, width, height];
  }
}

void __80__PXPhotosSectionedLayout_enumerateItemsGeometriesInRect_dataSource_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = [a3 bodyItemsGeometry];
  (*(v6 + 16))(v6, v7, a2, a4);
}

- (id)presentedItemsGeometryForSection:(unint64_t)section inDataSource:(id)source
{
  sourceCopy = source;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6775;
  v16 = __Block_byref_object_dispose__6776;
  v17 = 0;
  assetsDataSource = [(PXPhotosSectionedLayout *)self assetsDataSource];
  v8 = [sourceCopy isEqual:assetsDataSource];

  if (v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__PXPhotosSectionedLayout_presentedItemsGeometryForSection_inDataSource___block_invoke;
    v11[3] = &unk_278298920;
    v11[4] = &v12;
    v11[5] = section;
    [(PXPhotosSectionedLayout *)self enumerateAssetsSectionSublayoutsUsingBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __73__PXPhotosSectionedLayout_presentedItemsGeometryForSection_inDataSource___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if (*(a1 + 40) == a2)
  {
    v6 = [a3 bodyItemsGeometry];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (id)topmostHeaderSnapshotInRect:(CGRect)rect
{
  if (self->_headerProviderRespondsTo.floatingHeaderSnapshot)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__6775;
    v19 = __Block_byref_object_dispose__6776;
    v20 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__PXPhotosSectionedLayout_topmostHeaderSnapshotInRect___block_invoke;
    v14[3] = &unk_2782988F8;
    v14[4] = &v15;
    [(PXPhotosSectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v14 usingBlock:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
    v4 = v16[5];
    if (v4)
    {
      dataSource = [v4 dataSource];
      identifier = [dataSource identifier];
      section = [v16[5] section];
      headerLayoutProvider = [(PXPhotosSectionedLayout *)self headerLayoutProvider];
      v12[0] = identifier;
      v12[1] = section;
      v9.f64[0] = NAN;
      v9.f64[1] = NAN;
      v13 = vnegq_f64(v9);
      v10 = [headerLayoutProvider floatingHeaderSnapshotForSectionedLayout:self dataSource:dataSource sectionIndexPath:v12];
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __55__PXPhotosSectionedLayout_topmostHeaderSnapshotInRect___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, _BYTE *a8)
{
  v12 = a7;
  if (a5 > 0.0)
  {
    v13 = v12;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a7);
    v12 = v13;
    *a8 = 1;
  }
}

- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  enumeratorCopy = enumerator;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__PXPhotosSectionedLayout_enumerateAssetsInRect_enumerator___block_invoke;
  v11[3] = &unk_2782988D0;
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  v11[4] = self;
  v12 = enumeratorCopy;
  v10 = enumeratorCopy;
  [(PXPhotosSectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v11 usingBlock:x, y, width, height];
}

void __60__PXPhotosSectionedLayout_enumerateAssetsInRect_enumerator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [*(a1 + 32) convertRect:v4 toDescendantLayout:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (CGRectIsNull(v17))
  {
    v9 = PXGridZeroGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&dword_21ABF3000, v9, OS_LOG_TYPE_ERROR, "Failed to enumerate assets for <%{public}@:%p>", &v12, 0x16u);
    }
  }

  else
  {
    [v4 enumerateAssetsInRect:*(a1 + 40) enumerator:{x, y, width, height}];
  }
}

- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  assetsDataSource = [(PXPhotosSectionedLayout *)self assetsDataSource];
  containerCollection = [assetsDataSource containerCollection];

  if ([containerCollection conformsToProtocol:&unk_282C8F100])
  {
    v7 = containerCollection;

    if (v7)
    {
      [(PXPhotosSectionedLayout *)self visibleRect];
      enumeratorCopy[2](enumeratorCopy, v7, self);
    }
  }

  else
  {

    v7 = 0;
  }
}

- (id)locationNamesFutureForContentInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__PXPhotosSectionedLayout_locationNamesFutureForContentInRect___block_invoke;
  v16[3] = &unk_278298880;
  v16[4] = self;
  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  v9 = v8;
  v17 = v9;
  [(PXPhotosSectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v16 usingBlock:x, y, width, height];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PXPhotosSectionedLayout_locationNamesFutureForContentInRect___block_invoke_2;
  aBlock[3] = &unk_2782988A8;
  v15 = v9;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  v12 = [v11 copy];

  return v12;
}

void __63__PXPhotosSectionedLayout_locationNamesFutureForContentInRect___block_invoke(double *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a3;
  [v4 convertRect:v9 toDescendantLayout:{v5, v6, v7, v8}];
  aBlock = [v9 locationNamesFutureForContentInRect:?];

  v10 = aBlock;
  if (aBlock)
  {
    v11 = *(a1 + 5);
    v12 = _Block_copy(aBlock);
    [v11 addObject:v12];

    v10 = aBlock;
  }
}

id __63__PXPhotosSectionedLayout_locationNamesFutureForContentInRect___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCA940]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = (*(*(*(&v11 + 1) + 8 * i) + 16))(*(*(&v11 + 1) + 8 * i));
        [v2 addObjectsFromArray:{v8, v11}];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = PXArrayFromFrequencySortAndDeduplicationOfNSStringSet();

  return v9;
}

- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__PXPhotosSectionedLayout_dateIntervalFutureForContentInRect_type___block_invoke;
  v21[3] = &unk_278298830;
  v21[4] = self;
  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  typeCopy = type;
  v11 = v10;
  v22 = v11;
  [(PXPhotosSectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v21 usingBlock:x, y, width, height];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __67__PXPhotosSectionedLayout_dateIntervalFutureForContentInRect_type___block_invoke_2;
  v19 = &unk_278298858;
  v20 = v11;
  v12 = v11;
  v13 = _Block_copy(&v16);
  v14 = [v13 copy];

  return v14;
}

void __67__PXPhotosSectionedLayout_dateIntervalFutureForContentInRect_type___block_invoke(double *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a3;
  [v4 convertRect:v9 toDescendantLayout:{v5, v6, v7, v8}];
  aBlock = [v9 dateIntervalFutureForContentInRect:*(a1 + 10) type:?];

  v10 = aBlock;
  if (aBlock)
  {
    v11 = *(a1 + 5);
    v12 = _Block_copy(aBlock);
    [v11 addObject:v12];

    v10 = aBlock;
  }
}

id __67__PXPhotosSectionedLayout_dateIntervalFutureForContentInRect_type___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v16;
    do
    {
      v7 = 0;
      v8 = v4;
      v9 = v5;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v1);
        }

        v10 = (*(*(*(&v15 + 1) + 8 * v7) + 16))();
        v13 = v8;
        v14 = v9;
        [MEMORY[0x277CBEAA8] px_unionStartDate:&v14 endDate:&v13 withDateInterval:v10];
        v5 = v14;

        v4 = v13;
        ++v7;
        v8 = v4;
        v9 = v5;
      }

      while (v3 != v7);
      v3 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);

    v11 = 0;
    if (v5 && v4)
    {
      v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v4];
    }
  }

  else
  {

    v5 = 0;
    v4 = 0;
    v11 = 0;
  }

  return v11;
}

- (void)setHorizontalScrollingHintFactor:(double)factor
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_horizontalScrollingHintFactor = factor;

    [(PXPhotosSectionedLayout *)self _invalidatePreferredCornerRadius];
  }
}

- (void)setBodyLayoutProvider:(id)provider
{
  providerCopy = provider;
  bodyLayoutProvider = self->_bodyLayoutProvider;
  if (bodyLayoutProvider != providerCopy)
  {
    v7 = providerCopy;
    [(PXPhotosSectionBodyLayoutProvider *)bodyLayoutProvider setInvalidationDelegate:0];
    objc_storeStrong(&self->_bodyLayoutProvider, provider);
    [(PXPhotosSectionBodyLayoutProvider *)self->_bodyLayoutProvider setInvalidationDelegate:self];
    self->_bodyProviderRespondsTo.estimatedContentSize = objc_opt_respondsToSelector() & 1;
    self->_shouldRecreateBodyLayouts = 1;
    bodyLayoutProvider = [(PXPhotosSectionedLayout *)self _invalidateSublayoutsConfiguration];
    providerCopy = v7;
  }

  MEMORY[0x2821F96F8](bodyLayoutProvider, providerCopy);
}

- (void)setHeaderLayoutProvider:(id)provider
{
  providerCopy = provider;
  headerLayoutProvider = self->_headerLayoutProvider;
  if (headerLayoutProvider != providerCopy)
  {
    v8 = providerCopy;
    p_headerProviderRespondsTo = &self->_headerProviderRespondsTo;
    if (self->_headerProviderRespondsTo.invalidationDelegate)
    {
      [(PXPhotosSectionHeaderLayoutProvider *)headerLayoutProvider setInvalidationDelegate:0];
    }

    objc_storeStrong(&self->_headerLayoutProvider, provider);
    p_headerProviderRespondsTo->invalidationDelegate = objc_opt_respondsToSelector() & 1;
    self->_headerProviderRespondsTo.floatingHeaderSnapshot = objc_opt_respondsToSelector() & 1;
    self->_headerProviderRespondsTo.configureSectionHeaderLayout = objc_opt_respondsToSelector() & 1;
    if (p_headerProviderRespondsTo->invalidationDelegate)
    {
      [(PXPhotosSectionHeaderLayoutProvider *)self->_headerLayoutProvider setInvalidationDelegate:self];
    }

    self->_shouldRecreateHeaderLayouts = 1;
    headerLayoutProvider = [(PXPhotosSectionedLayout *)self _invalidateSublayoutsConfiguration];
    providerCopy = v8;
  }

  MEMORY[0x2821F96F8](headerLayoutProvider, providerCopy);
}

- (void)setInterSectionSpacing:(double)spacing
{
  if (self->_interSectionSpacing != spacing)
  {
    self->_interSectionSpacing = spacing;
    [(PXPhotosSectionedLayout *)self _invalidateSublayoutsConfiguration];
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXPhotosSectionedLayout *)self _invalidateSublayoutsSpec];
    [(PXPhotosSectionedLayout *)self _invalidateSublayoutsConfiguration];
    [(PXPhotosLayoutSpec *)v6 interSectionSpacing];
    [(PXPhotosSectionedLayout *)self setInterSectionSpacing:?];
    specCopy = v6;
  }
}

- (PXPhotosSectionedLayout)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionedLayout.m" lineNumber:131 description:{@"%s is not available as initializer", "-[PXPhotosSectionedLayout init]"}];

  abort();
}

- (PXPhotosSectionedLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = PXPhotosSectionedLayout;
  v6 = [(PXGStackLayout *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v8 = *(MEMORY[0x277CBF390] + 16);
    *(v6 + 1272) = *MEMORY[0x277CBF390];
    *(v6 + 1288) = v8;
    *(v6 + 292) = -1;
    if ([modelCopy wantsSingleRowScrollingLayout])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [(PXGStackLayout *)v7 setAxis:v9];
    objc_storeStrong(&v7->_viewModel, model);
    [modelCopy registerChangeObserver:v7 context:PhotosViewModelObserverContext];
    [(PXPhotosSectionedLayout *)v7 _invalidateSublayoutsDataSource];
    [(PXPhotosSectionedLayout *)v7 _invalidateSublayoutsSpec];
    [(PXPhotosSectionedLayout *)v7 _invalidateSublayoutsConfiguration];
    [(PXPhotosSectionedLayout *)v7 setContentSource:v7];
    [(PXGStackLayout *)v7 setSublayoutFaultingDelegate:v7];
    axGroup = [(PXPhotosSectionedLayout *)v7 axGroup];
    [axGroup setAxIdentifier:@"photos_sectioned_layout"];
  }

  return v7;
}

@end