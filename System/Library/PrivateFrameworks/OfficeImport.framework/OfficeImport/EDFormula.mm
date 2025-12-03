@interface EDFormula
+ (id)formula;
- (BOOL)addArrayWithCol:(int)col andRow:(int)row;
- (BOOL)addToken:(int)token extendedDataLength:(unsigned int)length extendedDataCount:(unsigned int)count;
- (BOOL)convertLastRefsToArea;
- (BOOL)convertToList:(unsigned int)list withFinalParen:(BOOL)paren;
- (BOOL)convertTokensToSharedAtRow:(unsigned int)row column:(unsigned int)column;
- (BOOL)copyTokenAtIndex:(unsigned int)index fromFormula:(id)formula;
- (BOOL)copyTokenFromXlPtg:(XlPtg *)ptg;
- (BOOL)insertExternalName:(unint64_t)name withLink:(unint64_t)link atIndex:(unsigned int)index;
- (BOOL)isCleaned;
- (BOOL)isCleanedWithEvaluationStack;
- (BOOL)isContainsRelativeReferences;
- (BOOL)isSupportedFormula;
- (BOOL)removeTokenAtIndex:(unsigned int)index;
- (BOOL)replaceTokenAtIndex:(unsigned int)index withFormula:(id)formula;
- (BOOL)replaceTokenAtIndex:(unsigned int)index withFormula:(id)formula formulaTokenIndex:(unsigned int)tokenIndex;
- (BOOL)setupTokensWithTokensCount:(unsigned int)count tokensWithDataCount:(unsigned int)dataCount extendedDataLength:(unsigned int)length extendedDataCount:(unsigned int)extendedDataCount;
- (EDFormula)init;
- (EDFormula)initWithFormula:(id)formula;
- (EDToken)tokenAtIndex:(unsigned int)index;
- (NSString)description;
- (char)addToken:(int)token extendedDataLength:(unsigned int)length;
- (char)extendedDataForTokenAtIndex:(unsigned int)index extendedDataIndex:(unsigned int)dataIndex length:(unsigned int *)length;
- (char)lastExtendedDataForTokenAtIndex:(unsigned int)index length:(unsigned int *)length;
- (char)setExtendedDataAtIndex:(unsigned int)index extendedDataIndex:(unsigned int)dataIndex length:(unsigned int)length;
- (char)setExtendedDataForLastTokenAtIndex:(unsigned int)index length:(unsigned int)length;
- (id)lastTokenRefOrArea3dLinkRefIsValid:(BOOL *)valid withEDLinks:(id)links;
- (id)originalFormulaString;
- (id)saveArgs:(unsigned int)args andDelete:(BOOL)delete;
- (id)warning;
- (id)warningParameter;
- (int)tokenTypeAtIndex:(unsigned int)index;
- (int)warningType;
- (unsigned)countExtendedDataForTokenAtIndex:(unsigned int)index;
- (unsigned)firstTokenIndexForArgAtIndex:(unsigned int)index;
- (unsigned)tokenCount;
- (void)archiveByAppendingToMutableData:(__CFData *)data;
- (void)dealloc;
- (void)populateXlPtg:(XlPtg *)ptg index:(unsigned int)index;
- (void)removeAllTokens;
- (void)replaceTokenTypeAtIndex:(unsigned int)index withType:(int)type;
- (void)setCleaned:(BOOL)cleaned;
- (void)setOriginalFormulaString:(id)string;
- (void)setWarning:(int)warning;
- (void)setWarningParameter:(id)parameter;
- (void)setupExtendedDataForTokenAtIndex:(unsigned int)index extendedDataLength:(unsigned int)length extendedDataCount:(unsigned int)count;
- (void)unarchiveFromData:(__CFData *)data offset:(unint64_t *)offset;
- (void)updateCleanedWithEvaluationStack:(BOOL)stack;
- (void)updateContainsRelativeReferences:(BOOL)references;
- (void)xlPtgs;
@end

@implementation EDFormula

+ (id)formula
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (EDFormula)init
{
  v5.receiver = self;
  v5.super_class = EDFormula;
  v2 = [(EDFormula *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(EDFormula *)v2 setupTokensWithTokensCount:0 tokensWithDataCount:0 extendedDataLength:0 extendedDataCount:0];
  }

  return v3;
}

- (unsigned)tokenCount
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      LODWORD(mPackedData) = *(mPackedData + 6);
    }
  }

  return mPackedData;
}

- (id)warning
{
  if ([(EDFormula *)self warningType])
  {
    v2 = kWarningMessageUnsupportedFormulas;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int)warningType
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      LODWORD(mPackedData) = mPackedData[2];
    }
  }

  return mPackedData;
}

- (BOOL)isContainsRelativeReferences
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      LODWORD(mPackedData) = (mPackedData[18] >> 1) & 1;
    }
  }

  return mPackedData;
}

- (void)dealloc
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    CFRelease(mPackedData);
    self->mPackedData = 0;
  }

  v4.receiver = self;
  v4.super_class = EDFormula;
  [(EDFormula *)&v4 dealloc];
}

- (BOOL)isSupportedFormula
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      LOBYTE(mPackedData) = *(mPackedData + 2) == 0;
    }
  }

  return mPackedData;
}

