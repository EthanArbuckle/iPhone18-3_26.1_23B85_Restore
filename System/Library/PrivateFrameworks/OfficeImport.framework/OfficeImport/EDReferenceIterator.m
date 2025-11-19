@interface EDReferenceIterator
+ (id)referenceIteratorWithReference:(id)a3 workbook:(id)a4;
+ (id)referenceIteratorWithReferenceArray:(id)a3 workbook:(id)a4;
- (BOOL)nextReference;
- (BOOL)nextRow;
- (EDCellHeader)nextCell;
- (EDReferenceIterator)initWithReferenceArray:(id)a3 reference:(id)a4 workbook:(id)a5;
- (EDReferenceIterator)initWithReferenceArray:(id)a3 workbook:(id)a4;
- (void)dealloc;
- (void)setCurrentSheet:(id)a3;
- (void)setReference:(id)a3;
@end

@implementation EDReferenceIterator

- (EDCellHeader)nextCell
{
  mRowInfo = self->mRowInfo;
  if (!mRowInfo)
  {
    return 0;
  }

  var2 = mRowInfo->var2;
  for (i = self->mCellIndex; ; self->mCellIndex = i)
  {
    if (i >= var2)
    {
      return 0;
    }

    if (!self->mReference)
    {
      return 0;
    }

    mRowBlock = self->mRowBlock;
    self->mCellIndex = i + 1;
    v7 = [EDRowBlock cellAtIndex:"cellAtIndex:rowInfo:" rowInfo:?];
    if (!v7 && ![(EDReferenceIterator *)self nextRow])
    {
      return 0;
    }

    var1 = self->mRowInfo->var1;
    v9 = columnNumberForEDCell(v7);
    if (v9 > [(EDReference *)self->mReference lastColumn])
    {
      self->mCurrentCellIndex += [(EDReference *)self->mReference lastColumn]- self->mPreviousColumnNumber;
      if (var1 == [(EDReference *)self->mReference lastRow])
      {
        mNextArrayIndex = self->mNextArrayIndex;
        if ([(EDCollection *)self->mReferences count]<= mNextArrayIndex)
        {
          return 0;
        }
      }

      if (![(EDReferenceIterator *)self nextRow])
      {
        return 0;
      }
    }

    if (v9 >= [(EDReference *)self->mReference firstColumn])
    {
      break;
    }

    i = self->mCellIndex + 1;
  }

  v11 = [(EDReference *)self->mReference firstColumn];
  if (v11 != [(EDReference *)self->mReference lastColumn])
  {
    v16 = v9 - self->mPreviousColumnNumber + self->mCurrentCellIndex;
LABEL_22:
    self->mCurrentCellIndex = v16;
    goto LABEL_23;
  }

  v12 = self->mRowInfo->var1;
  if (v12 < [(EDReference *)self->mReference lastRow]&& ![(EDReferenceIterator *)self nextRow])
  {
    return 0;
  }

  mCurrentCellIndex = self->mCurrentCellIndex;
  v14 = var1 - [(EDReference *)self->mReference firstRow];
  v15 = [(EDReference *)self->mReference firstRow];
  if (mCurrentCellIndex != v14)
  {
    v16 = var1 - v15;
    goto LABEL_22;
  }

  if (v15 == [(EDReference *)self->mReference lastRow]&& [(EDCollection *)self->mReferences count]== 1)
  {
    self->mRowInfo = 0;
LABEL_23:
    self->mPreviousColumnNumber = v9;
    return v7;
  }

  if (self->mCurrentCellIndex <= 0)
  {
    goto LABEL_23;
  }

  return 0;
}

- (BOOL)nextRow
{
  while (1)
  {
    v3 = self->mRowInfoIndex + 1;
    self->mRowInfoIndex = v3;
    if (v3 >= [(EDRowBlock *)self->mRowBlock rowCount])
    {
      mRowBlocks = self->mRowBlocks;
      ++self->mRowBlockIndex;
      v6 = [(EDRowBlocks *)mRowBlocks rowBlockAtIndex:?];
      mRowBlock = self->mRowBlock;
      self->mRowBlock = v6;

      mRowInfoIndex = 0;
      self->mRowInfoIndex = 0;
    }

    else
    {
      mRowInfoIndex = self->mRowInfoIndex;
    }

    v8 = [(EDRowBlock *)self->mRowBlock rowInfoAtIndex:mRowInfoIndex];
    self->mRowInfo = v8;
    if (v8)
    {
      break;
    }

    v9 = [(EDReference *)self->mReference lastColumn];
    self->mCurrentCellIndex += v9 - [(EDReference *)self->mReference firstColumn];
    if (![(EDReferenceIterator *)self nextReference])
    {
      return 0;
    }
  }

  self->mCellIndex = [(EDRowBlock *)self->mRowBlock expectedIndexOfCellWithColumnNumber:[(EDReference *)self->mReference firstColumn] rowInfo:self->mRowInfo];
  self->mPreviousColumnNumber = [(EDReference *)self->mReference firstColumn];
  return self->mRowInfo != 0;
}

