@interface EPStyleFlattener
- (EDCellHeader)cellWithSetupStyleAtRowNumber:(int)a3 columnNumber:(int)a4;
- (id)copyFlattenBorder:(int)a3 borders:(id)a4 differentialBorders:(id)a5 flag:(BOOL)a6 precedence:(unint64_t)a7 row:(int)a8 column:(int)a9;
- (id)copyFlattenBorders:(id)a3 differentialBorders:(id)a4 borderFlags:(int)a5 precedence:(unint64_t)a6 row:(int)a7 column:(int)a8;
- (id)copyFlattenFont:(id)a3 differentialFont:(id)a4;
- (id)newExtractedGlobalStyleElements:(id)a3;
- (id)newExtractedKeys:(id)a3 from:(id)a4 parent:(id)a5;
- (id)wrapDifferentialStyleInATableStyleElement:(id)a3 type:(int)a4;
- (unint64_t)flattenFillIndex:(unint64_t)a3 differentialFill:(id)a4;
- (void)applyDifferentialStyle:(id)a3 borderFlags:(int)a4 precedence:(unint64_t)a5 toCell:(EDCellHeader *)a6 row:(int)a7 column:(int)a8;
- (void)applyProcessorToObject:(id)a3 sheet:(id)a4;
- (void)applyStyleElements:(id)a3 toCell:(EDCellHeader *)a4 row:(int)a5 column:(int)a6;
- (void)cacheRange:(id)a3;
- (void)cacheSizes:(id)a3 inObject:(id)a4;
- (void)clearCache;
- (void)processObject:(id)a3;
@end

@implementation EPStyleFlattener

- (void)clearCache
{
  mFlattenedStyleCache = self->mFlattenedStyleCache;
  self->mFlattenedStyleCache = 0;

  mFillCache = self->mFillCache;
  self->mFillCache = 0;

  self->mFirstRow = 0;
  self->mLastRow = 0;
  self->mFirstColumn = 0;
  self->mLastColumn = 0;
}

- (void)applyProcessorToObject:(id)a3 sheet:(id)a4
{
  v13 = a3;
  objc_storeStrong(&self->mWorksheet, a3);
  if (!self->mKeys)
  {
    v6 = [(EPStyleFlattener *)self keysInTheOrderTheyShouldBeApplied];
    mKeys = self->mKeys;
    self->mKeys = v6;
  }

  v8 = [(EPStyleFlattener *)self collectionFromWorksheet:self->mWorksheet];
  v9 = [v8 count];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [v8 objectAtIndex:i];
      [(EPStyleFlattener *)self processObject:v11];
    }
  }

  mWorksheet = self->mWorksheet;
  self->mWorksheet = 0;
}

