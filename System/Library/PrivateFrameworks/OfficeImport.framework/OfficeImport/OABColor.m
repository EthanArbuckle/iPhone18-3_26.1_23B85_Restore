@interface OABColor
+ (EshColor)propertyColor:(int)a3 colorPropertiesManager:(id)a4;
+ (id)readColor:(const EshColor *)a3 colorPropertiesManager:(id)a4 state:(id)a5;
+ (int)readColorAdjustmentType:(int)a3;
+ (int)readSystemColorID:(int)a3;
+ (int)writeSystemColorID:(int)a3;
@end

@implementation OABColor

+ (id)readColor:(const EshColor *)a3 colorPropertiesManager:(id)a4 state:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = 0;
  var0 = a3->var0.var0;
  if (a3->var0.var0 <= 7)
  {
    if (var0)
    {
      v12 = var0 == 2;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && var0 != 4)
    {
      goto LABEL_16;
    }

    v14 = [OADRgbColor alloc];
    Red = EshColor::getRed(a3);
    Green = EshColor::getGreen(a3);
    Blue = EshColor::getBlue(a3);
    *&v18 = Red;
    *&v19 = Green;
    *&v20 = Blue;
    v21 = [(OADRgbColor *)v14 initWithRedByte:v18 greenByte:v19 blueByte:v20];
    goto LABEL_15;
  }

  switch(var0)
  {
    case 8:
      SchemeIndex = EshColor::getSchemeIndex(a3);
      v24 = [v9 colorPalette];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 colorWithIndex:SchemeIndex];
        v27 = [OADRgbColor alloc];
        [v26 redComponent];
        v29 = v28;
        [v26 greenComponent];
        v31 = v30;
        [v26 blueComponent];
        v32 = v29;
        *&v33 = v31;
        *&v35 = v34;
        *&v34 = v32;
        v10 = [(OADRgbColor *)v27 initWithRed:v34 green:v33 blue:v35];
      }

      else
      {
        v10 = -[OADSchemeColor initWithSchemeColorIndex:]([OADSchemeColor alloc], "initWithSchemeColorIndex:", [objc_msgSend(v9 "client")]);
      }

      break;
    case 33:
      [a1 propertyColor:EshColor::getRed(a3) colorPropertiesManager:v8];
      if (v43 == 33)
      {
        v36 = +[OADRgbColor white];
        v37 = [v36 copy];
      }

      else
      {
        v36 = [a1 readColor:&v43 colorPropertiesManager:v8 state:v9];
        v38 = [a1 readColorAdjustmentType:EshColor::getAdjustmentType(a3)];
        v39 = [OADAdjustedColor alloc];
        v40 = EshColor::getGreen(a3);
        isInvert = EshColor::isInvert(a3);
        isInvert128 = EshColor::isInvert128(a3);
        v37 = [(OADAdjustedColor *)v39 initWithBaseColor:v36 adjustmentType:v38 adjustmentParam:v40 invert:isInvert invert128:isInvert128 gray:EshColor::isGray(a3)];
      }

      v10 = v37;

      break;
    case 34:
      v21 = -[OADSystemColor initWithSystemColorID:]([OADSystemColor alloc], "initWithSystemColorID:", [a1 readSystemColorID:EshColor::getRed(a3)]);
LABEL_15:
      v10 = v21;
      break;
  }

LABEL_16:

  return v10;
}

+ (int)writeSystemColorID:(int)a3
{
  if ((a3 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return dword_25D6FB70C[a3 - 1];
  }
}

+ (int)readSystemColorID:(int)a3
{
  if (a3 > 0x18)
  {
    return 0;
  }

  else
  {
    return dword_25D6FB778[a3];
  }
}

+ (int)readColorAdjustmentType:(int)a3
{
  if ((a3 - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (EshColor)propertyColor:(int)a3 colorPropertiesManager:(id)a4
{
  v6 = v4;
  v7 = a4;
  v12 = v7;
  if (a3 > 242)
  {
    if (a3 <= 245)
    {
      if (a3 == 243)
      {
        if (v7)
        {
          [v7 shadowColor];
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (a3 == 245)
      {
        if (v7)
        {
          [v7 fillBgColor];
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_19:
      *v6 = 255;
      goto LABEL_28;
    }

    if (a3 == 246)
    {
      if (v7)
      {
        [v7 strokeBgColor];
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (a3 != 247)
    {
      goto LABEL_19;
    }

    v8 = [v7 isFilled];
    v9 = v12;
    if (v8)
    {
LABEL_15:
      v7 = v9;
      if (!v9)
      {
        goto LABEL_27;
      }

LABEL_18:
      [v7 fillFgColor];
      goto LABEL_28;
    }

LABEL_25:
    v7 = v9;
    if (v9)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (a3 == 240)
  {
    if (v7)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (a3 == 241)
  {
    v10 = [v7 isStroked];
    v9 = v12;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  if (a3 != 242)
  {
    goto LABEL_19;
  }

  if (v7)
  {
LABEL_26:
    [v7 strokeFgColor];
    goto LABEL_28;
  }

LABEL_27:
  *v6 = 0;
LABEL_28:

  return v11;
}

@end