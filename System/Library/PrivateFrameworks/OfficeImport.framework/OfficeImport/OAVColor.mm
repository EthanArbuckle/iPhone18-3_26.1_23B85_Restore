@interface OAVColor
+ (id)readColorFromAttribute:(id)attribute alpha:(float)alpha manager:(id)manager;
+ (id)readColorProperty:(int)property manager:(id)manager;
+ (id)readPropertyColorFromAttribute:(id)attribute manager:(id)manager;
+ (id)readRGBColorFromAttribute:(id)attribute;
+ (int)readColorAdjustmentType:(id)type;
+ (int)readColorProperty:(id)property;
@end

@implementation OAVColor

+ (int)readColorProperty:(id)property
{
  propertyCopy = property;
  v4 = +[OAVColor readColorProperty:]::colorPropertyEnumMap;
  if (!+[OAVColor readColorProperty:]::colorPropertyEnumMap)
  {
    {
      +[OAVColor readColorProperty:];
    }

    v5 = [[TCEnumerationMap alloc] initWithStructs:&+[OAVColor readColorProperty:]::colorPropertyEnumStructs count:7 caseSensitive:1];
    v6 = +[OAVColor readColorProperty:]::colorPropertyEnumMap;
    +[OAVColor readColorProperty:]::colorPropertyEnumMap = v5;

    v4 = +[OAVColor readColorProperty:]::colorPropertyEnumMap;
  }

  v7 = [v4 valueForString:propertyCopy];

  return v7;
}

+ (int)readColorAdjustmentType:(id)type
{
  typeCopy = type;
  v4 = +[OAVColor readColorAdjustmentType:]::adjustmentTypeEnumMap;
  if (!+[OAVColor readColorAdjustmentType:]::adjustmentTypeEnumMap)
  {
    {
      +[OAVColor readColorAdjustmentType:];
    }

    v5 = [[TCEnumerationMap alloc] initWithStructs:&+[OAVColor readColorAdjustmentType:]::adjustmentTypeEnumStructs count:6 caseSensitive:1];
    v6 = +[OAVColor readColorAdjustmentType:]::adjustmentTypeEnumMap;
    +[OAVColor readColorAdjustmentType:]::adjustmentTypeEnumMap = v5;

    v4 = +[OAVColor readColorAdjustmentType:]::adjustmentTypeEnumMap;
  }

  v7 = [v4 valueForString:typeCopy];

  return v7;
}

+ (id)readColorFromAttribute:(id)attribute alpha:(float)alpha manager:(id)manager
{
  attributeCopy = attribute;
  managerCopy = manager;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [attributeCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v11 length])
  {
    v12 = [self readRGBColorFromAttribute:v11];
    if (!v12)
    {
      v12 = [OAXColor readPresetColorFromAttribute:v11];
      if (!v12)
      {
        v12 = [self readPropertyColorFromAttribute:v11 manager:managerCopy];
        if (!v12)
        {
          v12 = [OAXColor readSystemColorFromAttribute:v11];
        }
      }
    }

    if (alpha != 1.0)
    {
      v13 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:6];
      *&v14 = alpha;
      [(OADValueColorTransform *)v13 setValue:v14];
      [v12 addTransform:v13];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)readRGBColorFromAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ([attributeCopy characterAtIndex:0] != 35)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v4 = [attributeCopy componentsSeparatedByString:@" "];
  v5 = [v4 objectAtIndex:0];

  v14 = 0;
  v12 = 0;
  v13 = 0;
  if ([v5 length] == 4 && sscanf(objc_msgSend(v5, "UTF8String"), "#%01x%01x%01x", &v14, &v13, &v12) == 3)
  {
    v14 *= 17;
    v12 *= 17;
    v13 *= 17;
  }

  else if ([v5 length] != 7 || sscanf(objc_msgSend(v5, "UTF8String"), "#%02x%02x%02x", &v14, &v13, &v12) != 3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v7 = [OADRgbColor alloc];
  *&v8 = v14;
  *&v9 = v13;
  *&v10 = v12;
  v6 = [(OADRgbColor *)v7 initWithRedByte:v8 greenByte:v9 blueByte:v10];
LABEL_10:

LABEL_11:

  return v6;
}

+ (id)readColorProperty:(int)property manager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  v9 = 0;
  if (property > 242)
  {
    if (property <= 245)
    {
      if (property == 243)
      {
        shadowColor = [managerCopy shadowColor];
      }

      else
      {
        if (property != 245)
        {
          goto LABEL_19;
        }

        shadowColor = [managerCopy fillBgColor];
      }

      goto LABEL_18;
    }

    if (property == 246)
    {
      shadowColor = [managerCopy strokeBgColor];
      goto LABEL_18;
    }

    if (property != 247)
    {
      goto LABEL_19;
    }

    if ([managerCopy isFilled])
    {
LABEL_13:
      shadowColor = [v8 fillFgColor];
LABEL_18:
      v9 = shadowColor;
      goto LABEL_19;
    }

LABEL_17:
    shadowColor = [v8 strokeFgColor];
    goto LABEL_18;
  }

  switch(property)
  {
    case 240:
      goto LABEL_13;
    case 241:
      if (([managerCopy isStroked] & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    case 242:
      goto LABEL_17;
  }

LABEL_19:
  LODWORD(v7) = 1.0;
  v11 = [self readColorFromAttribute:v9 alpha:v8 manager:v7];

  return v11;
}

+ (id)readPropertyColorFromAttribute:(id)attribute manager:(id)manager
{
  attributeCopy = attribute;
  managerCopy = manager;
  v6 = [attributeCopy componentsSeparatedByString:@" "];
  v21 = [v6 objectAtIndex:0];
  v7 = [self readColorProperty:?];
  if (v7 == -130883970)
  {
    v8 = 0;
  }

  else
  {
    selfCopy = self;
    v19 = [self readColorProperty:v7 manager:managerCopy];
    v24 = 0;
    v9 = 0;
    intValue = 0;
    v11 = 0;
    for (i = 1; [v6 count] > i; ++i)
    {
      v13 = [v6 objectAtIndex:i];
      if ([v13 isEqualToString:@"invert"])
      {
        v9 = 1;
      }

      else if ([v13 isEqualToString:@"invert128"])
      {
        BYTE4(v24) = 1;
      }

      else if ([v13 isEqualToString:@"gray"])
      {
        LOBYTE(v24) = 1;
      }

      else
      {
        v14 = [v13 length];
        v15 = objc_msgSend(v13, "rangeOfString:", @"(");
        if (v15 == 0x7FFFFFFFFFFFFFFFLL || [v13 characterAtIndex:v14 - 1] != 41)
        {

          break;
        }

        v16 = [v13 substringToIndex:v15];
        v11 = [selfCopy readColorAdjustmentType:v16];
        v17 = [v13 substringWithRange:{v15 + 1, v14 - v15 - 2}];
        intValue = [v17 intValue];
      }
    }

    v8 = [[OADAdjustedColor alloc] initWithBaseColor:v19 adjustmentType:v11 adjustmentParam:intValue invert:v9 & 1 invert128:BYTE4(v24) & 1 gray:v24 & 1];
  }

  return v8;
}

+ (void)readColorProperty:.cold.1()
{
  {
    __cxa_atexit(__cxx_global_array_dtor_16, 0, &dword_25D297000);
  }
}

+ (void)readColorAdjustmentType:.cold.1()
{
  {
    __cxa_atexit(__cxx_global_array_dtor_37, 0, &dword_25D297000);
  }
}

@end