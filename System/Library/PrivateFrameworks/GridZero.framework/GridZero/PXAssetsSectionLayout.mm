@interface PXAssetsSectionLayout
+ (CGSize)estimatedSizeWithReferenceSize:(CGSize)size assetCollection:(id)collection numberOfAssets:(int64_t)assets isCurated:(BOOL)curated zoomLevel:(int64_t)level spec:(id)spec;
- ($B01073AA55A67B413588F7AD9EFB6822)itemsLayout:(id)layout cornerRadiusForItem:(int64_t)item;
- ($B01073AA55A67B413588F7AD9EFB6822)preferredCornerRadius;
- (BOOL)_shouldAnchorOnAssetCollection;
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (BOOL)isCurated;
- (CGRect)generatedLayout:(id)layout bestCropRectForInputItemAtIndex:(unsigned int)index withAspectRatio:(double)ratio;
- (CGRect)itemsLayout:(id)layout bestCropRectForItem:(int64_t)item withAspectRatio:(double)ratio;
- (CGSize)itemsLayout:(id)layout insetForItem:(int64_t)item;
- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)style;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (NSSet)draggedAssetReferences;
- (NSString)description;
- (PXAssetCollectionReference)assetCollectionReference;
- (PXAssetsSectionLayout)init;
- (PXAssetsSectionLayout)initWithSection:(int64_t)section dataSource:(id)source loadingStatusManager:(id)manager assetImportStatusManager:(id)statusManager inlinePlaybackController:(id)controller zoomLevel:(int64_t)level spec:(id)spec;
- (PXAssetsSectionLayoutDelegate)delegate;
- (PXDisplayAssetCollection)assetCollection;
- (PXDisplayAssetFetchResult)keyAssetsFetchResult;
- (PXGBurstStackEffect)burstStackEffect;
- (PXGItemsGeometry)bodyItemsGeometry;
- (PXSelectionSnapshot)selectionSnapshot;
- (PXSimpleIndexPath)_dataSourceIndexPathForObjectReference:(SEL)reference options:(id)options updatedObjectReference:(unint64_t)objectReference;
- (PXSimpleIndexPath)presentedSectionIndexPath;
- (PXSimpleIndexPath)sectionIndexPath;
- (double)buildingRowContentHeight;
- (double)buildingRowSpacing;
- (double)cornerRadiusForShadowSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (double)itemsLayout:(id)layout aspectRatioForItem:(int64_t)item;
- (id)_assetReferenceClosestVisuallyToAssetReference:(id)reference;
- (id)_displayAssetForBodyItem:(int64_t)item;
- (id)_displayFaceForBodyItem:(int64_t)item;
- (id)_objectReferenceForSpriteIndex:(unsigned int)index itemsLayout:(id)layout;
- (id)_rowBasedBodyContentLayout;
- (id)axLocalizedLabel;
- (id)axSpriteIndexes;
- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout;
- (id)generatedLayout:(id)layout objectReferenceAtIndex:(unsigned int)index;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)itemsLayout:(id)layout objectReferenceForItem:(int64_t)item;
- (id)layoutForItemChanges;
- (id)locationNamesFutureForContentInRect:(CGRect)rect;
- (id)objectReferenceForSpriteIndex:(unsigned int)index;
- (id)shadowForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (int64_t)itemsLayout:(id)layout itemForObjectReference:(id)reference options:(unint64_t)options;
- (int64_t)keyItemIndex;
- (int64_t)numberOfAssets;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (unint64_t)supportedDisplayAssetPresentationStylesInLayout:(id)layout;
- (unsigned)itemsLayout:(id)layout effectIdForItem:(int64_t)item;
- (unsigned)spriteIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
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
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)contentSizeDidChange;
- (void)displayScaleDidChange;
- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateRowsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)block;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)block;
- (void)itemsLayout:(id)layout updateTagsInSpriteInfos:(id *)infos forItemsInRange:(_NSRange)range;
- (void)px_modifyAssetsSectionLayoutGeometry:(id)geometry;
- (void)safeAreaInsetsDidChange;
- (void)setAddContentActionHandler:(id)handler;
- (void)setAllowsPositionDependentHeaderContentOpacity:(BOOL)opacity;
- (void)setAutomaticallyUpdatesPadding:(BOOL)padding;
- (void)setBlurIntensity:(double)intensity;
- (void)setBodyContentLayout:(id)layout wantsDecoration:(BOOL)decoration;
- (void)setCanStartSelecting:(BOOL)selecting;
- (void)setConfigurator:(id)configurator;
- (void)setCurrentSkimmingIndex:(int64_t)index;
- (void)setDataSource:(id)source section:(int64_t)section;
- (void)setDecorationDataSource:(id)source;
- (void)setDisableConfigurators:(BOOL)configurators;
- (void)setDistanceBetweenHeaderTopAndNextBodyTop:(double)top;
- (void)setDistanceBetweenTitleTopAndBodyBottom:(double)bottom;
- (void)setDraggedAssetReferences:(id)references;
- (void)setDropTargetAssetReference:(id)reference;
- (void)setEffectiveBlurIntensity:(double)intensity;
- (void)setFaceModeEnabled:(BOOL)enabled;
- (void)setHeaderLayout:(id)layout;
- (void)setIntersectionSpacing:(double)spacing;
- (void)setIsLastSection:(BOOL)section;
- (void)setIsSelecting:(BOOL)selecting;
- (void)setIsSkimming:(BOOL)skimming;
- (void)setItemCaptionsVisible:(BOOL)visible;
- (void)setMaxSkimmingIndex:(int64_t)index;
- (void)setNumberOfPrecedingAssets:(int64_t)assets;
- (void)setPreferredCornerRadius:(id)radius;
- (void)setRemovesContentLayoutWhenEmpty:(BOOL)empty;
- (void)setRemovesHeaderLayoutWhenEmpty:(BOOL)empty;
- (void)setSelectionSnapshot:(id)snapshot;
- (void)setShowsSkimmingInteraction:(BOOL)interaction;
- (void)setShowsSkimmingSlideshow:(BOOL)slideshow;
- (void)setSkimmingIndexPaths:(id)paths;
- (void)setSpec:(id)spec;
- (void)setVisibleRectOvershootFactor:(double)factor;
- (void)setWantsAssetIndexBadge:(BOOL)badge;
- (void)setWantsDecorationSpritesHostedInDecoratedSprite:(BOOL)sprite;
- (void)setWantsDimmedSelectionStyle:(BOOL)style;
- (void)setWantsFileSizeBadge:(BOOL)badge;
- (void)setWantsNumberedSelectionStyle:(BOOL)style;
- (void)setWantsShadow:(BOOL)shadow;
- (void)setZoomLevel:(int64_t)level;
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

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  assetCollectionReference = [(PXAssetsSectionLayout *)self assetCollectionReference];
  if (assetCollectionReference)
  {
    PXGAXAddAssetCollectionReferenceUserInfo();
  }

  v13.receiver = self;
  v13.super_class = PXAssetsSectionLayout;
  v11 = [(PXAssetsSectionLayout *)&v13 axGroup:groupCopy didRequestToPerformAction:action userInfo:infoCopy];

  return v11;
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  if ((change & 6) != 0)
  {
    memset(&v11[1], 0, 32);
    [(PXAssetsSectionLayout *)self sectionIndexPath];
    PXGAXAddSimpleIndexPathGroupChangeUserInfo();
    bodyItemsGeometry = [(PXAssetsSectionLayout *)self bodyItemsGeometry];
    PXGAXAddItemGeometryGroupChangeUserInfo();
  }

  v11[0].receiver = self;
  v11[0].super_class = PXAssetsSectionLayout;
  [(objc_super *)v11 axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA78]);

  return v2;
}

