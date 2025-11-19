@interface PXAssetsSectionLayout
+ (CGSize)estimatedSizeWithReferenceSize:(CGSize)a3 assetCollection:(id)a4 numberOfAssets:(int64_t)a5 isCurated:(BOOL)a6 zoomLevel:(int64_t)a7 spec:(id)a8;
- ($B01073AA55A67B413588F7AD9EFB6822)itemsLayout:(id)a3 cornerRadiusForItem:(int64_t)a4;
- ($B01073AA55A67B413588F7AD9EFB6822)preferredCornerRadius;
- (BOOL)_shouldAnchorOnAssetCollection;
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (BOOL)isCurated;
- (CGRect)generatedLayout:(id)a3 bestCropRectForInputItemAtIndex:(unsigned int)a4 withAspectRatio:(double)a5;
- (CGRect)itemsLayout:(id)a3 bestCropRectForItem:(int64_t)a4 withAspectRatio:(double)a5;
- (CGSize)itemsLayout:(id)a3 insetForItem:(int64_t)a4;
- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)a3;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (NSSet)draggedAssetReferences;
- (NSString)description;
- (PXAssetCollectionReference)assetCollectionReference;
- (PXAssetsSectionLayout)init;
- (PXAssetsSectionLayout)initWithSection:(int64_t)a3 dataSource:(id)a4 loadingStatusManager:(id)a5 assetImportStatusManager:(id)a6 inlinePlaybackController:(id)a7 zoomLevel:(int64_t)a8 spec:(id)a9;
- (PXAssetsSectionLayoutDelegate)delegate;
- (PXDisplayAssetCollection)assetCollection;
- (PXDisplayAssetFetchResult)keyAssetsFetchResult;
- (PXGBurstStackEffect)burstStackEffect;
- (PXGItemsGeometry)bodyItemsGeometry;
- (PXSelectionSnapshot)selectionSnapshot;
- (PXSimpleIndexPath)_dataSourceIndexPathForObjectReference:(SEL)a3 options:(id)a4 updatedObjectReference:(unint64_t)a5;
- (PXSimpleIndexPath)presentedSectionIndexPath;
- (PXSimpleIndexPath)sectionIndexPath;
- (double)buildingRowContentHeight;
- (double)buildingRowSpacing;
- (double)cornerRadiusForShadowSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (double)itemsLayout:(id)a3 aspectRatioForItem:(int64_t)a4;
- (id)_assetReferenceClosestVisuallyToAssetReference:(id)a3;
- (id)_displayAssetForBodyItem:(int64_t)a3;
- (id)_displayFaceForBodyItem:(int64_t)a3;
- (id)_objectReferenceForSpriteIndex:(unsigned int)a3 itemsLayout:(id)a4;
- (id)_rowBasedBodyContentLayout;
- (id)axLocalizedLabel;
- (id)axSpriteIndexes;
- (id)dateIntervalFutureForContentInRect:(CGRect)a3 type:(unint64_t)a4;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4;
- (id)generatedLayout:(id)a3 objectReferenceAtIndex:(unsigned int)a4;
- (id)hitTestResultForSpriteIndex:(unsigned int)a3;
- (id)itemsLayout:(id)a3 objectReferenceForItem:(int64_t)a4;
- (id)layoutForItemChanges;
- (id)locationNamesFutureForContentInRect:(CGRect)a3;
- (id)objectReferenceForSpriteIndex:(unsigned int)a3;
- (id)shadowForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (int64_t)itemsLayout:(id)a3 itemForObjectReference:(id)a4 options:(unint64_t)a5;
- (int64_t)keyItemIndex;
- (int64_t)numberOfAssets;
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (unint64_t)supportedDisplayAssetPresentationStylesInLayout:(id)a3;
- (unsigned)itemsLayout:(id)a3 effectIdForItem:(int64_t)a4;
- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)_callAddContentActionHandler;
- (void)_invalidateConfigurator;
- (void)_invalidateContent;
- (void)_invalidateFooter;
- (void)_invalidateVisibleRectOvershootFactor;
- (void)_updateBlurSprite;
- (void)_updateConfigurator;
- (void)_updateContent;
- (void)_updateDecorationSource;
- (void)_updateDistanceProperties;
- (void)_updateEffectiveBlurIntensity;
- (void)_updateFooter;
- (void)_updateLocalSprites;
- (void)_updateSectionHeaderProperties;
- (void)_updateVisibleRectOvershootFactor;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
- (void)contentSizeDidChange;
- (void)displayScaleDidChange;
- (void)enumerateAssetCollectionsInRect:(CGRect)a3 enumerator:(id)a4;
- (void)enumerateAssetsInRect:(CGRect)a3 enumerator:(id)a4;
- (void)enumerateRowsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)a3;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3;
- (void)itemsLayout:(id)a3 updateTagsInSpriteInfos:(id *)a4 forItemsInRange:(_NSRange)a5;
- (void)px_modifyAssetsSectionLayoutGeometry:(id)a3;
- (void)safeAreaInsetsDidChange;
- (void)setAddContentActionHandler:(id)a3;
- (void)setAllowsPositionDependentHeaderContentOpacity:(BOOL)a3;
- (void)setAutomaticallyUpdatesPadding:(BOOL)a3;
- (void)setBlurIntensity:(double)a3;
- (void)setBodyContentLayout:(id)a3 wantsDecoration:(BOOL)a4;
- (void)setCanStartSelecting:(BOOL)a3;
- (void)setConfigurator:(id)a3;
- (void)setCurrentSkimmingIndex:(int64_t)a3;
- (void)setDataSource:(id)a3 section:(int64_t)a4;
- (void)setDecorationDataSource:(id)a3;
- (void)setDisableConfigurators:(BOOL)a3;
- (void)setDistanceBetweenHeaderTopAndNextBodyTop:(double)a3;
- (void)setDistanceBetweenTitleTopAndBodyBottom:(double)a3;
- (void)setDraggedAssetReferences:(id)a3;
- (void)setDropTargetAssetReference:(id)a3;
- (void)setEffectiveBlurIntensity:(double)a3;
- (void)setFaceModeEnabled:(BOOL)a3;
- (void)setHeaderLayout:(id)a3;
- (void)setIntersectionSpacing:(double)a3;
- (void)setIsLastSection:(BOOL)a3;
- (void)setIsSelecting:(BOOL)a3;
- (void)setIsSkimming:(BOOL)a3;
- (void)setItemCaptionsVisible:(BOOL)a3;
- (void)setMaxSkimmingIndex:(int64_t)a3;
- (void)setNumberOfPrecedingAssets:(int64_t)a3;
- (void)setPreferredCornerRadius:(id)a3;
- (void)setRemovesContentLayoutWhenEmpty:(BOOL)a3;
- (void)setRemovesHeaderLayoutWhenEmpty:(BOOL)a3;
- (void)setSelectionSnapshot:(id)a3;
- (void)setShowsSkimmingInteraction:(BOOL)a3;
- (void)setShowsSkimmingSlideshow:(BOOL)a3;
- (void)setSkimmingIndexPaths:(id)a3;
- (void)setSpec:(id)a3;
- (void)setVisibleRectOvershootFactor:(double)a3;
- (void)setWantsAssetIndexBadge:(BOOL)a3;
- (void)setWantsDecorationSpritesHostedInDecoratedSprite:(BOOL)a3;
- (void)setWantsDimmedSelectionStyle:(BOOL)a3;
- (void)setWantsFileSizeBadge:(BOOL)a3;
- (void)setWantsNumberedSelectionStyle:(BOOL)a3;
- (void)setWantsShadow:(BOOL)a3;
- (void)setZoomLevel:(int64_t)a3;
- (void)update;
- (void)viewEnvironmentDidChange;
- (void)visibleRectDidChange;
@end

@implementation PXAssetsSectionLayout

- (PXSimpleIndexPath)presentedSectionIndexPath
{
  v3 = *&self[45].dataSourceIdentifier;
  *&retstr->dataSourceIdentifier = *&self[44].item;
  *&retstr->item = v3;
  return self;
}

- ($B01073AA55A67B413588F7AD9EFB6822)preferredCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (PXAssetsSectionLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PXAssetsSectionLayout *)self assetCollectionReference];
  if (v10)
  {
    PXGAXAddAssetCollectionReferenceUserInfo();
  }

  v13.receiver = self;
  v13.super_class = PXAssetsSectionLayout;
  v11 = [(PXAssetsSectionLayout *)&v13 axGroup:v8 didRequestToPerformAction:a4 userInfo:v9];

  return v11;
}

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ((a4 & 6) != 0)
  {
    memset(&v11[1], 0, 32);
    [(PXAssetsSectionLayout *)self sectionIndexPath];
    PXGAXAddSimpleIndexPathGroupChangeUserInfo();
    v10 = [(PXAssetsSectionLayout *)self bodyItemsGeometry];
    PXGAXAddItemGeometryGroupChangeUserInfo();
  }

  v11[0].receiver = self;
  v11[0].super_class = PXAssetsSectionLayout;
  [(objc_super *)v11 axGroup:v8 didChange:a4 userInfo:v9];
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA78]);

  return v2;
}

- (id)axLocalizedLabel
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PXAssetsSectionLayout *)self axLocalizedBaseLabel];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(PXAssetsSectionLayout *)self assetCollection];
  v6 = [v5 localizedTitle];
  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = [v5 localizedSubtitle];
  if (v7)
  {
    [v3 addObject:v7];
  }

  v8 = [v3 componentsJoinedByString:@" "];
  v9 = [v8 mutableCopy];

  [v9 replaceOccurrencesOfString:@"" withString:&stru_282C2F4D0 options:0 range:{0, objc_msgSend(v9, "length")}];

  return v9;
}

