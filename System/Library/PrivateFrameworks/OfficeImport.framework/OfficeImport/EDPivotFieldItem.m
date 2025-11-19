@interface EDPivotFieldItem
+ (id)pivotFieldItem;
- (EDPivotFieldItem)init;
- (id)description;
@end

@implementation EDPivotFieldItem

+ (id)pivotFieldItem
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDPivotFieldItem)init
{
  v3.receiver = self;
  v3.super_class = EDPivotFieldItem;
  result = [(EDPivotFieldItem *)&v3 init];
  if (result)
  {
    *&result->mHidden = 0;
    *&result->mChildItems = 0;
    result->mType = 1;
    result->mItemIndex = 0;
  }

  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPivotFieldItem;
  v2 = [(EDPivotFieldItem *)&v4 description];

  return v2;
}

@end