- (id)axLocalizedLabel
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  axLocalizedBaseLabel = [(PXAssetsSectionLayout *)self axLocalizedBaseLabel];
  if (axLocalizedBaseLabel)
  {
    [v3 addObject:axLocalizedBaseLabel];
  }

  assetCollection = [(PXAssetsSectionLayout *)self assetCollection];
  localizedTitle = [assetCollection localizedTitle];
  if (localizedTitle)
  {
    [v3 addObject:localizedTitle];
  }

  localizedSubtitle = [assetCollection localizedSubtitle];
  if (localizedSubtitle)
  {
    [v3 addObject:localizedSubtitle];
  }

  v8 = [v3 componentsJoinedByString:@" "];
  v9 = [v8 mutableCopy];

  [v9 replaceOccurrencesOfString:@"" withString:&stru_282C2F4D0 options:0 range:{0, objc_msgSend(v9, "length")}];

  return v9;
}

- (CGRect)generatedLayout:(id)layout bestCropRectForInputItemAtIndex:(unsigned int)index withAspectRatio:(double)ratio
{
  indexCopy = index;
  v7 = [(PXAssetsSectionLayout *)self _displayAssetForBodyItem:index];
  v8 = *MEMORY[0x277CBF398];
  v9 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v11 = *(MEMORY[0x277CBF398] + 24);
  if ([(PXAssetsSectionLayout *)self isFaceModeEnabled])
  {
    v12 = [(PXAssetsSectionLayout *)self _displayFaceForBodyItem:indexCopy];
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

- (id)generatedLayout:(id)layout objectReferenceAtIndex:(unsigned int)index
{
  v4 = *&index;
  layoutCopy = layout;
  bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];

  if (bodyContentLayout == layoutCopy)
  {
    v8 = [(PXAssetsSectionLayout *)self _objectReferenceForSpriteIndex:v4 itemsLayout:layoutCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)itemsLayout:(id)layout objectReferenceForItem:(int64_t)item
{
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  v9[0] = [dataSource identifier];
  v9[1] = [(PXAssetsSectionLayout *)self section];
  v9[2] = item;
  v9[3] = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [dataSource objectReferenceAtIndexPath:v9];

  return v7;
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
LABEL_9:
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_22;
    }

    keyAssetReference = [referenceCopy keyAssetReference];
  }

  v9 = keyAssetReference;
  if (!keyAssetReference)
  {
    goto LABEL_9;
  }

  if ((optionsCopy & 1) == 0)
  {
LABEL_11:
    v11 = v9;
    goto LABEL_12;
  }

  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  v11 = [dataSource objectReferenceNearestToObjectReference:v9 inSection:{-[PXAssetsSectionLayout section](self, "section")}];

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
  dataSource2 = [(PXAssetsSectionLayout *)self dataSource];
  v14 = dataSource2;
  if (dataSource2)
  {
    [dataSource2 indexPathForAssetReference:v11];
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

- (void)itemsLayout:(id)layout updateTagsInSpriteInfos:(id *)infos forItemsInRange:(_NSRange)range
{
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  [dataSource identifier];
  [(PXAssetsSectionLayout *)self section];
  PXUpdateSectionedSpriteInfoTagsForItemsInRange();
}

- (unsigned)itemsLayout:(id)layout effectIdForItem:(int64_t)item
{
  if ([(PXAssetsSectionLayout *)self zoomLevel]!= 4)
  {
    return 0;
  }

  v6 = [(PXAssetsSectionLayout *)self _displayAssetForBodyItem:item];
  representsBurst = [v6 representsBurst];

  if (!representsBurst)
  {
    return 0;
  }

  burstStackEffect = [(PXAssetsSectionLayout *)self burstStackEffect];
  effectId = [burstStackEffect effectId];

  return effectId;
}

- ($B01073AA55A67B413588F7AD9EFB6822)itemsLayout:(id)layout cornerRadiusForItem:(int64_t)item
{
  v4 = [(PXAssetsSectionLayout *)self spec:layout];
  [v4 itemCornerRadius];

  *&result.var0.var1[2] = v6;
  *&result.var0.var0.var0 = v5;
  return result;
}

- (CGSize)itemsLayout:(id)layout insetForItem:(int64_t)item
{
  assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
  [assetDecorationSource expectedInsetsForItem:item];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)itemsLayout:(id)layout bestCropRectForItem:(int64_t)item withAspectRatio:(double)ratio
{
  v7 = [(PXAssetsSectionLayout *)self _displayAssetForBodyItem:item];
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
      v12 = [(PXAssetsSectionLayout *)self _displayFaceForBodyItem:item];
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

- (double)itemsLayout:(id)layout aspectRatioForItem:(int64_t)item
{
  v4 = [(PXAssetsSectionLayout *)self _displayAssetForBodyItem:item];
  [v4 aspectRatio];
  v6 = v5;

  return v6;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy == self)
  {
    if (self->_blurSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1560 description:@"Code which should be unreachable has been reached"];

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

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy == self && self->_blurSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1544 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = objc_opt_class();

  return v8;
}

- (double)cornerRadiusForShadowSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_sectionShadowSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1533 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  spec = [(PXAssetsSectionLayout *)self spec];
  if (!spec)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1530 description:@"A valid spec object should be available to retrieve the shadow corner radius."];
  }

  [spec shadowCornerRadius];
  v11 = v10;

  return v11;
}

- (id)shadowForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_sectionShadowSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1523 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  spec = [(PXAssetsSectionLayout *)self spec];
  if (!spec)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1520 description:@"A valid spec object should be available to retrieve the shadow."];
  }

  shadow = [spec shadow];

  return shadow;
}

- (id)_displayFaceForBodyItem:(int64_t)item
{
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  v8[0] = [dataSource identifier];
  v8[1] = [(PXAssetsSectionLayout *)self section];
  v8[2] = item;
  v8[3] = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [dataSource primaryFaceForAssetAtItemIndexPath:v8];

  return v6;
}

- (id)_displayAssetForBodyItem:(int64_t)item
{
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  v8[0] = [dataSource identifier];
  v8[1] = [(PXAssetsSectionLayout *)self section];
  v8[2] = item;
  v8[3] = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [dataSource assetAtItemIndexPath:v8];

  return v6;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout
{
  layoutCopy = layout;
  bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];

  if (bodyContentLayout != layoutCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1486 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1470 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v22, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1470 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v22}];
  }

LABEL_4:
  v9 = [v8 itemForSpriteIndex:0];
  numberOfItems = [v8 numberOfItems];
  if ([(PXAssetsSectionLayout *)self zoomLevel]== 1)
  {
    keyAssetsFetchResult = [(PXAssetsSectionLayout *)self keyAssetsFetchResult];
LABEL_13:
    v15 = keyAssetsFetchResult;
    goto LABEL_15;
  }

  v12 = numberOfItems - v9;
  if (self->_cachedClampedItemRange.location == v9 && self->_cachedClampedItemRange.length == v12)
  {
    cachedClampedFetchResult = self->_cachedClampedFetchResult;
    if (cachedClampedFetchResult)
    {
      keyAssetsFetchResult = cachedClampedFetchResult;
      goto LABEL_13;
    }
  }

  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  v26[0] = [dataSource identifier];
  v26[1] = [(PXAssetsSectionLayout *)self section];
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v27 = vnegq_f64(v17);
  v18 = [dataSource assetsInSectionIndexPath:v26];
  v15 = PXDisplayAssetFetchResultSubfetchResultWithRange();
  objc_storeStrong(&self->_cachedClampedFetchResult, v15);
  self->_cachedClampedItemRange.location = v9;
  self->_cachedClampedItemRange.length = v12;

LABEL_15:

  return v15;
}

- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)style
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  if (style == 16 || style == 2)
  {
    v6 = +[PXPhotosGridSettings sharedInstance];
    forcePlayback = [v6 forcePlayback];

    if ((forcePlayback & 1) == 0)
    {
      bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        bodyContentLayout2 = [(PXAssetsSectionLayout *)self bodyContentLayout];
        [bodyContentLayout2 minPlayableSpriteSize];
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

- (unint64_t)supportedDisplayAssetPresentationStylesInLayout:(id)layout
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout displayScaleDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXAssetsSectionLayout.m" lineNumber:1414 description:{@"invalidating %lu after it already has been updated", 4}];

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
  bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
  if ([bodyContentLayout conformsToProtocol:&unk_282C4C3A0])
  {
    v3 = bodyContentLayout;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)enumerateRowsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  _rowBasedBodyContentLayout = [(PXAssetsSectionLayout *)self _rowBasedBodyContentLayout];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__PXAssetsSectionLayout_enumerateRowsWithOptions_usingBlock___block_invoke;
  v10[3] = &unk_2782977A8;
  v10[4] = self;
  v11 = _rowBasedBodyContentLayout;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = _rowBasedBodyContentLayout;
  [v9 enumerateRowsWithOptions:options usingBlock:v10];
}

uint64_t __61__PXAssetsSectionLayout_enumerateRowsWithOptions_usingBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) convertRect:*(a1 + 40) fromDescendantLayout:?];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (double)buildingRowSpacing
{
  _rowBasedBodyContentLayout = [(PXAssetsSectionLayout *)self _rowBasedBodyContentLayout];
  v3 = _rowBasedBodyContentLayout;
  if (_rowBasedBodyContentLayout)
  {
    [_rowBasedBodyContentLayout buildingRowSpacing];
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
  _rowBasedBodyContentLayout = [(PXAssetsSectionLayout *)self _rowBasedBodyContentLayout];
  v3 = _rowBasedBodyContentLayout;
  if (_rowBasedBodyContentLayout)
  {
    [_rowBasedBodyContentLayout buildingRowContentHeight];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v54 = *MEMORY[0x277D85DE8];
  enumeratorCopy = enumerator;
  if ([(PXAssetsSectionLayout *)self zoomLevel]== 4)
  {
    bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
    v11 = bodyContentLayout;
    if (bodyContentLayout)
    {
      v12 = bodyContentLayout;
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
          [v13 enumerateAssetsInRect:enumeratorCopy enumerator:{v14, v15, v16, v17}];
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
              selfCopy2 = self;
              _os_log_impl(&dword_21ABF3000, v25, OS_LOG_TYPE_ERROR, "Failed to convert rect for layout: %{public}@, in: <%{public}@:%p>", buf, 0x20u);
            }
          }

          else
          {
            v35 = [v20 itemRangeForSpriteIndexRange:{objc_msgSend(v20, "spriteIndexRangeCoveringRect:", v21, v22, v23, v24)}];
            v37 = v36;
            section = [(PXAssetsSectionLayout *)self section];
            dataSource = [(PXAssetsSectionLayout *)self dataSource];
            identifier = [dataSource identifier];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __58__PXAssetsSectionLayout_enumerateAssetsInRect_enumerator___block_invoke;
            v48[3] = &unk_278299430;
            v49 = dataSource;
            v20 = v20;
            v50 = v20;
            v51 = enumeratorCopy;
            *buf = identifier;
            *&buf[8] = section;
            *&buf[16] = v35;
            selfCopy2 = 0x7FFFFFFFFFFFFFFFLL;
            v47[0] = identifier;
            v47[1] = section;
            v47[2] = v37 + v35 - 1;
            v47[3] = 0x7FFFFFFFFFFFFFFFLL;
            v25 = dataSource;
            [v25 enumerateItemIndexPathsStartingAtIndexPath:buf untilEndIndexPath:v47 usingBlock:v48];
          }
        }

        else
        {

          v26 = v19;
          if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v25 = v26;

            section2 = [(PXAssetsSectionLayout *)self section];
            dataSource2 = [(PXAssetsSectionLayout *)self dataSource];
            identifier2 = [dataSource2 identifier];
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
                selfCopy2 = self;
                _os_log_impl(&dword_21ABF3000, v34, OS_LOG_TYPE_ERROR, "Failed to convert rect for layout: %{public}@, in: <%{public}@:%p>", buf, 0x20u);
              }
            }

            else
            {
              v41[0] = MEMORY[0x277D85DD0];
              v41[1] = 3221225472;
              v41[2] = __58__PXAssetsSectionLayout_enumerateAssetsInRect_enumerator___block_invoke_93;
              v41[3] = &unk_278297780;
              v45 = identifier2;
              v46 = section2;
              v42 = dataSource2;
              v43 = v25;
              v44 = enumeratorCopy;
              [v43 enumerateItemsInRect:v41 usingBlock:v30, v31, v32, v33];

              v34 = v42;
            }
          }

          else
          {

            dataSource2 = PXGridZeroGetLog();
            if (os_log_type_enabled(dataSource2, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = objc_opt_class();
              _os_log_impl(&dword_21ABF3000, dataSource2, OS_LOG_TYPE_ERROR, "Unknown body layout: %{public}@", buf, 0xCu);
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

- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v23 = *MEMORY[0x277D85DE8];
  enumeratorCopy = enumerator;
  if ([(PXAssetsSectionLayout *)self zoomLevel]!= 4)
  {
    dataSource = [(PXAssetsSectionLayout *)self dataSource];
    *v22 = [(PXAssetsSectionLayout *)dataSource identifier];
    *&v22[8] = [(PXAssetsSectionLayout *)self section];
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    *&v22[16] = vnegq_f64(v18);
    v12 = [(PXAssetsSectionLayout *)dataSource assetCollectionAtSectionIndexPath:v22];
    [(PXAssetsSectionLayout *)self visibleRect];
    enumeratorCopy[2](enumeratorCopy, v12, self);
LABEL_14:

    goto LABEL_15;
  }

  bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
  if (bodyContentLayout)
  {
    dataSource = bodyContentLayout;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = dataSource;

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
        [(PXAssetsSectionLayout *)v12 enumerateAssetCollectionsInRect:enumeratorCopy enumerator:v13, v14, v15, v16];
      }

      dataSource = v12;
    }

    else
    {

      dataSource2 = [(PXAssetsSectionLayout *)self dataSource];
      *v22 = [dataSource2 identifier];
      *&v22[8] = [(PXAssetsSectionLayout *)self section];
      v20.f64[0] = NAN;
      v20.f64[1] = NAN;
      *&v22[16] = vnegq_f64(v20);
      v21 = [dataSource2 assetCollectionAtSectionIndexPath:v22];
      [(PXAssetsSectionLayout *)dataSource visibleRect];
      enumeratorCopy[2](enumeratorCopy, v21, dataSource);

      v12 = 0;
    }

    goto LABEL_14;
  }

  dataSource = 0;
LABEL_15:
}

