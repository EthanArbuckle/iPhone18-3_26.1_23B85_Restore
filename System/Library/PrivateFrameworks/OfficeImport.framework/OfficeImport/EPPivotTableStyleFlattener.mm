@interface EPPivotTableStyleFlattener
- (BOOL)isObjectSupported:(id)supported;
- (id)collectionFromWorksheet:(id)worksheet;
- (id)keysInTheOrderTheyShouldBeApplied;
- (id)newExtractedCellStyleElements:(id)elements parentScope:(id)scope row:(int)row column:(int)column;
- (id)newExtractedRowStyleElements:(id)elements parentScope:(id)scope row:(int)row;
- (id)styleFromObject:(id)object;
- (int)borderFlagsForStyleType:(int)type row:(int)row column:(int)column;
- (int)stripeOffset:(int)offset row:(BOOL)row;
- (unsigned)constrainLevel:(unsigned int)level;
- (void)addColumnSubheadingLevel:(unsigned int)level to:(id)to;
- (void)addRowSubheadingLevel:(unsigned int)level to:(id)to;
- (void)addSubtotalColumnLevel:(unsigned int)level to:(id)to;
- (void)addSubtotalRowLevel:(unsigned int)level to:(id)to;
- (void)cacheSizes:(id)sizes inObject:(id)object;
- (void)clearCache;
@end

@implementation EPPivotTableStyleFlattener

- (id)keysInTheOrderTheyShouldBeApplied
{
  v2 = MEMORY[0x277CBEA60];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:10];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:11];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:12];
  v32 = [MEMORY[0x277CCABB0] numberWithInt:13];
  v31 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v30 = [MEMORY[0x277CCABB0] numberWithInt:5];
  [MEMORY[0x277CCABB0] numberWithInt:27];
  v29 = v33 = v3;
  v28 = [MEMORY[0x277CCABB0] numberWithInt:26];
  v27 = [MEMORY[0x277CCABB0] numberWithInt:25];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:20];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:19];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:18];
  v17 = [MEMORY[0x277CCABB0] numberWithInt:24];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:23];
  v22 = [MEMORY[0x277CCABB0] numberWithInt:22];
  v24 = [MEMORY[0x277CCABB0] numberWithInt:17];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:16];
  v21 = [MEMORY[0x277CCABB0] numberWithInt:15];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:21];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:29];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:28];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v16 = [v2 arrayWithObjects:{v18, v33, v4, v32, v31, v30, v29, v28, v27, v5, v6, v26, v17, v25, v22, v24, v23, v21, v20, v15, v14, v13, v12, v11, v19, v10, v9, v7, 0}];

  return v16;
}

- (void)clearCache
{
  mPivotTable = self->mPivotTable;
  self->mPivotTable = 0;

  self->mFirstHeaderRow = 0;
  self->mFirstDataRow = 0;
  self->mFirstDataColumn = 0;
  self->mRowFieldsCount = 0;
  self->mColumnFieldsCount = 0;
  self->mPageFieldsCount = 0;
  v4.receiver = self;
  v4.super_class = EPPivotTableStyleFlattener;
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
  pivotTables = [worksheet pivotTables];

  return pivotTables;
}

- (id)styleFromObject:(id)object
{
  style = [object style];

  return style;
}

- (id)newExtractedRowStyleElements:(id)elements parentScope:(id)scope row:(int)row
{
  elementsCopy = elements;
  scopeCopy = scope;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mFirstRow = self->super.mFirstRow;
  showColumnHeaders = [(EDPivotTable *)self->mPivotTable showColumnHeaders];
  v13 = row - mFirstRow;
  v14 = v13 >= 0 && showColumnHeaders;
  if (v14 && self->mFirstDataRow > v13)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:2];
    [v10 addObject:v15];
LABEL_13:

    goto LABEL_14;
  }

  if ([(EDPivotTable *)self->mPivotTable showRowStripes]&& self->mFirstDataRow <= v13)
  {
    if ([(EPPivotTableStyleFlattener *)self stripeOffset:v13 row:1]< self->super.mFirstRowStripeSize)
    {
      v16 = 6;
    }

    else
    {
      v16 = 7;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    [v10 addObject:v15];
    goto LABEL_13;
  }

LABEL_14:
  v17 = [(EPStyleFlattener *)self newExtractedKeys:v10 from:elementsCopy parent:scopeCopy];

  return v17;
}

