@interface EPPivotTableStyleFlattener
- (BOOL)isObjectSupported:(id)a3;
- (id)collectionFromWorksheet:(id)a3;
- (id)keysInTheOrderTheyShouldBeApplied;
- (id)newExtractedCellStyleElements:(id)a3 parentScope:(id)a4 row:(int)a5 column:(int)a6;
- (id)newExtractedRowStyleElements:(id)a3 parentScope:(id)a4 row:(int)a5;
- (id)styleFromObject:(id)a3;
- (int)borderFlagsForStyleType:(int)a3 row:(int)a4 column:(int)a5;
- (int)stripeOffset:(int)a3 row:(BOOL)a4;
- (unsigned)constrainLevel:(unsigned int)a3;
- (void)addColumnSubheadingLevel:(unsigned int)a3 to:(id)a4;
- (void)addRowSubheadingLevel:(unsigned int)a3 to:(id)a4;
- (void)addSubtotalColumnLevel:(unsigned int)a3 to:(id)a4;
- (void)addSubtotalRowLevel:(unsigned int)a3 to:(id)a4;
- (void)cacheSizes:(id)a3 inObject:(id)a4;
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

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)collectionFromWorksheet:(id)a3
{
  v3 = [a3 pivotTables];

  return v3;
}

- (id)styleFromObject:(id)a3
{
  v3 = [a3 style];

  return v3;
}

- (id)newExtractedRowStyleElements:(id)a3 parentScope:(id)a4 row:(int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mFirstRow = self->super.mFirstRow;
  v12 = [(EDPivotTable *)self->mPivotTable showColumnHeaders];
  v13 = a5 - mFirstRow;
  v14 = v13 >= 0 && v12;
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
  v17 = [(EPStyleFlattener *)self newExtractedKeys:v10 from:v8 parent:v9];

  return v17;
}

- (id)newExtractedCellStyleElements:(id)a3 parentScope:(id)a4 row:(int)a5 column:(int)a6
{
  v43 = a3;
  v42 = a4;
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mFirstRow = self->super.mFirstRow;
  mFirstColumn = self->super.mFirstColumn;
  mFirstDataRow = self->mFirstDataRow;
  mFirstDataColumn = self->mFirstDataColumn;
  v11 = [(EDPivotTable *)self->mPivotTable showRowHeaders];
  v39 = [(EDPivotTable *)self->mPivotTable showColumnHeaders];
  v44 = a5 - mFirstRow;
  v40 = a6 - mFirstColumn;
  v48 = a6 - mFirstColumn;
  v12 = a5 - mFirstRow >= 0 && v11;
  if (v12 && self->mFirstDataColumn > v40)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:4];
    [v47 addObject:v13];
  }

  v14 = a5 == mFirstRow && v11;
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

  v18 = [(EDPivotTable *)self->mPivotTable rowItems];
  v19 = v18;
  v20 = (v44 - mFirstDataRow);
  if ((v20 & 0x80000000) == 0 && v20 < [v18 count])
  {
    v21 = [v19 objectAtIndex:v20];
    v22 = [v21 repeatedItemCounts];
    v23 = [v21 type];
    v24 = v23;
    if (v23 == 1)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithInt:21];
      [v47 addObject:v25];
    }

    else
    {
      if (v23 != 6)
      {
        goto LABEL_27;
      }

      v25 = [MEMORY[0x277CCABB0] numberWithInt:3];
      [v47 addObject:v25];
    }

LABEL_27:
    if ([(EDPivotTable *)self->mPivotTable compact])
    {
      v26 = v24 == 4 && v11;
      if (!v26 || self->mRowFieldsCount <= (v22 + 1))
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
          if (v11 && v48 + 1 < SLODWORD(self->mRowFieldsCount) && (v24 == 4 || v40 < v22))
          {
            [(EPPivotTableStyleFlattener *)self addRowSubheadingLevel:v40 to:v47];
          }

          if (v24 == 5 && v40 >= v22)
          {
            [(EPPivotTableStyleFlattener *)self addSubtotalRowLevel:v22 to:v47];
          }
        }

        goto LABEL_54;
      }

      v27 = v24 == 4 && v11;
      if (!v27 || (self->mRowFieldsCount > (v22 + 1) ? (v28 = v48 < v22) : (v28 = 1), v28))
      {
LABEL_54:

        goto LABEL_55;
      }
    }

    [(EPPivotTableStyleFlattener *)self addRowSubheadingLevel:v22 to:v47];
    goto LABEL_54;
  }

