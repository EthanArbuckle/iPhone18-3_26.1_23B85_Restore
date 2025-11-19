@interface CHPValueAxisFormatting
- (BOOL)isObjectSupported:(id)a3;
- (BOOL)isPercentageFormattingInContentFormatString:(id)a3 edValue:(EDValue *)a4;
- (id)dataPointFormattingInData:(id)a3;
- (id)dataPointFormattingInSeriesCollection:(id)a3;
- (id)dataPointFormattingInSources:(id)a3;
- (void)applyProcessorToObject:(id)a3 sheet:(id)a4;
@end

@implementation CHPValueAxisFormatting

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  objc_opt_class();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)applyProcessorToObject:(id)a3 sheet:(id)a4
{
  v6 = a3;
  v18 = a4;
  v19 = v6;
  v7 = [v19 axes];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = v10;
    if ([v7 count] <= v10)
    {
      break;
    }

    v12 = [v7 objectAtIndex:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;

      v14 = [v13 contentFormat];

      if (v14)
      {
        v15 = [v14 formatString];
        [v13 setPercentageFormattingFlag:{-[CHPValueAxisFormatting isPercentageFormattingInContentFormatString:edValue:](self, "isPercentageFormattingInContentFormatString:edValue:", v15, 0)}];
      }
    }

    else
    {
      v13 = v8;
      v14 = v9;
    }

    v10 = v11 + 1;
    v8 = v13;
    v9 = v14;
  }

  if (v8 && !v9)
  {
    if ([v8 isPercentageFormattingFlag])
    {
      v9 = 0;
    }

    else
    {
      v16 = [v19 seriesCollection];
      v9 = [(CHPValueAxisFormatting *)self dataPointFormattingInSeriesCollection:v16];

      if (v9)
      {
        [v8 setContentFormat:v9];
        [v8 setIsContentFormatDerivedFromDataPoints:1];
        v17 = [v9 formatString];
        [v8 setPercentageFormattingFlag:{-[CHPValueAxisFormatting isPercentageFormattingInContentFormatString:edValue:](self, "isPercentageFormattingInContentFormatString:edValue:", v17, 0)}];
      }
    }
  }
}

- (id)dataPointFormattingInSeriesCollection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 count])
    {
      v6 = [v5 count];
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        while (1)
        {
          v9 = [v5 objectAtIndex:v8];
          v10 = [v9 valueData];
          v11 = [(CHPValueAxisFormatting *)self dataPointFormattingInData:v10];

          if (!v11)
          {
            break;
          }

          if (v7)
          {
            if (([v11 isEqual:v7] & 1) == 0)
            {
              break;
            }
          }

          else
          {
            v7 = v11;
          }

          if (v6 == ++v8)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (id)dataPointFormattingInData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 contentFormat];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(CHPValueAxisFormatting *)self dataPointFormattingInSources:v5];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dataPointFormattingInSources:(id)a3
{
  v4 = a3;
  v5 = [v4 dataValues];
  v6 = 0;
  v7 = [v5 count];
  if (!v7)
  {
LABEL_11:
    v6 = v6;
    v13 = v6;
    goto LABEL_13;
  }

  v8 = 0;
  while (1)
  {
    v9 = [v5 dataPointAtIndex:v8];
    if (v9)
    {
      break;
    }

LABEL_10:
    if (v7 == ++v8)
    {
      goto LABEL_11;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v11 = [WeakRetained contentFormats];
  v12 = [v11 objectWithKey:*(v9 + 24)];

  if (!v12)
  {
    goto LABEL_12;
  }

  if (!v6)
  {
    v6 = v12;
    goto LABEL_9;
  }

  if ([v12 isEqual:v6])
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_12:

  v13 = 0;
LABEL_13:

  return v13;
}

- (BOOL)isPercentageFormattingInContentFormatString:(id)a3 edValue:(EDValue *)a4
{
  v5 = a3;
  v6 = 1.0;
  if (a4 && CsLeReadSInt32(a4) == 2)
  {
    v6 = EDValue::numberValue(a4);
  }

  v7 = xlSectionForNumberWithFormatting(v6, v5, 0);
  if (v7)
  {
    v8 = *(v7 + 5);
    XlFormatSection::~XlFormatSection(v7);
    MEMORY[0x25F897000]();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

@end