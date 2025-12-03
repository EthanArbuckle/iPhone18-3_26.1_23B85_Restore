@interface EDWorksheet
- (BOOL)hasMergedCells;
- (BOOL)isColMerged:(unsigned int)merged;
- (BOOL)isRowMerged:(unsigned int)merged;
- (double)defaultColumnWidth;
- (id)conditionalFormattings;
- (id)description;
- (id)hyperlinks;
- (id)maxCellReferencedInFormulas;
- (id)mergedCells;
- (id)mergedColRef:(unsigned int)ref;
- (id)mergedRowRef:(unsigned int)ref;
- (id)pivotTables;
- (id)rowBlocks;
- (id)tables;
- (void)setImplicitCellArea:(id)area;
- (void)setMergedColsRef:(id)ref from:(unsigned int)from to:(unsigned int)to;
- (void)setMergedRowsRef:(id)ref from:(unsigned int)from to:(unsigned int)to;
- (void)setPane:(id)pane;
- (void)setup;
- (void)teardown;
- (void)updateMaxColumnOutlineLevelIfNeeded:(unint64_t)needed;
- (void)updateMaxRowOutlineLevelIfNeeded:(unint64_t)needed;
@end

@implementation EDWorksheet

- (void)setup
{
  v3 = [EDColumnInfoCollection alloc];
  workbook = [(EDSheet *)self workbook];
  resources = [workbook resources];
  v6 = [(EDColumnInfoCollection *)v3 initWithResources:resources worksheet:self];
  mColumnInfos = self->mColumnInfos;
  self->mColumnInfos = v6;

  v8 = objc_alloc_init(EDWarnings);
  mWorksheetWarnings = self->mWorksheetWarnings;
  self->mWorksheetWarnings = v8;

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mMergedRows = self->mMergedRows;
  self->mMergedRows = v10;

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mMergedCols = self->mMergedCols;
  self->mMergedCols = v12;

  self->mDefaultColumnWidth = 8.0;
  self->mDefaultRowHeight = 255;
  self->mMaxRowOutlineLevel = 0;
  self->mMaxColumnOutlineLevel = 0;
  self->mFitToPage = 0;
  v14.receiver = self;
  v14.super_class = EDWorksheet;
  [(EDSheet *)&v14 setup];
}

- (id)rowBlocks
{
  mRowBlocks = self->mRowBlocks;
  if (!mRowBlocks)
  {
    v4 = [[EDRowBlocks alloc] initWithWorksheet:self];
    v5 = self->mRowBlocks;
    self->mRowBlocks = v4;

    mRowBlocks = self->mRowBlocks;
  }

  [(EDRowBlocks *)mRowBlocks lock];
  v6 = self->mRowBlocks;

  return v6;
}

- (id)mergedCells
{
  mMergedCells = self->mMergedCells;
  if (!mMergedCells)
  {
    v4 = objc_alloc_init(EDMergedCellCollection);
    v5 = self->mMergedCells;
    self->mMergedCells = v4;

    processors = [(EDSheet *)self processors];
    [processors markObject:self processor:objc_opt_class()];

    mMergedCells = self->mMergedCells;
  }

  return mMergedCells;
}

- (double)defaultColumnWidth
{
  isDisplayFormulas = [(EDSheet *)self isDisplayFormulas];
  result = self->mDefaultColumnWidth;
  if (isDisplayFormulas)
  {
    return result + result;
  }

  return result;
}

- (void)teardown
{
  if (self->mRowBlocks)
  {
    v3 = +[OITSUFlushingManager sharedManager];
    [v3 removeObject:self->mRowBlocks];

    mRowBlocks = self->mRowBlocks;
    self->mRowBlocks = 0;
  }

  mColumnInfos = self->mColumnInfos;
  self->mColumnInfos = 0;

  mConditionalFormattings = self->mConditionalFormattings;
  self->mConditionalFormattings = 0;

  mMergedCells = self->mMergedCells;
  self->mMergedCells = 0;

  mHyperlinks = self->mHyperlinks;
  self->mHyperlinks = 0;

  mTables = self->mTables;
  self->mTables = 0;

  mPivotTables = self->mPivotTables;
  self->mPivotTables = 0;

  mPane = self->mPane;
  self->mPane = 0;

  mImplicitCellArea = self->mImplicitCellArea;
  self->mImplicitCellArea = 0;

  mWorksheetWarnings = self->mWorksheetWarnings;
  self->mWorksheetWarnings = 0;

  mMaxCellReferencedInFormulas = self->mMaxCellReferencedInFormulas;
  self->mMaxCellReferencedInFormulas = 0;

  mMergedRows = self->mMergedRows;
  self->mMergedRows = 0;

  mMergedCols = self->mMergedCols;
  self->mMergedCols = 0;

  v17.receiver = self;
  v17.super_class = EDWorksheet;
  [(EDSheet *)&v17 teardown];
}

