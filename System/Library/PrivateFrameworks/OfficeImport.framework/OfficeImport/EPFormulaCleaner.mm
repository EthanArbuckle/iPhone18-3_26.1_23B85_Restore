@interface EPFormulaCleaner
- (BOOL)checkCustomFunction:(unsigned int)a3;
- (BOOL)cleanArea3D:(unsigned int)a3;
- (BOOL)cleanArea:(unsigned int)a3 updateSheet:(BOOL)a4;
- (BOOL)cleanArray:(unsigned int)a3;
- (BOOL)cleanName:(unsigned int)a3 nameIndex:(unsigned int)a4 sheetIndex:(unint64_t)a5 tokenOffset:(int *)a6;
- (BOOL)cleanName:(unsigned int)a3 tokenOffset:(int *)a4;
- (BOOL)cleanNameX:(unsigned int)a3 tokenOffset:(int *)a4;
- (BOOL)cleanRange:(unsigned int)a3 tokenOffset:(int *)a4;
- (BOOL)cleanRef3D:(unsigned int)a3;
- (BOOL)cleanRef:(unsigned int)a3 updateSheet:(BOOL)a4;
- (BOOL)cleanTokenAtIndex:(unsigned int)a3 tokenOffset:(int *)a4;
- (BOOL)cleanUnion:(unsigned int)a3;
- (BOOL)combineCellReferences:(unsigned int)a3 tokenOffset:(int *)a4;
- (BOOL)doesNameIndexContainCircularReferences:(unsigned int)a3 sheetIndex:(unint64_t)a4 previousNameIndexes:(void *)a5;
- (BOOL)isArrayedFormulaSupported:(id)a3 allowSimpleRanges:(BOOL)a4 formulasBeingEvaluated:(id)a5;
- (BOOL)isLinkReferenceIndexSupported:(unsigned int)a3 allowExternal:(BOOL)a4;
- (BOOL)isObjectSupported:(id)a3;
- (BOOL)isReferenceValidInLassoForRow:(int)a3 rowRelative:(BOOL)a4 column:(int)a5 columnRelative:(BOOL)a6;
- (BOOL)isReferenceValidInLassoForSheet:(id)a3 rowMin:(int)a4 rowMinRelative:(BOOL)a5 rowMax:(int)a6 rowMaxRelative:(BOOL)a7 columnMin:(int)a8 columnMinRelative:(BOOL)a9 columnMax:(int)a10 columnMaxRelative:(BOOL)a11;
- (BOOL)useEvaluationStackToCheckFunctionId:(int)a3 functionName:(id)a4 tokenIndex:(unsigned int)a5;
- (id)newFormulaToCleanFromSharedFormula:(id)a3;
- (id)useEvaluationStackToGetParameter:(unsigned int)a3 tokenIndex:(unsigned int)a4 allReferencesAllowed:(BOOL)a5 success:(BOOL *)a6;
- (id)worksheetFromLinkReferenceIndex:(unsigned int)a3;
- (id)worksheetsFromLinkReferenceIndex:(unsigned int)a3;
- (int)useEvaluationStackToGetParameterTokenType:(unsigned int)a3 tokenIndex:(unsigned int)a4 success:(BOOL *)a5;
- (unsigned)useEvaluationStackToGetParameter:(unsigned int)a3 tokenIndex:(unsigned int)a4;
- (void)addOffsetsToRow:(int *)a3 rowRelative:(BOOL)a4 column:(int *)a5 columnRelative:(BOOL)a6;
- (void)applyMaxCellsInName:(id)a3;
- (void)cleanFormula:(id)a3 name:(id)a4;
- (void)cleanFormula:(id)a3 sheet:(id)a4;
- (void)cleanFormula:(id)a3 sheet:(id)a4 name:(id)a5;
- (void)prepareToProcessFormula:(id)a3 sheet:(id)a4 name:(id)a5;
- (void)reportWarning:(int)a3 parameter:(id)a4;
- (void)reset;
- (void)updateSheet:(id)a3 row:(int)a4 rowRelative:(BOOL)a5 column:(int)a6 columnRelative:(BOOL)a7;
- (void)updateSheet:(id)a3 rowMin:(int)a4 rowMinRelative:(BOOL)a5 rowMax:(int)a6 rowMaxRelative:(BOOL)a7 columnMin:(int)a8 columnMinRelative:(BOOL)a9 columnMax:(int)a10 columnMaxRelative:(BOOL)a11;
- (void)updateWorksheet:(id)a3 row:(int)a4 column:(int)a5 inDictionary:(id)a6;
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

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

