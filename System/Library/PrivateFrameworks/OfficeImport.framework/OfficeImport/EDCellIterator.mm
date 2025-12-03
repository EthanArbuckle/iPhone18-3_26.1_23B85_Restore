@interface EDCellIterator
- (EDCellHeader)adjacentCell:(int)cell;
- (EDCellHeader)scanToRowNumber:(unsigned int)number columnNumber:(unsigned int)columnNumber;
- (EDCellIterator)initWithWorksheet:(id)worksheet;
- (void)dealloc;
@end

@implementation EDCellIterator

- (EDCellIterator)initWithWorksheet:(id)worksheet
{
  worksheetCopy = worksheet;
  v9.receiver = self;
  v9.super_class = EDCellIterator;
  v5 = [(EDCellIterator *)&v9 init];
  if (v5)
  {
    rowBlocks = [worksheetCopy rowBlocks];
    mRowBlocks = v5->mRowBlocks;
    v5->mRowBlocks = rowBlocks;

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

- (EDCellHeader)scanToRowNumber:(unsigned int)number columnNumber:(unsigned int)columnNumber
{
  mDesiredRowNumber = self->mDesiredRowNumber;
  if (mDesiredRowNumber > number && mDesiredRowNumber != -1)
  {
    return 0;
  }

  if (mDesiredRowNumber == number)
  {
    mDesiredColumnNumber = self->mDesiredColumnNumber;
    if (mDesiredColumnNumber > columnNumber && mDesiredColumnNumber != -1)
    {
      return 0;
    }
  }

  self->mDesiredRowNumber = number;
  self->mDesiredColumnNumber = columnNumber;
  mCurrentRowInfo = self->mCurrentRowInfo;
  if (!mCurrentRowInfo || mCurrentRowInfo->var1 < number)
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

    rowCount = [(EDRowBlock *)mCurrentRowBlock rowCount];
    for (i = self->mCurrentRowInfoIndex; i < rowCount; self->mCurrentRowInfoIndex = i)
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

- (EDCellHeader)adjacentCell:(int)cell
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
    if (cell < 0 && !mCurrentCellIndex)
    {
      return 0;
    }
  }

  else
  {
    if (cell < 0)
    {
      return 0;
    }

    mCurrentCellIndex = self->mCurrentCellIndex;
  }

  if (mCurrentCellIndex + cell >= mCurrentRowInfo->var2)
  {
    return 0;
  }

  v9 = [EDRowBlock cellAtIndex:"cellAtIndex:rowInfo:" rowInfo:?];
  if (columnNumberForEDCell(v9) == self->mDesiredColumnNumber + cell)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

@end