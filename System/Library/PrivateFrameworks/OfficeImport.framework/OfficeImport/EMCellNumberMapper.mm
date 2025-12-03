@interface EMCellNumberMapper
- (EMCellNumberMapper)initWithDoubleValue:(double)value style:(id)style columnWidth:(double)width workbook:(id)workbook parent:(id)parent;
- (id)formatValueAsNumber;
- (id)insertRedSpanIfNegativeAt:(id)at;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation EMCellNumberMapper

- (id)formatValueAsNumber
{
  v3 = [EMNumberFormatter formatterForFormat:0];
  v4 = [v3 formatDefault:self->edValue];
  v5 = [v3 optimalNumberOfDigitsForValue:self->edValue];
  [EMCellStyle contentWidthForColumnWidth:self->_columnWidth];
  v7 = v6;
  if (([v3 useBigNumberFormatterForValue:self->edValue] & 1) != 0 || round(self->edValue) != self->edValue)
  {
    while (1)
    {
      [EMCellTextMapper contentWidthForString:v4 style:self->edStyle];
      if (v8 <= v7 || v5 < 2)
      {
        break;
      }

      v10 = [v3 formatDefault:--v5 showingNumberOfDigits:self->edValue];

      v4 = v10;
    }
  }

  return v4;
}

- (EMCellNumberMapper)initWithDoubleValue:(double)value style:(id)style columnWidth:(double)width workbook:(id)workbook parent:(id)parent
{
  styleCopy = style;
  workbookCopy = workbook;
  v18.receiver = self;
  v18.super_class = EMCellNumberMapper;
  v15 = [(CMMapper *)&v18 initWithParent:parent];
  v16 = v15;
  if (v15)
  {
    v15->edValue = value;
    objc_storeStrong(&v15->edStyle, style);
    objc_storeStrong(&v16->workbook, workbook);
    v16->_columnWidth = width;
  }

  return v16;
}

- (id)insertRedSpanIfNegativeAt:(id)at
{
  atCopy = at;
  v5 = atCopy;
  if (self->edValue >= 0.0)
  {
    v6 = atCopy;
  }

  else
  {
    v6 = [OIXMLElement elementWithType:16];
    [v5 addChild:v6];
    [(CMMapper *)self addAttribute:0x286EEA590 toNode:v6 value:@"color:red"];
  }

  return v6;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  isContentFormatApplied = [(EDStyle *)self->edStyle isContentFormatApplied];
  edStyle = self->edStyle;
  if (isContentFormatApplied)
  {
    contentFormatId = [(EDStyle *)edStyle contentFormatId];
    if (!contentFormatId)
    {
LABEL_15:
      v16 = 0;
      formatValueAsNumber = [(EMCellNumberMapper *)self formatValueAsNumber];
      v13 = 0;
      if (formatValueAsNumber)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  else
  {
    parent = [(EDStyle *)edStyle parent];
    contentFormatId = [parent contentFormatId];

    if (!contentFormatId)
    {
      goto LABEL_15;
    }
  }

  contentFormat = [(EDStyle *)self->edStyle contentFormat];
  formatString = [contentFormat formatString];
  string = [formatString string];

  if (!string)
  {
    if (contentFormatId != 30)
    {
      goto LABEL_15;
    }

    string = @"GenericDate";
  }

  v12 = [EMNumberFormatter formatterForFormat:string];
  v13 = v12;
  if (!v12)
  {
    v17 = 0;
    goto LABEL_21;
  }

  if ([v12 isNegativeRed])
  {
    v14 = [(EMCellNumberMapper *)self insertRedSpanIfNegativeAt:atCopy];

    atCopy = v14;
  }

  if ([v13 formatType] == 1 || (objc_msgSend(v13, "formatValue:inWorkbook:", self->workbook, self->edValue), (formatValueAsNumber = objc_claimAutoreleasedReturnValue()) == 0))
  {
    formatValueAsNumber = [(EMCellNumberMapper *)self formatValueAsNumber];
    v16 = string;
    if (formatValueAsNumber)
    {
LABEL_16:
      string = v16;
      goto LABEL_17;
    }

LABEL_14:
    v17 = 0;
    string = v16;
    goto LABEL_21;
  }

LABEL_17:
  v18 = formatValueAsNumber;
  if ([formatValueAsNumber length])
  {
    v19 = [OIXMLTextNode textNodeWithStringValue:v18];
    [atCopy addChild:v19];
  }

  v17 = v18;
LABEL_21:
}

@end