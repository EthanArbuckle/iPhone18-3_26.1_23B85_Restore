@interface GKGridLayout
- (BOOL)_areWePortrait;
- (BOOL)shouldSlideInSupplementaryElementOfKind:(id)kind forUpdateItem:(id)item atIndexPath:(id)path;
- (BOOL)shouldSlideOutSupplementaryElementOfKind:(id)kind forUpdateItem:(id)item atIndexPath:(id)path;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)result;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)result withScrollingVelocity:(CGPoint)velocity;
- (CGRect)layoutBounds;
- (CGSize)_sizeAdjustedForTabBarSettingsBasedOnSize:(CGSize)size;
- (CGSize)collectionViewContentSize;
- (CGSize)laidOutContentSize;
- (CGSize)minimumLaidOutContentSize;
- (CGSize)oldLaidOutContentSize;
- (GKGridLayout)init;
- (GKSectionMetrics)defaultSectionMetricsInternal;
- (double)applyBottomPinningToAttributes:(id)attributes minY:(double)y maxY:(double)maxY;
- (double)applyTopPinningToAttributes:(id)attributes minY:(double)y maxY:(double)maxY;
- (double)calculatedBottomPaddingForSection:(int64_t)section;
- (double)layoutBottomPinningAttributes:(id)attributes minY:(double)y maxY:(double)maxY;
- (double)layoutTopPinningAttributes:(id)attributes minY:(double)y maxY:(double)maxY;
- (double)scale;
- (double)yOffsetForSection:(int64_t)section;
- (double)yOffsetForSlidingUpdate;
- (id)_animationForReusableView:(id)view toLayoutAttributes:(id)attributes type:(unint64_t)type;
- (id)_existingPresentationDataForSection:(int64_t)section;
- (id)_gkDescriptionWithChildren:(int64_t)children;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)finalLayoutAttributesForSlidingAwayItemAtIndexPath:(id)path;
- (id)firstVisibleIndexAtOrAfterItem:(int64_t)item itemCount:(int64_t)count inSection:(int64_t)section;
- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)kind;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)initialLayoutAttributesForSlidingInItemAtIndexPath:(id)path;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (id)metricDataForKey:(id)key;
- (id)metricDataForSection:(int64_t)section;
- (id)metricsForSection:(int64_t)section;
- (id)presentationDataForSection:(int64_t)section;
- (id)revealMoreForSectionIndex:(int64_t)index;
- (id)revealMoreForSectionIndex:(int64_t)index revealCount:(unint64_t)count andDeleteItemCount:(unint64_t)itemCount;
- (int64_t)_prepareOverlayLayoutForSection:(int64_t)section offset:(int64_t)offset;
- (int64_t)_prepareSupplementaryLayoutForSection:(int64_t)section atLocation:(unint64_t)location offset:(int64_t)offset globalOffset:(int64_t *)globalOffset;
- (int64_t)indexOfSupplementaryMetricsOfKind:(id)kind inList:(id)list;
- (int64_t)searchResultsCount;
- (unint64_t)_prepareItemLayoutForSection:(int64_t)section;
- (unint64_t)currentMaxVisibleItemCountForSection:(int64_t)section;
- (unint64_t)filteredTotalItemCountForSection:(int64_t)section;
- (unint64_t)sectionsPerRow;
- (void)_filterPinnedAttributes;
- (void)_prepareSegmentedBoxLayoutWithOffset:(int64_t)offset;
- (void)_resetState;
- (void)calculateCollectionViewContentSize;
- (void)enumerateSectionsIndexesOverlappingYOffset:(double)offset block:(id)block;
- (void)finalizeAnimatedBoundsChange;
- (void)finalizeCollectionViewUpdates;
- (void)finalizeGlobalPresentationDataWithSectionRange:(_NSRange)range;
- (void)finalizePinnedAttributes:(id)attributes forSection:(int64_t)section footer:(BOOL)footer;
- (void)forceFullInvalidate;
- (void)fullyRebuildLayout;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareForAnimatedBoundsChange:(CGRect)change;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareForUpdate:(unint64_t)update inDataSource:(id)source;
- (void)prepareLayout;
- (void)refreshMetrics;
- (void)setLandscapeInterleavedSectionsCount:(unint64_t)count;
- (void)setLeftLayoutGuideOffset:(double)offset;
- (void)setMetricData:(id)data forSection:(int64_t)section;
- (void)setPortraitInterleavedSectionsCount:(unint64_t)count;
- (void)setRightLayoutGuideOffset:(double)offset;
- (void)setShowPlaceholder:(BOOL)placeholder;
- (void)setUpdateType:(unint64_t)type;
- (void)setVisibleIndexPathsFilter:(id)filter;
- (void)updatePinnableAreas;
- (void)updatePresentationDataForLastInterleavedSections;
- (void)updatePresentationDataInSection:(int64_t)section withAttributes:(id)attributes supplementaryLocation:(unint64_t)location;
@end

@implementation GKGridLayout

- (GKGridLayout)init
{
  v36.receiver = self;
  v36.super_class = GKGridLayout;
  v2 = [(GKGridLayout *)&v36 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:0];
    sectionToMetricData = v2->_sectionToMetricData;
    v2->_sectionToMetricData = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:0];
    sectionToPresentationData = v2->_sectionToPresentationData;
    v2->_sectionToPresentationData = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keyToMetricData = v2->_keyToMetricData;
    v2->_keyToMetricData = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    laidOutAttributes = v2->_laidOutAttributes;
    v2->_laidOutAttributes = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB40]);
    laidOutPinnableAttributes = v2->_laidOutPinnableAttributes;
    v2->_laidOutPinnableAttributes = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
    sectionsWithPinnedHeaders = v2->_sectionsWithPinnedHeaders;
    v2->_sectionsWithPinnedHeaders = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indexPathToSupplementary = v2->_indexPathToSupplementary;
    v2->_indexPathToSupplementary = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indexPathToDecoration = v2->_indexPathToDecoration;
    v2->_indexPathToDecoration = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indexPathToItem = v2->_indexPathToItem;
    v2->_indexPathToItem = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    oldIndexPathToSupplementary = v2->_oldIndexPathToSupplementary;
    v2->_oldIndexPathToSupplementary = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    oldIndexPathToDecoration = v2->_oldIndexPathToDecoration;
    v2->_oldIndexPathToDecoration = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    oldIndexPathToItem = v2->_oldIndexPathToItem;
    v2->_oldIndexPathToItem = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    revealedIndexPaths = v2->_revealedIndexPaths;
    v2->_revealedIndexPaths = v27;

    v2->_portraitInterleavedSectionsCount = 1;
    v2->_landscapeInterleavedSectionsCount = 1;
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indexPathToMetrics = v2->_indexPathToMetrics;
    v2->_indexPathToMetrics = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
    knownSupplementaryKinds = v2->_knownSupplementaryKinds;
    v2->_knownSupplementaryKinds = v31;

    v2->_updateType = 6;
    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    oldSectionToMetricKeys = v2->_oldSectionToMetricKeys;
    v2->_oldSectionToMetricKeys = v33;

    v2->_bottomContentPadding = 21.0;
    v2->_shouldLayoutRTL = GKShouldLayoutRTL();
  }

  return v2;
}

- (double)scale
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  return v4;
}

- (CGRect)layoutBounds
{
  collectionView = [(GKGridLayout *)self collectionView];
  [collectionView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = GKShouldLayoutRTL();
  if (v4 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0.0;
  if ((v12 & (v8 + v4 == 0.0)) == 0)
  {
    v13 = v4;
  }

  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setUpdateType:(unint64_t)type
{
  updateType = self->_updateType;
  if (updateType != type)
  {
    if (updateType != 6 && type != 3 && type != 6)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_updateType];
      v11 = [v8 stringWithFormat:@"Multiple update types attempted for the same collection view update loop (%@ vs %@)", v9, v10];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayout.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [v8 stringWithFormat:@"%@ (_updateType == GKGridLayoutUpdateInvalid || updateType == GKGridLayoutUpdateInvalid || updateType == GKGridLayoutUpdateRotation)\n[%s (%s:%d)]", v11, "-[GKGridLayout setUpdateType:]", objc_msgSend(lastPathComponent, "UTF8String"), 378];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
    }

    self->_updateType = type;
  }
}

- (id)_gkDescriptionWithChildren:(int64_t)children
{
  v5 = _gkTabStringForTabLevel();
  string = [MEMORY[0x277CCAB68] string];
  v29.receiver = self;
  v29.super_class = GKGridLayout;
  v7 = [(GKGridLayout *)&v29 description];
  [string appendFormat:@"%@%@ {\n", v5, v7];

  dataSourceMetrics = self->_dataSourceMetrics;
  if (dataSourceMetrics)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(GKDataSourceMetrics *)dataSourceMetrics _gkDescriptionWithChildren:children + 2];
    v11 = [v9 stringWithFormat:@"    %@dataSourceMetrics: {\n%@", v5, v10];
    [string appendString:v11];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@    }\n", v5];
    [string appendString:v12];
  }

  collectionView = [(GKGridLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (numberOfSections)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@----------\n", v5];
    [string appendString:v15];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@metricData: {\n", v5];
    [string appendString:v16];

    for (i = 0; i != numberOfSections; ++i)
    {
      v18 = [(GKGridLayout *)self metricDataForSection:i];
      v19 = [v18 _gkDescriptionWithChildren:children + 2];
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      [v19 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
      selfCopy = self;
      v23 = v22 = children;

      v24 = [MEMORY[0x277CCABB0] numberWithInteger:i];
      layoutKey = [v18 layoutKey];
      [string appendFormat:@"        %@%@ - %@ - %@", v5, v24, layoutKey, v23];

      children = v22;
      self = selfCopy;
    }

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@}\n", v5];
    [string appendString:v26];
  }

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@}\n", v5];
  [string appendString:v27];

  return string;
}

- (id)metricDataForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_keyToMetricData objectForKeyedSubscript:keyCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(GKMetricData);
    [(NSMutableDictionary *)self->_keyToMetricData setObject:v5 forKeyedSubscript:keyCopy];
  }

  return v5;
}

- (id)metricDataForSection:(int64_t)section
{
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = section + 1;
  }

  v5 = [(NSPointerArray *)self->_sectionToMetricData count];
  v6 = 0;
  if (v4 < v5)
  {
    v6 = [(NSPointerArray *)self->_sectionToMetricData pointerAtIndex:v4];
  }

  return v6;
}

- (unint64_t)filteredTotalItemCountForSection:(int64_t)section
{
  v17 = *MEMORY[0x277D85DE8];
  visibleIndexPathsFilter = self->_visibleIndexPathsFilter;
  if (!visibleIndexPathsFilter)
  {
    return -1;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = visibleIndexPathsFilter;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) section] == section)
        {
          ++v8;
        }
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setMetricData:(id)data forSection:(int64_t)section
{
  dataCopy = data;
  [dataCopy setFilteredTotalItemCount:{-[GKGridLayout filteredTotalItemCountForSection:](self, "filteredTotalItemCountForSection:", section)}];
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = section + 1;
  }

  if ([(NSPointerArray *)self->_sectionToMetricData count]<= v6)
  {
    [(NSPointerArray *)self->_sectionToMetricData setCount:v6 + 1];
  }

  [(NSPointerArray *)self->_sectionToMetricData replacePointerAtIndex:v6 withPointer:dataCopy];
}

- (void)setPortraitInterleavedSectionsCount:(unint64_t)count
{
  if (!count)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayout.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (portraitInterleavedSectionsCount > 0)\n[%s (%s:%d)]", v6, "-[GKGridLayout setPortraitInterleavedSectionsCount:]", objc_msgSend(lastPathComponent, "UTF8String"), 472];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  self->_portraitInterleavedSectionsCount = count;
}

- (void)setLandscapeInterleavedSectionsCount:(unint64_t)count
{
  if (!count)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayout.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (landscapeInterleavedSectionsCount > 0)\n[%s (%s:%d)]", v6, "-[GKGridLayout setLandscapeInterleavedSectionsCount:]", objc_msgSend(lastPathComponent, "UTF8String"), 478];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  self->_landscapeInterleavedSectionsCount = count;
}

- (GKSectionMetrics)defaultSectionMetricsInternal
{
  defaultSectionMetricsInternal = self->_defaultSectionMetricsInternal;
  if (!defaultSectionMetricsInternal)
  {
    v4 = +[(GKGridLayoutMetrics *)GKSectionMetrics];
    [(GKGridLayout *)self setDefaultSectionMetricsInternal:v4];

    defaultSectionMetricsInternal = self->_defaultSectionMetricsInternal;
  }

  return defaultSectionMetricsInternal;
}

- (id)metricsForSection:(int64_t)section
{
  v3 = [(GKGridLayout *)self metricDataForSection:section];
  sectionMetrics = [v3 sectionMetrics];

  return sectionMetrics;
}