- (BOOL)isCleaned
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      LOBYTE(mPackedData) = *(mPackedData + 18) & 1;
    }
  }

  return mPackedData;
}

- (void)removeAllTokens
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    if (MutableBytePtr)
    {
      *(MutableBytePtr + 6) = 0;
      *(MutableBytePtr + 14) = 0;
      MutableBytePtr[18] &= 0xF8u;
    }
  }
}

- (BOOL)isCleanedWithEvaluationStack
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      LODWORD(mPackedData) = (mPackedData[18] >> 2) & 1;
    }
  }

  return mPackedData;
}

- (id)originalFormulaString
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      mPackedData = [ECPackedDataUtils readStringFromData:mPackedData atOffset:20 withLength:*mPackedData];
    }

    v2 = vars8;
  }

  return mPackedData;
}

- (EDFormula)initWithFormula:(id)formula
{
  formulaCopy = formula;
  v7.receiver = self;
  v7.super_class = EDFormula;
  v5 = [(EDFormula *)&v7 init];
  if (v5)
  {
    v5->mPackedData = CFDataCreateMutableCopy(*MEMORY[0x277CBECE8], 0, formulaCopy[1]);
  }

  return v5;
}

- (BOOL)setupTokensWithTokensCount:(unsigned int)count tokensWithDataCount:(unsigned int)dataCount extendedDataLength:(unsigned int)length extendedDataCount:(unsigned int)extendedDataCount
{
  mPackedData = self->mPackedData;
  Mutable = mPackedData;
  if (!mPackedData)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
    self->mPackedData = Mutable;
  }

  v13 = 6 * count;
  v14 = v13 + 4 * dataCount + 2 * extendedDataCount + length + 20;
  if (mPackedData)
  {
    if (!Mutable)
    {
      return Mutable;
    }

    Mutable = CFDataGetMutableBytePtr(Mutable);
    if (!Mutable)
    {
      return Mutable;
    }

    v15 = *Mutable + Mutable[2] + *(Mutable + 5) + 20;
    v16 = v14 >= v15;
    v17 = v14 - v15;
    if (v16)
    {
      v14 = v17;
    }

    else
    {
      v14 = 0;
    }

    Mutable = self->mPackedData;
  }

  CFDataIncreaseLength(Mutable, v14);
  Mutable = self->mPackedData;
  if (Mutable)
  {
    Mutable = CFDataGetMutableBytePtr(Mutable);
    if (Mutable)
    {
      if (!mPackedData)
      {
        *Mutable = 0;
        *(Mutable + 2) = 0;
        Mutable[2] = 0;
      }

      *(Mutable + 7) = v13;
      *(Mutable + 5) = v13;
      *(Mutable + 3) = 0;
      *(Mutable + 18) &= 0xF8u;
      LOBYTE(Mutable) = 1;
    }
  }

  return Mutable;
}

- (int)tokenTypeAtIndex:(unsigned int)index
{
  v3 = [(EDFormula *)self tokenAtIndex:*&index];
  if (v3)
  {
    LODWORD(v3) = v3->var0;
  }

  return v3;
}

- (void)replaceTokenTypeAtIndex:(unsigned int)index withType:(int)type
{
  typeCopy = type;
  v5 = [(EDFormula *)self tokenAtIndex:*&index];
  if (v5)
  {
    v5->var0 = typeCopy;
  }
}

- (char)extendedDataForTokenAtIndex:(unsigned int)index extendedDataIndex:(unsigned int)dataIndex length:(unsigned int *)length
{
  *length = 0;
  result = [(EDFormula *)self tokenAtIndex:*&index];
  if (result)
  {
    v9 = result;
    if (*(result + 2) == -1)
    {
      return 0;
    }

    result = self->mPackedData;
    if (!result)
    {
      return result;
    }

    result = CFDataGetMutableBytePtr(result);
    if (!result)
    {
      return result;
    }

    v10 = &result[*result + *(result + 2) + *(result + 14) + *(v9 + 2)];
    if (*(v10 + 11) <= dataIndex)
    {
      return 0;
    }

    v11 = v10 + 20;
    v12 = *(v10 + 12);
    for (result = v11 + 6; dataIndex; --dataIndex)
    {
      v13 = &result[v12];
      v14 = *v13;
      result = v13 + 2;
      v12 = v14;
    }

    *length = v12;
  }

  return result;
}

