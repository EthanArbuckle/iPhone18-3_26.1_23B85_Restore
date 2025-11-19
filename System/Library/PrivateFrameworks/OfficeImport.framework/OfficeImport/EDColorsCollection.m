@interface EDColorsCollection
+ (int)oadSchemeColorIdFromThemeIndex:(int)a3;
+ (int)systemColorIdFromIndex:(unint64_t)a3;
+ (unsigned)xlColorIndexFromTCSystemColorIDEnum:(int)a3;
- (EDColorsCollection)initWithDefaultSetup:(BOOL)a3;
- (NSString)description;
- (unint64_t)addOrEquivalentColorExcludingDefaults:(id)a3;
- (void)addColors:(const unsigned int *)a3 count:(unsigned int)a4 defaultColors:(const unsigned int *)a5 defaultCount:(unsigned int)a6;
- (void)addPalette:(const unsigned int *)a3 paletteSize:(unsigned int)a4 paletteX:(const unsigned int *)a5 paletteXSize:(unsigned int)a6;
- (void)setupDefaults;
@end

@implementation EDColorsCollection

- (void)setupDefaults
{
  v3 = [OITSUColor colorWithBGRValue:0];
  [(EDCollection *)self addObject:v3];

  v4 = [OITSUColor colorWithBGRValue:0xFFFFFFLL];
  [(EDCollection *)self addObject:v4];

  v5 = [OITSUColor colorWithBGRValue:255];
  [(EDCollection *)self addObject:v5];

  v6 = [OITSUColor colorWithBGRValue:65280];
  [(EDCollection *)self addObject:v6];

  v7 = [OITSUColor colorWithBGRValue:16711680];
  [(EDCollection *)self addObject:v7];

  v8 = [OITSUColor colorWithBGRValue:0xFFFFLL];
  [(EDCollection *)self addObject:v8];

  v9 = [OITSUColor colorWithBGRValue:16711935];
  [(EDCollection *)self addObject:v9];

  v10 = [OITSUColor colorWithBGRValue:16776960];
  [(EDCollection *)self addObject:v10];

  self->mDefaultColorsCount = [(EDCollection *)self count];
}

- (EDColorsCollection)initWithDefaultSetup:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = EDColorsCollection;
  v4 = [(EDCollection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mDefaultColorsCount = 0;
    if (v3)
    {
      [(EDColorsCollection *)v4 setupDefaults];
    }
  }

  return v5;
}

+ (int)systemColorIdFromIndex:(unint64_t)a3
{
  v3 = &dword_25D6FEAE4;
  v4 = 19;
  while (*(v3 - 2) != a3)
  {
    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  return *v3;
}

+ (unsigned)xlColorIndexFromTCSystemColorIDEnum:(int)a3
{
  v3 = &dword_25D6FEAE4;
  v4 = 19;
  while (*v3 != a3)
  {
    v3 += 2;
    if (!--v4)
    {
      return -1;
    }
  }

  return *(v3 - 2);
}

+ (int)oadSchemeColorIdFromThemeIndex:(int)a3
{
  if (a3 > 0xC)
  {
    return -1;
  }

  else
  {
    return dword_25D6FEC64[a3];
  }
}

- (unint64_t)addOrEquivalentColorExcludingDefaults:(id)a3
{
  v4 = a3;
  v5 = [OITSUColor alloc];
  [v4 redComponent];
  v7 = v6;
  [v4 greenComponent];
  v9 = v8;
  [v4 blueComponent];
  v11 = v10;
  [v4 alphaComponent];
  v13 = [(OITSUColor *)v5 initWithRed:v7 green:v9 blue:v11 alpha:v12];
  v14 = [(EDCollection *)self count];
  mDefaultColorsCount = self->mDefaultColorsCount;
  if (mDefaultColorsCount >= v14)
  {
LABEL_4:
    mDefaultColorsCount = [(EDCollection *)self addObject:v13];
  }

  else
  {
    while (1)
    {
      v16 = [(EDCollection *)self objectAtIndex:mDefaultColorsCount];
      v17 = [(OITSUColor *)v13 isEqual:v16];

      if (v17)
      {
        break;
      }

      if (v14 == ++mDefaultColorsCount)
      {
        goto LABEL_4;
      }
    }
  }

  return mDefaultColorsCount;
}

- (void)addColors:(const unsigned int *)a3 count:(unsigned int)a4 defaultColors:(const unsigned int *)a5 defaultCount:(unsigned int)a6
{
  if (a4 >= a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = a4;
  }

  if (a3)
  {
    v10 = v9;
  }

  else
  {
    v10 = a6;
  }

  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a5;
  }

  if (v10)
  {
    v12 = v10;
    do
    {
      v13 = *v11++;
      v14 = [OITSUColor colorWithBGRValue:v13];
      [(EDCollection *)self addObject:v14];

      --v12;
    }

    while (v12);
  }

  v15 = a6 >= v10;
  v16 = a6 - v10;
  if (v16 != 0 && v15)
  {
    v17 = &a5[v10];
    do
    {
      v18 = *v17++;
      v19 = [OITSUColor colorWithBGRValue:v18];
      [(EDCollection *)self addObject:v19];

      --v16;
    }

    while (v16);
  }
}

- (void)addPalette:(const unsigned int *)a3 paletteSize:(unsigned int)a4 paletteX:(const unsigned int *)a5 paletteXSize:(unsigned int)a6
{
  v6 = *&a6;
  [(EDColorsCollection *)self addColors:a3 count:*&a4 defaultColors:[(EDColorsCollection *)self defaultPalette] defaultCount:56];
  for (i = 64; i != 77; ++i)
  {
    v10 = +[OITSUColor colorWithSystemColorID:](OITSUColor, "colorWithSystemColorID:", [objc_opt_class() systemColorIdFromIndex:i]);
    [(EDCollection *)self addObject:v10];
  }

  [(EDColorsCollection *)self addColors:a5 count:v6 defaultColors:&[EDColorsCollection addPalette:paletteSize:paletteX:paletteXSize:]::defaultPaletteX defaultCount:3];
  for (j = 80; j != 82; ++j)
  {
    v12 = +[OITSUColor colorWithSystemColorID:](OITSUColor, "colorWithSystemColorID:", [objc_opt_class() systemColorIdFromIndex:j]);
    [(EDCollection *)self addObject:v12];
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDColorsCollection;
  v2 = [(EDCollection *)&v4 description];

  return v2;
}

@end