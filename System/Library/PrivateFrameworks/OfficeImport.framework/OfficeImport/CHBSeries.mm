@interface CHBSeries
+ (Class)chdSeriesClassWithState:(id)state;
+ (id)chdSeriesWithState:(id)state;
+ (id)readFrom:(void *)from state:(id)state;
+ (void)readXlChartSeriesFormat:(void *)format chdSeries:(id)series state:(id)state;
+ (void)resolveSeriesStyle:(id)style state:(id)state;
@end

@implementation CHBSeries

+ (id)readFrom:(void *)from state:(id)state
{
  stateCopy = state;
  if (from && (v6 = [CHBSeries chdSeriesClassWithState:stateCopy]) != 0)
  {
    v40 = [(objc_class *)v6 chdSeriesWithState:stateCopy];
    [v40 setOrder:*(from + 8)];
    v38 = [CHBData readFrom:*(from + 18) state:stateCopy];
    formula = [v38 formula];
    [v40 setName:formula];

    dataValues = [v38 dataValues];
    if ([dataValues count])
    {
      v8 = [dataValues dataValueAtIndex:0];
      [v40 setLastCachedName:v8];
    }

    v9 = [CHBData readFrom:*(from + 19) state:stateCopy];
    [v40 setValueData:v9];

    v10 = [CHBData readFrom:*(from + 20) state:stateCopy];
    [v40 setCategoryData:v10];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [CHBData readFrom:*(from + 21) state:stateCopy];
      [v40 setSizeData:v11];
    }

    dataValuePropertiesCollection = [v40 dataValuePropertiesCollection];
    v13 = *(from + 14) - *(from + 12);
    v14 = (v13 >> 3);
    if ((v13 >> 3))
    {
      v15 = 0;
      do
      {
        CachedCustomFormat = XlChartDataSeries::getCachedCustomFormat(from, v15);
        if (CachedCustomFormat)
        {
          v17 = [CHBDataValueProperties readFrom:CachedCustomFormat state:stateCopy];
          [dataValuePropertiesCollection addObject:v17];
        }

        ++v15;
      }

      while (v14 != v15);
    }

    v18 = *(from + 20) - *(from + 18);
    v19 = (v18 >> 3);
    if ((v18 >> 3))
    {
      v20 = 0;
      do
      {
        CachedCustomLabel = XlChartDataSeries::getCachedCustomLabel(from, v20);
        if (CachedCustomLabel)
        {
          v22 = *(CachedCustomLabel + 216);
          v23 = [CHBDataLabel chdDataLabelFromXlChartCustomLabelText:"chdDataLabelFromXlChartCustomLabelText:state:" state:?];
          if (v22 == 0xFFFF)
          {
            [v40 setDefaultDataLabel:v23];
          }

          else
          {
            v24 = [dataValuePropertiesCollection objectWithKey:v22];
            if (!v24)
            {
              DefaultFormat = *([stateCopy xlCurrentPlot] + 24);
              if (!DefaultFormat && (((*(from + 8) - *(from + 6)) & 0x7FFF8) == 0 || (DefaultFormat = XlChartDataSeries::getDefaultFormat(from, 0)) == 0) || ([CHBDataValueProperties chdDataValuePropertiesFrom:DefaultFormat state:stateCopy], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                v24 = [CHBDataValueProperties chdDataValuePropertiesFromState:stateCopy];
              }

              [v24 setDataValueIndex:v22];
              [dataValuePropertiesCollection addObject:v24];
            }

            [v24 setDataLabel:v23];
          }
        }

        ++v20;
      }

      while (v19 != v20);
    }

    [self readXlChartSeriesFormat:from chdSeries:v40 state:stateCopy];
    [self resolveSeriesStyle:v40 state:stateCopy];
    chart = [stateCopy chart];
    legend = [chart legend];
    legendEntries = [legend legendEntries];

    v30 = *(from + 22);
    v29 = *(from + 23);
    if (((v29 - v30) & 0x7FFF8) != 0)
    {
      v31 = 0;
      do
      {
        v32 = *(v30 + 8 * v31);
        if (v32)
        {
          v33 = [CHBLegend readCHDLegendEntryFrom:v32 state:stateCopy];
          [legendEntries addObject:v33];

          v30 = *(from + 22);
          v29 = *(from + 23);
        }

        ++v31;
      }

      while (v31 < ((v29 - v30) >> 3));
    }

    v34 = *(from + 1);
    if (v34 && !*(v34 + 18))
    {
      [v40 setHiddenFlag:1];
    }

    v35 = v40;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

+ (id)chdSeriesWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDSeries alloc];
  chart = [stateCopy chart];
  v6 = [(CHDSeries *)v4 initWithChart:chart];

  return v6;
}

