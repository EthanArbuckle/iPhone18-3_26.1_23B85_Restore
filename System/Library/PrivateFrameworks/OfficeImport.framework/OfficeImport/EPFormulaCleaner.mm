@interface EPFormulaCleaner
- (BOOL)checkCustomFunction:(unsigned int)function;
- (BOOL)cleanArea3D:(unsigned int)d;
- (BOOL)cleanArea:(unsigned int)area updateSheet:(BOOL)sheet;
- (BOOL)cleanArray:(unsigned int)array;
- (BOOL)cleanName:(unsigned int)name nameIndex:(unsigned int)index sheetIndex:(unint64_t)sheetIndex tokenOffset:(int *)offset;
- (BOOL)cleanName:(unsigned int)name tokenOffset:(int *)offset;
- (BOOL)cleanNameX:(unsigned int)x tokenOffset:(int *)offset;
- (BOOL)cleanRange:(unsigned int)range tokenOffset:(int *)offset;
- (BOOL)cleanRef3D:(unsigned int)d;
- (BOOL)cleanRef:(unsigned int)ref updateSheet:(BOOL)sheet;
- (BOOL)cleanTokenAtIndex:(unsigned int)index tokenOffset:(int *)offset;
- (BOOL)cleanUnion:(unsigned int)union;
- (BOOL)combineCellReferences:(unsigned int)references tokenOffset:(int *)offset;
- (BOOL)doesNameIndexContainCircularReferences:(unsigned int)references sheetIndex:(unint64_t)index previousNameIndexes:(void *)indexes;
- (BOOL)isArrayedFormulaSupported:(id)supported allowSimpleRanges:(BOOL)ranges formulasBeingEvaluated:(id)evaluated;
- (BOOL)isLinkReferenceIndexSupported:(unsigned int)supported allowExternal:(BOOL)external;
- (BOOL)isObjectSupported:(id)supported;
- (BOOL)isReferenceValidInLassoForRow:(int)row rowRelative:(BOOL)relative column:(int)column columnRelative:(BOOL)columnRelative;
- (BOOL)isReferenceValidInLassoForSheet:(id)sheet rowMin:(int)min rowMinRelative:(BOOL)relative rowMax:(int)max rowMaxRelative:(BOOL)maxRelative columnMin:(int)columnMin columnMinRelative:(BOOL)minRelative columnMax:(int)self0 columnMaxRelative:(BOOL)self1;
- (BOOL)useEvaluationStackToCheckFunctionId:(int)id functionName:(id)name tokenIndex:(unsigned int)index;
- (id)newFormulaToCleanFromSharedFormula:(id)formula;
- (id)useEvaluationStackToGetParameter:(unsigned int)parameter tokenIndex:(unsigned int)index allReferencesAllowed:(BOOL)allowed success:(BOOL *)success;
- (id)worksheetFromLinkReferenceIndex:(unsigned int)index;
- (id)worksheetsFromLinkReferenceIndex:(unsigned int)index;
- (int)useEvaluationStackToGetParameterTokenType:(unsigned int)type tokenIndex:(unsigned int)index success:(BOOL *)success;
- (unsigned)useEvaluationStackToGetParameter:(unsigned int)parameter tokenIndex:(unsigned int)index;
- (void)addOffsetsToRow:(int *)row rowRelative:(BOOL)relative column:(int *)column columnRelative:(BOOL)columnRelative;
- (void)applyMaxCellsInName:(id)name;
- (void)cleanFormula:(id)formula name:(id)name;
- (void)cleanFormula:(id)formula sheet:(id)sheet;
- (void)cleanFormula:(id)formula sheet:(id)sheet name:(id)name;
- (void)prepareToProcessFormula:(id)formula sheet:(id)sheet name:(id)name;
- (void)reportWarning:(int)warning parameter:(id)parameter;
- (void)reset;
- (void)updateSheet:(id)sheet row:(int)row rowRelative:(BOOL)relative column:(int)column columnRelative:(BOOL)columnRelative;
- (void)updateSheet:(id)sheet rowMin:(int)min rowMinRelative:(BOOL)relative rowMax:(int)max rowMaxRelative:(BOOL)maxRelative columnMin:(int)columnMin columnMinRelative:(BOOL)minRelative columnMax:(int)self0 columnMaxRelative:(BOOL)self1;
- (void)updateWorksheet:(id)worksheet row:(int)row column:(int)column inDictionary:(id)dictionary;
@end

@implementation EPFormulaCleaner

- (void)reset
{
  mCurrentSheet = self->mCurrentSheet;
  self->mCurrentSheet = 0;

  mFormula = self->mFormula;
  self->mFormula = 0;

  mTokensToClean = self->mTokensToClean;
  self->mTokensToClean = 0;

  mParentName = self->mParentName;
  self->mParentName = 0;

  self->mRowOffset = 0;
  self->mColumnOffset = 0;
  [(EDRowBlocks *)self->mBaseFormulaRowBlocks unlock];
  mBaseFormulaRowBlocks = self->mBaseFormulaRowBlocks;
  self->mBaseFormulaRowBlocks = 0;
}

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = supportedCopy;
    if ([v4 isSupportedFormula])
    {
      v5 = [v4 isCleaned] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)cleanFormula:(id)formula sheet:(id)sheet
{
  formulaCopy = formula;
  sheetCopy = sheet;
  if (sheetCopy)
  {
    [(EPFormulaCleaner *)self cleanFormula:formulaCopy sheet:sheetCopy name:0];
  }
}

- (void)cleanFormula:(id)formula name:(id)name
{
  formulaCopy = formula;
  nameCopy = name;
  if (nameCopy)
  {
    [(EPFormulaCleaner *)self cleanFormula:formulaCopy sheet:0 name:nameCopy];
  }
}

- (void)prepareToProcessFormula:(id)formula sheet:(id)sheet name:(id)name
{
  formulaCopy = formula;
  sheetCopy = sheet;
  nameCopy = name;
  [(EPFormulaCleaner *)self reset];
  objc_storeStrong(&self->mFormula, formula);
  mTokensToClean = self->mTokensToClean;
  self->mTokensToClean = 0;

  objc_storeStrong(&self->mCurrentSheet, sheet);
  objc_storeStrong(&self->mParentName, name);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = formulaCopy;
    if (([v12 isBaseFormula] & 1) == 0)
    {
      self->mRowOffset = [v12 rowBaseOrOffset];
      self->mColumnOffset = [v12 columnBaseOrOffset];
    }
  }
}

- (void)cleanFormula:(id)formula sheet:(id)sheet name:(id)name
{
  formulaCopy = formula;
  sheetCopy = sheet;
  nameCopy = name;
  [(EPFormulaCleaner *)self prepareToProcessFormula:formulaCopy sheet:sheetCopy name:nameCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(EPFormulaCleaner *)self newFormulaToCleanFromSharedFormula:formulaCopy];
    mTokensToClean = self->mTokensToClean;
    self->mTokensToClean = v12;

    v14 = self->mTokensToClean;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    objc_storeStrong(&self->mTokensToClean, formula);
    v14 = self->mTokensToClean;
  }

  if (-[EDFormula tokenCount](v14, "tokenCount") || [nameCopy isInternalFunction])
  {
    for (i = 0; i < [(EDFormula *)self->mTokensToClean tokenCount]; i = (i + v16 + 1))
    {
      v16 = 0;
      if (![(EPFormulaCleaner *)self cleanTokenAtIndex:i tokenOffset:&v16])
      {
        goto LABEL_12;
      }
    }

    [formulaCopy setCleaned:1];
    [(EPFormulaCleaner *)self reset];
  }

LABEL_12:
}

