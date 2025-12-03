@interface GKSectionMetrics
+ (id)metricsForIdiom:(int64_t)idiom;
- (BOOL)isEqual:(id)equal;
- (BOOL)sectionHeadersShouldPin;
- (CGSize)itemSizeForCollectionView:(id)view;
- (GKSectionMetrics)init;
- (GKSectionMetrics)initWithIdiom:(int64_t)idiom;
- (UIEdgeInsets)padding;
- (double)calculatedItemHeight;
- (double)sectionHeaderHeight;
- (double)showMoreHeight;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localDescription;
- (unint64_t)flowMaxColumnCountForViewWidth:(double)width;
- (void)setItemHeightList:(id)list;
- (void)setSectionHeaderHeight:(double)height;
- (void)setSectionHeadersShouldPin:(BOOL)pin;
- (void)setShowMoreHeight:(double)height;
@end

@implementation GKSectionMetrics

+ (id)metricsForIdiom:(int64_t)idiom
{
  v3 = [objc_alloc(objc_opt_class()) initWithIdiom:idiom];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = GKSectionMetrics;
  v4 = [(GKGridLayoutMetrics *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setPadding:{self->_padding.top, self->_padding.left, self->_padding.bottom, self->_padding.right}];
    [v5 setAlignment:self->_alignment];
    [v5 setLineSpacing:self->_lineSpacing];
    [v5 setInteritemSpacing:self->_interitemSpacing];
    [v5 setDesiredItemWidth:self->_desiredItemWidth];
    [v5 setDesiredItemHeight:self->_desiredItemHeight];
    [v5 setFlowColumnWidth:self->_flowColumnWidth];
    [v5 setFlowMaxColumnCount:self->_flowMaxColumnCount];
    [v5 setUseViewSizeForFlowMaxColumnCount:self->_useViewSizeForFlowMaxColumnCount];
    [v5 setItemHeightList:self->_itemHeightList];
    [v5 setLastLineItemAlignment:self->_lastLineItemAlignment];
    [v5 setMaximumVisibleItemCount:self->_maximumVisibleItemCount];
    [v5 setIncrementalRevealItemCount:self->_incrementalRevealItemCount];
    [v5 setIncrementalRevealConsumesPadding:self->_incrementalRevealConsumesPadding];
    [v5 setShouldAlwaysIncludeShowMore:self->_shouldAlwaysIncludeShowMore];
    [v5 setMarginBetweenItems:self->_marginBetweenItems];
    [v5 setShouldShowSectionHeadersWhenNoItems:self->_shouldShowSectionHeadersWhenNoItems];
  }

  return v5;
}

- (GKSectionMetrics)init
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (*MEMORY[0x277D0C258])
  {
    v5 = *MEMORY[0x277D0C8F0];
  }

  else
  {
    v5 = 1;
  }

  if (userInterfaceIdiom == 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return [(GKSectionMetrics *)self initWithIdiom:v6];
}