- (id)locationNamesFutureForContentInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  section = [(PXAssetsSectionLayout *)self section];
  if (section >= [dataSource numberOfSections])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1219 description:{@"Invalid parameter not satisfying: %@", @"section < dataSource.numberOfSections"}];
  }

  if ([(PXAssetsSectionLayout *)self zoomLevel]!= 4)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __61__PXAssetsSectionLayout_locationNamesFutureForContentInRect___block_invoke_4;
    v23[3] = &unk_278299408;
    v24 = dataSource;
    v25 = section;
    v15 = [v23 copy];

    goto LABEL_15;
  }

  bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  bodyContentLayout2 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  v14 = bodyContentLayout2;
  if (isKindOfClass)
  {
    v15 = [bodyContentLayout2 locationNamesFutureForContentInRect:{x, y, width, height}];
LABEL_14:

    goto LABEL_15;
  }

  if (v14)
  {
    bodyContentLayout3 = [(PXAssetsSectionLayout *)self bodyContentLayout];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = bodyContentLayout3;

      if (v14)
      {
        [(PXAssetsSectionLayout *)self convertRect:v14 toDescendantLayout:x, y, width, height];
        v17 = [v14 itemRangeForSpriteIndexRange:{objc_msgSend(v14, "spriteIndexRangeCoveringRect:")}];
        v19 = v18;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __61__PXAssetsSectionLayout_locationNamesFutureForContentInRect___block_invoke;
        v26[3] = &unk_278297758;
        v27 = dataSource;
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

- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  section = [(PXAssetsSectionLayout *)self section];
  if (section >= [dataSource numberOfSections])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1163 description:{@"Invalid parameter not satisfying: %@", @"section < dataSource.numberOfSections"}];
  }

  if ([(PXAssetsSectionLayout *)self zoomLevel]!= 4)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __65__PXAssetsSectionLayout_dateIntervalFutureForContentInRect_type___block_invoke_3;
    v25[3] = &unk_278299390;
    v26 = dataSource;
    v27 = section;
    v17 = [v25 copy];

    goto LABEL_15;
  }

  bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  bodyContentLayout2 = [(PXAssetsSectionLayout *)self bodyContentLayout];
  v16 = bodyContentLayout2;
  if (isKindOfClass)
  {
    v17 = [bodyContentLayout2 dateIntervalFutureForContentInRect:type type:{x, y, width, height}];
LABEL_14:

    goto LABEL_15;
  }

  if (v16)
  {
    bodyContentLayout3 = [(PXAssetsSectionLayout *)self bodyContentLayout];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v16 = bodyContentLayout3;

      if (v16)
      {
        [(PXAssetsSectionLayout *)self convertRect:v16 toDescendantLayout:x, y, width, height];
        v19 = [v16 itemRangeForSpriteIndexRange:{objc_msgSend(v16, "spriteIndexRangeCoveringRect:")}];
        v21 = v20;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __65__PXAssetsSectionLayout_dateIntervalFutureForContentInRect_type___block_invoke;
        v28[3] = &unk_278297710;
        v29 = dataSource;
        v30 = v19;
        v31 = v21;
        v32 = section;
        typeCopy = type;
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

- (id)_assetReferenceClosestVisuallyToAssetReference:(id)reference
{
  referenceCopy = reference;
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  v6 = [dataSource assetReferenceForAssetReference:referenceCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = referenceCopy;
  }

  v9 = [dataSource objectReferenceNearestToObjectReference:v8];

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
  if (dataSource)
  {
    [dataSource indexPathForAssetCollectionReference:v9];
    v26 = v30;
    v27 = v31;
    [dataSource keyAssetIndexPathForSectionIndexPath:&v26];
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
    v10 = [dataSource assetReferenceAtItemIndexPath:&v28];
    goto LABEL_6;
  }

LABEL_7:
  if (!v11 || ([v11 isEqual:v7] & 1) != 0)
  {
    goto LABEL_27;
  }

  v30 = 0u;
  v31 = 0u;
  if (dataSource)
  {
    [dataSource indexPathForAssetReference:v11];
    v28 = 0u;
    v29 = 0u;
    identifier = [dataSource identifier];
    section = [(PXAssetsSectionLayout *)self section];
    v26.i64[0] = identifier;
    v26.i64[1] = section;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v27 = vnegq_f64(v14);
    [dataSource keyAssetIndexPathForSectionIndexPath:&v26];
    v15 = v28;
    v16 = v29;
    v18 = v30;
    v17 = v31;
  }

  else
  {
    identifier2 = [0 identifier];
    section2 = [(PXAssetsSectionLayout *)self section];
    v26.i64[0] = identifier2;
    v26.i64[1] = section2;
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

  if (v16.i64[0] < [dataSource numberOfItemsInSection:v15.i64[1]] - 1)
  {
    v22 = *&v31.f64[0] + 1;
LABEL_25:
    *&v31.f64[0] = v22;
  }

  v25[0] = v30;
  v25[1] = v31;
  v23 = [dataSource assetReferenceAtItemIndexPath:v25];

  v11 = v23;
LABEL_27:

  return v11;
}

- (PXSimpleIndexPath)_dataSourceIndexPathForObjectReference:(SEL)reference options:(id)options updatedObjectReference:(unint64_t)objectReference
{
  objectReferenceCopy = objectReference;
  optionsCopy = options;
  v19 = *(MEMORY[0x277D3CFD8] + 16);
  v21 = *MEMORY[0x277D3CFD8];
  *&retstr->dataSourceIdentifier = *MEMORY[0x277D3CFD8];
  *&retstr->item = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = optionsCopy;
    dataSource = [(PXAssetsSectionLayout *)self dataSource];
    v13 = dataSource;
    if (objectReferenceCopy)
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
      v14 = [dataSource objectReferenceForObjectReference:v11];
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

- (unsigned)spriteIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bodyContainerLayout = [(PXAssetsSectionLayout *)self bodyContainerLayout];
    v10 = bodyContainerLayout;
    if (bodyContainerLayout)
    {
      bodyContentLayout = bodyContainerLayout;
    }

    else
    {
      bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
    }

    v13 = bodyContentLayout;

    v12 = -[PXAssetsSectionLayout convertSpriteIndex:fromDescendantLayout:](self, "convertSpriteIndex:fromDescendantLayout:", [v13 spriteIndexForObjectReference:referenceCopy options:options updatedObjectReference:objectReference], v13);
  }

  else
  {
    [(PXAssetsSectionLayout *)self _dataSourceIndexPathForObjectReference:referenceCopy options:options updatedObjectReference:objectReference];
    v12 = -1;
  }

  return v12;
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  [(PXAssetsSectionLayout *)self _dataSourceIndexPathForObjectReference:reference options:options updatedObjectReference:objectReference];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  bodyContainerLayout = [(PXAssetsSectionLayout *)self bodyContainerLayout];
  if (bodyContainerLayout || ([(PXAssetsSectionLayout *)self bodyContentLayout], (bodyContainerLayout = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = bodyContainerLayout;
    sublayoutDataStore = [(PXAssetsSectionLayout *)self sublayoutDataStore];
    v6 = [sublayoutDataStore indexOfSublayout:v8];
  }

  return v6;
}

- (BOOL)_shouldAnchorOnAssetCollection
{
  zoomLevel = [(PXAssetsSectionLayout *)self zoomLevel];
  if ((zoomLevel - 1) < 2)
  {
    return 1;
  }

  if ((zoomLevel - 3) < 2)
  {
    return ([(PXAssetsSectionLayout *)self targetZoomLevel]- 1) < 2;
  }

  if (!zoomLevel)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:1014 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)block
{
  blockCopy = block;
  if ([(PXAssetsSectionLayout *)self _shouldAnchorOnAssetCollection])
  {
    sectionBoundariesSpriteIndex = self->_sectionBoundariesSpriteIndex;
    if (sectionBoundariesSpriteIndex != -1)
    {
      v7 = 0;
      blockCopy[2](blockCopy, sectionBoundariesSpriteIndex, 1, &v7);
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXAssetsSectionLayout;
    [(PXAssetsSectionLayout *)&v6 enumerateVisibleAnchoringSpriteIndexesUsingBlock:blockCopy];
  }
}

- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)block
{
  blockCopy = block;
  if ([(PXAssetsSectionLayout *)self _shouldAnchorOnAssetCollection])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(PXAssetsSectionLayout *)self bodyContentLayout];
  }

  v6 = selfCopy;
  if (selfCopy)
  {
    v7 = 0;
    blockCopy[2](blockCopy, selfCopy, &v7);
  }
}

- (id)_objectReferenceForSpriteIndex:(unsigned int)index itemsLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  if ([layoutCopy spriteIndexIsItem:v4])
  {
    v7 = [layoutCopy itemForSpriteIndex:v4];
    dataSource = [(PXAssetsSectionLayout *)self dataSource];
    identifier = [dataSource identifier];
    section = [(PXAssetsSectionLayout *)self section];

    dataSource2 = [(PXAssetsSectionLayout *)self dataSource];
    v14[0] = identifier;
    v14[1] = section;
    v14[2] = v7;
    v14[3] = 0x7FFFFFFFFFFFFFFFLL;
    v12 = [dataSource2 assetReferenceAtItemIndexPath:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)objectReferenceForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  headerLayout = [(PXAssetsSectionLayout *)self headerLayout];
  if (headerLayout && [(PXAssetsSectionLayout *)self convertSpriteIndex:v3 toDescendantLayout:headerLayout]!= -1)
  {
    v6 = 0;
    goto LABEL_13;
  }

  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  if (([(PXAssetsSectionLayout *)self zoomLevel]- 3) <= 1)
  {
    bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
    if (!bodyContentLayout || (v9 = [(PXAssetsSectionLayout *)self convertSpriteIndex:v3 toDescendantLayout:bodyContentLayout], v9 == -1))
    {
    }

    else
    {
      v10 = v9;
      configurator = [(PXAssetsSectionLayout *)self configurator];

      if (configurator)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(PXAssetsSectionLayout *)self _objectReferenceForSpriteIndex:v10 itemsLayout:bodyContentLayout];
        }

        else
        {
          identifier = [dataSource identifier];
          section = [(PXAssetsSectionLayout *)self section];
          *&v19.f64[0] = v10;
          v19.f64[1] = NAN;
          v12 = [dataSource assetReferenceAtItemIndexPath:&identifier];
        }
      }

      else
      {
        v12 = [bodyContentLayout objectReferenceForSpriteIndex:v10];
      }

      v6 = v12;

      if (v6)
      {
        goto LABEL_12;
      }
    }
  }

  identifier2 = [dataSource identifier];
  section2 = [(PXAssetsSectionLayout *)self section];
  identifier = identifier2;
  section = section2;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v19 = vnegq_f64(v15);
  v6 = [dataSource objectReferenceAtIndexPath:&identifier];
