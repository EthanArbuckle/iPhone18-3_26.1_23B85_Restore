@interface EDPivotArea
+ (id)pivotArea;
- (EDPivotArea)init;
- (id)description;
- (void)setOffset:(id)a3;
@end

@implementation EDPivotArea

- (EDPivotArea)init
{
  v7.receiver = self;
  v7.super_class = EDPivotArea;
  v2 = [(EDPivotArea *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->mGrandCol = 0;
    v2->mOutline = 0;
    v2->mType = 3;
    v4 = objc_alloc_init(EDCollection);
    mReferences = v3->mReferences;
    v3->mReferences = v4;
  }

  return v3;
}

+ (id)pivotArea
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)setOffset:(id)a3
{
  v5 = a3;
  mOffset = self->mOffset;
  p_mOffset = &self->mOffset;
  if (mOffset != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mOffset, a3);
    v5 = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPivotArea;
  v2 = [(EDPivotArea *)&v4 description];

  return v2;
}

@end