- (GKSectionMetrics)initWithIdiom:(int64_t)idiom
{
  v15.receiver = self;
  v15.super_class = GKSectionMetrics;
  v4 = [(GKGridLayoutMetrics *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_desiredItemWidth = 1.79769313e308;
    v4->_flowColumnWidth = 1.79769313e308;
    v4->_lastLineItemAlignment = 0;
    v4->_alignment = 1;
    v4->_maximumVisibleItemCount = -1;
    v4->_incrementalRevealItemCount = 3;
    v4->_incrementalRevealConsumesPadding = 1;
    v4->_marginBetweenItems = 20.0;
    v6 = +[GKSupplementaryViewMetrics supplementaryMetrics];
    [v6 setKind:@"SectionHeader"];
    [v6 setShouldPin:1];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v9 = v8;

    p_top = &v5->_padding.top;
    *&v5->_desiredItemHeight = qword_24E367610[idiom == 1];
    if (idiom == 1)
    {
      *p_top = 22.0;
      v5->_padding.left = 0.0;
      v5->_padding.bottom = 0.0;
      v5->_padding.right = 0.0;
      v11 = dbl_24E367620[v9 > 1.0];
    }

    else
    {
      v12 = 8.0;
      if (v9 > 1.0)
      {
        v12 = 7.5;
      }

      *p_top = v12;
      v5->_padding.left = 0.0;
      v5->_padding.bottom = v12;
      v5->_padding.right = 0.0;
      v11 = 35.0;
    }

    [v6 setDesiredHeight:v11];
    [(GKGridLayoutMetrics *)v5 addSupplementaryMetrics:v6 forKey:@"HeaderMetricKey" atLocation:0];
    v13 = +[GKSupplementaryViewMetrics supplementaryMetrics];
    [v13 setKind:@"IncrementalReveal"];
    [v13 setDesiredHeight:v5->_desiredItemHeight];
    [(GKGridLayoutMetrics *)v5 insertSupplementaryMetrics:v13 forKey:@"ShowMoreMetricKey" atLocation:1];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v11 = (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_padding.top, v5[9]), vceqq_f64(*&self->_padding.bottom, v5[10])))) & 1) != 0 && self->_alignment == *&v5[2].f64[1] && self->_lineSpacing == v5[3].f64[0] && self->_interitemSpacing == v5[3].f64[1] && ([(GKSectionMetrics *)self calculatedItemHeight], v8 = v7, [(float64x2_t *)v6 calculatedItemHeight], v8 == v9) && self->_desiredItemWidth == v6[4].f64[1] && self->_flowColumnWidth == v6[5].f64[0] && self->_flowMaxColumnCount == *&v6[5].f64[1] && self->_useViewSizeForFlowMaxColumnCount == LOBYTE(v6[2].f64[0]) && (itemHeightList = self->_itemHeightList, itemHeightList == *&v6[6].f64[1]) && ([(NSDictionary *)itemHeightList isEqual:?]& 1) == 0 && self->_lastLineItemAlignment == *&v6[7].f64[0] && self->_maximumVisibleItemCount == *&v6[7].f64[1] && self->_incrementalRevealItemCount == *&v6[8].f64[0] && self->_incrementalRevealConsumesPadding == BYTE1(v6[2].f64[0]) && self->_shouldAlwaysIncludeShowMore == BYTE2(v6[2].f64[0]) && self->_shouldShowSectionHeadersWhenNoItems == BYTE3(v6[2].f64[0]);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)localDescription
{
  p_padding = &self->_padding;
  v4 = NSStringFromUIEdgeInsets(self->_padding);
  if (self->_desiredItemWidth == 1.79769313e308)
  {
    v5 = @"inf";
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  v26 = v4;
  if (self->_desiredItemHeight == 1.79769313e308)
  {
    v29 = @"inf";
  }

  else
  {
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  v25 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  alignment = self->_alignment;
  v24 = v6;
  lastLineItemAlignment = self->_lastLineItemAlignment;
  maximumVisibleItemCount = self->_maximumVisibleItemCount;
  if (maximumVisibleItemCount)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@" maxVisItems:%ld", self->_maximumVisibleItemCount];
  }

  else
  {
    v28 = &stru_28612D290;
  }

  incrementalRevealItemCount = self->_incrementalRevealItemCount;
  if (incrementalRevealItemCount)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@" incReveal:%ld", self->_incrementalRevealItemCount];
  }

  else
  {
    v27 = &stru_28612D290;
  }

  lineSpacing = self->_lineSpacing;
  if (lineSpacing <= 0.0)
  {
    v10 = &stru_28612D290;
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@" lineSpacing:%f", *&self->_lineSpacing];
  }

  interitemSpacing = self->_interitemSpacing;
  if (interitemSpacing <= 0.0)
  {
    v12 = &stru_28612D290;
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@" interitemSpacing:%f ", *&self->_interitemSpacing];
  }

  flowColumnWidth = self->_flowColumnWidth;
  desiredItemWidth = self->_desiredItemWidth;
  if (flowColumnWidth == desiredItemWidth)
  {
    v16 = &stru_28612D290;
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_flowColumnWidth];
    v16 = [v15 stringWithFormat:@"flowWidth:%@", v21];
  }

  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*p_padding, *MEMORY[0x277D768C8]), vceqq_f64(p_padding[1], *(MEMORY[0x277D768C8] + 16))))))
  {
    v19 = [v25 stringWithFormat:@"<%@: %p> align:%ld lastAlign:%ld %@%@%@%@ size:{%@, %@}%@%@", v24, self, alignment, lastLineItemAlignment, v28, v27, v10, v12, v5, v29, v16, &stru_28612D290];
    v17 = v26;
  }

  else
  {
    v17 = v26;
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@" pad:%@", v26];
    v19 = [v25 stringWithFormat:@"<%@: %p> align:%ld lastAlign:%ld %@%@%@%@ size:{%@, %@}%@%@", v24, self, alignment, lastLineItemAlignment, v28, v27, v10, v12, v5, v29, v16, v18];
  }

  if (flowColumnWidth != desiredItemWidth)
  {
  }

  if (interitemSpacing > 0.0)
  {
  }

  if (lineSpacing > 0.0)
  {
  }

  if (incrementalRevealItemCount)
  {
  }

  if (maximumVisibleItemCount)
  {
  }

  return v19;
}

