@interface ECCurrencyEntry
+ (id)currencyWithLassoCode:(id)a3 langId:(int)a4 xlSymbol:(id)a5;
+ (id)currencyWithLassoCode:(id)a3 langId:(int)a4 xlSymbol:(id)a5 accountingFormat:(int)a6;
+ (id)currencyWithLassoCode:(id)a3 langId:(int)a4 xlSymbol:(id)a5 isExport:(BOOL)a6;
+ (id)currencyWithLassoCode:(id)a3 langId:(int)a4 xlSymbol:(id)a5 isExport:(BOOL)a6 accountingFormat:(int)a7;
- (ECCurrencyEntry)initWithLassoCode:(id)a3 langId:(int)a4 xlSymbol:(id)a5 isExport:(BOOL)a6 accountingFormat:(int)a7;
@end

@implementation ECCurrencyEntry

- (ECCurrencyEntry)initWithLassoCode:(id)a3 langId:(int)a4 xlSymbol:(id)a5 isExport:(BOOL)a6 accountingFormat:(int)a7
{
  v10 = *&a4;
  v13 = a3;
  v14 = a5;
  v20.receiver = self;
  v20.super_class = ECCurrencyEntry;
  v15 = [(ECCurrencyEntry *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->mLassoCurrencyCode, a3);
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%X", v10];
    mXlLangId = v16->mXlLangId;
    v16->mXlLangId = v17;

    objc_storeStrong(&v16->mXlCurrencySymbol, a5);
    v16->mAppliesToExport = a6;
    v16->mXlAccountingFormat = a7;
  }

  return v16;
}

+ (id)currencyWithLassoCode:(id)a3 langId:(int)a4 xlSymbol:(id)a5
{
  v5 = [a1 currencyWithLassoCode:a3 langId:*&a4 xlSymbol:a5 isExport:1 accountingFormat:0];

  return v5;
}

+ (id)currencyWithLassoCode:(id)a3 langId:(int)a4 xlSymbol:(id)a5 accountingFormat:(int)a6
{
  v6 = [a1 currencyWithLassoCode:a3 langId:*&a4 xlSymbol:a5 isExport:1 accountingFormat:*&a6];

  return v6;
}

+ (id)currencyWithLassoCode:(id)a3 langId:(int)a4 xlSymbol:(id)a5 isExport:(BOOL)a6
{
  v6 = [a1 currencyWithLassoCode:a3 langId:*&a4 xlSymbol:a5 isExport:a6 accountingFormat:0];

  return v6;
}

+ (id)currencyWithLassoCode:(id)a3 langId:(int)a4 xlSymbol:(id)a5 isExport:(BOOL)a6 accountingFormat:(int)a7
{
  v7 = *&a7;
  v8 = a6;
  v10 = *&a4;
  v11 = a3;
  v12 = a5;
  v13 = [objc_alloc(objc_opt_class()) initWithLassoCode:v11 langId:v10 xlSymbol:v12 isExport:v8 accountingFormat:v7];

  return v13;
}

@end