- (void)cleanFormula:(id)a3 sheet:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    [(EPFormulaCleaner *)self cleanFormula:v7 sheet:v6 name:0];
  }
}

- (void)cleanFormula:(id)a3 name:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    [(EPFormulaCleaner *)self cleanFormula:v7 sheet:0 name:v6];
  }
}

- (void)prepareToProcessFormula:(id)a3 sheet:(id)a4 name:(id)a5
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  [(EPFormulaCleaner *)self reset];
  objc_storeStrong(&self->mFormula, a3);
  mTokensToClean = self->mTokensToClean;
  self->mTokensToClean = 0;

  objc_storeStrong(&self->mCurrentSheet, a4);
  objc_storeStrong(&self->mParentName, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v13;
    if (([v12 isBaseFormula] & 1) == 0)
    {
      self->mRowOffset = [v12 rowBaseOrOffset];
      self->mColumnOffset = [v12 columnBaseOrOffset];
    }
  }
}

- (void)cleanFormula:(id)a3 sheet:(id)a4 name:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(EPFormulaCleaner *)self prepareToProcessFormula:v9 sheet:v10 name:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(EPFormulaCleaner *)self newFormulaToCleanFromSharedFormula:v9];
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
    objc_storeStrong(&self->mTokensToClean, a3);
    v14 = self->mTokensToClean;
  }

  if (-[EDFormula tokenCount](v14, "tokenCount") || [v11 isInternalFunction])
  {
    for (i = 0; i < [(EDFormula *)self->mTokensToClean tokenCount]; i = (i + v16 + 1))
    {
      v16 = 0;
      if (![(EPFormulaCleaner *)self cleanTokenAtIndex:i tokenOffset:&v16])
      {
        goto LABEL_12;
      }
    }

    [v9 setCleaned:1];
    [(EPFormulaCleaner *)self reset];
  }

LABEL_12:
}

- (BOOL)cleanTokenAtIndex:(unsigned int)a3 tokenOffset:(int *)a4
{
  v5 = *&a3;
  *a4 = 0;
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
      v9 = self;
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

      return [(EPFormulaCleaner *)self cleanRange:v5 tokenOffset:a4];
    case 23:
      v9 = self;
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
      v9 = self;
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

      return [(EPFormulaCleaner *)self cleanName:v5 tokenOffset:a4];
    case 35:
    case 67:
    case 99:
      v14 = self;
      v15 = v5;
      v16 = 1;
      goto LABEL_33;
    case 36:
    case 68:
    case 100:
      v11 = self;
      v12 = v5;
      v13 = 1;
      goto LABEL_29;
    case 43:
    case 75:
    case 107:
      v14 = self;
      v15 = v5;
      v16 = 0;
LABEL_33:

      result = [(EPFormulaCleaner *)v14 cleanRef:v15 updateSheet:v16];
      break;
    case 44:
    case 76:
    case 108:
      v11 = self;
      v12 = v5;
      v13 = 0;
LABEL_29:

      result = [(EPFormulaCleaner *)v11 cleanArea:v12 updateSheet:v13];
      break;
    case 56:
    case 88:
    case 120:

      result = [(EPFormulaCleaner *)self cleanNameX:v5 tokenOffset:a4];
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
      v9 = self;
      v10 = 1;
LABEL_4:
      [(EPFormulaCleaner *)v9 reportWarning:v10];
      result = 0;
      break;
  }

  return result;
}

- (void)addOffsetsToRow:(int *)a3 rowRelative:(BOOL)a4 column:(int *)a5 columnRelative:(BOOL)a6
{
  if (!a4)
  {
    if (!a6)
    {
      return;
    }

LABEL_5:
    *a5 += self->mColumnOffset;
    return;
  }

  *a3 += self->mRowOffset;
  if (a6)
  {
    goto LABEL_5;
  }
}

