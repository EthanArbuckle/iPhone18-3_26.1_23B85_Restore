@interface UICollectionView(GKExtensions)
- (id)_gkVisibleCellForIndexPath:()GKExtensions;
@end

@implementation UICollectionView(GKExtensions)

- (id)_gkVisibleCellForIndexPath:()GKExtensions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  visibleCells = [self visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        _layoutAttributes = [v9 _layoutAttributes];
        v11 = _layoutAttributes;
        if (_layoutAttributes)
        {
          indexPath = [_layoutAttributes indexPath];
          v13 = [indexPath isEqual:v4];

          if (v13)
          {
            v6 = v9;

            goto LABEL_12;
          }
        }
      }

      v6 = [visibleCells countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

@end