- (int64_t)searchResultsCount
{
  visibleIndexPathsFilter = self->_visibleIndexPathsFilter;
  if (visibleIndexPathsFilter)
  {
    return [(NSSet *)visibleIndexPathsFilter count];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setVisibleIndexPathsFilter:(id)filter
{
  filterCopy = filter;
  if (self->_visibleIndexPathsFilter != filterCopy && ([(NSSet *)filterCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_visibleIndexPathsFilter, filter);
    [(GKGridLayout *)self updatePlaceholderVisibility];
    [(GKGridLayout *)self invalidateLayout];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setLeftLayoutGuideOffset:(double)offset
{
  if (self->_leftLayoutGuideOffset != offset)
  {
    self->_leftLayoutGuideOffset = offset;
    [(GKGridLayout *)self invalidateLayout];
  }
}

- (void)setRightLayoutGuideOffset:(double)offset
{
  if (self->_rightLayoutGuideOffset != offset)
  {
    self->_rightLayoutGuideOffset = offset;
    [(GKGridLayout *)self invalidateLayout];
  }
}

- (void)setShowPlaceholder:(BOOL)placeholder
{
  if (self->_showPlaceholder != placeholder)
  {
    self->_showPlaceholder = placeholder;
    [(GKGridLayout *)self updatePlaceholderVisibility];
    v5 = objc_alloc_init(GKGridLayoutInvalidationContext);
    [(GKGridLayoutInvalidationContext *)v5 setInvalidatePlaceholderVisibility:1];
    [(GKGridLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (CGSize)_sizeAdjustedForTabBarSettingsBasedOnSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(GKGridLayout *)self layoutBounds];
  v7 = v6;
  collectionView = [(GKGridLayout *)self collectionView];
  [collectionView contentInset];
  v10 = v9;
  v12 = v11;

  hiddenSearchBarOffset = self->_hiddenSearchBarOffset;
  if (hiddenSearchBarOffset < self->_segmentedHeaderPinningOffset)
  {
    hiddenSearchBarOffset = self->_segmentedHeaderPinningOffset;
  }

  v14 = v7 - v10 - v12 + hiddenSearchBarOffset;
  if (height + self->_bottomContentPadding >= v14)
  {
    v14 = height + self->_bottomContentPadding;
  }

  if (self->_ignoreBoundsForSizeCalculation)
  {
    v14 = height + self->_bottomContentPadding;
  }

  v15 = width;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)calculateCollectionViewContentSize
{
  v3 = MEMORY[0x277CBF3A0];
  v25 = *MEMORY[0x277D85DE8];
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_laidOutAttributes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    x = *v3;
    y = v3[1];
    v11 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (([v13 isHidden] & 1) == 0)
        {
          [v13 frame];
          v28.origin.x = v14;
          v28.origin.y = v15;
          v28.size.width = v16;
          v28.size.height = v17;
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = height;
          v27 = CGRectUnion(v26, v28);
          x = v27.origin.x;
          y = v27.origin.y;
          width = v27.size.width;
          height = v27.size.height;
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  self->_oldLaidOutContentSize = self->_laidOutContentSize;
  self->_minimumLaidOutContentSize.width = width;
  self->_minimumLaidOutContentSize.height = height;
  [(GKGridLayout *)self _sizeAdjustedForTabBarSettingsBasedOnSize:width, height];
  self->_laidOutContentSize.width = v18;
  self->_laidOutContentSize.height = v19;
}

- (CGSize)collectionViewContentSize
{
  width = self->_laidOutContentSize.width;
  height = self->_laidOutContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)result
{
  x = result.x;
  if (self->_hideSearchBarOnAppear || self->_hideAboveSegmentOnAppear)
  {
    [(GKGridLayout *)self layoutBounds:result.x];
    v6 = v5;
    collectionView = [(GKGridLayout *)self collectionView];
    [collectionView contentInset];
    v9 = v8;

    v10 = v6;
    if (self->_hideSearchBarOnAppear)
    {
      v10 = self->_hiddenSearchBarOffset - v9;
    }

    v11 = v6;
    if (self->_hideAboveSegmentOnAppear)
    {
      v11 = self->_segmentedHeaderPinningOffset - v9;
    }

    if (v10 < v11)
    {
      v10 = v11;
    }

    if (v10 >= v6)
    {
      result.y = v10;
    }

    else
    {
      result.y = v6;
    }
  }

  v12 = x;
  result.x = v12;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)result withScrollingVelocity:(CGPoint)velocity
{
  self->_hideSearchBarOnAppear = 0;
  self->_hideAboveSegmentOnAppear = 0;
  return result;
}

- (void)refreshMetrics
{
  collectionView = [(GKGridLayout *)self collectionView];
  dataSource = [collectionView dataSource];

  if (!self->_metricsInvalidationCount)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ++self->_metricsInvalidationCount;
      v4 = [dataSource createMetricsTreeWithGridLayout:self];
      [(GKGridLayout *)self setDataSourceMetrics:v4];
      --self->_metricsInvalidationCount;
    }
  }
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  invalidateDataSourceCounts = [contextCopy invalidateDataSourceCounts];
  invalidateEverything = [contextCopy invalidateEverything];
  invalidateBoundsChange = [contextCopy invalidateBoundsChange];
  invalidatePlaceholderVisibility = [contextCopy invalidatePlaceholderVisibility];
  invalidatePinnableAreas = [contextCopy invalidatePinnableAreas];
  if ((invalidateDataSourceCounts & 1) == 0 && (invalidateEverything & 1) == 0 && (invalidateBoundsChange & 1) == 0 && (invalidatePlaceholderVisibility & 1) == 0 && !invalidatePinnableAreas)
  {
    v10 = 0xFFFFFFFFFFFFLL;
LABEL_16:
    self->_invalidationFlags |= v10;
    goto LABEL_17;
  }

  if (invalidateDataSourceCounts)
  {
    self->_invalidationFlags |= 0xFFFFFFFFFFFFuLL;
    if (!invalidateEverything)
    {
LABEL_9:
      if (!invalidatePlaceholderVisibility)
      {
        goto LABEL_10;
      }

LABEL_14:
      self->_invalidationFlags |= 4uLL;
      if (!invalidatePinnableAreas)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  else if (!invalidateEverything)
  {
    goto LABEL_9;
  }

  self->_invalidationFlags |= 0xFFFFFFFFFFFFuLL;
  if (invalidatePlaceholderVisibility)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (invalidatePinnableAreas)
  {
LABEL_15:
    v10 = 8;
    goto LABEL_16;
  }

LABEL_17:
  v11.receiver = self;
  v11.super_class = GKGridLayout;
  [(GKGridLayout *)&v11 invalidateLayoutWithContext:contextCopy];

  if ((self->_invalidationFlags & 5) != 0)
  {
    [(GKGridLayout *)self refreshMetrics];
  }
}

- (void)updatePinnableAreas
{
  [(GKGridLayout *)self _filterPinnedAttributes];
  v3 = objc_alloc_init(GKGridLayoutInvalidationContext);
  [(GKGridLayoutInvalidationContext *)v3 setInvalidatePinnableAreas:1];
  [(GKGridLayout *)self invalidateLayoutWithContext:v3];
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  [(GKGridLayout *)self layoutBounds];
  if (v9 != width || v8 != height)
  {
    self->_invalidationFlags |= 2uLL;
  }

  v13.receiver = self;
  v13.super_class = GKGridLayout;
  height = [(GKGridLayout *)&v13 invalidationContextForBoundsChange:x, y, width, height];
  [height setInvalidateBoundsChange:1];

  return height;
}

- (void)forceFullInvalidate
{
  self->_invalidationFlags |= 0xFFFFFFFFFFFFuLL;
  collectionView = [(GKGridLayout *)self collectionView];
  [collectionView reloadData];
}

- (double)calculatedBottomPaddingForSection:(int64_t)section
{
  v3 = 0.0;
  if (section != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(GKGridLayout *)self metricsForSection:?];
    [v6 padding];
    v3 = v7;
    if ([v6 incrementalRevealConsumesPadding])
    {
      v8 = [v6 listForLocation:1];
      v9 = [(GKGridLayout *)self indexOfSupplementaryMetricsOfKind:@"IncrementalReveal" inList:v8];
      v10 = [(GKGridLayout *)self metricDataForSection:section];
      collectionView = [(GKGridLayout *)self collectionView];
      v12 = [collectionView numberOfItemsInSection:section];

      filteredTotalItemCount = [v10 filteredTotalItemCount];
      if (v12 >= filteredTotalItemCount)
      {
        v12 = filteredTotalItemCount;
      }

      if (v12 > [v10 currentMaxVisibleItemCount] && objc_msgSend(v6, "incrementalRevealItemCount") && v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [v8 objectAtIndexedSubscript:v9];
        [v14 desiredHeight];
        v3 = ((v3 - v15) & ~((v3 - v15) >> 31));
      }
    }
  }

  return v3;
}

- (void)updatePresentationDataForLastInterleavedSections
{
  sectionsPerRow = [(GKGridLayout *)self sectionsPerRow];
  collectionView = [(GKGridLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (sectionsPerRow)
  {
    v6 = numberOfSections - 1;
    v7 = 0.0;
    v8 = v6;
    v9 = sectionsPerRow;
    do
    {
      v10 = [(GKGridLayout *)self presentationDataForSection:v8];
      [v10 maxY];
      if (v7 < v11)
      {
        v7 = v11;
      }

      --v8;
      --v9;
    }

    while (v9);
    do
    {
      v12 = [(GKGridLayout *)self presentationDataForSection:v6];
      [v12 setMaxY:v7];

      --v6;
      --sectionsPerRow;
    }

    while (sectionsPerRow);
  }
}

- (void)updatePresentationDataInSection:(int64_t)section withAttributes:(id)attributes supplementaryLocation:(unint64_t)location
{
  attributesCopy = attributes;
  v8 = [(GKGridLayout *)self presentationDataForSection:section];
  v9 = v8;
  if (attributesCopy)
  {
    [v8 updateWithLayoutAttributes:attributesCopy supplementaryLocation:location];
  }

  else if (section != 0x7FFFFFFFFFFFFFFFLL && location)
  {
    [(GKGridLayout *)self calculatedBottomPaddingForSection:section];
    v11 = v10;
    [v9 showMoreMaxY];
    [v9 setShowMoreMaxY:v11 + v12];
    [v9 maxY];
    [v9 setMaxY:v11 + v13];
  }
}

- (void)finalizeGlobalPresentationDataWithSectionRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(GKGridLayout *)self presentationDataForSection:0x7FFFFFFFFFFFFFFFLL];
  v7 = [(GKGridLayout *)self presentationDataForSection:location];
  v8 = [(GKGridLayout *)self presentationDataForSection:length + location - 1];
  if (![v6 numItems])
  {
    [v7 showMoreMaxY];
    [v6 setItemsMinY:?];
    [v8 minY];
    [v6 setItemsMaxY:?];
  }

  if (![v6 numFooters])
  {
    [v8 showMoreMaxY];
    [v6 setItemsMaxY:?];
    [v6 itemsMaxY];
    [v6 setFooterMinY:?];
    [v6 itemsMaxY];
    [v6 setFooterMaxY:?];
    [v6 itemsMaxY];
    [v6 setShowMoreMaxY:?];
  }

  if (self->_segmentedHeaderPinningOffset != 0.0)
  {
    v9 = [(GKGridLayout *)self metricDataForSection:0x7FFFFFFFFFFFFFFFLL];
    [v6 headerMaxY];
    self->_segmentedHeaderPinningOffset = v10;
    headerPinnableAttributes = [v9 headerPinnableAttributes];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__GKGridLayout_finalizeGlobalPresentationDataWithSectionRange___block_invoke;
    v12[3] = &unk_27966A4F8;
    v12[4] = self;
    [headerPinnableAttributes enumerateObjectsUsingBlock:v12];
  }
}

uint64_t __63__GKGridLayout_finalizeGlobalPresentationDataWithSectionRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 552);
  result = [a2 frame];
  if (v3 <= v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  *(*(a1 + 32) + 552) = v6;
  return result;
}

- (id)_existingPresentationDataForSection:(int64_t)section
{
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = section + 1;
  }

  if ([(NSPointerArray *)self->_sectionToPresentationData count]<= v4)
  {
    [(NSPointerArray *)self->_sectionToPresentationData setCount:v4 + 1];
  }

  sectionToPresentationData = self->_sectionToPresentationData;

  return [(NSPointerArray *)sectionToPresentationData pointerAtIndex:v4];
}

- (id)presentationDataForSection:(int64_t)section
{
  v5 = [(GKGridLayout *)self _existingPresentationDataForSection:?];
  if (!v5)
  {
    if (section == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      if (section)
      {
        v7 = section - 1;
      }

      else
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v6 = [(GKGridLayout *)self _existingPresentationDataForSection:v7];
    }

    v5 = [[GKSectionPresentationData alloc] initWithSection:section presentationData:v6];
    if (section == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = section + 1;
    }

    [(NSPointerArray *)self->_sectionToPresentationData replacePointerAtIndex:v8 withPointer:v5];
  }

  return v5;
}

- (BOOL)_areWePortrait
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = ([mEMORY[0x277D75128] statusBarOrientation] - 1) < 2;

  return v3;
}

- (unint64_t)sectionsPerRow
{
  _areWePortrait = [(GKGridLayout *)self _areWePortrait];
  v4 = &OBJC_IVAR___GKGridLayout__landscapeInterleavedSectionsCount;
  if (_areWePortrait)
  {
    v4 = &OBJC_IVAR___GKGridLayout__portraitInterleavedSectionsCount;
  }

  return *(&self->super.super.isa + *v4);
}

- (double)yOffsetForSection:(int64_t)section
{
  v3 = 0.0;
  if (section != 0x7FFFFFFFFFFFFFFFLL)
  {
    sectionsPerRow = [(GKGridLayout *)self sectionsPerRow];
    if (section >= sectionsPerRow)
    {
      v7 = section - sectionsPerRow;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v8 = [(GKGridLayout *)self presentationDataForSection:v7];
    [v8 maxY];
    v3 = fmax(v9, 0.0);
  }

  return v3;
}

- (void)enumerateSectionsIndexesOverlappingYOffset:(double)offset block:(id)block
{
  blockCopy = block;
  v6 = [(NSPointerArray *)self->_sectionToPresentationData count];
  if (v6 >= 2)
  {
    v7 = v6;
    for (i = 1; i != v7; ++i)
    {
      v9 = [(NSPointerArray *)self->_sectionToPresentationData pointerAtIndex:i];
      [v9 minY];
      if (v10 <= offset && ([v9 maxY], v11 >= offset) || (-[GKGridLayout sectionsWithPinnedHeaders](self, "sectionsWithPinnedHeaders"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsIndex:", i), v12, v13))
      {
        blockCopy[2](blockCopy, i - 1);
      }
    }
  }
}

- (int64_t)indexOfSupplementaryMetricsOfKind:(id)kind inList:(id)list
{
  kindCopy = kind;
  listCopy = list;
  v7 = [listCopy count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [listCopy objectAtIndexedSubscript:v9];
      kind = [v10 kind];
      v12 = [kind isEqualToString:kindCopy];

      if (v12)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (int64_t)_prepareSupplementaryLayoutForSection:(int64_t)section atLocation:(unint64_t)location offset:(int64_t)offset globalOffset:(int64_t *)globalOffset
{
  v130[1] = *MEMORY[0x277D85DE8];
  collectionView = [(GKGridLayout *)self collectionView];
  v9 = [(GKGridLayout *)self metricDataForSection:section];
  v10 = v9;
  if (location)
  {
    if (location != 1)
    {
      goto LABEL_6;
    }

    footerPinnableAttributes = [v9 footerPinnableAttributes];
  }

  else
  {
    footerPinnableAttributes = [v9 headerPinnableAttributes];
  }

  v12 = footerPinnableAttributes;
  [footerPinnableAttributes removeAllObjects];

LABEL_6:
  v13 = 0.0;
  if (section != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [(GKGridLayoutMetrics *)self->_dataSourceMetrics supplementaryMetricsForKey:@"SegmentedBoxMetricKey"];

    if (v14)
    {
      v13 = 40.0;
    }

    else
    {
      v13 = 0.0;
    }
  }

  [(GKGridLayout *)self layoutBounds];
  v116 = v16;
  v117 = v15;
  v120 = v17;
  v115 = v18;
  dataSource = [collectionView dataSource];
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v129 = 0;
    dataSourceMetrics = self->_dataSourceMetrics;
  }

  else
  {
    v129 = [(GKGridLayout *)self metricsForSection:section];
    dataSourceMetrics = v129;
  }

  v102 = dataSourceMetrics;
  v126 = [(GKGridLayoutMetrics *)v102 listForLocation:location];
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 filteredTotalItemCount];
    v125 = 0;
    v114 = 0;
    v121 = 0;
  }

  else
  {
    v20 = [collectionView numberOfItemsInSection:section];
    filteredTotalItemCount = [v10 filteredTotalItemCount];
    v114 = v20;
    if (v20 >= filteredTotalItemCount)
    {
      v20 = filteredTotalItemCount;
    }

    currentMaxVisibleItemCount = [v10 currentMaxVisibleItemCount];
    v125 = v20;
    if (v20 >= currentMaxVisibleItemCount)
    {
      v23 = currentMaxVisibleItemCount;
    }

    else
    {
      v23 = v20;
    }

    v121 = v23;
  }

  v24 = [(GKGridLayout *)self presentationDataForSection:section];
  if (location == 1)
  {
    v109 = [(GKGridLayout *)self indexOfSupplementaryMetricsOfKind:@"IncrementalReveal" inList:v126];
  }

  else
  {
    v109 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = v125 == v121 || section == 0x7FFFFFFFFFFFFFFFLL || [(GKDataSourceMetrics *)v129 incrementalRevealItemCount]== 0;
  v108 = v26;
  if (location)
  {
    [v24 itemsMaxY];
  }

  else
  {
    [(GKGridLayout *)self yOffsetForSection:section];
  }

  v28 = v27;
  [(GKGridLayout *)self leftLayoutGuideOffset];
  v30 = v29;
  [(GKGridLayout *)self rightLayoutGuideOffset];
  v32 = v31;
  v33 = GKShouldLayoutRTL();
  if (v33)
  {
    v34 = v30;
  }

  else
  {
    v34 = v32;
  }

  if (v33)
  {
    v35 = v32;
  }

  else
  {
    v35 = v30;
  }

  v118 = v35;
  sectionsPerRow = [(GKGridLayout *)self sectionsPerRow];
  v119 = section / sectionsPerRow;
  if (section != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(GKDataSourceMetrics *)v129 marginBetweenItems];
    if (section % sectionsPerRow)
    {
      v38 = v37 * 0.5;
      v118 = v38;
      if (section % sectionsPerRow != sectionsPerRow - 1)
      {
        v34 = v38;
      }
    }

    else
    {
      v34 = v37 * 0.5;
    }
  }

  v123 = v10;
  v39 = [v126 count];
  array = [MEMORY[0x277CBEB18] array];
  [(GKGridLayout *)self scale];
  v41 = v40;
  v113 = v39;
  if (v39)
  {
    v103 = 0;
    v110 = 0;
    v42 = 0;
    v43 = section != 0x7FFFFFFFFFFFFFFFLL;
    if (v125)
    {
      v44 = 0;
    }

    else
    {
      v44 = section != 0x7FFFFFFFFFFFFFFFLL;
    }

    if (sectionsPerRow <= 1)
    {
      v43 = 0;
    }

    v111 = v43;
    v112 = v44;
    v107 = sectionsPerRow;
    v105 = (v120 + v13 * 2.0) / sectionsPerRow;
    v106 = sectionsPerRow;
    do
    {
      v45 = [v126 objectAtIndexedSubscript:v42];
      [v45 sizeForCollectionView:collectionView];
      v47 = v46;
      v49 = v48;
      isHidden = [v45 isHidden];
      if (v49 == 0.0)
      {
        v51 = 1;
      }

      else
      {
        v51 = isHidden;
      }

      if (v47 == 0.0)
      {
        v52 = 1;
      }

      else
      {
        v52 = v51;
      }

      if (v112)
      {
        if ([(GKDataSourceMetrics *)v129 shouldShowSectionHeadersWhenNoItems])
        {
          kind = [v45 kind];
          if ([kind isEqualToString:@"SectionHeader"])
          {
            v52 |= [(GKGridLayout *)self sectionsPerRow]== 1;
          }

          else
          {
            v52 = 1;
          }
        }

        else
        {
          v52 = 1;
        }
      }

      kind2 = [v45 kind];
      if ([kind2 isEqualToString:@"IncrementalReveal"])
      {
        shouldAlwaysIncludeShowMore = [(GKDataSourceMetrics *)v129 shouldAlwaysIncludeShowMore];

        if ((shouldAlwaysIncludeShowMore & 1) == 0)
        {
          v52 = v108 | v52 & 1;
        }
      }

      else
      {
      }

      if ([v45 shouldUseGlobalIndexing] && globalOffset)
      {
        if (!v110)
        {
          v110 = [(GKGridLayout *)self presentationDataForSection:0x7FFFFFFFFFFFFFFFLL];
        }

        v56 = *globalOffset++;
        v57 = [MEMORY[0x277CCAA70] indexPathWithIndex:v56];
      }

      else
      {
        if (section == 0x7FFFFFFFFFFFFFFFLL)
        {
          [MEMORY[0x277CCAA70] indexPathWithIndex:?];
        }

        else
        {
          [MEMORY[0x277CCAA70] indexPathForItem:? inSection:?];
        }
        v57 = ;
        ++offset;
      }

      if (self->_displayingOverlay)
      {
        v52 |= [v57 length] > 1;
      }

      kind3 = [v45 kind];
      v59 = [(UICollectionViewLayoutAttributes *)GKCollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:kind3 withIndexPath:v57];

      if (location == 1)
      {
        v60 = v109 == 0x7FFFFFFFFFFFFFFFLL || v42 > v109;
        v61 = !v60;
        if (((v61 | v52) & 1) == 0)
        {
          [(GKGridLayout *)self calculatedBottomPaddingForSection:section];
          v28 = v28 + v62;
          v103 = 1;
        }
      }

      v63 = v120;
      v64 = v117;
      if (v111)
      {
        v63 = v105;
        v47 = (v47 + v13 * 2.0) / v106;
        v64 = (v47 + v13 * -2.0) * (section - v119 * v107);
      }

      v65 = round(v64 + (v63 - v47) * 0.5);
      v67 = v115;
      v66 = v116;
      MaxX = CGRectGetMaxX(*&v64);
      v131.origin.x = v65;
      v131.origin.y = v28;
      v131.size.width = v47;
      v131.size.height = v49;
      if (CGRectGetMaxX(v131) <= MaxX)
      {
        v69 = v47;
      }

      else
      {
        v69 = MaxX - v65;
      }

      v70 = v69 + v13 * -2.0;
      if (section == 0x7FFFFFFFFFFFFFFFLL)
      {
        v70 = v69;
        v71 = v65;
      }

      else
      {
        v71 = v13 + v65;
      }

      [v59 setFrame:{floor(v41 * v71) / v41, floor(v41 * v28) / v41, floor(v41 * v70) / v41, floor(v41 * v49) / v41}];
      if (section == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v45 shouldPin])
        {
          v72 = 0x7FFFFFFFFFFFFFFELL;
        }

        else
        {
          v72 = 0x7FFFFFFFFFFFF82ELL;
        }
      }

      else
      {
        v72 = 1;
      }

      [v59 setZIndex:v72];
      [v59 setDataSource:dataSource];
      [v59 setSectionMetrics:v129];
      [v59 setSupplementaryMetrics:v45];
      [v59 setAllSectionItemsVisible:v125 == v121];
      [v59 setUnpinnedY:v28];
      [v59 setCurrentTotalItemCount:v125];
      [v59 setMaxTotalItemCount:v114];
      [v59 setCurrentVisibleItemCount:{objc_msgSend(v123, "currentMaxVisibleItemCount")}];
      [v59 setGridLayoutLocation:location];
      [v59 setLeadingMargin:v118];
      [v59 setTrailingMargin:v34];
      if (v52)
      {
        v73 = 0.0;
      }

      else
      {
        v73 = 1.0;
      }

      [v59 setHidden:v52 & 1];
      [v59 setAlpha:v73];
      indexPathToSupplementary = self->_indexPathToSupplementary;
      indexPath = [v59 indexPath];
      [(NSMutableDictionary *)indexPathToSupplementary setObject:v59 forKeyedSubscript:indexPath];

      [(NSMutableArray *)self->_laidOutAttributes addObject:v59];
      knownSupplementaryKinds = self->_knownSupplementaryKinds;
      kind4 = [v45 kind];
      [(NSMutableSet *)knownSupplementaryKinds addObject:kind4];

      if (v52 & 1 | (([v45 shouldPinGlobal] & 1) == 0))
      {
        if (!(v52 & 1 | (([v45 shouldPin] & 1) == 0)))
        {
          if (section == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v59 setIsPartOfGlobalPinningGroup:1];
          }

          [array addObject:v59];
          [(NSMutableOrderedSet *)self->_laidOutPinnableAttributes addObject:v59];
        }
      }

      else
      {
        [v59 setIsPartOfGlobalPinningGroup:1];
        v78 = [(GKGridLayout *)self metricDataForSection:0x7FFFFFFFFFFFFFFFLL];
        v130[0] = v59;
        v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:1];
        [v78 addAttributes:v79 forLocation:location];

        [(NSMutableOrderedSet *)self->_laidOutPinnableAttributes addObject:v59];
      }

      [(NSMutableDictionary *)self->_indexPathToMetrics setObject:v45 forKeyedSubscript:v57];
      if ((v52 & 1) == 0)
      {
        [(GKGridLayout *)self updatePresentationDataInSection:section withAttributes:v59 supplementaryLocation:location];
        [v59 frame];
        v28 = v28 + v80;
      }

      kind5 = [v45 kind];
      v82 = [kind5 isEqualToString:@"SearchBar"];

      if (!location && (v82 & ~v52 & (section == 0x7FFFFFFFFFFFFFFFLL)) != 0 && self->_hiddenSearchBarOffset == 0.0)
      {
        self->_hiddenSearchBarOffset = v28;
      }

      ++v42;
    }

    while (v113 != v42);
  }

  else
  {
    v110 = 0;
    v103 = 0;
  }

  v83 = array;
  v84 = v123;
  if ([array count])
  {
    [v123 addAttributes:array forLocation:location];
  }

  if ((location != 1) | v103 & 1)
  {
    v85 = section != 0x7FFFFFFFFFFFFFFFLL;
    if (location)
    {
      v85 = 1;
    }

    if (!v85)
    {
      v86 = [MEMORY[0x277CCAA70] indexPathWithIndex:?];
      v87 = [(UICollectionViewLayoutAttributes *)GKCollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:@"ClipArea" withIndexPath:v86];

      [v87 setZIndex:0x7FFFFFFFFFFFFFFFLL];
      v88 = *MEMORY[0x277CBF348];
      v89 = *(MEMORY[0x277CBF348] + 8);
      collectionView2 = [(GKGridLayout *)self collectionView];
      [collectionView2 bounds];
      v92 = v91;
      collectionView3 = [(GKGridLayout *)self collectionView];
      [collectionView3 contentOffset];
      v95 = v94;
      collectionView4 = [(GKGridLayout *)self collectionView];
      [collectionView4 contentInset];
      [v87 setFrame:{floor(v41 * v88) / v41, floor(v41 * v89) / v41, floor(v41 * v92) / v41, floor(v41 * (v95 + v97)) / v41}];

      [v87 setHidden:!self->_displayClipView];
      [(NSMutableArray *)self->_laidOutAttributes addObject:v87];
      v98 = self->_indexPathToSupplementary;
      indexPath2 = [v87 indexPath];
      [(NSMutableDictionary *)v98 setObject:v87 forKeyedSubscript:indexPath2];

      v83 = array;
      v84 = v123;
      [(GKGridLayout *)self setClipViewAttributes:v87];

      ++offset;
    }
  }

  else
  {
    [(GKGridLayout *)self updatePresentationDataInSection:section withAttributes:0 supplementaryLocation:1];
  }

  return offset;
}

- (int64_t)_prepareOverlayLayoutForSection:(int64_t)section offset:(int64_t)offset
{
  collectionView = [(GKGridLayout *)self collectionView];
  v58 = [(GKGridLayout *)self metricDataForSection:section];
  [(GKGridLayout *)self layoutBounds];
  v9 = v8;
  [(GKGridLayout *)self scale];
  v11 = v10;
  [collectionView contentInset];
  v13 = v12;
  v15 = v14;
  v56 = collectionView;
  dataSource = [collectionView dataSource];
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v54 = 0;
    dataSourceMetrics = self->_dataSourceMetrics;
  }

  else
  {
    v54 = [(GKGridLayout *)self metricsForSection:section];
    dataSourceMetrics = v54;
  }

  v50 = dataSourceMetrics;
  v57 = [(GKGridLayoutMetrics *)v50 listForLocation:2];
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = [collectionView numberOfItemsInSection:section];
  }

  filteredTotalItemCount = [v58 filteredTotalItemCount];
  if (v17 >= filteredTotalItemCount)
  {
    v19 = filteredTotalItemCount;
  }

  else
  {
    v19 = v17;
  }

  v53 = v19;
  v49 = [(GKGridLayout *)self presentationDataForSection:section];
  [v49 headerMaxY];
  v21 = v20;
  v52 = [v57 count];
  if (v52)
  {
    v51 = v17;
    v22 = 0;
    v23 = v9 - (v13 + v15);
    if (v23 - v21 >= 200.0)
    {
      v24 = v23 - v21;
    }

    else
    {
      v24 = 200.0;
    }

    do
    {
      v25 = [v57 objectAtIndexedSubscript:v22];
      [v25 sizeForCollectionView:v56];
      v27 = v26 == 0.0;
      if (v24 > 0.0 && v26 > 0.0)
      {
        v28 = v26 == 0.0;
        displayingOverlay = self->_displayingOverlay;
        if (self->_showPlaceholder && ([v25 kind], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", @"SearchPlaceholderMetricKey"), v30, !v31))
        {
          v27 = 0;
        }

        else
        {
          kind = [v25 kind];
          v33 = [kind isEqualToString:@"SearchPlaceholderMetricKey"];

          if (v33)
          {
            v27 = self->_showPlaceholder || [(GKGridLayout *)self searchResultsCount]!= 0;
          }

          else
          {
            v27 = !displayingOverlay || v28;
          }
        }
      }

      if (section == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = [MEMORY[0x277CCAA70] indexPathWithIndex:offset];
        v35 = 0x7FFFFFFFFFFFFFFELL;
      }

      else
      {
        v34 = [MEMORY[0x277CCAA70] indexPathForItem:offset inSection:section];
        v35 = 1;
      }

      ++offset;
      kind2 = [v25 kind];
      v37 = [(UICollectionViewLayoutAttributes *)GKCollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:kind2 withIndexPath:v34];

      UIRectCenteredXInRect();
      v39 = v38;
      [v37 setFrame:{floor(v11 * v40) / v11, floor(v11 * v38) / v11, floor(v11 * v41) / v11, floor(v11 * v42) / v11}];
      [v37 setZIndex:v35];
      [v37 setDataSource:dataSource];
      [v37 setSectionMetrics:v54];
      [v37 setSupplementaryMetrics:v25];
      [v37 setAllSectionItemsVisible:1];
      [v37 setUnpinnedY:v39];
      [v37 setCurrentTotalItemCount:v53];
      [v37 setMaxTotalItemCount:v51];
      [v37 setCurrentVisibleItemCount:{objc_msgSend(v58, "currentMaxVisibleItemCount")}];
      [v37 setGridLayoutLocation:2];
      if (v27)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = 1.0;
      }

      [v37 setHidden:v27];
      [v37 setAlpha:v43];
      indexPathToSupplementary = self->_indexPathToSupplementary;
      indexPath = [v37 indexPath];
      [(NSMutableDictionary *)indexPathToSupplementary setObject:v37 forKeyedSubscript:indexPath];

      [(NSMutableArray *)self->_laidOutAttributes addObject:v37];
      knownSupplementaryKinds = self->_knownSupplementaryKinds;
      kind3 = [v25 kind];
      [(NSMutableSet *)knownSupplementaryKinds addObject:kind3];

      [(NSMutableDictionary *)self->_indexPathToMetrics setObject:v25 forKeyedSubscript:v34];
      ++v22;
    }

    while (v52 != v22);
  }

  return offset;
}

- (void)_prepareSegmentedBoxLayoutWithOffset:(int64_t)offset
{
  v5 = [(GKGridLayoutMetrics *)self->_dataSourceMetrics supplementaryMetricsForKey:@"SegmentedBoxMetricKey"];
  if (v5)
  {
    v53 = v5;
    collectionView = [(GKGridLayout *)self collectionView];
    [(GKGridLayout *)self scale];
    v8 = v7;
    [(GKGridLayout *)self layoutBounds];
    v10 = v9;
    [collectionView contentInset];
    v13 = v10 - (v11 + v12);
    dataSource = [collectionView dataSource];
    v15 = v13 == 0.0 || self->_laidOutContentSize.height == 0.0;
    v52 = [(GKGridLayoutMetrics *)self->_dataSourceMetrics supplementaryMetricsForKey:@"SegmentedControlMetricKey"];
    [v52 desiredHeight];
    v16 = [MEMORY[0x277CCAA70] indexPathWithIndex:offset];
    kind = [v53 kind];
    v18 = [(UICollectionViewLayoutAttributes *)GKCollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:kind withIndexPath:v16];

    UIRectCenteredXInRect();
    x = v55.origin.x;
    y = v55.origin.y;
    width = v55.size.width;
    height = v55.size.height;
    CGRectGetMaxY(v55);
    [v18 setFrame:{floor(v8 * x) / v8, floor(v8 * y) / v8, floor(v8 * width) / v8, floor(v8 * height) / v8}];
    [v18 setDataSource:dataSource];
    [v18 setSupplementaryMetrics:v53];
    [v18 setUnpinnedY:y];
    [v18 setGridLayoutLocation:3];
    [v18 setHidden:v15];
    v23 = 1.0;
    if (v15)
    {
      v23 = 0.0;
    }

    [v18 setAlpha:v23];
    [v18 setZIndex:-3000];
    indexPathToSupplementary = self->_indexPathToSupplementary;
    indexPath = [v18 indexPath];
    [(NSMutableDictionary *)indexPathToSupplementary setObject:v18 forKeyedSubscript:indexPath];

    [(NSMutableArray *)self->_laidOutAttributes addObject:v18];
    knownSupplementaryKinds = self->_knownSupplementaryKinds;
    kind2 = [v53 kind];
    [(NSMutableSet *)knownSupplementaryKinds addObject:kind2];

    [(NSMutableDictionary *)self->_indexPathToMetrics setObject:v53 forKeyedSubscript:v16];
    v28 = [(GKGridLayoutMetrics *)self->_dataSourceMetrics supplementaryMetricsForKey:@"ContentBoxMetricKey"];
    if (v28)
    {
      v51 = collectionView;
      numberOfSections = [collectionView numberOfSections];
      if (numberOfSections)
      {
        v30 = 0;
        v31 = numberOfSections - 1;
        do
        {
          v32 = [(GKGridLayout *)self presentationDataForSection:v30];
          [v32 headerMaxY];
          v34 = v33;
        }

        while (v34 <= 0.0 && v31 != v30++);
        v36 = v34 + -32.0;
      }

      else
      {
        v36 = -32.0;
      }

      v37 = v36 <= 0.0 || v15;
      v38 = [MEMORY[0x277CCAA70] indexPathWithIndex:offset + 1];

      kind3 = [v28 kind];
      v40 = [(UICollectionViewLayoutAttributes *)GKCollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:kind3 withIndexPath:v38];

      UIRectCenteredXInRect();
      v42 = v41;
      [v40 setFrame:{floor(v8 * v43) / v8, floor(v8 * v41) / v8, floor(v8 * v44) / v8, floor(v8 * v45) / v8}];
      [v40 setDataSource:dataSource];
      [v40 setSupplementaryMetrics:v28];
      [v40 setUnpinnedY:v42];
      [v40 setGridLayoutLocation:4];
      [v40 setHidden:v37];
      v46 = 1.0;
      if (v37)
      {
        v46 = 0.0;
      }

      [v40 setAlpha:v46];
      [v40 setZIndex:-2999];
      v47 = self->_indexPathToSupplementary;
      indexPath2 = [v40 indexPath];
      [(NSMutableDictionary *)v47 setObject:v40 forKeyedSubscript:indexPath2];

      [(NSMutableArray *)self->_laidOutAttributes addObject:v40];
      v49 = self->_knownSupplementaryKinds;
      kind4 = [v28 kind];
      [(NSMutableSet *)v49 addObject:kind4];

      [(NSMutableDictionary *)self->_indexPathToMetrics setObject:v28 forKeyedSubscript:v38];
      v18 = v40;
      v16 = v38;
      collectionView = v51;
    }

    v5 = v53;
  }
}

- (id)firstVisibleIndexAtOrAfterItem:(int64_t)item itemCount:(int64_t)count inSection:(int64_t)section
{
  itemCopy = item;
  if (self->_visibleIndexPathsFilter)
  {
    if (item >= count)
    {
LABEL_5:
      v9 = 0;
    }

    else
    {
      while (1)
      {
        v9 = [MEMORY[0x277CCAA70] indexPathForItem:itemCopy inSection:section];
        if ([(NSSet *)self->_visibleIndexPathsFilter containsObject:v9])
        {
          break;
        }

        ++itemCopy;

        if (count == itemCopy)
        {
          goto LABEL_5;
        }
      }
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:item inSection:section];
  }

  return v9;
}

- (unint64_t)_prepareItemLayoutForSection:(int64_t)section
{
  sectionCopy = section;
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayout.m"];
    lastPathComponent = [v7 lastPathComponent];
    1305 = [v5 stringWithFormat:@"%@ (sectionIdx != GKGlobalSection)\n[%s (%s:%d)]", v6, "-[GKGridLayout _prepareItemLayoutForSection:]", objc_msgSend(lastPathComponent, "UTF8String"), 1305];

    sectionCopy = 0x7FFFFFFFFFFFFFFFLL;
    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", 1305}];
  }

  v10 = [(GKGridLayoutMetrics *)self->_dataSourceMetrics supplementaryMetricsForKey:@"SegmentedBoxMetricKey"];

  if (v10)
  {
    v11 = 40.0;
  }

  else
  {
    v11 = 0.0;
  }

  v113 = [(GKGridLayout *)self metricDataForSection:sectionCopy];
  v121 = [(GKGridLayout *)self metricsForSection:sectionCopy];
  v12 = sectionCopy;
  sectionsPerRow = [(GKGridLayout *)self sectionsPerRow];
  collectionView = [(GKGridLayout *)self collectionView];
  [(GKGridLayout *)self layoutBounds];
  v114 = v18;
  v115 = v17;
  v19 = (v16 + v11 * -2.0) / sectionsPerRow;
  v20 = v12 % sectionsPerRow;
  if (sectionsPerRow >= 2)
  {
    v15 = v11 + (v12 % sectionsPerRow) * v19;
  }

  else
  {
    v19 = v16;
  }

  v116 = v15;
  v117 = v19;
  dataSource = [collectionView dataSource];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  else
  {
    v21 = [collectionView numberOfItemsInSection:v12];
  }

  filteredTotalItemCount = [v113 filteredTotalItemCount];
  if (v21 >= filteredTotalItemCount)
  {
    v23 = filteredTotalItemCount;
  }

  else
  {
    v23 = v21;
  }

  v112 = v23;
  [v121 lineSpacing];
  v25 = v24;
  [v121 interitemSpacing];
  v27 = v26;
  [v121 padding];
  v29 = v28;
  v106 = v31;
  v107 = v30;
  v32 = v117 - (v30 + v31);
  [v121 itemSizeForCollectionView:collectionView];
  v120 = v34;
  if (sectionsPerRow >= 2)
  {
    v35 = (v33 + v11 * 2.0) / sectionsPerRow;
  }

  else
  {
    v35 = v33;
  }

  if (v35 == 0.0)
  {
    v37 = 1;
  }

  else
  {
    v36 = (v32 - v35) / (v27 + v35);
    v37 = (floorf(v36) + 1.0);
  }

  if (v37 <= 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = v37;
  }

  currentMaxVisibleItemCount = [v113 currentMaxVisibleItemCount];
  if (v112 >= currentMaxVisibleItemCount)
  {
    v40 = currentMaxVisibleItemCount;
  }

  else
  {
    v40 = v112;
  }

  if (v37 >= 2 && v40 % v38)
  {
    if (v40 + v38 - v40 % v38 >= v112)
    {
      v40 = v112;
    }

    else
    {
      v40 = v40 + v38 - v40 % v38;
    }
  }

  if (v11 <= 0.0)
  {
    v41 = v35;
  }

  else
  {
    v41 = v35 - (v11 + v11) / v38;
  }

  v42 = v40 % v38;
  if (v40 >= v38)
  {
    v43 = v38;
  }

  else
  {
    v43 = v40;
  }

  if (!v42)
  {
    v42 = v43;
  }

  v101 = v43;
  v102 = v42;
  v44 = v40 / v38;
  v45 = vcvtps_u32_f32(v44);
  lastObject = [(NSMutableArray *)self->_laidOutAttributes lastObject];
  [lastObject frame];
  MaxY = CGRectGetMaxY(v124);
  if (self->_shouldLayoutRTL)
  {
    [(GKGridLayout *)self rightLayoutGuideOffset];
  }

  else
  {
    [(GKGridLayout *)self leftLayoutGuideOffset];
  }

  v109 = v48;
  if (self->_shouldLayoutRTL)
  {
    [(GKGridLayout *)self leftLayoutGuideOffset];
  }

  else
  {
    [(GKGridLayout *)self rightLayoutGuideOffset];
  }

  v108 = v49;
  if (v45)
  {
    v93 = lastObject;
    v94 = v40;
    v95 = collectionView;
    v50 = 0;
    v51 = v45;
    v52 = 0;
    v53 = 0;
    v54 = v32 - (v27 * (v38 - 1) + v41 * v38);
    v55 = v32 - (v27 * (v102 - 1) + v41 * v102) - v54;
    v56 = v54 * 0.5;
    v57 = v55 * 0.5;
    v122 = v29 + MaxY;
    v99 = floorf(v56);
    v100 = v54;
    v98 = -v54;
    v104 = v51;
    v103 = v51 - 1;
    v97 = floorf(v57);
    *&v55 = v55;
    v96 = floorf(*&v55);
    v123 = sectionsPerRow - 1;
    sectionCopy3 = section;
    while (1)
    {
      v59 = v116 + v107;
      if (self->_shouldLayoutRTL)
      {
        v125.origin.y = v115;
        v125.origin.x = v116;
        v125.size.width = v117;
        v125.size.height = v114;
        v59 = CGRectGetMaxX(v125) - v107 - v41;
      }

      alignment = [v121 alignment];
      if (alignment == 2)
      {
        v61 = !self->_shouldLayoutRTL;
        v62 = v100;
        v63 = v98;
      }

      else
      {
        if (alignment != 1)
        {
          goto LABEL_57;
        }

        v61 = !self->_shouldLayoutRTL;
        v63 = -v99;
        v62 = v99;
      }

      if (!v61)
      {
        v62 = v63;
      }

      v59 = v59 + v62;
LABEL_57:
      if (v50 == v103)
      {
        lastLineItemAlignment = [v121 lastLineItemAlignment];
        if (lastLineItemAlignment == 2)
        {
          v67 = v96;
          if (self->_shouldLayoutRTL)
          {
            v67 = -v96;
          }

          v65 = v67;
LABEL_67:
          v59 = v59 + v65;
        }

        else if (lastLineItemAlignment == 1)
        {
          v65 = v97;
          if (self->_shouldLayoutRTL)
          {
            v65 = -v97;
          }

          goto LABEL_67;
        }

        v66 = v102;
        goto LABEL_69;
      }

      v66 = v101;
LABEL_69:
      v105 = v50;
      [v121 marginBetweenItems];
      v69 = v68;
      [(GKGridLayout *)self scale];
      if (v66)
      {
        v71 = v70;
        v72 = 0;
        v118 = floor(v120 * v70) / v70;
        v119 = floor(v122 * v70) / v70;
        do
        {
          v73 = v52;
          v52 = [(GKGridLayout *)self firstVisibleIndexAtOrAfterItem:v53 itemCount:v21 inSection:sectionCopy3];

          if (v52)
          {
            v74 = [(UICollectionViewLayoutAttributes *)GKCollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:v52];
            v126.origin.x = v116;
            v126.origin.y = v115;
            v126.size.width = v117;
            v126.size.height = v114;
            MinX = CGRectGetMinX(v126);
            v127.origin.x = v116;
            v127.origin.y = v115;
            v127.size.width = v117;
            v127.size.height = v114;
            MaxX = CGRectGetMaxX(v127);
            if (self->_shouldLayoutRTL)
            {
              v128.origin.x = v59;
              v128.origin.y = v122;
              v128.size.width = v41;
              v128.size.height = v120;
              v77 = CGRectGetMinX(v128);
              v78 = v41 - (MinX - v77);
              v79 = v77 < MinX;
              if (v77 >= MinX)
              {
                v80 = v59;
              }

              else
              {
                v80 = v59 + MinX - v77;
              }

              if (!v79)
              {
                v78 = v41;
              }
            }

            else
            {
              v81 = MaxX;
              v129.origin.x = v59;
              v129.origin.y = v122;
              v129.size.width = v41;
              v129.size.height = v120;
              v82 = CGRectGetMaxX(v129) <= v81;
              v80 = v59;
              v78 = v41;
              if (!v82)
              {
                v78 = v81 - v59;
                v80 = v59;
              }
            }

            [v74 setFrame:{floor(v71 * v80) / v71, v119, floor(v71 * v78) / v71, v118}];
            [v74 setDataSource:dataSource];
            [v74 setSectionMetrics:v121];
            [v74 setCurrentTotalItemCount:v112];
            [v74 setMaxTotalItemCount:v21];
            [v74 setCurrentVisibleItemCount:{objc_msgSend(v113, "currentMaxVisibleItemCount")}];
            if (v20 | v72)
            {
              v83 = 0;
            }

            else
            {
              v84 = v107;
              if (self->_shouldLayoutRTL)
              {
                v84 = v106;
              }

              v83 = v84 == 0.0;
            }

            [v74 setDoesAbutLeftOfCollectionView:v83];
            v85 = v69 * 0.5;
            if (v66 == 1)
            {
              v86 = v20 == v123;
              if (self->_shouldLayoutRTL)
              {
                v86 = v20 == 0;
              }

              if (v86)
              {
                v85 = v108;
              }

              else
              {
                v85 = v69 * 0.5;
              }
            }

            v87 = v20 == v123;
            if (!self->_shouldLayoutRTL)
            {
              v87 = v20 == 0;
            }

            v88 = v109;
            if (v72 != 0 || !v87)
            {
              v88 = v69 * 0.5;
            }

            [v74 setLeadingMargin:v88];
            [v74 setTrailingMargin:v85];
            [v74 setHidden:self->_displayingOverlay];
            indexPathToItem = self->_indexPathToItem;
            indexPath = [v74 indexPath];
            [(NSMutableDictionary *)indexPathToItem setObject:v74 forKeyedSubscript:indexPath];

            [(NSMutableArray *)self->_laidOutAttributes addObject:v74];
            [(GKGridLayout *)self updatePresentationDataInSection:section withAttributes:v74 supplementaryLocation:-1];
            v91 = -v41;
            if (!self->_shouldLayoutRTL)
            {
              v91 = v41;
            }

            v59 = v59 + v91;

            sectionCopy3 = section;
          }

          v53 = [v52 item] + 1;
          ++v72;
          --v66;
        }

        while (v66);
      }

      v122 = v25 + v120 + v122;
      v50 = v105 + 1;
      if (v105 + 1 == v104)
      {

        v40 = v94;
        collectionView = v95;
        lastObject = v93;
        break;
      }
    }
  }

  return v40;
}

- (void)_resetState
{
  [(NSMutableDictionary *)self->_oldSectionToMetricKeys removeAllObjects];
  v3 = [(NSPointerArray *)self->_sectionToMetricData count];
  v4 = v3 - 1;
  if (v3 >= 1)
  {
    if (v3 != 1)
    {
      v5 = 0;
      do
      {
        v6 = [(GKGridLayout *)self metricDataForSection:v5];
        layoutKey = [v6 layoutKey];
        oldSectionToMetricKeys = self->_oldSectionToMetricKeys;
        v9 = [MEMORY[0x277CCABB0] numberWithLong:v5];
        [(NSMutableDictionary *)oldSectionToMetricKeys setObject:layoutKey forKeyedSubscript:v9];

        ++v5;
      }

      while (v4 != v5);
    }

    v10 = [(GKGridLayout *)self metricDataForSection:0x7FFFFFFFFFFFFFFFLL];
    layoutKey2 = [v10 layoutKey];
    [(NSMutableDictionary *)self->_oldSectionToMetricKeys setObject:layoutKey2 forKeyedSubscript:&unk_286188D48];
  }

  [(NSPointerArray *)self->_sectionToMetricData setCount:0];
  [(NSPointerArray *)self->_sectionToPresentationData setCount:0];
  [(NSMutableArray *)self->_laidOutAttributes removeAllObjects];
  [(NSMutableOrderedSet *)self->_laidOutPinnableAttributes removeAllObjects];
  [(NSMutableIndexSet *)self->_sectionsWithPinnedHeaders removeAllIndexes];
  [(NSMutableDictionary *)self->_oldIndexPathToDecoration removeAllObjects];
  [(NSMutableDictionary *)self->_oldIndexPathToDecoration setValuesForKeysWithDictionary:self->_indexPathToDecoration];
  [(NSMutableDictionary *)self->_indexPathToDecoration removeAllObjects];
  [(NSMutableDictionary *)self->_oldIndexPathToSupplementary removeAllObjects];
  [(NSMutableDictionary *)self->_oldIndexPathToSupplementary setValuesForKeysWithDictionary:self->_indexPathToSupplementary];
  [(NSMutableDictionary *)self->_indexPathToSupplementary removeAllObjects];
  [(NSMutableDictionary *)self->_oldIndexPathToItem removeAllObjects];
  [(NSMutableDictionary *)self->_oldIndexPathToItem setValuesForKeysWithDictionary:self->_indexPathToItem];
  [(NSMutableDictionary *)self->_indexPathToItem removeAllObjects];
  [(NSMutableDictionary *)self->_indexPathToMetrics removeAllObjects];
  [(NSMutableSet *)self->_knownSupplementaryKinds removeAllObjects];
  self->_hiddenSearchBarOffset = 0.0;
  self->_segmentedHeaderPinningOffset = 0.0;
  self->_segmentedBoxY = 0.0;
}

- (void)prepareLayout
{
  if ((self->_invalidationFlags & 6) != 0)
  {
    [(GKGridLayout *)self fullyRebuildLayout];
  }

  self->_invalidationFlags = 0;
}

- (void)fullyRebuildLayout
{
  [(GKGridLayout *)self _resetState];
  collectionView = [(GKGridLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];
  dataSourceMetrics = self->_dataSourceMetrics;
  if (!dataSourceMetrics)
  {
    [(GKGridLayout *)self refreshMetrics];
    dataSourceMetrics = self->_dataSourceMetrics;
  }

  [(GKDataSourceMetrics *)dataSourceMetrics prepareLayout:self];
  v6 = [(GKGridLayout *)self presentationDataForSection:0x7FFFFFFFFFFFFFFFLL];
  v7 = [(GKGridLayout *)self _prepareSupplementaryLayoutForSection:0x7FFFFFFFFFFFFFFFLL atLocation:0 offset:0 globalOffset:0];
  [v6 setNumHeaders:v7 - 1];
  [v6 setOverlayOffset:v7];
  v12 = [(GKGridLayout *)self _prepareOverlayLayoutForSection:0x7FFFFFFFFFFFFFFFLL offset:v7];
  [v6 setNumOverlays:{v12 + ~objc_msgSend(v6, "numHeaders")}];
  if (numberOfSections)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      v9 = [(GKGridLayout *)self presentationDataForSection:i];
      v10 = [(GKGridLayout *)self _prepareSupplementaryLayoutForSection:i atLocation:0 offset:0 globalOffset:&v12];
      [v9 setNumHeaders:v10];
      [v9 setNumItems:{-[GKGridLayout _prepareItemLayoutForSection:](self, "_prepareItemLayoutForSection:", i)}];
      [v9 setNumFooters:{-[GKGridLayout _prepareSupplementaryLayoutForSection:atLocation:offset:globalOffset:](self, "_prepareSupplementaryLayoutForSection:atLocation:offset:globalOffset:", i, 1, v10, &v12) - objc_msgSend(v9, "numHeaders")}];
    }
  }

  if ([(GKGridLayout *)self sectionsPerRow]> 1)
  {
    [(GKGridLayout *)self updatePresentationDataForLastInterleavedSections];
  }

  [(GKGridLayout *)self finalizeGlobalPresentationDataWithSectionRange:0, numberOfSections];
  v11 = v12;
  v12 = [(GKGridLayout *)self _prepareSupplementaryLayoutForSection:0x7FFFFFFFFFFFFFFFLL atLocation:1 offset:v12 globalOffset:0];
  [v6 setNumFooters:v11 - v12];
  [(GKGridLayout *)self calculateCollectionViewContentSize];
  [(GKGridLayout *)self _prepareSegmentedBoxLayoutWithOffset:v12];
  [(GKGridLayout *)self _filterPinnedAttributes];
}

