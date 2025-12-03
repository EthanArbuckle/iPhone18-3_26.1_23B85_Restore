@interface EPTableStyleFlattener
- (BOOL)isObjectSupported:(id)supported;
- (id)collectionFromWorksheet:(id)worksheet;
- (id)keysInTheOrderTheyShouldBeApplied;
- (id)newExtractedCellStyleElements:(id)elements parentScope:(id)scope row:(int)row column:(int)column;
- (id)newExtractedGlobalStyleElements:(id)elements;
- (id)newExtractedRowStyleElements:(id)elements parentScope:(id)scope row:(int)row;
- (id)styleFromObject:(id)object;
- (int)borderFlagsForStyleType:(int)type row:(int)row column:(int)column;
- (int)stripeOffset:(int)offset row:(BOOL)row;
- (void)cacheSizes:(id)sizes inObject:(id)object;
- (void)clearCache;
@end

@implementation EPTableStyleFlattener

- (id)keysInTheOrderTheyShouldBeApplied
{
  v2 = MEMORY[0x277CBEA60];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:14];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:10];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:11];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:12];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:13];
  v17 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:5];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v10 = [v2 arrayWithObjects:{v15, v3, v18, v14, v4, v17, v13, v12, v16, v11, v5, v6, v7, v8, 0}];

  return v10;
}

- (void)clearCache
{
  mTable = self->mTable;
  self->mTable = 0;

  self->mHeaderRowCount = 0;
  self->mTotalsRowCount = 0;
  self->super.mFirstRowStripeSize = 0;
  self->super.mSecondRowStripeSize = 0;
  self->super.mFirstColumnStripeSize = 0;
  self->super.mSecondColumnStripeSize = 0;
  v4.receiver = self;
  v4.super_class = EPTableStyleFlattener;
  [(EPStyleFlattener *)&v4 clearCache];
}

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)collectionFromWorksheet:(id)worksheet
{
  tables = [worksheet tables];

  return tables;
}

- (id)styleFromObject:(id)object
{
  objectCopy = object;
  style = [objectCopy style];
  tableBorderDxf = [objectCopy tableBorderDxf];
  if (tableBorderDxf)
  {
    if (style)
    {
      v7 = [style copy];

      style = v7;
    }

    else
    {
      style = +[EDTableStyle tableStyle];
    }

    tableStyleElements = [style tableStyleElements];
    v9 = [(EPStyleFlattener *)self wrapDifferentialStyleInATableStyleElement:tableBorderDxf type:14];
    [tableStyleElements addObject:v9];
  }

  return style;
}

- (id)newExtractedGlobalStyleElements:(id)elements
{
  elementsCopy = elements;
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:14];
  v8 = [v5 initWithObjects:{v6, v7, 0}];

  v9 = [(EPStyleFlattener *)self newExtractedKeys:v8 from:elementsCopy parent:0];
  return v9;
}

- (id)newExtractedRowStyleElements:(id)elements parentScope:(id)scope row:(int)row
{
  v5 = *&row;
  elementsCopy = elements;
  scopeCopy = scope;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v5 - self->super.mFirstRow >= SLODWORD(self->mHeaderRowCount))
  {
    if (self->super.mLastRow - v5 >= SLODWORD(self->mTotalsRowCount))
    {
      if ([(EDTable *)self->mTable showRowStripes])
      {
        v12 = [(EPTableStyleFlattener *)self stripeOffset:v5 row:1];
        v13 = objc_alloc(MEMORY[0x277CCABB0]);
        if (v12 < self->super.mFirstRowStripeSize)
        {
          v14 = 6;
        }

        else
        {
          v14 = 7;
        }

        v11 = [v13 initWithInt:v14];
        [v10 addObject:v11];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:3];
      [v10 addObject:v11];
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:2];
    [v10 addObject:v11];
  }

  v15 = [(EPStyleFlattener *)self newExtractedKeys:v10 from:elementsCopy parent:scopeCopy];

  return v15;
}

- (id)newExtractedCellStyleElements:(id)elements parentScope:(id)scope row:(int)row column:(int)column
{
  elementsCopy = elements;
  scopeCopy = scope;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  showFirstColumn = [(EDTable *)self->mTable showFirstColumn];
  showLastColumn = [(EDTable *)self->mTable showLastColumn];
  v12 = showLastColumn;
  if (!self->mHeaderRowCount)
  {
    if (!self->mTotalsRowCount || self->super.mLastRow != row)
    {
LABEL_11:
      v17 = 0;
      v15 = 0;
      v18 = 0;
      if (showFirstColumn)
      {
LABEL_12:
        v19 = v18;
        goto LABEL_19;
      }

LABEL_26:
      v19 = v18;
      goto LABEL_27;
    }

    goto LABEL_8;
  }

  mFirstRow = self->super.mFirstRow;
  if (!self->mTotalsRowCount)
  {
    v17 = 0;
    if (mFirstRow != row)
    {
      v18 = 0;
      v15 = 0;
      if (showFirstColumn)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    v15 = 0;
    goto LABEL_15;
  }

  mLastRow = self->super.mLastRow;
  v15 = mLastRow == row;
  if (mFirstRow == row)
  {
LABEL_15:
    if (!showFirstColumn || self->super.mFirstColumn != column)
    {
      if (showLastColumn && self->super.mLastColumn == column)
      {
        v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:11];
        [v9 addObject:v18];
      }

      else
      {
        v18 = 0;
      }

      v17 = 1;
      if (showFirstColumn)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:10];
    [v9 addObject:v16];
    v17 = 1;
    goto LABEL_18;
  }

  if (mLastRow != row)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!showFirstColumn || self->super.mFirstColumn != column)
  {
    if (showLastColumn && self->super.mLastColumn == column)
    {
      v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:13];
      [v9 addObject:v18];
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v15 = 1;
    if (showFirstColumn)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:12];
  [v9 addObject:v16];
  v17 = 0;
  v15 = 1;