- (BOOL)isReferenceValidInLassoForRow:(int)a3 rowRelative:(BOOL)a4 column:(int)a5 columnRelative:(BOOL)a6
{
  v10 = a5;
  v11 = a3;
  [(EPFormulaCleaner *)self addOffsetsToRow:&v11 rowRelative:a4 column:&v10 columnRelative:a6];
  v7 = v11 < 500001 && v10 < 500001;
  v8 = v7;
  if (!v7)
  {
    [(EPFormulaCleaner *)self reportWarning:10];
  }

  return v8;
}

- (BOOL)isReferenceValidInLassoForSheet:(id)a3 rowMin:(int)a4 rowMinRelative:(BOOL)a5 rowMax:(int)a6 rowMaxRelative:(BOOL)a7 columnMin:(int)a8 columnMinRelative:(BOOL)a9 columnMax:(int)a10 columnMaxRelative:(BOOL)a11
{
  v12 = a7;
  v13 = *&a6;
  v14 = a5;
  v17 = a10;
  v18 = a3;
  v24 = v13;
  v25 = a4;
  v23 = a8;
  v19 = isRowReference(a8, v17);
  v20 = a11;
  if (v19 || isColumnReference(a4, v13))
  {
    [(EPFormulaCleaner *)self addOffsetsToRow:&v25 rowRelative:v14 column:&v23 columnRelative:a9];
    [(EPFormulaCleaner *)self addOffsetsToRow:&v24 rowRelative:v12 column:&a10 columnRelative:v20];
    if (v25 >= 500001 && v23 >= 500001 || [EPFormulaCleaner isThereContentOutsideOfLassoBoundsForSheet:"isThereContentOutsideOfLassoBoundsForSheet:rowMin:rowMax:columnMin:columnMax:" rowMin:v18 rowMax:? columnMin:? columnMax:?])
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
    v21 = [(EPFormulaCleaner *)self isReferenceValidInLassoForRow:v13 rowRelative:v12 column:v17 columnRelative:v20];
  }

  return v21;
}

- (void)updateSheet:(id)a3 row:(int)a4 rowRelative:(BOOL)a5 column:(int)a6 columnRelative:(BOOL)a7
{
  v7 = a7;
  v8 = a5;
  v15 = a6;
  v16 = a4;
  v10 = a3;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EPFormulaCleaner *)self addOffsetsToRow:&v16 rowRelative:v8 column:&v15 columnRelative:v7];
      [(EDFormula *)self->mFormula updateContainsRelativeReferences:v8 | v7];
      mParentName = self->mParentName;
      if (mParentName)
      {
        v13 = v15;
        v12 = v16;
        v14 = [(EDName *)mParentName maxWorksheetReferences];
        [(EPFormulaCleaner *)self updateWorksheet:v10 row:v12 column:v13 inDictionary:v14];
      }

      else
      {
        v14 = [v10 maxCellReferencedInFormulas];
        [v14 unionWithRow:v16 column:v15];
      }
    }
  }
}

- (void)updateSheet:(id)a3 rowMin:(int)a4 rowMinRelative:(BOOL)a5 rowMax:(int)a6 rowMaxRelative:(BOOL)a7 columnMin:(int)a8 columnMinRelative:(BOOL)a9 columnMax:(int)a10 columnMaxRelative:(BOOL)a11
{
  v12 = a7;
  v24 = a3;
  v16 = isRowReference(a8, a10);
  v17 = isColumnReference(a4, a6);
  if (a10 >= 500000)
  {
    v18 = 500000;
  }

  else
  {
    v18 = a10;
  }

  if (v16)
  {
    v19 = a6;
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v20 = a10;
  }

  if (!v17)
  {
    v19 = a6;
    v18 = 0;
  }

  if (v19 >= 500000)
  {
    v21 = 500000;
  }

  else
  {
    v21 = v19;
  }

  if (v16)
  {
    v22 = v18;
  }

  else
  {
    v22 = v20;
  }

  if (v16)
  {
    v23 = v21;
  }

  else
  {
    v23 = v19;
  }

  [(EPFormulaCleaner *)self updateSheet:v24 row:v23 rowRelative:v12 column:v22 columnRelative:a11];
}