- (CGRect)generatedLayout:(id)a3 bestCropRectForInputItemAtIndex:(unsigned int)a4 withAspectRatio:(double)a5
{
  v6 = a4;
  v7 = [(PXAssetsSectionLayout *)self _displayAssetForBodyItem:a4];
  v8 = *MEMORY[0x277CBF398];
  v9 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v11 = *(MEMORY[0x277CBF398] + 24);
  if ([(PXAssetsSectionLayout *)self isFaceModeEnabled])
  {
    v12 = [(PXAssetsSectionLayout *)self _displayFaceForBodyItem:v6];
    v13 = v12;
    if (v12)
    {
      [v12 normalizedCropRect];
      v8 = v14;
      v9 = v15;
      v10 = v16;
      v11 = v17;
    }
  }

  v26.origin.x = v8;
  v26.origin.y = v9;
  v26.size.width = v10;
  v26.size.height = v11;
  if (CGRectIsEmpty(v26))
  {
    PXCuratedLibraryBestCropRectForAssetInZoomLevel(v7, [(PXAssetsSectionLayout *)self zoomLevel]);
    v8 = v18;
    v9 = v19;
    v10 = v20;
    v11 = v21;
  }

  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)generatedLayout:(id)a3 objectReferenceAtIndex:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(PXAssetsSectionLayout *)self bodyContentLayout];

  if (v7 == v6)
  {
    v8 = [(PXAssetsSectionLayout *)self _objectReferenceForSpriteIndex:v4 itemsLayout:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)itemsLayout:(id)a3 objectReferenceForItem:(int64_t)a4
{
  v6 = [(PXAssetsSectionLayout *)self dataSource];
  v9[0] = [v6 identifier];
  v9[1] = [(PXAssetsSectionLayout *)self section];
  v9[2] = a4;
  v9[3] = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [v6 objectReferenceAtIndexPath:v9];

  return v7;
}

- (int64_t)itemsLayout:(id)a3 itemForObjectReference:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_9:
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_22;
    }

    v8 = [v7 keyAssetReference];
  }

  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  if ((v5 & 1) == 0)
  {
LABEL_11:
    v11 = v9;
    goto LABEL_12;
  }

  v10 = [(PXAssetsSectionLayout *)self dataSource];
  v11 = [v10 objectReferenceNearestToObjectReference:v9 inSection:{-[PXAssetsSectionLayout section](self, "section")}];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_12:
  v16 = 0u;
  v17 = 0u;
  v13 = [(PXAssetsSectionLayout *)self dataSource];
  v14 = v13;
  if (v13)
  {
    [v13 indexPathForAssetReference:v11];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v16 != *MEMORY[0x277D3CF78] && v17 != 0x7FFFFFFFFFFFFFFFLL && *(&v17 + 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(&v16 + 1) == [(PXAssetsSectionLayout *)self section])
    {
      v12 = v17;
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_22:
  return v12;
}

- (void)itemsLayout:(id)a3 updateTagsInSpriteInfos:(id *)a4 forItemsInRange:(_NSRange)a5
{
  v6 = [(PXAssetsSectionLayout *)self dataSource];
  [v6 identifier];
  [(PXAssetsSectionLayout *)self section];
  PXUpdateSectionedSpriteInfoTagsForItemsInRange();
}

- (unsigned)itemsLayout:(id)a3 effectIdForItem:(int64_t)a4
{
  if ([(PXAssetsSectionLayout *)self zoomLevel]!= 4)
  {
    return 0;
  }

  v6 = [(PXAssetsSectionLayout *)self _displayAssetForBodyItem:a4];
  v7 = [v6 representsBurst];

  if (!v7)
  {
    return 0;
  }

  v8 = [(PXAssetsSectionLayout *)self burstStackEffect];
  v9 = [v8 effectId];

  return v9;
}

- ($B01073AA55A67B413588F7AD9EFB6822)itemsLayout:(id)a3 cornerRadiusForItem:(int64_t)a4
{
  v4 = [(PXAssetsSectionLayout *)self spec:a3];
  [v4 itemCornerRadius];

  *&result.var0.var1[2] = v6;
  *&result.var0.var0.var0 = v5;
  return result;
}

- (CGSize)itemsLayout:(id)a3 insetForItem:(int64_t)a4
{
  v5 = [(PXAssetsSectionLayout *)self assetDecorationSource];
  [v5 expectedInsetsForItem:a4];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)itemsLayout:(id)a3 bestCropRectForItem:(int64_t)a4 withAspectRatio:(double)a5
{
  v7 = [(PXAssetsSectionLayout *)self _displayAssetForBodyItem:a4];
  if ([v7 representsBurst])
  {
    v8 = *MEMORY[0x277D3CFC0];
    v9 = *(MEMORY[0x277D3CFC0] + 8);
    v10 = *(MEMORY[0x277D3CFC0] + 16);
    v11 = *(MEMORY[0x277D3CFC0] + 24);
  }

  else
  {
    v8 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
    if ([(PXAssetsSectionLayout *)self isFaceModeEnabled])
    {
      v12 = [(PXAssetsSectionLayout *)self _displayFaceForBodyItem:a4];
      v13 = v12;
      if (v12)
      {
        [v12 normalizedCropRect];
        v8 = v14;
        v9 = v15;
        v10 = v16;
        v11 = v17;
      }
    }

    v26.origin.x = v8;
    v26.origin.y = v9;
    v26.size.width = v10;
    v26.size.height = v11;
    if (CGRectIsEmpty(v26))
    {
      PXCuratedLibraryBestCropRectForAssetInZoomLevel(v7, [(PXAssetsSectionLayout *)self zoomLevel]);
      v8 = v18;
      v9 = v19;
      v10 = v20;
      v11 = v21;
    }
  }

  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (double)itemsLayout:(id)a3 aspectRatioForItem:(int64_t)a4
{
  v4 = [(PXAssetsSectionLayout *)self _displayAssetForBodyItem:a4];
  [v4 aspectRatio];
  v6 = v5;

  return v6;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (v7 == self)
  {
    if (self->_blurSpriteIndex != a3)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1560 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v9 = self->_blurViewConfiguration;
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [PXPhotosGridAddButtonViewUserData alloc];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __63__PXAssetsSectionLayout_viewUserDataForSpriteAtIndex_inLayout___block_invoke;
    v16 = &unk_278299458;
    objc_copyWeak(&v17, &location);
    v9 = [(PXPhotosGridAddButtonViewUserData *)v8 initWithStyle:1 actionHandler:&v13];
    v10 = [(PXAssetsSectionLayout *)self spec:v13];
    -[PXAssetsSectionBlurViewConfiguration setPreferredUserInterfaceStyle:](v9, "setPreferredUserInterfaceStyle:", [v10 preferredUserInterfaceStyle]);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __63__PXAssetsSectionLayout_viewUserDataForSpriteAtIndex_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callAddContentActionHandler];
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (v7 == self && self->_blurSpriteIndex != a3)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1544 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = objc_opt_class();

  return v8;
}

- (double)cornerRadiusForShadowSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_sectionShadowSpriteIndex != a3)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1533 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = [(PXAssetsSectionLayout *)self spec];
  if (!v9)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1530 description:@"A valid spec object should be available to retrieve the shadow corner radius."];
  }

  [v9 shadowCornerRadius];
  v11 = v10;

  return v11;
}

- (id)shadowForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_sectionShadowSpriteIndex != a3)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1523 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = [(PXAssetsSectionLayout *)self spec];
  if (!v9)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1520 description:@"A valid spec object should be available to retrieve the shadow."];
  }

  v10 = [v9 shadow];

  return v10;
}

- (id)_displayFaceForBodyItem:(int64_t)a3
{
  v5 = [(PXAssetsSectionLayout *)self dataSource];
  v8[0] = [v5 identifier];
  v8[1] = [(PXAssetsSectionLayout *)self section];
  v8[2] = a3;
  v8[3] = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [v5 primaryFaceForAssetAtItemIndexPath:v8];

  return v6;
}

- (id)_displayAssetForBodyItem:(int64_t)a3
{
  v5 = [(PXAssetsSectionLayout *)self dataSource];
  v8[0] = [v5 identifier];
  v8[1] = [(PXAssetsSectionLayout *)self section];
  v8[2] = a3;
  v8[3] = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [v5 assetAtItemIndexPath:v8];

  return v6;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4
{
  v6 = a4;
  v7 = [(PXAssetsSectionLayout *)self bodyContentLayout];

  if (v7 != v6)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1486 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v6;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    v20 = [MEMORY[0x277CCA890] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    v24 = [v8 px_descriptionForAssertionMessage];
    [v20 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1470 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v22, v24}];
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1470 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v22}];
  }

LABEL_4:
  v9 = [v8 itemForSpriteIndex:0];
  v10 = [v8 numberOfItems];
  if ([(PXAssetsSectionLayout *)self zoomLevel]== 1)
  {
    v11 = [(PXAssetsSectionLayout *)self keyAssetsFetchResult];
LABEL_13:
    v15 = v11;
    goto LABEL_15;
  }

  v12 = v10 - v9;
  if (self->_cachedClampedItemRange.location == v9 && self->_cachedClampedItemRange.length == v12)
  {
    cachedClampedFetchResult = self->_cachedClampedFetchResult;
    if (cachedClampedFetchResult)
    {
      v11 = cachedClampedFetchResult;
      goto LABEL_13;
    }
  }

  v16 = [(PXAssetsSectionLayout *)self dataSource];
  v26[0] = [v16 identifier];
  v26[1] = [(PXAssetsSectionLayout *)self section];
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v27 = vnegq_f64(v17);
  v18 = [v16 assetsInSectionIndexPath:v26];
  v15 = PXDisplayAssetFetchResultSubfetchResultWithRange();
  objc_storeStrong(&self->_cachedClampedFetchResult, v15);
  self->_cachedClampedItemRange.location = v9;
  self->_cachedClampedItemRange.length = v12;

LABEL_15:

  return v15;
}

- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)a3
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  if (a3 == 16 || a3 == 2)
  {
    v6 = +[PXPhotosGridSettings sharedInstance];
    v7 = [v6 forcePlayback];

    if ((v7 & 1) == 0)
    {
      v8 = [(PXAssetsSectionLayout *)self bodyContentLayout];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [(PXAssetsSectionLayout *)self bodyContentLayout];
        [v10 minPlayableSpriteSize];
        v4 = v11;
        v5 = v12;
      }
    }
  }

  v13 = v4;
  v14 = v5;
  result.height = v14;
  result.width = v13;
  return result;
}

- (unint64_t)supportedDisplayAssetPresentationStylesInLayout:(id)a3
{
  if (([(PXAssetsSectionLayout *)self zoomLevel]- 3) >= 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)viewEnvironmentDidChange
{
  v3.receiver = self;
  v3.super_class = PXAssetsSectionLayout;
  [(PXGSplitLayout *)&v3 viewEnvironmentDidChange];
  [(PXAssetsSectionLayout *)self _updateEffectiveBlurIntensity];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PXAssetsSectionLayout;
  [(PXGSplitLayout *)&v3 safeAreaInsetsDidChange];
  [(PXAssetsSectionLayout *)self _invalidateContent];
}

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXAssetsSectionLayout;
  [(PXGSplitLayout *)&v8 displayScaleDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout displayScaleDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXAssetsSectionLayout.m" lineNumber:1414 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {
    [(PXAssetsSectionLayout *)self setNeedsUpdate];
  }
}

- (void)contentSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXAssetsSectionLayout;
  [(PXAssetsSectionLayout *)&v3 contentSizeDidChange];
  [(PXAssetsSectionLayout *)self _updateLocalSprites];
}

- (id)_rowBasedBodyContentLayout
{
  v2 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  if ([v2 conformsToProtocol:&unk_282C4C3A0])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)enumerateRowsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(PXAssetsSectionLayout *)self _rowBasedBodyContentLayout];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__PXAssetsSectionLayout_enumerateRowsWithOptions_usingBlock___block_invoke;
  v10[3] = &unk_2782977A8;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [v9 enumerateRowsWithOptions:a3 usingBlock:v10];
}

