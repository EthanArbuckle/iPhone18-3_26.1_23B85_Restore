@interface CHBLegend
+ (id)readCHDLegendEntryFrom:(const void *)from state:(id)state;
+ (id)readFrom:(void *)from state:(id)state;
+ (int)chdLegendPositionEnumFromXlLegendPosition:(int)position;
+ (int)xlLegendPositionEnumFromCHDLegendPosition:(int)position;
@end

@implementation CHBLegend

+ (id)readFrom:(void *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v6 = [CHDLegend alloc];
    resources = [stateCopy resources];
    v8 = [(CHDLegend *)v6 initWithResources:resources];

    [(CHDLegend *)v8 setFontIndex:[CHBString edFontIndexForXlChartTextFrame:from state:stateCopy]];
    v9 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartTextFrame:from state:stateCopy];
    autoStyling = [stateCopy autoStyling];
    [autoStyling resolveLegendGraphicProperties:v9];

    [(CHDLegend *)v8 setGraphicProperties:v9];
    [(CHDLegend *)v8 setLegendPosition:[CHBLegend chdLegendPositionEnumFromXlLegendPosition:*(from + 54)]];
    [(CHDLegend *)v8 setIsSingleColumnLegend:*(from + 232)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)readCHDLegendEntryFrom:(const void *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v6 = [CHDLegendEntry alloc];
    resources = [stateCopy resources];
    v8 = [(CHDLegendEntry *)v6 initWithResources:resources];

    [(CHDLegendEntry *)v8 setFontIndex:[CHBString edFontIndexForXlChartTextFrame:from state:stateCopy]];
    [(CHDLegendEntry *)v8 setEntryIndex:*(from + 108)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int)chdLegendPositionEnumFromXlLegendPosition:(int)position
{
  if (position > 7)
  {
    return 3;
  }

  else
  {
    return dword_25D6FE4C8[position];
  }
}

+ (int)xlLegendPositionEnumFromCHDLegendPosition:(int)position
{
  if (position > 5)
  {
    return 3;
  }

  else
  {
    return dword_25D6FE4E8[position];
  }
}

@end