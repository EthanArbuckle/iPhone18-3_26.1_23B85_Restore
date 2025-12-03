@interface OADColor
+ (float)alphaWithColor:(id)color;
+ (id)basicMapOfColor:(id)color colorMap:(id)map colorScheme:(id)scheme colorPalette:(id)palette;
+ (id)mapAdjustedColor:(id)color colorMap:(id)map colorScheme:(id)scheme colorPalette:(id)palette;
+ (id)rgbColorWithColor:(id)color colorMap:(id)map colorScheme:(id)scheme colorPalette:(id)palette;
+ (id)tsuColorWithColor:(id)color colorMap:(id)map colorScheme:(id)scheme colorPalette:(id)palette;
+ (id)tsuColorWithRgbColor:(id)color;
+ (int)mapSchemeColorID:(int)d colorMap:(id)map;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)addTransform:(id)transform;
- (void)addTransformOfType:(int)type;
- (void)addTransformOfType:(int)type value:(float)value;
- (void)setTransforms:(id)transforms;
@end

@implementation OADColor

- (void)addTransform:(id)transform
{
  transformCopy = transform;
  mTransforms = self->mTransforms;
  v8 = transformCopy;
  if (!mTransforms)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->mTransforms;
    self->mTransforms = v6;

    mTransforms = self->mTransforms;
    transformCopy = v8;
  }

  [(NSMutableArray *)mTransforms addObject:transformCopy];
}

- (void)setTransforms:(id)transforms
{
  transformsCopy = transforms;
  mTransforms = self->mTransforms;
  v8 = transformsCopy;
  if (transformsCopy && !mTransforms)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->mTransforms;
    self->mTransforms = v6;

    mTransforms = self->mTransforms;
    transformsCopy = v8;
  }

  [(NSMutableArray *)mTransforms setArray:transformsCopy];
}

- (void)addTransformOfType:(int)type
{
  v4 = [[OADColorTransform alloc] initWithType:*&type];
  [(OADColor *)self addTransform:?];
}

- (void)addTransformOfType:(int)type value:(float)value
{
  v7 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:*&type];
  *&v6 = value;
  [(OADValueColorTransform *)v7 setValue:v6];
  [(OADColor *)self addTransform:v7];
}

+ (id)rgbColorWithColor:(id)color colorMap:(id)map colorScheme:(id)scheme colorPalette:(id)palette
{
  colorCopy = color;
  v11 = [self basicMapOfColor:colorCopy colorMap:map colorScheme:scheme colorPalette:palette];
  transforms = [colorCopy transforms];
  v13 = [OADColorTransform colorByApplyingTransforms:transforms toColor:v11];

  return v13;
}

+ (float)alphaWithColor:(id)color
{
  transforms = [color transforms];
  LODWORD(v4) = 1.0;
  [OADColorTransform alphaByApplyingTransforms:transforms toAlpha:v4];
  v6 = v5;

  return v6;
}

+ (id)tsuColorWithColor:(id)color colorMap:(id)map colorScheme:(id)scheme colorPalette:(id)palette
{
  colorCopy = color;
  v11 = [OADColor rgbColorWithColor:colorCopy colorMap:map colorScheme:scheme colorPalette:palette];
  [self alphaWithColor:colorCopy];
  v13 = v12;
  [v11 red];
  v15 = v14;
  [v11 green];
  v17 = v16;
  [v11 blue];
  v19 = [OITSUColor colorWithCalibratedRed:v15 green:v17 blue:v18 alpha:v13];

  return v19;
}

+ (id)tsuColorWithRgbColor:(id)color
{
  colorCopy = color;
  [colorCopy red];
  v6 = v5;
  [colorCopy green];
  v8 = v7;
  [colorCopy blue];
  LODWORD(v10) = v9;
  LODWORD(v11) = v6;
  LODWORD(v12) = v8;
  v13 = [self tsuColorWithRed:v11 green:v12 blue:v10];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    mTransforms = self->mTransforms;
    transforms = [v5 transforms];
    LOBYTE(mTransforms) = (mTransforms != 0) ^ (transforms == 0);

    if (mTransforms & 1) != 0 && ((v8 = self->mTransforms) == 0 || ([v5 transforms], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[NSMutableArray isEqualToArray:](v8, "isEqualToArray:", v9), v9, (v10)))
    {
      v11 = [(OADColor *)self hash];
      v12 = v11 == [v5 hash];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADColor;
  v2 = [(OADColor *)&v4 description];

  return v2;
}

+ (int)mapSchemeColorID:(int)d colorMap:(id)map
{
  v4 = *&d;
  mapCopy = map;
  v6 = mapCopy;
  v7 = v4 - 12;
  if ((v4 - 12) >= 4)
  {
    if (mapCopy)
    {
      if (v4 < 0xC)
      {
        v7 = [mapCopy mappingForIndex:v4];
        goto LABEL_8;
      }
    }

    else if (v4 <= 0xB)
    {
      v7 = dword_25D6FB9E8[v4];
      goto LABEL_8;
    }

    v7 = -1;
  }

LABEL_8:

  return v7;
}

+ (id)basicMapOfColor:(id)color colorMap:(id)map colorScheme:(id)scheme colorPalette:(id)palette
{
  colorCopy = color;
  mapCopy = map;
  schemeCopy = scheme;
  paletteCopy = palette;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = colorCopy;
LABEL_5:
    v14 = v15;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [schemeCopy colorForIndex:{objc_msgSend(self, "mapSchemeColorID:colorMap:", objc_msgSend(colorCopy, "schemeColorIndex"), mapCopy)}];
    v17 = [self basicMapOfColor:v16 colorMap:mapCopy colorScheme:schemeCopy colorPalette:paletteCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = colorCopy;
      v18 = +[OITSUColor colorWithSystemColorID:](OITSUColor, "colorWithSystemColorID:", [v16 systemColorID]);
      v14 = [OADRgbColor rgbColorWithTSUColor:v18];

      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [self mapAdjustedColor:colorCopy colorMap:mapCopy colorScheme:schemeCopy colorPalette:paletteCopy];
      goto LABEL_5;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v14 = 0;
      goto LABEL_12;
    }

    v16 = [paletteCopy colorWithIndex:{objc_msgSend(colorCopy, "index")}];
    v17 = [OADRgbColor rgbColorWithTSUColor:v16];
  }

  v14 = v17;
LABEL_11:

LABEL_12:

  return v14;
}

