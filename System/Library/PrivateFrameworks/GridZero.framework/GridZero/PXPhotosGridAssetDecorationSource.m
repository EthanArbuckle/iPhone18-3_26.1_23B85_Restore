@interface PXPhotosGridAssetDecorationSource
- ($B01073AA55A67B413588F7AD9EFB6822)assetBackgroundCornerRadiusForSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
- (BOOL)hasTapbacksForSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
- (BOOL)isSharedLibraryBadgeEnabled;
- (BOOL)isStacksBadgeEnabled;
- (BOOL)shouldShowSavedToLibraryBadgeForAsset:(id)a3 inLayout:(id)a4;
- (BOOL)wantsCaptionDecorationsInLayout:(id)a3;
- (BOOL)wantsTapbackDecorationInLayout:(id)a3;
- (CGSize)expectedInsetsForItem:(int64_t)a3;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (PXGAssetDecorationInfo)assetDecorationInfoForAsset:(SEL)a3 atSpriteIndex:(id)a4 inLayout:(unsigned int)a5;
- (PXGItemsLayout)decoratedItemsLayout;
- (PXGLayout)decoratedLayout;
- (PXPhotosGridAssetDecorationSource)init;
- (id)_displayAssetForItem:(int64_t)a3;
- (id)_spriteIndexesForItems:(id)a3 inLayout:(id)a4;
- (id)debugDecorationAtSpriteIndex:(unsigned int)a3 asset:(id)a4 inLayout:(id)a5;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4;
- (id)draggingSpriteIndexesInLayout:(id)a3;
- (id)loadStatusForAsset:(id)a3 atSpriteIndex:(unsigned int)a4 inLayout:(id)a5;
- (id)selectedSpriteIndexesInLayout:(id)a3;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (int64_t)focusRingTypeInLayout:(id)a3;
- (int64_t)overallSelectionOrderAtSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
- (int64_t)selectionDecorationStyleInLayout:(id)a3;
- (unint64_t)desiredPlaceholderStyleInLayout:(id)a3;
- (unint64_t)selectionDecorationAdditionsInLayout:(id)a3;
- (void)_invalidateDragDecoration;
- (void)_invalidateProgressDecoration;
- (void)_invalidateSharedLibraryDecoration;
- (void)_invalidateTapbackDecoration;
- (void)_updateDragDecoration;
- (void)loadingStatusManager:(id)a3 didUpdateLoadingStatus:(id)a4 forItemIdentifier:(id)a5;
- (void)observeIsInCloud:(BOOL)a3 forDisplayAsset:(id)a4;
- (void)setAssetImportStatusManager:(id)a3;
- (void)setDataSource:(id)a3 section:(int64_t)a4;
- (void)setDecoratedLayout:(id)a3;
- (void)setDraggedAssetReferences:(id)a3;
- (void)setDurationAlwaysHidden:(BOOL)a3;
- (void)setEnableDebugBadgeColors:(BOOL)a3;
- (void)setEnableDebugDecoration:(BOOL)a3;
- (void)setEnableSpatialBadges:(BOOL)a3;
- (void)setForbiddenBadges:(unint64_t)a3;
- (void)setHidesInteractiveFavoriteBadges:(BOOL)a3;
- (void)setIsInSelectMode:(BOOL)a3;
- (void)setItemsWithCoveredBottomTrailingCorner:(id)a3;
- (void)setLoadingStatusManager:(id)a3;
- (void)setSelectionSnapshot:(id)a3;
- (void)setTapbackStatusManager:(id)a3;
- (void)setWantsSensitiveWarningDecorations:(BOOL)a3;
- (void)setWantsSharedLibraryDecorations:(BOOL)a3;
- (void)setWantsStacksDecorations:(BOOL)a3;
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
    v4 = [MEMORY[0x277D3CCE0] defaultManager];
    badgeManager = v3->_badgeManager;
    v3->_badgeManager = v4;

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
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v3 selector:sel__gridPreferencesDidChange_ name:@"PXGridZeroSettingsChangedNotification" object:0];
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
  v2 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
      v4 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosGridAssetDecorationSource update]"];
      [v4 handleFailureInFunction:v5 file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

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
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosGridAssetDecorationSource update]"];
      [v7 handleFailureInFunction:v6 file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:309 description:{@"still needing to update %lu after update pass", self->_updateFlags.needsUpdate}];
    }
  }
}