- (double)applyBottomPinningToAttributes:(id)attributes minY:(double)y maxY:(double)maxY
{
  attributesCopy = attributes;
  v7 = [attributesCopy count];
  if (v7 >= 1)
  {
    v8 = v7 + 1;
    do
    {
      v9 = [attributesCopy objectAtIndexedSubscript:v8 - 2];
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v9 unpinnedY];
      v17 = v16;
      v21.origin.x = v11;
      v21.origin.y = v17;
      v21.size.width = v13;
      v21.size.height = v15;
      MaxY = CGRectGetMaxY(v21);
      if (MaxY <= maxY)
      {
        v19 = v17;
      }

      else
      {
        v19 = maxY - v15;
      }

      if (MaxY > maxY)
      {
        maxY = maxY - v15;
      }

      [v9 setFrame:{v11, v19, v13, v15}];

      --v8;
    }

    while (v8 > 1);
  }

  return maxY;
}

- (double)applyTopPinningToAttributes:(id)attributes minY:(double)y maxY:(double)maxY
{
  attributesCopy = attributes;
  v8 = [attributesCopy count];
  if (v8 >= 1)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [attributesCopy objectAtIndexedSubscript:i];
      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [v11 unpinnedY];
      if (v18 >= y)
      {
        yCopy = v18;
      }

      else
      {
        v23.origin.x = v13;
        v23.origin.y = y;
        v23.size.width = v15;
        v23.size.height = v17;
        MaxY = CGRectGetMaxY(v23);
        if (MaxY - maxY <= 0.0)
        {
          yCopy = y;
          y = MaxY;
        }

        else
        {
          if (MaxY - maxY >= v17)
          {
            [v11 unpinnedY];
            yCopy = v21;
          }

          else
          {
            v24.origin.x = v13;
            v24.origin.y = y;
            v24.size.width = v15;
            v24.size.height = v17;
            yCopy = maxY - CGRectGetHeight(v24);
          }

          y = maxY;
        }
      }

      [v11 setFrame:{v13, yCopy, v15, v17}];
    }
  }

  return y;
}

