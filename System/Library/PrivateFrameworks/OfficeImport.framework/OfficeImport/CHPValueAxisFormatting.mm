@interface CHPValueAxisFormatting
- (BOOL)isObjectSupported:(id)supported;
- (BOOL)isPercentageFormattingInContentFormatString:(id)string edValue:(EDValue *)value;
- (id)dataPointFormattingInData:(id)data;
- (id)dataPointFormattingInSeriesCollection:(id)collection;
- (id)dataPointFormattingInSources:(id)sources;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation CHPValueAxisFormatting

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  objc_opt_class();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)applyProcessorToObject:(id)object sheet:(id)sheet
{
  objectCopy = object;
  sheetCopy = sheet;
  v19 = objectCopy;
  axes = [v19 axes];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = v10;
    if ([axes count] <= v10)
    {
      break;
    }

    v12 = [axes objectAtIndex:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;

      contentFormat = [v13 contentFormat];

      if (contentFormat)
      {
        formatString = [contentFormat formatString];
        [v13 setPercentageFormattingFlag:{-[CHPValueAxisFormatting isPercentageFormattingInContentFormatString:edValue:](self, "isPercentageFormattingInContentFormatString:edValue:", formatString, 0)}];
      }
    }

    else
    {
      v13 = v8;
      contentFormat = v9;
    }

    v10 = v11 + 1;
    v8 = v13;
    v9 = contentFormat;
  }

  if (v8 && !v9)
  {
    if ([v8 isPercentageFormattingFlag])
    {
      v9 = 0;
    }

    else
    {
      seriesCollection = [v19 seriesCollection];
      v9 = [(CHPValueAxisFormatting *)self dataPointFormattingInSeriesCollection:seriesCollection];

      if (v9)
      {
        [v8 setContentFormat:v9];
        [v8 setIsContentFormatDerivedFromDataPoints:1];
        formatString2 = [v9 formatString];
        [v8 setPercentageFormattingFlag:{-[CHPValueAxisFormatting isPercentageFormattingInContentFormatString:edValue:](self, "isPercentageFormattingInContentFormatString:edValue:", formatString2, 0)}];
      }
    }
  }
}

- (id)dataPointFormattingInSeriesCollection:(id)collection
{
  collectionCopy = collection;
  v5 = collectionCopy;
  if (collectionCopy)
  {
    if ([collectionCopy count])
    {
      v6 = [v5 count];
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        while (1)
        {
          v9 = [v5 objectAtIndex:v8];
          valueData = [v9 valueData];
          v11 = [(CHPValueAxisFormatting *)self dataPointFormattingInData:valueData];

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

- (id)dataPointFormattingInData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy)
  {
    contentFormat = [dataCopy contentFormat];
    v7 = contentFormat;
    if (contentFormat)
    {
      v8 = contentFormat;
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

- (id)dataPointFormattingInSources:(id)sources
{
  sourcesCopy = sources;
  dataValues = [sourcesCopy dataValues];
  v6 = 0;
  v7 = [dataValues count];
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
    v9 = [dataValues dataPointAtIndex:v8];
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
  contentFormats = [WeakRetained contentFormats];
  v12 = [contentFormats objectWithKey:*(v9 + 24)];

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

- (BOOL)isPercentageFormattingInContentFormatString:(id)string edValue:(EDValue *)value
{
  stringCopy = string;
  v6 = 1.0;
  if (value && CsLeReadSInt32(value) == 2)
  {
    v6 = EDValue::numberValue(value);
  }

  v7 = xlSectionForNumberWithFormatting(v6, stringCopy, 0);
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