- (id)newExtractedCellStyleElements:(id)elements parentScope:(id)scope row:(int)row column:(int)column
{
  elementsCopy = elements;
  scopeCopy = scope;
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mFirstRow = self->super.mFirstRow;
  mFirstColumn = self->super.mFirstColumn;
  mFirstDataRow = self->mFirstDataRow;
  mFirstDataColumn = self->mFirstDataColumn;
  showRowHeaders = [(EDPivotTable *)self->mPivotTable showRowHeaders];
  showColumnHeaders = [(EDPivotTable *)self->mPivotTable showColumnHeaders];
  v44 = row - mFirstRow;
  v40 = column - mFirstColumn;
  v48 = column - mFirstColumn;
  v12 = row - mFirstRow >= 0 && showRowHeaders;
  if (v12 && self->mFirstDataColumn > v40)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:4];
    [v47 addObject:v13];
  }

  v14 = row == mFirstRow && showRowHeaders;
  if (v14 && self->mFirstDataColumn > v40)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:10];
    [v47 addObject:v15];
  }

  if ([(EDPivotTable *)self->mPivotTable showColumnStripes]&& self->mFirstDataColumn <= v40 && self->mFirstDataRow <= v44)
  {
    if ([(EPPivotTableStyleFlattener *)self stripeOffset:v40 row:0]< self->super.mFirstColumnStripeSize)
    {
      v16 = 8;
    }

    else
    {
      v16 = 9;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    [v47 addObject:v17];
  }

  rowItems = [(EDPivotTable *)self->mPivotTable rowItems];
  v19 = rowItems;
  v20 = (v44 - mFirstDataRow);
  if ((v20 & 0x80000000) == 0 && v20 < [rowItems count])
  {
    v21 = [v19 objectAtIndex:v20];
    repeatedItemCounts = [v21 repeatedItemCounts];
    type = [v21 type];
    v24 = type;
    if (type == 1)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithInt:21];
      [v47 addObject:v25];
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_27;
      }

      v25 = [MEMORY[0x277CCABB0] numberWithInt:3];
      [v47 addObject:v25];
    }

LABEL_27:
    if ([(EDPivotTable *)self->mPivotTable compact])
    {
      v26 = v24 == 4 && showRowHeaders;
      if (!v26 || self->mRowFieldsCount <= (repeatedItemCounts + 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (![(EDPivotTable *)self->mPivotTable outline])
      {
        if (![(EDPivotTable *)self->mPivotTable compact]&& ![(EDPivotTable *)self->mPivotTable outline])
        {
          if (showRowHeaders && v48 + 1 < SLODWORD(self->mRowFieldsCount) && (v24 == 4 || v40 < repeatedItemCounts))
          {
            [(EPPivotTableStyleFlattener *)self addRowSubheadingLevel:v40 to:v47];
          }

          if (v24 == 5 && v40 >= repeatedItemCounts)
          {
            [(EPPivotTableStyleFlattener *)self addSubtotalRowLevel:repeatedItemCounts to:v47];
          }
        }

        goto LABEL_54;
      }

      v27 = v24 == 4 && showRowHeaders;
      if (!v27 || (self->mRowFieldsCount > (repeatedItemCounts + 1) ? (v28 = v48 < repeatedItemCounts) : (v28 = 1), v28))
      {
LABEL_54:

        goto LABEL_55;
      }
    }

    [(EPPivotTableStyleFlattener *)self addRowSubheadingLevel:repeatedItemCounts to:v47];
    goto LABEL_54;
  }

LABEL_55:
  columnItems = [(EDPivotTable *)self->mPivotTable columnItems];
  v30 = columnItems;
  if (v44 < 1)
  {
    if (v44 < 0)
    {
      if (column == mFirstColumn)
      {
        [MEMORY[0x277CCABB0] numberWithInt:28];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithInt:29];
      }
      v32 = ;
      [v47 addObject:v32];
      goto LABEL_77;
    }
  }

  else
  {
    v31 = v40 - mFirstDataColumn;
    if (v40 - mFirstDataColumn < [columnItems count])
    {
      v32 = [v30 objectAtIndex:v31];
      repeatedItemCounts2 = [v32 repeatedItemCounts];
      type2 = [v32 type];
      if (type2 == 6)
      {
        v35 = [MEMORY[0x277CCABB0] numberWithInt:5];
        [v47 addObject:v35];
      }

      if (showColumnHeaders && v44 <= SLODWORD(self->mColumnFieldsCount) && (v31 & 0x80000000) == 0 && type2 != 6)
      {
        v36 = (v44 - 1);
        if (type2 == 4)
        {
          [(EPPivotTableStyleFlattener *)self addColumnSubheadingLevel:v36 to:v47];
LABEL_77:

          goto LABEL_78;
        }

        if (v44 <= repeatedItemCounts2)
        {
          v36 = v36;
        }

        else
        {
          v36 = repeatedItemCounts2;
        }

        [(EPPivotTableStyleFlattener *)self addColumnSubheadingLevel:v36 to:v47];
      }

      if (v44 > repeatedItemCounts2 && type2 == 5)
      {
        [(EPPivotTableStyleFlattener *)self addSubtotalColumnLevel:repeatedItemCounts2 to:v47];
      }

      goto LABEL_77;
    }
  }