+ (id)mapAdjustedColor:(id)color colorMap:(id)map colorScheme:(id)scheme colorPalette:(id)palette
{
  colorCopy = color;
  mapCopy = map;
  schemeCopy = scheme;
  paletteCopy = palette;
  baseColor = [colorCopy baseColor];
  v15 = [self basicMapOfColor:baseColor colorMap:mapCopy colorScheme:schemeCopy colorPalette:paletteCopy];
  redByte = [v15 redByte];
  greenByte = [v15 greenByte];
  blueByte = [v15 blueByte];
  if ([colorCopy gray])
  {
    redByte = sqrt((redByte * redByte + greenByte * greenByte + blueByte * blueByte));
    greenByte = redByte;
    blueByte = redByte;
  }

  adjustmentParam = [colorCopy adjustmentParam];
  adjustmentType = [colorCopy adjustmentType];
  if (adjustmentType > 3)
  {
    switch(adjustmentType)
    {
      case 4:
        redByte = (redByte - adjustmentParam) & ((redByte - adjustmentParam) >> 31);
        greenByte = (greenByte - adjustmentParam) & ((greenByte - adjustmentParam) >> 31);
        blueByte = (blueByte - adjustmentParam) & ((blueByte - adjustmentParam) >> 31);
        break;
      case 5:
        redByte = (adjustmentParam - redByte) & ~((adjustmentParam - redByte) >> 31);
        greenByte = (adjustmentParam - greenByte) & ~((adjustmentParam - greenByte) >> 31);
        blueByte = (adjustmentParam - blueByte) & ~((adjustmentParam - blueByte) >> 31);
        break;
      case 6:
        if (redByte >= adjustmentParam || greenByte >= adjustmentParam || blueByte >= adjustmentParam)
        {
          LOBYTE(redByte) = -1;
          LOBYTE(greenByte) = -1;
          LOBYTE(blueByte) = -1;
        }

        else
        {
          LOBYTE(redByte) = 0;
          LOBYTE(greenByte) = 0;
          LOBYTE(blueByte) = 0;
        }

        break;
    }
  }

  else
  {
    switch(adjustmentType)
    {
      case 1:
        redByte = (32897 * adjustmentParam * redByte) >> 23;
        greenByte = (32897 * adjustmentParam * greenByte) >> 23;
        blueByte = (32897 * adjustmentParam * blueByte) >> 23;
        break;
      case 2:
        redByte = ~((32897 * adjustmentParam * (redByte ^ 0xFF)) >> 23);
        greenByte = ~((32897 * adjustmentParam * (greenByte ^ 0xFF)) >> 23);
        blueByte = ~((32897 * adjustmentParam * (blueByte ^ 0xFF)) >> 23);
        break;
      case 3:
        if (adjustmentParam + redByte >= 0xFF)
        {
          LOBYTE(redByte) = -1;
        }

        else
        {
          LOBYTE(redByte) = adjustmentParam + redByte;
        }

        if (adjustmentParam + greenByte >= 0xFF)
        {
          LOBYTE(greenByte) = -1;
        }

        else
        {
          LOBYTE(greenByte) = adjustmentParam + greenByte;
        }

        if (adjustmentParam + blueByte >= 0xFF)
        {
          LOBYTE(blueByte) = -1;
        }

        else
        {
          LOBYTE(blueByte) = adjustmentParam + blueByte;
        }

        break;
    }
  }

  invert = [colorCopy invert];
  invert128 = [colorCopy invert128];
  v26 = invert << 31 >> 31;
  v27 = blueByte ^ v26;
  v28 = greenByte ^ v26;
  v29 = redByte ^ v26;
  if (invert128)
  {
    v29 ^= 0x80u;
    v28 ^= 0x80u;
    v27 ^= 0x80u;
  }

  *&v23 = v29;
  *&v24 = v28;
  *&v25 = v27;
  v30 = [OADRgbColor rgbColorWithRedByte:v23 greenByte:v24 blueByte:v25];

  return v30;
}

@end