- (BOOL)cleanTokenAtIndex:(unsigned int)index tokenOffset:(int *)offset
{
  v5 = *&index;
  *offset = 0;
  v7 = [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:?]- 1;
  result = 1;
  switch(v7)
  {
    case 0:
    case 1:
    case 45:
    case 46:
    case 77:
    case 78:
    case 109:
    case 110:
      selfCopy8 = self;
      v10 = 2;
      goto LABEL_4;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 24:
    case 28:
    case 29:
    case 30:
    case 37:
    case 38:
    case 39:
    case 40:
    case 69:
    case 70:
    case 71:
    case 72:
    case 87:
    case 101:
    case 102:
    case 103:
    case 104:
    case 119:
      return result;
    case 15:

      return [(EPFormulaCleaner *)self cleanUnion:v5];
    case 16:

      return [(EPFormulaCleaner *)self cleanRange:v5 tokenOffset:offset];
    case 23:
      selfCopy8 = self;
      v10 = 3;
      goto LABEL_4;
    case 27:
    case 41:
    case 42:
    case 59:
    case 60:
    case 73:
    case 74:
    case 91:
    case 92:
    case 105:
    case 106:
    case 123:
    case 124:
      selfCopy8 = self;
      v10 = 6;
      goto LABEL_4;
    case 31:
    case 63:
    case 95:

      return [(EPFormulaCleaner *)self cleanArray:v5];
    case 32:
    case 64:
    case 96:

      return [(EPFormulaCleaner *)self cleanFunc:v5];
    case 33:
    case 65:
    case 97:

      return [(EPFormulaCleaner *)self cleanFuncVar:v5];
    case 34:
    case 66:
    case 98:

      return [(EPFormulaCleaner *)self cleanName:v5 tokenOffset:offset];
    case 35:
    case 67:
    case 99:
      selfCopy6 = self;
      v15 = v5;
      v16 = 1;
      goto LABEL_33;
    case 36:
    case 68:
    case 100:
      selfCopy7 = self;
      v12 = v5;
      v13 = 1;
      goto LABEL_29;
    case 43:
    case 75:
    case 107:
      selfCopy6 = self;
      v15 = v5;
      v16 = 0;
LABEL_33:

      result = [(EPFormulaCleaner *)selfCopy6 cleanRef:v15 updateSheet:v16];
      break;
    case 44:
    case 76:
    case 108:
      selfCopy7 = self;
      v12 = v5;
      v13 = 0;
LABEL_29:

      result = [(EPFormulaCleaner *)selfCopy7 cleanArea:v12 updateSheet:v13];
      break;
    case 56:
    case 88:
    case 120:

      result = [(EPFormulaCleaner *)self cleanNameX:v5 tokenOffset:offset];
      break;
    case 57:
    case 89:
    case 121:

      result = [(EPFormulaCleaner *)self cleanRef3D:v5];
      break;
    case 58:
    case 90:
    case 122:

      result = [(EPFormulaCleaner *)self cleanArea3D:v5];
      break;
    default:
      selfCopy8 = self;
      v10 = 1;
LABEL_4:
      [(EPFormulaCleaner *)selfCopy8 reportWarning:v10];
      result = 0;
      break;
  }

  return result;
}

- (void)addOffsetsToRow:(int *)row rowRelative:(BOOL)relative column:(int *)column columnRelative:(BOOL)columnRelative
{
  if (!relative)
  {
    if (!columnRelative)
    {
      return;
    }

LABEL_5:
    *column += self->mColumnOffset;
    return;
  }

  *row += self->mRowOffset;
  if (columnRelative)
  {
    goto LABEL_5;
  }
}

- (BOOL)isReferenceValidInLassoForRow:(int)row rowRelative:(BOOL)relative column:(int)column columnRelative:(BOOL)columnRelative
{
  columnCopy = column;
  rowCopy = row;
  [(EPFormulaCleaner *)self addOffsetsToRow:&rowCopy rowRelative:relative column:&columnCopy columnRelative:columnRelative];
  v7 = rowCopy < 500001 && columnCopy < 500001;
  v8 = v7;
  if (!v7)
  {
    [(EPFormulaCleaner *)self reportWarning:10];
  }

  return v8;
}

- (BOOL)isReferenceValidInLassoForSheet:(id)sheet rowMin:(int)min rowMinRelative:(BOOL)relative rowMax:(int)max rowMaxRelative:(BOOL)maxRelative columnMin:(int)columnMin columnMinRelative:(BOOL)minRelative columnMax:(int)self0 columnMaxRelative:(BOOL)self1
{
  maxRelativeCopy = maxRelative;
  v13 = *&max;
  relativeCopy = relative;
  columnMaxCopy = columnMax;
  sheetCopy = sheet;
  v24 = v13;
  minCopy = min;
  columnMinCopy = columnMin;
  v19 = isRowReference(columnMin, columnMaxCopy);
  columnMaxRelativeCopy = columnMaxRelative;
  if (v19 || isColumnReference(min, v13))
  {
    [(EPFormulaCleaner *)self addOffsetsToRow:&minCopy rowRelative:relativeCopy column:&columnMinCopy columnRelative:minRelative];
    [(EPFormulaCleaner *)self addOffsetsToRow:&v24 rowRelative:maxRelativeCopy column:&columnMax columnRelative:columnMaxRelativeCopy];
    if (minCopy >= 500001 && columnMinCopy >= 500001 || [EPFormulaCleaner isThereContentOutsideOfLassoBoundsForSheet:"isThereContentOutsideOfLassoBoundsForSheet:rowMin:rowMax:columnMin:columnMax:" rowMin:sheetCopy rowMax:? columnMin:? columnMax:?])
    {
      [(EPFormulaCleaner *)self reportWarning:10];
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = [(EPFormulaCleaner *)self isReferenceValidInLassoForRow:v13 rowRelative:maxRelativeCopy column:columnMaxCopy columnRelative:columnMaxRelativeCopy];
  }

  return v21;
}

- (void)updateSheet:(id)sheet row:(int)row rowRelative:(BOOL)relative column:(int)column columnRelative:(BOOL)columnRelative
{
  columnRelativeCopy = columnRelative;
  relativeCopy = relative;
  columnCopy = column;
  rowCopy = row;
  sheetCopy = sheet;
  if (sheetCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EPFormulaCleaner *)self addOffsetsToRow:&rowCopy rowRelative:relativeCopy column:&columnCopy columnRelative:columnRelativeCopy];
      [(EDFormula *)self->mFormula updateContainsRelativeReferences:relativeCopy | columnRelativeCopy];
      mParentName = self->mParentName;
      if (mParentName)
      {
        v13 = columnCopy;
        v12 = rowCopy;
        maxWorksheetReferences = [(EDName *)mParentName maxWorksheetReferences];
        [(EPFormulaCleaner *)self updateWorksheet:sheetCopy row:v12 column:v13 inDictionary:maxWorksheetReferences];
      }

      else
      {
        maxWorksheetReferences = [sheetCopy maxCellReferencedInFormulas];
        [maxWorksheetReferences unionWithRow:rowCopy column:columnCopy];
      }
    }
  }
}

- (void)updateSheet:(id)sheet rowMin:(int)min rowMinRelative:(BOOL)relative rowMax:(int)max rowMaxRelative:(BOOL)maxRelative columnMin:(int)columnMin columnMinRelative:(BOOL)minRelative columnMax:(int)self0 columnMaxRelative:(BOOL)self1
{
  maxRelativeCopy = maxRelative;
  sheetCopy = sheet;
  v16 = isRowReference(columnMin, columnMax);
  v17 = isColumnReference(min, max);
  if (columnMax >= 500000)
  {
    columnMaxCopy = 500000;
  }

  else
  {
    columnMaxCopy = columnMax;
  }

  if (v16)
  {
    maxCopy2 = max;
  }

  else
  {
    maxCopy2 = 0;
  }

  if (v17)
  {
    columnMaxCopy2 = columnMaxCopy;
  }

  else
  {
    columnMaxCopy2 = columnMax;
  }

  if (!v17)
  {
    maxCopy2 = max;
    columnMaxCopy = 0;
  }

  if (maxCopy2 >= 500000)
  {
    v21 = 500000;
  }

  else
  {
    v21 = maxCopy2;
  }

  if (v16)
  {
    v22 = columnMaxCopy;
  }

  else
  {
    v22 = columnMaxCopy2;
  }

  if (v16)
  {
    v23 = v21;
  }

  else
  {
    v23 = maxCopy2;
  }

  [(EPFormulaCleaner *)self updateSheet:sheetCopy row:v23 rowRelative:maxRelativeCopy column:v22 columnRelative:columnMaxRelative];
}

