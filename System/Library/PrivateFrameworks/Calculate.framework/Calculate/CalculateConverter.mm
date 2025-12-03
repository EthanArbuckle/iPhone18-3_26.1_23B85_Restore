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
    refreshIfNeeded = [v4 refreshIfNeeded];
    goto LABEL_5;
  }

  v2 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
  needsRefresh = [v2 needsRefresh];

  if (needsRefresh)
  {
    v4 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
    refreshIfNeeded = [v4 refreshSynchronously];
LABEL_5:
    LOBYTE(needsRefresh) = refreshIfNeeded;
  }

  return needsRefresh;
}

+ (BOOL)refreshCurrencyCache
{
  if (+[_TtC9Calculate22StocksKitCurrencyCache isEnabled])
  {
    v2 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
    refreshSynchronously = [v2 refreshSynchronously];
  }

  else
  {
    v2 = +[CalculateCurrencyCache shared];
    refreshSynchronously = [v2 refresh];
  }

  v4 = refreshSynchronously;

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

  shared = [(__objc2_class *)*v3 shared];
  needsRefresh = [shared needsRefresh];

  return needsRefresh;
}

+ (id)currencyCacheLastRefreshDate
{
  if (+[_TtC9Calculate22StocksKitCurrencyCache isEnabled])
  {
    lastRefreshDate = objc_opt_new();
  }

  else
  {
    v3 = +[CalculateCurrencyCache shared];
    lastRefreshDate = [v3 lastRefreshDate];
  }

  return lastRefreshDate;
}

@end