- (void)dealloc
{
  [(EDRowBlocks *)self->mRowBlocks unlock];
  v3.receiver = self;
  v3.super_class = EDReferenceIterator;
  [(EDReferenceIterator *)&v3 dealloc];
}

- (BOOL)nextReference
{
  mReferences = self->mReferences;
  if (mReferences)
  {
    mNextArrayIndex = self->mNextArrayIndex;
    if ([(EDCollection *)mReferences count]<= mNextArrayIndex)
    {
      LOBYTE(mReferences) = 0;
    }

    else
    {
      v5 = self->mReferences;
      ++self->mNextArrayIndex;
      v6 = [(EDCollection *)v5 objectAtIndex:?];
      [(EDReferenceIterator *)self setReference:v6];

      LOBYTE(mReferences) = 1;
    }
  }

  return mReferences;
}

- (EDReferenceIterator)initWithReferenceArray:(id)a3 reference:(id)a4 workbook:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = EDReferenceIterator;
  v12 = [(EDReferenceIterator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mWorkbook, a5);
    objc_storeStrong(&v13->mReferences, a3);
    v13->mRowBlockIndex = -1;
    v13->mRowInfo = 0;
    *&v13->mRowInfoIndex = -1;
    v13->mNextArrayIndex = v13->mReferences != 0;
    v13->mPreviousColumnNumber = 0;
    [(EDReferenceIterator *)v13 setReference:v10];
  }

  return v13;
}

- (EDReferenceIterator)initWithReferenceArray:(id)a3 workbook:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 objectAtIndex:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(EDReferenceIterator *)self initWithReferenceArray:v6 reference:v8 workbook:v7];

  return v9;
}

+ (id)referenceIteratorWithReference:(id)a3 workbook:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithReference:v5 workbook:v6];

  return v7;
}

+ (id)referenceIteratorWithReferenceArray:(id)a3 workbook:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithReferenceArray:v5 workbook:v6];

  return v7;
}

- (void)setCurrentSheet:(id)a3
{
  v5 = a3;
  mCurrentSheet = self->mCurrentSheet;
  p_mCurrentSheet = &self->mCurrentSheet;
  if (mCurrentSheet != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mCurrentSheet, a3);
    v5 = v8;
  }
}

- (void)setReference:(id)a3
{
  p_mReference = &self->mReference;
  v16 = a3;
  if (*p_mReference != v16)
  {
    objc_storeStrong(&self->mReference, a3);
    [(EDRowBlocks *)self->mRowBlocks unlock];
    mRowBlocks = self->mRowBlocks;
    self->mRowBlocks = 0;

    mRowBlock = self->mRowBlock;
    self->mRowBlock = 0;

    self->mRowBlockIndex = -1;
    self->mRowInfo = 0;
    *&self->mRowInfoIndex = -1;
    if (self->mReference)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [(EDWorkbook *)self->mWorkbook sheetAtIndex:[(EDReference *)self->mReference sheetIndex]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 rowBlocks];
          v10 = self->mRowBlocks;
          self->mRowBlocks = v9;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_9:
          v12 = [(EDRowBlocks *)self->mRowBlocks expectedIndexOfRowBlockForRowNumber:[(EDReference *)self->mReference firstRow]];
          self->mRowBlockIndex = v12;
          v13 = [(EDRowBlocks *)self->mRowBlocks rowBlockAtIndex:v12];
          v14 = self->mRowBlock;
          self->mRowBlock = v13;

          v15 = [(EDRowBlock *)self->mRowBlock indexOfRowInfoWithRowNumber:[(EDReference *)self->mReference firstRow]];
          self->mRowInfoIndex = v15;
          self->mRowInfo = [(EDRowBlock *)self->mRowBlock rowInfoAtIndex:v15];
          self->mCellIndex = [(EDRowBlock *)self->mRowBlock expectedIndexOfCellWithColumnNumber:[(EDReference *)self->mReference firstColumn] rowInfo:self->mRowInfo];
          self->mPreviousColumnNumber = [(EDReference *)self->mReference firstColumn];
          goto LABEL_10;
        }

        v11 = [(EDWorksheet *)self->mCurrentSheet rowBlocks];
        v8 = self->mRowBlocks;
        self->mRowBlocks = v11;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
}

@end