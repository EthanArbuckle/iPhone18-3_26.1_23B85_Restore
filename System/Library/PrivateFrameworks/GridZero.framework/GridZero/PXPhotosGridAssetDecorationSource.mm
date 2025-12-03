@interface PXPhotosGridAssetDecorationSource
- ($B01073AA55A67B413588F7AD9EFB6822)assetBackgroundCornerRadiusForSpriteIndex:(unsigned int)index inLayout:(id)layout;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)index inLayout:(id)layout;
- (BOOL)hasTapbacksForSpriteIndex:(unsigned int)index inLayout:(id)layout;
- (BOOL)isSharedLibraryBadgeEnabled;
- (BOOL)isStacksBadgeEnabled;
- (BOOL)shouldShowSavedToLibraryBadgeForAsset:(id)asset inLayout:(id)layout;
- (BOOL)wantsCaptionDecorationsInLayout:(id)layout;
- (BOOL)wantsTapbackDecorationInLayout:(id)layout;
- (CGSize)expectedInsetsForItem:(int64_t)item;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (PXGAssetDecorationInfo)assetDecorationInfoForAsset:(SEL)asset atSpriteIndex:(id)index inLayout:(unsigned int)layout;
- (PXGItemsLayout)decoratedItemsLayout;
- (PXGLayout)decoratedLayout;
- (PXPhotosGridAssetDecorationSource)init;
- (id)_displayAssetForItem:(int64_t)item;
- (id)_spriteIndexesForItems:(id)items inLayout:(id)layout;
- (id)debugDecorationAtSpriteIndex:(unsigned int)index asset:(id)asset inLayout:(id)layout;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout;
- (id)draggingSpriteIndexesInLayout:(id)layout;
- (id)loadStatusForAsset:(id)asset atSpriteIndex:(unsigned int)index inLayout:(id)layout;
- (id)selectedSpriteIndexesInLayout:(id)layout;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (int64_t)focusRingTypeInLayout:(id)layout;
- (int64_t)overallSelectionOrderAtSpriteIndex:(unsigned int)index inLayout:(id)layout;
- (int64_t)selectionDecorationStyleInLayout:(id)layout;
- (unint64_t)desiredPlaceholderStyleInLayout:(id)layout;
- (unint64_t)selectionDecorationAdditionsInLayout:(id)layout;
- (void)_invalidateDragDecoration;
- (void)_invalidateProgressDecoration;
- (void)_invalidateSharedLibraryDecoration;
- (void)_invalidateTapbackDecoration;
- (void)_updateDragDecoration;
- (void)loadingStatusManager:(id)manager didUpdateLoadingStatus:(id)status forItemIdentifier:(id)identifier;
- (void)observeIsInCloud:(BOOL)cloud forDisplayAsset:(id)asset;
- (void)setAssetImportStatusManager:(id)manager;
- (void)setDataSource:(id)source section:(int64_t)section;
- (void)setDecoratedLayout:(id)layout;
- (void)setDraggedAssetReferences:(id)references;
- (void)setDurationAlwaysHidden:(BOOL)hidden;
- (void)setEnableDebugBadgeColors:(BOOL)colors;
- (void)setEnableDebugDecoration:(BOOL)decoration;
- (void)setEnableSpatialBadges:(BOOL)badges;
- (void)setForbiddenBadges:(unint64_t)badges;
- (void)setHidesInteractiveFavoriteBadges:(BOOL)badges;
- (void)setIsInSelectMode:(BOOL)mode;
- (void)setItemsWithCoveredBottomTrailingCorner:(id)corner;
- (void)setLoadingStatusManager:(id)manager;
- (void)setSelectionSnapshot:(id)snapshot;
- (void)setTapbackStatusManager:(id)manager;
- (void)setWantsSensitiveWarningDecorations:(BOOL)decorations;
- (void)setWantsSharedLibraryDecorations:(BOOL)decorations;
- (void)setWantsStacksDecorations:(BOOL)decorations;
- (void)update;
@end

@implementation PXPhotosGridAssetDecorationSource

- (PXPhotosGridAssetDecorationSource)init
{
  v13.receiver = self;
  v13.super_class = PXPhotosGridAssetDecorationSource;
  v2 = [(PXPhotosGridAssetDecorationSource *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_section = 0x7FFFFFFFFFFFFFFFLL;
    defaultManager = [MEMORY[0x277D3CCE0] defaultManager];
    badgeManager = v3->_badgeManager;
    v3->_badgeManager = defaultManager;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    assetUUIDsInCloud = v3->_assetUUIDsInCloud;
    v3->_assetUUIDsInCloud = v6;

    v8 = +[PXPhotosGridSettings sharedInstance];
    v3->_forceBadgesOnAllAssets = [v8 forceBadgesOnAllAssets];

    v3->_interItemSpacingThresholdForExteriorFocusRingSelection = 10;
    v9 = objc_alloc_init(MEMORY[0x277D74258]);
    backgroundShadow = v3->_backgroundShadow;
    v3->_backgroundShadow = v9;

    [(NSShadow *)v3->_backgroundShadow setShadowOffset:0.0, 0.0];
    [(NSShadow *)v3->_backgroundShadow setShadowBlurRadius:20.0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__gridPreferencesDidChange_ name:@"PXGridZeroSettingsChangedNotification" object:0];
  }

  return v3;
}

- (PXGLayout)decoratedLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  return WeakRetained;
}

