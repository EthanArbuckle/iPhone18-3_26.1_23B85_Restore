@interface EPStyleFlattener
- (EDCellHeader)cellWithSetupStyleAtRowNumber:(int)number columnNumber:(int)columnNumber;
- (id)copyFlattenBorder:(int)border borders:(id)borders differentialBorders:(id)differentialBorders flag:(BOOL)flag precedence:(unint64_t)precedence row:(int)row column:(int)column;
- (id)copyFlattenBorders:(id)borders differentialBorders:(id)differentialBorders borderFlags:(int)flags precedence:(unint64_t)precedence row:(int)row column:(int)column;
- (id)copyFlattenFont:(id)font differentialFont:(id)differentialFont;
- (id)newExtractedGlobalStyleElements:(id)elements;
- (id)newExtractedKeys:(id)keys from:(id)from parent:(id)parent;
- (id)wrapDifferentialStyleInATableStyleElement:(id)element type:(int)type;
- (unint64_t)flattenFillIndex:(unint64_t)index differentialFill:(id)fill;
- (void)applyDifferentialStyle:(id)style borderFlags:(int)flags precedence:(unint64_t)precedence toCell:(EDCellHeader *)cell row:(int)row column:(int)column;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
- (void)applyStyleElements:(id)elements toCell:(EDCellHeader *)cell row:(int)row column:(int)column;
- (void)cacheRange:(id)range;
- (void)cacheSizes:(id)sizes inObject:(id)object;
- (void)clearCache;
- (void)processObject:(id)object;
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