- (void)processObject:(id)a3
{
  v33 = a3;
  v4 = [(EPStyleFlattener *)self styleFromObject:?];
  v5 = [v4 tableStyleElements];

  if (v5 && [v5 count])
  {
    v6 = [(EDWorksheet *)self->mWorksheet rowBlocks];
    mRowBlocks = self->mRowBlocks;
    self->mRowBlocks = v6;

    v8 = [(EDWorksheet *)self->mWorksheet columnInfos];
    mColumnInfos = self->mColumnInfos;
    self->mColumnInfos = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    mRanges = self->mRanges;
    self->mRanges = v10;

    [(EPStyleFlattener *)self cacheSizes:v5 inObject:v33];
    v37 = [(EPStyleFlattener *)self newExtractedGlobalStyleElements:v5];
    v12 = [(NSMutableArray *)self->mRanges count];
    if (v12)
    {
      v13 = 0;
      v34 = v12;
      do
      {
        v35 = v13;
        v36 = [(NSMutableArray *)self->mRanges objectAtIndex:?];
        v14 = [v36 firstRow];
        v15 = [v36 lastRow];
        v16 = [v36 firstColumn];
        v17 = [v36 lastColumn];
        v18 = v14 <= 499999 && v16 <= 499999;
        if (v18)
        {
          v19 = v17;
          if (v15 > 500000)
          {
            v15 = [(EDRowBlocks *)self->mRowBlocks maxPopulatedRow]+ 1;
          }

          if (v19 > 500000)
          {
            v19 = [(EDRowBlocks *)self->mRowBlocks maxPopulatedColumn]+ 1;
          }

          v20 = [(EDRowBlocks *)self->mRowBlocks rowBlockForRowNumber:v14 currentRowBlock:0 createIfNil:1];
          mCurrentRowBlock = self->mCurrentRowBlock;
          self->mCurrentRowBlock = v20;

          if (v14 <= v15)
          {
            if (v19 >= 500000)
            {
              v22 = 500000;
            }

            else
            {
              v22 = v19;
            }

            if (v15 >= 500000)
            {
              v23 = 500000;
            }

            else
            {
              v23 = v15;
            }

            v38 = v23;
            do
            {
              v24 = [(EPStyleFlattener *)self newExtractedRowStyleElements:v5 parentScope:v37 row:v14];
              v25 = [(EDRowBlocks *)self->mRowBlocks rowBlockForRowNumber:v14 currentRowBlock:self->mCurrentRowBlock createIfNil:1];
              v26 = self->mCurrentRowBlock;
              self->mCurrentRowBlock = v25;

              v27 = v16;
              if (v16 <= v19)
              {
                do
                {
                  v28 = [(EPStyleFlattener *)self newExtractedCellStyleElements:v5 parentScope:v24 row:v14 column:v27];
                  if ([v28 count])
                  {
                    v29 = [(EPStyleFlattener *)self cellWithSetupStyleAtRowNumber:v14 columnNumber:v27];
                    if (v29)
                    {
                      [(EPStyleFlattener *)self applyStyleElements:v28 toCell:v29 row:v14 column:v27];
                    }
                  }

                  v18 = v27 < v22;
                  v27 = (v27 + 1);
                }

                while (v18);
              }

              v18 = v14 < v38;
              v14 = (v14 + 1);
            }

            while (v18);
          }
        }

        v13 = v35 + 1;
      }

      while (v35 + 1 != v34);
    }

    [(EPStyleFlattener *)self clearCache];
    v30 = self->mRanges;
    self->mRanges = 0;

    v31 = self->mColumnInfos;
    self->mColumnInfos = 0;

    [(EDRowBlocks *)self->mRowBlocks unlock];
    v32 = self->mRowBlocks;
    self->mRowBlocks = 0;
  }
}