- (PXGItemsLayout)decoratedItemsLayout
{
  decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = decoratedLayout;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)update
{
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosGridAssetDecorationSource update]"];
      [currentHandler handleFailureInFunction:v5 file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = self->_updateFlags.needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = 1;
    if (needsUpdate)
    {
      self->_updateFlags.needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXPhotosGridAssetDecorationSource *)self _updateDragDecoration];
      needsUpdate = self->_updateFlags.needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosGridAssetDecorationSource update]"];
      [currentHandler2 handleFailureInFunction:v6 file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:309 description:{@"still needing to update %lu after update pass", self->_updateFlags.needsUpdate}];
    }
  }
}

- (BOOL)isSharedLibraryBadgeEnabled
{
  cachedSharedLibraryBadgeEnabledSettingValue = self->_cachedSharedLibraryBadgeEnabledSettingValue;
  if (!cachedSharedLibraryBadgeEnabledSettingValue)
  {
    v4 = +[PXGridZeroSettingsProvider sharedInstance];
    isSharedLibraryBadgingEnabled = [v4 isSharedLibraryBadgingEnabled];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:isSharedLibraryBadgingEnabled];
    v7 = self->_cachedSharedLibraryBadgeEnabledSettingValue;
    self->_cachedSharedLibraryBadgeEnabledSettingValue = v6;

    cachedSharedLibraryBadgeEnabledSettingValue = self->_cachedSharedLibraryBadgeEnabledSettingValue;
  }

  return [(NSNumber *)cachedSharedLibraryBadgeEnabledSettingValue BOOLValue];
}

uint64_t __63__PXPhotosGridAssetDecorationSource__gridPreferencesDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidateSharedLibraryDecoration];
}

- (void)loadingStatusManager:(id)manager didUpdateLoadingStatus:(id)status forItemIdentifier:(id)identifier
{
  if (!self->_isGettingLoadStatus)
  {
    [(PXPhotosGridAssetDecorationSource *)self _invalidateProgressDecoration:manager];
  }
}

- (id)debugDecorationAtSpriteIndex:(unsigned int)index asset:(id)asset inLayout:(id)layout
{
  v32[2] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  layoutCopy = layout;
  v25 = 0;
  v26 = &v25;
  v27 = 0x4010000000;
  v28 = &unk_21AC883FE;
  v9 = *(MEMORY[0x277D73D58] + 16);
  v29 = *MEMORY[0x277D73D58];
  v30 = v9;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x4810000000;
  v21[3] = &unk_21AC883FE;
  v10 = *(MEMORY[0x277D73D70] + 16);
  v22 = *MEMORY[0x277D73D70];
  v23 = v10;
  v24 = *(MEMORY[0x277D73D70] + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__PXPhotosGridAssetDecorationSource_debugDecorationAtSpriteIndex_asset_inLayout___block_invoke;
  v20[3] = &unk_278298370;
  v20[4] = &v25;
  v20[5] = v21;
  [layoutCopy enumerateSpritesInRange:index | 0x100000000 usingBlock:v20];
  [assetCopy preferredCropRect];
  PXRectFlippedVertically();
  [layoutCopy displayScale];
  PXRectDenormalize();
  PXRectArea();
  v12 = v11 / vmul_lane_f32(v26[7], v26[7], 1).f32[0];
  if (v12 <= 0.0 || v12 > 1.29999995)
  {
    if (v12 <= 1.29999995 || v12 > 1.5)
    {
      [MEMORY[0x277D75348] redColor];
    }

    else
    {
      [MEMORY[0x277D75348] orangeColor];
    }
    greenColor = ;
  }

  else
  {
    greenColor = [MEMORY[0x277D75348] greenColor];
  }

  v15 = greenColor;
  v31[0] = *MEMORY[0x277D73D20];
  v16 = [greenColor colorWithAlphaComponent:0.150000006];
  v32[0] = v16;
  v31[1] = *MEMORY[0x277D73D28];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"fit:%0.0f%%", v12 * 100.0];
  v32[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v25, 8);

  return v18;
}