uint64_t __61__PXAssetsSectionLayout_enumerateRowsWithOptions_usingBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) convertRect:*(a1 + 40) fromDescendantLayout:?];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (double)buildingRowSpacing
{
  v2 = [(PXAssetsSectionLayout *)self _rowBasedBodyContentLayout];
  v3 = v2;
  if (v2)
  {
    [v2 buildingRowSpacing];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)buildingRowContentHeight
{
  v2 = [(PXAssetsSectionLayout *)self _rowBasedBodyContentLayout];
  v3 = v2;
  if (v2)
  {
    [v2 buildingRowContentHeight];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)enumerateAssetsInRect:(CGRect)a3 enumerator:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v54 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if ([(PXAssetsSectionLayout *)self zoomLevel]== 4)
  {
    v10 = [(PXAssetsSectionLayout *)self bodyContentLayout];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v13 = v12;

        [(PXAssetsSectionLayout *)self convertRect:v13 toDescendantLayout:x, y, width, height];
        v14 = v55.origin.x;
        v15 = v55.origin.y;
        v16 = v55.size.width;
        v17 = v55.size.height;
        if (CGRectIsNull(v55))
        {
          v18 = PXGridZeroGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = objc_opt_class();
            *&buf[12] = 2048;
            *&buf[14] = self;
            _os_log_impl(&dword_21ABF3000, v18, OS_LOG_TYPE_ERROR, "Failed to enumerate assets for <%{public}@:%p>", buf, 0x16u);
          }
        }

        else
        {
          [v13 enumerateAssetsInRect:v9 enumerator:{v14, v15, v16, v17}];
        }
      }

      else
      {

        v19 = v12;
        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v20 = v19;

          [(PXAssetsSectionLayout *)self convertRect:v20 toDescendantLayout:x, y, width, height];
          v21 = v56.origin.x;
          v22 = v56.origin.y;
          v23 = v56.size.width;
          v24 = v56.size.height;
          if (CGRectIsNull(v56))
          {
            v25 = PXGridZeroGetLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *&buf[4] = objc_opt_class();
              *&buf[12] = 2114;
              *&buf[14] = objc_opt_class();
              *&buf[22] = 2048;
              v53 = self;
              _os_log_impl(&dword_21ABF3000, v25, OS_LOG_TYPE_ERROR, "Failed to convert rect for layout: %{public}@, in: <%{public}@:%p>", buf, 0x20u);
            }
          }

          else
          {
            v35 = [v20 itemRangeForSpriteIndexRange:{objc_msgSend(v20, "spriteIndexRangeCoveringRect:", v21, v22, v23, v24)}];
            v37 = v36;
            v38 = [(PXAssetsSectionLayout *)self section];
            v39 = [(PXAssetsSectionLayout *)self dataSource];
            v40 = [v39 identifier];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __58__PXAssetsSectionLayout_enumerateAssetsInRect_enumerator___block_invoke;
            v48[3] = &unk_278299430;
            v49 = v39;
            v20 = v20;
            v50 = v20;
            v51 = v9;
            *buf = v40;
            *&buf[8] = v38;
            *&buf[16] = v35;
            v53 = 0x7FFFFFFFFFFFFFFFLL;
            v47[0] = v40;
            v47[1] = v38;
            v47[2] = v37 + v35 - 1;
            v47[3] = 0x7FFFFFFFFFFFFFFFLL;
            v25 = v39;
            [v25 enumerateItemIndexPathsStartingAtIndexPath:buf untilEndIndexPath:v47 usingBlock:v48];
          }
        }

        else
        {

          v26 = v19;
          if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v25 = v26;

            v27 = [(PXAssetsSectionLayout *)self section];
            v28 = [(PXAssetsSectionLayout *)self dataSource];
            v29 = [v28 identifier];
            [(PXAssetsSectionLayout *)self convertRect:v25 toDescendantLayout:x, y, width, height];
            v30 = v57.origin.x;
            v31 = v57.origin.y;
            v32 = v57.size.width;
            v33 = v57.size.height;
            if (CGRectIsNull(v57))
            {
              v34 = PXGridZeroGetLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                *&buf[4] = objc_opt_class();
                *&buf[12] = 2114;
                *&buf[14] = objc_opt_class();
                *&buf[22] = 2048;
                v53 = self;
                _os_log_impl(&dword_21ABF3000, v34, OS_LOG_TYPE_ERROR, "Failed to convert rect for layout: %{public}@, in: <%{public}@:%p>", buf, 0x20u);
              }
            }

            else
            {
              v41[0] = MEMORY[0x277D85DD0];
              v41[1] = 3221225472;
              v41[2] = __58__PXAssetsSectionLayout_enumerateAssetsInRect_enumerator___block_invoke_93;
              v41[3] = &unk_278297780;
              v45 = v29;
              v46 = v27;
              v42 = v28;
              v43 = v25;
              v44 = v9;
              [v43 enumerateItemsInRect:v41 usingBlock:v30, v31, v32, v33];

              v34 = v42;
            }
          }

          else
          {

            v28 = PXGridZeroGetLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = objc_opt_class();
              _os_log_impl(&dword_21ABF3000, v28, OS_LOG_TYPE_ERROR, "Unknown body layout: %{public}@", buf, 0xCu);
            }

            v25 = 0;
          }

          v20 = 0;
        }

        v13 = 0;
      }
    }
  }
}

void __58__PXAssetsSectionLayout_enumerateAssetsInRect_enumerator___block_invoke(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 32);
  v5 = a2[1];
  v13 = *a2;
  v14 = v5;
  v6 = [v4 assetAtItemIndexPath:&v13];
  v7 = [*(a1 + 40) spriteIndexForItem:*(a2 + 2)];
  v8 = *(a1 + 40);
  if (v8)
  {
    [v8 geometryForSpriteAtIndex:v7];
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

void __58__PXAssetsSectionLayout_enumerateAssetsInRect_enumerator___block_invoke_93(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v12 = *(a1 + 56);
  v13 = a2;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [v4 assetAtItemIndexPath:&v12];
  v6 = [*(a1 + 40) spriteIndexForItem:a2];
  v7 = *(a1 + 40);
  if (v7)
  {
    [v7 geometryForSpriteAtIndex:v6];
    v8 = v14;
    v10 = *(&v12 + 1);
    v9 = *&v12;
  }

  else
  {
    v8 = 0;
    v10 = 0.0;
    v9 = 0.0;
  }

  v11 = vmul_f32(v8, 0x3F0000003F000000);
  (*(*(a1 + 48) + 16))(v9 - v11.f32[0], v10 - v11.f32[1], v8.f32[0], v8.f32[1]);
}

- (void)enumerateAssetCollectionsInRect:(CGRect)a3 enumerator:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if ([(PXAssetsSectionLayout *)self zoomLevel]!= 4)
  {
    v11 = [(PXAssetsSectionLayout *)self dataSource];
    *v22 = [(PXAssetsSectionLayout *)v11 identifier];
    *&v22[8] = [(PXAssetsSectionLayout *)self section];
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    *&v22[16] = vnegq_f64(v18);
    v12 = [(PXAssetsSectionLayout *)v11 assetCollectionAtSectionIndexPath:v22];
    [(PXAssetsSectionLayout *)self visibleRect];
    v9[2](v9, v12, self);
LABEL_14:

    goto LABEL_15;
  }

  v10 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  if (v10)
  {
    v11 = v10;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;

      [(PXAssetsSectionLayout *)self convertRect:v12 toDescendantLayout:x, y, width, height];
      v13 = v24.origin.x;
      v14 = v24.origin.y;
      v15 = v24.size.width;
      v16 = v24.size.height;
      if (CGRectIsNull(v24))
      {
        v17 = PXGridZeroGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v22 = 138543618;
          *&v22[4] = objc_opt_class();
          *&v22[12] = 2048;
          *&v22[14] = self;
          _os_log_impl(&dword_21ABF3000, v17, OS_LOG_TYPE_ERROR, "Failed to enumerate asset collections for <%{public}@:%p>", v22, 0x16u);
        }
      }

      else
      {
        [(PXAssetsSectionLayout *)v12 enumerateAssetCollectionsInRect:v9 enumerator:v13, v14, v15, v16];
      }

      v11 = v12;
    }

    else
    {

      v19 = [(PXAssetsSectionLayout *)self dataSource];
      *v22 = [v19 identifier];
      *&v22[8] = [(PXAssetsSectionLayout *)self section];
      v20.f64[0] = NAN;
      v20.f64[1] = NAN;
      *&v22[16] = vnegq_f64(v20);
      v21 = [v19 assetCollectionAtSectionIndexPath:v22];
      [(PXAssetsSectionLayout *)v11 visibleRect];
      v9[2](v9, v21, v11);

      v12 = 0;
    }

    goto LABEL_14;
  }

  v11 = 0;
LABEL_15:
}

- (id)locationNamesFutureForContentInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(PXAssetsSectionLayout *)self dataSource];
  v10 = [(PXAssetsSectionLayout *)self section];
  if (v10 >= [v9 numberOfSections])
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1219 description:{@"Invalid parameter not satisfying: %@", @"section < dataSource.numberOfSections"}];
  }

  if ([(PXAssetsSectionLayout *)self zoomLevel]!= 4)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __61__PXAssetsSectionLayout_locationNamesFutureForContentInRect___block_invoke_4;
    v23[3] = &unk_278299408;
    v24 = v9;
    v25 = v10;
    v15 = [v23 copy];

    goto LABEL_15;
  }

  v11 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  v14 = v13;
  if (isKindOfClass)
  {
    v15 = [v13 locationNamesFutureForContentInRect:{x, y, width, height}];
LABEL_14:

    goto LABEL_15;
  }

  if (v14)
  {
    v16 = [(PXAssetsSectionLayout *)self bodyContentLayout];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v16;

      if (v14)
      {
        [(PXAssetsSectionLayout *)self convertRect:v14 toDescendantLayout:x, y, width, height];
        v17 = [v14 itemRangeForSpriteIndexRange:{objc_msgSend(v14, "spriteIndexRangeCoveringRect:")}];
        v19 = v18;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __61__PXAssetsSectionLayout_locationNamesFutureForContentInRect___block_invoke;
        v26[3] = &unk_278297758;
        v27 = v9;
        v28 = v17;
        v29 = v19;
        v15 = [v26 copy];

        goto LABEL_14;
      }
    }

    else
    {

      v14 = 0;
    }

    v15 = 0;
    goto LABEL_14;
  }

  v15 = [&__block_literal_global_91 copy];
LABEL_15:
  v20 = _Block_copy(v15);

  return v20;
}

id __61__PXAssetsSectionLayout_locationNamesFutureForContentInRect___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) identifier] == a2)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA940]);
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = v5 + *(a1 + 48) - 1;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__PXAssetsSectionLayout_locationNamesFutureForContentInRect___block_invoke_2;
    v13[3] = &unk_2782993B8;
    v14 = v6;
    v15 = v4;
    v12[0] = a2;
    v12[1] = 0;
    v12[2] = v5;
    v12[3] = 0x7FFFFFFFFFFFFFFFLL;
    v11[0] = a2;
    v11[1] = 0;
    v11[2] = v7;
    v11[3] = 0x7FFFFFFFFFFFFFFFLL;
    v8 = v4;
    [v14 enumerateItemIndexPathsStartingAtIndexPath:v12 untilEndIndexPath:v11 usingBlock:v13];
    v9 = PXArrayFromFrequencySortAndDeduplicationOfNSStringSet();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __61__PXAssetsSectionLayout_locationNamesFutureForContentInRect___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) identifier] == a2)
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10[0] = v3;
    v10[1] = v5;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v11 = vnegq_f64(v6);
    v7 = [v4 assetCollectionAtSectionIndexPath:v10];
    v8 = [v7 localizedLocationNames];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __61__PXAssetsSectionLayout_locationNamesFutureForContentInRect___block_invoke_2(uint64_t a1, _OWORD *a2)
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

- (id)dateIntervalFutureForContentInRect:(CGRect)a3 type:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [(PXAssetsSectionLayout *)self dataSource];
  v12 = [(PXAssetsSectionLayout *)self section];
  if (v12 >= [v11 numberOfSections])
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1163 description:{@"Invalid parameter not satisfying: %@", @"section < dataSource.numberOfSections"}];
  }

  if ([(PXAssetsSectionLayout *)self zoomLevel]!= 4)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __65__PXAssetsSectionLayout_dateIntervalFutureForContentInRect_type___block_invoke_3;
    v25[3] = &unk_278299390;
    v26 = v11;
    v27 = v12;
    v17 = [v25 copy];

    goto LABEL_15;
  }

  v13 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v15 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  v16 = v15;
  if (isKindOfClass)
  {
    v17 = [v15 dateIntervalFutureForContentInRect:a4 type:{x, y, width, height}];
LABEL_14:

    goto LABEL_15;
  }

  if (v16)
  {
    v18 = [(PXAssetsSectionLayout *)self bodyContentLayout];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v16 = v18;

      if (v16)
      {
        [(PXAssetsSectionLayout *)self convertRect:v16 toDescendantLayout:x, y, width, height];
        v19 = [v16 itemRangeForSpriteIndexRange:{objc_msgSend(v16, "spriteIndexRangeCoveringRect:")}];
        v21 = v20;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __65__PXAssetsSectionLayout_dateIntervalFutureForContentInRect_type___block_invoke;
        v28[3] = &unk_278297710;
        v29 = v11;
        v30 = v19;
        v31 = v21;
        v32 = v12;
        v33 = a4;
        v17 = [v28 copy];

        goto LABEL_14;
      }
    }

    else
    {

      v16 = 0;
    }

    v17 = 0;
    goto LABEL_14;
  }

  v17 = [&__block_literal_global copy];