- (BOOL)isSharedLibraryBadgeEnabled
{
  cachedSharedLibraryBadgeEnabledSettingValue = self->_cachedSharedLibraryBadgeEnabledSettingValue;
  if (!cachedSharedLibraryBadgeEnabledSettingValue)
  {
    v4 = +[PXGridZeroSettingsProvider sharedInstance];
    v5 = [v4 isSharedLibraryBadgingEnabled];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
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

- (void)loadingStatusManager:(id)a3 didUpdateLoadingStatus:(id)a4 forItemIdentifier:(id)a5
{
  if (!self->_isGettingLoadStatus)
  {
    [(PXPhotosGridAssetDecorationSource *)self _invalidateProgressDecoration:a3];
  }
}

- (id)debugDecorationAtSpriteIndex:(unsigned int)a3 asset:(id)a4 inLayout:(id)a5
{
  v32[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
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
  [v8 enumerateSpritesInRange:a3 | 0x100000000 usingBlock:v20];
  [v7 preferredCropRect];
  PXRectFlippedVertically();
  [v8 displayScale];
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
    v13 = ;
  }

  else
  {
    v13 = [MEMORY[0x277D75348] greenColor];
  }

  v15 = v13;
  v31[0] = *MEMORY[0x277D73D20];
  v16 = [v13 colorWithAlphaComponent:0.150000006];
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

- (void)observeIsInCloud:(BOOL)a3 forDisplayAsset:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PXPhotosGridAssetDecorationSource_observeIsInCloud_forDisplayAsset___block_invoke;
  block[3] = &unk_278298348;
  v9 = v6;
  v10 = self;
  v11 = a3;
  v7 = v6;
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

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v7 = a4;
  if (!v7)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    [v31 handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:699 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v33}];
LABEL_25:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v34 = objc_opt_class();
    v33 = NSStringFromClass(v34);
    v35 = [v7 px_descriptionForAssertionMessage];
    [v31 handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:699 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v33, v35}];

    goto LABEL_25;
  }

LABEL_3:
  v8 = [v7 itemsLayout];
  v41 = -1;
  v9 = 0;
  if ([v7 isSpriteIndex:v4 decoratingSpriteWithIndex:&v41] && v8)
  {
    v36 = [v8 itemForSpriteIndex:{objc_msgSend(v7, "convertSpriteIndex:toDescendantLayout:", v41, v8)}];
    v10 = [(PXPhotosGridAssetDecorationSource *)self _displayAssetForItem:?];
    v11 = [(PXPhotosGridAssetDecorationSource *)self dataSource];
    v12 = [v7 currentDataSourceChange];
    v13 = v10;
    if ([v7 appearState] == 1)
    {
      v13 = v10;
      if (v12)
      {
        v14 = [v12 changeDetails];
        v15 = [v14 lastObject];
        v16 = v11;
        v17 = [v15 toDataSourceIdentifier];
        v18 = [v16 identifier];

        v13 = v10;
        v19 = v17 == v18;
        v11 = v16;
        if (v19)
        {
          v20 = [v16 identifier];
          v21 = [(PXPhotosGridAssetDecorationSource *)self section];
          v39 = 0u;
          v40 = 0u;
          v22 = MEMORY[0x277D3CDD0];
          v23 = [v12 changeDetails];
          *&v37 = v20;
          *(&v37 + 1) = v21;
          *&v38 = v36;
          *(&v38 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          [v22 indexPathAfterRevertingChanges:v23 fromIndexPath:&v37 hasIncrementalChanges:0 objectChanged:0];

          v13 = v10;
          if (v39 != *MEMORY[0x277D3CF78])
          {
            v13 = v10;
            if (v40 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v13 = v10;
              if (*(&v40 + 1) == 0x7FFFFFFFFFFFFFFFLL)
              {
                v24 = [v12 dataSourceBeforeChanges];
                v37 = v39;
                v38 = v40;
                v13 = [v24 objectAtIndexPath:&v37];
              }
            }
          }

          v11 = v16;
        }
      }
    }

    v25 = [(PXPhotosGridAssetDecorationSource *)self decorationDataSource];

    if (v25)
    {
      v26 = [(PXPhotosGridAssetDecorationSource *)self decorationDataSource];
      v9 = [v26 userDataForAsset:v10];
    }

    else if (objc_opt_respondsToSelector())
    {
      v9 = [(PXTapbackStatusManager *)self->_tapbackStatusManager tapbackUserDataForAsset:v10 previousAsset:v13];
    }

    else
    {
      v27 = [(PXPhotosGridAssetDecorationSource *)self dataSource];
      v28 = [v27 identifier];
      v29 = [(PXPhotosGridAssetDecorationSource *)self section];
      *&v39 = v28;
      *(&v39 + 1) = v29;
      *&v40 = v36;
      *(&v40 + 1) = 0x7FFFFFFFFFFFFFFFLL;
      v9 = [v27 assetReferenceAtItemIndexPath:&v39];
    }
  }

  return v9;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v7 = a4;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v18 = [v7 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:679 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v16, v18}];
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:679 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v16}];
  }