- (EDCellHeader)cellWithSetupStyleAtRowNumber:(int)a3 columnNumber:(int)a4
{
  if (a3 > 500000 || a4 > 500000)
  {
    return 0;
  }

  v6 = *&a4;
  v7 = *&a3;
  v9 = [EDRowBlocks rowBlockForRowNumber:"rowBlockForRowNumber:currentRowBlock:createIfNil:" currentRowBlock:? createIfNil:?];
  v10 = [v9 rowInfoWithRowNumber:v7 createIfNil:1];
  v15 = v10;
  if (v10)
  {
    v5 = [v9 cellWithColumnNumber:v6 rowInfo:v10];
    if (!v5)
    {
      v5 = [v9 addCellWithColumnNumber:v6 type:0 isFormulaCell:0 rowInfo:&v15 rowBlocks:self->mRowBlocks];
      if (v5)
      {
        v11 = styleIndexForEDRowInfo(v15);
        LODWORD(v12) = v11;
        if (v11 != -1 || (-[EDColumnInfoCollection columnInfoForColumnNumber:](self->mColumnInfos, "columnInfoForColumnNumber:", v6), v13 = objc_claimAutoreleasedReturnValue(), v12 = [v13 styleIndex], v13, v12 != -1))
        {
          setStyleIndexForEDCell(v5, v12);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)applyStyleElements:(id)a3 toCell:(EDCellHeader *)a4 row:(int)a5 column:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v10 = a3;
  v18 = a4;
  v11 = [(NSArray *)self->mKeys count];
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [(NSArray *)self->mKeys objectAtIndex:v12];
      v14 = [v13 intValue];

      v15 = [v10 objectWithKey:v14];
      if (v15)
      {
        v16 = [(EPStyleFlattener *)self borderFlagsForStyleType:v14 row:v7 column:v6];
        v17 = [v15 differentialStyle];
        [(EPStyleFlattener *)self applyDifferentialStyle:v17 borderFlags:v16 precedence:v12 toCell:&v18 row:v7 column:v6];
      }

      ++v12;
    }

    while (v11 != v12);
  }
}

- (void)applyDifferentialStyle:(id)a3 borderFlags:(int)a4 precedence:(unint64_t)a5 toCell:(EDCellHeader *)a6 row:(int)a7 column:(int)a8
{
  v10 = *&a4;
  v38 = a3;
  v12 = styleIndexForEDCell(*a6);
  v39 = -1;
  v13 = [v38 borders];

  if (v13)
  {
    goto LABEL_6;
  }

  mFlattenedStyleCache = self->mFlattenedStyleCache;
  if (!mFlattenedStyleCache)
  {
    v15 = objc_alloc_init(ECIntToTwoIntKeyCache);
    v16 = self->mFlattenedStyleCache;
    self->mFlattenedStyleCache = v15;

    mFlattenedStyleCache = self->mFlattenedStyleCache;
  }

  if (![(ECIntToTwoIntKeyCache *)mFlattenedStyleCache integerIsPresentForKey1:v12 key2:v38 outValue:&v39])
  {
LABEL_6:
    v34 = v12;
    v17 = *a6;
    WeakRetained = objc_loadWeakRetained(&self->super.mResources);
    v19 = styleForEDCell(v17, WeakRetained);

    v20 = [v19 copy];
    if (!v20)
    {
      v21 = [EDStyle alloc];
      v22 = objc_loadWeakRetained(&self->super.mResources);
      v20 = [(EDStyle *)v21 initWithResources:v22];
    }

    v23 = [v19 borders];
    v24 = [v38 borders];
    v25 = [(EPStyleFlattener *)self copyFlattenBorders:v23 differentialBorders:v24 borderFlags:v10 precedence:a5 row:a7 column:a8];

    v35 = v25;
    if (v25)
    {
      [(EDStyle *)v20 setBorders:v25];
    }

    v26 = [v19 fillIndex];
    v27 = [v38 fill];
    v28 = [(EPStyleFlattener *)self flattenFillIndex:v26 differentialFill:v27];

    if (v28 != -1)
    {
      [(EDStyle *)v20 setFillIndex:v28];
    }

    v29 = [v19 font];
    v30 = [v38 font];
    v31 = [(EPStyleFlattener *)self copyFlattenFont:v29 differentialFont:v30];

    if (v31)
    {
      [(EDStyle *)v20 setFont:v31];
    }

    v32 = [(EPStyleFlattener *)self cellWithSetupStyleAtRowNumber:a7 columnNumber:a8];
    *a6 = v32;
    v33 = objc_loadWeakRetained(&self->super.mResources);
    setStyleForEDCell(v32, v20, v33);

    if (!v13)
    {
      v39 = styleIndexForEDCell(*a6);
      [(ECIntToTwoIntKeyCache *)self->mFlattenedStyleCache setObject:v39 forKey1:v34 key2:v38];
    }
  }

  else
  {
    setStyleIndexForEDCell(*a6, v39);
  }
}

- (id)copyFlattenBorders:(id)a3 differentialBorders:(id)a4 borderFlags:(int)a5 precedence:(unint64_t)a6 row:(int)a7 column:(int)a8
{
  v9 = *&a7;
  v14 = a3;
  v15 = a4;
  if (v15)
  {
    LODWORD(v25) = a8;
    v16 = [(EPStyleFlattener *)self copyFlattenBorder:0 borders:v14 differentialBorders:v15 flag:a5 & 1 precedence:a6 row:v9 column:v25];
    LODWORD(v26) = a8;
    v17 = [(EPStyleFlattener *)self copyFlattenBorder:1 borders:v14 differentialBorders:v15 flag:(a5 >> 1) & 1 precedence:a6 row:v9 column:v26];
    LODWORD(v27) = a8;
    v18 = [(EPStyleFlattener *)self copyFlattenBorder:2 borders:v14 differentialBorders:v15 flag:(a5 >> 2) & 1 precedence:a6 row:v9 column:v27];
    LODWORD(v28) = a8;
    v19 = [(EPStyleFlattener *)self copyFlattenBorder:3 borders:v14 differentialBorders:v15 flag:(a5 >> 3) & 1 precedence:a6 row:v9 column:v28];
    LODWORD(v29) = a8;
    v20 = [(EPStyleFlattener *)self copyFlattenBorder:4 borders:v14 differentialBorders:v15 flag:1 precedence:a6 row:v9 column:v29];
    v21 = [EDBorders alloc];
    WeakRetained = objc_loadWeakRetained(&self->super.mResources);
    v23 = [(EDBorders *)v21 initWithResources:WeakRetained];

    [(EDBorders *)v23 setLeftBorder:v16];
    [(EDBorders *)v23 setRightBorder:v17];
    [(EDBorders *)v23 setTopBorder:v18];
    [(EDBorders *)v23 setBottomBorder:v19];
    [(EDBorders *)v23 setDiagonalBorder:v20];
  }

  else
  {
    v23 = v14;
  }

  return v23;
}

- (id)copyFlattenBorder:(int)a3 borders:(id)a4 differentialBorders:(id)a5 flag:(BOOL)a6 precedence:(unint64_t)a7 row:(int)a8 column:(int)a9
{
  v9 = *&a8;
  v33 = a7;
  v10 = a6;
  v14 = a9;
  v15 = a4;
  v16 = a5;
  v34 = v15;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v14 = (a9 + 1);
      }

      else
      {
        v14 = a9;
      }
    }

    else
    {
      v14 = (a9 - 1);
      if (a9 < 1)
      {
        v17 = 0;
        v18 = 0;
LABEL_32:
        v22 = [v15 leftBorder];
        v24 = [v17 rightBorder];
        if (v10)
        {
          [v16 leftBorder];
          goto LABEL_34;
        }

LABEL_35:
        [v16 verticalBorder];
        goto LABEL_34;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        if (v9 <= 0)
        {
          v17 = 0;
          v18 = 0;
          goto LABEL_28;
        }

        v9 = (v9 - 1);
        break;
      case 3:
        v9 = (v9 + 1);
        break;
      case 4:
        v17 = 0;
        v18 = 0;
        v22 = [v15 diagonalBorder];
        [v16 diagonalBorder];
        v23 = v21 = 0;
        if (v23)
        {
          if (!v22)
          {
            goto LABEL_52;
          }

LABEL_50:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([(EPBorder *)v22 precedence]> v33)
            {
LABEL_52:
              v30 = [EPBorder alloc];
              WeakRetained = objc_loadWeakRetained(&self->super.mResources);
              v27 = [(EPBorder *)v30 initWithBorder:v23 precedence:v33 resources:WeakRetained];

              goto LABEL_55;
            }
          }

          else if (![(EDBorder *)v22 type])
          {
            goto LABEL_52;
          }

          v22 = v22;

          v27 = v22;
          goto LABEL_55;
        }

        goto LABEL_46;
    }
  }

  v19 = [(EPStyleFlattener *)self cellWithSetupStyleAtRowNumber:v9 columnNumber:v14, v33, v15];
  v20 = objc_loadWeakRetained(&self->super.mResources);
  v18 = styleForEDCell(v19, v20);

  v17 = [v18 borders];
  v21 = 0;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_48;
      }

      v22 = [v15 bottomBorder];
      v24 = [v17 topBorder];
      if (v10)
      {
        [v16 bottomBorder];
        goto LABEL_34;
      }

