@interface CHBPlotArea
+ (id)readWithState:(id)state;
+ (void)readAxisGroup:(int)group to:(id)to state:(id)state;
@end

@implementation CHBPlotArea

+ (id)readWithState:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  plotArea = [chart plotArea];

  XlChartFrameType::XlChartFrameType(&v11);
  v11.var0 = &unk_286EC9A70;
  *(&v11.var16 + 1) = 0;
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 704))(xlReader, &v11);
  v8 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartFrameType:&v11 state:stateCopy];
  autoStyling = [stateCopy autoStyling];
  [autoStyling resolvePlotAreaGraphicProperties:v8];

  [plotArea setGraphicProperties:v8];
  [self readAxisGroup:0 to:plotArea state:stateCopy];
  [self readAxisGroup:1 to:plotArea state:stateCopy];

  XlChartFrameType::~XlChartFrameType(&v11);

  return plotArea;
}

+ (void)readAxisGroup:(int)group to:(id)to state:(id)state
{
  v6 = *&group;
  toCopy = to;
  stateCopy = state;
  [stateCopy setAxisGroup:v6];
  axes = [toCopy axes];
  v10 = [CHBAxis readWithXlPlotAxis:0 state:stateCopy];
  [axes addObject:v10];

  v11 = [CHBAxis readWithXlPlotAxis:1 state:stateCopy];
  [axes addObject:v11];

  v12 = [CHBAxis readWithXlPlotAxis:2 state:stateCopy];
  [axes addObject:v12];

  xlReader = [stateCopy xlReader];
  chartTypes = [toCopy chartTypes];
  v24 = toCopy;
  xlPlotCount = [stateCopy xlPlotCount];
  if (xlPlotCount >= 1)
  {
    v16 = 0;
    do
    {
      v29 = 0;
      (*(*xlReader + 712))(xlReader, v6, v16, &v29);
      v17 = v29;
      if (v29)
      {
        if (!v16)
        {
          if (XlChartBinaryReader::hasLegend(xlReader))
          {
            XlChartTextFrame::XlChartTextFrame(v25);
            v25[0] = &unk_286EC9AA8;
            v25[27] = 0x100000004;
            v26 = 0;
            v27 = 16843009;
            v28 = 1;
            xlReader2 = [stateCopy xlReader];
            (*(*xlReader2 + 768))(xlReader2, v25);
            chart = [stateCopy chart];
            v20 = [CHBLegend readFrom:v25 state:stateCopy];
            [chart setLegend:v20];

            XlChartTextFrame::~XlChartTextFrame(v25);
          }

          chart2 = [stateCopy chart];
          v22 = [CHBView3D readFrom:v29[1]];
          [chart2 setView3D:v22];

          v17 = v29;
        }

        [stateCopy setXlCurrentPlotIndex:*(v17[2] + 16)];
        [stateCopy setXlCurrentPlot:v29];
        v23 = [CHBChartType readWithState:stateCopy];
        [chartTypes addObject:v23];
        if ([chartTypes count] == 1 && objc_msgSend(v23, "isHorizontal"))
        {
          [axes adjustAxesPositionForHorizontalChart];
        }

        [stateCopy setXlCurrentPlot:0];
        [stateCopy setXlCurrentPlotIndex:0xFFFFFFFFLL];
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }
      }

      v16 = (v16 + 1);
    }

    while (xlPlotCount != v16);
  }
}

@end