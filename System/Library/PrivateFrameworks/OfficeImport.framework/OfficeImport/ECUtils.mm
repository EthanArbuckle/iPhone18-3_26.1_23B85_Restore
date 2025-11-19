@interface ECUtils
+ (BOOL)isRenameFunction:(id)a3;
+ (BOOL)validDateInExcel:(id)a3 edWorkbook:(id)a4;
+ (double)dateTimeNumberFromNSDate:(id)a3 edWorkbook:(id)a4;
+ (id)dateFromXlDateTimeNumber:(double)a3 edWorkbook:(id)a4;
+ (id)lassoDefaultTableName;
+ (id)lassoStyleTableReferenceFromTableId:(id)a3;
+ (id)renameFunction:(id)a3;
+ (id)renameMap;
+ (unsigned)dateTimeOffsetForBuggy1900Dates:(double)a3 edWorkbook:(id)a4;
@end

@implementation ECUtils

+ (BOOL)isRenameFunction:(id)a3
{
  v4 = a3;
  v5 = [a1 renameMap];
  v6 = [v4 uppercaseString];
  v7 = [v5 objectForKey:v6];
  v8 = v7 != 0;

  return v8;
}

+ (id)renameFunction:(id)a3
{
  v4 = a3;
  v5 = [v4 uppercaseString];

  v6 = [a1 renameMap];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

+ (id)lassoStyleTableReferenceFromTableId:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SFTGlobalID_%@", a3];

  return v3;
}

+ (id)lassoDefaultTableName
{
  v2 = TCBundle();
  v3 = [v2 localizedStringForKey:@"Table 1" value:&stru_286EE1130 table:@"TCCompatibility"];

  return v3;
}

+ (BOOL)validDateInExcel:(id)a3 edWorkbook:(id)a4
{
  v5 = a3;
  v6 = [a4 dateBaseDate];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7 >= -86400.0;

  return v8;
}

+ (id)dateFromXlDateTimeNumber:(double)a3 edWorkbook:(id)a4
{
  v6 = a4;
  [a1 timeIntervalFromXlDateTimeNumber:v6 edWorkbook:a3];
  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  v10 = [v6 dateBaseDate];
  v11 = [v9 initWithTimeInterval:v10 sinceDate:v8];

  return v11;
}

+ (double)dateTimeNumberFromNSDate:(id)a3 edWorkbook:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 dateBaseDate];
  [v6 timeIntervalSinceDate:v8];
  v10 = (v9 - (v9 / 86400) * 86400.0) / 86400.0 + (v9 / 86400) + [a1 dateTimeOffsetForBuggy1900Dates:v7 edWorkbook:(v9 - (v9 / 86400) * 86400.0) / 86400.0 + (v9 / 86400)];

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

+ (unsigned)dateTimeOffsetForBuggy1900Dates:(double)a3 edWorkbook:(id)a4
{
  v5 = [a4 dateBase];
  if (a3 <= 60.0)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5 == 1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

@end