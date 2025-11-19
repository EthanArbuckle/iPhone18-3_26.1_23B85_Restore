@interface UICollectionView(GKCollectionView)
- (id)_gkDequeueCellForClass:()GKCollectionView forIndexPath:;
- (id)_gkDequeueSupplementaryViewForClass:()GKCollectionView ofKind:forIndexPath:;
- (id)_gkReuseIdentifierForClass:()GKCollectionView;
- (uint64_t)_gkPerformWithoutViewReuse:()GKCollectionView;
- (void)_gkRegisterCellClass:()GKCollectionView;
- (void)_gkRegisterClass:()GKCollectionView forSupplementaryViewOfKind:;
- (void)_gkRegisterNib:()GKCollectionView forCellClass:;
@end

@implementation UICollectionView(GKCollectionView)

- (id)_gkReuseIdentifierForClass:()GKCollectionView
{
  v3 = NSStringFromClass(aClass);
  v4 = [@"_gkAuto_" stringByAppendingString:v3];

  return v4;
}

- (uint64_t)_gkPerformWithoutViewReuse:()GKCollectionView
{
  ++sWithoutReuseCount;
  result = (*(a3 + 16))(a3);
  --sWithoutReuseCount;
  return result;
}

- (void)_gkRegisterCellClass:()GKCollectionView
{
  v5 = [a1 _gkReuseIdentifierForClass:?];
  [a1 registerClass:a3 forCellWithReuseIdentifier:v5];
}

- (void)_gkRegisterNib:()GKCollectionView forCellClass:
{
  v6 = a3;
  v7 = [a1 _gkReuseIdentifierForClass:a4];
  [a1 registerNib:v6 forCellWithReuseIdentifier:v7];
}

- (id)_gkDequeueCellForClass:()GKCollectionView forIndexPath:
{
  v6 = a4;
  v7 = [a1 _gkReuseIdentifierForClass:a3];
  v8 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v6];

  return v8;
}

- (void)_gkRegisterClass:()GKCollectionView forSupplementaryViewOfKind:
{
  v6 = a4;
  v7 = [a1 _gkReuseIdentifierForClass:a3];
  [a1 registerClass:a3 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];
}

- (id)_gkDequeueSupplementaryViewForClass:()GKCollectionView ofKind:forIndexPath:
{
  v8 = a4;
  v9 = sWithoutReuseCount;
  v10 = a5;
  if (v9)
  {
    v11 = [a1 collectionViewLayout];
    v12 = [v11 layoutAttributesForItemAtIndexPath:v10];

    v13 = [a3 alloc];
    [v12 frame];
    v14 = [v13 initWithFrame:?];
    [v14 applyLayoutAttributes:v12];
  }

  else
  {
    v12 = [a1 _gkReuseIdentifierForClass:a3];
    v14 = [a1 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v12 forIndexPath:v10];
  }

  return v14;
}

@end