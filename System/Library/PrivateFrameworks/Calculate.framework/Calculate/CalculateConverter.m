@interface CalculateConverter
+ (BOOL)needsRefresh;
+ (BOOL)refreshCurrencyCache;
+ (BOOL)refreshCurrencyCacheIfNeeded;
+ (id)currencyCacheLastRefreshDate;
@end

@implementation CalculateConverter

+ (BOOL)refreshCurrencyCacheIfNeeded
{
  if (!+[_TtC9Calculate22StocksKitCurrencyCache isEnabled])
  {
    v4 = +[CalculateCurrencyCache shared];
    v5 = [v4 refreshIfNeeded];
    goto LABEL_5;
  }

  v2 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
  v3 = [v2 needsRefresh];

  if (v3)
  {
    v4 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
    v5 = [v4 refreshSynchronously];
LABEL_5:
    LOBYTE(v3) = v5;
  }

  return v3;
}

+ (BOOL)refreshCurrencyCache
{
  if (+[_TtC9Calculate22StocksKitCurrencyCache isEnabled])
  {
    v2 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
    v3 = [v2 refreshSynchronously];
  }

  else
  {
    v2 = +[CalculateCurrencyCache shared];
    v3 = [v2 refresh];
  }

  v4 = v3;

  return v4;
}

+ (BOOL)needsRefresh
{
  v2 = +[_TtC9Calculate22StocksKitCurrencyCache isEnabled];
  v3 = off_1E815B830;
  if (v2)
  {
    v3 = &off_1E815B888;
  }

  v4 = [(__objc2_class *)*v3 shared];
  v5 = [v4 needsRefresh];

  return v5;
}

+ (id)currencyCacheLastRefreshDate
{
  if (+[_TtC9Calculate22StocksKitCurrencyCache isEnabled])
  {
    v2 = objc_opt_new();
  }

  else
  {
    v3 = +[CalculateCurrencyCache shared];
    v2 = [v3 lastRefreshDate];
  }

  return v2;
}

@end