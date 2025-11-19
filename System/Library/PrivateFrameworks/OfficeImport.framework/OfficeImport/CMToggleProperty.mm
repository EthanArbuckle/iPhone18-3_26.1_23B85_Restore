@interface CMToggleProperty
- (CMToggleProperty)initWithCMTogglePropertyValue:(int)a3;
- (id)cssStringForName:(id)a3;
- (id)mapBold;
- (id)mapItalic;
- (id)mapStrikeTrough;
- (int)compareValue:(id)a3;
- (void)resolveWithBaseProperty:(id)a3;
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

- (CMToggleProperty)initWithCMTogglePropertyValue:(int)a3
{
  v8.receiver = self;
  v8.super_class = CMToggleProperty;
  v4 = [(CMToggleProperty *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->wdValue = a3;
    v6 = v4;
  }

  return v5;
}

- (int)compareValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wdValue = self->wdValue;
    if (wdValue == [v4 value])
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

- (void)resolveWithBaseProperty:(id)a3
{
  v4 = a3;
  if (v4 && self->wdValue >= 2u)
  {
    v5 = v4;
    self->wdValue = [v4 value] ^ (self->wdValue == 129);
    v4 = v5;
  }
}

- (id)cssStringForName:(id)a3
{
  v4 = a3;
  if ([v4 compare:0x286EF7410])
  {
    if ([v4 compare:0x286EF7450])
    {
      if ([v4 compare:0x286F082F0])
      {
        v5 = 0;
        goto LABEL_9;
      }

      v6 = [(CMToggleProperty *)self mapStrikeTrough];
    }

    else
    {
      v6 = [(CMToggleProperty *)self mapItalic];
    }
  }

  else
  {
    v6 = [(CMToggleProperty *)self mapBold];
  }

  v5 = v6;
LABEL_9:

  return v5;
}

@end