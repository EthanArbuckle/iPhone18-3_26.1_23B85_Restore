@interface SUUIItemGridCollectionViewLayout
- (SUUIItemGridCollectionViewLayout)init;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
@end

@implementation SUUIItemGridCollectionViewLayout

- (SUUIItemGridCollectionViewLayout)init
{
  v5.receiver = self;
  v5.super_class = SUUIItemGridCollectionViewLayout;
  v2 = [(UICollectionViewFlowLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICollectionViewFlowLayout *)v2 setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:0.0];
  }

  return v3;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v33 = *MEMORY[0x277D85DE8];
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v31.receiver = self;
  v31.super_class = SUUIItemGridCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v31 layoutAttributesForElementsInRect:x, y, width, height];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        indexPath = [v13 indexPath];
        item = [indexPath item];

        if ((item / self->_numberOfColumns))
        {
          v16 = 568;
        }

        else
        {
          v16 = 552;
        }

        if (*(&self->super.super.super.isa + v16))
        {
          [v13 setBackgroundColor:?];
        }

        else
        {
          whiteColor = [MEMORY[0x277D75348] whiteColor];
          [v13 setBackgroundColor:whiteColor];
        }

        numberOfColumns = self->_numberOfColumns;
        v19 = 16;
        if (item < numberOfColumns)
        {
          v19 = 8;
        }

        v20 = item % numberOfColumns == 0;
        v21 = item % numberOfColumns == numberOfColumns - 1;
        if (ShouldReverseLayoutDirection)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        if (ShouldReverseLayoutDirection)
        {
          v21 = v20;
        }

        v23 = !v21;
        v24 = 4;
        if (v23)
        {
          v24 = 2;
        }

        if (v22)
        {
          v24 = 1;
        }

        [v13 setPosition:v19 | v24];
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  return obj;
}

@end