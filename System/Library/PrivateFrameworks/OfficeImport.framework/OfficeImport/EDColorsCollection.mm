@interface EDColorsCollection
+ (int)oadSchemeColorIdFromThemeIndex:(int)index;
+ (int)systemColorIdFromIndex:(unint64_t)index;
+ (unsigned)xlColorIndexFromTCSystemColorIDEnum:(int)enum;
- (EDColorsCollection)initWithDefaultSetup:(BOOL)setup;
- (NSString)description;
- (unint64_t)addOrEquivalentColorExcludingDefaults:(id)defaults;
- (void)addColors:(const unsigned int *)colors count:(unsigned int)count defaultColors:(const unsigned int *)defaultColors defaultCount:(unsigned int)defaultCount;
- (void)addPalette:(const unsigned int *)palette paletteSize:(unsigned int)size paletteX:(const unsigned int *)x paletteXSize:(unsigned int)xSize;
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

- (EDColorsCollection)initWithDefaultSetup:(BOOL)setup
{
  setupCopy = setup;
  v7.receiver = self;
  v7.super_class = EDColorsCollection;
  v4 = [(EDCollection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mDefaultColorsCount = 0;
    if (setupCopy)
    {
      [(EDColorsCollection *)v4 setupDefaults];
    }
  }

  return v5;
}

+ (int)systemColorIdFromIndex:(unint64_t)index
{
  v3 = &dword_25D6FEAE4;
  v4 = 19;
  while (*(v3 - 2) != index)
  {
    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  return *v3;
}

+ (unsigned)xlColorIndexFromTCSystemColorIDEnum:(int)enum
{
  v3 = &dword_25D6FEAE4;
  v4 = 19;
  while (*v3 != enum)
  {
    v3 += 2;
    if (!--v4)
    {
      return -1;
    }
  }

  return *(v3 - 2);
}

+ (int)oadSchemeColorIdFromThemeIndex:(int)index
{
  if (index > 0xC)
  {
    return -1;
  }

  else
  {
    return dword_25D6FEC64[index];
  }
}

- (unint64_t)addOrEquivalentColorExcludingDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v5 = [OITSUColor alloc];
  [defaultsCopy redComponent];
  v7 = v6;
  [defaultsCopy greenComponent];
  v9 = v8;
  [defaultsCopy blueComponent];
  v11 = v10;
  [defaultsCopy alphaComponent];
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

- (void)addColors:(const unsigned int *)colors count:(unsigned int)count defaultColors:(const unsigned int *)defaultColors defaultCount:(unsigned int)defaultCount
{
  if (count >= defaultCount)
  {
    countCopy = defaultCount;
  }

  else
  {
    countCopy = count;
  }

  if (colors)
  {
    defaultCountCopy2 = countCopy;
  }

  else
  {
    defaultCountCopy2 = defaultCount;
  }

  if (colors)
  {
    defaultColorsCopy = colors;
  }

  else
  {
    defaultColorsCopy = defaultColors;
  }

  if (defaultCountCopy2)
  {
    v12 = defaultCountCopy2;
    do
    {
      v13 = *defaultColorsCopy++;
      v14 = [OITSUColor colorWithBGRValue:v13];
      [(EDCollection *)self addObject:v14];

      --v12;
    }

    while (v12);
  }

  v15 = defaultCount >= defaultCountCopy2;
  v16 = defaultCount - defaultCountCopy2;
  if (v16 != 0 && v15)
  {
    v17 = &defaultColors[defaultCountCopy2];
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

- (void)addPalette:(const unsigned int *)palette paletteSize:(unsigned int)size paletteX:(const unsigned int *)x paletteXSize:(unsigned int)xSize
{
  v6 = *&xSize;
  [(EDColorsCollection *)self addColors:palette count:*&size defaultColors:[(EDColorsCollection *)self defaultPalette] defaultCount:56];
  for (i = 64; i != 77; ++i)
  {
    v10 = +[OITSUColor colorWithSystemColorID:](OITSUColor, "colorWithSystemColorID:", [objc_opt_class() systemColorIdFromIndex:i]);
    [(EDCollection *)self addObject:v10];
  }

  [(EDColorsCollection *)self addColors:x count:v6 defaultColors:&[EDColorsCollection addPalette:paletteSize:paletteX:paletteXSize:]::defaultPaletteX defaultCount:3];
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