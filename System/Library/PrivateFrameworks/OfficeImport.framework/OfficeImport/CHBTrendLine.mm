@interface CHBTrendLine
+ (id)readTrendlineGraphicProperties:(const XlChartSeriesFormat *)properties forStyleIndex:(unint64_t)index state:(id)state;
+ (int)edTrendLineTypeFrom:(int)from order:(int)order;
+ (int)xlTrendLineRegressionTypeFrom:(int)from;
+ (void)readFrom:(void *)from toSeries:(id)series state:(id)state;
@end

@implementation CHBTrendLine

+ (void)readFrom:(void *)from toSeries:(id)series state:(id)state
{
  seriesCopy = series;
  stateCopy = state;
  if (from)
  {
    v9 = [seriesCopy objectWithKey:(*(*from + 24))(from)];
    v10 = [self edTrendLineTypeFrom:*(from + 60) order:*(from + 244)];
    v11 = objc_alloc_init(CHDTrendline);
    [(CHDTrendline *)v11 setType:v10];
    v12 = [CHBTrendLineLabel readFrom:from state:stateCopy];
    [(CHDTrendline *)v11 setLabel:v12];

    [(CHDTrendline *)v11 setDisplayEquation:*(from + 245) != 0];
    [(CHDTrendline *)v11 setDisplayRSquaredValue:*(from + 246) != 0];
    [(CHDTrendline *)v11 setBackward:*(from + 29)];
    [(CHDTrendline *)v11 setForward:*(from + 28)];
    [(CHDTrendline *)v11 setInterceptYAxis:*(from + 27)];
    if (v10 == 3)
    {
      [(CHDTrendline *)v11 setMovingAveragePeriod:*(from + 244)];
    }

    else if (v10 == 4)
    {
      [(CHDTrendline *)v11 setPolynomialOrder:*(from + 244)];
    }

    v13 = [CHBData readFrom:*(from + 18) state:stateCopy];
    dataValues = [v13 dataValues];
    if ([dataValues count])
    {
      v15 = [dataValues dataPointAtIndex:0];
      v16 = v15;
      if (v15)
      {
        if (EDValue::isStringType((v15 + 8)))
        {
          resources = [stateCopy resources];
          v18 = EDValue::resolvedEDStringValue((v16 + 8), resources);
          [(CHDTrendline *)v11 setName:v18];
        }
      }
    }

    v19 = [self readTrendlineGraphicProperties:objc_msgSend(stateCopy forStyleIndex:"defaultFormatForXlSeries:" state:{from), objc_msgSend(v9, "styleIndex"), stateCopy}];
    [(CHDTrendline *)v11 setGraphicProperties:v19];

    trendlineCollection = [v9 trendlineCollection];
    [trendlineCollection addObject:v11];
  }
}

+ (int)edTrendLineTypeFrom:(int)from order:(int)order
{
  v4 = from != 4;
  if (from == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  if (from == 3)
  {
    v4 = 0;
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  v7 = from != 2;
  if (from == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  if (from == 1)
  {
    v7 = 0;
    v8 = 0;
  }

  if (from > 2)
  {
    v7 = v4;
    v8 = v6;
  }

  if (order == 1 && v7)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

+ (int)xlTrendLineRegressionTypeFrom:(int)from
{
  if (from > 5)
  {
    return 0;
  }

  else
  {
    return dword_25D6FE580[from];
  }
}

+ (id)readTrendlineGraphicProperties:(const XlChartSeriesFormat *)properties forStyleIndex:(unint64_t)index state:(id)state
{
  stateCopy = state;
  v8 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartSeriesFormat:properties state:stateCopy];
  autoStyling = [stateCopy autoStyling];
  [autoStyling resolveGraphicPropertiesOfTrendline:v8 forSeriesIndex:index];

  return v8;
}

@end