- (double)layoutBottomPinningAttributes:(id)attributes minY:(double)y maxY:(double)maxY
{
  attributesCopy = attributes;
  [(GKGridLayout *)self applyBottomPinningToAttributes:attributesCopy minY:y maxY:maxY];
  yCopy = v9;
  if (v9 < y)
  {
    [(GKGridLayout *)self applyTopPinningToAttributes:attributesCopy minY:y maxY:1.79769313e308];
    yCopy = y;
  }

  return yCopy;
}

- (double)layoutTopPinningAttributes:(id)attributes minY:(double)y maxY:(double)maxY
{
  [(GKGridLayout *)self applyTopPinningToAttributes:attributes minY:y maxY:?];
  if (result > maxY)
  {
    return maxY;
  }

  return result;
}

- (void)finalizePinnedAttributes:(id)attributes forSection:(int64_t)section footer:(BOOL)footer
{
  attributesCopy = attributes;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9 = [attributesCopy count];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__GKGridLayout_finalizePinnedAttributes_forSection_footer___block_invoke;
  v12[3] = &unk_27966A520;
  footerCopy = footer;
  v12[4] = &v14;
  v12[5] = v9;
  [attributesCopy enumerateObjectsUsingBlock:v12];
  if (!footer)
  {
    if (section == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = section + 1;
    }

    if (v15[3])
    {
      sectionsWithPinnedHeaders = [(GKGridLayout *)self sectionsWithPinnedHeaders];
      [sectionsWithPinnedHeaders addIndex:v10];
    }

    else
    {
      sectionsWithPinnedHeaders = [(GKGridLayout *)self sectionsWithPinnedHeaders];
      [sectionsWithPinnedHeaders removeIndex:v10];
    }
  }

  _Block_object_dispose(&v14, 8);
}