__n128 __81__PXPhotosGridAssetDecorationSource_debugDecorationAtSpriteIndex_asset_inLayout___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a1 + 32) + 8);
  v7 = a4[1];
  *(v6 + 32) = *a4;
  *(v6 + 48) = v7;
  v8 = *(*(a1 + 40) + 8);
  result = *a6;
  v10 = *(a6 + 16);
  *(v8 + 64) = *(a6 + 32);
  *(v8 + 32) = result;
  *(v8 + 48) = v10;
  return result;
}

- (void)observeIsInCloud:(BOOL)cloud forDisplayAsset:(id)asset
{
  assetCopy = asset;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PXPhotosGridAssetDecorationSource_observeIsInCloud_forDisplayAsset___block_invoke;
  block[3] = &unk_278298348;
  v9 = assetCopy;
  selfCopy = self;
  cloudCopy = cloud;
  v7 = assetCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __70__PXPhotosGridAssetDecorationSource_observeIsInCloud_forDisplayAsset___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) uuid];
  if (*(a1 + 48) != [*(*(a1 + 40) + 40) containsObject:?])
  {
    v2 = *(*(a1 + 40) + 40);
    if (*(a1 + 48))
    {
      [v2 addObject:v4];
    }

    else
    {
      [v2 removeObject:v4];
    }

    v3 = [*(a1 + 40) decoratedLayout];
    [v3 invalidateDecoration];
  }
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  if (!layoutCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:699 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v33}];
LABEL_25:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v34 = objc_opt_class();
    v33 = NSStringFromClass(v34);
    px_descriptionForAssertionMessage = [layoutCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:699 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v33, px_descriptionForAssertionMessage}];

    goto LABEL_25;
  }

LABEL_3:
  itemsLayout = [layoutCopy itemsLayout];
  v41 = -1;
  v9 = 0;
  if ([layoutCopy isSpriteIndex:v4 decoratingSpriteWithIndex:&v41] && itemsLayout)
  {
    v36 = [itemsLayout itemForSpriteIndex:{objc_msgSend(layoutCopy, "convertSpriteIndex:toDescendantLayout:", v41, itemsLayout)}];
    v10 = [(PXPhotosGridAssetDecorationSource *)self _displayAssetForItem:?];
    dataSource = [(PXPhotosGridAssetDecorationSource *)self dataSource];
    currentDataSourceChange = [layoutCopy currentDataSourceChange];
    v13 = v10;
    if ([layoutCopy appearState] == 1)
    {
      v13 = v10;
      if (currentDataSourceChange)
      {
        changeDetails = [currentDataSourceChange changeDetails];
        lastObject = [changeDetails lastObject];
        v16 = dataSource;
        toDataSourceIdentifier = [lastObject toDataSourceIdentifier];
        identifier = [v16 identifier];

        v13 = v10;
        v19 = toDataSourceIdentifier == identifier;
        dataSource = v16;
        if (v19)
        {
          identifier2 = [v16 identifier];
          section = [(PXPhotosGridAssetDecorationSource *)self section];
          v39 = 0u;
          v40 = 0u;
          v22 = MEMORY[0x277D3CDD0];
          changeDetails2 = [currentDataSourceChange changeDetails];
          *&v37 = identifier2;
          *(&v37 + 1) = section;
          *&v38 = v36;
          *(&v38 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          [v22 indexPathAfterRevertingChanges:changeDetails2 fromIndexPath:&v37 hasIncrementalChanges:0 objectChanged:0];

          v13 = v10;
          if (v39 != *MEMORY[0x277D3CF78])
          {
            v13 = v10;
            if (v40 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v13 = v10;
              if (*(&v40 + 1) == 0x7FFFFFFFFFFFFFFFLL)
              {
                dataSourceBeforeChanges = [currentDataSourceChange dataSourceBeforeChanges];
                v37 = v39;
                v38 = v40;
                v13 = [dataSourceBeforeChanges objectAtIndexPath:&v37];
              }
            }
          }

          dataSource = v16;
        }
      }
    }

    decorationDataSource = [(PXPhotosGridAssetDecorationSource *)self decorationDataSource];

    if (decorationDataSource)
    {
      decorationDataSource2 = [(PXPhotosGridAssetDecorationSource *)self decorationDataSource];
      v9 = [decorationDataSource2 userDataForAsset:v10];
    }

    else if (objc_opt_respondsToSelector())
    {
      v9 = [(PXTapbackStatusManager *)self->_tapbackStatusManager tapbackUserDataForAsset:v10 previousAsset:v13];
    }

    else
    {
      dataSource2 = [(PXPhotosGridAssetDecorationSource *)self dataSource];
      identifier3 = [dataSource2 identifier];
      section2 = [(PXPhotosGridAssetDecorationSource *)self section];
      *&v39 = identifier3;
      *(&v39 + 1) = section2;
      *&v40 = v36;
      *(&v40 + 1) = 0x7FFFFFFFFFFFFFFFLL;
      v9 = [dataSource2 assetReferenceAtItemIndexPath:&v39];
    }
  }

  return v9;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  if (layoutCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [layoutCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:679 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v16, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:679 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v16}];
  }

