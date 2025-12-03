@interface CMToggleProperty
- (CMToggleProperty)initWithCMTogglePropertyValue:(int)value;
- (id)cssStringForName:(id)name;
- (id)mapBold;
- (id)mapItalic;
- (id)mapStrikeTrough;
- (int)compareValue:(id)value;
- (void)resolveWithBaseProperty:(id)property;
@end

@implementation CMToggleProperty

- (id)mapBold
{
  if (self->wdValue)
  {
    return @"font-weight:bold;";
  }

  else
  {
    return @"font-weight:normal;";
  }
}

- (id)mapItalic
{
  if (self->wdValue)
  {
    return @"font-style:italic;";
  }

  else
  {
    return &stru_286EE1130;
  }
}

- (id)mapStrikeTrough
{
  if (self->wdValue)
  {
    return @"text-decoration:line-through;";
  }

  else
  {
    return &stru_286EE1130;
  }
}

- (CMToggleProperty)initWithCMTogglePropertyValue:(int)value
{
  v8.receiver = self;
  v8.super_class = CMToggleProperty;
  v4 = [(CMToggleProperty *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->wdValue = value;
    v6 = v4;
  }

  return v5;
}

- (int)compareValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wdValue = self->wdValue;
    if (wdValue == [valueCopy value])
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (void)resolveWithBaseProperty:(id)property
{
  propertyCopy = property;
  if (propertyCopy && self->wdValue >= 2u)
  {
    v5 = propertyCopy;
    self->wdValue = [propertyCopy value] ^ (self->wdValue == 129);
    propertyCopy = v5;
  }
}

- (id)cssStringForName:(id)name
{
  nameCopy = name;
  if ([nameCopy compare:0x286EF7410])
  {
    if ([nameCopy compare:0x286EF7450])
    {
      if ([nameCopy compare:0x286F082F0])
      {
        v5 = 0;
        goto LABEL_9;
      }

      mapStrikeTrough = [(CMToggleProperty *)self mapStrikeTrough];
    }

    else
    {
      mapStrikeTrough = [(CMToggleProperty *)self mapItalic];
    }
  }

  else
  {
    mapStrikeTrough = [(CMToggleProperty *)self mapBold];
  }

  v5 = mapStrikeTrough;
LABEL_9:

  return v5;
}

@end