- (void)applyProcessorToObject:(id)object sheet:(id)sheet
{
  objectCopy = object;
  objc_storeStrong(&self->mWorksheet, object);
  if (!self->mKeys)
  {
    keysInTheOrderTheyShouldBeApplied = [(EPStyleFlattener *)self keysInTheOrderTheyShouldBeApplied];
    mKeys = self->mKeys;
    self->mKeys = keysInTheOrderTheyShouldBeApplied;
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

- (void)processObject:(id)object
{
  objectCopy = object;
  v4 = [(EPStyleFlattener *)self styleFromObject:?];
  tableStyleElements = [v4 tableStyleElements];

  if (tableStyleElements && [tableStyleElements count])
  {
    rowBlocks = [(EDWorksheet *)self->mWorksheet rowBlocks];
    mRowBlocks = self->mRowBlocks;
    self->mRowBlocks = rowBlocks;

    columnInfos = [(EDWorksheet *)self->mWorksheet columnInfos];
    mColumnInfos = self->mColumnInfos;
    self->mColumnInfos = columnInfos;

    array = [MEMORY[0x277CBEB18] array];
    mRanges = self->mRanges;
    self->mRanges = array;

    [(EPStyleFlattener *)self cacheSizes:tableStyleElements inObject:objectCopy];
    v37 = [(EPStyleFlattener *)self newExtractedGlobalStyleElements:tableStyleElements];
    v12 = [(NSMutableArray *)self->mRanges count];
    if (v12)
    {
      v13 = 0;
      v34 = v12;
      do
      {
        v35 = v13;
        v36 = [(NSMutableArray *)self->mRanges objectAtIndex:?];
        firstRow = [v36 firstRow];
        lastRow = [v36 lastRow];
        firstColumn = [v36 firstColumn];
        lastColumn = [v36 lastColumn];
        v18 = firstRow <= 499999 && firstColumn <= 499999;
        if (v18)
        {
          v19 = lastColumn;
          if (lastRow > 500000)
          {
            lastRow = [(EDRowBlocks *)self->mRowBlocks maxPopulatedRow]+ 1;
          }

          if (v19 > 500000)
          {
            v19 = [(EDRowBlocks *)self->mRowBlocks maxPopulatedColumn]+ 1;
          }

          v20 = [(EDRowBlocks *)self->mRowBlocks rowBlockForRowNumber:firstRow currentRowBlock:0 createIfNil:1];
          mCurrentRowBlock = self->mCurrentRowBlock;
          self->mCurrentRowBlock = v20;

          if (firstRow <= lastRow)
          {
            if (v19 >= 500000)
            {
              v22 = 500000;
            }

            else
            {
              v22 = v19;
            }

            if (lastRow >= 500000)
            {
              v23 = 500000;
            }

            else
            {
              v23 = lastRow;
            }

            v38 = v23;
            do
            {
              v24 = [(EPStyleFlattener *)self newExtractedRowStyleElements:tableStyleElements parentScope:v37 row:firstRow];
              v25 = [(EDRowBlocks *)self->mRowBlocks rowBlockForRowNumber:firstRow currentRowBlock:self->mCurrentRowBlock createIfNil:1];
              v26 = self->mCurrentRowBlock;
              self->mCurrentRowBlock = v25;

              v27 = firstColumn;
              if (firstColumn <= v19)
              {
                do
                {
                  v28 = [(EPStyleFlattener *)self newExtractedCellStyleElements:tableStyleElements parentScope:v24 row:firstRow column:v27];
                  if ([v28 count])
                  {
                    v29 = [(EPStyleFlattener *)self cellWithSetupStyleAtRowNumber:firstRow columnNumber:v27];
                    if (v29)
                    {
                      [(EPStyleFlattener *)self applyStyleElements:v28 toCell:v29 row:firstRow column:v27];
                    }
                  }

                  v18 = v27 < v22;
                  v27 = (v27 + 1);
                }

                while (v18);
              }

              v18 = firstRow < v38;
              firstRow = (firstRow + 1);
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

- (EDCellHeader)cellWithSetupStyleAtRowNumber:(int)number columnNumber:(int)columnNumber
{
  if (number > 500000 || columnNumber > 500000)
  {
    return 0;
  }

  v6 = *&columnNumber;
  v7 = *&number;
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

- (void)applyStyleElements:(id)elements toCell:(EDCellHeader *)cell row:(int)row column:(int)column
{
  v6 = *&column;
  v7 = *&row;
  elementsCopy = elements;
  cellCopy = cell;
  v11 = [(NSArray *)self->mKeys count];
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [(NSArray *)self->mKeys objectAtIndex:v12];
      intValue = [v13 intValue];

      v15 = [elementsCopy objectWithKey:intValue];
      if (v15)
      {
        v16 = [(EPStyleFlattener *)self borderFlagsForStyleType:intValue row:v7 column:v6];
        differentialStyle = [v15 differentialStyle];
        [(EPStyleFlattener *)self applyDifferentialStyle:differentialStyle borderFlags:v16 precedence:v12 toCell:&cellCopy row:v7 column:v6];
      }

      ++v12;
    }

    while (v11 != v12);
  }
}

- (void)applyDifferentialStyle:(id)style borderFlags:(int)flags precedence:(unint64_t)precedence toCell:(EDCellHeader *)cell row:(int)row column:(int)column
{
  v10 = *&flags;
  styleCopy = style;
  v12 = styleIndexForEDCell(*cell);
  v39 = -1;
  borders = [styleCopy borders];

  if (borders)
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

  if (![(ECIntToTwoIntKeyCache *)mFlattenedStyleCache integerIsPresentForKey1:v12 key2:styleCopy outValue:&v39])
  {
LABEL_6:
    v34 = v12;
    v17 = *cell;
    WeakRetained = objc_loadWeakRetained(&self->super.mResources);
    v19 = styleForEDCell(v17, WeakRetained);

    v20 = [v19 copy];
    if (!v20)
    {
      v21 = [EDStyle alloc];
      v22 = objc_loadWeakRetained(&self->super.mResources);
      v20 = [(EDStyle *)v21 initWithResources:v22];
    }

    borders2 = [v19 borders];
    borders3 = [styleCopy borders];
    v25 = [(EPStyleFlattener *)self copyFlattenBorders:borders2 differentialBorders:borders3 borderFlags:v10 precedence:precedence row:row column:column];

    v35 = v25;
    if (v25)
    {
      [(EDStyle *)v20 setBorders:v25];
    }

    fillIndex = [v19 fillIndex];
    fill = [styleCopy fill];
    v28 = [(EPStyleFlattener *)self flattenFillIndex:fillIndex differentialFill:fill];

    if (v28 != -1)
    {
      [(EDStyle *)v20 setFillIndex:v28];
    }

    font = [v19 font];
    font2 = [styleCopy font];
    v31 = [(EPStyleFlattener *)self copyFlattenFont:font differentialFont:font2];

    if (v31)
    {
      [(EDStyle *)v20 setFont:v31];
    }

    v32 = [(EPStyleFlattener *)self cellWithSetupStyleAtRowNumber:row columnNumber:column];
    *cell = v32;
    v33 = objc_loadWeakRetained(&self->super.mResources);
    setStyleForEDCell(v32, v20, v33);

    if (!borders)
    {
      v39 = styleIndexForEDCell(*cell);
      [(ECIntToTwoIntKeyCache *)self->mFlattenedStyleCache setObject:v39 forKey1:v34 key2:styleCopy];
    }
  }

  else
  {
    setStyleIndexForEDCell(*cell, v39);
  }
}

- (id)copyFlattenBorders:(id)borders differentialBorders:(id)differentialBorders borderFlags:(int)flags precedence:(unint64_t)precedence row:(int)row column:(int)column
{
  v9 = *&row;
  bordersCopy = borders;
  differentialBordersCopy = differentialBorders;
  if (differentialBordersCopy)
  {
    LODWORD(v25) = column;
    v16 = [(EPStyleFlattener *)self copyFlattenBorder:0 borders:bordersCopy differentialBorders:differentialBordersCopy flag:flags & 1 precedence:precedence row:v9 column:v25];
    LODWORD(v26) = column;
    v17 = [(EPStyleFlattener *)self copyFlattenBorder:1 borders:bordersCopy differentialBorders:differentialBordersCopy flag:(flags >> 1) & 1 precedence:precedence row:v9 column:v26];
    LODWORD(v27) = column;
    v18 = [(EPStyleFlattener *)self copyFlattenBorder:2 borders:bordersCopy differentialBorders:differentialBordersCopy flag:(flags >> 2) & 1 precedence:precedence row:v9 column:v27];
    LODWORD(v28) = column;
    v19 = [(EPStyleFlattener *)self copyFlattenBorder:3 borders:bordersCopy differentialBorders:differentialBordersCopy flag:(flags >> 3) & 1 precedence:precedence row:v9 column:v28];
    LODWORD(v29) = column;
    v20 = [(EPStyleFlattener *)self copyFlattenBorder:4 borders:bordersCopy differentialBorders:differentialBordersCopy flag:1 precedence:precedence row:v9 column:v29];
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
    v23 = bordersCopy;
  }

  return v23;
}

- (id)copyFlattenBorder:(int)border borders:(id)borders differentialBorders:(id)differentialBorders flag:(BOOL)flag precedence:(unint64_t)precedence row:(int)row column:(int)column
{
  v9 = *&row;
  precedenceCopy = precedence;
  flagCopy = flag;
  columnCopy2 = column;
  bordersCopy = borders;
  differentialBordersCopy = differentialBorders;
  v34 = bordersCopy;
  if (border <= 1)
  {
    if (border)
    {
      if (border == 1)
      {
        columnCopy2 = (column + 1);
      }

      else
      {
        columnCopy2 = column;
      }
    }

    else
    {
      columnCopy2 = (column - 1);
      if (column < 1)
      {
        borders = 0;
        v18 = 0;
LABEL_32:
        leftBorder = [bordersCopy leftBorder];
        rightBorder = [borders rightBorder];
        if (flagCopy)
        {
          [differentialBordersCopy leftBorder];
          goto LABEL_34;
        }

LABEL_35:
        [differentialBordersCopy verticalBorder];
        goto LABEL_34;
      }
    }
  }

  else
  {
    switch(border)
    {
      case 2:
        if (v9 <= 0)
        {
          borders = 0;
          v18 = 0;
          goto LABEL_28;
        }

        v9 = (v9 - 1);
        break;
      case 3:
        v9 = (v9 + 1);
        break;
      case 4:
        borders = 0;
        v18 = 0;
        leftBorder = [bordersCopy diagonalBorder];
        [differentialBordersCopy diagonalBorder];
        v23 = v21 = 0;
        if (v23)
        {
          if (!leftBorder)
          {
            goto LABEL_52;
          }

LABEL_50:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([(EPBorder *)leftBorder precedence]> precedenceCopy)
            {
LABEL_52:
              v30 = [EPBorder alloc];
              WeakRetained = objc_loadWeakRetained(&self->super.mResources);
              v27 = [(EPBorder *)v30 initWithBorder:v23 precedence:precedenceCopy resources:WeakRetained];

              goto LABEL_55;
            }
          }

          else if (![(EDBorder *)leftBorder type])
          {
            goto LABEL_52;
          }

          leftBorder = leftBorder;

          v27 = leftBorder;
          goto LABEL_55;
        }

        goto LABEL_46;
    }
  }

  bordersCopy = [(EPStyleFlattener *)self cellWithSetupStyleAtRowNumber:v9 columnNumber:columnCopy2, precedenceCopy, bordersCopy];
  v20 = objc_loadWeakRetained(&self->super.mResources);
  v18 = styleForEDCell(bordersCopy, v20);

  borders = [v18 borders];
  v21 = 0;
  if (border > 1)
  {
    if (border != 2)
    {
      if (border != 3)
      {
        goto LABEL_48;
      }

      leftBorder = [bordersCopy bottomBorder];
      rightBorder = [borders topBorder];
      if (flagCopy)
      {
        [differentialBordersCopy bottomBorder];
        goto LABEL_34;
      }

LABEL_30:
      [differentialBordersCopy horizontalBorder];
      goto LABEL_34;
    }

LABEL_28:
    leftBorder = [bordersCopy topBorder];
    rightBorder = [borders bottomBorder];
    if (flagCopy)
    {
      [differentialBordersCopy topBorder];
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (!border)
  {
    goto LABEL_32;
  }

  if (border != 1)
  {
LABEL_48:
    v28 = [EDBorder alloc];
    v29 = objc_loadWeakRetained(&self->super.mResources);
    v27 = [(EDBorder *)v28 initWithResources:v29];

    leftBorder = 0;
    goto LABEL_55;
  }

  leftBorder = [bordersCopy rightBorder];
  rightBorder = [borders leftBorder];
  if (!flagCopy)
  {
    goto LABEL_35;
  }

  [differentialBordersCopy rightBorder];
  v25 = LABEL_34:;
  v23 = v25;
  v26 = leftBorder;
  v21 = rightBorder;
  if (v25)
  {
    if (rightBorder && [(EDBorder *)rightBorder type])
    {
      if (!leftBorder || ![(EDBorder *)leftBorder type])
      {
        leftBorder = rightBorder;

        v21 = leftBorder;
      }
    }

    else if (!leftBorder)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

LABEL_46:
  if (!leftBorder)
  {
    goto LABEL_48;
  }

  leftBorder = leftBorder;
  v27 = leftBorder;
LABEL_55:

  return v27;
}

- (unint64_t)flattenFillIndex:(unint64_t)index differentialFill:(id)fill
{
  fillCopy = fill;
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  fills = [WeakRetained fills];

  if (fillCopy)
  {
    mFillCache = self->mFillCache;
    if (!mFillCache)
    {
      v10 = objc_alloc_init(ECIntToTwoIntKeyCache);
      v11 = self->mFillCache;
      self->mFillCache = v10;

      mFillCache = self->mFillCache;
    }

    indexCopy = -1;
    if ([(ECIntToTwoIntKeyCache *)mFillCache integerIsPresentForKey1:fillCopy key2:index outValue:&indexCopy])
    {
      goto LABEL_17;
    }

    if (index == -1)
    {
      goto LABEL_8;
    }

    v12 = [fills objectAtIndex:index];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      type = [v12 type];

      if (!type)
      {
LABEL_8:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = fillCopy;
          type2 = [v23 type];
          v15 = [EDPatternFill alloc];
          if (type2 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = type2;
          }

          backColor = [v23 backColor];
          foreColor = [v23 foreColor];
          v19 = objc_loadWeakRetained(&self->super.mResources);
          v20 = [(EDPatternFill *)v15 initWithType:v16 foreColor:backColor backColor:foreColor resources:v19];

          indexCopy = [fills addOrEquivalentObject:v20];
          indexCopy2 = indexCopy;
        }

        else
        {
          indexCopy2 = [fills indexOfObject:fillCopy];
          indexCopy = indexCopy2;
        }

        goto LABEL_16;
      }
    }

    else
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }

    indexCopy = index;
    indexCopy2 = index;
LABEL_16:
    [(ECIntToTwoIntKeyCache *)self->mFillCache setObject:indexCopy2 forKey1:fillCopy key2:index];
LABEL_17:
    index = indexCopy;
  }

  return index;
}

- (id)copyFlattenFont:(id)font differentialFont:(id)differentialFont
{
  fontCopy = font;
  differentialFontCopy = differentialFont;
  if (differentialFontCopy)
  {
    if (fontCopy)
    {
      v8 = [fontCopy copy];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->super.mResources);
      styles = [WeakRetained styles];
      defaultWorkbookStyle = [styles defaultWorkbookStyle];
      font = [defaultWorkbookStyle font];
      v8 = [font copy];
    }

    color = [differentialFontCopy color];
    colorReference = [fontCopy colorReference];
    v15 = colorReference;
    if (color && (!colorReference || [colorReference themeIndex] == 1))
    {
      [v8 setColor:color];
    }

    if ([differentialFontCopy isBoldOverridden] && objc_msgSend(differentialFontCopy, "isBold"))
    {
      [v8 setBold:1];
    }

    if ([differentialFontCopy isItalicOverridden] && objc_msgSend(differentialFontCopy, "isItalic"))
    {
      [v8 setItalic:1];
    }

    if ([differentialFontCopy isStrikeOverridden] && objc_msgSend(differentialFontCopy, "isStrike"))
    {
      [v8 setStrike:1];
    }

    if ([differentialFontCopy isUnderlineOverridden] && (!objc_msgSend(fontCopy, "isUnderlineOverridden") || !objc_msgSend(fontCopy, "underline")))
    {
      [v8 setUnderline:{objc_msgSend(differentialFontCopy, "underline")}];
    }
  }

  else
  {
    v8 = fontCopy;
  }

  return v8;
}

- (id)wrapDifferentialStyleInATableStyleElement:(id)element type:(int)type
{
  v4 = *&type;
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v8 = [EDTableStyleElement tableStyleElementWithResources:WeakRetained];

  [v8 setType:v4];
  [v8 setDifferentialStyle:elementCopy];

  return v8;
}

- (id)newExtractedKeys:(id)keys from:(id)from parent:(id)parent
{
  keysCopy = keys;
  fromCopy = from;
  parentCopy = parent;
  v10 = parentCopy;
  if (parentCopy)
  {
    v11 = [parentCopy copy];
  }

  else
  {
    v11 = objc_alloc_init(EDKeyedCollection);
  }

  v12 = v11;
  v13 = [keysCopy count];
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = [keysCopy objectAtIndex:i];
      v16 = [fromCopy objectWithKey:{objc_msgSend(v15, "intValue")}];

      if (v16)
      {
        [(EDKeyedCollection *)v12 addObject:v16];
      }
    }
  }

  return v12;
}

- (id)newExtractedGlobalStyleElements:(id)elements
{
  elementsCopy = elements;
  v5 = MEMORY[0x277CBEA60];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v7 = [v5 arrayWithObject:v6];

  v8 = [(EPStyleFlattener *)self newExtractedKeys:v7 from:elementsCopy parent:0];
  return v8;
}

- (void)cacheRange:(id)range
{
  rangeCopy = range;
  if (![(NSMutableArray *)self->mRanges count])
  {
    self->mFirstRow = [rangeCopy firstRow];
    self->mLastRow = [rangeCopy lastRow];
    self->mFirstColumn = [rangeCopy firstColumn];
    self->mLastColumn = [rangeCopy lastColumn];
  }

  [(NSMutableArray *)self->mRanges addObject:rangeCopy];
}

- (void)cacheSizes:(id)sizes inObject:(id)object
{
  sizesCopy = sizes;
  self->mFirstRowStripeSize = 1;
  self->mSecondRowStripeSize = 1;
  v11 = sizesCopy;
  v6 = [sizesCopy objectWithKey:6];
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