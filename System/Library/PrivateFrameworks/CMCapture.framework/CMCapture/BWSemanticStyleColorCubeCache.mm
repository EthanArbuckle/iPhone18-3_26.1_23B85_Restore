@interface BWSemanticStyleColorCubeCache
- (BWSemanticStyleColorCubeCache)initWithColorLookupCache:(id)cache;
- (id)filtersForSemanticStyle:(id)style sceneType:(int)type personSegmentationEnabled:(BOOL)enabled maskVisualizationEnabled:(BOOL)visualizationEnabled applyStyleBackgroundToEntireFrame:(BOOL)frame filtersToCombine:(id)combine;
- (void)dealloc;
@end

@implementation BWSemanticStyleColorCubeCache

- (BWSemanticStyleColorCubeCache)initWithColorLookupCache:(id)cache
{
  v6.receiver = self;
  v6.super_class = BWSemanticStyleColorCubeCache;
  v4 = [(BWSemanticStyleColorCubeCache *)&v6 init];
  if (v4)
  {
    v4->_cubeFilterCache = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_recentFilterCacheKeys = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_filterCacheLock._os_unfair_lock_opaque = 0;
    v4->_cachingEnabled = 1;
    v4->_colorLookupCache = cache;
    v4->_cacheMaxSize = 10;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSemanticStyleColorCubeCache;
  [(BWSemanticStyleColorCubeCache *)&v3 dealloc];
}

- (id)filtersForSemanticStyle:(id)style sceneType:(int)type personSegmentationEnabled:(BOOL)enabled maskVisualizationEnabled:(BOOL)visualizationEnabled applyStyleBackgroundToEntireFrame:(BOOL)frame filtersToCombine:(id)combine
{
  visualizationEnabledCopy = visualizationEnabled;
  frameCopy = frame;
  enabledCopy = enabled;
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@"{"];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [combine countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    v15 = 1;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(combine);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        if ((v15 & 1) == 0)
        {
          [string appendString:{@", "}];
        }

        [string appendString:{objc_msgSend(v17, "name")}];
        v15 = 0;
      }

      v13 = [combine countByEnumeratingWithState:&v35 objects:v34 count:16];
      v15 = 0;
    }

    while (v13);
  }

  [string appendString:@"}"];
  v18 = MEMORY[0x1E696AEC0];
  if (type > 3)
  {
    v19 = @"semanticStyleSceneType-unknown";
  }

  else
  {
    v19 = off_1E798FC58[type];
  }

  if (visualizationEnabledCopy || frameCopy)
  {
    if (visualizationEnabledCopy)
    {
      v20 = @"-mask-visualization";
    }

    else
    {
      v20 = @"-forced-to-background";
    }

    v19 = [(__CFString *)v19 stringByAppendingString:v20];
  }

  [style toneBias];
  v22 = v21;
  [style warmthBias];
  v24 = [v18 stringWithFormat:@"%@-%f, %f, %@", v19, *&v22, v23, string];
  if (!style || !self->_cachingEnabled || !enabledCopy)
  {
    return BWSemanticStyleFiltersForSemanticStyleAndFilterToCombine(style, type, enabledCopy, visualizationEnabledCopy, frameCopy, self->_colorLookupCache, combine);
  }

  v25 = v24;
  os_unfair_lock_lock(&self->_filterCacheLock);
  v26 = [(NSMutableDictionary *)self->_cubeFilterCache objectForKeyedSubscript:v25];
  if (v26)
  {
    v27 = v26;
    [(NSMutableArray *)self->_recentFilterCacheKeys removeObject:v25];
    [(NSMutableArray *)self->_recentFilterCacheKeys addObject:v25];
  }

  else
  {
    os_unfair_lock_unlock(&self->_filterCacheLock);
    v27 = BWSemanticStyleFiltersForSemanticStyleAndFilterToCombine(style, type, 1, visualizationEnabledCopy, frameCopy, self->_colorLookupCache, combine);
    os_unfair_lock_lock(&self->_filterCacheLock);
    [(NSMutableDictionary *)self->_cubeFilterCache setObject:v27 forKeyedSubscript:v25];
    [(NSMutableArray *)self->_recentFilterCacheKeys addObject:v25];
    if ([(NSMutableArray *)self->_recentFilterCacheKeys count]> self->_cacheMaxSize)
    {
      firstObject = [(NSMutableArray *)self->_recentFilterCacheKeys firstObject];
      [(NSMutableArray *)self->_recentFilterCacheKeys removeObjectAtIndex:0];
      [(NSMutableDictionary *)self->_cubeFilterCache setObject:0 forKeyedSubscript:firstObject];
    }
  }

  os_unfair_lock_unlock(&self->_filterCacheLock);
  return v27;
}

@end