- (double)sectionHeaderHeight
{
  v2 = [(GKGridLayoutMetrics *)self supplementaryMetricsForKey:@"HeaderMetricKey"];
  v3 = v2;
  if (v2)
  {
    [v2 desiredHeight];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)setSectionHeaderHeight:(double)height
{
  v4 = [(GKGridLayoutMetrics *)self supplementaryMetricsForKey:@"HeaderMetricKey"];
  v10 = v4;
  if (!v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (metrics != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKSectionMetrics setSectionHeaderHeight:]", objc_msgSend(lastPathComponent, "UTF8String"), 515];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
    v4 = 0;
  }

  [v4 setDesiredHeight:height];
}

- (double)showMoreHeight
{
  v2 = [(GKGridLayoutMetrics *)self supplementaryMetricsForKey:@"ShowMoreMetricKey"];
  v3 = v2;
  if (v2)
  {
    [v2 desiredHeight];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)setShowMoreHeight:(double)height
{
  v4 = [(GKGridLayoutMetrics *)self supplementaryMetricsForKey:@"ShowMoreMetricKey"];
  v10 = v4;
  if (!v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (metrics != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKSectionMetrics setShowMoreHeight:]", objc_msgSend(lastPathComponent, "UTF8String"), 528];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
    v4 = 0;
  }

  [v4 setDesiredHeight:height];
}

- (BOOL)sectionHeadersShouldPin
{
  v2 = [(GKGridLayoutMetrics *)self supplementaryMetricsForKey:@"HeaderMetricKey"];
  v3 = v2;
  if (v2)
  {
    shouldPin = [v2 shouldPin];
  }

  else
  {
    shouldPin = 0;
  }

  return shouldPin;
}

- (void)setSectionHeadersShouldPin:(BOOL)pin
{
  pinCopy = pin;
  v4 = [(GKGridLayoutMetrics *)self supplementaryMetricsForKey:@"HeaderMetricKey"];
  v10 = v4;
  if (!v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (metrics != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKSectionMetrics setSectionHeadersShouldPin:]", objc_msgSend(lastPathComponent, "UTF8String"), 541];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
    v4 = 0;
  }

  [v4 setShouldPin:pinCopy];
}

- (void)setItemHeightList:(id)list
{
  listCopy = list;
  if (self->_itemHeightList != listCopy)
  {
    v6 = listCopy;
    objc_storeStrong(&self->_itemHeightList, list);
    listCopy = v6;
    self->_calculatedItemHeightCache = 0.0;
  }
}

- (double)calculatedItemHeight
{
  v7 = 0;
  v8 = &v7;
  desiredItemHeight = self->_desiredItemHeight;
  v9 = 0x2020000000;
  calculatedItemHeightCache = desiredItemHeight;
  itemHeightList = self->_itemHeightList;
  if (itemHeightList)
  {
    desiredItemHeight = self->_calculatedItemHeightCache;
    if (desiredItemHeight <= 0.0)
    {
      calculatedItemHeightCache = 0.0;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __40__GKSectionMetrics_calculatedItemHeight__block_invoke;
      v6[3] = &unk_27966A370;
      v6[4] = &v7;
      [(NSDictionary *)itemHeightList enumerateKeysAndObjectsUsingBlock:v6];
      desiredItemHeight = v8[3];
      self->_calculatedItemHeightCache = desiredItemHeight;
    }

    else
    {
      calculatedItemHeightCache = self->_calculatedItemHeightCache;
    }
  }

  _Block_object_dispose(&v7, 8);
  return desiredItemHeight;
}

void __40__GKSectionMetrics_calculatedItemHeight__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v12 isEqualToString:@"GKFixedHeightSentinel"])
  {
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v8 = MEMORY[0x277D0C8B0];
    [v5 doubleValue];
    v10 = v9;

    [v8 scaledValueFromHISpecLeading:v12 forFontTextStyle:v10];
    v7 = v11;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7 + *(*(*(a1 + 32) + 8) + 24);
}

- (unint64_t)flowMaxColumnCountForViewWidth:(double)width
{
  v3 = 2;
  if (width <= 507.0)
  {
    v3 = 1;
  }

  if (width <= 990.5)
  {
    return v3;
  }

  else
  {
    return 3;
  }
}

- (CGSize)itemSizeForCollectionView:(id)view
{
  viewCopy = view;
  [(GKSectionMetrics *)self calculatedItemHeight];
  v6 = v5;
  desiredItemWidth = self->_desiredItemWidth;
  [viewCopy bounds];
  v9 = v8;
  v11 = v10;

  if (desiredItemWidth == 1.79769313e308)
  {
    [(GKSectionMetrics *)self padding];
    v13 = v12;
    v15 = v14;
    [(GKSectionMetrics *)self padding];
    v17 = v16;
    [(GKSectionMetrics *)self padding];
    desiredItemWidth = v9 - (v17 + v18);
    if (self->_flowColumnWidth != 1.79769313e308)
    {
      [(GKSectionMetrics *)self interitemSpacing];
      flowColumnWidth = self->_flowColumnWidth;
      v20 = v9 - (v13 + v15) - flowColumnWidth;
      v22 = floorf(v20) / (v21 + flowColumnWidth) + 1.0;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      if (self->_useViewSizeForFlowMaxColumnCount)
      {
        flowMaxColumnCount = [(GKSectionMetrics *)self flowMaxColumnCountForViewWidth:v9];
      }

      else
      {
        flowMaxColumnCount = self->_flowMaxColumnCount;
      }

      if (v23 >= flowMaxColumnCount)
      {
        v25 = flowMaxColumnCount;
      }

      else
      {
        v25 = v23;
      }

      if (!flowMaxColumnCount)
      {
        v25 = v23;
      }

      v26 = desiredItemWidth / v25;
      desiredItemWidth = floorf(v26);
    }
  }

  if (v6 == 1.79769313e308)
  {
    v27 = v11;
  }

  else
  {
    v27 = v6;
  }

  v28 = desiredItemWidth;
  result.height = v27;
  result.width = v28;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end