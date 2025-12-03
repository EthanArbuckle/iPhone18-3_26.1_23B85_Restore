@interface CHDFormula
+ (CHDFormula)formulaWithReference:(id)reference;
+ (CHDFormula)formulaWithReferences:(id)references;
- (BOOL)isConstantStringFormula;
- (CHDFormula)initWithReference:(id)reference;
- (CHDFormula)initWithReferences:(id)references;
- (CHDFormula)initWithWorkbook:(id)workbook;
- (id)constantValuesFromConstantStringFormula;
- (id)references;
- (id)referencesFromFormula;
- (unint64_t)countOfCellsBeingReferenced;
- (void)prepareTokens;
- (void)setReferences:(id)references;
@end

@implementation CHDFormula

- (id)references
{
  mReferences = self->mReferences;
  if (mReferences)
  {
LABEL_2:
    v3 = mReferences;
    goto LABEL_8;
  }

  if ([(EDFormula *)self isSupportedFormula]&& [(EDFormula *)self isCleaned])
  {
    referencesFromFormula = [(CHDFormula *)self referencesFromFormula];
    if ([referencesFromFormula count])
    {
      [(CHDFormula *)self setReferences:referencesFromFormula];
    }

    else
    {
      [(EDFormula *)self removeAllTokens];
      [(EDFormula *)self setWarning:1];
    }

    mReferences = self->mReferences;
    goto LABEL_2;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (id)referencesFromFormula
{
  if ([(EDFormula *)self isSupportedFormula]&& [(EDFormula *)self tokenCount])
  {
    WeakRetained = objc_loadWeakRetained(&self->mWorkbook);
    resources = [WeakRetained resources];
    links = [resources links];

    v6 = +[EDReferenceCollection noCoalesceCollection];
    tokenCount = [(EDFormula *)self tokenCount];
    if (tokenCount)
    {
      v8 = 0;
      do
      {
        v9 = [(EDFormula *)self tokenTypeAtIndex:v8];
        if (v9 != 16)
        {
          v20 = 0;
          v21 = -1;
          v18 = -1;
          v19 = -1;
          v16 = -1;
          v17 = -1;
          if (v9 > 68)
          {
            if (v9 <= 99)
            {
              if (v9 == 69)
              {
                goto LABEL_25;
              }

              if (v9 != 90)
              {
                if (v9 != 91)
                {
                  goto LABEL_30;
                }

                goto LABEL_28;
              }
            }

            else
            {
              if (v9 <= 121)
              {
                if (v9 != 100)
                {
                  if (v9 == 101)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_30;
                }

                goto LABEL_24;
              }

              if (v9 != 122)
              {
                if (v9 != 123)
                {
                  goto LABEL_30;
                }

                goto LABEL_28;
              }
            }

            goto LABEL_29;
          }

          if (v9 > 57)
          {
            if (v9 != 58)
            {
              if (v9 != 59)
              {
                if (v9 != 68)
                {
                  goto LABEL_30;
                }

                goto LABEL_24;
              }

LABEL_28:
              extractDataFromPtgArea3DBuffer([(EDFormula *)self lastExtendedDataForTokenAtIndex:v8 length:&v20], &v21, &v19, &v17, &v18, &v16);
              goto LABEL_30;
            }

LABEL_29:
            extractDataFromPtgRef3DBuffer([(EDFormula *)self lastExtendedDataForTokenAtIndex:v8 length:&v20], &v21, &v19, &v18);
            goto LABEL_30;
          }

          if (v9 > 35)
          {
            if (v9 != 36)
            {
              if (v9 != 37)
              {
                goto LABEL_30;
              }

LABEL_25:
              extractDataFromPtgAreaBuffer([(EDFormula *)self lastExtendedDataForTokenAtIndex:v8 length:&v20], &v19, &v17, &v18, &v16);
LABEL_30:
              v14 = 0;
              v15 = 0;
              if ([links convertLinkReferenceIndex:v21 firstSheetIndex:&v15 lastSheetIndex:&v14] && v15 == v14)
              {
                if (v17 < 0)
                {
                  v17 = v19;
                }

                if (v16 < 0)
                {
                  v16 = v18;
                }

                v10 = [EDSheetReference referenceWithSheetIndex:"referenceWithSheetIndex:firstRow:lastRow:firstColumn:lastColumn:" firstRow:? lastRow:? firstColumn:? lastColumn:?];
                if ([v10 isValidAreaReference])
                {
                  [v6 addObject:v10];
                }
              }

              goto LABEL_40;
            }

LABEL_24:
            extractDataFromPtgRefBuffer([(EDFormula *)self lastExtendedDataForTokenAtIndex:v8 length:&v20], &v19, &v18);
            goto LABEL_30;
          }

          if (v9 != 21)
          {
            if (v9 == 23 || v9 == 30)
            {
              v11 = 0;
              goto LABEL_50;
            }

            goto LABEL_30;
          }
        }

LABEL_40:
        v8 = (v8 + 1);
      }

      while (tokenCount != v8);
    }

    if ([v6 count])
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v11 = v12;
LABEL_50:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)countOfCellsBeingReferenced
{
  references = [(CHDFormula *)self references];
  countOfCellsBeingReferenced = [references countOfCellsBeingReferenced];

  return countOfCellsBeingReferenced;
}

- (CHDFormula)initWithWorkbook:(id)workbook
{
  workbookCopy = workbook;
  v8.receiver = self;
  v8.super_class = CHDFormula;
  v5 = [(EDFormula *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mWorkbook, workbookCopy);
  }

  return v6;
}

- (CHDFormula)initWithReference:(id)reference
{
  referenceCopy = reference;
  v5 = [(EDFormula *)self init];
  if (v5)
  {
    v6 = [(EDCollection *)[EDReferenceCollection alloc] initWithObject:referenceCopy];
    mReferences = v5->mReferences;
    v5->mReferences = v6;
  }

  return v5;
}

- (CHDFormula)initWithReferences:(id)references
{
  referencesCopy = references;
  v6 = [(EDFormula *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mReferences, references);
  }

  return v7;
}

+ (CHDFormula)formulaWithReference:(id)reference
{
  referenceCopy = reference;
  v4 = [objc_alloc(objc_opt_class()) initWithReference:referenceCopy];

  return v4;
}

+ (CHDFormula)formulaWithReferences:(id)references
{
  referencesCopy = references;
  v4 = [objc_alloc(objc_opt_class()) initWithReferences:referencesCopy];

  return v4;
}

- (void)setReferences:(id)references
{
  referencesCopy = references;
  if (self->mReferences != referencesCopy)
  {
    objc_storeStrong(&self->mReferences, references);
    if (self->mReferences)
    {
      [(EDFormula *)self removeAllTokens];
    }
  }
}

- (void)prepareTokens
{
  mReferences = self->mReferences;
  if (!mReferences)
  {
    return;
  }

  if (![(EDCollection *)mReferences count])
  {
    links = self->mReferences;
    self->mReferences = 0;
LABEL_46:

    return;
  }

  v4 = [(EDCollection *)self->mReferences count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    for (i = 0; i != v5; ++i)
    {
      v11 = [(EDCollection *)self->mReferences objectAtIndex:i];
      if (v11)
      {
        v35 = v11;
        isCellReference = [v11 isCellReference];
        isSheedIndexValid = [v35 isSheedIndexValid];
        v14 = v35;
        if (isCellReference)
        {
          v15 = 6;
        }

        else
        {
          v15 = 10;
        }

        if (isCellReference)
        {
          v16 = 4;
        }

        else
        {
          v16 = 8;
        }

        if (!isSheedIndexValid)
        {
          v15 = v16;
        }

        v9 = (v15 + v9);
        v7 = (v7 + 1);
        v8 = (v8 + 1);
        if (i)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v6 = (v6 + v17);
      }

      else
      {
        v14 = 0;
      }
    }

    if (v6)
    {
      [(EDFormula *)self removeAllTokens];
      WeakRetained = objc_loadWeakRetained(&self->mWorkbook);
      resources = [WeakRetained resources];
      links = [resources links];

      [(EDFormula *)self setupTokensWithTokensCount:v6 tokensWithDataCount:v7 extendedDataLength:v9 extendedDataCount:v8];
      for (j = 0; j != v5; ++j)
      {
        v21 = [(EDCollection *)self->mReferences objectAtIndex:j];
        v22 = v21;
        if (v21)
        {
          firstRow = [v21 firstRow];
          if (firstRow == [v22 lastRow])
          {
            firstColumn = [v22 firstColumn];
            v25 = firstColumn != [v22 lastColumn];
          }

          else
          {
            v25 = 1;
          }

          sheetIndex = [v22 sheetIndex];
          if ([v22 isSheedIndexValid])
          {
            v27 = [links addOrEquivalentInternalLinkReferenceWithFirstSheetIndex:sheetIndex lastSheetIndex:sheetIndex];
          }

          else
          {
            v27 = -1;
          }

          if ([v22 isSheedIndexValid])
          {
            if (v25)
            {
              v28 = [(EDFormula *)self addToken:59 extendedDataLength:10];
              v29 = v28;
              if (v28)
              {
                *v28 = v27;
                *(v28 + 1) = [v22 firstRow];
                *(v29 + 2) = [v22 lastRow];
                *(v29 + 3) = [v22 firstColumn];
                *(v29 + 4) = [v22 lastColumn];
              }
            }

            else
            {
              v31 = [(EDFormula *)self addToken:58 extendedDataLength:6];
              v32 = v31;
              if (v31)
              {
                *v31 = v27;
                *(v31 + 1) = [v22 firstRow];
                *(v32 + 2) = [v22 firstColumn];
              }
            }
          }

          else if (v25)
          {
            v30 = [(EDFormula *)self addToken:37 extendedDataLength:8];
            if (v30)
            {
              *v30 = [v22 firstRow];
              *(v30 + 1) = [v22 lastRow];
              *(v30 + 2) = [v22 firstColumn];
              *(v30 + 3) = [v22 lastColumn];
            }
          }

          else
          {
            v33 = [(EDFormula *)self addToken:36 extendedDataLength:4];
            if (v33)
            {
              *v33 = [v22 firstRow];
              *(v33 + 1) = [v22 firstColumn];
            }
          }

          if (j)
          {
            [(EDFormula *)self addToken:16 extendedDataLength:0];
          }
        }
      }

      v34 = self->mReferences;
      self->mReferences = 0;

      goto LABEL_46;
    }
  }
}

- (BOOL)isConstantStringFormula
{
  tokenCount = [(EDFormula *)self tokenCount];
  if (tokenCount)
  {
    v4 = tokenCount;
    v5 = 0;
    while (1)
    {
      v6 = [(EDFormula *)self tokenTypeAtIndex:v5];
      if (v6 != 16 && v6 != 23 && (v6 != 21 || v4 != 1))
      {
        break;
      }

      v5 = (v5 + 1);
      if (!--v4)
      {
        LOBYTE(tokenCount) = 1;
        return tokenCount;
      }
    }

    LOBYTE(tokenCount) = 0;
  }

  return tokenCount;
}

- (id)constantValuesFromConstantStringFormula
{
  tokenCount = [(EDFormula *)self tokenCount];
  if (tokenCount)
  {
    v4 = tokenCount;
    array = 0;
    v6 = 0;
    while (1)
    {
      v7 = [(EDFormula *)self tokenTypeAtIndex:v6];
      if (v7 != 16)
      {
        if (v7 != 23)
        {
          v10 = 0;
          goto LABEL_14;
        }

        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        v12 = 0;
        OcTextFromPtgStrBuffer = extractOcTextFromPtgStrBuffer([(EDFormula *)self lastExtendedDataForTokenAtIndex:v6 length:&v12]);
        v9 = [MEMORY[0x277CCACA8] stringWithOcText:OcTextFromPtgStrBuffer];
        [array addObject:v9];

        if (OcTextFromPtgStrBuffer)
        {
          (*(*OcTextFromPtgStrBuffer + 8))(OcTextFromPtgStrBuffer);
        }
      }

      v6 = (v6 + 1);
      if (v4 == v6)
      {
        goto LABEL_12;
      }
    }
  }

  array = 0;
LABEL_12:
  array = array;
  v10 = array;
LABEL_14:

  return v10;
}

@end