- (BOOL)cleanArray:(unsigned int)a3
{
  v3 = *&a3;
  v10 = 0;
  v5 = [(EDFormula *)self->mFormula extendedDataForTokenAtIndex:*&a3 extendedDataIndex:0 length:&v10];
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

- (BOOL)cleanRef:(unsigned int)a3 updateSheet:(BOOL)a4
{
  v4 = a4;
  *v10 = 0;
  *v9 = 0;
  v8 = 0;
  extractDataFromPtgRefBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&a3 length:&v8], &v10[1], &v9[1], v10, v9);
  v6 = [(EPFormulaCleaner *)self isReferenceValidInLassoForRow:v10[1] rowRelative:v9[1] column:v10[0] columnRelative:v9[0]];
  if (v6 && v4)
  {
    [(EPFormulaCleaner *)self updateSheet:self->mCurrentSheet row:v10[1] rowRelative:v9[1] column:v10[0] columnRelative:v9[0]];
  }

  return v6;
}

- (BOOL)cleanArea:(unsigned int)a3 updateSheet:(BOOL)a4
{
  v4 = a4;
  v17 = 0;
  v16 = 0;
  *v15 = 0;
  *v14 = 0;
  *v13 = 0;
  v12 = 0;
  extractDataFromPtgAreaBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&a3 length:&v12], &v17, &v14[1], &v16, v14, &v15[1], &v13[1], v15, v13);
  LOBYTE(v10) = v13[0];
  HIDWORD(v8) = v15[0];
  LOBYTE(v8) = v13[1];
  v6 = [(EPFormulaCleaner *)self isReferenceValidInLassoForSheet:self->mCurrentSheet rowMin:v17 rowMinRelative:v14[1] rowMax:v16 rowMaxRelative:v14[0] columnMin:v15[1] columnMinRelative:v8 columnMax:v10 columnMaxRelative:?];
  if (v6 && v4)
  {
    LOBYTE(v11) = v13[0];
    HIDWORD(v9) = v15[0];
    LOBYTE(v9) = v13[1];
    [(EPFormulaCleaner *)self updateSheet:self->mCurrentSheet rowMin:v17 rowMinRelative:v14[1] rowMax:v16 rowMaxRelative:v14[0] columnMin:v15[1] columnMinRelative:v9 columnMax:v11 columnMaxRelative:?];
  }

  return v6;
}

- (BOOL)cleanRef3D:(unsigned int)a3
{
  *v14 = 0;
  v13 = 0;
  *v12 = 0;
  v11 = 0;
  extractDataFromPtgRef3DBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&a3 length:&v11], &v14[1], v14, &v12[1], &v13, v12);
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

