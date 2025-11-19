@interface EDPivotField
+ (id)pivotField;
- (EDPivotField)init;
- (id)description;
@end

@implementation EDPivotField

+ (id)pivotField
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDPivotField)init
{
  v7.receiver = self;
  v7.super_class = EDPivotField;
  v2 = [(EDPivotField *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->mOutlineItems = 0;
    *&v2->mAxis = 3;
    v2->mNumFmtId = 0;
    v4 = objc_alloc_init(EDCollection);
    mPivotFieldItems = v3->mPivotFieldItems;
    v3->mPivotFieldItems = v4;
  }

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPivotField;
  v2 = [(EDPivotField *)&v4 description];

  return v2;
}

@end