LABEL_30:
      [v16 horizontalBorder];
      goto LABEL_34;
    }

LABEL_28:
    v22 = [v15 topBorder];
    v24 = [v17 bottomBorder];
    if (v10)
    {
      [v16 topBorder];
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (!a3)
  {
    goto LABEL_32;
  }

  if (a3 != 1)
  {
LABEL_48:
    v28 = [EDBorder alloc];
    v29 = objc_loadWeakRetained(&self->super.mResources);
    v27 = [(EDBorder *)v28 initWithResources:v29];

    v22 = 0;
    goto LABEL_55;
  }

  v22 = [v15 rightBorder];
  v24 = [v17 leftBorder];
  if (!v10)
  {
    goto LABEL_35;
  }

  [v16 rightBorder];
  v25 = LABEL_34:;
  v23 = v25;
  v26 = v22;
  v21 = v24;
  if (v25)
  {
    if (v24 && [(EDBorder *)v24 type])
    {
      if (!v22 || ![(EDBorder *)v22 type])
      {
        v22 = v24;

        v21 = v22;
      }
    }

    else if (!v22)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

LABEL_46:
  if (!v22)
  {
    goto LABEL_48;
  }

  v22 = v22;
  v27 = v22;
LABEL_55:

  return v27;
}

- (unint64_t)flattenFillIndex:(unint64_t)a3 differentialFill:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v8 = [WeakRetained fills];

  if (v6)
  {
    mFillCache = self->mFillCache;
    if (!mFillCache)
    {
      v10 = objc_alloc_init(ECIntToTwoIntKeyCache);
      v11 = self->mFillCache;
      self->mFillCache = v10;

      mFillCache = self->mFillCache;
    }

    v24 = -1;
    if ([(ECIntToTwoIntKeyCache *)mFillCache integerIsPresentForKey1:v6 key2:a3 outValue:&v24])
    {
      goto LABEL_17;
    }

    if (a3 == -1)
    {
      goto LABEL_8;
    }

    v12 = [v8 objectAtIndex:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 type];

      if (!v13)
      {
LABEL_8:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v6;
          v14 = [v23 type];
          v15 = [EDPatternFill alloc];
          if (v14 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = v14;
          }

          v17 = [v23 backColor];
          v18 = [v23 foreColor];
          v19 = objc_loadWeakRetained(&self->super.mResources);
          v20 = [(EDPatternFill *)v15 initWithType:v16 foreColor:v17 backColor:v18 resources:v19];

          v24 = [v8 addOrEquivalentObject:v20];
          v21 = v24;
        }

        else
        {
          v21 = [v8 indexOfObject:v6];
          v24 = v21;
        }

        goto LABEL_16;
      }
    }

    else
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }

    v24 = a3;
    v21 = a3;
