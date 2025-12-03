@interface CHBMarker
+ (id)readFrom:(const XlChartSeriesFormat *)from state:(id)state;
+ (int)chdMarkerStyleFromXlMarkerType:(int)type;
+ (int)xlMarkerStyleFromCHDMarkerType:(int)type;
@end

@implementation CHBMarker

+ (id)readFrom:(const XlChartSeriesFormat *)from state:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(CHDMarker);
  if (from)
  {
    var3 = from->var3;
    v8 = from->var4 != 0;
  }

  else
  {
    var3 = 0;
    v8 = 0;
  }

  v9 = [CHBGraphicProperties oadGraphicPropertiesFromXlMarkerStyle:var3 complex:v8 state:stateCopy];
  [(CHDMarker *)v6 setGraphicProperties:v9];

  if (var3)
  {
    [(CHDMarker *)v6 setSize:var3->var4 / 0x14uLL];
    if (var3->var9)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = [CHBMarker chdMarkerStyleFromXlMarkerType:var3->var1];
    }

    [(CHDMarker *)v6 setStyle:v10];
  }

  return v6;
}

+ (int)chdMarkerStyleFromXlMarkerType:(int)type
{
  if ((type - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE500[type - 1];
  }
}

+ (int)xlMarkerStyleFromCHDMarkerType:(int)type
{
  if ((type - 1) > 9)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE524[type - 1];
  }
}

@end