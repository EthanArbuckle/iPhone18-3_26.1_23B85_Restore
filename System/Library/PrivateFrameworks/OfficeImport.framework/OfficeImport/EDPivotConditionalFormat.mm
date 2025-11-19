@interface EDPivotConditionalFormat
+ (id)pivotConditionalFormat;
- (EDPivotConditionalFormat)init;
- (id)description;
@end

@implementation EDPivotConditionalFormat

- (EDPivotConditionalFormat)init
{
  v7.receiver = self;
  v7.super_class = EDPivotConditionalFormat;
  v2 = [(EDPivotConditionalFormat *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->mPriority = 0;
    *&v2->mType = 0x300000004;
    v4 = objc_alloc_init(EDCollection);
    mPivotAreas = v3->mPivotAreas;
    v3->mPivotAreas = v4;
  }

  return v3;
}

+ (id)pivotConditionalFormat
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPivotConditionalFormat;
  v2 = [(EDPivotConditionalFormat *)&v4 description];

  return v2;
}

@end