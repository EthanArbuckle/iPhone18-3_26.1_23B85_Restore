@interface OABColor
+ (EshColor)propertyColor:(int)color colorPropertiesManager:(id)manager;
+ (id)readColor:(const EshColor *)color colorPropertiesManager:(id)manager state:(id)state;
+ (int)readColorAdjustmentType:(int)type;
+ (int)readSystemColorID:(int)d;
+ (int)writeSystemColorID:(int)d;
@end

@implementation OABColor

+ (id)readColor:(const EshColor *)color colorPropertiesManager:(id)manager state:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  v10 = 0;
  var0 = color->var0.var0;
  if (color->var0.var0 <= 7)
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
    Red = EshColor::getRed(color);
    Green = EshColor::getGreen(color);
    Blue = EshColor::getBlue(color);
    *&v18 = Red;
    *&v19 = Green;
    *&v20 = Blue;
    v21 = [(OADRgbColor *)v14 initWithRedByte:v18 greenByte:v19 blueByte:v20];
    goto LABEL_15;
  }

  switch(var0)
  {
    case 8:
      SchemeIndex = EshColor::getSchemeIndex(color);
      colorPalette = [stateCopy colorPalette];
      v25 = colorPalette;
      if (colorPalette)
      {
        v26 = [colorPalette colorWithIndex:SchemeIndex];
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
        v10 = -[OADSchemeColor initWithSchemeColorIndex:]([OADSchemeColor alloc], "initWithSchemeColorIndex:", [objc_msgSend(stateCopy "client")]);
      }

      break;
    case 33:
      [self propertyColor:EshColor::getRed(color) colorPropertiesManager:managerCopy];
      if (v43 == 33)
      {
        v36 = +[OADRgbColor white];
        v37 = [v36 copy];
      }

      else
      {
        v36 = [self readColor:&v43 colorPropertiesManager:managerCopy state:stateCopy];
        v38 = [self readColorAdjustmentType:EshColor::getAdjustmentType(color)];
        v39 = [OADAdjustedColor alloc];
        v40 = EshColor::getGreen(color);
        isInvert = EshColor::isInvert(color);
        isInvert128 = EshColor::isInvert128(color);
        v37 = [(OADAdjustedColor *)v39 initWithBaseColor:v36 adjustmentType:v38 adjustmentParam:v40 invert:isInvert invert128:isInvert128 gray:EshColor::isGray(color)];
      }

      v10 = v37;

      break;
    case 34:
      v21 = -[OADSystemColor initWithSystemColorID:]([OADSystemColor alloc], "initWithSystemColorID:", [self readSystemColorID:EshColor::getRed(color)]);
LABEL_15:
      v10 = v21;
      break;
  }

LABEL_16:

  return v10;
}

+ (int)writeSystemColorID:(int)d
{
  if ((d - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return dword_25D6FB70C[d - 1];
  }
}

+ (int)readSystemColorID:(int)d
{
  if (d > 0x18)
  {
    return 0;
  }

  else
  {
    return dword_25D6FB778[d];
  }
}

+ (int)readColorAdjustmentType:(int)type
{
  if ((type - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (EshColor)propertyColor:(int)color colorPropertiesManager:(id)manager
{
  v6 = v4;
  managerCopy = manager;
  v12 = managerCopy;
  if (color > 242)
  {
    if (color <= 245)
    {
      if (color == 243)
      {
        if (managerCopy)
        {
          [managerCopy shadowColor];
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (color == 245)
      {
        if (managerCopy)
        {
          [managerCopy fillBgColor];
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_19:
      *v6 = 255;
      goto LABEL_28;
    }

    if (color == 246)
    {
      if (managerCopy)
      {
        [managerCopy strokeBgColor];
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (color != 247)
    {
      goto LABEL_19;
    }

    isFilled = [managerCopy isFilled];
    v9 = v12;
    if (isFilled)
    {
LABEL_15:
      managerCopy = v9;
      if (!v9)
      {
        goto LABEL_27;
      }

LABEL_18:
      [managerCopy fillFgColor];
      goto LABEL_28;
    }

LABEL_25:
    managerCopy = v9;
    if (v9)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (color == 240)
  {
    if (managerCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (color == 241)
  {
    isStroked = [managerCopy isStroked];
    v9 = v12;
    if (!isStroked)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  if (color != 242)
  {
    goto LABEL_19;
  }

  if (managerCopy)
  {
LABEL_26:
    [managerCopy strokeFgColor];
    goto LABEL_28;
  }

LABEL_27:
  *v6 = 0;
LABEL_28:

  return v11;
}

@end