@interface UICollectionView
@end

@implementation UICollectionView

BOOL __55__UICollectionView_IC__ic_selectionContainsFocusedItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 row];
  if (v4 == [*(a1 + 32) row])
  {
    v5 = [v3 item];
    v6 = v5 == [*(a1 + 32) item];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end