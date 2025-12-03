@interface ECUtils
+ (BOOL)isRenameFunction:(id)function;
+ (BOOL)validDateInExcel:(id)excel edWorkbook:(id)workbook;
+ (double)dateTimeNumberFromNSDate:(id)date edWorkbook:(id)workbook;
+ (id)dateFromXlDateTimeNumber:(double)number edWorkbook:(id)workbook;
+ (id)lassoDefaultTableName;
+ (id)lassoStyleTableReferenceFromTableId:(id)id;
+ (id)renameFunction:(id)function;
+ (id)renameMap;
+ (unsigned)dateTimeOffsetForBuggy1900Dates:(double)dates edWorkbook:(id)workbook;
@end

@implementation ECUtils

+ (BOOL)isRenameFunction:(id)function
{
  functionCopy = function;
  renameMap = [self renameMap];
  uppercaseString = [functionCopy uppercaseString];
  v7 = [renameMap objectForKey:uppercaseString];
  v8 = v7 != 0;

  return v8;
}

+ (id)renameFunction:(id)function
{
  functionCopy = function;
  uppercaseString = [functionCopy uppercaseString];

  renameMap = [self renameMap];
  v7 = [renameMap objectForKey:uppercaseString];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = uppercaseString;
  }

  v9 = v8;

  return v8;
}

+ (id)lassoStyleTableReferenceFromTableId:(id)id
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SFTGlobalID_%@", id];

  return v3;
}

+ (id)lassoDefaultTableName
{
  v2 = TCBundle();
  v3 = [v2 localizedStringForKey:@"Table 1" value:&stru_286EE1130 table:@"TCCompatibility"];

  return v3;
}

+ (BOOL)validDateInExcel:(id)excel edWorkbook:(id)workbook
{
  excelCopy = excel;
  dateBaseDate = [workbook dateBaseDate];
  [excelCopy timeIntervalSinceDate:dateBaseDate];
  v8 = v7 >= -86400.0;

  return v8;
}

+ (id)dateFromXlDateTimeNumber:(double)number edWorkbook:(id)workbook
{
  workbookCopy = workbook;
  [self timeIntervalFromXlDateTimeNumber:workbookCopy edWorkbook:number];
  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  dateBaseDate = [workbookCopy dateBaseDate];
  v11 = [v9 initWithTimeInterval:dateBaseDate sinceDate:v8];

  return v11;
}

+ (double)dateTimeNumberFromNSDate:(id)date edWorkbook:(id)workbook
{
  dateCopy = date;
  workbookCopy = workbook;
  dateBaseDate = [workbookCopy dateBaseDate];
  [dateCopy timeIntervalSinceDate:dateBaseDate];
  v10 = (v9 - (v9 / 86400) * 86400.0) / 86400.0 + (v9 / 86400) + [self dateTimeOffsetForBuggy1900Dates:workbookCopy edWorkbook:(v9 - (v9 / 86400) * 86400.0) / 86400.0 + (v9 / 86400)];

  return v10;
}

+ (id)renameMap
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!+[ECUtils(Private) renameMap]::xlRenameMapDictionary)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"BETAINV", @"_XLFN.BETA.INV", @"BINOMDIST", @"_XLFN.BINOM.DIST", @"CRITBINOM", @"_XLFN.BINOM.INV", @"CHIDIST", @"_XLFN.CHISQ.DIST.RT", @"CHIINV", @"_XLFN.CHISQ.INV.RT", @"CHITEST", @"_XLFN.CHISQ.TEST", @"CONFIDENCE", @"_XLFN.CONFIDENCE.NORM", @"COVAR", @"_XLFN.COVARIANCE.P", @"EXPONDIST", @"_XLFN.EXPON.DIST", @"FDIST", @"_XLFN.F.DIST.RT", @"FINV", @"_XLFN.F.INV.RT", @"GAMMADIST", @"_XLFN.GAMMA.DIST", @"GAMMAINV", @"_XLFN.GAMMA.INV", @"LOGINV", @"_XLFN.LOGNORM.INV", @"MODE", @"_XLFN.MODE.SNGL", @"NORMDIST", @"_XLFN.NORM.DIST", @"NORMINV", @"_XLFN.NORM.INV", @"NORMSINV", @"_XLFN.NORM.S.INV", @"PERCENTILE", @"_XLFN.PERCENTILE.INC", @"PERCENTRANK", @"_XLFN.PERCENTRANK.INC", @"POISSON", @"_XLFN.POISSON.DIST", @"QUARTILE", @"_XLFN.QUARTILE.INC", @"RANK", @"_XLFN.RANK.EQ", @"STDEVP", @"_XLFN.STDEV.P", @"STDEV", @"_XLFN.STDEV.S", @"TINV", @"_XLFN.T.INV.2T", @"TTEST", @"_XLFN.T.TEST", @"VARP", @"_XLFN.VAR.P", @"VAR", @"_XLFN.VAR.S", @"ZTEST", @"_XLFN.Z.TEST", @"BONDDURATION"}];
    v4 = +[ECUtils(Private) renameMap]::xlRenameMapDictionary;
    +[ECUtils(Private) renameMap]::xlRenameMapDictionary = v3;
  }

  objc_sync_exit(v2);

  v5 = +[ECUtils(Private) renameMap]::xlRenameMapDictionary;

  return v5;
}

+ (unsigned)dateTimeOffsetForBuggy1900Dates:(double)dates edWorkbook:(id)workbook
{
  dateBase = [workbook dateBase];
  if (dates <= 60.0)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (dateBase == 1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

@end