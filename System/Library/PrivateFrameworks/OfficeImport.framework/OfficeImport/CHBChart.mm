@interface CHBChart
+ (int)emptyCellsPlottedEnumsFrom:(int)a3;
+ (int)readCHDDisplayBlanksAsEnumFrom:(int)a3;
+ (void)readWithState:(id)a3;
@end

@implementation CHBChart

+ (void)readWithState:(id)a3
{
  v4 = a3;
  v5 = [v4 chart];
  [v5 setStyleId:0];
  [v5 setLogicalBounds:{0.0, 0.0, 4000.0, 4000.0}];
  v6 = [v4 xlReader];
  if (*(v6 + 50) >= 1)
  {
    v7 = [v4 ebReaderSheetState];
    [EBGraphic readGraphicsInChart:v5 state:v7];
  }

  if (*(v6 + 1344) == 1)
  {
    [v5 setMSGraph:1];
    if (*(v6 + 1997))
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [v5 setDirection:v8];
  }

  XlChartParent::XlChartParent(v22);
  (*(*v6 + 696))(v6, v22);
  v9 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartFrameType:v22 state:v4];
  v10 = [v4 autoStyling];
  [v10 resolveChartAreaGraphicProperties:v9];

  [v5 setChartAreaGraphicProperties:v9];
  [v5 setPlotVisibleCellsOnly:XlChartArea::isCategoryPercentage(v23)];
  [v5 setDisplayBlankAs:{objc_msgSend(a1, "readCHDDisplayBlanksAsEnumFrom:", v23[5])}];
  [v4 readAndCacheXlChartDataSeries];
  [CHBDefaultTextProperties readWithState:v4];
  v11 = [CHBPlotArea readWithState:v4];
  [v5 setPlotArea:v11];

  if (XlChartBinaryReader::hasTitle(v6))
  {
    XlChartTextFrame::XlChartTextFrame(v20);
    v20[0] = &unk_286EC99A8;
    (*(*v6 + 760))(v6, v20);
    v12 = [CHBTitle readFrom:v20 state:v4];
    v13 = v12;
    if (v12)
    {
      if ([v12 isCachedTitleEmpty])
      {
        v14 = [v5 mainType];
        v15 = [v4 resources];
        v16 = [v14 defaultTitleWithResources:v15];

        if (v16)
        {
          v17 = [v13 lastCachedName];
          v18 = v17;
          if (v17 && [v17 areThereRuns])
          {
            v19 = [v16 string];
            [v18 setString:v19];
          }

          else
          {
            [v13 setLastCachedName:v16];
          }
        }
      }

      [v5 setTitle:v13];
    }

    [v5 setAutoTitleDeleted:v21];

    XlChartTextFrame::~XlChartTextFrame(v20);
  }

  XlChartParent::~XlChartParent(v22);
}

+ (int)readCHDDisplayBlanksAsEnumFrom:(int)a3
{
  if (a3 > 2)
  {
    return 2;
  }

  else
  {
    return dword_25D6FE454[a3];
  }
}

+ (int)emptyCellsPlottedEnumsFrom:(int)a3
{
  if (a3 > 2)
  {
    return 1;
  }

  else
  {
    return dword_25D6FE454[a3];
  }
}

@end