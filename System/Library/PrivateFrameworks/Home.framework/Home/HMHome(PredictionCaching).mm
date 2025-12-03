@interface HMHome(PredictionCaching)
- (id)cachedPredictions;
- (void)setCachedPredictions:()PredictionCaching;
@end

@implementation HMHome(PredictionCaching)

- (id)cachedPredictions
{
  os_unfair_lock_lock(&_cacheLock);
  objc_opt_class();
  v4 = objc_getAssociatedObject(self, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  os_unfair_lock_unlock(&_cacheLock);

  return v6;
}

- (void)setCachedPredictions:()PredictionCaching
{
  v4 = a3;
  os_unfair_lock_lock(&_cacheLock);
  objc_setAssociatedObject(self, sel_cachedPredictions, v4, 1);

  os_unfair_lock_unlock(&_cacheLock);
}

@end