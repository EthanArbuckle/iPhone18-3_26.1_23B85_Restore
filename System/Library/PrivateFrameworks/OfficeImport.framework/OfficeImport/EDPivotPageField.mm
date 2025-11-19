@interface EDPivotPageField
+ (id)pivotPageField;
- (EDPivotPageField)init;
- (id)description;
- (void)setCap:(id)a3;
- (void)setName:(id)a3;
@end

@implementation EDPivotPageField

- (EDPivotPageField)init
{
  v3.receiver = self;
  v3.super_class = EDPivotPageField;
  result = [(EDPivotPageField *)&v3 init];
  if (result)
  {
    result->mFieldId = 0;
  }

  return result;
}

+ (id)pivotPageField
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
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

- (void)setCap:(id)a3
{
  v5 = a3;
  mCap = self->mCap;
  p_mCap = &self->mCap;
  if (mCap != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mCap, a3);
    v5 = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPivotPageField;
  v2 = [(EDPivotPageField *)&v4 description];

  return v2;
}

@end