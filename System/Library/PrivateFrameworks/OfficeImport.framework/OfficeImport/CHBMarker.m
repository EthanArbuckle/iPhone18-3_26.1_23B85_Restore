@interface CHBMarker
+ (id)readFrom:(const XlChartSeriesFormat *)a3 state:(id)a4;
+ (int)chdMarkerStyleFromXlMarkerType:(int)a3;
+ (int)xlMarkerStyleFromCHDMarkerType:(int)a3;
@end

@implementation CHBMarker

+ (id)readFrom:(const XlChartSeriesFormat *)a3 state:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(CHDMarker);
  if (a3)
  {
    var3 = a3->var3;
    v8 = a3->var4 != 0;
  }

  else
  {
    var3 = 0;
    v8 = 0;
  }

  v9 = [CHBGraphicProperties oadGraphicPropertiesFromXlMarkerStyle:var3 complex:v8 state:v5];
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

+ (int)chdMarkerStyleFromXlMarkerType:(int)a3
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE500[a3 - 1];
  }
}

+ (int)xlMarkerStyleFromCHDMarkerType:(int)a3
{
  if ((a3 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE524[a3 - 1];
  }
}

@end