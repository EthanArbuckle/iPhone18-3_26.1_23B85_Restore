@interface CHPSeriesDateTimeFormatting
- (BOOL)isDateTimeFomrattingInData:(id)a3;
- (BOOL)isDateTimeFormattingInContentFormatString:(id)a3 edCell:(EDCellHeader *)a4;
- (BOOL)isObjectSupported:(id)a3;
- (void)applyProcessorToObject:(id)a3 sheet:(id)a4;
@end

@implementation CHPSeriesDateTimeFormatting

- (BOOL)isObjectSupported:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = [v4 valueData];
      if ([v6 isEmpty])
      {
        v8 = [v4 categoryData];
        v7 = [v8 isEmpty] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 1;
      }
    }

    else
    {
      v6 = [v4 valueData];
      v7 = [v6 isEmpty] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)applyProcessorToObject:(id)a3 sheet:(id)a4
{
  v7 = a3;
  v5 = [v7 valueData];
  if (([v5 isEmpty] & 1) == 0)
  {
    [v7 setDateTimeFormattingFlag:{-[CHPSeriesDateTimeFormatting isDateTimeFomrattingInData:](self, "isDateTimeFomrattingInData:", v5)}];
  }

  if (([v7 isDateTimeFormattingFlag] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v7 categoryData];
      if (([v6 isEmpty] & 1) == 0)
      {
        [v7 setDateTimeFormattingFlag:{-[CHPSeriesDateTimeFormatting isDateTimeFomrattingInData:](self, "isDateTimeFomrattingInData:", v6)}];
      }
    }
  }
}

- (BOOL)isDateTimeFomrattingInData:(id)a3
{
  v4 = a3;
  if ([v4 isEmpty])
  {
    goto LABEL_2;
  }

  v6 = [v4 contentFormat];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 formatString];
    v5 = [(CHPSeriesDateTimeFormatting *)self isDateTimeFormattingInContentFormatString:v8 edCell:0];
LABEL_10:

    goto LABEL_11;
  }

  v9 = [v4 formula];

  if (v9)
  {
    v10 = [v4 formula];
    v8 = [v10 references];

    WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
    v12 = [EDReferenceIterator referenceIteratorWithReferenceArray:v8 workbook:WeakRetained];

    v13 = [v12 nextCell];
    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->super.mResources);
      v15 = styleForEDCell(v13, v14);
      v16 = [v15 contentFormat];

      v7 = v16;
    }

    else
    {
      v7 = 0;
    }

    v17 = [v7 formatString];
    v5 = [(CHPSeriesDateTimeFormatting *)self isDateTimeFormattingInContentFormatString:v17 edCell:v13];

    goto LABEL_10;
  }

LABEL_2:
  v5 = 0;
LABEL_11:

  return v5;
}

- (BOOL)isDateTimeFormattingInContentFormatString:(id)a3 edCell:(EDCellHeader *)a4
{
  v6 = a3;
  v7 = 1.0;
  if (a4 && typeForEDCell(a4) == 2)
  {
    v7 = numberValueForEDCell(a4);
  }

  WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
  v9 = xlSectionForNumberWithFormatting(v7, v6, WeakRetained);

  if (v9)
  {
    v10 = *(v9 + 2);
    XlFormatSection::~XlFormatSection(v9);
    MEMORY[0x25F897000]();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

@end