- (BOOL)cleanArray:(unsigned int)array
{
  v3 = *&array;
  v10 = 0;
  v5 = [(EDFormula *)self->mFormula extendedDataForTokenAtIndex:*&array extendedDataIndex:0 length:&v10];
  if (!v5)
  {
    return 1;
  }

  v6 = *v5;
  if (*v5 < 1)
  {
    return 1;
  }

  v7 = 2;
  while (1)
  {
    v8 = [(EDFormula *)self->mFormula extendedDataForTokenAtIndex:v3 extendedDataIndex:v7 length:&v10];
    if (v8)
    {
      if (*v8 == 16)
      {
        break;
      }
    }

    v7 = (v7 + 1);
    if (!--v6)
    {
      return 1;
    }
  }

  [(EPFormulaCleaner *)self reportWarning:6];
  return 0;
}

- (BOOL)cleanRef:(unsigned int)ref updateSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  *v10 = 0;
  *v9 = 0;
  v8 = 0;
  extractDataFromPtgRefBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&ref length:&v8], &v10[1], &v9[1], v10, v9);
  v6 = [(EPFormulaCleaner *)self isReferenceValidInLassoForRow:v10[1] rowRelative:v9[1] column:v10[0] columnRelative:v9[0]];
  if (v6 && sheetCopy)
  {
    [(EPFormulaCleaner *)self updateSheet:self->mCurrentSheet row:v10[1] rowRelative:v9[1] column:v10[0] columnRelative:v9[0]];
  }

  return v6;
}

- (BOOL)cleanArea:(unsigned int)area updateSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  v17 = 0;
  v16 = 0;
  *v15 = 0;
  *v14 = 0;
  *v13 = 0;
  v12 = 0;
  extractDataFromPtgAreaBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&area length:&v12], &v17, &v14[1], &v16, v14, &v15[1], &v13[1], v15, v13);
  LOBYTE(v10) = v13[0];
  HIDWORD(v8) = v15[0];
  LOBYTE(v8) = v13[1];
  v6 = [(EPFormulaCleaner *)self isReferenceValidInLassoForSheet:self->mCurrentSheet rowMin:v17 rowMinRelative:v14[1] rowMax:v16 rowMaxRelative:v14[0] columnMin:v15[1] columnMinRelative:v8 columnMax:v10 columnMaxRelative:?];
  if (v6 && sheetCopy)
  {
    LOBYTE(v11) = v13[0];
    HIDWORD(v9) = v15[0];
    LOBYTE(v9) = v13[1];
    [(EPFormulaCleaner *)self updateSheet:self->mCurrentSheet rowMin:v17 rowMinRelative:v14[1] rowMax:v16 rowMaxRelative:v14[0] columnMin:v15[1] columnMinRelative:v9 columnMax:v11 columnMaxRelative:?];
  }

  return v6;
}

- (BOOL)cleanRef3D:(unsigned int)d
{
  *v14 = 0;
  v13 = 0;
  *v12 = 0;
  v11 = 0;
  extractDataFromPtgRef3DBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&d length:&v11], &v14[1], v14, &v12[1], &v13, v12);
  v4 = [(EPFormulaCleaner *)self isLinkReferenceIndexSupported:v14[1] allowExternal:0];
  if (v4)
  {
    v4 = [(EPFormulaCleaner *)self isReferenceValidInLassoForRow:v14[0] rowRelative:v12[1] column:v13 columnRelative:v12[0]];
    if (v4)
    {
      v5 = [(EPFormulaCleaner *)self worksheetsFromLinkReferenceIndex:v14[1]];
      v6 = v5;
      if (v5)
      {
        if ([v5 count])
        {
          v7 = [v6 count];
          if (v7)
          {
            v8 = 0;
            do
            {
              v9 = [v6 objectAtIndex:v8];
              [(EPFormulaCleaner *)self updateSheet:v9 row:v14[0] rowRelative:v12[1] column:v13 columnRelative:v12[0]];

              ++v8;
            }

            while (v7 != v8);
          }
        }
      }

      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (BOOL)cleanArea3D:(unsigned int)d
{
  *v19 = 0;
  *v20 = 0;
  v18 = 0;
  *v17 = 0;
  *v16 = 0;
  v15 = 0;
  extractDataFromPtgArea3DBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&d length:&v15], &v20[1], v20, &v17[1], &v19[1], v17, v19, &v16[1], &v18, v16);
  v4 = 0;
  if ([(EPFormulaCleaner *)self isLinkReferenceIndexSupported:v20[1] allowExternal:0])
  {
    v5 = [(EPFormulaCleaner *)self worksheetsFromLinkReferenceIndex:v20[1]];
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = [v6 count];
      if (!v7)
      {
LABEL_8:
        v4 = 1;
LABEL_11:

        return v4;
      }

      v8 = 0;
      while (1)
      {
        v9 = [v6 objectAtIndex:v8];
        LOBYTE(v13) = v16[0];
        HIDWORD(v11) = v18;
        LOBYTE(v11) = v16[1];
        if (![(EPFormulaCleaner *)self isReferenceValidInLassoForSheet:v9 rowMin:v20[0] rowMinRelative:v17[1] rowMax:v19[1] rowMaxRelative:v17[0] columnMin:v19[0] columnMinRelative:v11 columnMax:v13 columnMaxRelative:?])
        {
          break;
        }

        LOBYTE(v14) = v16[0];
        HIDWORD(v12) = v18;
        LOBYTE(v12) = v16[1];
        [(EPFormulaCleaner *)self updateSheet:v9 rowMin:v20[0] rowMinRelative:v17[1] rowMax:v19[1] rowMaxRelative:v17[0] columnMin:v19[0] columnMinRelative:v12 columnMax:v14 columnMaxRelative:?];

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }
    }

    v4 = 0;
    goto LABEL_11;
  }

  return v4;
}