void __59__GKGridLayout_finalizePinnedAttributes_forSection_footer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  [v13 frame];
  v6 = v5;
  [v13 unpinnedY];
  v8 = v6 != v7;
  [v13 setIsPinned:v6 != v7];
  v9 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) |= v8;
  v10 = a3 - v9;
  v11 = [v13 isPartOfGlobalPinningGroup];
  v12 = 0x7FFFFFFFFFFFFC16;
  if (v11)
  {
    v12 = 0x7FFFFFFFFFFFFFFELL;
  }

  [v13 setZIndex:v10 + v12];
}

- (void)_filterPinnedAttributes
{
  collectionView = [(GKGridLayout *)self collectionView];
  if (([collectionView numberOfSections] - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002)
  {
    [collectionView contentOffset];
    v5 = v4;
    height = self->_laidOutContentSize.height;
    [collectionView contentInset];
    v8 = v7;
    v10 = v9;
    [(GKGridLayout *)self layoutBounds];
    if (v5 + v8 >= 0.0)
    {
      v15 = v5 + v8;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = CGRectGetMaxY(*&v11) - v10;
    if (v16 <= v5 + height + v10)
    {
      v17 = v16;
    }

    else
    {
      v17 = v5 + height + v10;
    }

    v18 = [(GKGridLayout *)self metricDataForSection:0x7FFFFFFFFFFFFFFFLL];
    headerPinnableAttributes = [v18 headerPinnableAttributes];
    if (headerPinnableAttributes)
    {
      [(GKGridLayout *)self layoutTopPinningAttributes:headerPinnableAttributes minY:v15 maxY:v17];
      v15 = v20;
      [(GKGridLayout *)self finalizePinnedAttributes:headerPinnableAttributes forSection:0x7FFFFFFFFFFFFFFFLL footer:0];
    }

    footerPinnableAttributes = [v18 footerPinnableAttributes];
    if (footerPinnableAttributes)
    {
      [(GKGridLayout *)self layoutBottomPinningAttributes:footerPinnableAttributes minY:v15 maxY:v17];
      v17 = v22;
      [(GKGridLayout *)self finalizePinnedAttributes:footerPinnableAttributes forSection:0x7FFFFFFFFFFFFFFFLL footer:1];
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__GKGridLayout__filterPinnedAttributes__block_invoke;
    v24[3] = &unk_27966A548;
    v24[4] = self;
    *&v24[5] = v15;
    *&v24[6] = v17;
    [(GKGridLayout *)self enumerateSectionsIndexesOverlappingYOffset:v24 block:v15];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __39__GKGridLayout__filterPinnedAttributes__block_invoke_2;
    v23[3] = &unk_27966A548;
    v23[4] = self;
    *&v23[5] = v15;
    *&v23[6] = v17;
    [(GKGridLayout *)self enumerateSectionsIndexesOverlappingYOffset:v23 block:v17];
  }
}

void __39__GKGridLayout__filterPinnedAttributes__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = [*(a1 + 32) metricDataForSection:a2];
  v4 = [v11 headerPinnableAttributes];
  if (v4)
  {
    v5 = [*(a1 + 32) presentationDataForSection:a2];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v5 maxY];
    if (v8 <= v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    [v6 layoutTopPinningAttributes:v4 minY:v7 maxY:v10];
    [*(a1 + 32) finalizePinnedAttributes:v4 forSection:a2 footer:0];
  }
}

void __39__GKGridLayout__filterPinnedAttributes__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = [*(a1 + 32) metricDataForSection:a2];
  v4 = [v9 footerPinnableAttributes];
  if (v4)
  {
    v5 = [*(a1 + 32) presentationDataForSection:a2];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v5 headerMaxY];
    if (v7 >= v8)
    {
      v8 = v7;
    }

    [v6 layoutBottomPinningAttributes:v4 minY:v8 maxY:*(a1 + 48)];
    [*(a1 + 32) finalizePinnedAttributes:v4 forSection:a2 footer:1];
  }
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  [(GKGridLayout *)self _filterPinnedAttributes];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_laidOutAttributes;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [v14 frame];
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        if (CGRectIntersectsRect(v23, v24))
        {
          [array addObject:v14];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return array;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NSMutableDictionary *)self->_indexPathToItem objectForKeyedSubscript:pathCopy];
  if (!v5)
  {
    v5 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
    v6 = -[GKGridLayout metricsForSection:](self, "metricsForSection:", [pathCopy section]);
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
    collectionView = [(GKGridLayout *)self collectionView];
    [v6 itemSizeForCollectionView:collectionView];
    [v5 setFrame:{v7, v8, v10, v11}];

    [v5 setAlpha:0.0];
    [v5 setHidden:1];
  }

  return v5;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v8 = [(NSMutableDictionary *)self->_indexPathToSupplementary objectForKeyedSubscript:pathCopy];
  if (!v8)
  {
    v8 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
    [v8 setAlpha:0.0];
    [(NSMutableSet *)self->_knownSupplementaryKinds addObject:kindCopy];
  }

  return v8;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v8 = [(NSMutableDictionary *)self->_indexPathToDecoration objectForKeyedSubscript:pathCopy];
  if (!v8)
  {
    v8 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
    [v8 setAlpha:0.0];
    [(NSMutableSet *)self->_knownSupplementaryKinds addObject:kindCopy];
  }

  return v8;
}

