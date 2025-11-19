@interface EMEnumProperty
+ (id)mapHorizontalAlignmentValue:(int)a3;
+ (id)mapUnderlineValue:(int)a3;
+ (id)mapVerticalAlignmentValue:(int)a3;
- (BOOL)isEqual:(id)a3;
- (EMEnumProperty)initWithEnum:(int)a3;
- (id)cssStringForName:(id)a3;
- (id)mapHorizontalAlignment;
- (id)mapUnderline;
- (id)mapVerticalAlignment;
@end

@implementation EMEnumProperty

- (id)mapHorizontalAlignment
{
  wdValue = self->wdValue;
  if (wdValue > 6)
  {
    return &stru_286EE1130;
  }

  else
  {
    return off_2799CE128[wdValue];
  }
}

- (id)mapVerticalAlignment
{
  wdValue = self->wdValue;
  if (wdValue > 5)
  {
    return &stru_286EE1130;
  }

  else
  {
    return off_2799CE160[wdValue];
  }
}

- (EMEnumProperty)initWithEnum:(int)a3
{
  v5.receiver = self;
  v5.super_class = EMEnumProperty;
  result = [(EMEnumProperty *)&v5 init];
  if (result)
  {
    result->wdValue = a3;
  }

  return result;
}

+ (id)mapHorizontalAlignmentValue:(int)a3
{
  if (a3 > 6)
  {
    return &stru_286EE1130;
  }

  else
  {
    return off_2799CE128[a3];
  }
}

+ (id)mapVerticalAlignmentValue:(int)a3
{
  if (a3 > 5)
  {
    return &stru_286EE1130;
  }

  else
  {
    return off_2799CE160[a3];
  }
}

- (id)mapUnderline
{
  if ((self->wdValue - 1) >= 4)
  {
    return &stru_286EE1130;
  }

  else
  {
    return @"text-decoration:underline;";
  }
}

+ (id)mapUnderlineValue:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    return &stru_286EE1130;
  }

  else
  {
    return @"text-decoration:underline;";
  }
}

- (id)cssStringForName:(id)a3
{
  v4 = a3;
  if ([v4 compare:@"text-align"])
  {
    if ([v4 compare:@"vertical-align"])
    {
      if ([v4 compare:@"underline"])
      {
        v5 = 0;
        goto LABEL_9;
      }

      v6 = [(EMEnumProperty *)self mapUnderline];
    }

    else
    {
      v6 = [(EMEnumProperty *)self mapVerticalAlignment];
    }
  }

  else
  {
    v6 = [(EMEnumProperty *)self mapHorizontalAlignment];
  }

  v5 = v6;
LABEL_9:

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4->wdValue == self->wdValue;
  }

  return v5;
}

@end