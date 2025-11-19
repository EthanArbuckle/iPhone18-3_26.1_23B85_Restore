@interface HUMosaicLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGRect)contentBounds;
- (CGSize)collectionViewContentSize;
- (NSMutableArray)attributeCache;
- (id)currentMosaicFrames;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
@end

@implementation HUMosaicLayout

- (void)prepareLayout
{
  v34.receiver = self;
  v34.super_class = HUMosaicLayout;
  [(HUMosaicLayout *)&v34 prepareLayout];
  v3 = [(HUMosaicLayout *)self attributeCache];
  [v3 removeAllObjects];

  [(HUMosaicLayout *)self contentBounds];
  if (CGRectIsEmpty(v35))
  {
    v4 = [(HUMosaicLayout *)self collectionView];
    [v4 bounds];
    v6 = v5;
    v7 = [(HUMosaicLayout *)self collectionView];
    [v7 bounds];
    [(HUMosaicLayout *)self setContentBounds:0.0, 0.0, v6];
  }

  v8 = [(HUMosaicLayout *)self collectionView];
  v9 = [v8 numberOfSections];

  if (v9 >= 1)
  {
    v10 = [(HUMosaicLayout *)self collectionView];
    v11 = [v10 numberOfItemsInSection:0];

    v12 = [(HUMosaicLayout *)self delegate];
    v13 = [v12 layoutGeometry];

    v14 = [MEMORY[0x277CBEB18] array];
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v16 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:0];
        v17 = [(HUMosaicLayout *)self delegate];
        v18 = [v17 cellSizeForItemAtIndexPath:v16];

        v19 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:v18];
        [v14 addObject:v19];
      }
    }

    [(HUMosaicLayout *)self contentBounds];
    v20 = [HUMosaicLayoutHelper framesForSizes:v14 withGeometry:v13 inBounds:?];
    if ([v20 count])
    {
      v21 = 0;
      do
      {
        v22 = [v20 objectAtIndex:v21];
        [v22 CGRectValue];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        v31 = [MEMORY[0x277CCAA70] indexPathForItem:v21 inSection:0];
        v32 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:v31];
        [v32 setFrame:{v24, v26, v28, v30}];
        v33 = [(HUMosaicLayout *)self attributeCache];
        [v33 addObject:v32];

        ++v21;
      }

      while (v21 < [v20 count]);
    }
  }
}

- (NSMutableArray)attributeCache
{
  attributeCache = self->_attributeCache;
  if (!attributeCache)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_attributeCache;
    self->_attributeCache = v4;

    attributeCache = self->_attributeCache;
  }

  return attributeCache;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(HUMosaicLayout *)self contentBounds:a3.origin.x];
  v8 = v7 != height || v6 != width;
  if (v8)
  {
    [(HUMosaicLayout *)self setContentBounds:0.0, 0.0, width, height];
  }

  return v8;
}

- (CGSize)collectionViewContentSize
{
  [(HUMosaicLayout *)self contentBounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section])
  {
    NSLog(&cfstr_Humosaiclayout.isa, [v4 section]);
  }

  v5 = [(HUMosaicLayout *)self attributeCache];
  v6 = [v5 count];
  v7 = [v4 item];

  if (v6 <= v7)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(HUMosaicLayout *)self attributeCache];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  return v9;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(HUMosaicLayout *)self attributeCache];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)currentMosaicFrames
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(HUMosaicLayout *)self attributeCache];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = MEMORY[0x277CCAE60];
        [*(*(&v12 + 1) + 8 * i) frame];
        v10 = [v9 valueWithCGRect:?];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end