LABEL_12:

LABEL_13:

  return v6;
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  headerLayout = [(PXAssetsSectionLayout *)self headerLayout];
  if (!headerLayout || (v7 = -[PXAssetsSectionLayout convertSpriteIndex:toDescendantLayout:](self, "convertSpriteIndex:toDescendantLayout:", v3, headerLayout), v7 == -1) || ([headerLayout hitTestResultForSpriteIndex:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    zoomLevel = [(PXAssetsSectionLayout *)self zoomLevel];
    v10 = zoomLevel;
    if ((zoomLevel - 1) >= 2)
    {
      if (zoomLevel != 3)
      {
        if (zoomLevel == 4)
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

      bodyContentLayout = [(PXAssetsSectionLayout *)self objectReferenceForSpriteIndex:v3];
      v15 = [(PXAssetsSectionLayout *)self spriteReferenceForSpriteIndex:v3 objectReference:bodyContentLayout];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [[PXCuratedLibraryHitTestResult alloc] initWithControl:1 spriteReference:v15 layout:self assetReference:bodyContentLayout];
      }

      else
      {
        v8 = 0;
      }

LABEL_24:
      goto LABEL_25;
    }

    bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
    if (!bodyContentLayout || [(PXAssetsSectionLayout *)self convertSpriteIndex:v3 toDescendantLayout:bodyContentLayout]== -1)
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
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:888 description:@"missing section boundaries sprite"];
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

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v21 = objc_opt_class();
      v19 = NSStringFromClass(v21);
      px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:887 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self objectReferenceForSpriteIndex:spriteIndex]", v19, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:887 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self objectReferenceForSpriteIndex:spriteIndex]", v19}];
    }

    goto LABEL_12;
  }

LABEL_25:

  return v8;
}

- (PXGItemsGeometry)bodyItemsGeometry
{
  bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
  if (objc_opt_respondsToSelector())
  {
    itemsGeometry = [bodyContentLayout itemsGeometry];
  }

  else
  {
    itemsGeometry = 0;
  }

  return itemsGeometry;
}

- (PXGBurstStackEffect)burstStackEffect
{
  entityManager = [(PXGBurstStackEffect *)self->_burstStackEffect entityManager];
  burstStackEffect = [(PXAssetsSectionLayout *)self entityManager];
  if (entityManager != burstStackEffect)
  {
    entityManager2 = [(PXAssetsSectionLayout *)self entityManager];

    if (!entityManager2)
    {
      goto LABEL_5;
    }

    v6 = objc_alloc(MEMORY[0x277D73C68]);
    entityManager = [(PXAssetsSectionLayout *)self entityManager];
    v7 = [v6 initWithEntityManager:entityManager];
    burstStackEffect = self->_burstStackEffect;
    self->_burstStackEffect = v7;
  }

LABEL_5:
  v8 = self->_burstStackEffect;

  return v8;
}

- (PXDisplayAssetFetchResult)keyAssetsFetchResult
{
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  identifier = [dataSource identifier];
  section = [(PXAssetsSectionLayout *)self section];
  v11 = identifier;
  v12 = section;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v10 = vnegq_f64(v6);
  v13 = v10;
  v7 = [dataSource keyAssetsInSectionIndexPath:&v11];
  if (![v7 count])
  {
    v11 = identifier;
    v12 = section;
    v13 = v10;
    v8 = [dataSource assetsInSectionIndexPath:&v11];

    v7 = v8;
  }

  return v7;
}

- (int64_t)keyItemIndex
{
  v9 = 0u;
  v10 = 0u;
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  dataSource2 = [(PXAssetsSectionLayout *)self dataSource];
  v7[0] = [dataSource2 identifier];
  v7[1] = [(PXAssetsSectionLayout *)self section];
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v8 = vnegq_f64(v5);
  if (dataSource)
  {
    [dataSource keyAssetIndexPathForSectionIndexPath:v7];
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
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  assetCollection = [(PXAssetsSectionLayout *)self assetCollection];
  v5 = [dataSource hasCurationForAssetCollection:assetCollection];

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
      dataSource = [(PXAssetsSectionLayout *)self dataSource];
      [(PXAssetsSectionLayout *)self sectionIndexPath];
      v6 = [dataSource assetCollectionReferenceAtSectionIndexPath:v14];
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
    dataSource = [(PXAssetsSectionLayout *)self dataSource];
    [(PXAssetsSectionLayout *)self sectionIndexPath];
    v3 = [dataSource assetCollectionAtSectionIndexPath:&v6];
  }

  return v3;
}

- (int64_t)numberOfAssets
{
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  v4 = [dataSource numberOfItemsInSection:{-[PXAssetsSectionLayout section](self, "section")}];

  return v4;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  identifier = [dataSource identifier];
  section = [(PXAssetsSectionLayout *)self section];
  retstr->dataSourceIdentifier = identifier;
  retstr->section = section;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *&retstr->item = vnegq_f64(v7);

  return result;
}

- (void)setVisibleRectOvershootFactor:(double)factor
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_visibleRectOvershootFactor = factor;
    delegate = [(PXAssetsSectionLayout *)self delegate];
    [delegate assetSectionLayoutDidUpdateVisibleRectOvershootFactor:self];
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout _invalidateVisibleRectOvershootFactor]"];
    [currentHandler handleFailureInFunction:v3 file:@"PXAssetsSectionLayout.m" lineNumber:760 description:{@"invalidating %lu after it already has been updated", 16}];

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

- (void)setEffectiveBlurIntensity:(double)intensity
{
  if (self->_effectiveBlurIntensity != intensity)
  {
    self->_effectiveBlurIntensity = intensity;
    [(PXAssetsSectionLayout *)self _updateBlurSprite];
  }
}

- (void)_updateEffectiveBlurIntensity
{
  viewEnvironment = [(PXAssetsSectionLayout *)self viewEnvironment];
  if (([viewEnvironment isBeingFullPageSnapshotted] & 1) == 0)
  {
    [(PXAssetsSectionLayout *)self blurIntensity];
  }

  [(PXAssetsSectionLayout *)self setEffectiveBlurIntensity:?];
}

