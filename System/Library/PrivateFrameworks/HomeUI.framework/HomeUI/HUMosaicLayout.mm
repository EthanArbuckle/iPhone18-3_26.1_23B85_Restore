@interface HUMosaicLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGRect)contentBounds;
- (CGSize)collectionViewContentSize;
- (NSMutableArray)attributeCache;
- (id)currentMosaicFrames;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation HUMosaicLayout

- (void)prepareLayout
{
  v34.receiver = self;
  v34.super_class = HUMosaicLayout;
  [(HUMosaicLayout *)&v34 prepareLayout];
  attributeCache = [(HUMosaicLayout *)self attributeCache];
  [attributeCache removeAllObjects];

  [(HUMosaicLayout *)self contentBounds];
  if (CGRectIsEmpty(v35))
  {
    collectionView = [(HUMosaicLayout *)self collectionView];
    [collectionView bounds];
    v6 = v5;
    collectionView2 = [(HUMosaicLayout *)self collectionView];
    [collectionView2 bounds];
    [(HUMosaicLayout *)self setContentBounds:0.0, 0.0, v6];
  }

  collectionView3 = [(HUMosaicLayout *)self collectionView];
  numberOfSections = [collectionView3 numberOfSections];

  if (numberOfSections >= 1)
  {
    collectionView4 = [(HUMosaicLayout *)self collectionView];
    v11 = [collectionView4 numberOfItemsInSection:0];

    delegate = [(HUMosaicLayout *)self delegate];
    layoutGeometry = [delegate layoutGeometry];

    array = [MEMORY[0x277CBEB18] array];
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v16 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:0];
        delegate2 = [(HUMosaicLayout *)self delegate];
        v18 = [delegate2 cellSizeForItemAtIndexPath:v16];

        v19 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:v18];
        [array addObject:v19];
      }
    }

    [(HUMosaicLayout *)self contentBounds];
    v20 = [HUMosaicLayoutHelper framesForSizes:array withGeometry:layoutGeometry inBounds:?];
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
        attributeCache2 = [(HUMosaicLayout *)self attributeCache];
        [attributeCache2 addObject:v32];

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
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_attributeCache;
    self->_attributeCache = array;

    attributeCache = self->_attributeCache;
  }

  return attributeCache;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  [(HUMosaicLayout *)self contentBounds:change.origin.x];
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

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    NSLog(&cfstr_Humosaiclayout.isa, [pathCopy section]);
  }

  attributeCache = [(HUMosaicLayout *)self attributeCache];
  v6 = [attributeCache count];
  item = [pathCopy item];

  if (v6 <= item)
  {
    v9 = 0;
  }

  else
  {
    attributeCache2 = [(HUMosaicLayout *)self attributeCache];
    v9 = [attributeCache2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  }

  return v9;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  attributeCache = [(HUMosaicLayout *)self attributeCache];
  v10 = [attributeCache countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(attributeCache);
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

      v11 = [attributeCache countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return array;
}

- (id)currentMosaicFrames
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  attributeCache = [(HUMosaicLayout *)self attributeCache];
  v5 = [attributeCache countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(attributeCache);
        }

        v9 = MEMORY[0x277CCAE60];
        [*(*(&v12 + 1) + 8 * i) frame];
        v10 = [v9 valueWithCGRect:?];
        [array addObject:v10];
      }

      v6 = [attributeCache countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
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