LABEL_3:
  v8 = [layoutCopy decoratingTypeForSpriteIndex:v4];
  if (v8 == 3)
  {
    tapbackStatusManager = self;
    goto LABEL_8;
  }

  if (v8 != 7)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (NSClassFromString(&cfstr_Ckmediaobjectt.isa) && (objc_opt_isKindOfClass() & 1) != 0)
    {
      decorationViewClass = NSClassFromString(&cfstr_Ckphotogridtap.isa);
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  tapbackStatusManager = self->_tapbackStatusManager;
LABEL_8:
  decorationViewClass = [tapbackStatusManager decorationViewClass];
LABEL_9:
  v11 = decorationViewClass;
LABEL_14:
  v12 = v11;

  return v11;
}

- (BOOL)hasTapbacksForSpriteIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = -[PXPhotosGridAssetDecorationSource _displayAssetForItem:](self, "_displayAssetForItem:", [layoutCopy itemForSpriteIndex:v4]);
    v8 = [(PXTapbackStatusManager *)self->_tapbackStatusManager hasTapbacksForAsset:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)wantsTapbackDecorationInLayout:(id)layout
{
  if (self->_tapbackStatusManager)
  {
    return ![(PXPhotosGridAssetDecorationSource *)self isInSelectMode];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)desiredPlaceholderStyleInLayout:(id)layout
{
  decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  contentSource = [decoratedLayout contentSource];
  v5 = [contentSource desiredPlaceholderStyleInLayout:decoratedLayout];

  return v5;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [layoutCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:636 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v15, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:636 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v15}];
  }

LABEL_3:
  decoratedLayout = [layoutCopy decoratedLayout];
  contentSource = [decoratedLayout contentSource];
  v10 = [contentSource displayAssetFetchResultForSpritesInRange:objc_msgSend(layoutCopy inLayout:{"decoratedIndexForDecoratingIndex:", range) | 0x100000000, decoratedLayout}];
  [layoutCopy numberOfDecoratingSpritesPerDecoratedSprite];
  v11 = PXDisplayAssetFetchResultScaledWithMultiplier();

  return v11;
}

- ($B01073AA55A67B413588F7AD9EFB6822)assetBackgroundCornerRadiusForSpriteIndex:(unsigned int)index inLayout:(id)layout
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (id)loadStatusForAsset:(id)asset atSpriteIndex:(unsigned int)index inLayout:(id)layout
{
  self->_isGettingLoadStatus = 1;
  assetCopy = asset;
  loadingStatusManager = [(PXPhotosGridAssetDecorationSource *)self loadingStatusManager];
  uuid = [assetCopy uuid];

  v9 = [loadingStatusManager loadingStatusForItemIdentifier:uuid];

  self->_isGettingLoadStatus = 0;

  return v9;
}

- (PXGAssetDecorationInfo)assetDecorationInfoForAsset:(SEL)asset atSpriteIndex:(id)index inLayout:(unsigned int)layout
{
  indexCopy = index;
  v12 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PXPhotosGridAssetDecorationSource_assetDecorationInfoForAsset_atSpriteIndex_inLayout___block_invoke;
  aBlock[3] = &unk_278298320;
  v13 = v12;
  selfCopy = self;
  assetCopy = asset;
  v41 = v13;
  layoutCopy = layout;
  v14 = _Block_copy(aBlock);
  wantsFileSizeBadge = [(PXPhotosGridAssetDecorationSource *)self wantsFileSizeBadge];
  durationAlwaysHidden = [(PXPhotosGridAssetDecorationSource *)self durationAlwaysHidden];
  enableSpatialBadges = [(PXPhotosGridAssetDecorationSource *)self enableSpatialBadges];
  v31 = 0u;
  v39 = 0u;
  badgeManager = self->_badgeManager;
  if (badgeManager)
  {
    v19 = 2;
    if (!wantsFileSizeBadge)
    {
      v19 = 0;
    }

    if (durationAlwaysHidden)
    {
      v19 |= 4uLL;
    }

    if (enableSpatialBadges)
    {
      v20 = v19 | 8;
    }

    else
    {
      v20 = v19;
    }

    [(PXAssetBadgeManager *)badgeManager badgeInfoForAsset:indexCopy inCollection:0 options:v20, 0];
  }

  assetUUIDsInCloud = self->_assetUUIDsInCloud;
  uuid = [indexCopy uuid];
  LODWORD(assetUUIDsInCloud) = [(NSMutableSet *)assetUUIDsInCloud containsObject:uuid];

  if (assetUUIDsInCloud)
  {
    v32 |= 0x20uLL;
  }

  if ([(PXPhotosGridAssetDecorationSource *)self shouldShowSavedToLibraryBadgeForAsset:indexCopy inLayout:v13, v32])
  {
    v33 |= 0x200000000uLL;
  }

  if (-[PXPhotosGridAssetDecorationSource wantsSharedLibraryDecorations](self, "wantsSharedLibraryDecorations", v33) && (-[PXPhotosGridAssetDecorationSource isInSelectMode](self, "isInSelectMode") && !PFIsPhotosPicker() || -[PXPhotosGridAssetDecorationSource isSharedLibraryBadgeEnabled](self, "isSharedLibraryBadgeEnabled")) && [indexCopy isInSharedLibrary])
  {
    v34 |= 0x2000000000uLL;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PXPhotosGridAssetDecorationSource *)self wantsSensitiveWarningDecorations])
  {
    if ([indexCopy isContentAnalyzedAsPreviewable])
    {
      if (![indexCopy needsSensitivityProtection])
      {
        goto LABEL_27;
      }

      v23 = v34 | 0x20;
    }

    else
    {
      v23 = v34 | 0x20000000000000;
    }

    v34 = v23;
  }

