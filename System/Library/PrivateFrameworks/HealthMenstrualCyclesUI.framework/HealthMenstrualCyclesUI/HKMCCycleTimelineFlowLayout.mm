@interface HKMCCycleTimelineFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (CGRect)_pillFrameAtZoomIndex:(int64_t)a3;
- (CGSize)configuredSize;
- (HKMCCycleTimelineFlowLayout)initWithYOffset:(double)a3 pillConfigurations:(id)a4 introPillConfiguration:(id)a5 pillAspectRatio:(double)a6;
- (double)_pillOriginXAtZoomIndex:(int64_t)a3 centerPill:(BOOL)a4;
- (id)_configurationAtIndex:(int64_t)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)_configureLayoutAttributes:(id)a3;
- (void)prepareLayout;
@end

@implementation HKMCCycleTimelineFlowLayout

- (HKMCCycleTimelineFlowLayout)initWithYOffset:(double)a3 pillConfigurations:(id)a4 introPillConfiguration:(id)a5 pillAspectRatio:(double)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  if (![v12 count])
  {
    [HKMCCycleTimelineFlowLayout initWithYOffset:a2 pillConfigurations:self introPillConfiguration:? pillAspectRatio:?];
  }

  v36.receiver = self;
  v36.super_class = HKMCCycleTimelineFlowLayout;
  v14 = [(UICollectionViewFlowLayout *)&v36 init];
  v15 = v14;
  if (v14)
  {
    v31 = v13;
    v14->_yOffset = a3;
    objc_storeStrong(&v14->_pillConfigurations, a4);
    objc_storeStrong(&v15->_introPillConfiguration, a5);
    v15->_pillAspectRatio = a6;
    v16 = -[NSArray objectAtIndexedSubscript:](v15->_pillConfigurations, "objectAtIndexedSubscript:", [v12 count] >> 1);
    [v16 heightWithAspectRatio:a6];
    v15->_centerPillHeight = v17;
    [v16 width];
    v18 = v15->_centerPillHeight + a3;
    v15->_cellSize.width = v19;
    v15->_cellSize.height = v18;
    v15->_totalZoomWidth = 0.0;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = v15->_pillConfigurations;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v32 + 1) + 8 * i);
          [v25 width];
          v27 = v26;
          [v25 spacing];
          v15->_totalZoomWidth = v15->_totalZoomWidth + v27 + v28;
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v22);
    }

    [(UICollectionViewFlowLayout *)v15 setScrollDirection:1];
    [(UICollectionViewFlowLayout *)v15 setMinimumLineSpacing:0.0];
    [(UICollectionViewFlowLayout *)v15 setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)v15 setItemSize:v15->_cellSize.width, v15->_cellSize.height];

    v13 = v31;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v15;
}

