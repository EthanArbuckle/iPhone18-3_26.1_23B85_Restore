@interface CLKUICylindricalPickerCollectionViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (CGSize)collectionViewContentSize;
- (double)distaceFromCenterForLayoutAttributes:(id)attributes;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation CLKUICylindricalPickerCollectionViewLayout

- (void)prepareLayout
{
  v2.receiver = self;
  v2.super_class = CLKUICylindricalPickerCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v2 prepareLayout];
}

- (CGSize)collectionViewContentSize
{
  attributes = [(CLKUICylindricalPickerCollectionViewLayout *)self attributes];
  lastObject = [attributes lastObject];

  if (lastObject)
  {
    collectionView = [(CLKUICylindricalPickerCollectionViewLayout *)self collectionView];
    [collectionView frame];
    v7 = v6;
    [lastObject frame];
    MaxY = CGRectGetMaxY(v15);
    collectionView2 = [(CLKUICylindricalPickerCollectionViewLayout *)self collectionView];
    [collectionView2 contentInset];
    v11 = MaxY + v10;
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
  }

  v12 = v7;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)distaceFromCenterForLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  collectionView = [(CLKUICylindricalPickerCollectionViewLayout *)self collectionView];
  [collectionView contentOffset];
  v7 = v6;

  collectionView2 = [(CLKUICylindricalPickerCollectionViewLayout *)self collectionView];
  [collectionView2 bounds];
  v10 = v9 * -0.5;

  [attributesCopy center];
  v12 = v11;

  return v12 - v7 + v10;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  [(CLKUICylindricalPickerCollectionViewLayout *)self targetContentOffsetForProposedContentOffset:offset.x withScrollingVelocity:offset.y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = offset.y;
  x = offset.x;
  v32 = *MEMORY[0x1E69E9840];
  v7 = [(CLKUICylindricalPickerCollectionViewLayout *)self collectionView:offset.x];
  [v7 bounds];
  v9 = v8 * 0.5;

  collectionView = [(CLKUICylindricalPickerCollectionViewLayout *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = indexPathsForVisibleItems;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v28;
    v17 = 3.40282347e38;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = [(CLKUICylindricalPickerCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:*(*(&v27 + 1) + 8 * i), v27];
        [v19 center];
        v21 = vabdd_f64(v9, vabdd_f64(v20, y));
        if (v17 > v21)
        {
          v22 = v19;

          v15 = v22;
          v17 = v21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v15 center];
  v24 = v23;

  v25 = y - (v9 - (v24 - y));
  v26 = x;
  result.y = v25;
  result.x = v26;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v25 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  attributes = [(CLKUICylindricalPickerCollectionViewLayout *)self attributes];
  v10 = [attributes countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(attributes);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        [v14 frame];
        v28.origin.x = v15;
        v28.origin.y = v16;
        v28.size.width = v17;
        v28.size.height = v18;
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        if (CGRectIntersectsRect(v27, v28))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [attributes countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  attributesByIndexPath = [(CLKUICylindricalPickerCollectionViewLayout *)self attributesByIndexPath];
  v6 = [attributesByIndexPath objectForKeyedSubscript:pathCopy];

  return v6;
}

@end