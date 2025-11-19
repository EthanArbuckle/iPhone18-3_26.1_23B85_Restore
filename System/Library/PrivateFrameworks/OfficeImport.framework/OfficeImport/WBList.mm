@interface WBList
+ (void)readFrom:(id)a3 list:(id)a4 override:(void *)a5;
+ (void)write:(id)a3 list:(id)a4 to:(void *)a5;
@end

@implementation WBList

+ (void)readFrom:(id)a3 list:(id)a4 override:(void *)a5
{
  v14 = a3;
  v7 = a4;
  v8 = *(a5 + 8) - *(a5 + 6);
  v9 = (v8 >> 3);
  if ((v8 >> 3))
  {
    v10 = 0;
    do
    {
      DefaultFormat = XlChartDataSeries::getDefaultFormat(a5, v10);
      v12 = [v7 addLevelOverrideWithLevel:*(DefaultFormat + 20)];
      v13 = [v14 targetDocument];
      [WBListLevelOverride readFrom:v14 listLevelOverride:v12 formatOverride:DefaultFormat document:v13];

      ++v10;
    }

    while (v9 != v10);
  }
}

+ (void)write:(id)a3 list:(id)a4 to:(void *)a5
{
  v11 = a3;
  v7 = a4;
  v8 = [v7 levelOverrideCount];
  WrdListFormatOverride::setNumberOfLevelsOverridden(a5, v8);
  *(a5 + 4) = [v7 listDefinitionId];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [v7 levelOverrideAt:i];
      [WBListLevelOverride write:v11 listLevelOverride:v10 wrdFormatOverride:XlChartDataSeries::getDefaultFormat(a5, i)];
    }
  }
}

@end