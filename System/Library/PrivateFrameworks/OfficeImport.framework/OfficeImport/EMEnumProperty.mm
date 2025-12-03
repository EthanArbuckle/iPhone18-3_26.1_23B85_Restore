@interface EMEnumProperty
+ (id)mapHorizontalAlignmentValue:(int)value;
+ (id)mapUnderlineValue:(int)value;
+ (id)mapVerticalAlignmentValue:(int)value;
- (BOOL)isEqual:(id)equal;
- (EMEnumProperty)initWithEnum:(int)enum;
- (id)cssStringForName:(id)name;
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

- (EMEnumProperty)initWithEnum:(int)enum
{
  v5.receiver = self;
  v5.super_class = EMEnumProperty;
  result = [(EMEnumProperty *)&v5 init];
  if (result)
  {
    result->wdValue = enum;
  }

  return result;
}

+ (id)mapHorizontalAlignmentValue:(int)value
{
  if (value > 6)
  {
    return &stru_286EE1130;
  }

  else
  {
    return off_2799CE128[value];
  }
}

+ (id)mapVerticalAlignmentValue:(int)value
{
  if (value > 5)
  {
    return &stru_286EE1130;
  }

  else
  {
    return off_2799CE160[value];
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

+ (id)mapUnderlineValue:(int)value
{
  if ((value - 1) >= 4)
  {
    return &stru_286EE1130;
  }

  else
  {
    return @"text-decoration:underline;";
  }
}

- (id)cssStringForName:(id)name
{
  nameCopy = name;
  if ([nameCopy compare:@"text-align"])
  {
    if ([nameCopy compare:@"vertical-align"])
    {
      if ([nameCopy compare:@"underline"])
      {
        v5 = 0;
        goto LABEL_9;
      }

      mapUnderline = [(EMEnumProperty *)self mapUnderline];
    }

    else
    {
      mapUnderline = [(EMEnumProperty *)self mapVerticalAlignment];
    }
  }

  else
  {
    mapUnderline = [(EMEnumProperty *)self mapHorizontalAlignment];
  }

  v5 = mapUnderline;
LABEL_9:

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->wdValue == self->wdValue;
  }

  return v5;
}

@end