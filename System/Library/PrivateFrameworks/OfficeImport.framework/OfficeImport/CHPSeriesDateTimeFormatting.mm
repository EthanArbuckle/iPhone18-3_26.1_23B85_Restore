@interface CHPSeriesDateTimeFormatting
- (BOOL)isDateTimeFomrattingInData:(id)data;
- (BOOL)isDateTimeFormattingInContentFormatString:(id)string edCell:(EDCellHeader *)cell;
- (BOOL)isObjectSupported:(id)supported;
- (void)applyProcessorToObject:(id)object sheet:(id)sheet;
@end

@implementation CHPSeriesDateTimeFormatting

- (BOOL)isObjectSupported:(id)supported
{
  supportedCopy = supported;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = supportedCopy;
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      valueData = [v4 valueData];
      if ([valueData isEmpty])
      {
        categoryData = [v4 categoryData];
        v7 = [categoryData isEmpty] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 1;
      }
    }

    else
    {
      valueData = [v4 valueData];
      v7 = [valueData isEmpty] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)applyProcessorToObject:(id)object sheet:(id)sheet
{
  objectCopy = object;
  valueData = [objectCopy valueData];
  if (([valueData isEmpty] & 1) == 0)
  {
    [objectCopy setDateTimeFormattingFlag:{-[CHPSeriesDateTimeFormatting isDateTimeFomrattingInData:](self, "isDateTimeFomrattingInData:", valueData)}];
  }

  if (([objectCopy isDateTimeFormattingFlag] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      categoryData = [objectCopy categoryData];
      if (([categoryData isEmpty] & 1) == 0)
      {
        [objectCopy setDateTimeFormattingFlag:{-[CHPSeriesDateTimeFormatting isDateTimeFomrattingInData:](self, "isDateTimeFomrattingInData:", categoryData)}];
      }
    }
  }
}

- (BOOL)isDateTimeFomrattingInData:(id)data
{
  dataCopy = data;
  if ([dataCopy isEmpty])
  {
    goto LABEL_2;
  }

  contentFormat = [dataCopy contentFormat];
  v7 = contentFormat;
  if (contentFormat)
  {
    formatString = [contentFormat formatString];
    v5 = [(CHPSeriesDateTimeFormatting *)self isDateTimeFormattingInContentFormatString:formatString edCell:0];
LABEL_10:

    goto LABEL_11;
  }

  formula = [dataCopy formula];

  if (formula)
  {
    formula2 = [dataCopy formula];
    formatString = [formula2 references];

    WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
    v12 = [EDReferenceIterator referenceIteratorWithReferenceArray:formatString workbook:WeakRetained];

    nextCell = [v12 nextCell];
    if (nextCell)
    {
      v14 = objc_loadWeakRetained(&self->super.mResources);
      v15 = styleForEDCell(nextCell, v14);
      contentFormat2 = [v15 contentFormat];

      v7 = contentFormat2;
    }

    else
    {
      v7 = 0;
    }

    formatString2 = [v7 formatString];
    v5 = [(CHPSeriesDateTimeFormatting *)self isDateTimeFormattingInContentFormatString:formatString2 edCell:nextCell];

    goto LABEL_10;
  }

LABEL_2:
  v5 = 0;
LABEL_11:

  return v5;
}

- (BOOL)isDateTimeFormattingInContentFormatString:(id)string edCell:(EDCellHeader *)cell
{
  stringCopy = string;
  v7 = 1.0;
  if (cell && typeForEDCell(cell) == 2)
  {
    v7 = numberValueForEDCell(cell);
  }

  WeakRetained = objc_loadWeakRetained(&self->super.mWorkbook);
  v9 = xlSectionForNumberWithFormatting(v7, stringCopy, WeakRetained);

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