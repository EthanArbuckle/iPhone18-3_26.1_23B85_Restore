@interface EDTableColumn
+ (id)tableColumnWithResources:(id)resources;
- (EDTableColumn)initWithResources:(id)resources;
- (id)dataAreaDxf;
- (id)description;
- (id)headerRowDxf;
- (id)totalsRowDxf;
- (void)setDataAreaDxf:(id)dxf;
- (void)setHeaderRowDxf:(id)dxf;
- (void)setName:(id)name;
- (void)setTotalsRowDxf:(id)dxf;
- (void)setTotalsRowLabel:(id)label;
- (void)setUniqueName:(id)name;
@end

@implementation EDTableColumn

- (EDTableColumn)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v8.receiver = self;
  v8.super_class = EDTableColumn;
  v5 = [(EDTableColumn *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    v6->mHeaderRowDxfIndex = -1;
    v6->mTotalsRowDxfIndex = -1;
    v6->mDataAreaDxfIndex = -1;
  }

  return v6;
}

+ (id)tableColumnWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

- (id)headerRowDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  v5 = [differentialStyles objectAtIndex:self->mHeaderRowDxfIndex];

  return v5;
}

- (void)setHeaderRowDxf:(id)dxf
{
  dxfCopy = dxf;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  self->mHeaderRowDxfIndex = [differentialStyles addObject:dxfCopy];
}

- (id)totalsRowDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  v5 = [differentialStyles objectAtIndex:self->mTotalsRowDxfIndex];

  return v5;
}

- (void)setTotalsRowDxf:(id)dxf
{
  dxfCopy = dxf;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  self->mTotalsRowDxfIndex = [differentialStyles addObject:dxfCopy];
}

- (id)dataAreaDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  v5 = [differentialStyles objectAtIndex:self->mDataAreaDxfIndex];

  return v5;
}

- (void)setDataAreaDxf:(id)dxf
{
  dxfCopy = dxf;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  self->mDataAreaDxfIndex = [differentialStyles addObject:dxfCopy];
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

- (void)setUniqueName:(id)name
{
  nameCopy = name;
  mUniqueName = self->mUniqueName;
  p_mUniqueName = &self->mUniqueName;
  if (mUniqueName != nameCopy)
  {
    v8 = nameCopy;
    objc_storeStrong(p_mUniqueName, name);
    nameCopy = v8;
  }
}

- (void)setTotalsRowLabel:(id)label
{
  labelCopy = label;
  mTotalsRowLabel = self->mTotalsRowLabel;
  p_mTotalsRowLabel = &self->mTotalsRowLabel;
  if (mTotalsRowLabel != labelCopy)
  {
    v8 = labelCopy;
    objc_storeStrong(p_mTotalsRowLabel, label);
    labelCopy = v8;
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