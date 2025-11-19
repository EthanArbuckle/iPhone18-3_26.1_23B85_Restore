@interface EDCellIterator
- (EDCellHeader)adjacentCell:(int)a3;
- (EDCellHeader)scanToRowNumber:(unsigned int)a3 columnNumber:(unsigned int)a4;
- (EDCellIterator)initWithWorksheet:(id)a3;
- (void)dealloc;
@end

@implementation EDCellIterator

- (EDCellIterator)initWithWorksheet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EDCellIterator;
  v5 = [(EDCellIterator *)&v9 init];
  if (v5)
  {
    v6 = [v4 rowBlocks];
    mRowBlocks = v5->mRowBlocks;
    v5->mRowBlocks = v6;

    v5->mCurrentRowInfoIndex = 0;
    *&v5->mCurrentCellIndex = 0xFFFFFFFF00000000;
    v5->mDesiredColumnNumber = -1;
  }

  return v5;
}

- (void)dealloc
{
  [(EDRowBlocks *)self->mRowBlocks unlock];
  v3.receiver = self;
  v3.super_class = EDCellIterator;
  [(EDCellIterator *)&v3 dealloc];
}

- (EDCellHeader)scanToRowNumber:(unsigned int)a3 columnNumber:(unsigned int)a4
{
  mDesiredRowNumber = self->mDesiredRowNumber;
  if (mDesiredRowNumber > a3 && mDesiredRowNumber != -1)
  {
    return 0;
  }

  if (mDesiredRowNumber == a3)
  {
    mDesiredColumnNumber = self->mDesiredColumnNumber;
    if (mDesiredColumnNumber > a4 && mDesiredColumnNumber != -1)
    {
      return 0;
    }
  }

  self->mDesiredRowNumber = a3;
  self->mDesiredColumnNumber = a4;
  mCurrentRowInfo = self->mCurrentRowInfo;
  if (!mCurrentRowInfo || mCurrentRowInfo->var1 < a3)
  {
    p_mCurrentRowBlock = &self->mCurrentRowBlock;
    v11 = [EDRowBlocks rowBlockForRowNumber:"rowBlockForRowNumber:currentRowBlock:" currentRowBlock:?];
    mCurrentRowBlock = *p_mCurrentRowBlock;
    if (v11 != *p_mCurrentRowBlock)
    {
      objc_storeStrong(&self->mCurrentRowBlock, v11);
      self->mCurrentRowInfoIndex = 0;
      self->mCurrentRowInfo = 0;
      mCurrentRowBlock = self->mCurrentRowBlock;
    }

    v13 = [(EDRowBlock *)mCurrentRowBlock rowCount];
    for (i = self->mCurrentRowInfoIndex; i < v13; self->mCurrentRowInfoIndex = i)
    {
      v15 = [*p_mCurrentRowBlock rowInfoAtIndex:?];
      self->mCurrentRowInfo = v15;
      if (v15->var1 >= self->mDesiredRowNumber)
      {
        break;
      }

      i = self->mCurrentRowInfoIndex + 1;
    }

    self->mCurrentCellIndex = 0;
    self->mCurrentCell = 0;

    mCurrentRowInfo = self->mCurrentRowInfo;
    if (!mCurrentRowInfo)
    {
      return 0;
    }
  }

  if (self->mDesiredRowNumber != mCurrentRowInfo->var1)
  {
    return 0;
  }

  mCurrentCell = self->mCurrentCell;
  if (mCurrentCell)
  {
    v17 = self->mDesiredColumnNumber;
    if (v17 <= columnNumberForEDCell(mCurrentCell))
    {
      goto LABEL_29;
    }

    mCurrentRowInfo = self->mCurrentRowInfo;
  }

  var2 = mCurrentRowInfo->var2;
  for (j = self->mCurrentCellIndex; j < var2; self->mCurrentCellIndex = j)
  {
    v20 = [EDRowBlock cellAtIndex:"cellAtIndex:rowInfo:" rowInfo:?];
    self->mCurrentCell = v20;
    if (columnNumberForEDCell(v20) >= self->mDesiredColumnNumber)
    {
      break;
    }

    j = self->mCurrentCellIndex + 1;
  }

LABEL_29:
  result = self->mCurrentCell;
  if (!result)
  {
    return result;
  }

  v22 = self->mDesiredColumnNumber;
  if (v22 == columnNumberForEDCell(result))
  {
    return self->mCurrentCell;
  }

  return 0;
}

- (EDCellHeader)adjacentCell:(int)a3
{
  if (self->mDesiredRowNumber == -1)
  {
    return 0;
  }

  mDesiredColumnNumber = self->mDesiredColumnNumber;
  if (mDesiredColumnNumber == -1)
  {
    return 0;
  }

  mCurrentRowInfo = self->mCurrentRowInfo;
  if (!mCurrentRowInfo)
  {
    return 0;
  }

  if (mDesiredColumnNumber)
  {
    mCurrentCellIndex = self->mCurrentCellIndex;
    if (a3 < 0 && !mCurrentCellIndex)
    {
      return 0;
    }
  }

  else
  {
    if (a3 < 0)
    {
      return 0;
    }

    mCurrentCellIndex = self->mCurrentCellIndex;
  }

  if (mCurrentCellIndex + a3 >= mCurrentRowInfo->var2)
  {
    return 0;
  }

  v9 = [EDRowBlock cellAtIndex:"cellAtIndex:rowInfo:" rowInfo:?];
  if (columnNumberForEDCell(v9) == self->mDesiredColumnNumber + a3)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

@end