- (char)lastExtendedDataForTokenAtIndex:(unsigned int)index length:(unsigned int *)length
{
  *length = 0;
  result = [(EDFormula *)self tokenAtIndex:*&index];
  if (result)
  {
    v7 = result;
    if (*(result + 2) == -1)
    {
      return 0;
    }

    result = self->mPackedData;
    if (result)
    {
      result = CFDataGetMutableBytePtr(result);
      if (result)
      {
        v8 = &result[*result + *(result + 2) + *(result + 14) + *(v7 + 2)];
        v9 = *(v8 + 11);
        if (*(v8 + 11))
        {
          v10 = v8 + 20;
          v11 = *(v8 + 12);
          result = v10 + 6;
          while (--v9)
          {
            v12 = &result[v11];
            v13 = *v12;
            result = v12 + 2;
            v11 = v13;
          }

          *length = v11;
          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

- (unsigned)countExtendedDataForTokenAtIndex:(unsigned int)index
{
  mPackedData = [(EDFormula *)self tokenAtIndex:*&index];
  if (mPackedData)
  {
    v5 = mPackedData;
    if (*(&mPackedData->var0 + 1) == -1)
    {
      LODWORD(mPackedData) = 0;
    }

    else
    {
      mPackedData = self->mPackedData;
      if (mPackedData)
      {
        mPackedData = CFDataGetMutableBytePtr(mPackedData);
        if (mPackedData)
        {
          LODWORD(mPackedData) = *(&mPackedData[2].var1 + mPackedData->var0 + LOWORD(mPackedData->var1) + *(&mPackedData[1].var1 + 2) + *(&v5->var0 + 1) + 2);
        }
      }
    }
  }

  return mPackedData;
}

- (char)addToken:(int)token extendedDataLength:(unsigned int)length
{
  v4 = *&length;
  if (![(EDFormula *)self addToken:*&token extendedDataLength:*&length extendedDataCount:length != 0])
  {
    return 0;
  }

  mPackedData = self->mPackedData;
  if (!mPackedData)
  {
    return 0;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
  if (!MutableBytePtr)
  {
    return 0;
  }

  v8 = (*(MutableBytePtr + 6) - 1);

  return [(EDFormula *)self setExtendedDataAtIndex:v8 extendedDataIndex:0 length:v4];
}

- (BOOL)addToken:(int)token extendedDataLength:(unsigned int)length extendedDataCount:(unsigned int)count
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    tokenCopy = token;
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      v10 = mPackedData;
      v11 = 2 * count + 4;
      if (!count)
      {
        v11 = 0;
      }

      v12 = v11 + length;
      v13 = *mPackedData;
      v14 = mPackedData[2];
      v15 = mPackedData + v13 + v14;
      v16 = (v13 + v14 + 20);
      v17 = &v15[6 * *(mPackedData + 3)] - (mPackedData + v16) + 26;
      v18 = *(mPackedData + 7);
      if (v17 <= v18)
      {
        v19 = v12;
      }

      else
      {
        v19 = v12 + 6;
      }

      v20 = v16 + *(mPackedData + 5) + v19;
      if (v20 <= CFDataGetLength(self->mPackedData) || (CFDataIncreaseLength(self->mPackedData, v19), mPackedData = CFDataGetMutableBytePtr(self->mPackedData), (v10 = mPackedData) != 0))
      {
        if (v17 > v18)
        {
          v21 = *v10 + v10[2] + 20;
          memmove(v10 + (v21 + *(v10 + 7)) + 6, v10 + (v21 + *(v10 + 7)), (*(v10 + 5) - *(v10 + 7)));
          *(v10 + 5) = vadd_s32(*(v10 + 5), 0x600000006);
        }

        v22 = *(v10 + 3);
        *(v10 + 3) = v22 + 1;
        v23 = &v10[3 * v22] + *v10 + v10[2];
        *(v23 + 20) = tokenCopy;
        *(v23 + 22) = -1;
        if (count)
        {
          [EDFormula setupExtendedDataForTokenAtIndex:"setupExtendedDataForTokenAtIndex:extendedDataLength:extendedDataCount:" extendedDataLength:? extendedDataCount:?];
        }

        LOBYTE(mPackedData) = 1;
      }
    }
  }

  return mPackedData;
}

- (char)setExtendedDataAtIndex:(unsigned int)index extendedDataIndex:(unsigned int)dataIndex length:(unsigned int)length
{
  v7 = *&index;
  result = [(EDFormula *)self tokenAtIndex:?];
  if (result)
  {
    v10 = result;
    if (*(result + 2) == -1)
    {
      return 0;
    }

    result = self->mPackedData;
    if (!result)
    {
      return result;
    }

    result = CFDataGetMutableBytePtr(result);
    if (!result)
    {
      return result;
    }

    v11 = *(result + 14);
    v12 = *(v10 + 2);
    v13 = &result[*result + *(result + 2) + v11 + v12];
    if (*(v13 + 11) <= dataIndex)
    {
      return 0;
    }

    v14 = (v13 + 20);
    v15 = v13 + 26;
    v16 = 0;
    if (dataIndex)
    {
      v17 = v14 + 2;
      dataIndexCopy = dataIndex;
      do
      {
        v19 = *v17;
        v16 += v19;
        v17 = (v15 + v19);
        v15 = v17 + 1;
        --dataIndexCopy;
      }

      while (dataIndexCopy);
    }

    *(v15 - 1) = length;
    v20 = v16 + length;
    v21 = *v14;
    if (v20 > v21)
    {
      v22 = v11 + v12 + *result + *(result + 2) + 24;
      v23 = v21 + 2 * v14[1];
      [EDFormula setupExtendedDataForTokenAtIndex:"setupExtendedDataForTokenAtIndex:extendedDataLength:extendedDataCount:" extendedDataLength:v7 extendedDataCount:?];
      MutableBytePtr = CFDataGetMutableBytePtr(self->mPackedData);
      v25 = &MutableBytePtr[*MutableBytePtr + 20 + *(MutableBytePtr + 2)];
      v14 = (v25 + *(MutableBytePtr + 14) + *(v25 + 6 * v7 + 2));
      v26 = v14 + 2;
      memcpy(v14 + 2, &MutableBytePtr[v22], v23);
      v15 = v14 + 3;
      if (dataIndex)
      {
        dataIndexCopy2 = dataIndex;
        do
        {
          v26 = (v15 + *v26);
          v15 = v26 + 1;
          --dataIndexCopy2;
        }

        while (dataIndexCopy2);
      }
    }

    v28 = dataIndex + 1;
    if (dataIndex + 1 < v14[1])
    {
      v29 = v15;
      do
      {
        v30 = (v29 + *(v29 - 1));
        *v30 = 0;
        v29 = v30 + 1;
        ++v28;
      }

      while (v28 < v14[1]);
    }

    bzero(v15, length);
    if (length)
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setupExtendedDataForTokenAtIndex:(unsigned int)index extendedDataLength:(unsigned int)length extendedDataCount:(unsigned int)count
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    if (MutableBytePtr)
    {
      v11 = MutableBytePtr;
      v12 = *MutableBytePtr + *(MutableBytePtr + 2) + *(MutableBytePtr + 10) + 20;
      v13 = length + 2 * count + 4;
      if (v12 + v13 > CFDataGetLength(self->mPackedData))
      {
        CFDataIncreaseLength(self->mPackedData, v13);
        v11 = CFDataGetMutableBytePtr(self->mPackedData);
      }

      v14 = &v11[v12];
      *v14 = length;
      *(v14 + 1) = count;
      *&v11[6 * index + 22 + *v11 + *(v11 + 2)] = v12 - (*v11 + *(v11 + 2) + *(v11 + 14)) - 20;
      *(v11 + 10) += length + 2 * count + 4;
      if (count)
      {
        v15 = 0;
        v16 = v14 + 6;
        do
        {
          *(v16 - 1) = 0;
          v16 += v15++ < count - 1;
        }

        while (count != v15);
      }
    }
  }
}

- (BOOL)copyTokenAtIndex:(unsigned int)index fromFormula:(id)formula
{
  v4 = *&index;
  formulaCopy = formula;
  v7 = formulaCopy;
  if (formulaCopy)
  {
    v8 = formulaCopy[1];
    if (v8)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(v8);
      if (MutableBytePtr)
      {
        v10 = &MutableBytePtr[*MutableBytePtr + 20 + *(MutableBytePtr + 2)];
        v11 = *(v10 + 6 * v4 + 2);
        if (v11 == -1)
        {
          v12 = 0;
          v14 = 0;
          v13 = 0;
        }

        else
        {
          v12 = (v10 + *(MutableBytePtr + 14) + v11);
          v13 = v12[1];
          v14 = *v12;
        }

        if (!-[EDFormula addToken:extendedDataLength:extendedDataCount:](self, "addToken:extendedDataLength:extendedDataCount:", [v7 tokenTypeAtIndex:v4], v14, v13) || (mPackedData = self->mPackedData) == 0 || (v16 = CFDataGetMutableBytePtr(mPackedData)) == 0)
        {
          v25 = 0;
          goto LABEL_24;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (*(v16 + 6) - 1);
          while (1)
          {
            v19 = v12[2];
            if (v17)
            {
              v20 = v17;
              v21 = (v12 + 3);
              do
              {
                v22 = &v21[v19];
                v23 = *v22;
                v21 = v22 + 2;
                v19 = v23;
                --v20;
              }

              while (v20);
              if (v19)
              {
LABEL_18:
                v24 = [(EDFormula *)self setExtendedDataAtIndex:v18 extendedDataIndex:v17 length:v19];
                if (v24)
                {
                  memcpy(v24, v21, v19);
                }
              }
            }

            else
            {
              v21 = (v12 + 3);
              if (v12[2])
              {
                goto LABEL_18;
              }
            }

            v17 = (v17 + 1);
            v25 = 1;
            if (v17 == v13)
            {
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

  v25 = 1;
LABEL_24:

  return v25;
}

- (BOOL)copyTokenFromXlPtg:(XlPtg *)ptg
{
  if (ptg)
  {
    NumberOfExtendedDataEntries = XlPtg::getNumberOfExtendedDataEntries(ptg);
    LODWORD(mPackedData) = [(EDFormula *)self addToken:ptg->var1 extendedDataLength:XlPtg::getTotalSizeOfExtendedData(ptg) extendedDataCount:NumberOfExtendedDataEntries];
    if (mPackedData)
    {
      mPackedData = self->mPackedData;
      if (mPackedData)
      {
        mPackedData = CFDataGetMutableBytePtr(mPackedData);
        if (mPackedData)
        {
          if (NumberOfExtendedDataEntries)
          {
            v7 = 0;
            v8 = (*(mPackedData + 6) - 1);
            do
            {
              LODWORD(__n) = 0;
              ExtendedData = XlPtg::getExtendedData(ptg, v7, &__n);
              if (ExtendedData)
              {
                v10 = ExtendedData;
                v11 = [(EDFormula *)self setExtendedDataAtIndex:v8 extendedDataIndex:v7 length:__n];
                if (v11)
                {
                  memcpy(v11, v10, __n);
                }
              }

              v7 = (v7 + 1);
            }

            while (NumberOfExtendedDataEntries != v7);
          }

          LOBYTE(mPackedData) = 1;
        }
      }
    }
  }

  else
  {
    LOBYTE(mPackedData) = 1;
  }

  return mPackedData;
}

- (BOOL)removeTokenAtIndex:(unsigned int)index
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      v5 = mPackedData;
      v6 = *(mPackedData + 3);
      if (v6 <= index)
      {
        LOBYTE(mPackedData) = 0;
      }

      else
      {
        v7 = mPackedData + *mPackedData + mPackedData[2] + 20;
        v8 = v7 + 6 * index;
        v9 = *(v8 + 2);
        if (v9 == -1)
        {
          v10 = 0;
        }

        else
        {
          v10 = (v7 + *(v5 + 7) + v9);
        }

        v11 = v6 - 1;
        if (v11 != index)
        {
          memmove(v8, (v8 + 6), 6 * (v11 - index));
          v11 = *(v5 + 3) - 1;
        }

        *(v5 + 3) = v11;
        if (v10)
        {
          v12 = *v10 + 2 * v10[1] + 4;
          v13 = *(v5 + 5);
          if (v5 + *v5 + v5[2] + v13 + 20 == v10 + v12)
          {
            *(v5 + 5) = v13 - v12;
          }
        }

        LOBYTE(mPackedData) = 1;
      }
    }
  }

  return mPackedData;
}

- (BOOL)replaceTokenAtIndex:(unsigned int)index withFormula:(id)formula
{
  formulaCopy = formula;
  if ([(EDFormula *)self tokenCount]<= index || ([(EDFormula *)self warning], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = 0;
  }

  else
  {
    v10 = objc_alloc_init(EDFormula);
    if (!v10)
    {
      goto LABEL_24;
    }

    if (index)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (![(EDFormula *)v10 copyTokenAtIndex:v12 fromFormula:self])
        {
          break;
        }

        v12 = (v12 + 1);
        v11 = v12 >= index;
      }

      while (index != v12);
    }

    else
    {
      v11 = 1;
    }

    v13 = 0;
    while ((v11 & (v13 < [formulaCopy tokenCount])) != 0)
    {
      v14 = [(EDFormula *)v10 copyTokenAtIndex:v13 fromFormula:formulaCopy];
      v13 = (v13 + 1);
      if (!v14)
      {
        v11 = 0;
        break;
      }
    }

    v15 = index + 1;
    while ((v11 & (v15 < [(EDFormula *)self tokenCount])) != 0)
    {
      v16 = [(EDFormula *)v10 copyTokenAtIndex:v15 fromFormula:self];
      v15 = (v15 + 1);
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    if (v11)
    {
      mPackedData = self->mPackedData;
      if (mPackedData)
      {
        CFRelease(mPackedData);
      }

      MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v10->mPackedData);
      self->mPackedData = MutableCopy;
      v8 = MutableCopy != 0;
    }

    else
    {
LABEL_24:
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)replaceTokenAtIndex:(unsigned int)index withFormula:(id)formula formulaTokenIndex:(unsigned int)tokenIndex
{
  v5 = *&tokenIndex;
  v6 = *&index;
  formulaCopy = formula;
  mPackedData = self->mPackedData;
  if (mPackedData && (MutableBytePtr = CFDataGetMutableBytePtr(mPackedData)) != 0 && (v11 = CFDataGetMutableBytePtr(formulaCopy[1])) != 0)
  {
    v12 = &v11[*v11 + 20 + *(v11 + 2)];
    v13 = *(v12 + 6 * v5 + 2);
    if (v13 == -1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v14 = (v12 + *(v11 + 14) + v13);
      v15 = v14[1];
      v16 = *v14;
    }

    v18 = *MutableBytePtr;
    v19 = *(MutableBytePtr + 2);
    v20 = [(CFMutableDataRef *)formulaCopy tokenTypeAtIndex:v5];
    v21 = &MutableBytePtr[6 * v6 + v18 + v19];
    *(v21 + 20) = v20;
    *(v21 + 22) = -1;
    [(EDFormula *)self setupExtendedDataForTokenAtIndex:v6 extendedDataLength:v16 extendedDataCount:v15];
    if (v15)
    {
      v22 = 0;
      do
      {
        v23 = v14[2];
        if (v22)
        {
          v24 = v22;
          v25 = (v14 + 3);
          do
          {
            v26 = &v25[v23];
            v27 = *v26;
            v25 = v26 + 2;
            v23 = v27;
            --v24;
          }

          while (v24);
          if (v23)
          {
LABEL_16:
            v28 = [(EDFormula *)self setExtendedDataAtIndex:v6 extendedDataIndex:v22 length:v23];
            if (v28)
            {
              memcpy(v28, v25, v23);
            }
          }
        }

        else
        {
          v25 = (v14 + 3);
          if (v14[2])
          {
            goto LABEL_16;
          }
        }

        v22 = (v22 + 1);
      }

      while (v22 != v15);
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)populateXlPtg:(XlPtg *)ptg index:(unsigned int)index
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    v6 = *&index;
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    if (ptg)
    {
      v9 = MutableBytePtr;
      if (MutableBytePtr)
      {
        XlPtg::XlPtg(ptg);
        v10 = [(EDFormula *)self tokenAtIndex:v6];
        if (v10)
        {
          ptg->var1 = v10->var0;
          v11 = *(&v10->var0 + 1);
          if (v11 != -1)
          {
            v12 = &v9[*v9 + *(v9 + 2) + *(v9 + 14) + v11];
            v14 = *(v12 + 10);
            v13 = (v12 + 20);
            if (v14)
            {
              v15 = *(v13 + 1);
              if (v15)
              {

                XlPtg::setExtendedData(ptg, v13 + 4, v15);
              }
            }
          }
        }
      }
    }
  }
}

- (void)xlPtgs
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    if (MutableBytePtr)
    {
      if (*(MutableBytePtr + 6))
      {
        operator new();
      }
    }
  }

  return 0;
}

- (BOOL)convertTokensToSharedAtRow:(unsigned int)row column:(unsigned int)column
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    columnCopy = column;
    rowCopy = row;
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      v7 = mPackedData;
      v8 = *(mPackedData + 3);
      if (!v8)
      {
        LOBYTE(mPackedData) = 0;
        return mPackedData;
      }

      for (i = mPackedData; ; i += 3)
      {
        v10 = *v7 + v7[2];
        v11 = i + v10;
        v12 = *(i + v10 + 22);
        if (v12 == -1)
        {
          goto LABEL_19;
        }

        v13 = (v7 + v10 + *(v7 + 7) + v12 + 20);
        if (!*v13 || !v13[1])
        {
          goto LABEL_19;
        }

        v14 = v13 + 3;
        v15 = *(v11 + 10);
        if (v15 <= 0x44)
        {
          break;
        }

        switch(v15)
        {
          case 'e':
            goto LABEL_16;
          case 'd':
            goto LABEL_17;
          case 'E':
            goto LABEL_16;
        }

LABEL_19:
        if (!--v8)
        {
          LOBYTE(mPackedData) = 1;
          return mPackedData;
        }
      }

      if (v15 == 36)
      {
LABEL_17:
        v16 = 4;
      }

      else if (v15 == 37)
      {
LABEL_16:
        adjustRowAndColumn(v14, v13 + 5, rowCopy, columnCopy);
        v14 = v13 + 4;
        v16 = 6;
      }

      else
      {
        v16 = 4;
        if (v15 != 68)
        {
          goto LABEL_19;
        }
      }

      adjustRowAndColumn(v14, &v13[v16], rowCopy, columnCopy);
      *(v11 + 10) = v15 + 8;
      goto LABEL_19;
    }
  }

  return mPackedData;
}

- (void)setOriginalFormulaString:(id)string
{
  stringCopy = string;
  if (!([stringCopy length] >> 16))
  {
    mPackedData = self->mPackedData;
    if (mPackedData)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
      if (MutableBytePtr)
      {
        v7 = *MutableBytePtr;
        v9 = 0;
        [ECPackedDataUtils writeString:"writeString:toPackedData:packedDataSize:atIndex:withPreviousLength:outLength:" toPackedData:stringCopy packedDataSize:self->mPackedData atIndex:v7 + *(MutableBytePtr + 2) + *(MutableBytePtr + 10) + 20 withPreviousLength:20 outLength:?];
        v8 = CFDataGetMutableBytePtr(self->mPackedData);
        *v8 = v9;
      }
    }
  }
}

