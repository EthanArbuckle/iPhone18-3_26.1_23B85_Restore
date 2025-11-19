@interface OADColor
+ (float)alphaWithColor:(id)a3;
+ (id)basicMapOfColor:(id)a3 colorMap:(id)a4 colorScheme:(id)a5 colorPalette:(id)a6;
+ (id)mapAdjustedColor:(id)a3 colorMap:(id)a4 colorScheme:(id)a5 colorPalette:(id)a6;
+ (id)rgbColorWithColor:(id)a3 colorMap:(id)a4 colorScheme:(id)a5 colorPalette:(id)a6;
+ (id)tsuColorWithColor:(id)a3 colorMap:(id)a4 colorScheme:(id)a5 colorPalette:(id)a6;
+ (id)tsuColorWithRgbColor:(id)a3;
+ (int)mapSchemeColorID:(int)a3 colorMap:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)addTransform:(id)a3;
- (void)addTransformOfType:(int)a3;
- (void)addTransformOfType:(int)a3 value:(float)a4;
- (void)setTransforms:(id)a3;
@end

@implementation OADColor

- (void)addTransform:(id)a3
{
  v4 = a3;
  mTransforms = self->mTransforms;
  v8 = v4;
  if (!mTransforms)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->mTransforms;
    self->mTransforms = v6;

    mTransforms = self->mTransforms;
    v4 = v8;
  }

  [(NSMutableArray *)mTransforms addObject:v4];
}

- (void)setTransforms:(id)a3
{
  v4 = a3;
  mTransforms = self->mTransforms;
  v8 = v4;
  if (v4 && !mTransforms)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->mTransforms;
    self->mTransforms = v6;

    mTransforms = self->mTransforms;
    v4 = v8;
  }

  [(NSMutableArray *)mTransforms setArray:v4];
}

- (void)addTransformOfType:(int)a3
{
  v4 = [[OADColorTransform alloc] initWithType:*&a3];
  [(OADColor *)self addTransform:?];
}

- (void)addTransformOfType:(int)a3 value:(float)a4
{
  v7 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:*&a3];
  *&v6 = a4;
  [(OADValueColorTransform *)v7 setValue:v6];
  [(OADColor *)self addTransform:v7];
}

+ (id)rgbColorWithColor:(id)a3 colorMap:(id)a4 colorScheme:(id)a5 colorPalette:(id)a6
{
  v10 = a3;
  v11 = [a1 basicMapOfColor:v10 colorMap:a4 colorScheme:a5 colorPalette:a6];
  v12 = [v10 transforms];
  v13 = [OADColorTransform colorByApplyingTransforms:v12 toColor:v11];

  return v13;
}

+ (float)alphaWithColor:(id)a3
{
  v3 = [a3 transforms];
  LODWORD(v4) = 1.0;
  [OADColorTransform alphaByApplyingTransforms:v3 toAlpha:v4];
  v6 = v5;

  return v6;
}

+ (id)tsuColorWithColor:(id)a3 colorMap:(id)a4 colorScheme:(id)a5 colorPalette:(id)a6
{
  v10 = a3;
  v11 = [OADColor rgbColorWithColor:v10 colorMap:a4 colorScheme:a5 colorPalette:a6];
  [a1 alphaWithColor:v10];
  v13 = v12;
  [v11 red];
  v15 = v14;
  [v11 green];
  v17 = v16;
  [v11 blue];
  v19 = [OITSUColor colorWithCalibratedRed:v15 green:v17 blue:v18 alpha:v13];

  return v19;
}