LABEL_15:
  v22 = _Block_copy(v17);

  return v22;
}

id __65__PXAssetsSectionLayout_dateIntervalFutureForContentInRect_type___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) identifier] == a2)
  {
    if (*(a1 + 40) == 0x7FFFFFFFFFFFFFFFLL || !*(a1 + 48) || (v3 = [*(a1 + 32) identifier], v4 = *(a1 + 40), v4 >= *(a1 + 48) + v4))
    {
      v15 = 0;
      v14 = 0;
      v13 = 0;
    }

    else
    {
      v5 = v3;
      v6 = 0;
      v7 = 0;
      v8 = *(a1 + 56);
      do
      {
        v9 = *(a1 + 32);
        v19[0] = v5;
        v19[1] = v8;
        v19[2] = v4;
        v19[3] = 0x7FFFFFFFFFFFFFFFLL;
        v10 = [v9 assetAtItemIndexPath:v19];
        v11 = v10;
        if (*(a1 + 64) == 1)
        {
          [v10 importDate];
        }

        else
        {
          [v10 creationDate];
        }
        v12 = ;
        v17 = v7;
        v18 = v6;
        [MEMORY[0x277CBEAA8] px_unionStartDate:&v18 endDate:&v17 withDate:v12];
        v13 = v18;

        v14 = v17;
        ++v4;
        v6 = v13;
        v7 = v14;
      }

      while (v4 < *(a1 + 48) + *(a1 + 40));
      v15 = 0;
      if (v13 && v14)
      {
        v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v14];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __65__PXAssetsSectionLayout_dateIntervalFutureForContentInRect_type___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) identifier] == a2)
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v14[0] = v3;
    v14[1] = v5;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v15 = vnegq_f64(v6);
    v7 = [v4 assetCollectionAtSectionIndexPath:v14];
    v8 = [v7 startDate];
    v9 = [v7 endDate];
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_assetReferenceClosestVisuallyToAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsSectionLayout *)self dataSource];
  v6 = [v5 assetReferenceForAssetReference:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = [v5 objectReferenceNearestToObjectReference:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
LABEL_6:
    v11 = v10;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_27;
  }

  v30 = 0u;
  v31 = 0u;
  if (v5)
  {
    [v5 indexPathForAssetCollectionReference:v9];
    v26 = v30;
    v27 = v31;
    [v5 keyAssetIndexPathForSectionIndexPath:&v26];
  }

  else
  {
    v28 = 0uLL;
    v29 = 0uLL;
  }

  v11 = 0;
  v30 = v28;
  v31 = v29;
  if (v28.i64[0] != *MEMORY[0x277D3CF78] && *&v31.f64[0] != 0x7FFFFFFFFFFFFFFFLL && *&v31.f64[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = v30;
    v29 = v31;
    v10 = [v5 assetReferenceAtItemIndexPath:&v28];
    goto LABEL_6;
  }

LABEL_7:
  if (!v11 || ([v11 isEqual:v7] & 1) != 0)
  {
    goto LABEL_27;
  }

  v30 = 0u;
  v31 = 0u;
  if (v5)
  {
    [v5 indexPathForAssetReference:v11];
    v28 = 0u;
    v29 = 0u;
    v12 = [v5 identifier];
    v13 = [(PXAssetsSectionLayout *)self section];
    v26.i64[0] = v12;
    v26.i64[1] = v13;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v27 = vnegq_f64(v14);
    [v5 keyAssetIndexPathForSectionIndexPath:&v26];
    v15 = v28;
    v16 = v29;
    v18 = v30;
    v17 = v31;
  }

  else
  {
    v19 = [0 identifier];
    v20 = [(PXAssetsSectionLayout *)self section];
    v26.i64[0] = v19;
    v26.i64[1] = v20;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 0uLL;
    v27 = vnegq_f64(v21);
    v28 = 0u;
    v29 = 0u;
    v17 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v18, v15), vceqq_s64(v17, v16)))) & 1) == 0)
  {
    goto LABEL_27;
  }

  v22 = v16.i64[0] - 1;
  if (v16.i64[0] >= 1)
  {
    goto LABEL_25;
  }

  if (v16.i64[0] < [v5 numberOfItemsInSection:v15.i64[1]] - 1)
  {
    v22 = *&v31.f64[0] + 1;
LABEL_25:
    *&v31.f64[0] = v22;
  }

  v25[0] = v30;
  v25[1] = v31;
  v23 = [v5 assetReferenceAtItemIndexPath:v25];

  v11 = v23;
LABEL_27:

  return v11;
}

- (PXSimpleIndexPath)_dataSourceIndexPathForObjectReference:(SEL)a3 options:(id)a4 updatedObjectReference:(unint64_t)a5
{
  v7 = a5;
  v10 = a4;
  v19 = *(MEMORY[0x277D3CFD8] + 16);
  v21 = *MEMORY[0x277D3CFD8];
  *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
  *&retstr->item = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = [(PXAssetsSectionLayout *)self dataSource];
    v13 = v12;
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PXAssetsSectionLayout *)self _assetReferenceClosestVisuallyToAssetReference:v11];
      }

      else
      {
        [v13 objectReferenceNearestToObjectReference:v11];
      }
      v14 = ;
    }

    else
    {
      v14 = [v12 objectReferenceForObjectReference:v11];
    }

    v15 = v14;

    if (v13)
    {
      [v13 indexPathForObjectReference:v15];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    *&retstr->dataSourceIdentifier = v23;
    *&retstr->item = v24;
    section = retstr->section;
    if (section != [(PXAssetsSectionLayout *)self section:v19])
    {
      *&retstr->dataSourceIdentifier = v22;
      *&retstr->item = v20;
    }

    if (retstr->dataSourceIdentifier != *MEMORY[0x277D3CF78])
    {
      v17 = v15;
      *a6 = v15;
    }
  }

  return result;
}

- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(PXAssetsSectionLayout *)self bodyContainerLayout];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(PXAssetsSectionLayout *)self bodyContentLayout];
    }

    v13 = v11;

    v12 = -[PXAssetsSectionLayout convertSpriteIndex:fromDescendantLayout:](self, "convertSpriteIndex:fromDescendantLayout:", [v13 spriteIndexForObjectReference:v8 options:a4 updatedObjectReference:a5], v13);
  }

  else
  {
    [(PXAssetsSectionLayout *)self _dataSourceIndexPathForObjectReference:v8 options:a4 updatedObjectReference:a5];
    v12 = -1;
  }

  return v12;
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  [(PXAssetsSectionLayout *)self _dataSourceIndexPathForObjectReference:a3 options:a4 updatedObjectReference:a5];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(PXAssetsSectionLayout *)self bodyContainerLayout];
  if (v7 || ([(PXAssetsSectionLayout *)self bodyContentLayout], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [(PXAssetsSectionLayout *)self sublayoutDataStore];
    v6 = [v9 indexOfSublayout:v8];
  }

  return v6;
}

- (BOOL)_shouldAnchorOnAssetCollection
{
  v4 = [(PXAssetsSectionLayout *)self zoomLevel];
  if ((v4 - 1) < 2)
  {
    return 1;
  }

  if ((v4 - 3) < 2)
  {
    return ([(PXAssetsSectionLayout *)self targetZoomLevel]- 1) < 2;
  }

  if (!v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1014 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3
{
  v4 = a3;
  if ([(PXAssetsSectionLayout *)self _shouldAnchorOnAssetCollection])
  {
    sectionBoundariesSpriteIndex = self->_sectionBoundariesSpriteIndex;
    if (sectionBoundariesSpriteIndex != -1)
    {
      v7 = 0;
      v4[2](v4, sectionBoundariesSpriteIndex, 1, &v7);
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXAssetsSectionLayout;
    [(PXAssetsSectionLayout *)&v6 enumerateVisibleAnchoringSpriteIndexesUsingBlock:v4];
  }
}

- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)a3
{
  v4 = a3;
  if ([(PXAssetsSectionLayout *)self _shouldAnchorOnAssetCollection])
  {
    v5 = self;
  }

  else
  {
    v5 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  }

  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v4[2](v4, v5, &v7);
  }
}

- (id)_objectReferenceForSpriteIndex:(unsigned int)a3 itemsLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ([v6 spriteIndexIsItem:v4])
  {
    v7 = [v6 itemForSpriteIndex:v4];
    v8 = [(PXAssetsSectionLayout *)self dataSource];
    v9 = [v8 identifier];
    v10 = [(PXAssetsSectionLayout *)self section];

    v11 = [(PXAssetsSectionLayout *)self dataSource];
    v14[0] = v9;
    v14[1] = v10;
    v14[2] = v7;
    v14[3] = 0x7FFFFFFFFFFFFFFFLL;
    v12 = [v11 assetReferenceAtItemIndexPath:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)objectReferenceForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PXAssetsSectionLayout *)self headerLayout];
  if (v5 && [(PXAssetsSectionLayout *)self convertSpriteIndex:v3 toDescendantLayout:v5]!= -1)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v7 = [(PXAssetsSectionLayout *)self dataSource];
  if (([(PXAssetsSectionLayout *)self zoomLevel]- 3) <= 1)
  {
    v8 = [(PXAssetsSectionLayout *)self bodyContentLayout];
    if (!v8 || (v9 = [(PXAssetsSectionLayout *)self convertSpriteIndex:v3 toDescendantLayout:v8], v9 == -1))
    {
    }

    else
    {
      v10 = v9;
      v11 = [(PXAssetsSectionLayout *)self configurator];

      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(PXAssetsSectionLayout *)self _objectReferenceForSpriteIndex:v10 itemsLayout:v8];
        }

        else
        {
          v17 = [v7 identifier];
          v18 = [(PXAssetsSectionLayout *)self section];
          *&v19.f64[0] = v10;
          v19.f64[1] = NAN;
          v12 = [v7 assetReferenceAtItemIndexPath:&v17];
        }
      }

      else
      {
        v12 = [v8 objectReferenceForSpriteIndex:v10];
      }

      v6 = v12;

      if (v6)
      {
        goto LABEL_12;
      }
    }
  }

  v13 = [v7 identifier];
  v14 = [(PXAssetsSectionLayout *)self section];
  v17 = v13;
  v18 = v14;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v19 = vnegq_f64(v15);
  v6 = [v7 objectReferenceAtIndexPath:&v17];
LABEL_12:

LABEL_13:

  return v6;
}

- (id)hitTestResultForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v6 = [(PXAssetsSectionLayout *)self headerLayout];
  if (!v6 || (v7 = -[PXAssetsSectionLayout convertSpriteIndex:toDescendantLayout:](self, "convertSpriteIndex:toDescendantLayout:", v3, v6), v7 == -1) || ([v6 hitTestResultForSpriteIndex:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(PXAssetsSectionLayout *)self zoomLevel];
    v10 = v9;
    if ((v9 - 1) >= 2)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v23.receiver = self;
          v23.super_class = PXAssetsSectionLayout;
          v8 = [(PXAssetsSectionLayout *)&v23 hitTestResultForSpriteIndex:v3];
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_25;
      }

      v11 = [(PXAssetsSectionLayout *)self objectReferenceForSpriteIndex:v3];
      v15 = [(PXAssetsSectionLayout *)self spriteReferenceForSpriteIndex:v3 objectReference:v11];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [[PXCuratedLibraryHitTestResult alloc] initWithControl:1 spriteReference:v15 layout:self assetReference:v11];
      }

      else
      {
        v8 = 0;
      }

