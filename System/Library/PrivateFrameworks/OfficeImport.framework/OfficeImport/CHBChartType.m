@interface CHBChartType
+ (Class)chdChartTypeClassWithPlot:(void *)a3;
+ (id)readWithState:(id)a3;
@end

@implementation CHBChartType

+ (id)readWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 xlCurrentPlot];
  if (!v4 || (v5 = [CHBChartType chdChartTypeClassWithPlot:v4]) == 0)
  {
    v6 = 0;
    goto LABEL_31;
  }

  v6 = [(objc_class *)v5 chdChartTypeWithState:v3];
  v7 = *(v4 + 16);
  if (v7)
  {
    [v6 setVaryColors:XlChartChartFormat::isVaried(v7)];
  }

  v8 = [v6 axisIds];
  v9 = *(v4 + 136);
  if (XlChartBinaryReader::hasAxis([v3 xlReader], v9, 0))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{+[CHBAxis chbAxisIdForPlotAxis:state:](CHBAxis, "chbAxisIdForPlotAxis:state:", 0, v3)}];
    [v8 addObject:v10];
  }

  if (XlChartBinaryReader::hasAxis([v3 xlReader], v9, 1))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{+[CHBAxis chbAxisIdForPlotAxis:state:](CHBAxis, "chbAxisIdForPlotAxis:state:", 1, v3)}];
    [v8 addObject:v11];
  }

  if (XlChartBinaryReader::hasAxis([v3 xlReader], v9, 2))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{+[CHBAxis chbAxisIdForPlotAxis:state:](CHBAxis, "chbAxisIdForPlotAxis:state:", 2, v3)}];
    [v8 addObject:v12];
  }

  for (i = 0; i < [v3 xlSeriesCount]; i = (i + 1))
  {
    v14 = [v3 xlChartDataSeriesAtIndex:i];
    v15 = v14[10];
    if ([v3 xlCurrentPlotIndex] == v15 && !(*(*v14 + 16))(v14))
    {
      [v3 setXlCurrentSeriesIndex:i];
      v16 = [CHBSeries readFrom:v14 state:v3];
      v17 = v16;
      if (v16)
      {
        if (([v16 isHidden] & 1) == 0)
        {
          [v17 setChartType:v6];
          v18 = [v6 seriesCollection];
          [v18 addObject:v17];
        }
      }
    }
  }

  for (j = 0; j < [v3 xlSeriesCount]; j = (j + 1))
  {
    v20 = [v3 xlChartDataSeriesAtIndex:j];
    v21 = v20[10];
    if ([v3 xlCurrentPlotIndex] != v21)
    {
      continue;
    }

    if ((*(*v20 + 16))(v20) == 1)
    {
      v22 = [v6 seriesCollection];
      [CHBErrorBar readFrom:v20 toSeries:v22 state:v3];
    }

    else
    {
      if ((*(*v20 + 16))(v20) != 2)
      {
        continue;
      }

      v22 = [v6 seriesCollection];
      [CHBTrendLine readFrom:v20 toSeries:v22 state:v3];
    }
  }

  v23 = [CHBDataLabel chdDataLabelFromXlChartSeriesFormat:*(v4 + 24) state:v3];
  [v6 setDefaultDataLabel:v23];

LABEL_31:

  return v6;
}

+ (Class)chdChartTypeClassWithPlot:(void *)a3
{
  v4 = (*(*a3 + 16))(a3, a2);
  if (!*(a3 + 1) && v4 > 3 && (v4 - 6) >= 3 && v4 == 5)
  {
    XlChartChartFormat::isVaried((a3 + 144));
  }

  v5 = objc_opt_class();

  return v5;
}

@end