- (void)setBlurIntensity:(double)intensity
{
  if (self->_blurIntensity != intensity)
  {
    self->_blurIntensity = intensity;
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
  bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
  v19 = bodyContentLayout;
  if (bodyContentLayout)
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
    [bodyContentLayout contentSize];
    [(PXAssetsSectionLayout *)self convertRect:v19 fromDescendantLayout:v4, v5, v6, v7];
    MaxY = CGRectGetMaxY(v21);
  }

  else
  {
    [(PXAssetsSectionLayout *)self contentSize];
    MaxY = v9;
  }

  superlayout = [(PXGLayout *)self->_headerLayout superlayout];

  v11 = 0.0;
  v12 = 0.0;
  if (superlayout == self)
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
  superlayout2 = [(PXGLayout *)self->_headerLayout superlayout];

  if (superlayout2 == self)
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
  wantsShadow = [(PXAssetsSectionLayout *)self wantsShadow];
  if (wantsShadow)
  {
    spec = [(PXAssetsSectionLayout *)self spec];
    userInterfaceStyleAllowsShadow = [spec userInterfaceStyleAllowsShadow];
  }

  else
  {
    userInterfaceStyleAllowsShadow = 0;
  }

  v5[2](v5, &self->_sectionShadowSpriteIndex, userInterfaceStyleAllowsShadow);
  if (wantsShadow)
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
  assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  [assetDecorationSource setWantsSharedLibraryDecorations:{objc_msgSend(dataSource, "libraryFilter") != 1}];

  [assetDecorationSource setWantsSensitiveWarningDecorations:1];
  [assetDecorationSource setWantsStacksDecorations:0];
  zoomLevel = [(PXAssetsSectionLayout *)self zoomLevel];
  v5 = +[PXPhotosGridSettings sharedInstance];
  enableStacksReviewUI = [v5 enableStacksReviewUI];

  [assetDecorationSource setEnableDebugDecoration:enableStacksReviewUI];
  if (zoomLevel != 4)
  {
    [assetDecorationSource setForbiddenBadges:0x400208000041FLL];
    [assetDecorationSource setDurationAlwaysHidden:(zoomLevel - 1) < 2];
  }
}

- (void)_updateContent
{
  if ([(PXAssetsSectionLayout *)self numberOfAssets])
  {
    headerLayout = [(PXAssetsSectionLayout *)self headerLayout];
    [(PXGSplitLayout *)self setFirstSublayout:headerLayout];
  }

  else
  {
    if ([(PXAssetsSectionLayout *)self removesHeaderLayoutWhenEmpty])
    {
      [(PXGSplitLayout *)self setFirstSublayout:0];
    }

    else
    {
      headerLayout2 = [(PXAssetsSectionLayout *)self headerLayout];
      [(PXGSplitLayout *)self setFirstSublayout:headerLayout2];
    }

    if ([(PXAssetsSectionLayout *)self removesContentLayoutWhenEmpty])
    {
      [(PXAssetsSectionLayout *)self setBodyContentLayout:0 wantsDecoration:0];
      goto LABEL_9;
    }
  }

  configurator = [(PXAssetsSectionLayout *)self configurator];
  [configurator configureAssetSectionLayout:self];

  delegate = [(PXAssetsSectionLayout *)self delegate];
  [delegate assetSectionLayoutDidConfigureLayouts:self];

  dropTargetAssetReference = [(PXAssetsSectionLayout *)self dropTargetAssetReference];
  bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
  layoutForItemChanges = [bodyContentLayout layoutForItemChanges];
  [layoutForItemChanges setDropTargetObjectReference:dropTargetAssetReference];

  [(PXAssetsSectionLayout *)self _updateDecorationSource];
LABEL_9:
  section = [(PXAssetsSectionLayout *)self section];
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  -[PXAssetsSectionLayout setIsLastSection:](self, "setIsLastSection:", section == [dataSource numberOfSections] - 1);
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXAssetsSectionLayout.m" lineNumber:567 description:{@"invalidating %lu after it already has been updated", 6}];

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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout _invalidateFooter]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXAssetsSectionLayout.m" lineNumber:550 description:{@"invalidating %lu after it already has been updated", 8}];

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
  spec = [(PXAssetsSectionLayout *)self spec];
  zoomLevel = [(PXAssetsSectionLayout *)self zoomLevel];
  if ([(PXAssetsSectionLayout *)self disableConfigurators])
  {
    v4 = 0;
  }

  else
  {
    assetCollectionReference = [(PXAssetsSectionLayout *)self assetCollectionReference];
    assetCollection = [assetCollectionReference assetCollection];
    v4 = [spec sectionConfiguratorForAssetCollection:assetCollection inZoomLevel:zoomLevel];
  }

  [(PXAssetsSectionLayout *)self setConfigurator:v4];
  -[PXAssetsSectionLayout setAllowsPositionDependentHeaderContentOpacity:](self, "setAllowsPositionDependentHeaderContentOpacity:", [spec allowsPositionDependentHeaderContentOpacityInZoomLevel:zoomLevel]);
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout _invalidateConfigurator]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXAssetsSectionLayout.m" lineNumber:535 description:{@"invalidating %lu after it already has been updated", 1}];

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

