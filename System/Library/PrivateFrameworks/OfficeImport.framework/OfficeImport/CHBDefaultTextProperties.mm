@interface CHBDefaultTextProperties
+ (void)readWithState:(id)state;
@end

@implementation CHBDefaultTextProperties

+ (void)readWithState:(id)state
{
  stateCopy = state;
  chart = [stateCopy chart];
  xlReader = [stateCopy xlReader];
  defaultTextProperties = [chart defaultTextProperties];
  v7 = 0;
  do
  {
    XlChartTextFrame::XlChartTextFrame(v11);
    v11[0] = &unk_286EC9A38;
    v19 = v7;
    XlChartBinaryReader::read(xlReader, v11);
    resources = [stateCopy resources];
    v9 = [CHDDefaultTextProperty defaultTextPropertyWithResources:resources];

    v10 = [CHBString edRunsFromXlChartTextFrame:v11 state:stateCopy];
    [v9 setRuns:v10];

    [v9 setContentFormatId:v13];
    [v9 setDefaultTextType:v7];
    [v9 setLabelPosition:v12];
    [v9 setIsShowCategoryLabel:v15];
    [v9 setIsShowValueLabel:v14];
    [v9 setIsShowPercentageLabel:v17];
    [v9 setIsShowBubbleSizeLabel:v18];
    [v9 setIsShowSeriesLabel:v16];
    [defaultTextProperties addObject:v9];

    XlChartTextFrame::~XlChartTextFrame(v11);
    v7 = (v7 + 1);
  }

  while (v7 != 4);
}

@end