- (CGSize)configuredSize
{
  v3 = self->_cellSize.width * [(NSArray *)self->_pillConfigurations count];
  v4 = self->_centerPillHeight + self->_yOffset;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HKMCCycleTimelineFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v15 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(HKMCCycleTimelineFlowLayout *)self _configureLayoutAttributes:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v6.receiver = self;
  v6.super_class = HKMCCycleTimelineFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v6 layoutAttributesForItemAtIndexPath:a3];
  [(HKMCCycleTimelineFlowLayout *)self _configureLayoutAttributes:v4];

  return v4;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  v5 = [(HKMCCycleTimelineFlowLayout *)self collectionView:a3.x];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(NSIndexPath *)self->_centerIndexPath item];
  width = self->_cellSize.width;
  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  v16 = (CGRectGetWidth(v19) - width) * -0.5 + v14 * width;
  v17 = 0.0;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  [(HKMCCycleTimelineFlowLayout *)self targetContentOffsetForProposedContentOffset:a3.x withScrollingVelocity:a3.y, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = HKMCCycleTimelineFlowLayout;
  v3 = [(UICollectionViewFlowLayout *)&v5 invalidationContextForBoundsChange:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [v3 setInvalidateFlowLayoutAttributes:0];
  [v3 setInvalidateFlowLayoutDelegateMetrics:0];

  return v3;
}

- (void)prepareLayout
{
  v34.receiver = self;
  v34.super_class = HKMCCycleTimelineFlowLayout;
  [(UICollectionViewFlowLayout *)&v34 prepareLayout];
  v3 = [(HKMCCycleTimelineFlowLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 contentOffset];
  v13 = v12;
  v14 = v12 + v9 * 0.5;
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  v16 = [v3 indexPathForItemAtPoint:{MidX, CGRectGetMidY(v36)}];
  centerIndexPath = self->_centerIndexPath;
  self->_centerIndexPath = v16;

  v18 = self->_centerIndexPath;
  v33.receiver = self;
  v33.super_class = HKMCCycleTimelineFlowLayout;
  v19 = [(UICollectionViewFlowLayout *)&v33 layoutAttributesForItemAtIndexPath:v18];
  [v19 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v37.origin.x = v21;
  v37.origin.y = v23;
  v37.size.width = v25;
  v37.size.height = v27;
  self->_offsetFactor = (CGRectGetMidX(v37) - v14) / self->_cellSize.width;
  v28 = [(NSIndexPath *)self->_centerIndexPath item];
  v29 = v28 - [(NSArray *)self->_pillConfigurations count]/ 2;
  p_zoomRange = &self->_zoomRange;
  if (v29 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v29;
  }

  v32 = [(NSArray *)self->_pillConfigurations count];
  p_zoomRange->location = v31 - 1;
  self->_zoomRange.length = v32 + 1;
  if (self->_offsetFactor < 0.0)
  {
    p_zoomRange->location = v31;
  }

  self->_zoomAreaOffset = v13 + (v9 - self->_totalZoomWidth) * 0.5;
}

- (void)_configureLayoutAttributes:(id)a3
{
  v18 = a3;
  v4 = [v18 indexPath];
  v5 = [v4 item];

  location = self->_zoomRange.location;
  if (v5 < location || v5 - location >= self->_zoomRange.length)
  {
    width = self->_cellSize.width;
    height = self->_cellSize.height;
    v12 = 0.0;
    y = 0.0;
    v14 = 0.0;
  }

  else
  {
    [(HKMCCycleTimelineFlowLayout *)self _pillFrameAtZoomIndex:?];
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    v12 = fabs(CGRectGetMidX(v20) / self->_totalZoomWidth * 2.0 + -1.0);
    [v18 frame];
    v14 = x - (v13 - self->_zoomAreaOffset);
    v15 = [(HKMCCycleTimelineFlowLayout *)self collectionView];
    v16 = [v15 effectiveUserInterfaceLayoutDirection];

    if (v16 == 1)
    {
      [v18 frame];
      v14 = v17 - v14 - width;
    }
  }

  [v18 setPillFrame:{v14, y, width, height}];
  [v18 setShrinkFactor:v12];
}

- (CGRect)_pillFrameAtZoomIndex:(int64_t)a3
{
  v5 = [(HKMCCycleTimelineFlowLayout *)self _configurationAtIndex:a3 - 1];
  v6 = [(HKMCCycleTimelineFlowLayout *)self _configurationAtIndex:a3];
  [v5 width];
  v8 = v7;
  [v6 width];
  offsetFactor = self->_offsetFactor;
  v11 = v10 - v8;
  v12 = v10 + (v10 - v8) * offsetFactor;
  v13 = v8 + v11 * offsetFactor;
  if (offsetFactor >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 * self->_pillAspectRatio;
  [(HKMCCycleTimelineFlowLayout *)self _pillOriginXAtZoomIndex:a3 centerPill:1];
  v17 = v16;
  v18 = self->_yOffset + (self->_centerPillHeight - v15) * 0.5;

  v19 = v17;
  v20 = v18;
  v21 = v14;
  v22 = v15;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (double)_pillOriginXAtZoomIndex:(int64_t)a3 centerPill:(BOOL)a4
{
  v4 = a4;
  v7 = a3 - 1;
  if (a3 < 1)
  {
    v9 = 0.0;
  }

  else
  {
    [(HKMCCycleTimelineFlowLayout *)self _pillOriginXAtZoomIndex:a3 - 1 centerPill:0];
    v9 = v8;
  }

  v10 = [(HKMCCycleTimelineFlowLayout *)self _configurationAtIndex:a3 - 2];
  v11 = [(HKMCCycleTimelineFlowLayout *)self _configurationAtIndex:v7];
  [v10 width];
  v13 = v12;
  [v11 width];
  offsetFactor = self->_offsetFactor;
  v16 = v15 - v13;
  v17 = v15 + (v15 - v13) * offsetFactor;
  v18 = v13 + v16 * offsetFactor;
  if (offsetFactor >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  [v10 spacing];
  v21 = v20;
  [v11 spacing];
  v22 = self->_offsetFactor;
  v24 = v23 - v21;
  v25 = v23 + (v23 - v21) * v22;
  v26 = v21 + v24 * v22;
  if (v22 >= 0.0)
  {
    v25 = v26;
  }

  v27 = v9 + v19 + v25;
  if (v4)
  {
    v28 = [(HKMCCycleTimelineFlowLayout *)self _configurationAtIndex:v7];
    [v28 spacing];
    v30 = v29;
    v31 = [(HKMCCycleTimelineFlowLayout *)self _configurationAtIndex:a3];
    [v31 spacing];
    v32 = self->_offsetFactor;
    v34 = v33 - v30;
    v35 = v33 + (v33 - v30) * v32;
    v36 = v30 + v34 * v32;
    if (v32 >= 0.0)
    {
      v37 = v36;
    }

    else
    {
      v37 = v35;
    }

    v27 = v27 + v37 * 0.5;
  }

  return v27;
}

- (id)_configurationAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(NSArray *)self->_pillConfigurations count]<= a3)
  {
    v5 = self->_introPillConfiguration;
  }

  else
  {
    v5 = [(NSArray *)self->_pillConfigurations objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)initWithYOffset:(uint64_t)a1 pillConfigurations:(uint64_t)a2 introPillConfiguration:pillAspectRatio:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMCCycleTimelineFlowLayout.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"[pillConfigurations count] > 0"}];
}

@end