LABEL_27:
  if ([(PXPhotosGridAssetDecorationSource *)self wantsAssetIndexBadge])
  {
    v24 = v14[2](v14);
    v25 = v35 | 0x200000000000;
    *&v39 = v24 + 1;
  }

  else
  {
    v25 = v35;
  }

  v36 = v25 & ~self->_forbiddenBadges;
  if (self->_forceBadgesOnAllAssets)
  {
    v30 = 0.0;
    if (0.0 < 1.0)
    {
      v30 = 1.0;
    }

    *(&v31 + 1) = v30;
  }

  else if ([(PXPhotosGridAssetDecorationSource *)self durationAlwaysHidden])
  {
    *(&v31 + 1) = 0;
  }

  if ([(PXPhotosGridAssetDecorationSource *)self enableDebugBadgeColors])
  {
    v37 |= 0x60000000uLL;
  }

  if ([(NSIndexSet *)self->_itemsWithCoveredBottomTrailingCorner count]&& [(NSIndexSet *)self->_itemsWithCoveredBottomTrailingCorner containsIndex:v14[2](v14)])
  {
    *&v31 = v31 & 0xFFFFFFFFFFFFFFDDLL;
    *(&v31 + 1) = 0;
  }

  badgesModifier = [(PXPhotosGridAssetDecorationSource *)self badgesModifier];

  if (badgesModifier)
  {
    badgesModifier2 = [(PXPhotosGridAssetDecorationSource *)self badgesModifier];
    v28 = (badgesModifier2)[2](badgesModifier2, indexCopy, v38);
  }

  else
  {
    v28 = v38;
  }

  retstr->var0 = v28;
  retstr->var1 = *(&v31 + 1);
  *&retstr->var2 = v39;

  return result;
}

uint64_t __88__PXPhotosGridAssetDecorationSource_assetDecorationInfoForAsset_atSpriteIndex_inLayout___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 itemForSpriteIndex:*(a1 + 56)];

  return v3;
}

- (BOOL)shouldShowSavedToLibraryBadgeForAsset:(id)asset inLayout:(id)layout
{
  assetCopy = asset;
  layoutCopy = layout;
  v8 = self->_assetImportStatusManager && [(PXPhotosGridAssetDecorationSource *)self isInSelectMode]&& [(PXAssetImportStatusManager *)self->_assetImportStatusManager importStateForAsset:assetCopy]== 2;

  return v8;
}

- (id)draggingSpriteIndexesInLayout:(id)layout
{
  layoutCopy = layout;
  [(PXPhotosGridAssetDecorationSource *)self update];
  v5 = [(PXPhotosGridAssetDecorationSource *)self _spriteIndexesForItems:self->_draggedItems inLayout:layoutCopy];

  return v5;
}

- (BOOL)wantsCaptionDecorationsInLayout:(id)layout
{
  layoutCopy = layout;
  if (objc_opt_respondsToSelector())
  {
    itemCaptionsVisible = [layoutCopy itemCaptionsVisible];
  }

  else
  {
    itemCaptionsVisible = 0;
  }

  return itemCaptionsVisible;
}

