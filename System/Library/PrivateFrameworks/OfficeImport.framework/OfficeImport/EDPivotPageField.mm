@interface EDPivotPageField
+ (id)pivotPageField;
- (EDPivotPageField)init;
- (id)description;
- (void)setCap:(id)cap;
- (void)setName:(id)name;
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

- (void)setName:(id)name
{
  nameCopy = name;
  mName = self->mName;
  p_mName = &self->mName;
  if (mName != nameCopy)
  {
    v8 = nameCopy;
    objc_storeStrong(p_mName, name);
    nameCopy = v8;
  }
}

- (void)setCap:(id)cap
{
  capCopy = cap;
  mCap = self->mCap;
  p_mCap = &self->mCap;
  if (mCap != capCopy)
  {
    v8 = capCopy;
    objc_storeStrong(p_mCap, cap);
    capCopy = v8;
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