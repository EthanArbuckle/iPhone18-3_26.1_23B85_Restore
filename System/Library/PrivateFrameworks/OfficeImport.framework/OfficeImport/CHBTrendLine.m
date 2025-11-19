@interface CHBTrendLine
+ (id)readTrendlineGraphicProperties:(const XlChartSeriesFormat *)a3 forStyleIndex:(unint64_t)a4 state:(id)a5;
+ (int)edTrendLineTypeFrom:(int)a3 order:(int)a4;
+ (int)xlTrendLineRegressionTypeFrom:(int)a3;
+ (void)readFrom:(void *)a3 toSeries:(id)a4 state:(id)a5;
@end

@implementation CHBTrendLine

+ (void)readFrom:(void *)a3 toSeries:(id)a4 state:(id)a5
{
  v21 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = [v21 objectWithKey:(*(*a3 + 24))(a3)];
    v10 = [a1 edTrendLineTypeFrom:*(a3 + 60) order:*(a3 + 244)];
    v11 = objc_alloc_init(CHDTrendline);
    [(CHDTrendline *)v11 setType:v10];
    v12 = [CHBTrendLineLabel readFrom:a3 state:v8];
    [(CHDTrendline *)v11 setLabel:v12];

    [(CHDTrendline *)v11 setDisplayEquation:*(a3 + 245) != 0];
    [(CHDTrendline *)v11 setDisplayRSquaredValue:*(a3 + 246) != 0];
    [(CHDTrendline *)v11 setBackward:*(a3 + 29)];
    [(CHDTrendline *)v11 setForward:*(a3 + 28)];
    [(CHDTrendline *)v11 setInterceptYAxis:*(a3 + 27)];
    if (v10 == 3)
    {
      [(CHDTrendline *)v11 setMovingAveragePeriod:*(a3 + 244)];
    }

    else if (v10 == 4)
    {
      [(CHDTrendline *)v11 setPolynomialOrder:*(a3 + 244)];
    }

    v13 = [CHBData readFrom:*(a3 + 18) state:v8];
    v14 = [v13 dataValues];
    if ([v14 count])
    {
      v15 = [v14 dataPointAtIndex:0];
      v16 = v15;
      if (v15)
      {
        if (EDValue::isStringType((v15 + 8)))
        {
          v17 = [v8 resources];
          v18 = EDValue::resolvedEDStringValue((v16 + 8), v17);
          [(CHDTrendline *)v11 setName:v18];
        }
      }
    }

    v19 = [a1 readTrendlineGraphicProperties:objc_msgSend(v8 forStyleIndex:"defaultFormatForXlSeries:" state:{a3), objc_msgSend(v9, "styleIndex"), v8}];
    [(CHDTrendline *)v11 setGraphicProperties:v19];

    v20 = [v9 trendlineCollection];
    [v20 addObject:v11];
  }
}

+ (int)edTrendLineTypeFrom:(int)a3 order:(int)a4
{
  v4 = a3 != 4;
  if (a3 == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  if (a3 == 3)
  {
    v4 = 0;
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  v7 = a3 != 2;
  if (a3 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  if (a3 == 1)
  {
    v7 = 0;
    v8 = 0;
  }

  if (a3 > 2)
  {
    v7 = v4;
    v8 = v6;
  }

  if (a4 == 1 && v7)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

+ (int)xlTrendLineRegressionTypeFrom:(int)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE580[a3];
  }
}

+ (id)readTrendlineGraphicProperties:(const XlChartSeriesFormat *)a3 forStyleIndex:(unint64_t)a4 state:(id)a5
{
  v7 = a5;
  v8 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartSeriesFormat:a3 state:v7];
  v9 = [v7 autoStyling];
  [v9 resolveGraphicPropertiesOfTrendline:v8 forSeriesIndex:a4];

  return v8;
}

@end