LABEL_18:
  v19 = v16;
LABEL_19:
  if (self->super.mFirstColumn == column)
  {
    v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:4];

    v19 = v20;
    [v9 addObject:v20];
    goto LABEL_30;
  }

LABEL_27:
  if (v12 && self->super.mLastColumn == column)
  {
    v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:5];

    v19 = v21;
    [v9 addObject:v21];
  }

LABEL_30:
  if (!(v17 & 1 | ![(EDTable *)self->mTable showColumnStripes]| v15))
  {
    v22 = [(EPTableStyleFlattener *)self stripeOffset:column row:0];
    v23 = objc_alloc(MEMORY[0x277CCABB0]);
    if (v22 < self->super.mFirstColumnStripeSize)
    {
      v24 = 8;
    }

    else
    {
      v24 = 9;
    }

    v25 = [v23 initWithInt:v24];

    v19 = v25;
    [v9 addObject:v25];
  }

  v26 = [(EPStyleFlattener *)self newExtractedKeys:v9 from:elementsCopy parent:scopeCopy];

  return v26;
}

- (int)borderFlagsForStyleType:(int)type row:(int)row column:(int)column
{
  mFirstColumn = self->super.mFirstColumn;
  mLastColumn = self->super.mLastColumn;
  if (mFirstColumn == column)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  if (mLastColumn != column)
  {
    v9 = mFirstColumn == column;
  }

  mFirstRow = self->super.mFirstRow;
  if (mFirstRow == row)
  {
    v11 = v9 | 4;
  }

  else
  {
    v11 = v9;
  }

  v12 = self->super.mLastRow - row;
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 | 8;
  }

  if (type <= 5)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        if (v12 + 1 == LODWORD(self->mTotalsRowCount))
        {
          return v13 | 4;
        }
      }

      else if (type == 4)
      {
        if (mFirstColumn == column)
        {
          return v13 | 2;
        }
      }

      else
      {
        return v13 | (mLastColumn == column);
      }

      return v13;
    }

    if (type == 1)
    {
      return v13;
    }

    if (type == 2)
    {
      if (row - mFirstRow + 1 == LODWORD(self->mHeaderRowCount))
      {
        return v11 | 8;
      }

      return v13;
    }

    return 15;
  }

  if ((type - 6) < 2)
  {
    v17 = [(EPTableStyleFlattener *)self stripeOffset:*&row row:1];
    mFirstRowStripeSize = self->super.mFirstRowStripeSize;
    v19 = v17 - mFirstRowStripeSize;
    if (v17 >= mFirstRowStripeSize)
    {
      mFirstRowStripeSize = self->super.mSecondRowStripeSize;
      v17 = v19;
    }

    v20 = v13 | 4;
    if (v17)
    {
      v20 = v13;
    }

    if (v17 + 1 == mFirstRowStripeSize || self->super.mLastRow - row == LODWORD(self->mTotalsRowCount))
    {
      return v20 | 8;
    }

    else
    {
      return v20;
    }
  }

  else
  {
    if ((type - 8) >= 2)
    {
      if (type == 14)
      {
        return v13;
      }

      return 15;
    }

    v14 = [(EPTableStyleFlattener *)self stripeOffset:*&column row:0];
    mFirstColumnStripeSize = self->super.mFirstColumnStripeSize;
    v16 = v14 - mFirstColumnStripeSize;
    if (v14 >= mFirstColumnStripeSize)
    {
      mFirstColumnStripeSize = self->super.mSecondColumnStripeSize;
      v14 = v16;
    }

    if (v14 + 1 == mFirstColumnStripeSize)
    {
      return v13 | (v14 == 0) | 2;
    }

    else
    {
      return v13 | (v14 == 0);
    }
  }
}

- (void)cacheSizes:(id)sizes inObject:(id)object
{
  sizesCopy = sizes;
  objectCopy = object;
  objc_storeStrong(&self->mTable, object);
  tableRange = [(EDTable *)self->mTable tableRange];
  v10.receiver = self;
  v10.super_class = EPTableStyleFlattener;
  [(EPStyleFlattener *)&v10 cacheRange:tableRange];

  self->mHeaderRowCount = [(EDTable *)self->mTable headerRowCount];
  self->mTotalsRowCount = [(EDTable *)self->mTable totalsRowCount];
  v9.receiver = self;
  v9.super_class = EPTableStyleFlattener;
  [(EPStyleFlattener *)&v9 cacheSizes:sizesCopy inObject:objectCopy];
}

- (int)stripeOffset:(int)offset row:(BOOL)row
{
  if (row)
  {
    mFirstColumn = self->super.mFirstRow + LODWORD(self->mHeaderRowCount);
    v5 = &OBJC_IVAR___EPStyleFlattener_mSecondRowStripeSize;
    v6 = &OBJC_IVAR___EPStyleFlattener_mFirstRowStripeSize;
  }

  else
  {
    mFirstColumn = self->super.mFirstColumn;
    v5 = &OBJC_IVAR___EPStyleFlattener_mSecondColumnStripeSize;
    v6 = &OBJC_IVAR___EPStyleFlattener_mFirstColumnStripeSize;
  }

  return (offset - mFirstColumn) % (*(&self->super.super.super.isa + *v5) + *(&self->super.super.super.isa + *v6));
}

@end