LABEL_24:
      goto LABEL_25;
    }

    v11 = [(PXAssetsSectionLayout *)self bodyContentLayout];
    if (!v11 || [(PXAssetsSectionLayout *)self convertSpriteIndex:v3 toDescendantLayout:v11]== -1)
    {
      v8 = 0;
      goto LABEL_24;
    }

    v12 = [(PXAssetsSectionLayout *)self objectReferenceForSpriteIndex:v3];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        if (self->_sectionBoundariesSpriteIndex == -1)
        {
          v20 = [MEMORY[0x277CCA890] currentHandler];
          [v20 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:888 description:@"missing section boundaries sprite"];
        }

        v13 = [PXAssetsSectionLayout spriteReferenceForSpriteIndex:"spriteReferenceForSpriteIndex:objectReference:" objectReference:?];
        if (v10 == 1)
        {
          v14 = 2;
        }

        else
        {
          v14 = 3;
        }

        v8 = [[PXCuratedLibraryHitTestResult alloc] initWithControl:v14 spriteReference:v13 layout:self assetCollectionReference:v12];

        goto LABEL_24;
      }

      v17 = [MEMORY[0x277CCA890] currentHandler];
      v21 = objc_opt_class();
      v19 = NSStringFromClass(v21);
      v22 = [v12 px_descriptionForAssertionMessage];
      [v17 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:887 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectReferenceForSpriteIndex:spriteIndex]", v19, v22}];
    }

    else
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [v17 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:887 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectReferenceForSpriteIndex:spriteIndex]", v19}];
    }

    goto LABEL_12;
  }

LABEL_25:

  return v8;
}

- (PXGItemsGeometry)bodyItemsGeometry
{
  v2 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 itemsGeometry];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PXGBurstStackEffect)burstStackEffect
{
  v3 = [(PXGBurstStackEffect *)self->_burstStackEffect entityManager];
  burstStackEffect = [(PXAssetsSectionLayout *)self entityManager];
  if (v3 != burstStackEffect)
  {
    v5 = [(PXAssetsSectionLayout *)self entityManager];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = objc_alloc(MEMORY[0x277D73C68]);
    v3 = [(PXAssetsSectionLayout *)self entityManager];
    v7 = [v6 initWithEntityManager:v3];
    burstStackEffect = self->_burstStackEffect;
    self->_burstStackEffect = v7;
  }

LABEL_5:
  v8 = self->_burstStackEffect;

  return v8;
}

- (PXDisplayAssetFetchResult)keyAssetsFetchResult
{
  v3 = [(PXAssetsSectionLayout *)self dataSource];
  v4 = [v3 identifier];
  v5 = [(PXAssetsSectionLayout *)self section];
  v11 = v4;
  v12 = v5;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v10 = vnegq_f64(v6);
  v13 = v10;
  v7 = [v3 keyAssetsInSectionIndexPath:&v11];
  if (![v7 count])
  {
    v11 = v4;
    v12 = v5;
    v13 = v10;
    v8 = [v3 assetsInSectionIndexPath:&v11];

    v7 = v8;
  }

  return v7;
}

- (int64_t)keyItemIndex
{
  v9 = 0u;
  v10 = 0u;
  v3 = [(PXAssetsSectionLayout *)self dataSource];
  v4 = [(PXAssetsSectionLayout *)self dataSource];
  v7[0] = [v4 identifier];
  v7[1] = [(PXAssetsSectionLayout *)self section];
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v8 = vnegq_f64(v5);
  if (v3)
  {
    [v3 keyAssetIndexPathForSectionIndexPath:v7];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  if (v9 == *MEMORY[0x277D3CF78])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v10;
  }
}

- (BOOL)isCurated
{
  v3 = [(PXAssetsSectionLayout *)self dataSource];
  v4 = [(PXAssetsSectionLayout *)self assetCollection];
  v5 = [v3 hasCurationForAssetCollection:v4];

  return v5;
}

- (PXAssetCollectionReference)assetCollectionReference
{
  assetCollectionReference = self->_assetCollectionReference;
  if (!assetCollectionReference)
  {
    goto LABEL_8;
  }

  [(PXAssetCollectionReference *)assetCollectionReference indexPath];
  [(PXAssetsSectionLayout *)self sectionIndexPath];
  if (v14[0] != v10 || v14[1] != v11 || v14[2] != v12 || v14[3] != v13)
  {
    v4 = self->_assetCollectionReference;
    self->_assetCollectionReference = 0;
  }

  if (!self->_assetCollectionReference)
  {
LABEL_8:
    if ([(PXAssetsSectionLayout *)self section]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(PXAssetsSectionLayout *)self dataSource];
      [(PXAssetsSectionLayout *)self sectionIndexPath];
      v6 = [v5 assetCollectionReferenceAtSectionIndexPath:v14];
      v7 = self->_assetCollectionReference;
      self->_assetCollectionReference = v6;
    }
  }

  v8 = self->_assetCollectionReference;

  return v8;
}

- (PXDisplayAssetCollection)assetCollection
{
  if ([(PXAssetsSectionLayout *)self section]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PXAssetsSectionLayout *)self dataSource];
    [(PXAssetsSectionLayout *)self sectionIndexPath];
    v3 = [v4 assetCollectionAtSectionIndexPath:&v6];
  }

  return v3;
}

- (int64_t)numberOfAssets
{
  v3 = [(PXAssetsSectionLayout *)self dataSource];
  v4 = [v3 numberOfItemsInSection:{-[PXAssetsSectionLayout section](self, "section")}];

  return v4;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v9 = [(PXAssetsSectionLayout *)self dataSource];
  v5 = [v9 identifier];
  v6 = [(PXAssetsSectionLayout *)self section];
  retstr->dataSourceIdentifier = v5;
  retstr->section = v6;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *&retstr->item = vnegq_f64(v7);

  return result;
}

- (void)setVisibleRectOvershootFactor:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_visibleRectOvershootFactor = a3;
    v5 = [(PXAssetsSectionLayout *)self delegate];
    [v5 assetSectionLayoutDidUpdateVisibleRectOvershootFactor:self];
  }
}

- (void)_updateVisibleRectOvershootFactor
{
  [(PXAssetsSectionLayout *)self visibleRect];
  v22 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(PXAssetsSectionLayout *)self contentSize];
  [(PXAssetsSectionLayout *)self referenceSize];
  PXSizeMax();
  PXRectWithOriginAndSize();
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  MinY = CGRectGetMinY(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MaxY = CGRectGetMaxY(v25);
  v26.origin.x = v22;
  v26.origin.y = v5;
  v26.size.width = v7;
  v26.size.height = v9;
  v16 = CGRectGetMinY(v26);
  v27.origin.x = v22;
  v27.origin.y = v5;
  v27.size.width = v7;
  v27.size.height = v9;
  v17 = CGRectGetMaxY(v27);
  if (v16 <= MinY)
  {
    v20 = MinY - v16;
    v21 = -600.0;
  }

  else
  {
    v18 = v17;
    v19 = 0.0;
    if (v18 <= MaxY)
    {
      goto LABEL_6;
    }

    v20 = v18 - MaxY;
    v21 = 600.0;
  }

  v19 = v20 / v21;
LABEL_6:

  [(PXAssetsSectionLayout *)self setVisibleRectOvershootFactor:v19];
}

- (void)_invalidateVisibleRectOvershootFactor
{
  if (self->_postUpdateFlags.isPerformingUpdate && (self->_postUpdateFlags.updated & 0x10) != 0)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout _invalidateVisibleRectOvershootFactor]"];
    [v2 handleFailureInFunction:v3 file:@"PXAssetsSectionLayout.m" lineNumber:760 description:{@"invalidating %lu after it already has been updated", 16}];

    abort();
  }

  self->_postUpdateFlags.needsUpdate |= 0x10uLL;
}

- (void)_updateBlurSprite
{
  if (self->_blurSpriteIndex != -1)
  {
    v3 = +[PXPhotosGridSettings sharedInstance];
    [(PXAssetsSectionLayout *)self effectiveBlurIntensity];
    v5 = v4;
    v6 = [PXAssetsSectionBlurViewConfiguration alloc];
    [v3 maximumBlurRadius];
    v8 = v7;
    [v3 maximumBlurDimmingFraction];
    v10 = [(PXAssetsSectionBlurViewConfiguration *)v6 initWithIntensity:v5 maximumBlurRadius:v8 maximumDimmingFraction:v9];
    blurViewConfiguration = self->_blurViewConfiguration;
    self->_blurViewConfiguration = v10;

    blurSpriteIndex = self->_blurSpriteIndex;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__PXAssetsSectionLayout__updateBlurSprite__block_invoke;
    v13[3] = &__block_descriptor_40_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
    *&v13[4] = v5;
    [(PXAssetsSectionLayout *)self modifySpritesInRange:blurSpriteIndex | 0x100000000 state:v13];
  }
}

double __42__PXAssetsSectionLayout__updateBlurSprite__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32) * 100.0;
  *(a5 + 32) = result;
  return result;
}

- (void)setEffectiveBlurIntensity:(double)a3
{
  if (self->_effectiveBlurIntensity != a3)
  {
    self->_effectiveBlurIntensity = a3;
    [(PXAssetsSectionLayout *)self _updateBlurSprite];
  }
}

- (void)_updateEffectiveBlurIntensity
{
  v3 = [(PXAssetsSectionLayout *)self viewEnvironment];
  if (([v3 isBeingFullPageSnapshotted] & 1) == 0)
  {
    [(PXAssetsSectionLayout *)self blurIntensity];
  }

  [(PXAssetsSectionLayout *)self setEffectiveBlurIntensity:?];
}

- (void)setBlurIntensity:(double)a3
{
  if (self->_blurIntensity != a3)
  {
    self->_blurIntensity = a3;
    [(PXAssetsSectionLayout *)self _updateEffectiveBlurIntensity];
  }
}

- (void)_updateSectionHeaderProperties
{
  v3 = self->_headerLayout;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PXAssetsSectionLayout__updateSectionHeaderProperties__block_invoke;
  v5[3] = &unk_278298598;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(PXGLayout *)v4 performChangesWithLocalUpdate:v5];
}

void __55__PXAssetsSectionLayout__updateSectionHeaderProperties__block_invoke(uint64_t a1)
{
  v7 = +[PXPhotosGridSettings sharedInstance];
  v2 = 1.0;
  v3 = 1.0;
  if ([*(a1 + 32) allowsPositionDependentHeaderContentOpacity])
  {
    [v7 floatingHeaderFadeThresholdBetweenHeaderTopAndBodyBottom];
    [v7 floatingHeaderFadeOverDistance];
    [*(a1 + 32) distanceBetweenTitleTopAndBodyBottom];
    v3 = 1.0;
    PXClamp();
    v5 = *(a1 + 32);
    if (!v5[1152])
    {
      v3 = v4;
    }

    [v5 distanceBetweenHeaderTopAndNextBodyTop];
    [v7 floatingHeaderButtonsFadeThresholdBetweenHeaderTopAndNextBodyTop];
    [*(a1 + 32) safeAreaInsets];
    [v7 floatingHeaderButtonsFadeOverDistance];
    PXClamp();
    v2 = v6;
  }

  [*(a1 + 40) setAlpha:v3];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) setButtonsAlpha:v2];
  }
}