- (void)setWarning:(int)warning
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    warningCopy = warning;
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    if (MutableBytePtr)
    {
      MutableBytePtr[2] = warningCopy;
    }
  }
}

- (id)warningParameter
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    mPackedData = CFDataGetMutableBytePtr(mPackedData);
    if (mPackedData)
    {
      mPackedData = [ECPackedDataUtils readStringFromData:mPackedData atOffset:*mPackedData + 20 withLength:mPackedData[2]];
    }

    v2 = vars8;
  }

  return mPackedData;
}

- (void)setWarningParameter:(id)parameter
{
  parameterCopy = parameter;
  if (!([parameterCopy length] >> 16))
  {
    mPackedData = self->mPackedData;
    if (mPackedData)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
      if (MutableBytePtr)
      {
        v7 = *(MutableBytePtr + 2);
        v8 = *MutableBytePtr + 20;
        v10 = 0;
        [ECPackedDataUtils writeString:"writeString:toPackedData:packedDataSize:atIndex:withPreviousLength:outLength:" toPackedData:parameterCopy packedDataSize:self->mPackedData atIndex:(v8 + v7 + *(MutableBytePtr + 10)) withPreviousLength:? outLength:?];
        v9 = CFDataGetMutableBytePtr(self->mPackedData);
        *(v9 + 2) = v10;
      }
    }
  }
}

