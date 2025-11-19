@interface EDTableColumn
+ (id)tableColumnWithResources:(id)a3;
- (EDTableColumn)initWithResources:(id)a3;
- (id)dataAreaDxf;
- (id)description;
- (id)headerRowDxf;
- (id)totalsRowDxf;
- (void)setDataAreaDxf:(id)a3;
- (void)setHeaderRowDxf:(id)a3;
- (void)setName:(id)a3;
- (void)setTotalsRowDxf:(id)a3;
- (void)setTotalsRowLabel:(id)a3;
- (void)setUniqueName:(id)a3;
@end

@implementation EDTableColumn

- (EDTableColumn)initWithResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EDTableColumn;
  v5 = [(EDTableColumn *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v6->mHeaderRowDxfIndex = -1;
    v6->mTotalsRowDxfIndex = -1;
    v6->mDataAreaDxfIndex = -1;
  }

  return v6;
}

+ (id)tableColumnWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

- (id)headerRowDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained differentialStyles];

  v5 = [v4 objectAtIndex:self->mHeaderRowDxfIndex];

  return v5;
}

- (void)setHeaderRowDxf:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained differentialStyles];

  self->mHeaderRowDxfIndex = [v5 addObject:v6];
}

- (id)totalsRowDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained differentialStyles];

  v5 = [v4 objectAtIndex:self->mTotalsRowDxfIndex];

  return v5;
}

- (void)setTotalsRowDxf:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained differentialStyles];

  self->mTotalsRowDxfIndex = [v5 addObject:v6];
}

- (id)dataAreaDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained differentialStyles];

  v5 = [v4 objectAtIndex:self->mDataAreaDxfIndex];

  return v5;
}

- (void)setDataAreaDxf:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained differentialStyles];

  self->mDataAreaDxfIndex = [v5 addObject:v6];
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

- (void)setUniqueName:(id)a3
{
  v5 = a3;
  mUniqueName = self->mUniqueName;
  p_mUniqueName = &self->mUniqueName;
  if (mUniqueName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mUniqueName, a3);
    v5 = v8;
  }
}

- (void)setTotalsRowLabel:(id)a3
{
  v5 = a3;
  mTotalsRowLabel = self->mTotalsRowLabel;
  p_mTotalsRowLabel = &self->mTotalsRowLabel;
  if (mTotalsRowLabel != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mTotalsRowLabel, a3);
    v5 = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDTableColumn;
  v2 = [(EDTableColumn *)&v4 description];

  return v2;
}

@end