@interface CHBChartType
+ (Class)chdChartTypeClassWithPlot:(void *)plot;
+ (id)readWithState:(id)state;
@end

@implementation CHBChartType

+ (id)readWithState:(id)state
{
  stateCopy = state;
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  if (!xlCurrentPlot || (v5 = [CHBChartType chdChartTypeClassWithPlot:xlCurrentPlot]) == 0)
  {
    v6 = 0;
    goto LABEL_31;
  }

  v6 = [(objc_class *)v5 chdChartTypeWithState:stateCopy];
  v7 = *(xlCurrentPlot + 16);
  if (v7)
  {
    [v6 setVaryColors:XlChartChartFormat::isVaried(v7)];
  }

  axisIds = [v6 axisIds];
  v9 = *(xlCurrentPlot + 136);
  if (XlChartBinaryReader::hasAxis([stateCopy xlReader], v9, 0))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{+[CHBAxis chbAxisIdForPlotAxis:state:](CHBAxis, "chbAxisIdForPlotAxis:state:", 0, stateCopy)}];
    [axisIds addObject:v10];
  }

  if (XlChartBinaryReader::hasAxis([stateCopy xlReader], v9, 1))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{+[CHBAxis chbAxisIdForPlotAxis:state:](CHBAxis, "chbAxisIdForPlotAxis:state:", 1, stateCopy)}];
    [axisIds addObject:v11];
  }

  if (XlChartBinaryReader::hasAxis([stateCopy xlReader], v9, 2))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{+[CHBAxis chbAxisIdForPlotAxis:state:](CHBAxis, "chbAxisIdForPlotAxis:state:", 2, stateCopy)}];
    [axisIds addObject:v12];
  }

  for (i = 0; i < [stateCopy xlSeriesCount]; i = (i + 1))
  {
    v14 = [stateCopy xlChartDataSeriesAtIndex:i];
    v15 = v14[10];
    if ([stateCopy xlCurrentPlotIndex] == v15 && !(*(*v14 + 16))(v14))
    {
      [stateCopy setXlCurrentSeriesIndex:i];
      v16 = [CHBSeries readFrom:v14 state:stateCopy];
      v17 = v16;
      if (v16)
      {
        if (([v16 isHidden] & 1) == 0)
        {
          [v17 setChartType:v6];
          seriesCollection = [v6 seriesCollection];
          [seriesCollection addObject:v17];
        }
      }
    }
  }

  for (j = 0; j < [stateCopy xlSeriesCount]; j = (j + 1))
  {
    v20 = [stateCopy xlChartDataSeriesAtIndex:j];
    v21 = v20[10];
    if ([stateCopy xlCurrentPlotIndex] != v21)
    {
      continue;
    }

    if ((*(*v20 + 16))(v20) == 1)
    {
      seriesCollection2 = [v6 seriesCollection];
      [CHBErrorBar readFrom:v20 toSeries:seriesCollection2 state:stateCopy];
    }

    else
    {
      if ((*(*v20 + 16))(v20) != 2)
      {
        continue;
      }

      seriesCollection2 = [v6 seriesCollection];
      [CHBTrendLine readFrom:v20 toSeries:seriesCollection2 state:stateCopy];
    }
  }

  v23 = [CHBDataLabel chdDataLabelFromXlChartSeriesFormat:*(xlCurrentPlot + 24) state:stateCopy];
  [v6 setDefaultDataLabel:v23];

LABEL_31:

  return v6;
}

+ (Class)chdChartTypeClassWithPlot:(void *)plot
{
  v4 = (*(*plot + 16))(plot, a2);
  if (!*(plot + 1) && v4 > 3 && (v4 - 6) >= 3 && v4 == 5)
  {
    XlChartChartFormat::isVaried((plot + 144));
  }

  v5 = objc_opt_class();

  return v5;
}

@end