- (void)setCleaned:(BOOL)cleaned
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    if (MutableBytePtr)
    {
      MutableBytePtr[18] = MutableBytePtr[18] & 0xFE | cleaned;
    }
  }
}

- (void)updateContainsRelativeReferences:(BOOL)references
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    referencesCopy = references;
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    if (MutableBytePtr)
    {
      v6 = MutableBytePtr[18];
      if (referencesCopy | ((v6 & 2) >> 1))
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }

      MutableBytePtr[18] = v7 | v6 & 0xFD;
    }
  }
}

- (void)updateCleanedWithEvaluationStack:(BOOL)stack
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    stackCopy = stack;
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    if (MutableBytePtr)
    {
      v6 = MutableBytePtr[18];
      if (stackCopy | ((v6 & 4) >> 2))
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }

      MutableBytePtr[18] = v7 | v6 & 0xFB;
    }
  }
}

- (unsigned)firstTokenIndexForArgAtIndex:(unsigned int)index
{
  v3 = [EDTokenTree buildSubtree:*&index formula:self];
  if (v3)
  {
    while (1)
    {
      firstChild = [v3 firstChild];

      if (!firstChild)
      {
        break;
      }

      v5 = firstChild;

      v3 = v5;
    }
  }

  tokenIndex = [v3 tokenIndex];

  return tokenIndex;
}

