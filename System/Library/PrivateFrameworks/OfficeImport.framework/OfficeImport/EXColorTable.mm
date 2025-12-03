@interface EXColorTable
+ (void)readColorsFrom:(_xmlNode *)from toEDColors:(id)colors state:(id)state;
+ (void)readFrom:(_xmlNode *)from state:(id)state;
+ (void)readOADThemeFrom:(id)from toEDThemeColors:(id)colors;
@end

@implementation EXColorTable

+ (void)readFrom:(_xmlNode *)from state:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  colors = [resources colors];

  if (from && ([stateCopy EXSpreadsheetMLNamespace], v8 = objc_claimAutoreleasedReturnValue(), v9 = OCXFindChild(from, v8, "indexedColors"), v8, v9))
  {
    v10 = [[EDColorsCollection alloc] initWithDefaultSetup:0];

    [self readColorsFrom:v9 toEDColors:v10 state:stateCopy];
    resources2 = [stateCopy resources];
    [resources2 setColors:v10];

    colors = v10;
  }

  else
  {
    [colors addPalette:0 paletteSize:0 paletteX:0 paletteXSize:0];
  }

  resources3 = [stateCopy resources];
  themes = [resources3 themes];

  if (from && ([stateCopy EXSpreadsheetMLNamespace], v14 = objc_claimAutoreleasedReturnValue(), v15 = OCXFindChild(from, v14, "themeColors"), v14, v15))
  {
    [self readColorsFrom:v15 toEDColors:themes state:stateCopy];
  }

  else
  {
    workbook = [stateCopy workbook];
    theme = [workbook theme];
    [self readOADThemeFrom:theme toEDThemeColors:themes];
  }
}

+ (void)readColorsFrom:(_xmlNode *)from toEDColors:(id)colors state:(id)state
{
  colorsCopy = colors;
  stateCopy = state;
  v9 = stateCopy;
  if (from)
  {
    eXSpreadsheetMLNamespace = [stateCopy EXSpreadsheetMLNamespace];
    Child = OCXFindChild(from, eXSpreadsheetMLNamespace, "rgbColor");

    while (Child)
    {
      v17 = 0;
      v18 = 0;
      v12 = CXOptionalStringAttribute(Child, CXNoNamespace, "rgb", &v17);
      v13 = v17;
      if (v12)
      {
        v14 = [MEMORY[0x277CCAC80] scannerWithString:v13];
        [v14 scanHexInt:&v18];
        v15 = [OITSUColor colorWithRGBValue:v18];
        [colorsCopy addObject:v15];
      }

      eXSpreadsheetMLNamespace2 = [v9 EXSpreadsheetMLNamespace];
      Child = OCXFindNextChild(Child, eXSpreadsheetMLNamespace2, "rgbColor");
    }
  }
}

+ (void)readOADThemeFrom:(id)from toEDThemeColors:(id)colors
{
  fromCopy = from;
  colorsCopy = colors;
  if (fromCopy)
  {
    baseStyles = [fromCopy baseStyles];
    colorScheme = [baseStyles colorScheme];

    for (i = 0; [colorScheme colorCount] > i; i = (i + 1))
    {
      v9 = [colorScheme colorForIndex:{+[EDColorsCollection oadSchemeColorIdFromThemeIndex:](EDColorsCollection, "oadSchemeColorIdFromThemeIndex:", i)}];
      if (v9)
      {
        v10 = [OADColor tsuColorWithColor:v9 colorMap:0 colorScheme:colorScheme colorPalette:0];
        [colorsCopy addObject:v10];
      }
    }
  }
}

@end