LABEL_16:
    [(ECIntToTwoIntKeyCache *)self->mFillCache setObject:v21 forKey1:v6 key2:a3];
LABEL_17:
    a3 = v24;
  }

  return a3;
}

- (id)copyFlattenFont:(id)a3 differentialFont:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 copy];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->super.mResources);
      v10 = [WeakRetained styles];
      v11 = [v10 defaultWorkbookStyle];
      v12 = [v11 font];
      v8 = [v12 copy];
    }

    v13 = [v7 color];
    v14 = [v6 colorReference];
    v15 = v14;
    if (v13 && (!v14 || [v14 themeIndex] == 1))
    {
      [v8 setColor:v13];
    }

    if ([v7 isBoldOverridden] && objc_msgSend(v7, "isBold"))
    {
      [v8 setBold:1];
    }

    if ([v7 isItalicOverridden] && objc_msgSend(v7, "isItalic"))
    {
      [v8 setItalic:1];
    }

    if ([v7 isStrikeOverridden] && objc_msgSend(v7, "isStrike"))
    {
      [v8 setStrike:1];
    }

    if ([v7 isUnderlineOverridden] && (!objc_msgSend(v6, "isUnderlineOverridden") || !objc_msgSend(v6, "underline")))
    {
      [v8 setUnderline:{objc_msgSend(v7, "underline")}];
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (id)wrapDifferentialStyleInATableStyleElement:(id)a3 type:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v8 = [EDTableStyleElement tableStyleElementWithResources:WeakRetained];

  [v8 setType:v4];
  [v8 setDifferentialStyle:v6];

  return v8;
}

- (id)newExtractedKeys:(id)a3 from:(id)a4 parent:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 copy];
  }

  else
  {
    v11 = objc_alloc_init(EDKeyedCollection);
  }

  v12 = v11;
  v13 = [v7 count];
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = [v7 objectAtIndex:i];
      v16 = [v8 objectWithKey:{objc_msgSend(v15, "intValue")}];

      if (v16)
      {
        [(EDKeyedCollection *)v12 addObject:v16];
      }
    }
  }

  return v12;
}

- (id)newExtractedGlobalStyleElements:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v7 = [v5 arrayWithObject:v6];

  v8 = [(EPStyleFlattener *)self newExtractedKeys:v7 from:v4 parent:0];
  return v8;
}

- (void)cacheRange:(id)a3
{
  v4 = a3;
  if (![(NSMutableArray *)self->mRanges count])
  {
    self->mFirstRow = [v4 firstRow];
    self->mLastRow = [v4 lastRow];
    self->mFirstColumn = [v4 firstColumn];
    self->mLastColumn = [v4 lastColumn];
  }

  [(NSMutableArray *)self->mRanges addObject:v4];
}

- (void)cacheSizes:(id)a3 inObject:(id)a4
{
  v5 = a3;
  self->mFirstRowStripeSize = 1;
  self->mSecondRowStripeSize = 1;
  v11 = v5;
  v6 = [v5 objectWithKey:6];
  v7 = v6;
  if (v6 && [v6 bandSize] != -1)
  {
    self->mFirstRowStripeSize = [v7 bandSize];
  }

  v8 = [v11 objectWithKey:7];

  if (v8 && [v8 bandSize] != -1)
  {
    self->mSecondRowStripeSize = [v8 bandSize];
  }

  self->mFirstColumnStripeSize = 1;
  self->mSecondColumnStripeSize = 1;
  v9 = [v11 objectWithKey:8];

  if (v9 && [v9 bandSize] != -1)
  {
    self->mFirstColumnStripeSize = [v9 bandSize];
  }

  v10 = [v11 objectWithKey:9];

  if (v10 && [v10 bandSize] != -1)
  {
    self->mSecondColumnStripeSize = [v10 bandSize];
  }
}

@end