- (void)_updateDistanceProperties
{
  v3 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  v19 = v3;
  if (v3)
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
    [v3 contentSize];
    [(PXAssetsSectionLayout *)self convertRect:v19 fromDescendantLayout:v4, v5, v6, v7];
    MaxY = CGRectGetMaxY(v21);
  }

  else
  {
    [(PXAssetsSectionLayout *)self contentSize];
    MaxY = v9;
  }

  v10 = [(PXGLayout *)self->_headerLayout superlayout];

  v11 = 0.0;
  v12 = 0.0;
  if (v10 == self)
  {
    v13 = objc_opt_respondsToSelector();
    v14 = 0.0;
    if (v13)
    {
      [(PXGLayout *)self->_headerLayout assetsSectionCrossfadeTop];
      v14 = v15;
    }

    [(PXAssetsSectionLayout *)self convertPoint:self->_headerLayout fromLayout:0.0, v14];
  }

  [(PXAssetsSectionLayout *)self setDistanceBetweenTitleTopAndBodyBottom:MaxY - v12];
  v16 = [(PXGLayout *)self->_headerLayout superlayout];

  if (v16 == self)
  {
    [(PXAssetsSectionLayout *)self convertPoint:self->_headerLayout fromLayout:0.0, 0.0];
    v11 = v17;
  }

  [(PXAssetsSectionLayout *)self intersectionSpacing];
  [(PXAssetsSectionLayout *)self setDistanceBetweenHeaderTopAndNextBodyTop:MaxY + v18 - v11];
}

- (void)_updateLocalSprites
{
  isUpdatingLocalSprites = self->_isUpdatingLocalSprites;
  self->_isUpdatingLocalSprites = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__PXAssetsSectionLayout__updateLocalSprites__block_invoke;
  aBlock[3] = &unk_2782976C0;
  aBlock[4] = &v29;
  aBlock[5] = &v23;
  aBlock[6] = &v17;
  v5 = _Block_copy(aBlock);
  v5[2](v5, &self->_sectionBoundariesSpriteIndex, 1);
  v6 = [(PXAssetsSectionLayout *)self wantsShadow];
  if (v6)
  {
    v2 = [(PXAssetsSectionLayout *)self spec];
    v7 = [v2 userInterfaceStyleAllowsShadow];
  }

  else
  {
    v7 = 0;
  }

  v5[2](v5, &self->_sectionShadowSpriteIndex, v7);
  if (v6)
  {
  }

  if ([v24[5] count] || objc_msgSend(v18[5], "count"))
  {
    v8 = objc_alloc(MEMORY[0x277D3CCC8]);
    v9 = [v8 initWithIncrementalChangeDetailsRemovedIndexes:v18[5] insertedIndexes:v24[5] movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
    [(PXAssetsSectionLayout *)self applySpriteChangeDetails:v9 countAfterChanges:*(v30 + 6) initialState:0 modifyState:0];
  }

  [(PXAssetsSectionLayout *)self contentSize];
  PXRectWithOriginAndSize();
  v10 = *(v30 + 6) << 32;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__PXAssetsSectionLayout__updateLocalSprites__block_invoke_2;
  v15[3] = &unk_2782976E8;
  v15[4] = self;
  v15[5] = v11;
  v15[6] = v12;
  v15[7] = v13;
  v15[8] = v14;
  [(PXAssetsSectionLayout *)self modifySpritesInRange:v10 state:v15];
  self->_isUpdatingLocalSprites = isUpdatingLocalSprites;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
}

void *__44__PXAssetsSectionLayout__updateLocalSprites__block_invoke(void *result, unsigned int *a2, int a3)
{
  v4 = result;
  v5 = *a2;
  if (a3)
  {
    *a2 = (*(*(result[4] + 8) + 24))++;
    v6 = *a2;
  }

  else
  {
    v6 = -1;
    *a2 = -1;
  }

  if (v5 == -1)
  {
    if (v6 == -1)
    {
      return result;
    }

    v7 = *(*(result[5] + 8) + 40);
    if (!v7)
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v12 = *(v4[5] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v7 = *(*(v4[5] + 8) + 40);
      v6 = *a2;
    }
  }

  else
  {
    if (v6 != -1)
    {
      return result;
    }

    v7 = *(*(result[6] + 8) + 40);
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v9 = *(v4[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(v4[6] + 8) + 40);
    }

    v6 = v5;
  }

  return [v7 addIndex:v6];
}

unsigned int *__44__PXAssetsSectionLayout__updateLocalSprites__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a1 + 32) configurator];
  if (v9)
  {
    v10 = [*(a1 + 32) configurator];
    [v10 containerFrameForAssetSectionLayout:*(a1 + 32)];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *(a1 + 40);
    v14 = *(a1 + 48);
    v16 = *(a1 + 56);
    v18 = *(a1 + 64);
  }

  [*(a1 + 32) sectionIndexPath];
  result = *(a1 + 32);
  v20 = result[266];
  v21 = MEMORY[0x277D73D78];
  if (v20 != -1)
  {
    v22 = (a3 + 32 * v20);
    v54.origin.x = v12;
    v54.origin.y = v14;
    v54.size.width = v16;
    v54.size.height = v18;
    MidX = CGRectGetMidX(v54);
    v55.origin.x = v12;
    v55.origin.y = v14;
    v55.size.width = v16;
    v55.size.height = v18;
    MidY = CGRectGetMidY(v55);
    v56.origin.x = v12;
    v56.origin.y = v14;
    v56.size.width = v16;
    v56.size.height = v18;
    Width = CGRectGetWidth(v56);
    v57.origin.x = v12;
    v57.origin.y = v14;
    v57.size.width = v16;
    v57.size.height = v18;
    Height = CGRectGetHeight(v57);
    v26.f64[0] = Width;
    v26.f64[1] = Height;
    *v22 = MidX;
    *&v22[1] = MidY;
    v22[2] = 0x4073600000000000;
    v22[3] = vcvt_f32_f64(v26);
    v27 = (a4 + 160 * *(*(a1 + 32) + 1064));
    v28 = v21[7];
    v27[6] = v21[6];
    v27[7] = v28;
    v29 = v21[9];
    v27[8] = v21[8];
    v27[9] = v29;
    v30 = v21[3];
    v27[2] = v21[2];
    v27[3] = v30;
    v31 = v21[5];
    v27[4] = v21[4];
    v27[5] = v31;
    v32 = v21[1];
    *v27 = *v21;
    v27[1] = v32;
    *(a5 + 40 * *(*(a1 + 32) + 1064) + 1) = 0;
    result = *(a1 + 32);
  }

  v53 = a4;
  if (result[267] != -1)
  {
    [result spec];
    v34 = v33 = a5;
    v35 = [v34 shadow];
    PXGConfigureShadowSprite();

    a5 = v33;
    *(a3 + 32 * *(*(a1 + 32) + 1068) + 16) = 0x4024000000000000;
    *(v33 + 40 * *(*(a1 + 32) + 1068) + 24) = PXGSectionedSpriteTagMake();
    result = *(a1 + 32);
  }

  if (result[280] != -1)
  {
    [result intersectionSpacing];
    PXEdgeInsetsMake();
    PXEdgeInsetsInsetRect();
    x = v58.origin.x;
    y = v58.origin.y;
    v38 = v58.size.width;
    v39 = v58.size.height;
    v40 = (a3 + 32 * *(*(a1 + 32) + 1120));
    v41 = CGRectGetMidX(v58);
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = v38;
    v59.size.height = v39;
    v42 = CGRectGetMidY(v59);
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = v38;
    v60.size.height = v39;
    v52 = CGRectGetWidth(v60);
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = v38;
    v61.size.height = v39;
    v43 = CGRectGetHeight(v61);
    v44.f64[0] = v52;
    v44.f64[1] = v43;
    *v40 = v41;
    *&v40[1] = v42;
    v40[2] = 0xC000000000000000;
    v40[3] = vcvt_f32_f64(v44);
    v45 = (v53 + 160 * *(*(a1 + 32) + 1120));
    v46 = v21[1];
    *v45 = *v21;
    v45[1] = v46;
    v47 = v21[5];
    v45[4] = v21[4];
    v45[5] = v47;
    v48 = v21[3];
    v45[2] = v21[2];
    v45[3] = v48;
    v49 = v21[9];
    v45[8] = v21[8];
    v45[9] = v49;
    v50 = v21[7];
    v45[6] = v21[6];
    v45[7] = v50;
    *(a5 + 40 * *(*(a1 + 32) + 1120)) = 1;
    *(a5 + 40 * *(*(a1 + 32) + 1120) + 1) = 10;
    result = PXGSectionedSpriteTagMake();
    *(a5 + 40 * *(*(a1 + 32) + 1120) + 24) = result;
  }

  return result;
}

- (void)_updateDecorationSource
{
  v7 = [(PXAssetsSectionLayout *)self assetDecorationSource];
  v3 = [(PXAssetsSectionLayout *)self dataSource];
  [v7 setWantsSharedLibraryDecorations:{objc_msgSend(v3, "libraryFilter") != 1}];

  [v7 setWantsSensitiveWarningDecorations:1];
  [v7 setWantsStacksDecorations:0];
  v4 = [(PXAssetsSectionLayout *)self zoomLevel];
  v5 = +[PXPhotosGridSettings sharedInstance];
  v6 = [v5 enableStacksReviewUI];

  [v7 setEnableDebugDecoration:v6];
  if (v4 != 4)
  {
    [v7 setForbiddenBadges:0x400208000041FLL];
    [v7 setDurationAlwaysHidden:(v4 - 1) < 2];
  }
}

- (void)_updateContent
{
  if ([(PXAssetsSectionLayout *)self numberOfAssets])
  {
    v3 = [(PXAssetsSectionLayout *)self headerLayout];
    [(PXGSplitLayout *)self setFirstSublayout:v3];
  }

  else
  {
    if ([(PXAssetsSectionLayout *)self removesHeaderLayoutWhenEmpty])
    {
      [(PXGSplitLayout *)self setFirstSublayout:0];
    }

    else
    {
      v4 = [(PXAssetsSectionLayout *)self headerLayout];
      [(PXGSplitLayout *)self setFirstSublayout:v4];
    }

    if ([(PXAssetsSectionLayout *)self removesContentLayoutWhenEmpty])
    {
      [(PXAssetsSectionLayout *)self setBodyContentLayout:0 wantsDecoration:0];
      goto LABEL_9;
    }
  }

  v5 = [(PXAssetsSectionLayout *)self configurator];
  [v5 configureAssetSectionLayout:self];

  v6 = [(PXAssetsSectionLayout *)self delegate];
  [v6 assetSectionLayoutDidConfigureLayouts:self];

  v7 = [(PXAssetsSectionLayout *)self dropTargetAssetReference];
  v8 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  v9 = [v8 layoutForItemChanges];
  [v9 setDropTargetObjectReference:v7];

  [(PXAssetsSectionLayout *)self _updateDecorationSource];
LABEL_9:
  v10 = [(PXAssetsSectionLayout *)self section];
  v11 = [(PXAssetsSectionLayout *)self dataSource];
  -[PXAssetsSectionLayout setIsLastSection:](self, "setIsLastSection:", v10 == [v11 numberOfSections] - 1);
}

- (void)_invalidateContent
{
  [(PXAssetsSectionLayout *)self invalidateVersion];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 6;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 6) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXAssetsSectionLayout.m" lineNumber:567 description:{@"invalidating %lu after it already has been updated", 6}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 6;
  if (!willPerformUpdate)
  {

    [(PXAssetsSectionLayout *)self setNeedsUpdate];
  }
}