LABEL_78:
  v37 = [(EPStyleFlattener *)self newExtractedKeys:v47 from:elementsCopy parent:scopeCopy];

  return v37;
}

- (int)borderFlagsForStyleType:(int)type row:(int)row column:(int)column
{
  v53 = column - self->super.mFirstColumn;
  v6 = column == self->super.mFirstColumn;
  if (column == self->super.mFirstColumn)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  mFirstRow = self->super.mFirstRow;
  if (self->super.mLastColumn == column)
  {
    v6 = v7;
  }

  v9 = row - mFirstRow;
  if (row == mFirstRow)
  {
    v10 = v6 | 4;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 | 8;
  if (self->super.mLastRow == row)
  {
    v12 = v10 | 8;
  }

  else
  {
    v12 = v10;
  }

  mFirstDataRow = self->mFirstDataRow;
  mFirstDataColumn = self->mFirstDataColumn;
  rowItems = [(EDPivotTable *)self->mPivotTable rowItems];
  columnItems = [(EDPivotTable *)self->mPivotTable columnItems];
  v48 = v9;
  v46 = v9 - mFirstDataRow;
  mFirstDataRow = [rowItems objectAtIndex:v9 - mFirstDataRow];
  mFirstDataColumn = [columnItems objectAtIndex:v53 - mFirstDataColumn];
  v14 = 15;
  switch(type)
  {
    case 1:
      v14 = v12;
      if (v48 < 0)
      {
        v37 = self->super.mFirstRow;
        if (v37 + ~LODWORD(self->mPageFieldsCount) == row)
        {
          v38 = v12 | 4;
        }

        else
        {
          v38 = v12;
        }

        if (v37 - 2 == row)
        {
          v39 = v38 | 8;
        }

        else
        {
          v39 = v38;
        }

        if (v53 == 1)
        {
          v14 = v39 | 2;
        }

        else
        {
          v14 = v39;
        }
      }

      break;
    case 2:
      if (self->mFirstDataRow == v48 + 1)
      {
        v14 = v11;
      }

      else
      {
        v14 = v12;
      }

      break;
    case 3:
      if (*(&self->super.super.super.isa + v44) == row)
      {
        v14 = v12 | 4;
      }

      else
      {
        v14 = v12;
      }

      break;
    case 4:
      if (self->mFirstDataColumn == v53 + 1)
      {
        v14 = v12 | 2;
      }

      else
      {
        v14 = v12;
      }

      break;
    case 5:
      if (v48 == 1)
      {
        v36 = 5;
      }

      else
      {
        v36 = 1;
      }

      v14 = v12 | v36;
      break;
    case 6:
    case 7:
      v21 = [(EPPivotTableStyleFlattener *)self stripeOffset:v48 row:1];
      mFirstRowStripeSize = self->super.mFirstRowStripeSize;
      v23 = v21 - mFirstRowStripeSize;
      if (v21 >= mFirstRowStripeSize)
      {
        mFirstRowStripeSize = self->super.mSecondRowStripeSize;
        v21 = v23;
      }

      v24 = v12 | 4;
      if (v21)
      {
        v24 = v12;
      }

      v25 = v21 + 1;
      v26 = v24 | 8;
      goto LABEL_40;
    case 8:
    case 9:
      v27 = [(EPPivotTableStyleFlattener *)self stripeOffset:v53 row:0];
      mFirstRowStripeSize = self->super.mFirstColumnStripeSize;
      v28 = v27 - mFirstRowStripeSize;
      if (v27 >= mFirstRowStripeSize)
      {
        mFirstRowStripeSize = self->super.mSecondColumnStripeSize;
        v27 = v28;
      }

      v24 = v12 | (v27 == 0);
      v25 = v27 + 1;
      v26 = v24 | 2;
LABEL_40:
      if (v25 == mFirstRowStripeSize)
      {
        v14 = v26;
      }

      else
      {
        v14 = v24;
      }

      break;
    case 10:
      if (self->mFirstDataColumn == v53 + 1)
      {
        v14 = v12 | 0xA;
      }

      else
      {
        v14 = v11;
      }

      break;
    case 15:
    case 16:
    case 17:
      if (v48 - 1 == [mFirstDataColumn repeatedItemCounts])
      {
        v15 = 7;
      }

      else
      {
        v15 = 3;
      }

      goto LABEL_16;
    case 18:
    case 19:
    case 20:
      v14 = v12 | 0xC;
      if ((v46 & 0x80000000) == 0 && v53 == [mFirstDataRow repeatedItemCounts])
      {
        v14 = v12 | 0xD;
      }

      break;
    case 21:
      goto LABEL_22;
    case 22:
    case 23:
    case 24:
      if (v48 <= [mFirstDataColumn repeatedItemCounts])
      {
        v20 = v12 | 0xC;
      }

      else
      {
        itemIndexes = [mFirstDataColumn itemIndexes];
        v17 = [itemIndexes count];
        repeatedItemCounts = [mFirstDataColumn repeatedItemCounts];

        if (v48 == repeatedItemCounts + v17)
        {
          v19 = v12 | 4;
        }

        else
        {
          v19 = v12;
        }

        if (v48 <= repeatedItemCounts + v17 - 1)
        {
          v19 = v12 | 0xC;
        }

        if (v48 == LODWORD(self->mColumnFieldsCount))
        {
          v20 = v19 | 8;
        }

        else
        {
          v20 = v19;
        }
      }

      v32 = v53 == mFirstDataColumn || v48 > [mFirstDataColumn repeatedItemCounts];
      v33 = v20 | v32;
      if (self->super.mLastColumn == column)
      {
        v14 = v33 | 2;
      }

      else
      {
        v34 = [columnItems objectAtIndex:v53 - mFirstDataColumn + 1];
        repeatedItemCounts2 = [v34 repeatedItemCounts];

        if (v48 <= repeatedItemCounts2)
        {
          v14 = v33;
        }

        else
        {
          v14 = v33 | 2;
        }
      }

      break;
    case 25:
    case 26:
    case 27:
      if ([(EDPivotTable *)self->mPivotTable compact])
      {
LABEL_22:
        v14 = v12 | 0xC;
      }

      else if ([(EDPivotTable *)self->mPivotTable outline])
      {
        if (v53 == [mFirstDataRow repeatedItemCounts])
        {
          v15 = 13;
        }

        else
        {
          v15 = 12;
        }

LABEL_16:
        v14 = v15 | v12;
      }

      else if ([(EDPivotTable *)self->mPivotTable compact])
      {
        v14 = v12;
      }

      else
      {
        v14 = v12;
        if (![(EDPivotTable *)self->mPivotTable outline])
        {
          if (v48 == mFirstDataRow)
          {
            v14 = v12 | 7;
            v40 = rowItems;
          }

          else
          {
            v40 = rowItems;
            v41 = [rowItems objectAtIndex:v46 - 1];
            v14 = v12 | 3;
            if ([v41 type] != 4 && v53 >= objc_msgSend(v41, "repeatedItemCounts"))
            {
              v14 = v12 | 7;
            }
          }

          if (*(&self->super.super.super.isa + v44) == row)
          {
            v14 |= 8u;
          }

          else
          {
            v42 = [v40 objectAtIndex:v46 + 1];
            if ([v42 type] != 4 && v53 >= objc_msgSend(v42, "repeatedItemCounts"))
            {
              v14 |= 8u;
            }
          }
        }
      }

      break;
    case 28:
    case 29:
      v29 = self->super.mFirstRow;
      if (v29 + ~LODWORD(self->mPageFieldsCount) == row)
      {
        v30 = 7;
      }

      else
      {
        v30 = 3;
      }

      v31 = v30 | v12;
      if (v29 - 2 == row)
      {
        v14 = v31 | 8;
      }

      else
      {
        v14 = v31;
      }

      break;
    default:
      break;
  }

  return v14;
}

- (void)cacheSizes:(id)sizes inObject:(id)object
{
  sizesCopy = sizes;
  objectCopy = object;
  objc_storeStrong(&self->mPivotTable, object);
  pivotTableRange = [(EDPivotTable *)self->mPivotTable pivotTableRange];
  v18.receiver = self;
  v18.super_class = EPPivotTableStyleFlattener;
  [(EPStyleFlattener *)&v18 cacheRange:pivotTableRange];

  self->mFirstHeaderRow = [(EDPivotTable *)self->mPivotTable firstHeaderRow];
  self->mFirstDataRow = [(EDPivotTable *)self->mPivotTable firstDataRow];
  self->mFirstDataColumn = [(EDPivotTable *)self->mPivotTable firstDataColumn];
  rowFields = [(EDPivotTable *)self->mPivotTable rowFields];
  self->mRowFieldsCount = [rowFields count];

  columnFields = [(EDPivotTable *)self->mPivotTable columnFields];
  self->mColumnFieldsCount = [columnFields count];

  pageFields = [(EDPivotTable *)self->mPivotTable pageFields];
  self->mPageFieldsCount = [pageFields count];

  mPageFieldsCount = self->mPageFieldsCount;
  if (mPageFieldsCount)
  {
    mFirstRow = self->super.mFirstRow;
    v14 = ~mPageFieldsCount;
    if (mFirstRow + v14 >= 0)
    {
      v15 = [EDReference referenceWithFirstRow:(mFirstRow + v14) lastRow:(mFirstRow - 2) firstColumn:self->super.mFirstColumn lastColumn:(self->super.mFirstColumn + 1)];
      v17.receiver = self;
      v17.super_class = EPPivotTableStyleFlattener;
      [(EPStyleFlattener *)&v17 cacheRange:v15];
    }
  }

  v16.receiver = self;
  v16.super_class = EPPivotTableStyleFlattener;
  [(EPStyleFlattener *)&v16 cacheSizes:sizesCopy inObject:objectCopy];
}

- (int)stripeOffset:(int)offset row:(BOOL)row
{
  v4 = &OBJC_IVAR___EPPivotTableStyleFlattener_mFirstDataColumn;
  if (row)
  {
    v4 = &OBJC_IVAR___EPPivotTableStyleFlattener_mFirstDataRow;
  }

  v5 = &OBJC_IVAR___EPStyleFlattener_mFirstColumnStripeSize;
  if (row)
  {
    v5 = &OBJC_IVAR___EPStyleFlattener_mFirstRowStripeSize;
  }

  v6 = &OBJC_IVAR___EPStyleFlattener_mSecondRowStripeSize;
  v7 = *(&self->super.super.super.isa + *v4);
  if (!row)
  {
    v6 = &OBJC_IVAR___EPStyleFlattener_mSecondColumnStripeSize;
  }

  return (offset - v7) % (*(&self->super.super.super.isa + *v6) + *(&self->super.super.super.isa + *v5));
}

- (unsigned)constrainLevel:(unsigned int)level
{
  if (level >= 3)
  {
    return 2 - (level & 1);
  }

  else
  {
    return level;
  }
}

- (void)addRowSubheadingLevel:(unsigned int)level to:(id)to
{
  v4 = *&level;
  toCopy = to;
  v6 = [(EPPivotTableStyleFlattener *)self constrainLevel:v4];
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:27];
    [toCopy addObject:v7];
  }

  else if (v6 == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:26];
    [toCopy addObject:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:25];
    [toCopy addObject:v7];
  }

LABEL_8:
}

- (void)addColumnSubheadingLevel:(unsigned int)level to:(id)to
{
  v4 = *&level;
  toCopy = to;
  v6 = [(EPPivotTableStyleFlattener *)self constrainLevel:v4];
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:24];
    [toCopy addObject:v7];
  }

  else if (v6 == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:23];
    [toCopy addObject:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:22];
    [toCopy addObject:v7];
  }

LABEL_8:
}

- (void)addSubtotalRowLevel:(unsigned int)level to:(id)to
{
  v4 = *&level;
  toCopy = to;
  v6 = [(EPPivotTableStyleFlattener *)self constrainLevel:v4];
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:20];
    [toCopy addObject:v7];
  }

  else if (v6 == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:19];
    [toCopy addObject:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:18];
    [toCopy addObject:v7];
  }

LABEL_8:
}

- (void)addSubtotalColumnLevel:(unsigned int)level to:(id)to
{
  v4 = *&level;
  toCopy = to;
  v6 = [(EPPivotTableStyleFlattener *)self constrainLevel:v4];
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:17];
    [toCopy addObject:v7];
  }

  else if (v6 == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:16];
    [toCopy addObject:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:15];
    [toCopy addObject:v7];
  }

LABEL_8:
}

@end