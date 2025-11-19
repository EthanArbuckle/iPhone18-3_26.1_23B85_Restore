@interface EDPivotTable
+ (id)pivotTableWithResources:(id)a3;
- (EDPivotTable)initWithResources:(id)a3;
- (id)description;
- (id)style;
- (void)setColumnHeaderCaption:(id)a3;
- (void)setName:(id)a3;
- (void)setPageStyleName:(id)a3;
- (void)setPivotTableRange:(id)a3;
- (void)setRowHeaderCaption:(id)a3;
- (void)setStyle:(id)a3;
- (void)setStyleName:(id)a3;
@end

@implementation EDPivotTable

- (id)style
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained tableStyles];

  mStyleName = self->mStyleName;
  v6 = mStyleName;
  if (!mStyleName)
  {
    v6 = [v4 defaultPivotStyleName];
  }

  v7 = [v4 objectWithName:v6];
  if (!mStyleName)
  {
  }

  return v7;
}

- (EDPivotTable)initWithResources:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = EDPivotTable;
  v5 = [(EDPivotTable *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v6->mStyleIndex = -1;
    *&v6->mShowLastColumn = 0;
    *&v6->mApplyPatternFormats = 0;
    v6->mCompact = 1;
    *&v6->mShowCalcMbrs = 0;
    *&v6->mDataCaption = 0;
    *&v6->mShowMultipleLabel = 0;
    *&v6->mFirstHeaderRow = 0u;
    *&v6->mFirstDataColumn = 0u;
    *&v6->mColumnPageCount = 0u;
    *&v6->mAutoFormatId = 0u;
    v7 = objc_alloc_init(EDCollection);
    mRowFields = v6->mRowFields;
    v6->mRowFields = v7;

    v9 = objc_alloc_init(EDCollection);
    mColumnFields = v6->mColumnFields;
    v6->mColumnFields = v9;

    v11 = objc_alloc_init(EDCollection);
    mColumnItems = v6->mColumnItems;
    v6->mColumnItems = v11;

    v13 = objc_alloc_init(EDCollection);
    mRowItems = v6->mRowItems;
    v6->mRowItems = v13;

    v15 = objc_alloc_init(EDCollection);
    mPivotFields = v6->mPivotFields;
    v6->mPivotFields = v15;

    v17 = objc_alloc_init(EDCollection);
    mDataFields = v6->mDataFields;
    v6->mDataFields = v17;

    v19 = objc_alloc_init(EDCollection);
    mConditionalFields = v6->mConditionalFields;
    v6->mConditionalFields = v19;

    v21 = objc_alloc_init(EDCollection);
    mPivotAreas = v6->mPivotAreas;
    v6->mPivotAreas = v21;

    v23 = objc_alloc_init(EDCollection);
    mPageFields = v6->mPageFields;
    v6->mPageFields = v23;
  }

  return v6;
}

+ (id)pivotTableWithResources:(id)a3
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

- (void)setColumnHeaderCaption:(id)a3
{
  v5 = a3;
  mColumnHeaderCaption = self->mColumnHeaderCaption;
  p_mColumnHeaderCaption = &self->mColumnHeaderCaption;
  if (mColumnHeaderCaption != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mColumnHeaderCaption, a3);
    v5 = v8;
  }
}

- (void)setRowHeaderCaption:(id)a3
{
  v5 = a3;
  mRowHeaderCaption = self->mRowHeaderCaption;
  p_mRowHeaderCaption = &self->mRowHeaderCaption;
  if (mRowHeaderCaption != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mRowHeaderCaption, a3);
    v5 = v8;
  }
}

- (void)setPageStyleName:(id)a3
{
  v5 = a3;
  mPageStyleName = self->mPageStyleName;
  p_mPageStyleName = &self->mPageStyleName;
  if (mPageStyleName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mPageStyleName, a3);
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

- (void)setPivotTableRange:(id)a3
{
  v5 = a3;
  mPivotTableRange = self->mPivotTableRange;
  p_mPivotTableRange = &self->mPivotTableRange;
  if (mPivotTableRange != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mPivotTableRange, a3);
    v5 = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPivotTable;
  v2 = [(EDPivotTable *)&v4 description];

  return v2;
}

@end