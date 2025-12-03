@interface CHBErrorBar
+ (id)readErrorBarGraphicProperties:(const XlChartSeriesFormat *)properties forStyleIndex:(unint64_t)index state:(id)state;
+ (int)edErrorBarTypeFrom:(int)from;
+ (int)xlErrorBarSourceFrom:(int)from;
+ (int)xlErrorBarTypeFrom:(int)from direction:(int)direction;
+ (void)readFrom:(void *)from toSeries:(id)series state:(id)state;
@end

@implementation CHBErrorBar

+ (void)readFrom:(void *)from toSeries:(id)series state:(id)state
{
  seriesCopy = series;
  stateCopy = state;
  if (from)
  {
    v9 = [seriesCopy objectWithKey:(*(*from + 24))(from)];
    v10 = [self edErrorBarDirectionFrom:*(from + 60)];
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
      chart = [v9 chart];
      v12 = [CHDErrorBar errorBarWithChart:chart];
    }

    [v12 setType:{objc_msgSend(self, "edErrorBarTypeFrom:", *(from + 60))}];
    [v12 setDirection:v10];
    [v12 setValueType:*(from + 58)];
    [v12 setNoEndCap:*(from + 236) == 0];
    if ([v12 valueType] == 4 || objc_msgSend(v12, "valueType") == 5)
    {
      v14 = *(from + 19);
      if (!v14)
      {
        v14 = *(from + 20);
      }

      if ([v12 type] == 2)
      {
        v15 = [CHBData readFrom:v14 state:stateCopy];
        [v12 setPlusValues:v15];
      }

      else
      {
        v15 = [CHBData readFrom:v14 state:stateCopy];
        [v12 setMinusValues:v15];
      }
    }

    else
    {
      [v12 setValue:*(from + 27)];
    }

    if (v11)
    {
      [v12 setType:0];
    }

    v16 = [self readErrorBarGraphicProperties:objc_msgSend(stateCopy forStyleIndex:"defaultFormatForXlSeries:" state:{from), objc_msgSend(v9, "styleIndex"), stateCopy}];
    [v12 setGraphicProperties:v16];

    [v9 setErrorBar:v12];
  }
}

+ (int)edErrorBarTypeFrom:(int)from
{
  if ((from & 0xFFFFFFFD) == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (id)readErrorBarGraphicProperties:(const XlChartSeriesFormat *)properties forStyleIndex:(unint64_t)index state:(id)state
{
  stateCopy = state;
  v8 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartSeriesFormat:properties state:stateCopy];
  autoStyling = [stateCopy autoStyling];
  [autoStyling resolveGraphicPropertiesOfErrorBar:v8 forSeriesIndex:index];

  return v8;
}

+ (int)xlErrorBarTypeFrom:(int)from direction:(int)direction
{
  if (direction == 1)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (direction == 1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  if (from == 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

+ (int)xlErrorBarSourceFrom:(int)from
{
  if ((from - 1) >= 5)
  {
    return 2;
  }

  else
  {
    return from;
  }
}

@end