LABEL_3:
  v8 = [v7 decoratingTypeForSpriteIndex:v4];
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
      v10 = NSClassFromString(&cfstr_Ckphotogridtap.isa);
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  tapbackStatusManager = self->_tapbackStatusManager;
LABEL_8:
  v10 = [tapbackStatusManager decorationViewClass];
LABEL_9:
  v11 = v10;
LABEL_14:
  v12 = v11;

  return v11;
}

- (BOOL)hasTapbacksForSpriteIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = -[PXPhotosGridAssetDecorationSource _displayAssetForItem:](self, "_displayAssetForItem:", [v6 itemForSpriteIndex:v4]);
    v8 = [(PXTapbackStatusManager *)self->_tapbackStatusManager hasTapbacksForAsset:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)wantsTapbackDecorationInLayout:(id)a3
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

- (unint64_t)desiredPlaceholderStyleInLayout:(id)a3
{
  v3 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  v4 = [v3 contentSource];
  v5 = [v4 desiredPlaceholderStyleInLayout:v3];

  return v5;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4
{
  v7 = a4;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v13 = [MEMORY[0x277CCA890] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v17 = [v7 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:636 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v15, v17}];
  }

  else
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:636 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v15}];
  }

LABEL_3:
  v8 = [v7 decoratedLayout];
  v9 = [v8 contentSource];
  v10 = [v9 displayAssetFetchResultForSpritesInRange:objc_msgSend(v7 inLayout:{"decoratedIndexForDecoratingIndex:", a3) | 0x100000000, v8}];
  [v7 numberOfDecoratingSpritesPerDecoratedSprite];
  v11 = PXDisplayAssetFetchResultScaledWithMultiplier();

  return v11;
}

- ($B01073AA55A67B413588F7AD9EFB6822)assetBackgroundCornerRadiusForSpriteIndex:(unsigned int)a3 inLayout:(id)a4
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (id)loadStatusForAsset:(id)a3 atSpriteIndex:(unsigned int)a4 inLayout:(id)a5
{
  self->_isGettingLoadStatus = 1;
  v6 = a3;
  v7 = [(PXPhotosGridAssetDecorationSource *)self loadingStatusManager];
  v8 = [v6 uuid];

  v9 = [v7 loadingStatusForItemIdentifier:v8];

  self->_isGettingLoadStatus = 0;

  return v9;
}

