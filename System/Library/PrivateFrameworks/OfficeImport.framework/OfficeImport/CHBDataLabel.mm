@interface CHBDataLabel
+ (id)chdDataLabelFromXlChartCustomLabelText:(void *)text state:(id)state;
+ (id)chdDataLabelFromXlChartSeriesFormat:(const XlChartSeriesFormat *)format state:(id)state;
+ (int)chdLabelPositionEnumFromXlLabelPosition:(int)position;
+ (int)xlLabelPositionEnumFromCHDDataLabelPosition:(int)position;
@end

@implementation CHBDataLabel

+ (id)chdDataLabelFromXlChartSeriesFormat:(const XlChartSeriesFormat *)format state:(id)state
{
  stateCopy = state;
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  v7 = 0;
  if (format)
  {
    v8 = xlCurrentPlot;
    if (xlCurrentPlot)
    {
      resources = [stateCopy resources];
      v7 = [CHDDataLabel dataLabelWithResources:resources];

      [v7 setShowLeaderLines:*(v8 + 143)];
      [v7 setShowCategoryName:format->var19];
      [v7 setShowPercent:format->var18];
      [v7 setShowBubbleSize:format->var21];
      [v7 setShowValue:format->var17];
      v10 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartSeriesFormat:format state:stateCopy];
      [v7 setGraphicProperties:v10];

      v11 = [CHBGraphicProperties oadGraphicPropertiesFromXlLeaderLineStyleInPlot:v8 state:stateCopy];
      [v7 setLeaderlineGraphicProperties:v11];
    }
  }

  return v7;
}

+ (id)chdDataLabelFromXlChartCustomLabelText:(void *)text state:(id)state
{
  stateCopy = state;
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  v7 = 0;
  if (text)
  {
    v8 = xlCurrentPlot;
    if (xlCurrentPlot)
    {
      resources = [stateCopy resources];
      v7 = [CHDDataLabel dataLabelWithResources:resources];

      [v7 setShowLeaderLines:*(v8 + 143)];
      [v7 setShowCategoryName:*(text + 197)];
      [v7 setShowPercent:*(text + 199)];
      [v7 setShowBubbleSize:*(text + 200)];
      [v7 setShowValue:*(text + 196)];
      [v7 setShowLegendKey:*(text + 195)];
      [v7 setShowSeriesName:*(text + 198)];
      [v7 setPosition:{+[CHBDataLabel chdLabelPositionEnumFromXlLabelPosition:](CHBDataLabel, "chdLabelPositionEnumFromXlLabelPosition:", *(text + 34))}];
      if (*(text + 202))
      {
        [v7 setIsContentFormatDerivedFromDataPoints:1];
      }

      else
      {
        [v7 setContentFormatId:*(text + 92)];
      }

      v10 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartTextFrame:text state:stateCopy];
      [v7 setGraphicProperties:v10];

      v11 = [CHBGraphicProperties oadGraphicPropertiesFromXlLeaderLineStyleInPlot:v8 state:stateCopy];
      [v7 setLeaderlineGraphicProperties:v11];

      v12 = [CHBString edStringFromXlChartTextFrame:text state:stateCopy];
      [v7 setString:v12];

      [v7 setRotationAngle:*(text + 88)];
    }
  }

  return v7;
}

+ (int)chdLabelPositionEnumFromXlLabelPosition:(int)position
{
  if ((position - 1) >= 0xA)
  {
    return 0;
  }

  else
  {
    return position;
  }
}

+ (int)xlLabelPositionEnumFromCHDDataLabelPosition:(int)position
{
  if ((position - 1) >= 0xA)
  {
    return 0;
  }

  else
  {
    return position;
  }
}

@end