- (unint64_t)currentMaxVisibleItemCountForSection:(int64_t)section
{
  v3 = [(GKGridLayout *)self metricDataForSection:section];
  v4 = v3;
  if (v3)
  {
    currentMaxVisibleItemCount = [v3 currentMaxVisibleItemCount];
  }

  else
  {
    currentMaxVisibleItemCount = 0x7FFFFFFFFFFFFFFFLL;
  }

  return currentMaxVisibleItemCount;
}

- (id)revealMoreForSectionIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayout.m"];
    lastPathComponent = [v7 lastPathComponent];
    1834 = [v5 stringWithFormat:@"%@ (section != GKGlobalSection)\n[%s (%s:%d)]", v6, "-[GKGridLayout revealMoreForSectionIndex:]", objc_msgSend(lastPathComponent, "UTF8String"), 1834];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", 1834}];
  }

  v10 = [(GKGridLayout *)self metricDataForSection:index];
  sectionMetrics = [v10 sectionMetrics];
  v12 = -[GKGridLayout revealMoreForSectionIndex:revealCount:andDeleteItemCount:](self, "revealMoreForSectionIndex:revealCount:andDeleteItemCount:", index, [sectionMetrics incrementalRevealItemCount], 0);

  return v12;
}

- (id)revealMoreForSectionIndex:(int64_t)index revealCount:(unint64_t)count andDeleteItemCount:(unint64_t)itemCount
{
  if (count)
  {
    v9 = [(GKGridLayout *)self metricDataForSection:?];
    sectionMetrics = [v9 sectionMetrics];
    selfCopy = self;
    collectionView = [(GKGridLayout *)self collectionView];
    v11 = [collectionView numberOfItemsInSection:index];
    currentMaxVisibleItemCount = [v9 currentMaxVisibleItemCount];
    v13 = currentMaxVisibleItemCount;
    if (v11 >= currentMaxVisibleItemCount)
    {
      v14 = currentMaxVisibleItemCount;
    }

    else
    {
      v14 = v11;
    }

    if (count >= v11 - v14)
    {
      countCopy = v11 - v14;
    }

    else
    {
      countCopy = count;
    }

    v16 = countCopy - itemCount + [v9 currentMaxVisibleItemCount];
    maximumVisibleItemCount = [sectionMetrics maximumVisibleItemCount];
    if (v16 <= maximumVisibleItemCount)
    {
      v18 = maximumVisibleItemCount;
    }

    else
    {
      v18 = v16;
    }

    [v9 setCurrentMaxVisibleItemCount:v18];
    if (v11 == itemCount)
    {
      [v9 setCurrentMaxVisibleItemCount:-1];
    }

    v19 = [MEMORY[0x277CBEB58] setWithCapacity:countCopy];
    if (v11 > v13)
    {
      if (countCopy <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = countCopy;
      }

      v21 = v14 - itemCount;
      do
      {
        if (v14 < v11)
        {
          v22 = [MEMORY[0x277CCAA70] indexPathForItem:v21 inSection:index];
          [v19 addObject:v22];
        }

        ++v21;
        ++v14;
        --v20;
      }

      while (v20);
    }

    if ([v9 currentMaxVisibleItemCount] >= v11)
    {
      v24 = sectionMetrics;
      v23 = [sectionMetrics shouldAlwaysIncludeShowMore] ^ 1;
    }

    else
    {
      LOBYTE(v23) = 0;
      v24 = sectionMetrics;
    }

    selfCopy->_noMoreShowMore = v23;
    v26 = [v24 listForLocation:1];
    v27 = [(GKGridLayout *)selfCopy presentationDataForSection:index];
    v28 = [(GKGridLayout *)selfCopy indexOfSupplementaryMetricsOfKind:@"IncrementalReveal" inList:v26];
    if (v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v28;
      numHeaders = [v27 numHeaders];
      numOverlays = [v27 numOverlays];
      v32 = [MEMORY[0x277CCAA70] indexPathForItem:numHeaders + numOverlays + v29 inSection:index];
      [(GKGridLayout *)selfCopy setIndexPathOfTouchedShowMore:v32];
    }

    [(GKGridLayout *)selfCopy setRevealedIndexPaths:v19];
    allObjects = [v19 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)initialLayoutAttributesForSlidingInItemAtIndexPath:(id)path
{
  v4 = [(NSMutableDictionary *)self->_indexPathToItem objectForKeyedSubscript:path];
  v5 = [v4 copy];

  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(GKGridLayout *)self layoutBounds];
  v15 = -v14;
  if (self->_updateType == 1)
  {
    v15 = v14;
  }

  v16 = v7 + v15;
  [(GKGridLayout *)self yOffsetForSlidingUpdate];
  [v5 setFrame:{v16, v9 + v17, v11, v13}];

  return v5;
}

- (id)finalLayoutAttributesForSlidingAwayItemAtIndexPath:(id)path
{
  v4 = [(NSMutableDictionary *)self->_oldIndexPathToItem objectForKeyedSubscript:path];
  v5 = [v4 copy];

  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(GKGridLayout *)self layoutBounds];
  v15 = -v14;
  if (self->_updateType != 1)
  {
    v15 = v14;
  }

  v16 = v7 + v15;
  [(GKGridLayout *)self yOffsetForSlidingUpdate];
  [v5 setFrame:{v16, v9 - v17, v11, v13}];

  return v5;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  v80 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([(NSMutableSet *)self->_revealedIndexPaths containsObject:pathCopy])
  {
    v5 = [(GKGridLayout *)self layoutAttributesForItemAtIndexPath:pathCopy];
    indexPathAfterUpdate11 = [v5 copy];

    [indexPathAfterUpdate11 setAlpha:0.0];
    if (!indexPathAfterUpdate11)
    {
      goto LABEL_56;
    }

    goto LABEL_74;
  }

  if (self->_updateType - 1 <= 1)
  {
    collectionView = [(GKGridLayout *)self collectionView];
    dataSource = [collectionView dataSource];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dataSourceForUpdate = self->_dataSourceForUpdate;
      v10 = [dataSource dataSourceForSection:{objc_msgSend(pathCopy, "section")}];
      LODWORD(dataSourceForUpdate) = [(GKCollectionViewDataSource *)dataSourceForUpdate containsDataSource:v10];

      if (dataSourceForUpdate)
      {
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v11 = self->_currentUpdateItems;
        indexPathAfterUpdate11 = [(NSArray *)v11 countByEnumeratingWithState:&v73 objects:v79 count:16];
        if (indexPathAfterUpdate11)
        {
          selfCopy = self;
          v12 = *v74;
          while (2)
          {
            for (i = 0; i != indexPathAfterUpdate11; i = i + 1)
            {
              if (*v74 != v12)
              {
                objc_enumerationMutation(v11);
              }

              v14 = *(*(&v73 + 1) + 8 * i);
              if (![v14 updateAction])
              {
                indexPathAfterUpdate = [v14 indexPathAfterUpdate];
                if ([indexPathAfterUpdate isEqual:pathCopy])
                {

LABEL_53:
                  self = selfCopy;
                  indexPathAfterUpdate11 = [(GKGridLayout *)selfCopy initialLayoutAttributesForSlidingInItemAtIndexPath:pathCopy];
                  goto LABEL_54;
                }

                indexPathAfterUpdate2 = [v14 indexPathAfterUpdate];
                section = [indexPathAfterUpdate2 section];
                if (section == [pathCopy section])
                {
                  indexPathAfterUpdate3 = [v14 indexPathAfterUpdate];
                  item = [indexPathAfterUpdate3 item];

                  if (item == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_53;
                  }
                }

                else
                {
                }
              }
            }

            indexPathAfterUpdate11 = [(NSArray *)v11 countByEnumeratingWithState:&v73 objects:v79 count:16];
            if (indexPathAfterUpdate11)
            {
              continue;
            }

            break;
          }

          self = selfCopy;
        }

LABEL_54:

LABEL_55:
        if (!indexPathAfterUpdate11)
        {
          goto LABEL_56;
        }

        goto LABEL_74;
      }

      oldSectionToMetricKeys = self->_oldSectionToMetricKeys;
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
      v37 = [(NSMutableDictionary *)oldSectionToMetricKeys objectForKeyedSubscript:v36];
      v38 = -[GKGridLayout metricDataForSection:](self, "metricDataForSection:", [pathCopy section]);
      v39 = [v37 isEqual:v38];

      if ((v39 & 1) == 0)
      {
        indexPathAfterUpdate11 = [(GKGridLayout *)self initialLayoutAttributesForSlidingInItemAtIndexPath:pathCopy];
        goto LABEL_55;
      }
    }

    indexPathAfterUpdate11 = 0;
    goto LABEL_55;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = self->_currentUpdateItems;
  v20 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (!v20)
  {
    indexPathAfterUpdate11 = 0;
    goto LABEL_49;
  }

  v21 = v20;
  selfCopy2 = self;
  v22 = *v70;
  while (2)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*v70 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v69 + 1) + 8 * j);
      if (![v24 updateAction])
      {
        indexPathAfterUpdate4 = [v24 indexPathAfterUpdate];
        if ([indexPathAfterUpdate4 isEqual:pathCopy])
        {

LABEL_47:
          self = selfCopy2;
          v47 = [(NSMutableDictionary *)selfCopy2->_indexPathToItem objectForKeyedSubscript:pathCopy];
          indexPathAfterUpdate11 = [v47 copy];

          v46 = 0.0;
          goto LABEL_48;
        }

        indexPathAfterUpdate5 = [v24 indexPathAfterUpdate];
        if ([indexPathAfterUpdate5 item] == 0x7FFFFFFFFFFFFFFFLL)
        {
          indexPathAfterUpdate6 = [v24 indexPathAfterUpdate];
          section2 = [indexPathAfterUpdate6 section];
          section3 = [pathCopy section];

          if (section2 == section3)
          {
            goto LABEL_47;
          }
        }

        else
        {
        }
      }

      if ([v24 updateAction] != 3)
      {
        continue;
      }

      indexPathAfterUpdate7 = [v24 indexPathAfterUpdate];
      if ([indexPathAfterUpdate7 isEqual:pathCopy])
      {

LABEL_45:
        self = selfCopy2;
        oldIndexPathToItem = selfCopy2->_oldIndexPathToItem;
        v41 = MEMORY[0x277CCAA70];
        item2 = [pathCopy item];
        indexPathBeforeUpdate = [v24 indexPathBeforeUpdate];
        v44 = [v41 indexPathForItem:item2 inSection:{objc_msgSend(indexPathBeforeUpdate, "section")}];
        v45 = [(NSMutableDictionary *)oldIndexPathToItem objectForKeyedSubscript:v44];
        indexPathAfterUpdate11 = [v45 copy];

        v46 = 1.0;
LABEL_48:
        [indexPathAfterUpdate11 setAlpha:v46];
        goto LABEL_49;
      }

      indexPathAfterUpdate8 = [v24 indexPathAfterUpdate];
      if ([indexPathAfterUpdate8 item] == 0x7FFFFFFFFFFFFFFFLL)
      {
        indexPathAfterUpdate9 = [v24 indexPathAfterUpdate];
        section4 = [indexPathAfterUpdate9 section];
        section5 = [pathCopy section];

        if (section4 == section5)
        {
          goto LABEL_45;
        }
      }

      else
      {
      }
    }

    v21 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v78 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

  indexPathAfterUpdate11 = 0;
  self = selfCopy2;