- (PXGAssetDecorationInfo)assetDecorationInfoForAsset:(SEL)a3 atSpriteIndex:(id)a4 inLayout:(unsigned int)a5
{
  v11 = a4;
  v12 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PXPhotosGridAssetDecorationSource_assetDecorationInfoForAsset_atSpriteIndex_inLayout___block_invoke;
  aBlock[3] = &unk_278298320;
  v13 = v12;
  v42 = self;
  v43 = a3;
  v41 = v13;
  v44 = a5;
  v14 = _Block_copy(aBlock);
  v15 = [(PXPhotosGridAssetDecorationSource *)self wantsFileSizeBadge];
  v16 = [(PXPhotosGridAssetDecorationSource *)self durationAlwaysHidden];
  v17 = [(PXPhotosGridAssetDecorationSource *)self enableSpatialBadges];
  v31 = 0u;
  v39 = 0u;
  badgeManager = self->_badgeManager;
  if (badgeManager)
  {
    v19 = 2;
    if (!v15)
    {
      v19 = 0;
    }

    if (v16)
    {
      v19 |= 4uLL;
    }

    if (v17)
    {
      v20 = v19 | 8;
    }

    else
    {
      v20 = v19;
    }

    [(PXAssetBadgeManager *)badgeManager badgeInfoForAsset:v11 inCollection:0 options:v20, 0];
  }

  assetUUIDsInCloud = self->_assetUUIDsInCloud;
  v22 = [v11 uuid];
  LODWORD(assetUUIDsInCloud) = [(NSMutableSet *)assetUUIDsInCloud containsObject:v22];

  if (assetUUIDsInCloud)
  {
    v32 |= 0x20uLL;
  }

  if ([(PXPhotosGridAssetDecorationSource *)self shouldShowSavedToLibraryBadgeForAsset:v11 inLayout:v13, v32])
  {
    v33 |= 0x200000000uLL;
  }

  if (-[PXPhotosGridAssetDecorationSource wantsSharedLibraryDecorations](self, "wantsSharedLibraryDecorations", v33) && (-[PXPhotosGridAssetDecorationSource isInSelectMode](self, "isInSelectMode") && !PFIsPhotosPicker() || -[PXPhotosGridAssetDecorationSource isSharedLibraryBadgeEnabled](self, "isSharedLibraryBadgeEnabled")) && [v11 isInSharedLibrary])
  {
    v34 |= 0x2000000000uLL;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(PXPhotosGridAssetDecorationSource *)self wantsSensitiveWarningDecorations])
  {
    if ([v11 isContentAnalyzedAsPreviewable])
    {
      if (![v11 needsSensitivityProtection])
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

  v26 = [(PXPhotosGridAssetDecorationSource *)self badgesModifier];

  if (v26)
  {
    v27 = [(PXPhotosGridAssetDecorationSource *)self badgesModifier];
    v28 = (v27)[2](v27, v11, v38);
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

- (BOOL)shouldShowSavedToLibraryBadgeForAsset:(id)a3 inLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_assetImportStatusManager && [(PXPhotosGridAssetDecorationSource *)self isInSelectMode]&& [(PXAssetImportStatusManager *)self->_assetImportStatusManager importStateForAsset:v6]== 2;

  return v8;
}

- (id)draggingSpriteIndexesInLayout:(id)a3
{
  v4 = a3;
  [(PXPhotosGridAssetDecorationSource *)self update];
  v5 = [(PXPhotosGridAssetDecorationSource *)self _spriteIndexesForItems:self->_draggedItems inLayout:v4];

  return v5;
}

- (BOOL)wantsCaptionDecorationsInLayout:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 itemCaptionsVisible];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)overallSelectionOrderAtSpriteIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ([(PXPhotosGridAssetDecorationSource *)self wantsNumberedSelectionStyle])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v6 itemForSpriteIndex:v4];
    }

    else
    {
      v4 = v4;
    }

    v8 = [(PXPhotosGridAssetDecorationSource *)self selectionSnapshot];
    v9 = [(PXPhotosGridAssetDecorationSource *)self dataSource];
    v10 = [v9 identifier];
    v11 = [(PXPhotosGridAssetDecorationSource *)self section];

    v13[0] = v10;
    v13[1] = v11;
    v13[2] = v4;
    v13[3] = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [v8 overallSelectionOrderIndexForIndexPath:v13];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4
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