- (id)saveArgs:(unsigned int)args andDelete:(BOOL)delete
{
  if (args)
  {
    deleteCopy = delete;
    v7 = +[EDFormula formula];
    tokenCount = [(EDFormula *)self tokenCount];
    LODWORD(v9) = tokenCount;
    if (tokenCount)
    {
      v10 = 0;
      v11 = tokenCount - 1;
      v12 = tokenCount - 1;
      while (1)
      {
        v13 = [(EDFormula *)self firstTokenIndexForArgAtIndex:v12 - (v10 != 0)];
        v12 = v13;
        if (!v13)
        {
          break;
        }

        if (args == ++v10)
        {
          if (v13 > v11)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      v14 = v13;
      do
      {
        [v7 copyTokenAtIndex:v14 fromFormula:self];
        v14 = (v14 + 1);
      }

      while (v9 != v14);
LABEL_9:
      if (deleteCopy && v11 >= v12)
      {
        do
        {
          v9 = (v9 - 1);
          [(EDFormula *)self removeTokenAtIndex:v9];
        }

        while (v9 > v12);
      }

      v15 = v7;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)insertExternalName:(unint64_t)name withLink:(unint64_t)link atIndex:(unsigned int)index
{
  linkCopy = link;
  nameCopy = name;
  if (index)
  {
    v8 = [(EDFormula *)self saveArgs:*&index andDelete:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(EDFormula *)self addToken:57 extendedDataLength:6];
  v10 = v9;
  if (v9)
  {
    *v9 = linkCopy;
    *(v9 + 1) = nameCopy;
    *(v9 + 2) = 0;
    if (v8)
    {
      tokenCount = [v8 tokenCount];
      if (tokenCount)
      {
        v12 = 0;
        do
        {
          [(EDFormula *)self copyTokenAtIndex:v12 fromFormula:v8];
          v12 = (v12 + 1);
        }

        while (tokenCount != v12);
      }
    }
  }

  return v10 != 0;
}

- (BOOL)addArrayWithCol:(int)col andRow:(int)row
{
  [(EDFormula *)self addToken:96 extendedDataLength:8 extendedDataCount:(col + 1 + (col + 1) * row + 2)];
  v7 = [(EDFormula *)self setExtendedDataForLastTokenAtIndex:0 length:4];
  v8 = [(EDFormula *)self setExtendedDataForLastTokenAtIndex:1 length:4];
  if (col <= 255)
  {
    colCopy = col;
  }

  else
  {
    colCopy = 0;
  }

  *v7 = colCopy;
  *v8 = row;
  return 1;
}

- (char)setExtendedDataForLastTokenAtIndex:(unsigned int)index length:(unsigned int)length
{
  v4 = *&length;
  v5 = *&index;
  v7 = [(EDFormula *)self tokenCount]- 1;

  return [(EDFormula *)self setExtendedDataAtIndex:v7 extendedDataIndex:v5 length:v4];
}

- (BOOL)convertToList:(unsigned int)list withFinalParen:(BOOL)paren
{
  parenCopy = paren;
  if (list > 2)
  {
    tokenCount = [(EDFormula *)self tokenCount];
    if (tokenCount >= list)
    {
      v10 = tokenCount;
      v31 = tokenCount - 1;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      std::vector<unsigned int>::push_back[abi:ne200100](&v28, &v31);
      while (1)
      {
        v11 = [(EDFormula *)self firstTokenIndexForArgAtIndex:v31];
        v31 = v11;
        if (!v11)
        {
          break;
        }

        v31 = v11 - 1;
        std::vector<unsigned int>::push_back[abi:ne200100](&v28, &v31);
        v12 = v28;
        v13 = (v29 - v28) >> 2;
        if (v13 >= list)
        {
          goto LABEL_16;
        }
      }

      v12 = v28;
      v13 = (v29 - v28) >> 2;
LABEL_16:
      if (v13 == list)
      {
        v14 = +[EDFormula formula];
        v15 = v29;
        if (v29 == v28)
        {
          v21 = 0;
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          do
          {
            v20 = *(v15 - 1);
            v15 -= 4;
            v19 = v20;
            v21 = v20;
            if (v16)
            {
              for (i = v18 + 1; i < v19; i = v23)
              {
                v23 = i + 1;
                [v14 copyTokenAtIndex:? fromFormula:?];
              }

              v21 = v17;
            }

            [v14 copyTokenAtIndex:v19 fromFormula:self];
            if (++v16 >= 2)
            {
              [v14 addToken:16 extendedDataLength:0];
            }

            v17 = v21;
            v18 = v19;
          }

          while (v15 != v28);
        }

        v24 = v10 >= v21;
        v25 = v10 - v21;
        if (v25 != 0 && v24)
        {
          do
          {
            [(EDFormula *)self removeTokenAtIndex:v21];
            --v25;
          }

          while (v25);
        }

        tokenCount2 = [v14 tokenCount];
        if (tokenCount2)
        {
          v27 = 0;
          do
          {
            [(EDFormula *)self copyTokenAtIndex:v27 fromFormula:v14];
            v27 = (v27 + 1);
          }

          while (tokenCount2 != v27);
        }

        if (parenCopy)
        {
          v9 = addOperator(self, 21);
        }

        else
        {
          v9 = 1;
        }

        v12 = v28;
        if (!v28)
        {
          return v9;
        }
      }

      else
      {
        v9 = 0;
        if (!v12)
        {
          return v9;
        }
      }

      v29 = v12;
      operator delete(v12);
      return v9;
    }

    return 0;
  }

  if (list == 2)
  {
    addOperator(self, 16);
  }

  if (!parenCopy)
  {
    return 1;
  }

  return addOperator(self, 21);
}

- (BOOL)convertLastRefsToArea
{
  tokenCount = [(EDFormula *)self tokenCount];
  v4 = [(EDFormula *)self tokenTypeAtIndex:tokenCount - 2];
  v5 = tokenCount - 1;
  v6 = [(EDFormula *)self tokenTypeAtIndex:v5];
  v7 = tokenCount >= 2;
  v8 = tokenCount - 2;
  if (v7 && (v6 == 90 || v6 == 68) && (v4 == 68 || v4 == 90))
  {
    v15 = 0;
    v9 = [(EDFormula *)self extendedDataForTokenAtIndex:v8 extendedDataIndex:0 length:&v15];
    v10 = [(EDFormula *)self extendedDataForTokenAtIndex:v5 extendedDataIndex:0 length:&v15];
    if (v4 == 90)
    {
      v11 = refTypeOf(0x5Au);
      v12 = addArea3DOperandFromRef3DExtendedData(self, v11, v9, v10);
    }

    else
    {
      v12 = addAreaOperandFromRefExtendedData(self, v9, v10);
    }

    v13 = v12;
    [(EDFormula *)self removeTokenAtIndex:v5];
    [(EDFormula *)self removeTokenAtIndex:v8];
  }

  else
  {
    [(EDFormula *)self setWarning:6];
    return 0;
  }

  return v13;
}

- (id)lastTokenRefOrArea3dLinkRefIsValid:(BOOL *)valid withEDLinks:(id)links
{
  linksCopy = links;
  tokenCount = [(EDFormula *)self tokenCount];
  if (!tokenCount)
  {
    goto LABEL_9;
  }

  v8 = tokenCount - 1;
  v9 = [(EDFormula *)self tokenTypeAtIndex:v8];
  v10 = 0;
  v11 = v9 - 22;
  if ((v9 - 22) <= 0x2F)
  {
    if (((1 << v11) & 0xC0000000C001) != 0)
    {
LABEL_10:
      if (!valid)
      {
        goto LABEL_13;
      }

      v14 = v10 != 0;
      goto LABEL_12;
    }

    if (((1 << v11) & 0x3000000000) != 0)
    {
LABEL_7:
      v16 = 0;
      v13 = [(EDFormula *)self extendedDataForTokenAtIndex:v8 extendedDataIndex:0 length:&v16];
      if (v13)
      {
        v10 = [linksCopy referenceAtIndex:*v13];
        goto LABEL_10;
      }

LABEL_9:
      v10 = 0;
      goto LABEL_10;
    }
  }

  v12 = v9 - 90;
  if ((v9 - 90) <= 0x21)
  {
    if (((1 << v12) & 0x300000003) != 0)
    {
      goto LABEL_7;
    }

    if (((1 << v12) & 0xC00) != 0)
    {
      goto LABEL_10;
    }
  }

  v10 = 0;
  if (valid)
  {
    v14 = 0;
LABEL_12:
    *valid = v14;
  }

LABEL_13:

  return v10;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDFormula;
  v2 = [(EDFormula *)&v4 description];

  return v2;
}

- (EDToken)tokenAtIndex:(unsigned int)index
{
  result = self->mPackedData;
  if (result)
  {
    result = CFDataGetMutableBytePtr(result);
    if (result)
    {
      if (*(&result->var1 + 2) <= index)
      {
        return 0;
      }

      else
      {
        return (result + 6 * index + result->var0 + LOWORD(result->var1) + 20);
      }
    }
  }

  return result;
}

- (void)unarchiveFromData:(__CFData *)data offset:(unint64_t *)offset
{
  if (data)
  {
    BytePtr = CFDataGetBytePtr(data);
    if (BytePtr)
    {
      v7 = BytePtr;
      CFDataSetLength(self->mPackedData, 0);
      v8 = &v7[*offset];
      v9 = *v8 + *(v8 + 2) + *(v8 + 10) + 20;
      CFDataAppendBytes(self->mPackedData, v8, v9);
      *offset += v9;
    }
  }
}

- (void)archiveByAppendingToMutableData:(__CFData *)data
{
  mPackedData = self->mPackedData;
  if (mPackedData)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedData);
    if (MutableBytePtr)
    {
      v6 = *MutableBytePtr + *(MutableBytePtr + 2) + *(MutableBytePtr + 10) + 20;

      CFDataAppendBytes(data, MutableBytePtr, v6);
    }
  }
}

@end