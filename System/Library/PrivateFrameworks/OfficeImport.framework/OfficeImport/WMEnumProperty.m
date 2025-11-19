@interface WMEnumProperty
- (WMEnumProperty)initWithEnum:(unint64_t)a3;
- (id)cssStringForName:(id)a3;
- (id)mapCellTextVAlign;
- (id)mapJustification;
- (id)mapUnderline;
- (id)mapVerticalAlign;
@end

@implementation WMEnumProperty

- (id)mapJustification
{
  wdValue = self->wdValue;
  if (wdValue > 3)
  {
    return 0;
  }

  else
  {
    return off_2799CDC78[wdValue];
  }
}

- (id)mapUnderline
{
  wdValue = self->wdValue;
  if (wdValue == 5 || wdValue == 0)
  {
    return &stru_286EE1130;
  }

  else
  {
    return @"text-decoration:underline;";
  }
}

- (id)mapCellTextVAlign
{
  wdValue = self->wdValue;
  if (wdValue > 2)
  {
    return &stru_286EE1130;
  }

  else
  {
    return off_2799CDC98[wdValue];
  }
}

- (id)mapVerticalAlign
{
  wdValue = self->wdValue;
  v3 = &stru_286EE1130;
  if (wdValue == 1)
  {
    v3 = @"vertical-align:super;";
  }

  if (wdValue == 2)
  {
    return @"vertical-align:sub;";
  }

  else
  {
    return v3;
  }
}

- (WMEnumProperty)initWithEnum:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = WMEnumProperty;
  result = [(WMEnumProperty *)&v5 init];
  if (result)
  {
    result->wdValue = a3;
  }

  return result;
}

- (id)cssStringForName:(id)a3
{
  v4 = a3;
  if ([v4 compare:0x286F08230])
  {
    if ([v4 compare:0x286F077D0])
    {
      if ([v4 compare:@"underline"])
      {
        if ([v4 compare:0x286F08350])
        {
          v5 = 0;
          goto LABEL_11;
        }

        v6 = [(WMEnumProperty *)self mapCellTextVAlign];
      }

      else
      {
        v6 = [(WMEnumProperty *)self mapUnderline];
      }
    }

    else
    {
      v6 = [(WMEnumProperty *)self mapVerticalAlign];
    }
  }

  else
  {
    v6 = [(WMEnumProperty *)self mapJustification];
  }

  v5 = v6;
LABEL_11:

  return v5;
}

@end