- (int64_t)overallSelectionOrderAtSpriteIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  if ([(PXPhotosGridAssetDecorationSource *)self wantsNumberedSelectionStyle])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [layoutCopy itemForSpriteIndex:v4];
    }

    else
    {
      v4 = v4;
    }

    selectionSnapshot = [(PXPhotosGridAssetDecorationSource *)self selectionSnapshot];
    dataSource = [(PXPhotosGridAssetDecorationSource *)self dataSource];
    identifier = [dataSource identifier];
    section = [(PXPhotosGridAssetDecorationSource *)self section];

    v13[0] = identifier;
    v13[1] = section;
    v13[2] = v4;
    v13[3] = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [selectionSnapshot overallSelectionOrderIndexForIndexPath:v13];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *MEMORY[0x277D73D30];
  v5 = *(MEMORY[0x277D73D30] + 4);
  v6 = *(MEMORY[0x277D73D30] + 8);
  v7 = *(MEMORY[0x277D73D30] + 12);
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (id)selectedSpriteIndexesInLayout:(id)layout
{
  layoutCopy = layout;
  selectionSnapshot = [(PXPhotosGridAssetDecorationSource *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  if ([selectedIndexPaths count] < 1)
  {
    v12 = 0;
  }

  else
  {
    dataSource = [(PXPhotosGridAssetDecorationSource *)self dataSource];
    identifier = [dataSource identifier];
    dataSource2 = [selectionSnapshot dataSource];
    if (identifier != [dataSource2 identifier])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:405 description:{@"identifier mismatch between dataSource of %@ (dataSource = %@) and selectionSnapshot %@ (dataSource = %@)", self, dataSource, selectionSnapshot, dataSource2}];
    }

    v11 = [selectedIndexPaths itemIndexSetForDataSourceIdentifier:identifier section:{-[PXPhotosGridAssetDecorationSource section](self, "section")}];
    if (v11)
    {
      v12 = [(PXPhotosGridAssetDecorationSource *)self _spriteIndexesForItems:v11 inLayout:layoutCopy];
    }

    else
    {
      v13 = [selectedIndexPaths sectionIndexSetForDataSourceIdentifier:identifier];
      if ([v13 containsIndex:{-[PXPhotosGridAssetDecorationSource section](self, "section")}] && (objc_msgSend(selectionSnapshot, "dataSource"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "numberOfItemsInSection:", -[PXPhotosGridAssetDecorationSource section](self, "section")), v14, v15 >= 1))
      {
        v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
        v12 = [(PXPhotosGridAssetDecorationSource *)self _spriteIndexesForItems:v16 inLayout:layoutCopy];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

- (unint64_t)selectionDecorationAdditionsInLayout:(id)layout
{
  dataSource = [(PXPhotosGridAssetDecorationSource *)self dataSource];
  containerCollection = [dataSource containerCollection];
  px_isRecentlyDeletedSmartAlbum = [containerCollection px_isRecentlyDeletedSmartAlbum];

  if (px_isRecentlyDeletedSmartAlbum)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)selectionDecorationStyleInLayout:(id)layout
{
  layoutCopy = layout;
  viewEnvironment = [layoutCopy viewEnvironment];
  wantsFocusRing = [viewEnvironment wantsFocusRing];

  LOBYTE(viewEnvironment) = [(PXPhotosGridAssetDecorationSource *)self isSelectionLimitReached];
  isInSelectMode = [(PXPhotosGridAssetDecorationSource *)self isInSelectMode];
  if (viewEnvironment)
  {
    v8 = 5;
  }

  else
  {
    v9 = isInSelectMode | ~wantsFocusRing;
    if (isInSelectMode)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    if ((v9 & 1) == 0)
    {
      if ([(PXPhotosGridAssetDecorationSource *)self focusRingTypeInLayout:layoutCopy]== 1)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

- (int64_t)focusRingTypeInLayout:(id)layout
{
  layoutCopy = layout;
  if (objc_opt_respondsToSelector())
  {
    v5 = [layoutCopy focusRingTypeInLayout:layoutCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = layoutCopy;
      [v6 interItemSpacing];
      v8 = v7;
      [v6 interItemSpacing];
      v10 = v9;

      if (v8 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v8;
      }

      v5 = round(v11) >= [(PXPhotosGridAssetDecorationSource *)self interItemSpacingThresholdForExteriorFocusRingSelection];
    }

    else
    {
      objc_opt_class();
      v5 = (objc_opt_isKindOfClass() & 1) == 0;
    }
  }

  return v5;
}

- (void)_invalidateSharedLibraryDecoration
{
  decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  [decoratedLayout invalidateDecoration];
}

- (void)_invalidateTapbackDecoration
{
  decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  [decoratedLayout invalidateDecorationAndSprites];
}

- (void)_invalidateProgressDecoration
{
  decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  [decoratedLayout invalidateDecoration];
}

- (void)_updateDragDecoration
{
  v21 = *MEMORY[0x277D85DE8];
  draggedAssetReferences = [(PXPhotosGridAssetDecorationSource *)self draggedAssetReferences];
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = draggedAssetReferences;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x277D3CF78];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        *(&v15 + 1) = 0;
        dataSource = [(PXPhotosGridAssetDecorationSource *)self dataSource];
        v13 = dataSource;
        if (dataSource)
        {
          [dataSource indexPathForAssetReference:v11];
        }

        else
        {
          v15 = 0u;
        }

        if (v15 != v9 && *(&v15 + 1) == [(PXPhotosGridAssetDecorationSource *)self section])
        {
          [v4 addIndex:0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:{16, 0.0}];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v14 = v4;
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&self->_draggedItems, v14);
}

- (void)_invalidateDragDecoration
{
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 1) != 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosGridAssetDecorationSource _invalidateDragDecoration]"];
    [currentHandler handleFailureInFunction:v3 file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:313 description:{@"invalidating %lu after it already has been updated", 1}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 1uLL;
  decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  [decoratedLayout invalidateDecoration];
}

- (BOOL)isStacksBadgeEnabled
{
  v2 = +[PXGridZeroSettingsProvider sharedInstance];
  isStacksEnabled = [v2 isStacksEnabled];

  return isStacksEnabled;
}

- (id)_displayAssetForItem:(int64_t)item
{
  dataSource = [(PXPhotosGridAssetDecorationSource *)self dataSource];
  section = [(PXPhotosGridAssetDecorationSource *)self section];
  v9[0] = [dataSource identifier];
  v9[1] = section;
  v9[2] = item;
  v9[3] = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [dataSource assetAtItemIndexPath:v9];

  return v7;
}

- (id)_spriteIndexesForItems:(id)items inLayout:(id)layout
{
  itemsCopy = items;
  layoutCopy = layout;
  if (itemsCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [layoutCopy spriteIndexesForItems:itemsCopy];
    }

    else
    {
      v7 = itemsCopy;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)expectedInsetsForItem:(int64_t)item
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setAssetImportStatusManager:(id)manager
{
  managerCopy = manager;
  p_assetImportStatusManager = &self->_assetImportStatusManager;
  if (self->_assetImportStatusManager != managerCopy)
  {
    v8 = managerCopy;
    objc_storeStrong(p_assetImportStatusManager, manager);
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];

    managerCopy = v8;
  }

  MEMORY[0x2821F96F8](p_assetImportStatusManager, managerCopy);
}

- (void)setTapbackStatusManager:(id)manager
{
  managerCopy = manager;
  p_tapbackStatusManager = &self->_tapbackStatusManager;
  if (self->_tapbackStatusManager != managerCopy)
  {
    v7 = managerCopy;
    objc_storeStrong(p_tapbackStatusManager, manager);
    p_tapbackStatusManager = [(PXPhotosGridAssetDecorationSource *)self _invalidateTapbackDecoration];
    managerCopy = v7;
  }

  MEMORY[0x2821F96F8](p_tapbackStatusManager, managerCopy);
}

- (void)setLoadingStatusManager:(id)manager
{
  managerCopy = manager;
  loadingStatusManager = self->_loadingStatusManager;
  if (loadingStatusManager != managerCopy)
  {
    v7 = managerCopy;
    [(PXLoadingStatusManager *)loadingStatusManager unregisterObserver:self];
    objc_storeStrong(&self->_loadingStatusManager, manager);
    [(PXLoadingStatusManager *)self->_loadingStatusManager registerObserver:self];
    loadingStatusManager = [(PXPhotosGridAssetDecorationSource *)self _invalidateProgressDecoration];
    managerCopy = v7;
  }

  MEMORY[0x2821F96F8](loadingStatusManager, managerCopy);
}

- (void)setDraggedAssetReferences:(id)references
{
  if (self->_draggedAssetReferences != references)
  {
    v5 = [references copy];
    draggedAssetReferences = self->_draggedAssetReferences;
    self->_draggedAssetReferences = v5;

    [(PXPhotosGridAssetDecorationSource *)self _invalidateDragDecoration];
  }
}

- (void)setItemsWithCoveredBottomTrailingCorner:(id)corner
{
  cornerCopy = corner;
  v5 = cornerCopy;
  if (self->_itemsWithCoveredBottomTrailingCorner != cornerCopy)
  {
    v9 = cornerCopy;
    cornerCopy = [(NSIndexSet *)cornerCopy isEqual:?];
    v5 = v9;
    if ((cornerCopy & 1) == 0)
    {
      v6 = [(NSIndexSet *)v9 copy];
      itemsWithCoveredBottomTrailingCorner = self->_itemsWithCoveredBottomTrailingCorner;
      self->_itemsWithCoveredBottomTrailingCorner = v6;

      decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
      [decoratedLayout invalidateDecoration];

      v5 = v9;
    }
  }

  MEMORY[0x2821F96F8](cornerCopy, v5);
}

- (void)setHidesInteractiveFavoriteBadges:(BOOL)badges
{
  if (self->_hidesInteractiveFavoriteBadges != badges)
  {
    self->_hidesInteractiveFavoriteBadges = badges;
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];
  }
}

- (void)setDurationAlwaysHidden:(BOOL)hidden
{
  if (self->_durationAlwaysHidden != hidden)
  {
    self->_durationAlwaysHidden = hidden;
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];
  }
}

- (void)setForbiddenBadges:(unint64_t)badges
{
  if (self->_forbiddenBadges != badges)
  {
    self->_forbiddenBadges = badges;
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];
  }
}

- (void)setEnableSpatialBadges:(BOOL)badges
{
  if (self->_enableSpatialBadges != badges)
  {
    self->_enableSpatialBadges = badges;
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];
  }
}

- (void)setEnableDebugBadgeColors:(BOOL)colors
{
  if (self->_enableDebugBadgeColors != colors)
  {
    self->_enableDebugBadgeColors = colors;
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];
  }
}