- (BOOL)cleanName:(unsigned int)name tokenOffset:(int *)offset
{
  v5 = *&name;
  v11 = 0;
  v7 = *[(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&name length:&v11];
  WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
  v9 = [WeakRetained indexOfSheet:self->mCurrentSheet];

  return [(EPFormulaCleaner *)self cleanName:v5 nameIndex:v7 sheetIndex:v9 tokenOffset:offset];
}

- (BOOL)cleanNameX:(unsigned int)x tokenOffset:(int *)offset
{
  v5 = *&x;
  v21 = 0;
  v7 = [(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&x length:&v21];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = 0;
  if ([(EPFormulaCleaner *)self isLinkReferenceIndexSupported:v8 allowExternal:1])
  {
    WeakRetained = objc_loadWeakRetained(&self->super.mResources);
    links = [WeakRetained links];

    v13 = [links referenceAtIndex:v8];
    v14 = [links linkAtIndex:{objc_msgSend(v13, "linkIndex")}];
    type = [v14 type];
    v16 = type;
    if (type == 1)
    {
      v10 = -[EPFormulaCleaner cleanName:nameIndex:sheetIndex:tokenOffset:](self, "cleanName:nameIndex:sheetIndex:tokenOffset:", v5, v9, [v13 firstSheetIndex], offset);
    }

    else if ((type & 0xFFFFFFFE) == 2)
    {
      externalNames = [v14 externalNames];
      if ([externalNames count] <= v9)
      {
        [(EPFormulaCleaner *)self reportWarning:5];
        v10 = 0;
      }

      else
      {
        v18 = [externalNames objectAtIndex:v9];
        string = [v18 string];
        v10 = [(EPFormulaCleaner *)self checkSupportedAddInName:string externalLink:v16 == 2];
      }
    }

    else
    {
      [(EPFormulaCleaner *)self reportWarning:5];
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)cleanUnion:(unsigned int)union
{
  if (union >= 2)
  {
    v6 = *&union;
    v7 = 0;
    v8 = 0;
    v4 = 0;
    v9 = 0;
    for (i = 1; ; i = 0)
    {
      v11 = i;
      v12 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:v4 tokenIndex:v6];
      if (v12 == -1)
      {
        goto LABEL_2;
      }

      v13 = v12;
      v14 = [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:v12];
      v15 = v14;
      v16 = v14 - 16;
      if ((v14 - 16) > 0x3D)
      {
        goto LABEL_10;
      }

      if (((1 << v16) & 0x3030000030300000) != 0)
      {
        goto LABEL_16;
      }

      if (((1 << v16) & 0xC0000000000) == 0)
      {
        break;
      }

LABEL_13:
      if (v8)
      {
        goto LABEL_2;
      }

      *v24 = 0;
      *v25 = 0;
      v23 = 0;
      *v22 = 0;
      *v21 = 0;
      v20 = 0;
      v18 = [(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:v13 length:&v20];
      if (v15 == 58)
      {
        extractDataFromPtgRef3DBuffer(v18, &v25[1], v25, &v22[1], v24, &v21[1]);
      }

      else
      {
        extractDataFromPtgArea3DBuffer(v18, &v25[1], v25, &v22[1], &v24[1], v22, v24, &v21[1], &v23, v21);
      }

      v19 = v25[1];
      if (v7)
      {
        v19 = v9;
        if (v9 != v25[1])
        {
          goto LABEL_2;
        }
      }

      v8 = 0;
      v7 = 1;
      v9 = v19;
LABEL_22:
      v4 = 1;
      if ((v11 & 1) == 0)
      {
        return v4;
      }
    }

    if (v14 == 16)
    {
      goto LABEL_22;
    }

LABEL_10:
    v17 = v14 - 90;
    if ((v14 - 90) > 0x21)
    {
      goto LABEL_2;
    }

    if (((1 << v17) & 0xC0C00) != 0)
    {
LABEL_16:
      if (v7)
      {
        goto LABEL_2;
      }

      v7 = 0;
      v8 = 1;
      goto LABEL_22;
    }

    if (((1 << v17) & 0x300000003) == 0)
    {
      goto LABEL_2;
    }

    goto LABEL_13;
  }

LABEL_2:
  [(EPFormulaCleaner *)self reportWarning:1];
  LOBYTE(v4) = 0;
  return v4;
}

- (BOOL)cleanRange:(unsigned int)range tokenOffset:(int *)offset
{
  *offset = 0;
  if (range >= 2)
  {
    v8 = *&range;
    v5 = 0;
LABEL_6:
    for (i = v5; ; i = 1)
    {
      v10 = i;
      v11 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:i tokenIndex:v8];
      if (v11 == -1)
      {
        break;
      }

      v12 = v11;
      v13 = [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:v11];
      v14 = v13 - 17;
      if ((v13 - 17) > 0x3C)
      {
        goto LABEL_14;
      }

      if (((1 << v14) & 0x1818000018180000) == 0)
      {
        if (v13 != 17)
        {
          if (((1 << v14) & 0x3000000030000) != 0)
          {
            goto LABEL_19;
          }

LABEL_14:
          if ((v13 - 97) > 0xC)
          {
            break;
          }

          v15 = 1 << (v13 - 97);
          if ((v15 & 0x1818) == 0)
          {
            if ((v15 & 3) == 0)
            {
              break;
            }

LABEL_19:
            v5 = 1;
            if (!v10)
            {
              goto LABEL_6;
            }

            return v5;
          }

          goto LABEL_16;
        }

        if (![(EPFormulaCleaner *)self combineCellReferences:v12 tokenOffset:offset])
        {
          goto LABEL_3;
        }
      }

LABEL_16:
      if (v10)
      {
        if (v5)
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v16 = (*offset + v8);

        return [(EPFormulaCleaner *)self combineCellReferences:v16 tokenOffset:offset];
      }
    }
  }

  [(EPFormulaCleaner *)self reportWarning:1];
LABEL_3:
  LOBYTE(v5) = 0;
  return v5;
}

- (BOOL)combineCellReferences:(unsigned int)references tokenOffset:(int *)offset
{
  if (references < 2)
  {
    goto LABEL_37;
  }

  v6 = *&references;
  if ([(EDFormula *)self->mTokensToClean tokenCount]<= references)
  {
    goto LABEL_37;
  }

  v7 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:0 tokenIndex:v6];
  v8 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:1 tokenIndex:v6];
  if (v7 == -1)
  {
    goto LABEL_37;
  }

  v9 = v8;
  if (v8 == -1)
  {
    goto LABEL_37;
  }

  v10 = [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:v7];
  v11 = [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:v9];
  v12 = 0;
  v13 = 1;
  if (v10 <= 99)
  {
    v14 = v10 - 36;
    if ((v10 - 36) <= 0x29)
    {
      if (((1 << v14) & 0x10200000202) == 0)
      {
        if (((1 << v14) & 0x20100000101) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      goto LABEL_16;
    }

LABEL_13:
    v12 = 0;
    v13 = 0;
    goto LABEL_17;
  }

  if (v10 > 107)
  {
    if (v10 == 108)
    {
      goto LABEL_17;
    }

    if (v10 != 109)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v10 == 100)
    {
      goto LABEL_17;
    }

    if (v10 != 101)
    {
      goto LABEL_13;
    }
  }

LABEL_16:
  v13 = 0;
  v12 = 1;
LABEL_17:
  v15 = 0;
  v16 = 1;
  if (v11 > 99)
  {
    if (v11 > 107)
    {
      if (v11 == 108)
      {
        goto LABEL_29;
      }

      if (v11 != 109)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v11 == 100)
      {
        goto LABEL_29;
      }

      if (v11 != 101)
      {
LABEL_25:
        v15 = 0;
        v16 = 0;
        goto LABEL_29;
      }
    }

LABEL_28:
    v16 = 0;
    v15 = 1;
    goto LABEL_29;
  }

  v17 = v11 - 36;
  if ((v11 - 36) > 0x29)
  {
    goto LABEL_25;
  }

  if (((1 << v17) & 0x10200000202) != 0)
  {
    goto LABEL_28;
  }

  if (((1 << v17) & 0x20100000101) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  if (v12 | v13) == 1 && ((v15 | v16))
  {
    if ((v13 & v15) != 0)
    {
      v18 = v9;
    }

    else
    {
      v18 = v7;
    }

    v35 = v18;
    v36 = +[EDFormula formula];
    v19 = [v36 addToken:37 extendedDataLength:8];
    if (!v19)
    {
      goto LABEL_52;
    }

    v33 = v19;
    v44 = -1;
    v45 = 0;
    v42 = -1;
    v43 = -1;
    v40 = -1;
    v41 = -1;
    v38 = -1;
    v39 = -1;
    v37 = -1;
    mTokensToClean = self->mTokensToClean;
    if (v13)
    {
      extractDataFromPtgRefBuffer([(EDFormula *)mTokensToClean lastExtendedDataForTokenAtIndex:v7 length:&v45], &v44, &v43);
      v21 = v43 & 0xC000;
      v22 = v43;
      v42 = v44;
      v43 = v43;
      v34 = v21;
    }

    else
    {
      extractDataFromPtgAreaBuffer([(EDFormula *)mTokensToClean lastExtendedDataForTokenAtIndex:v7 length:&v45], &v44, &v42, &v43, &v41);
      v21 = v43 & 0xC000;
      v34 = v41 & 0xC000;
      v43 = v43;
      v22 = v41;
    }

    v41 = v22;
    v25 = self->mTokensToClean;
    if (v16)
    {
      extractDataFromPtgRefBuffer([(EDFormula *)v25 lastExtendedDataForTokenAtIndex:v9 length:&v45], &v40, &v39);
      if ((v39 & 0xC000) == v21)
      {
        v26 = v40;
        v27 = v39;
        v38 = v40;
        v39 = v27;
        v28 = v40;
        v29 = v27;
LABEL_51:
        v46.origin.x = v43;
        v46.origin.y = v44;
        v46.size.width = (v41 - v43 + 1);
        v37 = v29;
        v46.size.height = (v42 - v44 + 1);
        v48.origin.x = v27;
        v48.origin.y = v28;
        v48.size.width = (v29 - v27 + 1);
        v48.size.height = (v26 - v28 + 1);
        v47 = CGRectUnion(v46, v48);
        *v33 = v47.origin.y;
        v33[1] = (v47.origin.y + v47.size.height + -1.0);
        v33[2] = v21 | v47.origin.x;
        v33[3] = v34 | (v47.origin.x + v47.size.width + -1.0);
LABEL_52:
        if ([(EDFormula *)self->mTokensToClean replaceTokenAtIndex:v35 withFormula:v36 formulaTokenIndex:0, v33])
        {
          [(EDFormula *)self->mTokensToClean removeTokenAtIndex:v6];
          if (v35 == v7)
          {
            v32 = v9;
          }

          else
          {
            v32 = v7;
          }

          [(EDFormula *)self->mTokensToClean removeTokenAtIndex:v32];
          *offset -= 2;
          v23 = 1;
          goto LABEL_59;
        }

        [(EPFormulaCleaner *)self reportWarning:1];
LABEL_58:
        v23 = 0;
LABEL_59:

        return v23;
      }
    }

    else
    {
      extractDataFromPtgAreaBuffer([(EDFormula *)v25 lastExtendedDataForTokenAtIndex:v9 length:&v45], &v40, &v38, &v39, &v37);
      if ((v39 & 0xC000) == v21)
      {
        v30 = v12 ^ 1;
        if ((v37 & 0xC000) == v34)
        {
          v30 = 1;
        }

        if (v30)
        {
          v31 = v34;
          if (v13)
          {
            v31 = v37 & 0xC000;
          }

          v34 = v31;
          v27 = v39;
          v39 = v39;
          v29 = v37;
          v28 = v40;
          v26 = v38;
          goto LABEL_51;
        }
      }
    }

    [(EPFormulaCleaner *)self reportWarning:1, v33];
    goto LABEL_58;
  }

LABEL_37:
  [(EPFormulaCleaner *)self reportWarning:1];
  return 0;
}

- (BOOL)isLinkReferenceIndexSupported:(unsigned int)supported allowExternal:(BOOL)external
{
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  links = [WeakRetained links];

  v9 = [links referenceAtIndex:supported];
  v10 = v9;
  if (v9)
  {
    v11 = [links linkAtIndex:{objc_msgSend(v9, "linkIndex")}];
    type = [v11 type];
    v13 = type == 2 && external;
    if ((type & 0xFFFFFFFD) == 1 || v13)
    {
      firstSheetIndex = [v10 firstSheetIndex];
      lastSheetIndex = [v10 lastSheetIndex];
      v17 = lastSheetIndex;
      if (firstSheetIndex != -1 && lastSheetIndex != -1)
      {
        if ([v10 isWorkbookLevelReference])
        {
          v14 = 1;
LABEL_24:

          goto LABEL_25;
        }

        v19 = objc_loadWeakRetained(&self->super.mWorkbook);
        mappingContext = [v19 mappingContext];
        mappingInfoCount = [mappingContext mappingInfoCount];

        if (type != 1 || firstSheetIndex <= mappingInfoCount)
        {
          v14 = 1;
          if (type != 1 || firstSheetIndex == v17 || v17 <= mappingInfoCount)
          {
            goto LABEL_24;
          }
        }
      }

      [(EPFormulaCleaner *)self reportWarning:6];
    }

    else
    {
      [(EPFormulaCleaner *)self reportWarning:5];
    }

    v14 = 0;
    goto LABEL_24;
  }

  [(EPFormulaCleaner *)self reportWarning:5];
  v14 = 0;
LABEL_25:

  return v14;
}

- (id)worksheetFromLinkReferenceIndex:(unsigned int)index
{
  v12 = -1;
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  links = [WeakRetained links];
  [links convertLinkReferenceIndex:index firstSheetIndex:&v12 lastSheetIndex:&v11];

  v7 = objc_loadWeakRetained(&self->super.mWorkbook);
  v8 = [v7 sheetAtIndex:v12 loadIfNeeded:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)worksheetsFromLinkReferenceIndex:(unsigned int)index
{
  array = [MEMORY[0x277CBEB18] array];
  v13 = -1;
  v14 = -1;
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  links = [WeakRetained links];
  [links convertLinkReferenceIndex:index firstSheetIndex:&v14 lastSheetIndex:&v13];

  v8 = v14;
  if (v14 > v13)
  {
LABEL_4:
    v11 = array;
  }

  else
  {
    while (1)
    {
      v9 = objc_loadWeakRetained(&self->super.mWorkbook);
      v10 = [v9 sheetAtIndex:v14 loadIfNeeded:1];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [array addObject:v10];

      if (++v8 > v13)
      {
        goto LABEL_4;
      }
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)cleanName:(unsigned int)name nameIndex:(unsigned int)index sheetIndex:(unint64_t)sheetIndex tokenOffset:(int *)offset
{
  v7 = *&index;
  v8 = *&name;
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  names = [WeakRetained names];
  v12 = [names objectAtIndex:v7];

  sheetIndex = [v12 sheetIndex];
  if (sheetIndex != sheetIndex && sheetIndex != 0)
  {
    nameString = [v12 nameString];
    string = [nameString string];
    [(EPFormulaCleaner *)self reportWarning:8 parameter:string];
LABEL_29:

    goto LABEL_30;
  }

  nameString = [v12 formula];
  if ([v12 isInternalFunction] && !objc_msgSend(nameString, "tokenCount"))
  {
LABEL_35:
    v30 = 1;
    goto LABEL_31;
  }

  mNameArrayedTestCache = self->mNameArrayedTestCache;
  if (!mNameArrayedTestCache)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = self->mNameArrayedTestCache;
    self->mNameArrayedTestCache = v16;

    mNameArrayedTestCache = self->mNameArrayedTestCache;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v7 + 1)];
  v19 = [(NSMutableDictionary *)mNameArrayedTestCache objectForKey:v18];
  unsignedLongValue = [v19 unsignedLongValue];

  if (unsignedLongValue)
  {
    v21 = (unsignedLongValue - 1);
    if (unsignedLongValue != 1)
    {
LABEL_12:
      string = [v12 nameString];
      v24String = [string string];
      [(EPFormulaCleaner *)self reportWarning:v21 parameter:v24String];
LABEL_28:

      goto LABEL_29;
    }
  }

  else
  {
    if (nameString && [nameString isSupportedFormula] && (objc_msgSend(nameString, "isContainsRelativeReferences") & 1) == 0 && objc_msgSend(nameString, "tokenTypeAtIndex:", 0))
    {
      if ([nameString tokenCount] < 2)
      {
        v21 = 0;
      }

      else
      {
        v25 = [MEMORY[0x277CBEB58] set];
        v26 = [(EPFormulaCleaner *)self isArrayedFormulaSupported:nameString allowSimpleRanges:1 formulasBeingEvaluated:v25];

        if (v26)
        {
          v21 = 0;
        }

        else
        {
          v21 = 9;
        }
      }
    }

    else
    {
      v21 = 9;
    }

    v27 = self->mNameArrayedTestCache;
    v28 = [MEMORY[0x277CCABB0] numberWithInt:(v21 + 1)];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v7 + 1)];
    [(NSMutableDictionary *)v27 setObject:v28 forKey:v29];

    if (v21)
    {
      goto LABEL_12;
    }
  }

  if ([(EPFormulaCleaner *)self doesNameIndexContainCircularReferences:v7 sheetIndex:sheetIndex previousNameIndexes:0]|| ![(EDFormula *)self->mTokensToClean replaceTokenAtIndex:v8 withFormula:nameString])
  {
    string = [v12 nameString];
    v24String = [string string];
    [(EPFormulaCleaner *)self reportWarning:9 parameter:v24String];
    goto LABEL_28;
  }

  if ([(EDFormula *)self->mTokensToClean tokenCount]< 0x7D1)
  {
    if (*offset >= 1)
    {
      --*offset;
    }

    [(EPFormulaCleaner *)self applyMaxCellsInName:v12];
    -[EDFormula updateContainsRelativeReferences:](self->mFormula, "updateContainsRelativeReferences:", [nameString isContainsRelativeReferences]);
    -[EDFormula updateCleanedWithEvaluationStack:](self->mFormula, "updateCleanedWithEvaluationStack:", [nameString isCleanedWithEvaluationStack]);
    goto LABEL_35;
  }

  [(EPFormulaCleaner *)self reportWarning:10];
LABEL_30:
  v30 = 0;
LABEL_31:

  return v30;
}

- (BOOL)checkCustomFunction:(unsigned int)function
{
  v3 = *&function;
  v5 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:0 tokenIndex:*&function];
  if (v5 == -1)
  {
    return 1;
  }

  v6 = v5;
  v7 = [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:v5];
  if (v7 != 57 && v7 != 121 && v7 != 89)
  {
    return 1;
  }

  v22 = 0;
  v8 = [(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:v6 length:&v22];
  v9 = *v8;
  v10 = *(v8 + 1);
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  links = [WeakRetained links];

  v13 = [links referenceAtIndex:v9];
  v14 = [links linkAtIndex:{objc_msgSend(v13, "linkIndex")}];
  v15 = v14;
  if (v14 && ([v14 type] == 3 || objc_msgSend(v15, "type") == 2))
  {
    externalNames = [v15 externalNames];
    if ([externalNames count] <= v10)
    {
      v20 = 1;
    }

    else
    {
      v17 = [externalNames objectAtIndex:v10];
      string = [v17 string];
      uppercaseString = [string uppercaseString];

      if ([uppercaseString isEqualToString:@"CONVERT"] && (-[EDFormula updateCleanedWithEvaluationStack:](self->mTokensToClean, "updateCleanedWithEvaluationStack:", 1), !-[EPFormulaCleaner useEvaluationStackToCheckFunctionId:functionName:tokenIndex:](self, "useEvaluationStackToCheckFunctionId:functionName:tokenIndex:", 255, uppercaseString, v3)))
      {
        [(EPFormulaCleaner *)self reportWarning:11 parameter:uppercaseString];
        v20 = 0;
      }

      else
      {
        v20 = 1;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (void)updateWorksheet:(id)worksheet row:(int)row column:(int)column inDictionary:(id)dictionary
{
  v7 = *&column;
  v8 = *&row;
  worksheetCopy = worksheet;
  dictionaryCopy = dictionary;
  v10 = [dictionaryCopy objectForKey:worksheetCopy];
  if (!v10)
  {
    v10 = +[EDReference reference];
    [dictionaryCopy setObject:v10 forUncopiedKey:worksheetCopy];
  }

  [v10 unionWithRow:v8 column:v7];
}

- (void)applyMaxCellsInName:(id)name
{
  maxWorksheetReferences = [name maxWorksheetReferences];
  allKeys = [maxWorksheetReferences allKeys];
  v4 = [allKeys count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [allKeys objectAtIndex:i];
      v7 = v6;
      if (v6)
      {
        maxCellReferencedInFormulas = [v6 maxCellReferencedInFormulas];
        v9 = [maxWorksheetReferences objectForKey:v7];
        [maxCellReferencedInFormulas unionWithReference:v9];
      }
    }
  }

  [maxWorksheetReferences removeAllObjects];
}

- (BOOL)useEvaluationStackToCheckFunctionId:(int)id functionName:(id)name tokenIndex:(unsigned int)index
{
  v5 = *&index;
  nameCopy = name;
  v9 = nameCopy;
  v10 = 0;
  v11 = 1;
  v26 = 1;
  if (id <= 147)
  {
    if ((id - 76) >= 2)
    {
      if (id == 111)
      {
        v10 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:0 tokenIndex:v5 allReferencesAllowed:0 success:&v26];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 intValue] < 127;
          goto LABEL_58;
        }
      }

      else
      {
        if (id != 121)
        {
          goto LABEL_58;
        }

        v10 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:0 tokenIndex:v5 allReferencesAllowed:0 success:&v26];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v10;
          if ([v10 length])
          {
            v12 = [MEMORY[0x277CCA900] characterSetWithRange:{0, 127}];
            v13 = [v10 rangeOfCharacterFromSet:v12];
            v15 = v14;

            if (v13)
            {
              v11 = 0;
            }

            else
            {
              v11 = v15 == [v10 length];
            }

            goto LABEL_58;
          }

          goto LABEL_47;
        }
      }

LABEL_57:
      v11 = v26;
      goto LABEL_58;
    }

    goto LABEL_21;
  }

  if (id > 254)
  {
    if (id != 255)
    {
      if (id != 347)
      {
        goto LABEL_58;
      }

LABEL_21:
      v10 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:0 tokenIndex:v5 allReferencesAllowed:1 success:&v26];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_57;
      }

      v10 = v10;
      if (!isRowReference([v10 firstColumn], objc_msgSend(v10, "lastColumn")) && !isColumnReference(objc_msgSend(v10, "firstRow"), objc_msgSend(v10, "lastRow")))
      {
LABEL_47:
        v17 = v10;
LABEL_48:

LABEL_49:
        v10 = v17;
        goto LABEL_57;
      }

