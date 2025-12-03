@interface ECCurrencyEntry
+ (id)currencyWithLassoCode:(id)code langId:(int)id xlSymbol:(id)symbol;
+ (id)currencyWithLassoCode:(id)code langId:(int)id xlSymbol:(id)symbol accountingFormat:(int)format;
+ (id)currencyWithLassoCode:(id)code langId:(int)id xlSymbol:(id)symbol isExport:(BOOL)export;
+ (id)currencyWithLassoCode:(id)code langId:(int)id xlSymbol:(id)symbol isExport:(BOOL)export accountingFormat:(int)format;
- (ECCurrencyEntry)initWithLassoCode:(id)code langId:(int)id xlSymbol:(id)symbol isExport:(BOOL)export accountingFormat:(int)format;
@end

@implementation ECCurrencyEntry

- (ECCurrencyEntry)initWithLassoCode:(id)code langId:(int)id xlSymbol:(id)symbol isExport:(BOOL)export accountingFormat:(int)format
{
  v10 = *&id;
  codeCopy = code;
  symbolCopy = symbol;
  v20.receiver = self;
  v20.super_class = ECCurrencyEntry;
  v15 = [(ECCurrencyEntry *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->mLassoCurrencyCode, code);
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%X", v10];
    mXlLangId = v16->mXlLangId;
    v16->mXlLangId = v17;

    objc_storeStrong(&v16->mXlCurrencySymbol, symbol);
    v16->mAppliesToExport = export;
    v16->mXlAccountingFormat = format;
  }

  return v16;
}

+ (id)currencyWithLassoCode:(id)code langId:(int)id xlSymbol:(id)symbol
{
  v5 = [self currencyWithLassoCode:code langId:*&id xlSymbol:symbol isExport:1 accountingFormat:0];

  return v5;
}

+ (id)currencyWithLassoCode:(id)code langId:(int)id xlSymbol:(id)symbol accountingFormat:(int)format
{
  v6 = [self currencyWithLassoCode:code langId:*&id xlSymbol:symbol isExport:1 accountingFormat:*&format];

  return v6;
}

+ (id)currencyWithLassoCode:(id)code langId:(int)id xlSymbol:(id)symbol isExport:(BOOL)export
{
  v6 = [self currencyWithLassoCode:code langId:*&id xlSymbol:symbol isExport:export accountingFormat:0];

  return v6;
}

+ (id)currencyWithLassoCode:(id)code langId:(int)id xlSymbol:(id)symbol isExport:(BOOL)export accountingFormat:(int)format
{
  v7 = *&format;
  exportCopy = export;
  v10 = *&id;
  codeCopy = code;
  symbolCopy = symbol;
  v13 = [objc_alloc(objc_opt_class()) initWithLassoCode:codeCopy langId:v10 xlSymbol:symbolCopy isExport:exportCopy accountingFormat:v7];

  return v13;
}

@end