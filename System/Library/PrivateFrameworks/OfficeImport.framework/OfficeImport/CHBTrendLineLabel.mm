@interface CHBTrendLineLabel
+ (id)readFrom:(void *)a3 state:(id)a4;
@end

@implementation CHBTrendLineLabel

+ (id)readFrom:(void *)a3 state:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 resources];
    v8 = [CHDTrendlineLabel trendlineLabelWithResources:v7];

    if (((*(a3 + 20) - *(a3 + 18)) & 0x7FFF8) != 0)
    {
      CachedCustomLabel = XlChartDataSeries::getCachedCustomLabel(a3, 0);
      v10 = CachedCustomLabel;
      if (CachedCustomLabel)
      {
        v11 = *(CachedCustomLabel + 104);
        v12 = *(CachedCustomLabel + 178);
        v13 = objc_opt_class();
        v14 = [v6 ebReaderSheetState];
        v15 = [EBFormula edFormulaFromXlFmlaDefinition:v11 withFormulaLength:v12 formulaClass:v13 state:v14];

        if (v15)
        {
          v16 = [v6 workbook];
          [v15 setWorkbook:v16];
        }

        v17 = [v6 chart];
        [v8 setName:v15 chart:v17];

        [v8 setContentFormatId:*(v10 + 184)];
        [v8 setIsContentFormatDerivedFromDataPoints:*(v10 + 202)];
        [v8 setGeneratedText:*(v10 + 192)];
        [v8 setAutomaticLabelDeleted:*(v10 + 193)];
        v18 = [CHBString edStringFromXlChartTextFrame:v10 state:v6];
        [v8 setLastCachedName:v18];

        v19 = [CHBGraphicProperties oadGraphicPropertiesFromXlChartTextFrame:v10 state:v6];
        [v8 setGraphicProperties:v19];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end