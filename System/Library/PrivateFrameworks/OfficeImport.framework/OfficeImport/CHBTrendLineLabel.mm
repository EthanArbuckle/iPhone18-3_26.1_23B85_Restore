@interface CHBTrendLineLabel
+ (id)readFrom:(void *)from state:(id)state;
@end

@implementation CHBTrendLineLabel

+ (id)readFrom:(void *)from state:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  if (from)
  {
    resources = [stateCopy resources];
    v8 = [CHDTrendlineLabel trendlineLabelWithResources:resources];

    if (((*(from + 20) - *(from + 18)) & 0x7FFF8) != 0)
    {
      CachedCustomLabel = XlChartDataSeries::getCachedCustomLabel(from, 0);
      v10 = CachedCustomLabel;
      if (CachedCustomLabel)
      {
        v11 = *(CachedCustomLabel + 104);
        v12 = *(CachedCustomLabel + 178);
        v13 = objc_opt_class();
        ebReaderSheetState = [v6 ebReaderSheetState];
        v15 = [EBFormula edFormulaFromXlFmlaDefinition:v11 withFormulaLength:v12 formulaClass:v13 state:ebReaderSheetState];

        if (v15)
        {
          workbook = [v6 workbook];
          [v15 setWorkbook:workbook];
        }

        chart = [v6 chart];
        [v8 setName:v15 chart:chart];

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