+ (Class)chdSeriesClassWithState:(id)state
{
  stateCopy = state;
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  v5 = (*(*xlCurrentPlot + 16))(xlCurrentPlot);
  if (v5 > 4 && (v5 - 6) >= 3 && v5 == 5)
  {
    XlChartChartFormat::isVaried((xlCurrentPlot + 144));
  }

  v6 = objc_opt_class();

  return v6;
}

+ (void)readXlChartSeriesFormat:(void *)format chdSeries:(id)series state:(id)state
{
  seriesCopy = series;
  stateCopy = state;
  xlCurrentDefaultSeriesFormat = [stateCopy xlCurrentDefaultSeriesFormat];
  v8 = xlCurrentDefaultSeriesFormat;
  if (!xlCurrentDefaultSeriesFormat || (v9 = xlCurrentDefaultSeriesFormat, !*(xlCurrentDefaultSeriesFormat + 8)))
  {
    v9 = *([stateCopy xlCurrentPlot] + 24);
  }

  if (seriesCopy && v8)
  {
    [seriesCopy setStyleIndex:*(v8 + 70)];
    XlChartBinaryReader::setDefaultFormat([stateCopy xlReader], *(v8 + 72), 0);
    v10 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartSeriesFormat:v9 state:stateCopy];
    [seriesCopy setGraphicProperties:v10];

    defaultDataLabel = [seriesCopy defaultDataLabel];
    if (defaultDataLabel)
    {
LABEL_15:

      goto LABEL_16;
    }

    if ((*(v8 + 83) & 1) != 0 || (*(v8 + 84) & 1) != 0 || (*(v8 + 86) & 1) != 0 || (*(v8 + 80) & 1) != 0 || (*(v8 + 85) & 1) != 0 || *(v8 + 87) == 1)
    {
      v12 = [CHBDataLabel chdDataLabelFromXlChartSeriesFormat:v8 state:stateCopy];
      defaultDataLabel = v12;
      if (v12)
      {
        [v12 setGraphicProperties:0];
        [seriesCopy setDefaultDataLabel:defaultDataLabel];
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

+ (void)resolveSeriesStyle:(id)style state:(id)state
{
  styleCopy = style;
  stateCopy = state;
  if ([styleCopy conformsToProtocol:&unk_286FA2968])
  {
    autoStyling = [stateCopy autoStyling];
    marker = [styleCopy marker];
    graphicProperties = [styleCopy graphicProperties];
    [autoStyling resolveMarker:marker withSeriesGraphicProperties:graphicProperties forSeriesIndex:objc_msgSend(styleCopy clientGraphicPropertyDefaults:{"styleIndex"), 0}];

    autoStyling2 = [stateCopy autoStyling];
    graphicProperties2 = [styleCopy graphicProperties];
    [autoStyling2 resolveGraphicPropertiesOfSeries:graphicProperties2 forSeriesIndex:objc_msgSend(styleCopy isLine:{"styleIndex"), 1}];
  }

  else
  {
    autoStyling2 = [stateCopy autoStyling];
    graphicProperties2 = [styleCopy graphicProperties];
    [autoStyling2 resolveGraphicPropertiesOfSeries:graphicProperties2 forSeriesIndex:objc_msgSend(styleCopy isLine:{"styleIndex"), 0}];
  }

  dataValuePropertiesCollection = [styleCopy dataValuePropertiesCollection];
  v12 = [dataValuePropertiesCollection count];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v12)
  {
    v14 = isKindOfClass;
    for (i = 0; i != v12; ++i)
    {
      v16 = [dataValuePropertiesCollection objectAtIndex:i];
      graphicProperties3 = [v16 graphicProperties];
      if (graphicProperties3)
      {
        autoStyling3 = [stateCopy autoStyling];
        if (v14)
        {
          dataValueIndex = [v16 dataValueIndex];
        }

        else
        {
          dataValueIndex = [styleCopy styleIndex];
        }

        [autoStyling3 resolveGraphicPropertiesOfSeries:graphicProperties3 forSeriesIndex:dataValueIndex];
      }
    }
  }
}

@end