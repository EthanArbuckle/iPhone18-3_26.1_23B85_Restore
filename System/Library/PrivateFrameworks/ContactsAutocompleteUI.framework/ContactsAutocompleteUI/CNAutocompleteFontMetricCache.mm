@interface CNAutocompleteFontMetricCache
+ (id)sharedFontMetricCache;
- (BOOL)ensureCacheIsValid;
- (CNAutocompleteFontMetricCache)init;
- (double)cachedFloat:(id)float forKey:(id)key;
- (double)cachedScaledFloatWithValue:(double)value fontStyle:(id)style;
- (double)cachedScaledFloatWithValue:(double)value forKey:(id)key;
- (id)cachedFont:(id)font forKey:(id)key;
- (id)cachedPreferredFontForStyle:(id)style;
- (void)_didReceivePreferredFontChangedNotification:(id)notification;
- (void)invalidateCache;
@end

@implementation CNAutocompleteFontMetricCache

+ (id)sharedFontMetricCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sharedFontMetricCache_sharedFontMetricCache)
  {
    v3 = objc_alloc_init(CNAutocompleteFontMetricCache);
    v4 = sharedFontMetricCache_sharedFontMetricCache;
    sharedFontMetricCache_sharedFontMetricCache = v3;
  }

  objc_sync_exit(selfCopy);

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
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    preferredSizeValidationKey = v2->_preferredSizeValidationKey;
    v2->_preferredSizeValidationKey = preferredContentSizeCategory;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    metricCacheDictionary = v2->_metricCacheDictionary;
    v2->_metricCacheDictionary = v6;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__didReceivePreferredFontChangedNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v2;
}

- (id)cachedPreferredFontForStyle:(id)style
{
  styleCopy = style;
  v4 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v10 = MEMORY[0x1E69E9820];
  v11 = styleCopy;
  v5 = MEMORY[0x1E696AEC0];
  v6 = styleCopy;
  v7 = [v5 stringWithFormat:@"preferredFont.%@", v6, v10, 3221225472, __61__CNAutocompleteFontMetricCache_cachedPreferredFontForStyle___block_invoke, &unk_1E7CD27D0];
  v8 = [v4 cachedFont:&v10 forKey:v7];

  return v8;
}

- (double)cachedScaledFloatWithValue:(double)value forKey:(id)key
{
  keyCopy = key;
  v6 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CNAutocompleteFontMetricCache_cachedScaledFloatWithValue_forKey___block_invoke;
  v11[3] = &unk_1E7CD27F8;
  v12 = v6;
  valueCopy = value;
  v7 = v6;
  [v7 cachedFloat:v11 forKey:keyCopy];
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

- (double)cachedScaledFloatWithValue:(double)value fontStyle:(id)style
{
  styleCopy = style;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"preferredFont.%@.float.%.1f", styleCopy, *&value];
  v7 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CNAutocompleteFontMetricCache_cachedScaledFloatWithValue_fontStyle___block_invoke;
  v13[3] = &unk_1E7CD2820;
  v14 = v7;
  v15 = styleCopy;
  valueCopy = value;
  v8 = styleCopy;
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

- (id)cachedFont:(id)font forKey:(id)key
{
  fontCopy = font;
  keyCopy = key;
  v8 = [(NSMutableDictionary *)self->_metricCacheDictionary objectForKey:keyCopy];
  if (!v8)
  {
    v8 = fontCopy[2](fontCopy);
    [(NSMutableDictionary *)self->_metricCacheDictionary setObject:v8 forKey:keyCopy];
  }

  return v8;
}

- (double)cachedFloat:(id)float forKey:(id)key
{
  floatCopy = float;
  keyCopy = key;
  v8 = [(NSMutableDictionary *)self->_metricCacheDictionary objectForKey:keyCopy];
  if (!v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = floatCopy[2](floatCopy);
    *&v10 = v10;
    v8 = [v9 numberWithFloat:v10];
    [(NSMutableDictionary *)self->_metricCacheDictionary setValue:v8 forKey:keyCopy];
  }

  [v8 floatValue];
  v12 = v11;

  return v12;
}

- (void)invalidateCache
{
  [(NSMutableDictionary *)self->_metricCacheDictionary removeAllObjects];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CNComposeFontMetricCacheInvalidationNotification" object:self];
}

- (BOOL)ensureCacheIsValid
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  v5 = [preferredContentSizeCategory isEqualToString:self->_preferredSizeValidationKey];
  if ((v5 & 1) == 0)
  {
    objc_storeStrong(&self->_preferredSizeValidationKey, preferredContentSizeCategory);
    [(CNAutocompleteFontMetricCache *)self invalidateCache];
  }

  return v5;
}

- (void)_didReceivePreferredFontChangedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDC80]];
  preferredSizeValidationKey = self->_preferredSizeValidationKey;
  self->_preferredSizeValidationKey = v5;

  [(CNAutocompleteFontMetricCache *)self invalidateCache];
}

@end