LABEL_49:

  if (!indexPathAfterUpdate11)
  {
LABEL_56:
    selfCopy3 = self;
    obja = pathCopy;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v48 = self->_currentUpdateItems;
    v49 = [(NSArray *)v48 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v66;
      while (2)
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v66 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v65 + 1) + 8 * k);
          if ([v53 updateAction] != 4 && objc_msgSend(v53, "updateAction") != 2)
          {
            indexPathAfterUpdate10 = [v53 indexPathAfterUpdate];
            item3 = [indexPathAfterUpdate10 item];
            if (item3 == 0x7FFFFFFFFFFFFFFFLL)
            {
              indexPathAfterUpdate11 = [v53 indexPathAfterUpdate];
              section6 = [indexPathAfterUpdate11 section];
              if (section6 == [obja section])
              {

LABEL_72:
                indexPathAfterUpdate11 = 0;
                pathCopy = obja;
                goto LABEL_73;
              }
            }

            indexPathAfterUpdate12 = [v53 indexPathAfterUpdate];
            v58 = [indexPathAfterUpdate12 isEqual:obja];

            if (item3 == 0x7FFFFFFFFFFFFFFFLL)
            {
            }

            if (v58)
            {
              goto LABEL_72;
            }
          }
        }

        v50 = [(NSArray *)v48 countByEnumeratingWithState:&v65 objects:v77 count:16];
        if (v50)
        {
          continue;
        }

        break;
      }
    }

    pathCopy = obja;
    v48 = [(NSMutableDictionary *)selfCopy3->_indexPathToItem objectForKeyedSubscript:obja];
    indexPathAfterUpdate11 = [(NSArray *)v48 copy];
LABEL_73:
  }

LABEL_74:

  return indexPathAfterUpdate11;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  v70 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (self->_updateType - 1 > 1)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    dataSource = self->_currentUpdateItems;
    v19 = [(NSArray *)dataSource countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v19)
    {
      v20 = v19;
      selfCopy = self;
      v21 = *v61;
      while (2)
      {
        v22 = 0;
        v59 = v20;
        do
        {
          if (*v61 != v21)
          {
            objc_enumerationMutation(dataSource);
          }

          v23 = *(*(&v60 + 1) + 8 * v22);
          if ([v23 updateAction] == 3)
          {
            indexPathBeforeUpdate = [v23 indexPathBeforeUpdate];
            if ([indexPathBeforeUpdate isEqual:pathCopy])
            {

LABEL_39:
              indexPathAfterUpdate = [v23 indexPathAfterUpdate];
              item = [indexPathAfterUpdate item];

              self = selfCopy;
              indexPathToItem = selfCopy->_indexPathToItem;
              if (item == 0x7FFFFFFFFFFFFFFFLL)
              {
                v40 = MEMORY[0x277CCAA70];
                item2 = [pathCopy item];
                indexPathAfterUpdate2 = [v23 indexPathAfterUpdate];
                v43 = [v40 indexPathForItem:item2 inSection:{objc_msgSend(indexPathAfterUpdate2, "section")}];
                v44 = [(NSMutableDictionary *)indexPathToItem objectForKeyedSubscript:v43];
                v10 = [v44 copy];
              }

              else
              {
                indexPathAfterUpdate2 = [v23 indexPathAfterUpdate];
                v43 = [(NSMutableDictionary *)indexPathToItem objectForKeyedSubscript:indexPathAfterUpdate2];
                v10 = [v43 copy];
              }

              [v10 setAlpha:1.0];
              goto LABEL_51;
            }

            indexPathBeforeUpdate2 = [v23 indexPathBeforeUpdate];
            if ([indexPathBeforeUpdate2 item] == 0x7FFFFFFFFFFFFFFFLL)
            {
              indexPathBeforeUpdate3 = [v23 indexPathBeforeUpdate];
              section = [indexPathBeforeUpdate3 section];
              v28 = v21;
              v29 = dataSource;
              v30 = pathCopy;
              section2 = [pathCopy section];

              v32 = section == section2;
              v20 = v59;
              pathCopy = v30;
              dataSource = v29;
              v21 = v28;
              if (v32)
              {
                goto LABEL_39;
              }
            }

            else
            {
            }
          }

          if ([v23 updateAction] == 1)
          {
            indexPathBeforeUpdate4 = [v23 indexPathBeforeUpdate];
            if ([indexPathBeforeUpdate4 item] == 0x7FFFFFFFFFFFFFFFLL)
            {
            }

            else
            {
              indexPathBeforeUpdate5 = [v23 indexPathBeforeUpdate];
              section3 = [indexPathBeforeUpdate5 section];
              section4 = [pathCopy section];

              if (section3 != section4)
              {
                self = selfCopy;
                v51 = [(NSMutableDictionary *)selfCopy->_indexPathToItem objectForKeyedSubscript:pathCopy];
                v10 = [v51 copy];

                goto LABEL_51;
              }
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [(NSArray *)dataSource countByEnumeratingWithState:&v60 objects:v68 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      v10 = 0;
      self = selfCopy;
      goto LABEL_51;
    }

LABEL_37:
    v10 = 0;
    goto LABEL_51;
  }

  collectionView = [(GKGridLayout *)self collectionView];
  dataSource = [collectionView dataSource];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_37;
  }

  dataSourceForUpdate = self->_dataSourceForUpdate;
  v8 = -[NSArray dataSourceForSection:](dataSource, "dataSourceForSection:", [pathCopy section]);
  LODWORD(dataSourceForUpdate) = [(GKCollectionViewDataSource *)dataSourceForUpdate containsDataSource:v8];

  if (dataSourceForUpdate)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v9 = self->_currentUpdateItems;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v10)
    {
      v58 = dataSource;
      selfCopy2 = self;
      v11 = *v65;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v65 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v64 + 1) + 8 * i);
          if ([v13 updateAction] == 1)
          {
            indexPathBeforeUpdate6 = [v13 indexPathBeforeUpdate];
            if ([indexPathBeforeUpdate6 isEqual:pathCopy])
            {

LABEL_48:
              self = selfCopy2;
              v10 = [(GKGridLayout *)selfCopy2 finalLayoutAttributesForSlidingAwayItemAtIndexPath:pathCopy];
              goto LABEL_49;
            }

            indexPathBeforeUpdate7 = [v13 indexPathBeforeUpdate];
            section5 = [indexPathBeforeUpdate7 section];
            if (section5 == [pathCopy section])
            {
              indexPathBeforeUpdate8 = [v13 indexPathBeforeUpdate];
              item3 = [indexPathBeforeUpdate8 item];

              if (item3 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_48;
              }
            }

            else
            {
            }
          }
        }

        v10 = [(NSArray *)v9 countByEnumeratingWithState:&v64 objects:v69 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      self = selfCopy2;
LABEL_49:
      dataSource = v58;
    }

    goto LABEL_50;
  }

  oldSectionToMetricKeys = self->_oldSectionToMetricKeys;
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v47 = [(NSMutableDictionary *)oldSectionToMetricKeys objectForKeyedSubscript:v46];
  v48 = -[GKGridLayout metricDataForSection:](self, "metricDataForSection:", [pathCopy section]);
  layoutKey = [v48 layoutKey];
  v50 = [v47 isEqual:layoutKey];

  if (v50)
  {
    v9 = [(NSMutableDictionary *)self->_indexPathToItem objectForKeyedSubscript:pathCopy];
    v10 = [(NSArray *)v9 copy];
LABEL_50:

    goto LABEL_51;
  }

  v10 = [(GKGridLayout *)self finalLayoutAttributesForSlidingAwayItemAtIndexPath:pathCopy];
LABEL_51:

  if (v10 || [(NSArray *)self->_currentUpdateItems count])
  {
    updateType = self->_updateType;
    goto LABEL_54;
  }

  updateType = self->_updateType;
  if (updateType != 3)
  {
LABEL_54:
    if (updateType != 4)
    {
      goto LABEL_56;
    }
  }

  v53 = [(NSMutableDictionary *)self->_indexPathToItem objectForKeyedSubscript:pathCopy];
  v54 = [v53 copy];

  v10 = v54;
LABEL_56:

  return v10;
}