- (void)setRemovesContentLayoutWhenEmpty:(BOOL)empty
{
  if (self->_removesContentLayoutWhenEmpty != empty)
  {
    self->_removesContentLayoutWhenEmpty = empty;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setRemovesHeaderLayoutWhenEmpty:(BOOL)empty
{
  if (self->_removesHeaderLayoutWhenEmpty != empty)
  {
    self->_removesHeaderLayoutWhenEmpty = empty;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setBodyContentLayout:(id)layout wantsDecoration:(BOOL)decoration
{
  decorationCopy = decoration;
  layoutCopy = layout;
  if (self->_bodyContentLayout != layoutCopy)
  {
    v13 = layoutCopy;
    objc_storeStrong(&self->_bodyContentLayout, layout);
    if (decorationCopy && self->_bodyContentLayout)
    {
      v8 = [objc_alloc(MEMORY[0x277D73C70]) initWithDecoratedLayout:v13];
      assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
      [v8 setDecorationSource:assetDecorationSource];

      assetDecorationSource2 = [(PXAssetsSectionLayout *)self assetDecorationSource];
      [v8 setContentSource:assetDecorationSource2];

      assetDecorationSource3 = [(PXAssetsSectionLayout *)self assetDecorationSource];
      [assetDecorationSource3 setDecoratedLayout:v13];

      [(PXAssetsSectionLayout *)self setBodyContainerLayout:v8];
      bodyContainerLayout = [(PXAssetsSectionLayout *)self bodyContainerLayout];
      [(PXGSplitLayout *)self setSecondSublayout:bodyContainerLayout];
    }

    else
    {
      [(PXAssetsSectionLayout *)self setBodyContainerLayout:0];
      [(PXGSplitLayout *)self setSecondSublayout:self->_bodyContentLayout];
    }

    layoutCopy = v13;
  }
}

- (void)setDecorationDataSource:(id)source
{
  sourceCopy = source;
  if (self->_decorationDataSource != sourceCopy)
  {
    v7 = sourceCopy;
    objc_storeStrong(&self->_decorationDataSource, source);
    assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [assetDecorationSource setDecorationDataSource:v7];

    sourceCopy = v7;
  }
}

- (void)setHeaderLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_headerLayout != layoutCopy)
  {
    v6 = layoutCopy;
    objc_storeStrong(&self->_headerLayout, layout);
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
  zoomLevel = [(PXAssetsSectionLayout *)self zoomLevel];
  if (zoomLevel > 4)
  {
    v5 = @"???";
  }

  else
  {
    v5 = off_2782978B8[zoomLevel];
  }

  v6 = v5;
  section = [(PXAssetsSectionLayout *)self section];
  dataSource = [(PXAssetsSectionLayout *)self dataSource];
  identifier = [dataSource identifier];
  assetCollection = [(PXAssetsSectionLayout *)self assetCollection];
  v11 = [v3 px_stringByAppendingDescriptionDetailsWithFormat:@", zoomLevel=%@, section=%lu, dataSourceIdentifier=%li assetCollection={%@}", v6, section, identifier, assetCollection];

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
  bodyContentLayout = [(PXAssetsSectionLayout *)self bodyContentLayout];
  layoutForItemChanges = [bodyContentLayout layoutForItemChanges];

  return layoutForItemChanges;
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [currentHandler handleFailureInFunction:v14 file:@"PXAssetsSectionLayout.m" lineNumber:430 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

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
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
        [currentHandler2 handleFailureInFunction:v16 file:@"PXAssetsSectionLayout.m" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [currentHandler3 handleFailureInFunction:v18 file:@"PXAssetsSectionLayout.m" lineNumber:437 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [currentHandler4 handleFailureInFunction:v20 file:@"PXAssetsSectionLayout.m" lineNumber:440 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    showsSkimmingSlideshow = [(PXAssetsSectionLayout *)self showsSkimmingInteraction]|| [(PXAssetsSectionLayout *)self showsSkimmingSlideshow];
    self->_presentedSkimming = showsSkimmingSlideshow;
    p_updateFlags->isPerformingUpdate = 0;
    if (p_updateFlags->needsUpdate)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [currentHandler5 handleFailureInFunction:v22 file:@"PXAssetsSectionLayout.m" lineNumber:445 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
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
      currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [currentHandler6 handleFailureInFunction:v24 file:@"PXAssetsSectionLayout.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

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
        currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
        [currentHandler7 handleFailureInFunction:v26 file:@"PXAssetsSectionLayout.m" lineNumber:456 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout update]"];
      [currentHandler8 handleFailureInFunction:v28 file:@"PXAssetsSectionLayout.m" lineNumber:459 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (void)setWantsDecorationSpritesHostedInDecoratedSprite:(BOOL)sprite
{
  if (self->_wantsDecorationSpritesHostedInDecoratedSprite != sprite)
  {
    spriteCopy = sprite;
    self->_wantsDecorationSpritesHostedInDecoratedSprite = sprite;
    assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [assetDecorationSource setWantsDecorationSpritesHostedInDecoratedSprite:spriteCopy];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
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
    [(PXAssetsSectionLayout *)self _invalidateContent:*&radius.var0.var0.var0];
  }
}

- (void)setFaceModeEnabled:(BOOL)enabled
{
  if (self->_faceModeEnabled != enabled)
  {
    self->_faceModeEnabled = enabled;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setIsLastSection:(BOOL)section
{
  if (self->_isLastSection != section)
  {
    self->_isLastSection = section;
    [(PXAssetsSectionLayout *)self _invalidateFooter];
  }
}

- (void)setIntersectionSpacing:(double)spacing
{
  if (self->_intersectionSpacing == spacing)
  {
    return;
  }

  self->_intersectionSpacing = spacing;
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setIntersectionSpacing:]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:392 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }
  }

  p_updateFlags->needsUpdate = needsUpdate | 4;
LABEL_8:

  [(PXAssetsSectionLayout *)self _invalidateFooter];
}

- (void)setAutomaticallyUpdatesPadding:(BOOL)padding
{
  if (self->_automaticallyUpdatesPadding != padding)
  {
    self->_automaticallyUpdatesPadding = padding;
    [(PXAssetsSectionLayout *)self _invalidateFooter];
  }
}

- (void)setWantsAssetIndexBadge:(BOOL)badge
{
  if (self->_wantsAssetIndexBadge != badge)
  {
    badgeCopy = badge;
    self->_wantsAssetIndexBadge = badge;
    assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [assetDecorationSource setWantsAssetIndexBadge:badgeCopy];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setWantsFileSizeBadge:(BOOL)badge
{
  if (self->_wantsFileSizeBadge != badge)
  {
    badgeCopy = badge;
    self->_wantsFileSizeBadge = badge;
    assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [assetDecorationSource setWantsFileSizeBadge:badgeCopy];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setWantsNumberedSelectionStyle:(BOOL)style
{
  if (self->_wantsNumberedSelectionStyle != style)
  {
    styleCopy = style;
    self->_wantsNumberedSelectionStyle = style;
    assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [assetDecorationSource setWantsNumberedSelectionStyle:styleCopy];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setWantsDimmedSelectionStyle:(BOOL)style
{
  if (self->_wantsDimmedSelectionStyle != style)
  {
    styleCopy = style;
    self->_wantsDimmedSelectionStyle = style;
    assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [assetDecorationSource setWantsDimmedSelectionStyle:styleCopy];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setItemCaptionsVisible:(BOOL)visible
{
  if (self->_itemCaptionsVisible != visible)
  {
    self->_itemCaptionsVisible = visible;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setAllowsPositionDependentHeaderContentOpacity:(BOOL)opacity
{
  if (self->_allowsPositionDependentHeaderContentOpacity != opacity)
  {
    self->_allowsPositionDependentHeaderContentOpacity = opacity;
    if (self->_postUpdateFlags.isPerformingUpdate && (self->_postUpdateFlags.updated & 0x400) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setAllowsPositionDependentHeaderContentOpacity:]"];
      [currentHandler handleFailureInFunction:v4 file:@"PXAssetsSectionLayout.m" lineNumber:332 description:{@"invalidating %lu after it already has been updated", 1024}];

      abort();
    }

    self->_postUpdateFlags.needsUpdate |= 0x400uLL;
  }
}

- (void)setDistanceBetweenHeaderTopAndNextBodyTop:(double)top
{
  if (self->_distanceBetweenHeaderTopAndNextBodyTop != top)
  {
    self->_distanceBetweenHeaderTopAndNextBodyTop = top;
    if ([(PXAssetsSectionLayout *)self allowsPositionDependentHeaderContentOpacity])
    {
      if (self->_postUpdateFlags.isPerformingUpdate && (self->_postUpdateFlags.updated & 0x400) != 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setDistanceBetweenHeaderTopAndNextBodyTop:]"];
        [currentHandler handleFailureInFunction:v5 file:@"PXAssetsSectionLayout.m" lineNumber:323 description:{@"invalidating %lu after it already has been updated", 1024}];

        abort();
      }

      self->_postUpdateFlags.needsUpdate |= 0x400uLL;
    }
  }
}

- (void)setDistanceBetweenTitleTopAndBodyBottom:(double)bottom
{
  if (self->_distanceBetweenTitleTopAndBodyBottom != bottom)
  {
    self->_distanceBetweenTitleTopAndBodyBottom = bottom;
    if ([(PXAssetsSectionLayout *)self allowsPositionDependentHeaderContentOpacity])
    {
      if (self->_postUpdateFlags.isPerformingUpdate && (self->_postUpdateFlags.updated & 0x400) != 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setDistanceBetweenTitleTopAndBodyBottom:]"];
        [currentHandler handleFailureInFunction:v5 file:@"PXAssetsSectionLayout.m" lineNumber:312 description:{@"invalidating %lu after it already has been updated", 1024}];

        abort();
      }

      self->_postUpdateFlags.needsUpdate |= 0x400uLL;
    }
  }
}

- (void)_callAddContentActionHandler
{
  addContentActionHandler = [(PXAssetsSectionLayout *)self addContentActionHandler];
  v4 = addContentActionHandler;
  if (addContentActionHandler)
  {
    (*(addContentActionHandler + 16))(addContentActionHandler, self);
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

- (void)setAddContentActionHandler:(id)handler
{
  if (self->_addContentActionHandler != handler)
  {
    v4 = [handler copy];
    addContentActionHandler = self->_addContentActionHandler;
    self->_addContentActionHandler = v4;

    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setWantsShadow:(BOOL)shadow
{
  if (self->_wantsShadow != shadow)
  {
    self->_wantsShadow = shadow;
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
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setWantsShadow:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:284 description:{@"invalidating %lu after it already has been updated", 4}];

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

- (void)setCurrentSkimmingIndex:(int64_t)index
{
  if (self->_currentSkimmingIndex != index)
  {
    self->_currentSkimmingIndex = index;
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
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setCurrentSkimmingIndex:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:276 description:{@"invalidating %lu after it already has been updated", 2}];

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

- (void)setMaxSkimmingIndex:(int64_t)index
{
  if (self->_maxSkimmingIndex != index)
  {
    self->_maxSkimmingIndex = index;
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
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setMaxSkimmingIndex:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:267 description:{@"invalidating %lu after it already has been updated", 2}];

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

- (void)setSkimmingIndexPaths:(id)paths
{
  pathsCopy = paths;
  if (self->_skimmingIndexPaths != pathsCopy && ([(PXIndexPathSet *)pathsCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_skimmingIndexPaths, paths);
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
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setSkimmingIndexPaths:]"];
        [currentHandler handleFailureInFunction:v10 file:@"PXAssetsSectionLayout.m" lineNumber:258 description:{@"invalidating %lu after it already has been updated", 2}];

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

- (void)setIsSkimming:(BOOL)skimming
{
  if (self->_isSkimming != skimming)
  {
    self->_isSkimming = skimming;
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
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setIsSkimming:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:250 description:{@"invalidating %lu after it already has been updated", 2}];

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

- (void)setCanStartSelecting:(BOOL)selecting
{
  if (self->_canStartSelecting != selecting)
  {
    self->_canStartSelecting = selecting;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setIsSelecting:(BOOL)selecting
{
  if (self->_isSelecting != selecting)
  {
    self->_isSelecting = selecting;
    [(PXPhotosGridAssetDecorationSource *)self->_assetDecorationSource setIsInSelectMode:?];
    [(PXAssetsSectionLayout *)self _invalidateContent];

    [(PXAssetsSectionLayout *)self invalidateDecoration];
  }
}

- (void)setShowsSkimmingInteraction:(BOOL)interaction
{
  if (self->_showsSkimmingInteraction != interaction)
  {
    self->_showsSkimmingInteraction = interaction;
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
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setShowsSkimmingInteraction:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:222 description:{@"invalidating %lu after it already has been updated", 2}];

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

- (void)setShowsSkimmingSlideshow:(BOOL)slideshow
{
  if (self->_showsSkimmingSlideshow != slideshow)
  {
    self->_showsSkimmingSlideshow = slideshow;
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
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXAssetsSectionLayout setShowsSkimmingSlideshow:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXAssetsSectionLayout.m" lineNumber:213 description:{@"invalidating %lu after it already has been updated", 2}];

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

- (void)setNumberOfPrecedingAssets:(int64_t)assets
{
  if (self->_numberOfPrecedingAssets != assets)
  {
    self->_numberOfPrecedingAssets = assets;
    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (void)setConfigurator:(id)configurator
{
  configuratorCopy = configurator;
  if (self->_configurator != configuratorCopy)
  {
    v6 = configuratorCopy;
    objc_storeStrong(&self->_configurator, configurator);
    [(PXAssetsSectionLayout *)self _invalidateContent];
    configuratorCopy = v6;
  }
}

- (void)setDisableConfigurators:(BOOL)configurators
{
  if (self->_disableConfigurators != configurators)
  {
    self->_disableConfigurators = configurators;
    [(PXAssetsSectionLayout *)self _invalidateConfigurator];
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXAssetsSectionLayout *)self _invalidateConfigurator];
    [(PXAssetsSectionLayout *)self _invalidateFooter];
    specCopy = v6;
  }
}

- (void)setDropTargetAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = self->_dropTargetAssetReference;
  v6 = v5;
  if (v5 == referenceCopy)
  {
  }

  else
  {
    v7 = [(PXAssetReference *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dropTargetAssetReference, reference);
      [(PXAssetsSectionLayout *)self _invalidateContent];
    }
  }
}

- (void)setDraggedAssetReferences:(id)references
{
  referencesCopy = references;
  assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
  [assetDecorationSource setDraggedAssetReferences:referencesCopy];
}

- (NSSet)draggedAssetReferences
{
  assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
  draggedAssetReferences = [assetDecorationSource draggedAssetReferences];

  return draggedAssetReferences;
}

- (void)setSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
  [assetDecorationSource setSelectionSnapshot:snapshotCopy];

  [(PXAssetsSectionLayout *)self _invalidateContent];

  [(PXAssetsSectionLayout *)self invalidateDecoration];
}

- (PXSelectionSnapshot)selectionSnapshot
{
  assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
  selectionSnapshot = [assetDecorationSource selectionSnapshot];

  return selectionSnapshot;
}

- (void)setDataSource:(id)source section:(int64_t)section
{
  sourceCopy = source;
  if (self->_section != section || self->_dataSource != sourceCopy)
  {
    self->_section = section;
    v12 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    if ([(PXAssetsDataSource *)v12 numberOfSections]<= section)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"section < dataSource.numberOfSections"}];
    }

    self->_cachedClampedItemRange = xmmword_21AC7D580;
    cachedClampedFetchResult = self->_cachedClampedFetchResult;
    self->_cachedClampedFetchResult = 0;

    assetDecorationSource = [(PXAssetsSectionLayout *)self assetDecorationSource];
    [assetDecorationSource setDataSource:v12 section:section];

    [(PXAssetsSectionLayout *)self _invalidateContent];
    [(PXAssetsSectionLayout *)self _invalidateFooter];
    sourceCopy = v12;
  }
}

- (void)setZoomLevel:(int64_t)level
{
  if (self->_zoomLevel != level)
  {
    self->_zoomLevel = level;
    [(PXAssetsSectionLayout *)self _invalidateConfigurator];

    [(PXAssetsSectionLayout *)self _invalidateContent];
  }
}

- (PXAssetsSectionLayout)initWithSection:(int64_t)section dataSource:(id)source loadingStatusManager:(id)manager assetImportStatusManager:(id)statusManager inlinePlaybackController:(id)controller zoomLevel:(int64_t)level spec:(id)spec
{
  sourceCopy = source;
  managerCopy = manager;
  statusManagerCopy = statusManager;
  controllerCopy = controller;
  specCopy = spec;
  v26.receiver = self;
  v26.super_class = PXAssetsSectionLayout;
  v20 = [(PXAssetsSectionLayout *)&v26 init];
  v21 = v20;
  if (v20)
  {
    v20->_sectionBoundariesSpriteIndex = -1;
    v20->_sectionShadowSpriteIndex = -1;
    v20->_blurSpriteIndex = -1;
    objc_storeStrong(&v20->_loadingStatusManager, manager);
    v22 = objc_alloc_init(PXPhotosGridAssetDecorationSource);
    assetDecorationSource = v21->_assetDecorationSource;
    v21->_assetDecorationSource = v22;

    [(PXPhotosGridAssetDecorationSource *)v21->_assetDecorationSource setLoadingStatusManager:v21->_loadingStatusManager];
    [(PXPhotosGridAssetDecorationSource *)v21->_assetDecorationSource setAssetImportStatusManager:statusManagerCopy];
    [(PXAssetsSectionLayout *)v21 setDataSource:sourceCopy section:section];
    [(PXAssetsSectionLayout *)v21 setZoomLevel:level];
    [(PXAssetsSectionLayout *)v21 setSpec:specCopy];
    [(PXGSplitLayout *)v21 setMode:0];
    [(PXAssetsSectionLayout *)v21 setContentSource:v21];
    axGroup = [(PXAssetsSectionLayout *)v21 axGroup];
    [axGroup setAxRole:1];

    objc_storeStrong(&v21->_inlinePlaybackController, controller);
    v21->_removesHeaderLayoutWhenEmpty = 1;
    v21->_removesContentLayoutWhenEmpty = 1;
  }

  return v21;
}

- (PXAssetsSectionLayout)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSectionLayout.m" lineNumber:74 description:{@"%s is not available as initializer", "-[PXAssetsSectionLayout init]"}];

  abort();
}

+ (CGSize)estimatedSizeWithReferenceSize:(CGSize)size assetCollection:(id)collection numberOfAssets:(int64_t)assets isCurated:(BOOL)curated zoomLevel:(int64_t)level spec:(id)spec
{
  width = size.width;
  if ((level - 3) > 1)
  {
    v18 = 0.0;
  }

  else
  {
    curatedCopy = curated;
    height = size.height;
    collectionCopy = collection;
    v15 = [spec sectionConfiguratorForAssetCollection:collectionCopy inZoomLevel:level];
    [v15 estimatedSizeOfSectionForAssetCollection:collectionCopy isCurated:curatedCopy numberOfAssets:assets referenceSize:{width, height}];
    width = v16;
    v18 = v17;
  }

  v19 = width;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)px_modifyAssetsSectionLayoutGeometry:(id)geometry
{
  v6 = 0;
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  v3[0] = 0;
  v3[1] = 0;
  (*(geometry + 2))(geometry, 0x7FFFFFFFFFFFFFFFLL, v4, v3, &v6);
}

@end