LABEL_44:
      v11 = 0;
      goto LABEL_58;
    }

    if (![nameCopy isEqualToString:@"CONVERT"])
    {
      v10 = 0;
      goto LABEL_57;
    }

    v25 = 0;
    v24 = 0;
    v10 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:2 tokenIndex:v5 allReferencesAllowed:0 success:&v25];
    v19 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:3 tokenIndex:v5 allReferencesAllowed:0 success:&v24];
    v26 = v25 & v24;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v10 isEqualToString:@"Pica"] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v19 isEqualToString:@"Pica"] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v10 isEqualToString:@"p"] & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v19 isEqualToString:@"p"] & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v10 isEqualToString:@"at"] & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ([v19 isEqualToString:@"at"] & 1) == 0)
              {

                v17 = 0;
                goto LABEL_48;
              }
            }
          }
        }
      }
    }

LABEL_43:
    v10 = 0;
    goto LABEL_44;
  }

  if (id != 148)
  {
    if (id != 219)
    {
      goto LABEL_58;
    }

    v16 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:4 tokenIndex:v5];
    if (v16 == -1 || [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:v16]== 22)
    {
      v10 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:3 tokenIndex:v5 allReferencesAllowed:0 success:&v26];
      objc_opt_class();
      if (((objc_opt_isKindOfClass() & 1) == 0 || [v10 BOOLValue]) && v26 == 1)
      {
        v17 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:2 tokenIndex:v5 allReferencesAllowed:0 success:&v26];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v17 intValue] < 5;
          v10 = v17;
          goto LABEL_58;
        }

        goto LABEL_49;
      }

      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v18 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameterTokenType:0 tokenIndex:v5 success:&v26];
  v10 = 0;
  if (v18 <= 35)
  {
    v11 = 0;
    if (v18 == 8 || v18 == 23)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (v18 != 36 && v18 != 68)
  {
    goto LABEL_57;
  }

  v23 = 1;
  v20 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:0 tokenIndex:v5 allReferencesAllowed:0 success:&v23];
  v21 = v20;
  v11 = v23;
  if (v23 == 1 && v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v21 rangeOfString:@"!"] == 0x7FFFFFFFFFFFFFFFLL;
      v23 = v11;
    }

    else
    {
      v11 = v23;
    }
  }

  v10 = 0;
