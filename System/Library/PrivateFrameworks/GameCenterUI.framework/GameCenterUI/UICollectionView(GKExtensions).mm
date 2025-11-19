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
  v5 = [a1 visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 _layoutAttributes];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 indexPath];
          v13 = [v12 isEqual:v4];

          if (v13)
          {
            v6 = v9;

            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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