- (void)setEnableDebugDecoration:(BOOL)decoration
{
  if (self->_enableDebugDecoration != decoration)
  {
    self->_enableDebugDecoration = decoration;
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];
  }
}

- (void)setWantsSensitiveWarningDecorations:(BOOL)decorations
{
  if (self->_wantsSensitiveWarningDecorations != decorations)
  {
    self->_wantsSensitiveWarningDecorations = decorations;
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];
  }
}

- (void)setWantsStacksDecorations:(BOOL)decorations
{
  if (self->_wantsStacksDecorations != decorations)
  {
    self->_wantsStacksDecorations = decorations;
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];
  }
}

- (void)setWantsSharedLibraryDecorations:(BOOL)decorations
{
  if (self->_wantsSharedLibraryDecorations != decorations)
  {
    self->_wantsSharedLibraryDecorations = decorations;
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];
  }
}

- (void)setIsInSelectMode:(BOOL)mode
{
  if (self->_isInSelectMode != mode)
  {
    self->_isInSelectMode = mode;
    tapbackStatusManager = [(PXPhotosGridAssetDecorationSource *)self tapbackStatusManager];

    if (tapbackStatusManager)
    {
      [(PXPhotosGridAssetDecorationSource *)self _invalidateTapbackDecoration];
    }

    assetImportStatusManager = [(PXPhotosGridAssetDecorationSource *)self assetImportStatusManager];

    if (assetImportStatusManager)
    {
      decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
      [decoratedLayout invalidateDecoration];
    }
  }
}

