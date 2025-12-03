@interface WMEnumProperty
- (WMEnumProperty)initWithEnum:(unint64_t)enum;
- (id)cssStringForName:(id)name;
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

- (WMEnumProperty)initWithEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = WMEnumProperty;
  result = [(WMEnumProperty *)&v5 init];
  if (result)
  {
    result->wdValue = enum;
  }

  return result;
}

- (id)cssStringForName:(id)name
{
  nameCopy = name;
  if ([nameCopy compare:0x286F08230])
  {
    if ([nameCopy compare:0x286F077D0])
    {
      if ([nameCopy compare:@"underline"])
      {
        if ([nameCopy compare:0x286F08350])
        {
          v5 = 0;
          goto LABEL_11;
        }

        mapCellTextVAlign = [(WMEnumProperty *)self mapCellTextVAlign];
      }

      else
      {
        mapCellTextVAlign = [(WMEnumProperty *)self mapUnderline];
      }
    }

    else
    {
      mapCellTextVAlign = [(WMEnumProperty *)self mapVerticalAlign];
    }
  }

  else
  {
    mapCellTextVAlign = [(WMEnumProperty *)self mapJustification];
  }

  v5 = mapCellTextVAlign;
LABEL_11:

  return v5;
}

@end