- (id)selectedSpriteIndexesInLayout:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotosGridAssetDecorationSource *)self selectionSnapshot];
  v7 = [v6 selectedIndexPaths];
  if ([v7 count] < 1)
  {
    v12 = 0;
  }

  else
  {
    v8 = [(PXPhotosGridAssetDecorationSource *)self dataSource];
    v9 = [v8 identifier];
    v10 = [v6 dataSource];
    if (v9 != [v10 identifier])
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:405 description:{@"identifier mismatch between dataSource of %@ (dataSource = %@) and selectionSnapshot %@ (dataSource = %@)", self, v8, v6, v10}];
    }

    v11 = [v7 itemIndexSetForDataSourceIdentifier:v9 section:{-[PXPhotosGridAssetDecorationSource section](self, "section")}];
    if (v11)
    {
      v12 = [(PXPhotosGridAssetDecorationSource *)self _spriteIndexesForItems:v11 inLayout:v5];
    }

    else
    {
      v13 = [v7 sectionIndexSetForDataSourceIdentifier:v9];
      if ([v13 containsIndex:{-[PXPhotosGridAssetDecorationSource section](self, "section")}] && (objc_msgSend(v6, "dataSource"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "numberOfItemsInSection:", -[PXPhotosGridAssetDecorationSource section](self, "section")), v14, v15 >= 1))
      {
        v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
        v12 = [(PXPhotosGridAssetDecorationSource *)self _spriteIndexesForItems:v16 inLayout:v5];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

- (unint64_t)selectionDecorationAdditionsInLayout:(id)a3
{
  v3 = [(PXPhotosGridAssetDecorationSource *)self dataSource];
  v4 = [v3 containerCollection];
  v5 = [v4 px_isRecentlyDeletedSmartAlbum];

  if (v5)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)selectionDecorationStyleInLayout:(id)a3
{
  v4 = a3;
  v5 = [v4 viewEnvironment];
  v6 = [v5 wantsFocusRing];

  LOBYTE(v5) = [(PXPhotosGridAssetDecorationSource *)self isSelectionLimitReached];
  v7 = [(PXPhotosGridAssetDecorationSource *)self isInSelectMode];
  if (v5)
  {
    v8 = 5;
  }

  else
  {
    v9 = v7 | ~v6;
    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    if ((v9 & 1) == 0)
    {
      if ([(PXPhotosGridAssetDecorationSource *)self focusRingTypeInLayout:v4]== 1)
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

- (int64_t)focusRingTypeInLayout:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 focusRingTypeInLayout:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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
  v2 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  [v2 invalidateDecoration];
}

- (void)_invalidateTapbackDecoration
{
  v2 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  [v2 invalidateDecorationAndSprites];
}

- (void)_invalidateProgressDecoration
{
  v2 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  [v2 invalidateDecoration];
}

- (void)_updateDragDecoration
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(PXPhotosGridAssetDecorationSource *)self draggedAssetReferences];
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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
        v12 = [(PXPhotosGridAssetDecorationSource *)self dataSource];
        v13 = v12;
        if (v12)
        {
          [v12 indexPathForAssetReference:v11];
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
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosGridAssetDecorationSource _invalidateDragDecoration]"];
    [v2 handleFailureInFunction:v3 file:@"PXPhotosGridAssetDecorationSource.m" lineNumber:313 description:{@"invalidating %lu after it already has been updated", 1}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 1uLL;
  v4 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
  [v4 invalidateDecoration];
}

- (BOOL)isStacksBadgeEnabled
{
  v2 = +[PXGridZeroSettingsProvider sharedInstance];
  v3 = [v2 isStacksEnabled];

  return v3;
}

- (id)_displayAssetForItem:(int64_t)a3
{
  v5 = [(PXPhotosGridAssetDecorationSource *)self dataSource];
  v6 = [(PXPhotosGridAssetDecorationSource *)self section];
  v9[0] = [v5 identifier];
  v9[1] = v6;
  v9[2] = a3;
  v9[3] = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [v5 assetAtItemIndexPath:v9];

  return v7;
}

- (id)_spriteIndexesForItems:(id)a3 inLayout:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 spriteIndexesForItems:v5];
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGSize)expectedInsetsForItem:(int64_t)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setAssetImportStatusManager:(id)a3
{
  v5 = a3;
  p_assetImportStatusManager = &self->_assetImportStatusManager;
  if (self->_assetImportStatusManager != v5)
  {
    v8 = v5;
    objc_storeStrong(p_assetImportStatusManager, a3);
    v7 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v7 invalidateDecoration];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_assetImportStatusManager, v5);
}