+ (id)tsuColorWithRgbColor:(id)a3
{
  v4 = a3;
  [v4 red];
  v6 = v5;
  [v4 green];
  v8 = v7;
  [v4 blue];
  LODWORD(v10) = v9;
  LODWORD(v11) = v6;
  LODWORD(v12) = v8;
  v13 = [a1 tsuColorWithRed:v11 green:v12 blue:v10];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    mTransforms = self->mTransforms;
    v7 = [v5 transforms];
    LOBYTE(mTransforms) = (mTransforms != 0) ^ (v7 == 0);

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

+ (int)mapSchemeColorID:(int)a3 colorMap:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = v5;
  v7 = v4 - 12;
  if ((v4 - 12) >= 4)
  {
    if (v5)
    {
      if (v4 < 0xC)
      {
        v7 = [v5 mappingForIndex:v4];
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

+ (id)basicMapOfColor:(id)a3 colorMap:(id)a4 colorScheme:(id)a5 colorPalette:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v10;
LABEL_5:
    v14 = v15;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v12 colorForIndex:{objc_msgSend(a1, "mapSchemeColorID:colorMap:", objc_msgSend(v10, "schemeColorIndex"), v11)}];
    v17 = [a1 basicMapOfColor:v16 colorMap:v11 colorScheme:v12 colorPalette:v13];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v10;
      v18 = +[OITSUColor colorWithSystemColorID:](OITSUColor, "colorWithSystemColorID:", [v16 systemColorID]);
      v14 = [OADRgbColor rgbColorWithTSUColor:v18];

      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [a1 mapAdjustedColor:v10 colorMap:v11 colorScheme:v12 colorPalette:v13];
      goto LABEL_5;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v14 = 0;
      goto LABEL_12;
    }

    v16 = [v13 colorWithIndex:{objc_msgSend(v10, "index")}];
    v17 = [OADRgbColor rgbColorWithTSUColor:v16];
  }

  v14 = v17;
LABEL_11:

LABEL_12:

  return v14;
}

+ (id)mapAdjustedColor:(id)a3 colorMap:(id)a4 colorScheme:(id)a5 colorPalette:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 baseColor];
  v15 = [a1 basicMapOfColor:v14 colorMap:v11 colorScheme:v12 colorPalette:v13];
  v16 = [v15 redByte];
  v17 = [v15 greenByte];
  v18 = [v15 blueByte];
  if ([v10 gray])
  {
    v16 = sqrt((v16 * v16 + v17 * v17 + v18 * v18));
    v17 = v16;
    v18 = v16;
  }

  v19 = [v10 adjustmentParam];
  v20 = [v10 adjustmentType];
  if (v20 > 3)
  {
    switch(v20)
    {
      case 4:
        v16 = (v16 - v19) & ((v16 - v19) >> 31);
        v17 = (v17 - v19) & ((v17 - v19) >> 31);
        v18 = (v18 - v19) & ((v18 - v19) >> 31);
        break;
      case 5:
        v16 = (v19 - v16) & ~((v19 - v16) >> 31);
        v17 = (v19 - v17) & ~((v19 - v17) >> 31);
        v18 = (v19 - v18) & ~((v19 - v18) >> 31);
        break;
      case 6:
        if (v16 >= v19 || v17 >= v19 || v18 >= v19)
        {
          LOBYTE(v16) = -1;
          LOBYTE(v17) = -1;
          LOBYTE(v18) = -1;
        }

        else
        {
          LOBYTE(v16) = 0;
          LOBYTE(v17) = 0;
          LOBYTE(v18) = 0;
        }

        break;
    }
  }

  else
  {
    switch(v20)
    {
      case 1:
        v16 = (32897 * v19 * v16) >> 23;
        v17 = (32897 * v19 * v17) >> 23;
        v18 = (32897 * v19 * v18) >> 23;
        break;
      case 2:
        v16 = ~((32897 * v19 * (v16 ^ 0xFF)) >> 23);
        v17 = ~((32897 * v19 * (v17 ^ 0xFF)) >> 23);
        v18 = ~((32897 * v19 * (v18 ^ 0xFF)) >> 23);
        break;
      case 3:
        if (v19 + v16 >= 0xFF)
        {
          LOBYTE(v16) = -1;
        }

        else
        {
          LOBYTE(v16) = v19 + v16;
        }

        if (v19 + v17 >= 0xFF)
        {
          LOBYTE(v17) = -1;
        }

        else
        {
          LOBYTE(v17) = v19 + v17;
        }

        if (v19 + v18 >= 0xFF)
        {
          LOBYTE(v18) = -1;
        }

        else
        {
          LOBYTE(v18) = v19 + v18;
        }

        break;
    }
  }

  v21 = [v10 invert];
  v22 = [v10 invert128];
  v26 = v21 << 31 >> 31;
  v27 = v18 ^ v26;
  v28 = v17 ^ v26;
  v29 = v16 ^ v26;
  if (v22)
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