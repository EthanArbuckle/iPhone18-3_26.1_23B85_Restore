@interface WBList
+ (void)readFrom:(id)from list:(id)list override:(void *)override;
+ (void)write:(id)write list:(id)list to:(void *)to;
@end

@implementation WBList

+ (void)readFrom:(id)from list:(id)list override:(void *)override
{
  fromCopy = from;
  listCopy = list;
  v8 = *(override + 8) - *(override + 6);
  v9 = (v8 >> 3);
  if ((v8 >> 3))
  {
    v10 = 0;
    do
    {
      DefaultFormat = XlChartDataSeries::getDefaultFormat(override, v10);
      v12 = [listCopy addLevelOverrideWithLevel:*(DefaultFormat + 20)];
      targetDocument = [fromCopy targetDocument];
      [WBListLevelOverride readFrom:fromCopy listLevelOverride:v12 formatOverride:DefaultFormat document:targetDocument];

      ++v10;
    }

    while (v9 != v10);
  }
}

+ (void)write:(id)write list:(id)list to:(void *)to
{
  writeCopy = write;
  listCopy = list;
  levelOverrideCount = [listCopy levelOverrideCount];
  WrdListFormatOverride::setNumberOfLevelsOverridden(to, levelOverrideCount);
  *(to + 4) = [listCopy listDefinitionId];
  if (levelOverrideCount)
  {
    for (i = 0; i != levelOverrideCount; ++i)
    {
      v10 = [listCopy levelOverrideAt:i];
      [WBListLevelOverride write:writeCopy listLevelOverride:v10 wrdFormatOverride:XlChartDataSeries::getDefaultFormat(to, i)];
    }
  }
}

@end