- (void)setTapbackStatusManager:(id)a3
{
  v5 = a3;
  p_tapbackStatusManager = &self->_tapbackStatusManager;
  if (self->_tapbackStatusManager != v5)
  {
    v7 = v5;
    objc_storeStrong(p_tapbackStatusManager, a3);
    p_tapbackStatusManager = [(PXPhotosGridAssetDecorationSource *)self _invalidateTapbackDecoration];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_tapbackStatusManager, v5);
}

- (void)setLoadingStatusManager:(id)a3
{
  v5 = a3;
  loadingStatusManager = self->_loadingStatusManager;
  if (loadingStatusManager != v5)
  {
    v7 = v5;
    [(PXLoadingStatusManager *)loadingStatusManager unregisterObserver:self];
    objc_storeStrong(&self->_loadingStatusManager, a3);
    [(PXLoadingStatusManager *)self->_loadingStatusManager registerObserver:self];
    loadingStatusManager = [(PXPhotosGridAssetDecorationSource *)self _invalidateProgressDecoration];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](loadingStatusManager, v5);
}

- (void)setDraggedAssetReferences:(id)a3
{
  if (self->_draggedAssetReferences != a3)
  {
    v5 = [a3 copy];
    draggedAssetReferences = self->_draggedAssetReferences;
    self->_draggedAssetReferences = v5;

    [(PXPhotosGridAssetDecorationSource *)self _invalidateDragDecoration];
  }
}

- (void)setItemsWithCoveredBottomTrailingCorner:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_itemsWithCoveredBottomTrailingCorner != v4)
  {
    v9 = v4;
    v4 = [(NSIndexSet *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [(NSIndexSet *)v9 copy];
      itemsWithCoveredBottomTrailingCorner = self->_itemsWithCoveredBottomTrailingCorner;
      self->_itemsWithCoveredBottomTrailingCorner = v6;

      v8 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
      [v8 invalidateDecoration];

      v5 = v9;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setHidesInteractiveFavoriteBadges:(BOOL)a3
{
  if (self->_hidesInteractiveFavoriteBadges != a3)
  {
    self->_hidesInteractiveFavoriteBadges = a3;
    v4 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v4 invalidateDecoration];
  }
}

- (void)setDurationAlwaysHidden:(BOOL)a3
{
  if (self->_durationAlwaysHidden != a3)
  {
    self->_durationAlwaysHidden = a3;
    v4 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v4 invalidateDecoration];
  }
}

- (void)setForbiddenBadges:(unint64_t)a3
{
  if (self->_forbiddenBadges != a3)
  {
    self->_forbiddenBadges = a3;
    v4 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v4 invalidateDecoration];
  }
}

- (void)setEnableSpatialBadges:(BOOL)a3
{
  if (self->_enableSpatialBadges != a3)
  {
    self->_enableSpatialBadges = a3;
    v4 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v4 invalidateDecoration];
  }
}

