@interface CHBPlotArea
+ (id)readWithState:(id)a3;
+ (void)readAxisGroup:(int)a3 to:(id)a4 state:(id)a5;
@end

@implementation CHBPlotArea

+ (id)readWithState:(id)a3
{
  v4 = a3;
  v5 = [v4 chart];
  v6 = [v5 plotArea];

  XlChartFrameType::XlChartFrameType(&v11);
  v11.var0 = &unk_286EC9A70;
  *(&v11.var16 + 1) = 0;
  v7 = [v4 xlReader];
  (*(*v7 + 704))(v7, &v11);
  v8 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartFrameType:&v11 state:v4];
  v9 = [v4 autoStyling];
  [v9 resolvePlotAreaGraphicProperties:v8];

  [v6 setGraphicProperties:v8];
  [a1 readAxisGroup:0 to:v6 state:v4];
  [a1 readAxisGroup:1 to:v6 state:v4];

  XlChartFrameType::~XlChartFrameType(&v11);

  return v6;
}

+ (void)readAxisGroup:(int)a3 to:(id)a4 state:(id)a5
{
  v6 = *&a3;
  v7 = a4;
  v8 = a5;
  [v8 setAxisGroup:v6];
  v9 = [v7 axes];
  v10 = [CHBAxis readWithXlPlotAxis:0 state:v8];
  [v9 addObject:v10];

  v11 = [CHBAxis readWithXlPlotAxis:1 state:v8];
  [v9 addObject:v11];

  v12 = [CHBAxis readWithXlPlotAxis:2 state:v8];
  [v9 addObject:v12];

  v13 = [v8 xlReader];
  v14 = [v7 chartTypes];
  v24 = v7;
  v15 = [v8 xlPlotCount];
  if (v15 >= 1)
  {
    v16 = 0;
    do
    {
      v29 = 0;
      (*(*v13 + 712))(v13, v6, v16, &v29);
      v17 = v29;
      if (v29)
      {
        if (!v16)
        {
          if (XlChartBinaryReader::hasLegend(v13))
          {
            XlChartTextFrame::XlChartTextFrame(v25);
            v25[0] = &unk_286EC9AA8;
            v25[27] = 0x100000004;
            v26 = 0;
            v27 = 16843009;
            v28 = 1;
            v18 = [v8 xlReader];
            (*(*v18 + 768))(v18, v25);
            v19 = [v8 chart];
            v20 = [CHBLegend readFrom:v25 state:v8];
            [v19 setLegend:v20];

            XlChartTextFrame::~XlChartTextFrame(v25);
          }

          v21 = [v8 chart];
          v22 = [CHBView3D readFrom:v29[1]];
          [v21 setView3D:v22];

          v17 = v29;
        }

        [v8 setXlCurrentPlotIndex:*(v17[2] + 16)];
        [v8 setXlCurrentPlot:v29];
        v23 = [CHBChartType readWithState:v8];
        [v14 addObject:v23];
        if ([v14 count] == 1 && objc_msgSend(v23, "isHorizontal"))
        {
          [v9 adjustAxesPositionForHorizontalChart];
        }

        [v8 setXlCurrentPlot:0];
        [v8 setXlCurrentPlotIndex:0xFFFFFFFFLL];
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }
      }

      v16 = (v16 + 1);
    }

    while (v15 != v16);
  }
}

@end