- (id)maxCellReferencedInFormulas
{
  mMaxCellReferencedInFormulas = self->mMaxCellReferencedInFormulas;
  if (!mMaxCellReferencedInFormulas)
  {
    v4 = objc_alloc_init(EDReference);
    v5 = self->mMaxCellReferencedInFormulas;
    self->mMaxCellReferencedInFormulas = v4;

    mMaxCellReferencedInFormulas = self->mMaxCellReferencedInFormulas;
  }

  return mMaxCellReferencedInFormulas;
}

- (id)conditionalFormattings
{
  mConditionalFormattings = self->mConditionalFormattings;
  if (!mConditionalFormattings)
  {
    v4 = objc_alloc_init(EDCollection);
    v5 = self->mConditionalFormattings;
    self->mConditionalFormattings = v4;

    mConditionalFormattings = self->mConditionalFormattings;
  }

  return mConditionalFormattings;
}

- (id)tables
{
  mTables = self->mTables;
  if (!mTables)
  {
    v4 = objc_alloc_init(EDCollection);
    v5 = self->mTables;
    self->mTables = v4;

    processors = [(EDSheet *)self processors];
    [processors markObject:self processor:objc_opt_class()];

    mTables = self->mTables;
  }

  return mTables;
}

- (id)pivotTables
{
  mPivotTables = self->mPivotTables;
  if (!mPivotTables)
  {
    v4 = objc_alloc_init(EDCollection);
    v5 = self->mPivotTables;
    self->mPivotTables = v4;

    processors = [(EDSheet *)self processors];
    [processors markObject:self processor:objc_opt_class()];

    mPivotTables = self->mPivotTables;
  }

  return mPivotTables;
}

- (id)hyperlinks
{
  mHyperlinks = self->mHyperlinks;
  if (!mHyperlinks)
  {
    v4 = objc_alloc_init(EDCollection);
    v5 = self->mHyperlinks;
    self->mHyperlinks = v4;

    mHyperlinks = self->mHyperlinks;
  }

  return mHyperlinks;
}

- (void)setPane:(id)pane
{
  paneCopy = pane;
  if (self->mPane != paneCopy)
  {
    v6 = paneCopy;
    objc_storeStrong(&self->mPane, pane);
    paneCopy = v6;
  }
}

- (BOOL)hasMergedCells
{
  mMergedCells = self->mMergedCells;
  if (mMergedCells)
  {
    LOBYTE(mMergedCells) = [(EDCollection *)mMergedCells count]!= 0;
  }

  return mMergedCells;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDWorksheet;
  v2 = [(EDSheet *)&v4 description];

  return v2;
}

- (void)updateMaxRowOutlineLevelIfNeeded:(unint64_t)needed
{
  if (self->mMaxRowOutlineLevel < needed)
  {
    self->mMaxRowOutlineLevel = needed;
  }
}

- (void)updateMaxColumnOutlineLevelIfNeeded:(unint64_t)needed
{
  if (self->mMaxColumnOutlineLevel < needed)
  {
    self->mMaxColumnOutlineLevel = needed;
  }
}

- (void)setMergedRowsRef:(id)ref from:(unsigned int)from to:(unsigned int)to
{
  v6 = *&from;
  for (i = ref; v6 <= to; v6 = (v6 + 1))
  {
    mMergedRows = self->mMergedRows;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    [(NSMutableDictionary *)mMergedRows setObject:i forKey:v9];
  }
}

- (void)setMergedColsRef:(id)ref from:(unsigned int)from to:(unsigned int)to
{
  v6 = *&from;
  for (i = ref; v6 <= to; v6 = (v6 + 1))
  {
    mMergedCols = self->mMergedCols;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    [(NSMutableDictionary *)mMergedCols setObject:i forKey:v9];
  }
}

- (BOOL)isRowMerged:(unsigned int)merged
{
  mMergedRows = self->mMergedRows;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&merged];
  v5 = [(NSMutableDictionary *)mMergedRows objectForKey:v4];
  LOBYTE(mMergedRows) = v5 != 0;

  return mMergedRows;
}

- (id)mergedRowRef:(unsigned int)ref
{
  mMergedRows = self->mMergedRows;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&ref];
  v5 = [(NSMutableDictionary *)mMergedRows objectForKey:v4];

  return v5;
}

- (BOOL)isColMerged:(unsigned int)merged
{
  mMergedCols = self->mMergedCols;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&merged];
  v5 = [(NSMutableDictionary *)mMergedCols objectForKey:v4];
  LOBYTE(mMergedCols) = v5 != 0;

  return mMergedCols;
}

- (id)mergedColRef:(unsigned int)ref
{
  mMergedCols = self->mMergedCols;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&ref];
  v5 = [(NSMutableDictionary *)mMergedCols objectForKey:v4];

  return v5;
}

- (void)setImplicitCellArea:(id)area
{
  areaCopy = area;
  if (self->mImplicitCellArea != areaCopy)
  {
    v6 = areaCopy;
    objc_storeStrong(&self->mImplicitCellArea, area);
    areaCopy = v6;
  }
}

@end