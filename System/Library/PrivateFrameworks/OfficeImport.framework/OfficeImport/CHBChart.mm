@interface CHBChart
+ (int)emptyCellsPlottedEnumsFrom:(int)from;
+ (int)readCHDDisplayBlanksAsEnumFrom:(int)from;
+ (void)readWithState:(id)state;
@end

@implementation CHBChart

+ (void)readWithState:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  [chart setStyleId:0];
  [chart setLogicalBounds:{0.0, 0.0, 4000.0, 4000.0}];
  xlReader = [stateCopy xlReader];
  if (*(xlReader + 50) >= 1)
  {
    ebReaderSheetState = [stateCopy ebReaderSheetState];
    [EBGraphic readGraphicsInChart:chart state:ebReaderSheetState];
  }

  if (*(xlReader + 1344) == 1)
  {
    [chart setMSGraph:1];
    if (*(xlReader + 1997))
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [chart setDirection:v8];
  }

  XlChartParent::XlChartParent(v22);
  (*(*xlReader + 696))(xlReader, v22);
  v9 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartFrameType:v22 state:stateCopy];
  autoStyling = [stateCopy autoStyling];
  [autoStyling resolveChartAreaGraphicProperties:v9];

  [chart setChartAreaGraphicProperties:v9];
  [chart setPlotVisibleCellsOnly:XlChartArea::isCategoryPercentage(v23)];
  [chart setDisplayBlankAs:{objc_msgSend(self, "readCHDDisplayBlanksAsEnumFrom:", v23[5])}];
  [stateCopy readAndCacheXlChartDataSeries];
  [CHBDefaultTextProperties readWithState:stateCopy];
  v11 = [CHBPlotArea readWithState:stateCopy];
  [chart setPlotArea:v11];

  if (XlChartBinaryReader::hasTitle(xlReader))
  {
    XlChartTextFrame::XlChartTextFrame(v20);
    v20[0] = &unk_286EC99A8;
    (*(*xlReader + 760))(xlReader, v20);
    v12 = [CHBTitle readFrom:v20 state:stateCopy];
    v13 = v12;
    if (v12)
    {
      if ([v12 isCachedTitleEmpty])
      {
        mainType = [chart mainType];
        resources = [stateCopy resources];
        v16 = [mainType defaultTitleWithResources:resources];

        if (v16)
        {
          lastCachedName = [v13 lastCachedName];
          v18 = lastCachedName;
          if (lastCachedName && [lastCachedName areThereRuns])
          {
            string = [v16 string];
            [v18 setString:string];
          }

          else
          {
            [v13 setLastCachedName:v16];
          }
        }
      }

      [chart setTitle:v13];
    }

    [chart setAutoTitleDeleted:v21];

    XlChartTextFrame::~XlChartTextFrame(v20);
  }

  XlChartParent::~XlChartParent(v22);
}

+ (int)readCHDDisplayBlanksAsEnumFrom:(int)from
{
  if (from > 2)
  {
    return 2;
  }

  else
  {
    return dword_25D6FE454[from];
  }
}

+ (int)emptyCellsPlottedEnumsFrom:(int)from
{
  if (from > 2)
  {
    return 1;
  }

  else
  {
    return dword_25D6FE454[from];
  }
}

@end