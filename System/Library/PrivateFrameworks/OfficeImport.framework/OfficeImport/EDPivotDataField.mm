@interface EDPivotDataField
+ (id)pivotDataField;
- (EDPivotDataField)init;
- (id)description;
- (void)setName:(id)a3;
@end

@implementation EDPivotDataField

+ (id)pivotDataField
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDPivotDataField)init
{
  v3.receiver = self;
  v3.super_class = EDPivotDataField;
  result = [(EDPivotDataField *)&v3 init];
  if (result)
  {
    *&result->mFieldId = 0u;
    *&result->mBaseField = 0u;
    result->mFormat = 9;
  }

  return result;
}

- (void)setName:(id)a3
{
  v5 = a3;
  mName = self->mName;
  p_mName = &self->mName;
  if (mName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mName, a3);
    v5 = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPivotDataField;
  v2 = [(EDPivotDataField *)&v4 description];

  return v2;
}

@end