- (void)setEnableDebugBadgeColors:(BOOL)a3
{
  if (self->_enableDebugBadgeColors != a3)
  {
    self->_enableDebugBadgeColors = a3;
    v4 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v4 invalidateDecoration];
  }
}

- (void)setEnableDebugDecoration:(BOOL)a3
{
  if (self->_enableDebugDecoration != a3)
  {
    self->_enableDebugDecoration = a3;
    v4 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v4 invalidateDecoration];
  }
}

- (void)setWantsSensitiveWarningDecorations:(BOOL)a3
{
  if (self->_wantsSensitiveWarningDecorations != a3)
  {
    self->_wantsSensitiveWarningDecorations = a3;
    v4 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v4 invalidateDecoration];
  }
}

- (void)setWantsStacksDecorations:(BOOL)a3
{
  if (self->_wantsStacksDecorations != a3)
  {
    self->_wantsStacksDecorations = a3;
    v4 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v4 invalidateDecoration];
  }
}

- (void)setWantsSharedLibraryDecorations:(BOOL)a3
{
  if (self->_wantsSharedLibraryDecorations != a3)
  {
    self->_wantsSharedLibraryDecorations = a3;
    v4 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v4 invalidateDecoration];
  }
}

- (void)setIsInSelectMode:(BOOL)a3
{
  if (self->_isInSelectMode != a3)
  {
    self->_isInSelectMode = a3;
    v4 = [(PXPhotosGridAssetDecorationSource *)self tapbackStatusManager];

    if (v4)
    {
      [(PXPhotosGridAssetDecorationSource *)self _invalidateTapbackDecoration];
    }

    v5 = [(PXPhotosGridAssetDecorationSource *)self assetImportStatusManager];

    if (v5)
    {
      v6 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
      [v6 invalidateDecoration];
    }
  }
}

- (void)setSelectionSnapshot:(id)a3
{
  v5 = a3;
  if (self->_selectionSnapshot != v5)
  {
    objc_storeStrong(&self->_selectionSnapshot, a3);
    [(PXPhotosGridAssetDecorationSource *)self setSelectionLimitReached:[(PXSelectionSnapshot *)v5 isSelectionLimitReached]];
    v6 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v6 invalidateDecoration];

    v7 = [MEMORY[0x277D73D00] sharedInstance];
    v8 = [v7 enableTungstenKeyboardNavigation];

    if (v8)
    {
      v9 = [(PXPhotosGridAssetDecorationSource *)self decoratedItemsLayout];
      v10 = v9;
      if (v5)
      {
        [(PXSelectionSnapshot *)v5 pendingIndexPath];
        [v10 setItem:0x7FFFFFFFFFFFFFFFLL forStylableType:0 animated:1];
        v12 = 0u;
        v13 = 0u;
        [(PXSelectionSnapshot *)v5 cursorIndexPath];
      }

      else
      {
        [v9 setItem:0x7FFFFFFFFFFFFFFFLL forStylableType:0 animated:1];
        v12 = 0u;
        v13 = 0u;
      }

      [v10 setItem:0x7FFFFFFFFFFFFFFFLL forStylableType:1 animated:{1, v12, v13}];
    }

    if (v5)
    {
      [(PXSelectionSnapshot *)v5 pressedIndexPath];
    }

    v11 = [(PXPhotosGridAssetDecorationSource *)self decoratedItemsLayout];
    [v11 setItem:0x7FFFFFFFFFFFFFFFLL forStylableType:2 animated:1];
  }
}

- (void)setDataSource:(id)a3 section:(int64_t)a4
{
  v7 = a3;
  if (*&self->_dataSource != __PAIR128__(a4, v7))
  {
    self->_section = a4;
    v9 = v7;
    objc_storeStrong(&self->_dataSource, a3);
    v8 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v8 invalidateDecoration];

    v7 = v9;
  }
}

- (void)setDecoratedLayout:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_decoratedLayout, obj);
    v6 = [(PXPhotosGridAssetDecorationSource *)self decoratedLayout];
    [v6 invalidateDecoration];

    v5 = obj;
  }
}

@end