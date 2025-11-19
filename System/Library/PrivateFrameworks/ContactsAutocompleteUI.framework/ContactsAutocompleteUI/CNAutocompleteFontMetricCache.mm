@interface CNAutocompleteFontMetricCache
+ (id)sharedFontMetricCache;
- (BOOL)ensureCacheIsValid;
- (CNAutocompleteFontMetricCache)init;
- (double)cachedFloat:(id)a3 forKey:(id)a4;
- (double)cachedScaledFloatWithValue:(double)a3 fontStyle:(id)a4;
- (double)cachedScaledFloatWithValue:(double)a3 forKey:(id)a4;
- (id)cachedFont:(id)a3 forKey:(id)a4;
- (id)cachedPreferredFontForStyle:(id)a3;
- (void)_didReceivePreferredFontChangedNotification:(id)a3;
- (void)invalidateCache;
@end

@implementation CNAutocompleteFontMetricCache

+ (id)sharedFontMetricCache
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!sharedFontMetricCache_sharedFontMetricCache)
  {
    v3 = objc_alloc_init(CNAutocompleteFontMetricCache);
    v4 = sharedFontMetricCache_sharedFontMetricCache;
    sharedFontMetricCache_sharedFontMetricCache = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedFontMetricCache_sharedFontMetricCache;

  return v5;
}

- (CNAutocompleteFontMetricCache)init
{
  v10.receiver = self;
  v10.super_class = CNAutocompleteFontMetricCache;
  v2 = [(CNAutocompleteFontMetricCache *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = [v3 preferredContentSizeCategory];
    preferredSizeValidationKey = v2->_preferredSizeValidationKey;
    v2->_preferredSizeValidationKey = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    metricCacheDictionary = v2->_metricCacheDictionary;
    v2->_metricCacheDictionary = v6;

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v2 selector:sel__didReceivePreferredFontChangedNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v2;
}

- (id)cachedPreferredFontForStyle:(id)a3
{
  v3 = a3;
  v4 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v10 = MEMORY[0x1E69E9820];
  v11 = v3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = v3;
  v7 = [v5 stringWithFormat:@"preferredFont.%@", v6, v10, 3221225472, __61__CNAutocompleteFontMetricCache_cachedPreferredFontForStyle___block_invoke, &unk_1E7CD27D0];
  v8 = [v4 cachedFont:&v10 forKey:v7];

  return v8;
}

- (double)cachedScaledFloatWithValue:(double)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CNAutocompleteFontMetricCache_cachedScaledFloatWithValue_forKey___block_invoke;
  v11[3] = &unk_1E7CD27F8;
  v12 = v6;
  v13 = a3;
  v7 = v6;
  [v7 cachedFloat:v11 forKey:v5];
  v9 = v8;

  return v9;
}

double __67__CNAutocompleteFontMetricCache_cachedScaledFloatWithValue_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreferredFontForStyle:*MEMORY[0x1E69DDCF8]];
  [v2 _scaledValueForValue:*(a1 + 40)];
  UIRoundToViewScale();
  v4 = v3;

  return v4;
}

- (double)cachedScaledFloatWithValue:(double)a3 fontStyle:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"preferredFont.%@.float.%.1f", v5, *&a3];
  v7 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CNAutocompleteFontMetricCache_cachedScaledFloatWithValue_fontStyle___block_invoke;
  v13[3] = &unk_1E7CD2820;
  v14 = v7;
  v15 = v5;
  v16 = a3;
  v8 = v5;
  v9 = v7;
  [v9 cachedFloat:v13 forKey:v6];
  v11 = v10;

  return v11;
}

double __70__CNAutocompleteFontMetricCache_cachedScaledFloatWithValue_fontStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreferredFontForStyle:*(a1 + 40)];
  [v2 _scaledValueForValue:*(a1 + 48)];
  UIRoundToViewScale();
  v4 = v3;

  return v4;
}

- (id)cachedFont:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_metricCacheDictionary objectForKey:v7];
  if (!v8)
  {
    v8 = v6[2](v6);
    [(NSMutableDictionary *)self->_metricCacheDictionary setObject:v8 forKey:v7];
  }

  return v8;
}

- (double)cachedFloat:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_metricCacheDictionary objectForKey:v7];
  if (!v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = v6[2](v6);
    *&v10 = v10;
    v8 = [v9 numberWithFloat:v10];
    [(NSMutableDictionary *)self->_metricCacheDictionary setValue:v8 forKey:v7];
  }

  [v8 floatValue];
  v12 = v11;

  return v12;
}

- (void)invalidateCache
{
  [(NSMutableDictionary *)self->_metricCacheDictionary removeAllObjects];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"CNComposeFontMetricCacheInvalidationNotification" object:self];
}

- (BOOL)ensureCacheIsValid
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [v4 isEqualToString:self->_preferredSizeValidationKey];
  if ((v5 & 1) == 0)
  {
    objc_storeStrong(&self->_preferredSizeValidationKey, v4);
    [(CNAutocompleteFontMetricCache *)self invalidateCache];
  }

  return v5;
}

- (void)_didReceivePreferredFontChangedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDC80]];
  preferredSizeValidationKey = self->_preferredSizeValidationKey;
  self->_preferredSizeValidationKey = v5;

  [(CNAutocompleteFontMetricCache *)self invalidateCache];
}

@end