@interface EDPivotItem
+ (id)pivotItem;
- (EDPivotItem)init;
- (id)description;
@end

@implementation EDPivotItem

+ (id)pivotItem
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDPivotItem)init
{
  v7.receiver = self;
  v7.super_class = EDPivotItem;
  v2 = [(EDPivotItem *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->mRepeatedItemCounts = 0x100000000;
    v4 = objc_alloc_init(EDCollection);
    mItemIndexes = v3->mItemIndexes;
    v3->mItemIndexes = v4;
  }

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPivotItem;
  v2 = [(EDPivotItem *)&v4 description];

  return v2;
}

@end