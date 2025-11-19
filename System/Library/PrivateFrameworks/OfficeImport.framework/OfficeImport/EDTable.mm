@interface EDTable
+ (id)tableWithResources:(id)a3;
- (EDTable)initWithResources:(id)a3;
- (id)dataAreaBorderDxf;
- (id)dataAreaDxf;
- (id)description;
- (id)headerRowBorderDxf;
- (id)headerRowDxf;
- (id)style;
- (id)tableBorderDxf;
- (id)totalsRowBorderDxf;
- (id)totalsRowDxf;
- (void)setDataAreaBorderDxf:(id)a3;
- (void)setDataAreaDxf:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setHeaderRowBorderDxf:(id)a3;
- (void)setHeaderRowDxf:(id)a3;
- (void)setName:(id)a3;
- (void)setStyle:(id)a3;
- (void)setStyleName:(id)a3;
- (void)setTableBorderDxf:(id)a3;
- (void)setTableRange:(id)a3;
- (void)setTotalsRowBorderDxf:(id)a3;
- (void)setTotalsRowDxf:(id)a3;
@end

@implementation EDTable

- (id)style
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained tableStyles];

  v5 = [v4 objectWithName:self->mStyleName];

  return v5;
}

- (id)tableBorderDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained differentialStyles];

  v5 = [v4 objectAtIndex:self->mTableBorderDxfIndex];

  return v5;
}

- (EDTable)initWithResources:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EDTable;
  v5 = [(EDTable *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
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

+ (id)tableWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

- (void)setStyle:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained tableStyles];

  self->mStyleIndex = [v5 addObject:v6];
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

- (id)headerRowBorderDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained differentialStyles];

  v5 = [v4 objectAtIndex:self->mHeaderRowBorderDxfIndex];

  return v5;
}

- (void)setHeaderRowBorderDxf:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained differentialStyles];

  self->mHeaderRowBorderDxfIndex = [v5 addObject:v6];
}

- (id)totalsRowBorderDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained differentialStyles];

  v5 = [v4 objectAtIndex:self->mTotalsRowBorderDxfIndex];

  return v5;
}

- (void)setTotalsRowBorderDxf:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained differentialStyles];

  self->mTotalsRowBorderDxfIndex = [v5 addObject:v6];
}

- (id)dataAreaBorderDxf
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained differentialStyles];

  v5 = [v4 objectAtIndex:self->mDataAreaBorderDxfIndex];

  return v5;
}

- (void)setDataAreaBorderDxf:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained differentialStyles];

  self->mDataAreaBorderDxfIndex = [v5 addObject:v6];
}

- (void)setTableBorderDxf:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained differentialStyles];

  self->mTableBorderDxfIndex = [v5 addObject:v6];
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

- (void)setDisplayName:(id)a3
{
  v5 = a3;
  mDisplayName = self->mDisplayName;
  p_mDisplayName = &self->mDisplayName;
  if (mDisplayName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mDisplayName, a3);
    v5 = v8;
  }
}

- (void)setStyleName:(id)a3
{
  v5 = a3;
  mStyleName = self->mStyleName;
  p_mStyleName = &self->mStyleName;
  if (mStyleName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mStyleName, a3);
    v5 = v8;
  }
}

- (void)setTableRange:(id)a3
{
  v5 = a3;
  mTableRange = self->mTableRange;
  p_mTableRange = &self->mTableRange;
  if (mTableRange != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mTableRange, a3);
    v5 = v8;
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