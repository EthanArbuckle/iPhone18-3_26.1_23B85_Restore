@interface EDTable
+ (id)tableWithResources:(id)resources;
- (EDTable)initWithResources:(id)resources;
- (id)dataAreaBorderDxf;
- (id)dataAreaDxf;
- (id)description;
- (id)headerRowBorderDxf;
- (id)headerRowDxf;
- (id)style;
- (id)tableBorderDxf;
- (id)totalsRowBorderDxf;
- (id)totalsRowDxf;
- (void)setDataAreaBorderDxf:(id)dxf;
- (void)setDataAreaDxf:(id)dxf;
- (void)setDisplayName:(id)name;
- (void)setHeaderRowBorderDxf:(id)dxf;
- (void)setHeaderRowDxf:(id)dxf;
- (void)setName:(id)name;
- (void)setStyle:(id)style;
- (void)setStyleName:(id)name;
- (void)setTableBorderDxf:(id)dxf;
- (void)setTableRange:(id)range;
- (void)setTotalsRowBorderDxf:(id)dxf;
- (void)setTotalsRowDxf:(id)dxf;
@end

@implementation EDTable

- (id)style
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  tableStyles = [WeakRetained tableStyles];

  v5 = [tableStyles objectWithName:self->mStyleName];

  return v5;
}

- (id)tableBorderDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  v5 = [differentialStyles objectAtIndex:self->mTableBorderDxfIndex];

  return v5;
}

- (EDTable)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v13.receiver = self;
  v13.super_class = EDTable;
  v5 = [(EDTable *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *&v6->mStyleIndex = v7;
    *&v6->mTotalsRowDxfIndex = v7;
    *&v6->mHeaderRowBorderDxfIndex = v7;
    *&v6->mDataAreaBorderDxfIndex = v7;
    *&v6->mHeaderRowCount = xmmword_25D6FCC00;
    v8 = objc_alloc_init(EDCollection);
    mTableColumns = v6->mTableColumns;
    v6->mTableColumns = v8;

    v10 = objc_alloc_init(EDCollection);
    mColumnFilters = v6->mColumnFilters;
    v6->mColumnFilters = v10;

    *&v6->mShowFirstColumn = 0x10000;
  }

  return v6;
}

+ (id)tableWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  tableStyles = [WeakRetained tableStyles];

  self->mStyleIndex = [tableStyles addObject:styleCopy];
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

- (id)headerRowBorderDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  v5 = [differentialStyles objectAtIndex:self->mHeaderRowBorderDxfIndex];

  return v5;
}

- (void)setHeaderRowBorderDxf:(id)dxf
{
  dxfCopy = dxf;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  self->mHeaderRowBorderDxfIndex = [differentialStyles addObject:dxfCopy];
}

- (id)totalsRowBorderDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  v5 = [differentialStyles objectAtIndex:self->mTotalsRowBorderDxfIndex];

  return v5;
}

- (void)setTotalsRowBorderDxf:(id)dxf
{
  dxfCopy = dxf;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  self->mTotalsRowBorderDxfIndex = [differentialStyles addObject:dxfCopy];
}

- (id)dataAreaBorderDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  v5 = [differentialStyles objectAtIndex:self->mDataAreaBorderDxfIndex];

  return v5;
}

- (void)setDataAreaBorderDxf:(id)dxf
{
  dxfCopy = dxf;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  self->mDataAreaBorderDxfIndex = [differentialStyles addObject:dxfCopy];
}

- (void)setTableBorderDxf:(id)dxf
{
  dxfCopy = dxf;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  differentialStyles = [WeakRetained differentialStyles];

  self->mTableBorderDxfIndex = [differentialStyles addObject:dxfCopy];
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

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  mDisplayName = self->mDisplayName;
  p_mDisplayName = &self->mDisplayName;
  if (mDisplayName != nameCopy)
  {
    v8 = nameCopy;
    objc_storeStrong(p_mDisplayName, name);
    nameCopy = v8;
  }
}

- (void)setStyleName:(id)name
{
  nameCopy = name;
  mStyleName = self->mStyleName;
  p_mStyleName = &self->mStyleName;
  if (mStyleName != nameCopy)
  {
    v8 = nameCopy;
    objc_storeStrong(p_mStyleName, name);
    nameCopy = v8;
  }
}

- (void)setTableRange:(id)range
{
  rangeCopy = range;
  mTableRange = self->mTableRange;
  p_mTableRange = &self->mTableRange;
  if (mTableRange != rangeCopy)
  {
    v8 = rangeCopy;
    objc_storeStrong(p_mTableRange, range);
    rangeCopy = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDTable;
  v2 = [(EDTable *)&v4 description];

  return v2;
}

@end