LABEL_55:
  v29 = [(EDPivotTable *)self->mPivotTable columnItems];
  v30 = v29;
  if (v44 < 1)
  {
    if (v44 < 0)
    {
      if (a6 == mFirstColumn)
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
    if (v40 - mFirstDataColumn < [v29 count])
    {
      v32 = [v30 objectAtIndex:v31];
      v33 = [v32 repeatedItemCounts];
      v34 = [v32 type];
      if (v34 == 6)
      {
        v35 = [MEMORY[0x277CCABB0] numberWithInt:5];
        [v47 addObject:v35];
      }

      if (v39 && v44 <= SLODWORD(self->mColumnFieldsCount) && (v31 & 0x80000000) == 0 && v34 != 6)
      {
        v36 = (v44 - 1);
        if (v34 == 4)
        {
          [(EPPivotTableStyleFlattener *)self addColumnSubheadingLevel:v36 to:v47];
LABEL_77:

          goto LABEL_78;
        }

        if (v44 <= v33)
        {
          v36 = v36;
        }

        else
        {
          v36 = v33;
        }

        [(EPPivotTableStyleFlattener *)self addColumnSubheadingLevel:v36 to:v47];
      }

      if (v44 > v33 && v34 == 5)
      {
        [(EPPivotTableStyleFlattener *)self addSubtotalColumnLevel:v33 to:v47];
      }

      goto LABEL_77;
    }
  }

LABEL_78:
  v37 = [(EPStyleFlattener *)self newExtractedKeys:v47 from:v43 parent:v42];

  return v37;
}

