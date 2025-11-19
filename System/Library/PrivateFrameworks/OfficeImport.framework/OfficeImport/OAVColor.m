@interface OAVColor
+ (id)readColorFromAttribute:(id)a3 alpha:(float)a4 manager:(id)a5;
+ (id)readColorProperty:(int)a3 manager:(id)a4;
+ (id)readPropertyColorFromAttribute:(id)a3 manager:(id)a4;
+ (id)readRGBColorFromAttribute:(id)a3;
+ (int)readColorAdjustmentType:(id)a3;
+ (int)readColorProperty:(id)a3;
@end

@implementation OAVColor

+ (int)readColorProperty:(id)a3
{
  v3 = a3;
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

  v7 = [v4 valueForString:v3];

  return v7;
}

+ (int)readColorAdjustmentType:(id)a3
{
  v3 = a3;
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

  v7 = [v4 valueForString:v3];

  return v7;
}

+ (id)readColorFromAttribute:(id)a3 alpha:(float)a4 manager:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [v8 stringByTrimmingCharactersInSet:v10];

  if ([v11 length])
  {
    v12 = [a1 readRGBColorFromAttribute:v11];
    if (!v12)
    {
      v12 = [OAXColor readPresetColorFromAttribute:v11];
      if (!v12)
      {
        v12 = [a1 readPropertyColorFromAttribute:v11 manager:v9];
        if (!v12)
        {
          v12 = [OAXColor readSystemColorFromAttribute:v11];
        }
      }
    }

    if (a4 != 1.0)
    {
      v13 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:6];
      *&v14 = a4;
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

+ (id)readRGBColorFromAttribute:(id)a3
{
  v3 = a3;
  if ([v3 characterAtIndex:0] != 35)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v4 = [v3 componentsSeparatedByString:@" "];
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

+ (id)readColorProperty:(int)a3 manager:(id)a4
{
  v6 = a4;
  v8 = v6;
  v9 = 0;
  if (a3 > 242)
  {
    if (a3 <= 245)
    {
      if (a3 == 243)
      {
        v10 = [v6 shadowColor];
      }

      else
      {
        if (a3 != 245)
        {
          goto LABEL_19;
        }

        v10 = [v6 fillBgColor];
      }

      goto LABEL_18;
    }

    if (a3 == 246)
    {
      v10 = [v6 strokeBgColor];
      goto LABEL_18;
    }

    if (a3 != 247)
    {
      goto LABEL_19;
    }

    if ([v6 isFilled])
    {
LABEL_13:
      v10 = [v8 fillFgColor];
LABEL_18:
      v9 = v10;
      goto LABEL_19;
    }

LABEL_17:
    v10 = [v8 strokeFgColor];
    goto LABEL_18;
  }

  switch(a3)
  {
    case 240:
      goto LABEL_13;
    case 241:
      if (([v6 isStroked] & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    case 242:
      goto LABEL_17;
  }

LABEL_19:
  LODWORD(v7) = 1.0;
  v11 = [a1 readColorFromAttribute:v9 alpha:v8 manager:v7];

  return v11;
}

+ (id)readPropertyColorFromAttribute:(id)a3 manager:(id)a4
{
  v22 = a3;
  v23 = a4;
  v6 = [v22 componentsSeparatedByString:@" "];
  v21 = [v6 objectAtIndex:0];
  v7 = [a1 readColorProperty:?];
  if (v7 == -130883970)
  {
    v8 = 0;
  }

  else
  {
    v20 = a1;
    v19 = [a1 readColorProperty:v7 manager:v23];
    v24 = 0;
    v9 = 0;
    v10 = 0;
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
        v11 = [v20 readColorAdjustmentType:v16];
        v17 = [v13 substringWithRange:{v15 + 1, v14 - v15 - 2}];
        v10 = [v17 intValue];
      }
    }

    v8 = [[OADAdjustedColor alloc] initWithBaseColor:v19 adjustmentType:v11 adjustmentParam:v10 invert:v9 & 1 invert128:BYTE4(v24) & 1 gray:v24 & 1];
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