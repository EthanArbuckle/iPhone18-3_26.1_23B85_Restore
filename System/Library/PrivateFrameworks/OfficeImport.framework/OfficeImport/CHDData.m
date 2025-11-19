@interface CHDData
+ (CHDData)dataWithDataPointCount:(unint64_t)a3 resources:(id)a4;
+ (CHDData)dataWithResources:(id)a3;
- (CGPoint)minMaxValues;
- (CHDData)initWithDataPointCount:(unint64_t)a3 resources:(id)a4;
- (CHDData)initWithResources:(id)a3;
- (id)contentFormat;
- (id)description;
- (id)firstValueContentFormatWithWorkbook:(id)a3;
- (unint64_t)averageDataPointDecimalCount;
- (unint64_t)countOfCellsBeingReferenced;
- (unint64_t)dataValueIndexCount;
- (void)setContentFormat:(id)a3;
- (void)setFormula:(id)a3 chart:(id)a4;
@end

@implementation CHDData

- (id)contentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained contentFormats];
  v5 = [v4 objectWithKey:self->mContentFormatId];

  return v5;
}

- (unint64_t)dataValueIndexCount
{
  v3 = [(CHDDataValuesCollection *)self->mDataValues count];
  result = self->mDataValueIndexCount;
  if (v3 > result)
  {
    result = [(CHDDataValuesCollection *)self->mDataValues count];
    self->mDataValueIndexCount = result;
  }

  return result;
}

- (unint64_t)countOfCellsBeingReferenced
{
  v3 = [(CHDFormula *)self->mFormula references];

  if (v3)
  {
    mFormula = self->mFormula;

    return [(CHDFormula *)mFormula countOfCellsBeingReferenced];
  }

  else
  {

    return [(CHDData *)self dataValueIndexCount];
  }
}

- (CHDData)initWithResources:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CHDData;
  v5 = [(CHDData *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v7 = objc_alloc_init(CHDDataValuesCollection);
    mDataValues = v6->mDataValues;
    v6->mDataValues = v7;

    *&v6->mContentFormatId = xmmword_25D6FE620;
  }

  return v6;
}

- (CHDData)initWithDataPointCount:(unint64_t)a3 resources:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CHDData;
  v7 = [(CHDData *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->mResources, v6);
    v9 = [[CHDDataValuesCollection alloc] initWithDataPointCount:a3];
    mDataValues = v8->mDataValues;
    v8->mDataValues = v9;

    *&v8->mContentFormatId = xmmword_25D6FE620;
  }

  return v8;
}

+ (CHDData)dataWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

+ (CHDData)dataWithDataPointCount:(unint64_t)a3 resources:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithDataPointCount:a3 resources:v5];

  return v6;
}

- (CGPoint)minMaxValues
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  v5 = [(CHDDataValuesCollection *)self->mDataValues count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 2.22507386e-308;
    v9 = 2.22507386e-308;
    while (1)
    {
      v10 = [(CHDDataValuesCollection *)self->mDataValues dataPointAtIndex:v7];
      if (!v10)
      {
        goto LABEL_11;
      }

      v11 = v10;
      if (CsLeReadSInt32(&v10->value) != 2)
      {
        goto LABEL_11;
      }

      v12 = EDValue::numberValue(&v11->value);
      if (v8 == 2.22507386e-308 && v9 == 2.22507386e-308)
      {
        v9 = v12;
      }

      else
      {
        if (v12 > v9)
        {
          v9 = v12;
LABEL_11:
          v12 = v8;
          goto LABEL_12;
        }

        if (v12 >= v8)
        {
          goto LABEL_11;
        }
      }

LABEL_12:
      ++v7;
      v8 = v12;
      if (v6 == v7)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = 2.22507386e-308;
  v12 = 2.22507386e-308;
LABEL_15:
  if (v12 != 2.22507386e-308 && v9 != 2.22507386e-308)
  {
    v13 = v9;
  }

  else
  {
    v12 = v3;
    v13 = v4;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (unint64_t)averageDataPointDecimalCount
{
  result = [(CHDDataValuesCollection *)self->mDataValues count];
  if (result)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    for (i = 0; i != v4; ++i)
    {
      v8 = [(CHDDataValuesCollection *)self->mDataValues dataPointAtIndex:i];
      if (v8)
      {
        v9 = v8;
        if (CsLeReadSInt32(&v8->value) == 2)
        {
          v10 = [MEMORY[0x277CCABB0] numberWithDouble:EDValue::numberValue(&v9->value)];
          v11 = [v10 stringValue];

          v12 = [v11 rangeOfString:@"."];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [v11 length];
            v14 = v13 + ~v12;
            if (v14 >= 0xF)
            {
              v15 = [v11 substringWithRange:{0, objc_msgSend(v11, "length") - 1}];

              if ([v15 hasSuffix:@"0"])
              {
                v14 = v13 - v12 - 2;
                while ([v15 hasSuffix:@"0"])
                {
                  v16 = [v15 substringWithRange:{0, objc_msgSend(v15, "length") - 1}];

                  --v14;
                  v15 = v16;
                }
              }

              else if ([v15 hasSuffix:@"9"])
              {
                while ([v15 hasSuffix:@"9"])
                {
                  v17 = [v15 substringWithRange:{0, objc_msgSend(v15, "length") - 1}];

                  --v14;
                  v15 = v17;
                }
              }

              v11 = v15;
            }

            v5 += v14;
          }

          ++v6;
        }
      }
    }

    if (v6)
    {
      return vcvtas_u32_f32(v5 / v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setFormula:(id)a3 chart:(id)a4
{
  v11 = a3;
  v7 = a4;
  mFormula = self->mFormula;
  p_mFormula = &self->mFormula;
  if (mFormula != v11)
  {
    objc_storeStrong(p_mFormula, a3);
    if (*p_mFormula)
    {
      v10 = [v7 processors];
      [v10 markObject:v11 processor:objc_opt_class()];
    }
  }
}

- (void)setContentFormat:(id)a3
{
  v8 = a3;
  v4 = [v8 formatId];
  if (v4 == -1)
  {
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v6 = [WeakRetained contentFormats];

    v7 = [v6 objectAtIndex:{objc_msgSend(v6, "addOrEquivalentObject:", v8)}];
    self->mContentFormatId = [v7 formatId];
  }

  else
  {
    self->mContentFormatId = v4;
  }
}

- (id)firstValueContentFormatWithWorkbook:(id)a3
{
  v4 = a3;
  mFormula = self->mFormula;
  if (mFormula)
  {
    v6 = [(CHDFormula *)mFormula references];

    if (v6)
    {
      v7 = [(CHDFormula *)self->mFormula references];
      v8 = [EDReferenceIterator referenceIteratorWithReferenceArray:v7 workbook:v4];

      v9 = [v8 nextCell];
      if (!v9)
      {
LABEL_9:

        goto LABEL_11;
      }

      WeakRetained = objc_loadWeakRetained(&self->mResources);
      v11 = styleForEDCell(v9, WeakRetained);
      v9 = [v11 contentFormat];

LABEL_8:
      goto LABEL_9;
    }
  }

  if ([(CHDDataValuesCollection *)self->mDataValues count])
  {
    v9 = [(CHDDataValuesCollection *)self->mDataValues dataPointAtIndex:0];
    if (!v9)
    {
      goto LABEL_11;
    }

    v8 = objc_loadWeakRetained(&self->mResources);
    WeakRetained = [v8 contentFormats];
    v9 = [(EDResources *)WeakRetained objectWithKey:v9->contentFormatId];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDData;
  v2 = [(CHDData *)&v4 description];

  return v2;
}

@end