- (void)_updateFooter
{
  if ([(PXAssetsSectionLayout *)self automaticallyUpdatesPadding])
  {
    v3 = *MEMORY[0x277D3CF90];
    v4 = *(MEMORY[0x277D3CF90] + 8);
    v6 = *(MEMORY[0x277D3CF90] + 16);
    v5 = *(MEMORY[0x277D3CF90] + 24);
    if (![(PXAssetsSectionLayout *)self isLastSection])
    {
      [(PXAssetsSectionLayout *)self intersectionSpacing];
      v6 = v6 + v7;
    }

    [(PXGSplitLayout *)self setPadding:v3, v4, v6, v5];
  }
}

- (void)_invalidateFooter
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout _invalidateFooter]"];
      [v6 handleFailureInFunction:v7 file:@"PXAssetsSectionLayout.m" lineNumber:550 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXAssetsSectionLayout *)self setNeedsUpdate];
  }
}

- (void)_updateConfigurator
{
  v7 = [(PXAssetsSectionLayout *)self spec];
  v3 = [(PXAssetsSectionLayout *)self zoomLevel];
  if ([(PXAssetsSectionLayout *)self disableConfigurators])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PXAssetsSectionLayout *)self assetCollectionReference];
    v6 = [v5 assetCollection];
    v4 = [v7 sectionConfiguratorForAssetCollection:v6 inZoomLevel:v3];
  }

  [(PXAssetsSectionLayout *)self setConfigurator:v4];
  -[PXAssetsSectionLayout setAllowsPositionDependentHeaderContentOpacity:](self, "setAllowsPositionDependentHeaderContentOpacity:", [v7 allowsPositionDependentHeaderContentOpacityInZoomLevel:v3]);
}

- (void)_invalidateConfigurator
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout _invalidateConfigurator]"];
      [v6 handleFailureInFunction:v7 file:@"PXAssetsSectionLayout.m" lineNumber:535 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXAssetsSectionLayout *)self setNeedsUpdate];
  }
}

- (void)setRemovesContentLayoutWhenEmpty:(BOOL)a3
{
  if (self->_removesContentLayoutWhenEmpty != a3)
  {
    self->_removesContentLayoutWhenEmpty = a3;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setRemovesHeaderLayoutWhenEmpty:(BOOL)a3
{
  if (self->_removesHeaderLayoutWhenEmpty != a3)
  {
    self->_removesHeaderLayoutWhenEmpty = a3;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setBodyContentLayout:(id)a3 wantsDecoration:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_bodyContentLayout != v7)
  {
    v13 = v7;
    objc_storeStrong(&self->_bodyContentLayout, a3);
    if (v4 && self->_bodyContentLayout)
    {
      v8 = [objc_alloc(MEMORY[0x277D73C70]) initWithDecoratedLayout:v13];
      v9 = [(PXAssetsSectionLayout *)self assetDecorationSource];
      [v8 setDecorationSource:v9];

      v10 = [(PXAssetsSectionLayout *)self assetDecorationSource];
      [v8 setContentSource:v10];

      v11 = [(PXAssetsSectionLayout *)self assetDecorationSource];
      [v11 setDecoratedLayout:v13];

      [(PXAssetsSectionLayout *)self setBodyContainerLayout:v8];
      v12 = [(PXAssetsSectionLayout *)self bodyContainerLayout];
      [(PXGSplitLayout *)self setSecondSublayout:v12];
    }

    else
    {
      [(PXAssetsSectionLayout *)self setBodyContainerLayout:0];
      [(PXGSplitLayout *)self setSecondSublayout:self->_bodyContentLayout];
    }

    v7 = v13;
  }
}

- (void)setDecorationDataSource:(id)a3
{
  v5 = a3;
  if (self->_decorationDataSource != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_decorationDataSource, a3);
    v6 = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [v6 setDecorationDataSource:v7];

    v5 = v7;
  }
}

- (void)setHeaderLayout:(id)a3
{
  v5 = a3;
  if (self->_headerLayout != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_headerLayout, a3);
    if ([(PXAssetsSectionLayout *)self numberOfAssets])
    {
      [(PXGSplitLayout *)self setFirstSublayout:v6];
    }
  }

  MEMORY[0x2821F9730]();
}

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = PXAssetsSectionLayout;
  v3 = [(PXAssetsSectionLayout *)&v13 description];
  v4 = [(PXAssetsSectionLayout *)self zoomLevel];
  if (v4 > 4)
  {
    v5 = @"???";
  }

  else
  {
    v5 = off_2782978B8[v4];
  }

  v6 = v5;
  v7 = [(PXAssetsSectionLayout *)self section];
  v8 = [(PXAssetsSectionLayout *)self dataSource];
  v9 = [v8 identifier];
  v10 = [(PXAssetsSectionLayout *)self assetCollection];
  v11 = [v3 px_stringByAppendingDescriptionDetailsWithFormat:@", zoomLevel=%@, section=%lu, dataSourceIdentifier=%li assetCollection={%@}", v6, v7, v9, v10];

  return v11;
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXAssetsSectionLayout;
  [(PXGSplitLayout *)&v3 visibleRectDidChange];
  [(PXAssetsSectionLayout *)self _invalidateVisibleRectOvershootFactor];
}

- (id)layoutForItemChanges
{
  v2 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  v3 = [v2 layoutForItemChanges];

  return v3;
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXAssetsSectionLayout.m" lineNumber:430 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXAssetsSectionLayout *)self _updateConfigurator];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
        [v15 handleFailureInFunction:v16 file:@"PXAssetsSectionLayout.m" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXAssetsSectionLayout *)self _updateContent];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [v17 handleFailureInFunction:v18 file:@"PXAssetsSectionLayout.m" lineNumber:437 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXAssetsSectionLayout *)self _updateLocalSprites];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [v19 handleFailureInFunction:v20 file:@"PXAssetsSectionLayout.m" lineNumber:440 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXAssetsSectionLayout *)self _updateFooter];
    }

    [(PXAssetsSectionLayout *)self sectionIndexPath];
    v8 = v31;
    *&self->_presentedSectionIndexPath.dataSourceIdentifier = v30;
    *&self->_presentedSectionIndexPath.item = v8;
    v9 = [(PXAssetsSectionLayout *)self showsSkimmingInteraction]|| [(PXAssetsSectionLayout *)self showsSkimmingSlideshow];
    self->_presentedSkimming = v9;
    p_updateFlags->isPerformingUpdate = 0;
    if (p_updateFlags->needsUpdate)
    {
      v21 = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [v21 handleFailureInFunction:v22 file:@"PXAssetsSectionLayout.m" lineNumber:445 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v29.receiver = self;
  v29.super_class = PXAssetsSectionLayout;
  [(PXGSplitLayout *)&v29 update];
  [(PXAssetsSectionLayout *)self _updateDistanceProperties];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v11 = self->_postUpdateFlags.needsUpdate;
  if (v11)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [v23 handleFailureInFunction:v24 file:@"PXAssetsSectionLayout.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v11 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 1024;
    if ((v11 & 0x400) != 0)
    {
      p_postUpdateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFBFFLL;
      [(PXAssetsSectionLayout *)self _updateSectionHeaderProperties];
      if (!self->_postUpdateFlags.isPerformingUpdate)
      {
        v25 = [MEMORY[0x277CCA890] currentHandler];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
        [v25 handleFailureInFunction:v26 file:@"PXAssetsSectionLayout.m" lineNumber:456 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
      }
    }

    v12 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x10uLL;
    if ((v12 & 0x10) != 0)
    {
      p_postUpdateFlags->needsUpdate = v12 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXAssetsSectionLayout *)self _updateVisibleRectOvershootFactor];
      v12 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v12)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [v27 handleFailureInFunction:v28 file:@"PXAssetsSectionLayout.m" lineNumber:459 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (void)setWantsDecorationSpritesHostedInDecoratedSprite:(BOOL)a3
{
  if (self->_wantsDecorationSpritesHostedInDecoratedSprite != a3)
  {
    v4 = a3;
    self->_wantsDecorationSpritesHostedInDecoratedSprite = a3;
    v6 = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [v6 setWantsDecorationSpritesHostedInDecoratedSprite:v4];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setPreferredCornerRadius:(id)a3
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(self->_preferredCornerRadius, v7))) & 1) == 0)
  {
    self->_preferredCornerRadius.var0.var0.topLeft = v3;
    self->_preferredCornerRadius.var0.var0.topRight = v4;
    self->_preferredCornerRadius.var0.var0.bottomLeft = v5;
    self->_preferredCornerRadius.var0.var0.bottomRight = v6;
    [(PXAssetsSectionLayout *)self _invalidateContent:*&a3.var0.var0.var0];
  }
}