- (BOOL)shouldSlideInSupplementaryElementOfKind:(id)kind forUpdateItem:(id)item atIndexPath:(id)path
{
  kindCopy = kind;
  itemCopy = item;
  pathCopy = path;
  if (![itemCopy updateAction] && (objc_msgSend(kindCopy, "isEqualToString:", @"SegmentedBox") & 1) == 0)
  {
    if ([pathCopy length] < 2)
    {
      indexPathAfterUpdate3 = [(NSMutableDictionary *)self->_indexPathToMetrics objectForKeyedSubscript:pathCopy];
      indexPathAfterUpdate = [itemCopy indexPathAfterUpdate];
      if ([indexPathAfterUpdate section] != 0x7FFFFFFFFFFFFFFFLL)
      {
        animateWithSection = [indexPathAfterUpdate3 animateWithSection];
        indexPathAfterUpdate2 = [itemCopy indexPathAfterUpdate];
        v17 = animateWithSection == [indexPathAfterUpdate2 section];
LABEL_12:
        v11 = v17;

        goto LABEL_17;
      }
    }

    else
    {
      indexPathAfterUpdate3 = [itemCopy indexPathAfterUpdate];
      if ([indexPathAfterUpdate3 isEqual:pathCopy])
      {
        v11 = 1;
LABEL_18:

        goto LABEL_4;
      }

      indexPathAfterUpdate = [itemCopy indexPathAfterUpdate];
      section = [indexPathAfterUpdate section];
      if (section == [pathCopy section])
      {
        indexPathAfterUpdate2 = [itemCopy indexPathAfterUpdate];
        v17 = [indexPathAfterUpdate2 item] == 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_12;
      }
    }

    v11 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v11 = 0;
LABEL_4:

  return v11;
}

- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v51 = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  pathCopy = path;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = self->_currentUpdateItems;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v7)
  {
LABEL_25:

    v20 = 0x27F1DA000;
    goto LABEL_31;
  }

  v8 = v7;
  v9 = *v47;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v47 != v9)
    {
      objc_enumerationMutation(obj);
    }

    v11 = *(*(&v46 + 1) + 8 * v10);
    if (self->_updateType - 1 <= 1)
    {
      if ([(GKGridLayout *)self shouldSlideInSupplementaryElementOfKind:kindCopy forUpdateItem:*(*(&v46 + 1) + 8 * v10) atIndexPath:pathCopy])
      {
        break;
      }
    }

    if ([v11 updateAction])
    {
      goto LABEL_15;
    }

    indexPathBeforeUpdate = [v11 indexPathBeforeUpdate];
    if ([indexPathBeforeUpdate item] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    indexPathAfterUpdate = [v11 indexPathAfterUpdate];
    section = [indexPathAfterUpdate section];
    if (section != [pathCopy section])
    {

LABEL_14:
      goto LABEL_15;
    }

    v15 = [pathCopy length];

    if (v15 >= 2)
    {
      v40 = [(GKGridLayout *)self layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
      v41 = [v40 copy];

      [v41 setAlpha:1.0];
LABEL_29:
      v20 = 0x27F1DA000uLL;
      goto LABEL_30;
    }

LABEL_15:
    if ([v11 updateAction] == 3)
    {
      indexPathAfterUpdate2 = [v11 indexPathAfterUpdate];
      if ([indexPathAfterUpdate2 item] != 0x7FFFFFFFFFFFFFFFLL && !self->_movedItemsInUpdateCarrySections)
      {
        goto LABEL_22;
      }

      indexPathAfterUpdate3 = [v11 indexPathAfterUpdate];
      section2 = [indexPathAfterUpdate3 section];
      if (section2 != [pathCopy section])
      {

LABEL_22:
        goto LABEL_23;
      }

      v19 = [pathCopy length];

      if (v19 >= 2)
      {
        oldIndexPathToSupplementary = self->_oldIndexPathToSupplementary;
        v35 = MEMORY[0x277CCAA70];
        item = [pathCopy item];
        indexPathBeforeUpdate2 = [v11 indexPathBeforeUpdate];
        v38 = [v35 indexPathForItem:item inSection:{objc_msgSend(indexPathBeforeUpdate2, "section")}];
        v39 = [(NSMutableDictionary *)oldIndexPathToSupplementary objectForKeyedSubscript:v38];
        v41 = [v39 copy];

        [v41 setIndexPath:pathCopy];
        goto LABEL_29;
      }
    }

LABEL_23:
    if (v8 == ++v10)
    {
      v8 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      goto LABEL_25;
    }
  }

  v20 = 0x27F1DA000uLL;
  v21 = [(NSMutableDictionary *)self->_indexPathToSupplementary objectForKeyedSubscript:pathCopy];
  v41 = [v21 copy];

  [v41 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(GKGridLayout *)self layoutBounds];
  v31 = -v30;
  if (self->_updateType == 1)
  {
    v31 = v30;
  }

  v32 = v23 + v31;
  [(GKGridLayout *)self yOffsetForSlidingUpdate];
  [v41 setFrame:{v32, v25 + v33, v27, v29}];
LABEL_30:

  if (v41)
  {
    goto LABEL_32;
  }

LABEL_31:
  v42 = [*(&self->super.super.isa + *(v20 + 1256)) objectForKeyedSubscript:{pathCopy, kindCopy}];
  v41 = [v42 copy];

LABEL_32:

  return v41;
}

- (double)yOffsetForSlidingUpdate
{
  collectionView = [(GKGridLayout *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  [collectionView frame];
  v7 = v6;
  [collectionView contentInset];
  v9 = v5 + v7 - v8;
  height = self->_laidOutContentSize.height;
  if (v9 <= height)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v9 - height;
  }

  return v11;
}

- (BOOL)shouldSlideOutSupplementaryElementOfKind:(id)kind forUpdateItem:(id)item atIndexPath:(id)path
{
  kindCopy = kind;
  itemCopy = item;
  pathCopy = path;
  if ([itemCopy updateAction] == 1 && (objc_msgSend(kindCopy, "isEqualToString:", @"SegmentedBox") & 1) == 0)
  {
    if ([pathCopy length] < 2)
    {
      indexPathBeforeUpdate3 = [(NSMutableDictionary *)self->_indexPathToMetrics objectForKeyedSubscript:pathCopy];
      indexPathBeforeUpdate = [itemCopy indexPathBeforeUpdate];
      if ([indexPathBeforeUpdate section] != 0x7FFFFFFFFFFFFFFFLL)
      {
        animateWithSection = [indexPathBeforeUpdate3 animateWithSection];
        indexPathBeforeUpdate2 = [itemCopy indexPathBeforeUpdate];
        v16 = animateWithSection == [indexPathBeforeUpdate2 section];
LABEL_11:
        v11 = v16;

        goto LABEL_16;
      }
    }

    else
    {
      indexPathBeforeUpdate3 = [itemCopy indexPathBeforeUpdate];
      if ([indexPathBeforeUpdate3 isEqual:pathCopy])
      {
        v11 = 1;
LABEL_17:

        goto LABEL_18;
      }

      indexPathBeforeUpdate = [itemCopy indexPathBeforeUpdate];
      section = [indexPathBeforeUpdate section];
      if (section == [pathCopy section])
      {
        indexPathBeforeUpdate2 = [itemCopy indexPathBeforeUpdate];
        v16 = [indexPathBeforeUpdate2 item] == 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_11;
      }
    }

    v11 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v49 = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  pathCopy = path;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_currentUpdateItems;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v7)
  {
LABEL_25:

    goto LABEL_30;
  }

  v8 = v7;
  v9 = *v45;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v45 != v9)
    {
      objc_enumerationMutation(obj);
    }

    v11 = *(*(&v44 + 1) + 8 * v10);
    if (self->_updateType - 1 <= 1)
    {
      if ([(GKGridLayout *)self shouldSlideOutSupplementaryElementOfKind:kindCopy forUpdateItem:*(*(&v44 + 1) + 8 * v10) atIndexPath:pathCopy])
      {
        break;
      }
    }

    if ([v11 updateAction] != 1)
    {
      goto LABEL_15;
    }

    indexPathBeforeUpdate = [v11 indexPathBeforeUpdate];
    if ([indexPathBeforeUpdate item] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    indexPathBeforeUpdate2 = [v11 indexPathBeforeUpdate];
    section = [indexPathBeforeUpdate2 section];
    if (section != [pathCopy section])
    {

LABEL_14:
      goto LABEL_15;
    }

    v15 = [pathCopy length];

    if (v15 >= 2)
    {
      v39 = [(NSMutableDictionary *)self->_oldIndexPathToSupplementary objectForKeyedSubscript:pathCopy];
      [v39 setAlpha:0.0];
      goto LABEL_29;
    }

LABEL_15:
    if ([v11 updateAction] == 3)
    {
      indexPathBeforeUpdate3 = [v11 indexPathBeforeUpdate];
      if ([indexPathBeforeUpdate3 item] != 0x7FFFFFFFFFFFFFFFLL && !self->_movedItemsInUpdateCarrySections)
      {
        goto LABEL_22;
      }

      indexPathBeforeUpdate4 = [v11 indexPathBeforeUpdate];
      section2 = [indexPathBeforeUpdate4 section];
      if (section2 != [pathCopy section])
      {

LABEL_22:
        goto LABEL_23;
      }

      v19 = [pathCopy length];

      if (v19 >= 2)
      {
        indexPathToSupplementary = self->_indexPathToSupplementary;
        v34 = MEMORY[0x277CCAA70];
        item = [pathCopy item];
        indexPathAfterUpdate = [v11 indexPathAfterUpdate];
        v37 = [v34 indexPathForItem:item inSection:{objc_msgSend(indexPathAfterUpdate, "section")}];
        v38 = [(NSMutableDictionary *)indexPathToSupplementary objectForKeyedSubscript:v37];
        v39 = [v38 copy];

        [v39 setIndexPath:pathCopy];
        goto LABEL_29;
      }
    }

LABEL_23:
    if (v8 == ++v10)
    {
      v8 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      goto LABEL_25;
    }
  }

  v20 = [(NSMutableDictionary *)self->_oldIndexPathToSupplementary objectForKeyedSubscript:pathCopy];
  v39 = [v20 copy];

  [v39 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(GKGridLayout *)self layoutBounds];
  v30 = -v29;
  if (self->_updateType != 1)
  {
    v30 = v29;
  }

  v31 = v22 + v30;
  [(GKGridLayout *)self yOffsetForSlidingUpdate];
  [v39 setFrame:{v31, v24 - v32, v26, v28}];
LABEL_29:

  if (v39)
  {
    goto LABEL_31;
  }

LABEL_30:
  kindCopy = [(NSMutableDictionary *)self->_indexPathToSupplementary objectForKeyedSubscript:pathCopy, kindCopy];
  v39 = [kindCopy copy];

LABEL_31:

  return v39;
}

- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)kind
{
  array = [MEMORY[0x277CBEB18] array];
  v5 = array;
  if (self->_noMoreShowMore && self->_indexPathOfTouchedShowMore)
  {
    [array addObject:?];
  }

  return v5;
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  updatesCopy = updates;
  [(GKGridLayout *)self setCurrentUpdateItems:updatesCopy];
  v5.receiver = self;
  v5.super_class = GKGridLayout;
  [(GKGridLayout *)&v5 prepareForCollectionViewUpdates:updatesCopy];
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = GKGridLayout;
  [(GKGridLayout *)&v3 finalizeCollectionViewUpdates];
  [(NSMutableSet *)self->_revealedIndexPaths removeAllObjects];
  [(GKGridLayout *)self setCurrentUpdateItems:0];
  [(GKGridLayout *)self setIndexPathOfTouchedShowMore:0];
  [(GKGridLayout *)self setUpdateType:6];
  [(GKGridLayout *)self setDataSourceForUpdate:0];
  [(GKGridLayout *)self setMovedItemsInUpdateCarrySections:0];
  self->_oldLaidOutContentSize = self->_laidOutContentSize;
}

- (void)prepareForAnimatedBoundsChange:(CGRect)change
{
  v6.receiver = self;
  v6.super_class = GKGridLayout;
  [(GKGridLayout *)&v6 prepareForAnimatedBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
  collectionView = [(GKGridLayout *)self collectionView];
  dataSource = [collectionView dataSource];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    dataSource = 0;
  }

  [(GKGridLayout *)self prepareForUpdate:3 inDataSource:dataSource];
}

- (void)finalizeAnimatedBoundsChange
{
  v3.receiver = self;
  v3.super_class = GKGridLayout;
  [(GKGridLayout *)&v3 finalizeAnimatedBoundsChange];
  [(GKGridLayout *)self setUpdateType:6];
  [(GKGridLayout *)self setDataSourceForUpdate:0];
}

- (void)prepareForUpdate:(unint64_t)update inDataSource:(id)source
{
  sourceCopy = source;
  [(GKGridLayout *)self setUpdateType:update];
  [(GKGridLayout *)self setDataSourceForUpdate:sourceCopy];
}

- (id)_animationForReusableView:(id)view toLayoutAttributes:(id)attributes type:(unint64_t)type
{
  v36 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  attributesCopy = attributes;
  if (type != 2 || self->_updateType || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [attributesCopy representedElementCategory])
  {
    v10 = 0;
    goto LABEL_6;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = self->_currentUpdateItems;
  v10 = [(NSArray *)v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v10)
  {
    goto LABEL_28;
  }

  v27 = viewCopy;
  v28 = v13;
  v14 = *v32;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v32 != v14)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v31 + 1) + 8 * i);
      if ([v16 updateAction] == 1)
      {
        indexPath = [attributesCopy indexPath];
        indexPathBeforeUpdate = [v16 indexPathBeforeUpdate];
        if ([indexPath isEqual:indexPathBeforeUpdate])
        {
          [attributesCopy alpha];
          v20 = v19;

          if (v20 == 0.0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          indexPath2 = [attributesCopy indexPath];
          section = [indexPath2 section];
          indexPathBeforeUpdate2 = [v16 indexPathBeforeUpdate];
          if (section != [indexPathBeforeUpdate2 section])
          {
            goto LABEL_23;
          }

          indexPathBeforeUpdate3 = [v16 indexPathBeforeUpdate];
          if ([indexPathBeforeUpdate3 item] != 0x7FFFFFFFFFFFFFFFLL)
          {

LABEL_23:
            v13 = v28;
            continue;
          }

          [attributesCopy alpha];
          v26 = v25;

          v13 = v28;
          if (v26 == 0.0)
          {
LABEL_27:
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __66__GKGridLayout__animationForReusableView_toLayoutAttributes_type___block_invoke;
            v29[3] = &unk_27966A570;
            viewCopy = v27;
            v30 = v27;
            v10 = [v29 copy];

            goto LABEL_28;
          }
        }
      }
    }

    v10 = [(NSArray *)v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  viewCopy = v27;
LABEL_28:

LABEL_6:
  v11 = _Block_copy(v10);

  return v11;
}

void __66__GKGridLayout__animationForReusableView_toLayoutAttributes_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__GKGridLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_2;
  v8[3] = &unk_2796699A8;
  v9 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__GKGridLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_3;
  v6[3] = &unk_279669CB8;
  v7 = v3;
  v5 = v3;
  [v4 animateWithDuration:v8 animations:v6 completion:0.2];
}

uint64_t __66__GKGridLayout__animationForReusableView_toLayoutAttributes_type___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (CGSize)laidOutContentSize
{
  width = self->_laidOutContentSize.width;
  height = self->_laidOutContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimumLaidOutContentSize
{
  width = self->_minimumLaidOutContentSize.width;
  height = self->_minimumLaidOutContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)oldLaidOutContentSize
{
  width = self->_oldLaidOutContentSize.width;
  height = self->_oldLaidOutContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end