- (BOOL)cleanArea3D:(unsigned int)a3
{
  *v19 = 0;
  *v20 = 0;
  v18 = 0;
  *v17 = 0;
  *v16 = 0;
  v15 = 0;
  extractDataFromPtgArea3DBuffer([(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&a3 length:&v15], &v20[1], v20, &v17[1], &v19[1], v17, v19, &v16[1], &v18, v16);
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

- (BOOL)cleanName:(unsigned int)a3 tokenOffset:(int *)a4
{
  v5 = *&a3;
  v11 = 0;
  v7 = *[(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&a3 length:&v11];
  WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
  v9 = [WeakRetained indexOfSheet:self->mCurrentSheet];

  return [(EPFormulaCleaner *)self cleanName:v5 nameIndex:v7 sheetIndex:v9 tokenOffset:a4];
}

- (BOOL)cleanNameX:(unsigned int)a3 tokenOffset:(int *)a4
{
  v5 = *&a3;
  v21 = 0;
  v7 = [(EDFormula *)self->mTokensToClean lastExtendedDataForTokenAtIndex:*&a3 length:&v21];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = 0;
  if ([(EPFormulaCleaner *)self isLinkReferenceIndexSupported:v8 allowExternal:1])
  {
    WeakRetained = objc_loadWeakRetained(&self->super.mResources);
    v12 = [WeakRetained links];

    v13 = [v12 referenceAtIndex:v8];
    v14 = [v12 linkAtIndex:{objc_msgSend(v13, "linkIndex")}];
    v15 = [v14 type];
    v16 = v15;
    if (v15 == 1)
    {
      v10 = -[EPFormulaCleaner cleanName:nameIndex:sheetIndex:tokenOffset:](self, "cleanName:nameIndex:sheetIndex:tokenOffset:", v5, v9, [v13 firstSheetIndex], a4);
    }

    else if ((v15 & 0xFFFFFFFE) == 2)
    {
      v17 = [v14 externalNames];
      if ([v17 count] <= v9)
      {
        [(EPFormulaCleaner *)self reportWarning:5];
        v10 = 0;
      }

      else
      {
        v18 = [v17 objectAtIndex:v9];
        v19 = [v18 string];
        v10 = [(EPFormulaCleaner *)self checkSupportedAddInName:v19 externalLink:v16 == 2];
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

- (BOOL)cleanUnion:(unsigned int)a3
{
  if (a3 >= 2)
  {
    v6 = *&a3;
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

- (BOOL)cleanRange:(unsigned int)a3 tokenOffset:(int *)a4
{
  *a4 = 0;
  if (a3 >= 2)
  {
    v8 = *&a3;
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

        if (![(EPFormulaCleaner *)self combineCellReferences:v12 tokenOffset:a4])
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

        v16 = (*a4 + v8);

        return [(EPFormulaCleaner *)self combineCellReferences:v16 tokenOffset:a4];
      }
    }
  }

  [(EPFormulaCleaner *)self reportWarning:1];
LABEL_3:
  LOBYTE(v5) = 0;
  return v5;
}

- (BOOL)combineCellReferences:(unsigned int)a3 tokenOffset:(int *)a4
{
  if (a3 < 2)
  {
    goto LABEL_37;
  }

  v6 = *&a3;
  if ([(EDFormula *)self->mTokensToClean tokenCount]<= a3)
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
          *a4 -= 2;
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

- (BOOL)isLinkReferenceIndexSupported:(unsigned int)a3 allowExternal:(BOOL)a4
{
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v8 = [WeakRetained links];

  v9 = [v8 referenceAtIndex:a3];
  v10 = v9;
  if (v9)
  {
    v11 = [v8 linkAtIndex:{objc_msgSend(v9, "linkIndex")}];
    v12 = [v11 type];
    v13 = v12 == 2 && a4;
    if ((v12 & 0xFFFFFFFD) == 1 || v13)
    {
      v15 = [v10 firstSheetIndex];
      v16 = [v10 lastSheetIndex];
      v17 = v16;
      if (v15 != -1 && v16 != -1)
      {
        if ([v10 isWorkbookLevelReference])
        {
          v14 = 1;
LABEL_24:

          goto LABEL_25;
        }

        v19 = objc_loadWeakRetained(&self->super.mWorkbook);
        v20 = [v19 mappingContext];
        v21 = [v20 mappingInfoCount];

        if (v12 != 1 || v15 <= v21)
        {
          v14 = 1;
          if (v12 != 1 || v15 == v17 || v17 <= v21)
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

- (id)worksheetFromLinkReferenceIndex:(unsigned int)a3
{
  v12 = -1;
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v6 = [WeakRetained links];
  [v6 convertLinkReferenceIndex:a3 firstSheetIndex:&v12 lastSheetIndex:&v11];

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

- (id)worksheetsFromLinkReferenceIndex:(unsigned int)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v13 = -1;
  v14 = -1;
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v7 = [WeakRetained links];
  [v7 convertLinkReferenceIndex:a3 firstSheetIndex:&v14 lastSheetIndex:&v13];

  v8 = v14;
  if (v14 > v13)
  {
LABEL_4:
    v11 = v5;
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

      [v5 addObject:v10];

      if (++v8 > v13)
      {
        goto LABEL_4;
      }
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)cleanName:(unsigned int)a3 nameIndex:(unsigned int)a4 sheetIndex:(unint64_t)a5 tokenOffset:(int *)a6
{
  v7 = *&a4;
  v8 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v11 = [WeakRetained names];
  v12 = [v11 objectAtIndex:v7];

  v13 = [v12 sheetIndex];
  if (v13 != a5 && v13 != 0)
  {
    v23 = [v12 nameString];
    v24 = [v23 string];
    [(EPFormulaCleaner *)self reportWarning:8 parameter:v24];
LABEL_29:

    goto LABEL_30;
  }

  v23 = [v12 formula];
  if ([v12 isInternalFunction] && !objc_msgSend(v23, "tokenCount"))
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
  v20 = [v19 unsignedLongValue];

  if (v20)
  {
    v21 = (v20 - 1);
    if (v20 != 1)
    {
LABEL_12:
      v24 = [v12 nameString];
      v22 = [v24 string];
      [(EPFormulaCleaner *)self reportWarning:v21 parameter:v22];
LABEL_28:

      goto LABEL_29;
    }
  }

  else
  {
    if (v23 && [v23 isSupportedFormula] && (objc_msgSend(v23, "isContainsRelativeReferences") & 1) == 0 && objc_msgSend(v23, "tokenTypeAtIndex:", 0))
    {
      if ([v23 tokenCount] < 2)
      {
        v21 = 0;
      }

      else
      {
        v25 = [MEMORY[0x277CBEB58] set];
        v26 = [(EPFormulaCleaner *)self isArrayedFormulaSupported:v23 allowSimpleRanges:1 formulasBeingEvaluated:v25];

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

  if ([(EPFormulaCleaner *)self doesNameIndexContainCircularReferences:v7 sheetIndex:a5 previousNameIndexes:0]|| ![(EDFormula *)self->mTokensToClean replaceTokenAtIndex:v8 withFormula:v23])
  {
    v24 = [v12 nameString];
    v22 = [v24 string];
    [(EPFormulaCleaner *)self reportWarning:9 parameter:v22];
    goto LABEL_28;
  }

  if ([(EDFormula *)self->mTokensToClean tokenCount]< 0x7D1)
  {
    if (*a6 >= 1)
    {
      --*a6;
    }

    [(EPFormulaCleaner *)self applyMaxCellsInName:v12];
    -[EDFormula updateContainsRelativeReferences:](self->mFormula, "updateContainsRelativeReferences:", [v23 isContainsRelativeReferences]);
    -[EDFormula updateCleanedWithEvaluationStack:](self->mFormula, "updateCleanedWithEvaluationStack:", [v23 isCleanedWithEvaluationStack]);
    goto LABEL_35;
  }

  [(EPFormulaCleaner *)self reportWarning:10];
LABEL_30:
  v30 = 0;
LABEL_31:

  return v30;
}

- (BOOL)checkCustomFunction:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:0 tokenIndex:*&a3];
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
  v12 = [WeakRetained links];

  v13 = [v12 referenceAtIndex:v9];
  v14 = [v12 linkAtIndex:{objc_msgSend(v13, "linkIndex")}];
  v15 = v14;
  if (v14 && ([v14 type] == 3 || objc_msgSend(v15, "type") == 2))
  {
    v16 = [v15 externalNames];
    if ([v16 count] <= v10)
    {
      v20 = 1;
    }

    else
    {
      v17 = [v16 objectAtIndex:v10];
      v18 = [v17 string];
      v19 = [v18 uppercaseString];

      if ([v19 isEqualToString:@"CONVERT"] && (-[EDFormula updateCleanedWithEvaluationStack:](self->mTokensToClean, "updateCleanedWithEvaluationStack:", 1), !-[EPFormulaCleaner useEvaluationStackToCheckFunctionId:functionName:tokenIndex:](self, "useEvaluationStackToCheckFunctionId:functionName:tokenIndex:", 255, v19, v3)))
      {
        [(EPFormulaCleaner *)self reportWarning:11 parameter:v19];
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

- (void)updateWorksheet:(id)a3 row:(int)a4 column:(int)a5 inDictionary:(id)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v11 = a3;
  v9 = a6;
  v10 = [v9 objectForKey:v11];
  if (!v10)
  {
    v10 = +[EDReference reference];
    [v9 setObject:v10 forUncopiedKey:v11];
  }

  [v10 unionWithRow:v8 column:v7];
}

- (void)applyMaxCellsInName:(id)a3
{
  v10 = [a3 maxWorksheetReferences];
  v3 = [v10 allKeys];
  v4 = [v3 count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [v3 objectAtIndex:i];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 maxCellReferencedInFormulas];
        v9 = [v10 objectForKey:v7];
        [v8 unionWithReference:v9];
      }
    }
  }

  [v10 removeAllObjects];
}

- (BOOL)useEvaluationStackToCheckFunctionId:(int)a3 functionName:(id)a4 tokenIndex:(unsigned int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  v11 = 1;
  v26 = 1;
  if (a3 <= 147)
  {
    if ((a3 - 76) >= 2)
    {
      if (a3 == 111)
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
        if (a3 != 121)
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

  if (a3 > 254)
  {
    if (a3 != 255)
    {
      if (a3 != 347)
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

    if (![v8 isEqualToString:@"CONVERT"])
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

  if (a3 != 148)
  {
    if (a3 != 219)
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

- (int)useEvaluationStackToGetParameterTokenType:(unsigned int)a3 tokenIndex:(unsigned int)a4 success:(BOOL *)a5
{
  *a5 = 1;
  v7 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:*&a3 tokenIndex:*&a4];
  if (v7 == -1)
  {
    *a5 = 0;
    return 0;
  }

  else
  {
    v8 = v7;
    mTokensToClean = self->mTokensToClean;

    return [(EDFormula *)mTokensToClean tokenTypeAtIndex:v8];
  }
}

- (unsigned)useEvaluationStackToGetParameter:(unsigned int)a3 tokenIndex:(unsigned int)a4
{
  v5 = [EDTokenTree buildSubtree:*&a4 formula:self->mTokensToClean];
  v6 = [v5 firstChild];

  if (v6)
  {
    v7 = a3 + 1;
    v8 = v6;
    while (--v7)
    {
      v9 = [v8 sibling];

      v8 = v9;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v10 = [v8 tokenIndex];
  }

  else
  {
    v8 = 0;
LABEL_7:
    v10 = -1;
  }

  return v10;
}

- (id)useEvaluationStackToGetParameter:(unsigned int)a3 tokenIndex:(unsigned int)a4 allReferencesAllowed:(BOOL)a5 success:(BOOL *)a6
{
  *a6 = 1;
  v9 = [(EPFormulaCleaner *)self useEvaluationStackToGetParameter:*&a3 tokenIndex:*&a4];
  if (v9 == -1 || (v10 = v9, [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:v9]== 22))
  {
LABEL_3:
    v11 = 0;
    goto LABEL_6;
  }

  v35 = 0;
  v12 = [(EDFormula *)self->mTokensToClean tokenTypeAtIndex:v10];
  v11 = 0;
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
      v11 = [MEMORY[0x277CCACA8] stringWithOcText:OcTextFromPtgStrBuffer];
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
      v18 = [(EDSheet *)self->mCurrentSheet rowBlocks];
      v19 = [v18 cellWithRowNumber:v34 columnNumber:*&v33[4]];
      goto LABEL_19;
    case 37:
    case 69:
    case 101:
      if (!a5)
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
        v18 = [v21 rowBlocks];
        v19 = [v18 cellWithRowNumber:*&v33[4] columnNumber:*v33];

LABEL_19:
        v11 = 0;
        if (!v19 || a5)
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
            v11 = [v27 string];

            goto LABEL_38;
          case 2u:
            v25 = [MEMORY[0x277CCABB0] numberWithDouble:numberValueForEDCell(v19)];
            break;
          case 1u:
            v25 = [MEMORY[0x277CCABB0] numberWithBool:BOOLValueForEDCell(v19)];
            break;
          default:
LABEL_22:
            v11 = 0;
            *a6 = 0;
LABEL_38:
            [v18 unlock];

            goto LABEL_6;
        }

        v11 = v25;
        goto LABEL_38;
      }

      if (v12 == 123)
      {
LABEL_15:
        if (a5)
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
          v11 = v20;
        }

        else
        {
LABEL_5:
          v11 = 0;
          *a6 = 0;
        }
      }

LABEL_6:

      return v11;
  }
}

- (BOOL)isArrayedFormulaSupported:(id)a3 allowSimpleRanges:(BOOL)a4 formulasBeingEvaluated:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (([v9 containsObject:v8] & 1) == 0)
  {
    if (!v8)
    {
      v10 = 1;
      goto LABEL_46;
    }

    [v9 addObject:v8];
    v32 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = [v8 tokenCount];
      if (v11 >= v14)
      {
LABEL_45:
        v10 = (v11 >= v14) & (v12 & v13 ^ 1);
        v9 = v32;
        goto LABEL_46;
      }

      v15 = [v8 tokenTypeAtIndex:v11];
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
            if (!v6)
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
          v19 = [v8 lastExtendedDataForTokenAtIndex:v11 length:&v34];
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
            if (v35[1] != v35[0] && !v6)
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (!v6)
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
          v22 = v6;
          v23 = v13;
          v38[1] = 0;
          v24 = *[v8 lastExtendedDataForTokenAtIndex:v11 length:&v38[1]];
          v25 = self;
          WeakRetained = objc_loadWeakRetained(&self->super.mResources);
          v27 = [WeakRetained names];
          v28 = [v27 objectAtIndex:v24];

          v29 = [v28 formula];
          LOBYTE(v27) = [(EPFormulaCleaner *)v25 isArrayedFormulaSupported:v29 allowSimpleRanges:0 formulasBeingEvaluated:v32];

          if ((v27 & 1) == 0)
          {
            LOBYTE(v13) = v23;
            LOBYTE(v12) = v21;
            goto LABEL_45;
          }

          self = v25;
          v13 = v23;
          v6 = v22;
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
      v30 = *([v8 lastExtendedDataForTokenAtIndex:v11 length:&v38[1]] + 2 * v17);
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

- (BOOL)doesNameIndexContainCircularReferences:(unsigned int)a3 sheetIndex:(unint64_t)a4 previousNameIndexes:(void *)a5
{
  mNameCircularReferenceTestCache = self->mNameCircularReferenceTestCache;
  if (!mNameCircularReferenceTestCache)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = self->mNameCircularReferenceTestCache;
    self->mNameCircularReferenceTestCache = v10;

    mNameCircularReferenceTestCache = self->mNameCircularReferenceTestCache;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3 + 1];
  v13 = [(NSMutableDictionary *)mNameCircularReferenceTestCache objectForKey:v12];
  v14 = [v13 unsignedLongValue];

  if (v14)
  {
    return v14 == 2;
  }

  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v17 = [WeakRetained names];
  v18 = [v17 objectAtIndex:a3];

  v19 = [v18 sheetIndex];
  if (v19 != a4 && v19 != 0)
  {
    v15 = 0;
    v27 = self->mNameCircularReferenceTestCache;
    v28 = MEMORY[0x277CCABB0];
LABEL_23:
    v29 = 1;
    goto LABEL_25;
  }

  v21 = [v18 formula];
  for (i = 0; ; i = (i + 1))
  {
    if (i >= [v21 tokenCount])
    {

      v27 = self->mNameCircularReferenceTestCache;
      v28 = MEMORY[0x277CCABB0];
      v15 = 0;
      goto LABEL_23;
    }

    v23 = [v21 tokenTypeAtIndex:i];
    if (v23 == 35 || v23 == 67 || v23 == 99)
    {
      break;
    }
  }

  v33 = 0;
  v24 = *[v21 lastExtendedDataForTokenAtIndex:i length:&v33];
  if (!a5 || (v25 = *(a5 + 1)) == 0)
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
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3 + 1];
  [(NSMutableDictionary *)v27 setObject:v30 forKey:v31];

  return v15;
}

- (id)newFormulaToCleanFromSharedFormula:(id)a3
{
  v4 = a3;
  v5 = [(EDSheet *)self->mCurrentSheet rowBlocks];
  v6 = [v4 warningWithRowBlocks:v5];

  [v5 unlock];
  if (v6)
  {
    v7 = 0;
  }

  else if ([v4 isBaseFormula])
  {
    v7 = v4;
  }

  else
  {
    v8 = [(EDSheet *)self->mCurrentSheet rowBlocks];
    v9 = [v4 baseFormulaWithRowBlocks:v8];
    if (([v9 isContainsRelativeReferences] & 1) != 0 || objc_msgSend(v9, "isCleanedWithEvaluationStack"))
    {
      objc_storeStrong(&self->mBaseFormulaRowBlocks, v8);
      v10 = [[EDFormula alloc] initWithFormula:v9];

      v7 = v10;
      v9 = v7;
    }

    else
    {
      [v8 unlock];
      v7 = 0;
    }
  }

  return v7;
}

- (void)reportWarning:(int)a3 parameter:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  [(EDFormula *)self->mFormula setWarning:v4];
  if (v6)
  {
    [(EDFormula *)self->mFormula setWarningParameter:v6];
  }
}

@end