- (int)borderFlagsForStyleType:(int)a3 row:(int)a4 column:(int)a5
{
  v53 = a5 - self->super.mFirstColumn;
  v6 = a5 == self->super.mFirstColumn;
  if (a5 == self->super.mFirstColumn)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  mFirstRow = self->super.mFirstRow;
  if (self->super.mLastColumn == a5)
  {
    v6 = v7;
  }

  v9 = a4 - mFirstRow;
  if (a4 == mFirstRow)
  {
    v10 = v6 | 4;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 | 8;
  if (self->super.mLastRow == a4)
  {
    v12 = v10 | 8;
  }

  else
  {
    v12 = v10;
  }

  mFirstDataRow = self->mFirstDataRow;
  mFirstDataColumn = self->mFirstDataColumn;
  v50 = [(EDPivotTable *)self->mPivotTable rowItems];
  v55 = [(EDPivotTable *)self->mPivotTable columnItems];
  v48 = v9;
  v46 = v9 - mFirstDataRow;
  v51 = [v50 objectAtIndex:v9 - mFirstDataRow];
  v54 = [v55 objectAtIndex:v53 - mFirstDataColumn];
  v14 = 15;
  switch(a3)
  {
    case 1:
      v14 = v12;
      if (v48 < 0)
      {
        v37 = self->super.mFirstRow;
        if (v37 + ~LODWORD(self->mPageFieldsCount) == a4)
        {
          v38 = v12 | 4;
        }

        else
        {
          v38 = v12;
        }

        if (v37 - 2 == a4)
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
      if (*(&self->super.super.super.isa + v44) == a4)
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
      if (v48 - 1 == [v54 repeatedItemCounts])
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
      if ((v46 & 0x80000000) == 0 && v53 == [v51 repeatedItemCounts])
      {
        v14 = v12 | 0xD;
      }

      break;
    case 21:
      goto LABEL_22;
    case 22:
    case 23:
    case 24:
      if (v48 <= [v54 repeatedItemCounts])
      {
        v20 = v12 | 0xC;
      }

      else
      {
        v16 = [v54 itemIndexes];
        v17 = [v16 count];
        v18 = [v54 repeatedItemCounts];

        if (v48 == v18 + v17)
        {
          v19 = v12 | 4;
        }

        else
        {
          v19 = v12;
        }

        if (v48 <= v18 + v17 - 1)
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

      v32 = v53 == mFirstDataColumn || v48 > [v54 repeatedItemCounts];
      v33 = v20 | v32;
      if (self->super.mLastColumn == a5)
      {
        v14 = v33 | 2;
      }

      else
      {
        v34 = [v55 objectAtIndex:v53 - mFirstDataColumn + 1];
        v35 = [v34 repeatedItemCounts];

        if (v48 <= v35)
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
        if (v53 == [v51 repeatedItemCounts])
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
            v40 = v50;
          }

          else
          {
            v40 = v50;
            v41 = [v50 objectAtIndex:v46 - 1];
            v14 = v12 | 3;
            if ([v41 type] != 4 && v53 >= objc_msgSend(v41, "repeatedItemCounts"))
            {
              v14 = v12 | 7;
            }
          }

          if (*(&self->super.super.super.isa + v44) == a4)
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
      if (v29 + ~LODWORD(self->mPageFieldsCount) == a4)
      {
        v30 = 7;
      }

      else
      {
        v30 = 3;
      }

      v31 = v30 | v12;
      if (v29 - 2 == a4)
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

- (void)cacheSizes:(id)a3 inObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->mPivotTable, a4);
  v8 = [(EDPivotTable *)self->mPivotTable pivotTableRange];
  v18.receiver = self;
  v18.super_class = EPPivotTableStyleFlattener;
  [(EPStyleFlattener *)&v18 cacheRange:v8];

  self->mFirstHeaderRow = [(EDPivotTable *)self->mPivotTable firstHeaderRow];
  self->mFirstDataRow = [(EDPivotTable *)self->mPivotTable firstDataRow];
  self->mFirstDataColumn = [(EDPivotTable *)self->mPivotTable firstDataColumn];
  v9 = [(EDPivotTable *)self->mPivotTable rowFields];
  self->mRowFieldsCount = [v9 count];

  v10 = [(EDPivotTable *)self->mPivotTable columnFields];
  self->mColumnFieldsCount = [v10 count];

  v11 = [(EDPivotTable *)self->mPivotTable pageFields];
  self->mPageFieldsCount = [v11 count];

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
  [(EPStyleFlattener *)&v16 cacheSizes:v6 inObject:v7];
}

- (int)stripeOffset:(int)a3 row:(BOOL)a4
{
  v4 = &OBJC_IVAR___EPPivotTableStyleFlattener_mFirstDataColumn;
  if (a4)
  {
    v4 = &OBJC_IVAR___EPPivotTableStyleFlattener_mFirstDataRow;
  }

  v5 = &OBJC_IVAR___EPStyleFlattener_mFirstColumnStripeSize;
  if (a4)
  {
    v5 = &OBJC_IVAR___EPStyleFlattener_mFirstRowStripeSize;
  }

  v6 = &OBJC_IVAR___EPStyleFlattener_mSecondRowStripeSize;
  v7 = *(&self->super.super.super.isa + *v4);
  if (!a4)
  {
    v6 = &OBJC_IVAR___EPStyleFlattener_mSecondColumnStripeSize;
  }

  return (a3 - v7) % (*(&self->super.super.super.isa + *v6) + *(&self->super.super.super.isa + *v5));
}

- (unsigned)constrainLevel:(unsigned int)a3
{
  if (a3 >= 3)
  {
    return 2 - (a3 & 1);
  }

  else
  {
    return a3;
  }
}

- (void)addRowSubheadingLevel:(unsigned int)a3 to:(id)a4
{
  v4 = *&a3;
  v8 = a4;
  v6 = [(EPPivotTableStyleFlattener *)self constrainLevel:v4];
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:27];
    [v8 addObject:v7];
  }

  else if (v6 == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:26];
    [v8 addObject:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:25];
    [v8 addObject:v7];
  }

LABEL_8:
}

- (void)addColumnSubheadingLevel:(unsigned int)a3 to:(id)a4
{
  v4 = *&a3;
  v8 = a4;
  v6 = [(EPPivotTableStyleFlattener *)self constrainLevel:v4];
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:24];
    [v8 addObject:v7];
  }

  else if (v6 == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:23];
    [v8 addObject:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:22];
    [v8 addObject:v7];
  }

LABEL_8:
}

- (void)addSubtotalRowLevel:(unsigned int)a3 to:(id)a4
{
  v4 = *&a3;
  v8 = a4;
  v6 = [(EPPivotTableStyleFlattener *)self constrainLevel:v4];
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:20];
    [v8 addObject:v7];
  }

  else if (v6 == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:19];
    [v8 addObject:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:18];
    [v8 addObject:v7];
  }

LABEL_8:
}

- (void)addSubtotalColumnLevel:(unsigned int)a3 to:(id)a4
{
  v4 = *&a3;
  v8 = a4;
  v6 = [(EPPivotTableStyleFlattener *)self constrainLevel:v4];
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:17];
    [v8 addObject:v7];
  }

  else if (v6 == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:16];
    [v8 addObject:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:15];
    [v8 addObject:v7];
  }

LABEL_8:
}

@end