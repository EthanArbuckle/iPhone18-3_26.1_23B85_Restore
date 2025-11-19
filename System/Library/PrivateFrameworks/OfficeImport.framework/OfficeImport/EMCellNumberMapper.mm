@interface EMCellNumberMapper
- (EMCellNumberMapper)initWithDoubleValue:(double)a3 style:(id)a4 columnWidth:(double)a5 workbook:(id)a6 parent:(id)a7;
- (id)formatValueAsNumber;
- (id)insertRedSpanIfNegativeAt:(id)a3;
- (void)mapAt:(id)a3 withState:(id)a4;
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

- (EMCellNumberMapper)initWithDoubleValue:(double)a3 style:(id)a4 columnWidth:(double)a5 workbook:(id)a6 parent:(id)a7
{
  v13 = a4;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = EMCellNumberMapper;
  v15 = [(CMMapper *)&v18 initWithParent:a7];
  v16 = v15;
  if (v15)
  {
    v15->edValue = a3;
    objc_storeStrong(&v15->edStyle, a4);
    objc_storeStrong(&v16->workbook, a6);
    v16->_columnWidth = a5;
  }

  return v16;
}

- (id)insertRedSpanIfNegativeAt:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->edValue >= 0.0)
  {
    v6 = v4;
  }

  else
  {
    v6 = [OIXMLElement elementWithType:16];
    [v5 addChild:v6];
    [(CMMapper *)self addAttribute:0x286EEA590 toNode:v6 value:@"color:red"];
  }

  return v6;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v20 = a3;
  v5 = [(EDStyle *)self->edStyle isContentFormatApplied];
  edStyle = self->edStyle;
  if (v5)
  {
    v7 = [(EDStyle *)edStyle contentFormatId];
    if (!v7)
    {
LABEL_15:
      v16 = 0;
      v15 = [(EMCellNumberMapper *)self formatValueAsNumber];
      v13 = 0;
      if (v15)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = [(EDStyle *)edStyle parent];
    v7 = [v8 contentFormatId];

    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v9 = [(EDStyle *)self->edStyle contentFormat];
  v10 = [v9 formatString];
  v11 = [v10 string];

  if (!v11)
  {
    if (v7 != 30)
    {
      goto LABEL_15;
    }

    v11 = @"GenericDate";
  }

  v12 = [EMNumberFormatter formatterForFormat:v11];
  v13 = v12;
  if (!v12)
  {
    v17 = 0;
    goto LABEL_21;
  }

  if ([v12 isNegativeRed])
  {
    v14 = [(EMCellNumberMapper *)self insertRedSpanIfNegativeAt:v20];

    v20 = v14;
  }

  if ([v13 formatType] == 1 || (objc_msgSend(v13, "formatValue:inWorkbook:", self->workbook, self->edValue), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = [(EMCellNumberMapper *)self formatValueAsNumber];
    v16 = v11;
    if (v15)
    {
LABEL_16:
      v11 = v16;
      goto LABEL_17;
    }

LABEL_14:
    v17 = 0;
    v11 = v16;
    goto LABEL_21;
  }

LABEL_17:
  v18 = v15;
  if ([v15 length])
  {
    v19 = [OIXMLTextNode textNodeWithStringValue:v18];
    [v20 addChild:v19];
  }

  v17 = v18;
LABEL_21:
}

@end