LABEL_58:

  return v11;
}

- (int)useEvaluationStackToGetParameterTokenType:(unsigned int)type tokenIndex:(unsigned int)index success:(BOOL *)success
{
  *success = 1;
  v7 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:*&type tokenIndex:*&index];
  if (v7 == -1)
  {
    *success = 0;
    return 0;
  }

  else
  {
    v8 = v7;
    mTokensToClean = self->mTokensToClean;

    return [(EDFormula *)mTokensToClean tokenTypeAtIndex:v8];
  }
}

- (unsigned)useEvaluationStackToGetParameter:(unsigned int)parameter tokenIndex:(unsigned int)index
{
  v5 = [EDTokenTree buildSubtree:*&index formula:self->mTokensToClean];
  firstChild = [v5 firstChild];

  if (firstChild)
  {
    v7 = parameter + 1;
    v8 = firstChild;
    while (--v7)
    {
      sibling = [v8 sibling];

      v8 = sibling;
      if (!sibling)
      {
        goto LABEL_7;
      }
    }

    tokenIndex = [v8 tokenIndex];
  }

  else
  {
    v8 = 0;
LABEL_7:
    tokenIndex = -1;
  }

  return tokenIndex;
}

- (id)useEvaluationStackToGetParameter:(unsigned int)parameter tokenIndex:(unsigned int)index allReferencesAllowed:(BOOL)allowed success:(BOOL *)success
{
  *success = 1;
  v9 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:*&parameter tokenIndex:*&index];
  if (v9 == -1 || (v10 = v9, [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:v9]== 22))
  {
LABEL_3:
    string = 0;
    goto LABEL_6;
  }

  v35 = 0;
  v12 = [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:v10];
  string = 0;
  switch(v12)
  {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 33:
    case 34:
    case 65:
    case 66:
    case 97:
    case 98:
      goto LABEL_5;
    case 22:
    case 24:
    case 26:
    case 27:
    case 28:
    case 32:
    case 35:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 67:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 99:
      goto LABEL_6;
    case 23:
      OcTextFromPtgStrBuffer = extractOcTextFromPtgStrBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:v10 length:&v35]);
      string = [MEMORY[0x277CCACA8] stringWithOcText:OcTextFromPtgStrBuffer];
      if (OcTextFromPtgStrBuffer)
      {
        (*(*OcTextFromPtgStrBuffer + 8))(OcTextFromPtgStrBuffer);
      }

      goto LABEL_6;
    case 25:
      if ((*[(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:v10 length:&v35]& 0x10) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_5;
    case 29:
      v20 = [MEMORY[0x277CCABB0] numberWithBool:{*-[EDFormula lastExtendedDataForTokenAtIndex:length:](self->mTokensToClean, "lastExtendedDataForTokenAtIndex:length:", v10, &v35) != 0}];
      goto LABEL_30;
    case 30:
      v20 = [MEMORY[0x277CCABB0] numberWithInt:{*-[EDFormula lastExtendedDataForTokenAtIndex:length:](self->mTokensToClean, "lastExtendedDataForTokenAtIndex:length:", v10, &v35)}];
      goto LABEL_30;
    case 31:
      v23 = [(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:v10 length:&v35];
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:*v23];
      goto LABEL_30;
    case 36:
    case 68:
    case 100:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_5;
      }

      *&v33[4] = 0;
      v34 = 0;
      v33[0] = 0;
      v32[0] = 0;
      extractDataFromPtgRefBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:v10 length:&v35], &v34, v33, &v33[4], v32);
      [(EPFormulaCleaner *)self addOffsetsToRow:&v34 rowRelative:v33[0] column:&v33[4] columnRelative:v32[0]];
      rowBlocks = [(EDSheet *)self->mCurrentSheet rowBlocks];
      v19 = [rowBlocks cellWithRowNumber:v34 columnNumber:*&v33[4]];
      goto LABEL_19;
    case 37:
    case 69:
    case 101:
      if (!allowed)
      {
        goto LABEL_5;
      }

      v34 = 0;
      *v33 = 0;
      *v32 = 0;
      v29[0] = 0;
      *v31 = 0;
      v30 = 0;
      extractDataFromPtgAreaBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:v10 length:&v35], &v34, v29, &v33[4], &v31[1], v33, v31, v32, &v30);
      [(EPFormulaCleaner *)self addOffsetsToRow:&v34 rowRelative:v29[0] column:v33 columnRelative:v31[0]];
      [(EPFormulaCleaner *)self addOffsetsToRow:&v33[4] rowRelative:v31[1] column:v32 columnRelative:v30];
      v15 = *&v33[4];
      v14 = v34;
      v17 = *v32;
      v16 = *v33;
      goto LABEL_17;
    case 58:
    case 90:
      goto LABEL_18;
    case 59:
    case 91:
      goto LABEL_15;
    default:
      if (v12 == 122)
      {
LABEL_18:
        v34 = 0;
        *v33 = 0;
        v32[0] = 0;
        v29[0] = 0;
        extractDataFromPtgRef3DBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:v10 length:&v35], &v34, &v33[4], v32, v33, v29);
        [(EPFormulaCleaner *)self addOffsetsToRow:&v33[4] rowRelative:v32[0] column:v33 columnRelative:v29[0]];
        v21 = [(EPFormulaCleaner *)self worksheetFromLinkReferenceIndex:v34];
        rowBlocks = [v21 rowBlocks];
        v19 = [rowBlocks cellWithRowNumber:*&v33[4] columnNumber:*v33];

