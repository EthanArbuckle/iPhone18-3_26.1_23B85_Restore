@interface EDPivotAreaReference
+ (id)pivotAreaReference;
- (EDPivotAreaReference)init;
- (id)description;
@end

@implementation EDPivotAreaReference

- (EDPivotAreaReference)init
{
  v3.receiver = self;
  v3.super_class = EDPivotAreaReference;
  result = [(EDPivotAreaReference *)&v3 init];
  if (result)
  {
    *&result->mByPosition = 0;
    result->mSelected = 0;
    result->mFieldId = 0;
    result->mCount = 0;
  }

  return result;
}

+ (id)pivotAreaReference
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPivotAreaReference;
  v2 = [(EDPivotAreaReference *)&v4 description];

  return v2;
}

@end