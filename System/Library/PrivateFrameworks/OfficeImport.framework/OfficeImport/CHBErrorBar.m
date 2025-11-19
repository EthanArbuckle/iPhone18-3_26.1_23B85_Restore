@interface CHBErrorBar
+ (id)readErrorBarGraphicProperties:(const XlChartSeriesFormat *)a3 forStyleIndex:(unint64_t)a4 state:(id)a5;
+ (int)edErrorBarTypeFrom:(int)a3;
+ (int)xlErrorBarSourceFrom:(int)a3;
+ (int)xlErrorBarTypeFrom:(int)a3 direction:(int)a4;
+ (void)readFrom:(void *)a3 toSeries:(id)a4 state:(id)a5;
@end

@implementation CHBErrorBar

+ (void)readFrom:(void *)a3 toSeries:(id)a4 state:(id)a5
{
  v17 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = [v17 objectWithKey:(*(*a3 + 24))(a3)];
    v10 = [a1 edErrorBarDirectionFrom:*(a3 + 60)];
    if (v10 == 1)
    {
      [v9 errorBarYAxis];
    }

    else
    {
      [v9 errorBarXAxis];
    }
    v11 = ;
    v12 = v11;
    if (!v11)
    {
      v13 = [v9 chart];
      v12 = [CHDErrorBar errorBarWithChart:v13];
    }

    [v12 setType:{objc_msgSend(a1, "edErrorBarTypeFrom:", *(a3 + 60))}];
    [v12 setDirection:v10];
    [v12 setValueType:*(a3 + 58)];
    [v12 setNoEndCap:*(a3 + 236) == 0];
    if ([v12 valueType] == 4 || objc_msgSend(v12, "valueType") == 5)
    {
      v14 = *(a3 + 19);
      if (!v14)
      {
        v14 = *(a3 + 20);
      }

      if ([v12 type] == 2)
      {
        v15 = [CHBData readFrom:v14 state:v8];
        [v12 setPlusValues:v15];
      }

      else
      {
        v15 = [CHBData readFrom:v14 state:v8];
        [v12 setMinusValues:v15];
      }
    }

    else
    {
      [v12 setValue:*(a3 + 27)];
    }

    if (v11)
    {
      [v12 setType:0];
    }

    v16 = [a1 readErrorBarGraphicProperties:objc_msgSend(v8 forStyleIndex:"defaultFormatForXlSeries:" state:{a3), objc_msgSend(v9, "styleIndex"), v8}];
    [v12 setGraphicProperties:v16];

    [v9 setErrorBar:v12];
  }
}

+ (int)edErrorBarTypeFrom:(int)a3
{
  if ((a3 & 0xFFFFFFFD) == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (id)readErrorBarGraphicProperties:(const XlChartSeriesFormat *)a3 forStyleIndex:(unint64_t)a4 state:(id)a5
{
  v7 = a5;
  v8 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartSeriesFormat:a3 state:v7];
  v9 = [v7 autoStyling];
  [v9 resolveGraphicPropertiesOfErrorBar:v8 forSeriesIndex:a4];

  return v8;
}

+ (int)xlErrorBarTypeFrom:(int)a3 direction:(int)a4
{
  if (a4 == 1)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (a4 == 1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  if (a3 == 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

+ (int)xlErrorBarSourceFrom:(int)a3
{
  if ((a3 - 1) >= 5)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

@end