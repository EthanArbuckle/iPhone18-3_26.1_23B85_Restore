@interface CHBSeries
+ (Class)chdSeriesClassWithState:(id)a3;
+ (id)chdSeriesWithState:(id)a3;
+ (id)readFrom:(void *)a3 state:(id)a4;
+ (void)readXlChartSeriesFormat:(void *)a3 chdSeries:(id)a4 state:(id)a5;
+ (void)resolveSeriesStyle:(id)a3 state:(id)a4;
@end

@implementation CHBSeries

+ (id)readFrom:(void *)a3 state:(id)a4
{
  v5 = a4;
  if (a3 && (v6 = [CHBSeries chdSeriesClassWithState:v5]) != 0)
  {
    v40 = [(objc_class *)v6 chdSeriesWithState:v5];
    [v40 setOrder:*(a3 + 8)];
    v38 = [CHBData readFrom:*(a3 + 18) state:v5];
    v7 = [v38 formula];
    [v40 setName:v7];

    v37 = [v38 dataValues];
    if ([v37 count])
    {
      v8 = [v37 dataValueAtIndex:0];
      [v40 setLastCachedName:v8];
    }

    v9 = [CHBData readFrom:*(a3 + 19) state:v5];
    [v40 setValueData:v9];

    v10 = [CHBData readFrom:*(a3 + 20) state:v5];
    [v40 setCategoryData:v10];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [CHBData readFrom:*(a3 + 21) state:v5];
      [v40 setSizeData:v11];
    }

    v12 = [v40 dataValuePropertiesCollection];
    v13 = *(a3 + 14) - *(a3 + 12);
    v14 = (v13 >> 3);
    if ((v13 >> 3))
    {
      v15 = 0;
      do
      {
        CachedCustomFormat = XlChartDataSeries::getCachedCustomFormat(a3, v15);
        if (CachedCustomFormat)
        {
          v17 = [CHBDataValueProperties readFrom:CachedCustomFormat state:v5];
          [v12 addObject:v17];
        }

        ++v15;
      }

      while (v14 != v15);
    }

    v18 = *(a3 + 20) - *(a3 + 18);
    v19 = (v18 >> 3);
    if ((v18 >> 3))
    {
      v20 = 0;
      do
      {
        CachedCustomLabel = XlChartDataSeries::getCachedCustomLabel(a3, v20);
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
            v24 = [v12 objectWithKey:v22];
            if (!v24)
            {
              DefaultFormat = *([v5 xlCurrentPlot] + 24);
              if (!DefaultFormat && (((*(a3 + 8) - *(a3 + 6)) & 0x7FFF8) == 0 || (DefaultFormat = XlChartDataSeries::getDefaultFormat(a3, 0)) == 0) || ([CHBDataValueProperties chdDataValuePropertiesFrom:DefaultFormat state:v5], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                v24 = [CHBDataValueProperties chdDataValuePropertiesFromState:v5];
              }

              [v24 setDataValueIndex:v22];
              [v12 addObject:v24];
            }

            [v24 setDataLabel:v23];
          }
        }

        ++v20;
      }

      while (v19 != v20);
    }

    [a1 readXlChartSeriesFormat:a3 chdSeries:v40 state:v5];
    [a1 resolveSeriesStyle:v40 state:v5];
    v26 = [v5 chart];
    v27 = [v26 legend];
    v28 = [v27 legendEntries];

    v30 = *(a3 + 22);
    v29 = *(a3 + 23);
    if (((v29 - v30) & 0x7FFF8) != 0)
    {
      v31 = 0;
      do
      {
        v32 = *(v30 + 8 * v31);
        if (v32)
        {
          v33 = [CHBLegend readCHDLegendEntryFrom:v32 state:v5];
          [v28 addObject:v33];

          v30 = *(a3 + 22);
          v29 = *(a3 + 23);
        }

        ++v31;
      }

      while (v31 < ((v29 - v30) >> 3));
    }

    v34 = *(a3 + 1);
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

+ (id)chdSeriesWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDSeries alloc];
  v5 = [v3 chart];
  v6 = [(CHDSeries *)v4 initWithChart:v5];

  return v6;
}

+ (Class)chdSeriesClassWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 xlCurrentPlot];
  v5 = (*(*v4 + 16))(v4);
  if (v5 > 4 && (v5 - 6) >= 3 && v5 == 5)
  {
    XlChartChartFormat::isVaried((v4 + 144));
  }

  v6 = objc_opt_class();

  return v6;
}

+ (void)readXlChartSeriesFormat:(void *)a3 chdSeries:(id)a4 state:(id)a5
{
  v13 = a4;
  v6 = a5;
  v7 = [v6 xlCurrentDefaultSeriesFormat];
  v8 = v7;
  if (!v7 || (v9 = v7, !*(v7 + 8)))
  {
    v9 = *([v6 xlCurrentPlot] + 24);
  }

  if (v13 && v8)
  {
    [v13 setStyleIndex:*(v8 + 70)];
    XlChartBinaryReader::setDefaultFormat([v6 xlReader], *(v8 + 72), 0);
    v10 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartSeriesFormat:v9 state:v6];
    [v13 setGraphicProperties:v10];

    v11 = [v13 defaultDataLabel];
    if (v11)
    {
LABEL_15:

      goto LABEL_16;
    }

    if ((*(v8 + 83) & 1) != 0 || (*(v8 + 84) & 1) != 0 || (*(v8 + 86) & 1) != 0 || (*(v8 + 80) & 1) != 0 || (*(v8 + 85) & 1) != 0 || *(v8 + 87) == 1)
    {
      v12 = [CHBDataLabel chdDataLabelFromXlChartSeriesFormat:v8 state:v6];
      v11 = v12;
      if (v12)
      {
        [v12 setGraphicProperties:0];
        [v13 setDefaultDataLabel:v11];
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

+ (void)resolveSeriesStyle:(id)a3 state:(id)a4
{
  v20 = a3;
  v5 = a4;
  if ([v20 conformsToProtocol:&unk_286FA2968])
  {
    v6 = [v5 autoStyling];
    v7 = [v20 marker];
    v8 = [v20 graphicProperties];
    [v6 resolveMarker:v7 withSeriesGraphicProperties:v8 forSeriesIndex:objc_msgSend(v20 clientGraphicPropertyDefaults:{"styleIndex"), 0}];

    v9 = [v5 autoStyling];
    v10 = [v20 graphicProperties];
    [v9 resolveGraphicPropertiesOfSeries:v10 forSeriesIndex:objc_msgSend(v20 isLine:{"styleIndex"), 1}];
  }

  else
  {
    v9 = [v5 autoStyling];
    v10 = [v20 graphicProperties];
    [v9 resolveGraphicPropertiesOfSeries:v10 forSeriesIndex:objc_msgSend(v20 isLine:{"styleIndex"), 0}];
  }

  v11 = [v20 dataValuePropertiesCollection];
  v12 = [v11 count];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v12)
  {
    v14 = isKindOfClass;
    for (i = 0; i != v12; ++i)
    {
      v16 = [v11 objectAtIndex:i];
      v17 = [v16 graphicProperties];
      if (v17)
      {
        v18 = [v5 autoStyling];
        if (v14)
        {
          v19 = [v16 dataValueIndex];
        }

        else
        {
          v19 = [v20 styleIndex];
        }

        [v18 resolveGraphicPropertiesOfSeries:v17 forSeriesIndex:v19];
      }
    }
  }
}

@end