LABEL_19:
        string = 0;
        if (!v19 || allowed)
        {
          goto LABEL_38;
        }

        if (formulaIndexForEDCell(v19) != -1)
        {
          goto LABEL_22;
        }

        v24 = typeForEDCell(v19);
        switch(v24)
        {
          case 3u:
            WeakRetained = objc_loadWeakRetained(&self->super.mResources);
            v27 = stringValueForEDCell(v19, WeakRetained);
            string = [v27 string];

            goto LABEL_38;
          case 2u:
            v25 = [MEMORY[0x277CCABB0] numberWithDouble:numberValueForEDCell(v19)];
            break;
          case 1u:
            v25 = [MEMORY[0x277CCABB0] numberWithBool:BOOLValueForEDCell(v19)];
            break;
          default:
LABEL_22:
            string = 0;
            *success = 0;
LABEL_38:
            [rowBlocks unlock];

            goto LABEL_6;
        }

        string = v25;
        goto LABEL_38;
      }

      if (v12 == 123)
      {
LABEL_15:
        if (allowed)
        {
          v34 = 0;
          *v33 = 0;
          *v32 = 0;
          *v29 = 0;
          *v31 = 0;
          v30 = 0;
          v28 = 0;
          extractDataFromPtgArea3DBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:v10 length:&v35], &v34, &v33[4], &v31[1], v33, v31, v32, &v30, v29, &v28);
          [(EPFormulaCleaner *)self addOffsetsToRow:&v33[4] rowRelative:v31[1] column:v32 columnRelative:v30];
          [(EPFormulaCleaner *)self addOffsetsToRow:v33 rowRelative:v31[0] column:v29 columnRelative:v28];
          v15 = *v33;
          v14 = *&v33[4];
          v16 = *v32;
          v17 = *v29;
LABEL_17:
          v20 = [EDReference referenceWithFirstRow:v14 lastRow:v15 firstColumn:v16 lastColumn:v17];
LABEL_30:
          string = v20;
        }

        else
        {
LABEL_5:
          string = 0;
          *success = 0;
        }
      }

LABEL_6:

      return string;
  }
}