- (void)setSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_selectionSnapshot != snapshotCopy)
  {
    objc_storeStrong(&self->_selectionSnapshot, snapshot);
    [(PXPhotosGridAssetDecorationSource *)self setSelectionLimitReached:[(PXSelectionSnapshot *)snapshotCopy isSelectionLimitReached]];
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];

    mEMORY[0x277D73D00] = [MEMORY[0x277D73D00] sharedInstance];
    enableTungstenKeyboardNavigation = [mEMORY[0x277D73D00] enableTungstenKeyboardNavigation];

    if (enableTungstenKeyboardNavigation)
    {
      decoratedItemsLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedItemsLayout];
      v10 = decoratedItemsLayout;
      if (snapshotCopy)
      {
        [(PXSelectionSnapshot *)snapshotCopy pendingIndexPath];
        [v10 setItem:0x7FFFFFFFFFFFFFFFLL forStylableType:0 animated:1];
        v12 = 0u;
        v13 = 0u;
        [(PXSelectionSnapshot *)snapshotCopy cursorIndexPath];
      }

      else
      {
        [decoratedItemsLayout setItem:0x7FFFFFFFFFFFFFFFLL forStylableType:0 animated:1];
        v12 = 0u;
        v13 = 0u;
      }

      [v10 setItem:0x7FFFFFFFFFFFFFFFLL forStylableType:1 animated:{1, v12, v13}];
    }

    if (snapshotCopy)
    {
      [(PXSelectionSnapshot *)snapshotCopy pressedIndexPath];
    }

    decoratedItemsLayout2 = [(PXPhotosGridAssetDecorationSource *)self decoratedItemsLayout];
    [decoratedItemsLayout2 setItem:0x7FFFFFFFFFFFFFFFLL forStylableType:2 animated:1];
  }
}

- (void)setDataSource:(id)source section:(int64_t)section
{
  sourceCopy = source;
  if (*&self->_dataSource != __PAIR128__(section, sourceCopy))
  {
    self->_section = section;
    v9 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];

    sourceCopy = v9;
  }
}

- (void)setDecoratedLayout:(id)layout
{
  obj = layout;
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_decoratedLayout, obj);
    decoratedLayout = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];

    v5 = obj;
  }
}

@end