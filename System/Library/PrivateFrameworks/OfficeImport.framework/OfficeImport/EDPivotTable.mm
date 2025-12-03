@interface EDPivotTable
+ (id)pivotTableWithResources:(id)resources;
- (EDPivotTable)initWithResources:(id)resources;
- (id)description;
- (id)style;
- (void)setColumnHeaderCaption:(id)caption;
- (void)setName:(id)name;
- (void)setPageStyleName:(id)name;
- (void)setPivotTableRange:(id)range;
- (void)setRowHeaderCaption:(id)caption;
- (void)setStyle:(id)style;
- (void)setStyleName:(id)name;
@end

@implementation EDPivotTable

- (id)style
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  tableStyles = [WeakRetained tableStyles];

  mStyleName = self->mStyleName;
  defaultPivotStyleName = mStyleName;
  if (!mStyleName)
  {
    defaultPivotStyleName = [tableStyles defaultPivotStyleName];
  }

  v7 = [tableStyles objectWithName:defaultPivotStyleName];
  if (!mStyleName)
  {
  }

  return v7;
}

- (EDPivotTable)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v26.receiver = self;
  v26.super_class = EDPivotTable;
  v5 = [(EDPivotTable *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
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

+ (id)pivotTableWithResources:(id)resources
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

- (void)setColumnHeaderCaption:(id)caption
{
  captionCopy = caption;
  mColumnHeaderCaption = self->mColumnHeaderCaption;
  p_mColumnHeaderCaption = &self->mColumnHeaderCaption;
  if (mColumnHeaderCaption != captionCopy)
  {
    v8 = captionCopy;
    objc_storeStrong(p_mColumnHeaderCaption, caption);
    captionCopy = v8;
  }
}

- (void)setRowHeaderCaption:(id)caption
{
  captionCopy = caption;
  mRowHeaderCaption = self->mRowHeaderCaption;
  p_mRowHeaderCaption = &self->mRowHeaderCaption;
  if (mRowHeaderCaption != captionCopy)
  {
    v8 = captionCopy;
    objc_storeStrong(p_mRowHeaderCaption, caption);
    captionCopy = v8;
  }
}

- (void)setPageStyleName:(id)name
{
  nameCopy = name;
  mPageStyleName = self->mPageStyleName;
  p_mPageStyleName = &self->mPageStyleName;
  if (mPageStyleName != nameCopy)
  {
    v8 = nameCopy;
    objc_storeStrong(p_mPageStyleName, name);
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

- (void)setPivotTableRange:(id)range
{
  rangeCopy = range;
  mPivotTableRange = self->mPivotTableRange;
  p_mPivotTableRange = &self->mPivotTableRange;
  if (mPivotTableRange != rangeCopy)
  {
    v8 = rangeCopy;
    objc_storeStrong(p_mPivotTableRange, range);
    rangeCopy = v8;
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