- (void)setFaceModeEnabled:(BOOL)a3
{
  if (self->_faceModeEnabled != a3)
  {
    self->_faceModeEnabled = a3;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setIsLastSection:(BOOL)a3
{
  if (self->_isLastSection != a3)
  {
    self->_isLastSection = a3;
    [(PXAssetsSectionLayout *)self _invalidateFooter];
  }
}

- (void)setIntersectionSpacing:(double)a3
{
  if (self->_intersectionSpacing == a3)
  {
    return;
  }

  self->_intersectionSpacing = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (!needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 4;
      if (!willPerformUpdate)
      {
        [(PXAssetsSectionLayout *)self setNeedsUpdate];
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_6:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setIntersectionSpacing:]"];
      [v7 handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:392 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }
  }

  p_updateFlags->needsUpdate = needsUpdate | 4;
LABEL_8:

  [(PXAssetsSectionLayout *)self _invalidateFooter];
}

- (void)setAutomaticallyUpdatesPadding:(BOOL)a3
{
  if (self->_automaticallyUpdatesPadding != a3)
  {
    self->_automaticallyUpdatesPadding = a3;
    [(PXAssetsSectionLayout *)self _invalidateFooter];
  }
}

- (void)setWantsAssetIndexBadge:(BOOL)a3
{
  if (self->_wantsAssetIndexBadge != a3)
  {
    v4 = a3;
    self->_wantsAssetIndexBadge = a3;
    v6 = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [v6 setWantsAssetIndexBadge:v4];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setWantsFileSizeBadge:(BOOL)a3
{
  if (self->_wantsFileSizeBadge != a3)
  {
    v4 = a3;
    self->_wantsFileSizeBadge = a3;
    v6 = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [v6 setWantsFileSizeBadge:v4];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setWantsNumberedSelectionStyle:(BOOL)a3
{
  if (self->_wantsNumberedSelectionStyle != a3)
  {
    v4 = a3;
    self->_wantsNumberedSelectionStyle = a3;
    v6 = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [v6 setWantsNumberedSelectionStyle:v4];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setWantsDimmedSelectionStyle:(BOOL)a3
{
  if (self->_wantsDimmedSelectionStyle != a3)
  {
    v4 = a3;
    self->_wantsDimmedSelectionStyle = a3;
    v6 = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [v6 setWantsDimmedSelectionStyle:v4];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setItemCaptionsVisible:(BOOL)a3
{
  if (self->_itemCaptionsVisible != a3)
  {
    self->_itemCaptionsVisible = a3;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setAllowsPositionDependentHeaderContentOpacity:(BOOL)a3
{
  if (self->_allowsPositionDependentHeaderContentOpacity != a3)
  {
    self->_allowsPositionDependentHeaderContentOpacity = a3;
    if (self->_postUpdateFlags.isPerformingUpdate && (self->_postUpdateFlags.updated & 0x400) != 0)
    {
      v3 = [MEMORY[0x277CCA890] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setAllowsPositionDependentHeaderContentOpacity:]"];
      [v3 handleFailureInFunction:v4 file:@"PXAssetsSectionLayout.m" lineNumber:332 description:{@"invalidating %lu after it already has been updated", 1024}];

      abort();
    }

    self->_postUpdateFlags.needsUpdate |= 0x400uLL;
  }
}

- (void)setDistanceBetweenHeaderTopAndNextBodyTop:(double)a3
{
  if (self->_distanceBetweenHeaderTopAndNextBodyTop != a3)
  {
    self->_distanceBetweenHeaderTopAndNextBodyTop = a3;
    if ([(PXAssetsSectionLayout *)self allowsPositionDependentHeaderContentOpacity])
    {
      if (self->_postUpdateFlags.isPerformingUpdate && (self->_postUpdateFlags.updated & 0x400) != 0)
      {
        v4 = [MEMORY[0x277CCA890] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setDistanceBetweenHeaderTopAndNextBodyTop:]"];
        [v4 handleFailureInFunction:v5 file:@"PXAssetsSectionLayout.m" lineNumber:323 description:{@"invalidating %lu after it already has been updated", 1024}];

        abort();
      }

      self->_postUpdateFlags.needsUpdate |= 0x400uLL;
    }
  }
}

- (void)setDistanceBetweenTitleTopAndBodyBottom:(double)a3
{
  if (self->_distanceBetweenTitleTopAndBodyBottom != a3)
  {
    self->_distanceBetweenTitleTopAndBodyBottom = a3;
    if ([(PXAssetsSectionLayout *)self allowsPositionDependentHeaderContentOpacity])
    {
      if (self->_postUpdateFlags.isPerformingUpdate && (self->_postUpdateFlags.updated & 0x400) != 0)
      {
        v4 = [MEMORY[0x277CCA890] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setDistanceBetweenTitleTopAndBodyBottom:]"];
        [v4 handleFailureInFunction:v5 file:@"PXAssetsSectionLayout.m" lineNumber:312 description:{@"invalidating %lu after it already has been updated", 1024}];

        abort();
      }

      self->_postUpdateFlags.needsUpdate |= 0x400uLL;
    }
  }
}

- (void)_callAddContentActionHandler
{
  v3 = [(PXAssetsSectionLayout *)self addContentActionHandler];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, self);
  }

  else
  {
    v5 = PXGridZeroGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ABF3000, v5, OS_LOG_TYPE_ERROR, "Missing add content handler for add button press", v6, 2u);
    }
  }
}

- (void)setAddContentActionHandler:(id)a3
{
  if (self->_addContentActionHandler != a3)
  {
    v4 = [a3 copy];
    addContentActionHandler = self->_addContentActionHandler;
    self->_addContentActionHandler = v4;

    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setWantsShadow:(BOOL)a3
{
  if (self->_wantsShadow != a3)
  {
    self->_wantsShadow = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 4;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 4) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setWantsShadow:]"];
        [v7 handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:284 description:{@"invalidating %lu after it already has been updated", 4}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 4;
    if (!willPerformUpdate)
    {

      [(PXAssetsSectionLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setCurrentSkimmingIndex:(int64_t)a3
{
  if (self->_currentSkimmingIndex != a3)
  {
    self->_currentSkimmingIndex = a3;
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
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setCurrentSkimmingIndex:]"];
        [v7 handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:276 description:{@"invalidating %lu after it already has been updated", 2}];

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

      [(PXAssetsSectionLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setMaxSkimmingIndex:(int64_t)a3
{
  if (self->_maxSkimmingIndex != a3)
  {
    self->_maxSkimmingIndex = a3;
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
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setMaxSkimmingIndex:]"];
        [v7 handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:267 description:{@"invalidating %lu after it already has been updated", 2}];

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

      [(PXAssetsSectionLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setSkimmingIndexPaths:(id)a3
{
  v5 = a3;
  if (self->_skimmingIndexPaths != v5 && ([(PXIndexPathSet *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_skimmingIndexPaths, a3);
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_8:
        p_updateFlags->needsUpdate = needsUpdate | 2;
        goto LABEL_9;
      }

LABEL_7:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        v9 = [MEMORY[0x277CCA890] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setSkimmingIndexPaths:]"];
        [v9 handleFailureInFunction:v10 file:@"PXAssetsSectionLayout.m" lineNumber:258 description:{@"invalidating %lu after it already has been updated", 2}];

        abort();
      }

      goto LABEL_8;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_7;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 2;
    if (!willPerformUpdate)
    {
      [(PXAssetsSectionLayout *)self setNeedsUpdate];
    }
  }

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (void)setIsSkimming:(BOOL)a3
{
  if (self->_isSkimming != a3)
  {
    self->_isSkimming = a3;
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
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setIsSkimming:]"];
        [v7 handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:250 description:{@"invalidating %lu after it already has been updated", 2}];

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

      [(PXAssetsSectionLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setCanStartSelecting:(BOOL)a3
{
  if (self->_canStartSelecting != a3)
  {
    self->_canStartSelecting = a3;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setIsSelecting:(BOOL)a3
{
  if (self->_isSelecting != a3)
  {
    self->_isSelecting = a3;
    [(PXPhotosGridAssetDecorationSource *)self->_assetDecorationSource setIsInSelectMode:?];
    [(PXAssetsSectionLayout *)self _invalidateContent];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setShowsSkimmingInteraction:(BOOL)a3
{
  if (self->_showsSkimmingInteraction != a3)
  {
    self->_showsSkimmingInteraction = a3;
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
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setShowsSkimmingInteraction:]"];
        [v7 handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:222 description:{@"invalidating %lu after it already has been updated", 2}];

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

      [(PXAssetsSectionLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setShowsSkimmingSlideshow:(BOOL)a3
{
  if (self->_showsSkimmingSlideshow != a3)
  {
    self->_showsSkimmingSlideshow = a3;
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
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setShowsSkimmingSlideshow:]"];
        [v7 handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:213 description:{@"invalidating %lu after it already has been updated", 2}];

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

      [(PXAssetsSectionLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setNumberOfPrecedingAssets:(int64_t)a3
{
  if (self->_numberOfPrecedingAssets != a3)
  {
    self->_numberOfPrecedingAssets = a3;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setConfigurator:(id)a3
{
  v5 = a3;
  if (self->_configurator != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_configurator, a3);
    [(PXAssetsSectionLayout *)self _invalidateContent];
    v5 = v6;
  }
}

- (void)setDisableConfigurators:(BOOL)a3
{
  if (self->_disableConfigurators != a3)
  {
    self->_disableConfigurators = a3;
    [(PXAssetsSectionLayout *)self _invalidateConfigurator];
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXAssetsSectionLayout *)self _invalidateConfigurator];
    [(PXAssetsSectionLayout *)self _invalidateFooter];
    v5 = v6;
  }
}

- (void)setDropTargetAssetReference:(id)a3
{
  v8 = a3;
  v5 = self->_dropTargetAssetReference;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXAssetReference *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dropTargetAssetReference, a3);
      [(PXAssetsSectionLayout *)self _invalidateContent];
    }
  }
}

- (void)setDraggedAssetReferences:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsSectionLayout *)self assetDecorationSource];
  [v5 setDraggedAssetReferences:v4];
}

- (NSSet)draggedAssetReferences
{
  v2 = [(PXAssetsSectionLayout *)self assetDecorationSource];
  v3 = [v2 draggedAssetReferences];

  return v3;
}

- (void)setSelectionSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsSectionLayout *)self assetDecorationSource];
  [v5 setSelectionSnapshot:v4];

  [(PXAssetsSectionLayout *)self _invalidateContent];

  [(PXAssetsSectionLayout *)self invalidateDecoration];
}

- (PXSelectionSnapshot)selectionSnapshot
{
  v2 = [(PXAssetsSectionLayout *)self assetDecorationSource];
  v3 = [v2 selectionSnapshot];

  return v3;
}

- (void)setDataSource:(id)a3 section:(int64_t)a4
{
  v8 = a3;
  if (self->_section != a4 || self->_dataSource != v8)
  {
    self->_section = a4;
    v12 = v8;
    objc_storeStrong(&self->_dataSource, a3);
    if ([(PXAssetsDataSource *)v12 numberOfSections]<= a4)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"section < dataSource.numberOfSections"}];
    }

    self->_cachedClampedItemRange = xmmword_21AC7D580;
    cachedClampedFetchResult = self->_cachedClampedFetchResult;
    self->_cachedClampedFetchResult = 0;

    v10 = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [v10 setDataSource:v12 section:a4];

    [(PXAssetsSectionLayout *)self _invalidateContent];
    [(PXAssetsSectionLayout *)self _invalidateFooter];
    v8 = v12;
  }
}

- (void)setZoomLevel:(int64_t)a3
{
  if (self->_zoomLevel != a3)
  {
    self->_zoomLevel = a3;
    [(PXAssetsSectionLayout *)self _invalidateConfigurator];

    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (PXAssetsSectionLayout)initWithSection:(int64_t)a3 dataSource:(id)a4 loadingStatusManager:(id)a5 assetImportStatusManager:(id)a6 inlinePlaybackController:(id)a7 zoomLevel:(int64_t)a8 spec:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v26.receiver = self;
  v26.super_class = PXAssetsSectionLayout;
  v20 = [(PXAssetsSectionLayout *)&v26 init];
  v21 = v20;
  if (v20)
  {
    v20->_sectionBoundariesSpriteIndex = -1;
    v20->_sectionShadowSpriteIndex = -1;
    v20->_blurSpriteIndex = -1;
    objc_storeStrong(&v20->_loadingStatusManager, a5);
    v22 = objc_alloc_init(PXPhotosGridAssetDecorationSource);
    assetDecorationSource = v21->_assetDecorationSource;
    v21->_assetDecorationSource = v22;

    [(PXPhotosGridAssetDecorationSource *)v21->_assetDecorationSource setLoadingStatusManager:v21->_loadingStatusManager];
    [(PXPhotosGridAssetDecorationSource *)v21->_assetDecorationSource setAssetImportStatusManager:v17];
    [(PXAssetsSectionLayout *)v21 setDataSource:v15 section:a3];
    [(PXAssetsSectionLayout *)v21 setZoomLevel:a8];
    [(PXAssetsSectionLayout *)v21 setSpec:v19];
    [(PXGSplitLayout *)v21 setMode:0];
    [(PXAssetsSectionLayout *)v21 setContentSource:v21];
    v24 = [(PXAssetsSectionLayout *)v21 axGroup];
    [v24 setAxRole:1];

    objc_storeStrong(&v21->_inlinePlaybackController, a7);
    v21->_removesHeaderLayoutWhenEmpty = 1;
    v21->_removesContentLayoutWhenEmpty = 1;
  }

  return v21;
}

- (PXAssetsSectionLayout)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:74 description:{@"%s is not available as initializer", "-[PXAssetsSectionLayout init]"}];

  abort();
}

+ (CGSize)estimatedSizeWithReferenceSize:(CGSize)a3 assetCollection:(id)a4 numberOfAssets:(int64_t)a5 isCurated:(BOOL)a6 zoomLevel:(int64_t)a7 spec:(id)a8
{
  width = a3.width;
  if ((a7 - 3) > 1)
  {
    v18 = 0.0;
  }

  else
  {
    v11 = a6;
    height = a3.height;
    v14 = a4;
    v15 = [a8 sectionConfiguratorForAssetCollection:v14 inZoomLevel:a7];
    [v15 estimatedSizeOfSectionForAssetCollection:v14 isCurated:v11 numberOfAssets:a5 referenceSize:{width, height}];
    width = v16;
    v18 = v17;
  }

  v19 = width;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)px_modifyAssetsSectionLayoutGeometry:(id)a3
{
  v6 = 0;
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  v3[0] = 0;
  v3[1] = 0;
  (*(a3 + 2))(a3, 0x7FFFFFFFFFFFFFFFLL, v4, v3, &v6);
}

@end