- (BOOL)isArrayedFormulaSupported:(id)supported allowSimpleRanges:(BOOL)ranges formulasBeingEvaluated:(id)evaluated
{
  rangesCopy = ranges;
  supportedCopy = supported;
  evaluatedCopy = evaluated;
  if (([evaluatedCopy containsObject:supportedCopy] & 1) == 0)
  {
    if (!supportedCopy)
    {
      v10 = 1;
      goto LABEL_46;
    }

    [evaluatedCopy addObject:supportedCopy];
    v32 = evaluatedCopy;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      tokenCount = [supportedCopy tokenCount];
      if (v11 >= tokenCount)
      {
LABEL_45:
        v10 = (v11 >= tokenCount) & (v12 & v13 ^ 1);
        evaluatedCopy = v32;
        goto LABEL_46;
      }

      v15 = [supportedCopy tokenTypeAtIndex:v11];
      v16 = v15;
      v17 = 0;
      if (v15 <= 96)
      {
        switch(v15)
        {
          case 1:
          case 2:
          case 46:
          case 47:
          case 57:
          case 78:
          case 79:
            goto LABEL_45;
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
            v12 = 1;
            goto LABEL_42;
          case 15:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
          case 28:
          case 29:
          case 30:
          case 31:
          case 32:
          case 36:
          case 38:
          case 39:
          case 40:
          case 41:
          case 42:
          case 43:
          case 44:
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 58:
          case 60:
          case 61:
          case 62:
          case 63:
          case 64:
          case 68:
          case 70:
          case 71:
          case 72:
          case 73:
          case 74:
          case 75:
          case 76:
            goto LABEL_42;
          case 16:
          case 17:
            if (!rangesCopy)
            {
              goto LABEL_45;
            }

            v13 = 1;
            break;
          case 33:
          case 65:
            goto LABEL_37;
          case 34:
          case 66:
            goto LABEL_36;
          case 35:
          case 67:
            goto LABEL_28;
          case 37:
          case 45:
          case 59:
          case 69:
          case 77:
            goto LABEL_11;
          default:
            if (v15 == 91)
            {
              goto LABEL_11;
            }

            if (v15 == 89)
            {
              goto LABEL_45;
            }

            goto LABEL_42;
        }

        goto LABEL_42;
      }

      v18 = v15 - 99;
      if ((v15 - 99) <= 0x18)
      {
        if (((1 << v18) & 0x1000404) != 0)
        {
LABEL_11:
          *v37 = 0;
          *v38 = 0;
          *v36 = 0;
          *v35 = 0;
          v34 = 0;
          v19 = [supportedCopy lastExtendedDataForTokenAtIndex:v11 length:&v34];
          if (v16 == 59 || v16 == 123 || v16 == 91)
          {
            v33 = 0;
            extractDataFromPtgArea3DBuffer(v19, &v33, &v38[1], &v36[1], v38, v36, &v37[1], &v35[1], v37, v35);
          }

          else
          {
            extractDataFromPtgAreaBuffer(v19, &v38[1], &v36[1], v38, v36, &v37[1], &v35[1], v37, v35);
          }

          if (v38[1] == v38[0] && v37[1] == v37[0] && v36[1] == v36[0])
          {
            v20 = (v35[1] != v35[0]) | v13;
            if (v35[1] != v35[0] && !rangesCopy)
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (!rangesCopy)
            {
              goto LABEL_45;
            }

            v20 = 1;
          }

          v13 = v20;
          goto LABEL_42;
        }

        if (v15 == 99)
        {
LABEL_28:
          v21 = v12;
          v22 = rangesCopy;
          v23 = v13;
          v38[1] = 0;
          v24 = *[supportedCopy lastExtendedDataForTokenAtIndex:v11 length:&v38[1]];
          selfCopy = self;
          WeakRetained = objc_loadWeakRetained(&self->super.mResources);
          names = [WeakRetained names];
          v28 = [names objectAtIndex:v24];

          formula = [v28 formula];
          LOBYTE(names) = [(EPFormulaCleaner *)selfCopy isArrayedFormulaSupported:formula allowSimpleRanges:0 formulasBeingEvaluated:v32];

          if ((names & 1) == 0)
          {
            LOBYTE(v13) = v23;
            LOBYTE(v12) = v21;
            goto LABEL_45;
          }

          self = selfCopy;
          v13 = v23;
          rangesCopy = v22;
          v12 = v21;
          goto LABEL_42;
        }

        if (((1 << v18) & 0x401800) != 0)
        {
          goto LABEL_45;
        }
      }

      if (v15 != 97)
      {
        if (v15 != 98)
        {
          goto LABEL_42;
        }

LABEL_36:
        v17 = 2;
      }

LABEL_37:
      v38[1] = 0;
      v30 = *([supportedCopy lastExtendedDataForTokenAtIndex:v11 length:&v38[1]] + 2 * v17);
      if (v30 != 78 && v30 != 148)
      {
        v12 = 1;
      }

      if (v30 == 78 || v30 == 148)
      {
        goto LABEL_45;
      }

LABEL_42:
      v11 = (v11 + 1);
    }
  }

  v10 = 0;
LABEL_46:

  return v10;
}

- (BOOL)doesNameIndexContainCircularReferences:(unsigned int)references sheetIndex:(unint64_t)index previousNameIndexes:(void *)indexes
{
  mNameCircularReferenceTestCache = self->mNameCircularReferenceTestCache;
  if (!mNameCircularReferenceTestCache)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = self->mNameCircularReferenceTestCache;
    self->mNameCircularReferenceTestCache = v10;

    mNameCircularReferenceTestCache = self->mNameCircularReferenceTestCache;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:references + 1];
  v13 = [(NSMutableDictionary *)mNameCircularReferenceTestCache objectForKey:v12];
  unsignedLongValue = [v13 unsignedLongValue];

  if (unsignedLongValue)
  {
    return unsignedLongValue == 2;
  }

  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  names = [WeakRetained names];
  v18 = [names objectAtIndex:references];

  sheetIndex = [v18 sheetIndex];
  if (sheetIndex != index && sheetIndex != 0)
  {
    v15 = 0;
    v27 = self->mNameCircularReferenceTestCache;
    v28 = MEMORY[0x277CCABB0];
LABEL_23:
    v29 = 1;
    goto LABEL_25;
  }

  formula = [v18 formula];
  for (i = 0; ; i = (i + 1))
  {
    if (i >= [formula tokenCount])
    {

      v27 = self->mNameCircularReferenceTestCache;
      v28 = MEMORY[0x277CCABB0];
      v15 = 0;
      goto LABEL_23;
    }

    v23 = [formula tokenTypeAtIndex:i];
    if (v23 == 35 || v23 == 67 || v23 == 99)
    {
      break;
    }
  }

  v33 = 0;
  v24 = *[formula lastExtendedDataForTokenAtIndex:i length:&v33];
  if (!indexes || (v25 = *(indexes + 1)) == 0)
  {
LABEL_21:
    operator new();
  }

  while (2)
  {
    v26 = *(v25 + 7);
    if (v24 < v26)
    {
LABEL_20:
      v25 = *v25;
      if (!v25)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  if (v26 < v24)
  {
    ++v25;
    goto LABEL_20;
  }

  v27 = self->mNameCircularReferenceTestCache;
  v28 = MEMORY[0x277CCABB0];
  v29 = 2;
  v15 = 1;
LABEL_25:
  v30 = [v28 numberWithInt:v29];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:references + 1];
  [(NSMutableDictionary *)v27 setObject:v30 forKey:v31];

  return v15;
}

- (id)newFormulaToCleanFromSharedFormula:(id)formula
{
  formulaCopy = formula;
  rowBlocks = [(EDSheet *)self->mCurrentSheet rowBlocks];
  v6 = [formulaCopy warningWithRowBlocks:rowBlocks];

  [rowBlocks unlock];
  if (v6)
  {
    v7 = 0;
  }

  else if ([formulaCopy isBaseFormula])
  {
    v7 = formulaCopy;
  }

  else
  {
    rowBlocks2 = [(EDSheet *)self->mCurrentSheet rowBlocks];
    v9 = [formulaCopy baseFormulaWithRowBlocks:rowBlocks2];
    if (([v9 isContainsRelativeReferences] & 1) != 0 || objc_msgSend(v9, "isCleanedWithEvaluationStack"))
    {
      objc_storeStrong(&self->mBaseFormulaRowBlocks, rowBlocks2);
      v10 = [[EDFormula alloc] initWithFormula:v9];

      v7 = v10;
      v9 = v7;
    }

    else
    {
      [rowBlocks2 unlock];
      v7 = 0;
    }
  }

  return v7;
}

- (void)reportWarning:(int)warning parameter:(id)parameter
{
  v4 = *&warning;
  parameterCopy = parameter;
  [(EDFormula *)self->mFormula setWarning:v4];
  if (parameterCopy)
  {
    [(EDFormula *)self->mFormula setWarningParameter:parameterCopy];
  }
}

@end