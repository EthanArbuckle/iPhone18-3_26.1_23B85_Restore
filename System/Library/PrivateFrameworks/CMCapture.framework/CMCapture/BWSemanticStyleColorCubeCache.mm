@interface BWSemanticStyleColorCubeCache
- (BWSemanticStyleColorCubeCache)initWithColorLookupCache:(id)a3;
- (id)filtersForSemanticStyle:(id)a3 sceneType:(int)a4 personSegmentationEnabled:(BOOL)a5 maskVisualizationEnabled:(BOOL)a6 applyStyleBackgroundToEntireFrame:(BOOL)a7 filtersToCombine:(id)a8;
- (void)dealloc;
@end

@implementation BWSemanticStyleColorCubeCache

- (BWSemanticStyleColorCubeCache)initWithColorLookupCache:(id)a3
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
    v4->_colorLookupCache = a3;
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

- (id)filtersForSemanticStyle:(id)a3 sceneType:(int)a4 personSegmentationEnabled:(BOOL)a5 maskVisualizationEnabled:(BOOL)a6 applyStyleBackgroundToEntireFrame:(BOOL)a7 filtersToCombine:(id)a8
{
  v32 = a6;
  v33 = a7;
  v30 = a5;
  v11 = [MEMORY[0x1E696AD60] string];
  [v11 appendString:@"{"];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [a8 countByEnumeratingWithState:&v35 objects:v34 count:16];
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
          objc_enumerationMutation(a8);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        if ((v15 & 1) == 0)
        {
          [v11 appendString:{@", "}];
        }

        [v11 appendString:{objc_msgSend(v17, "name")}];
        v15 = 0;
      }

      v13 = [a8 countByEnumeratingWithState:&v35 objects:v34 count:16];
      v15 = 0;
    }

    while (v13);
  }

  [v11 appendString:@"}"];
  v18 = MEMORY[0x1E696AEC0];
  if (a4 > 3)
  {
    v19 = @"semanticStyleSceneType-unknown";
  }

  else
  {
    v19 = off_1E798FC58[a4];
  }

  if (v32 || v33)
  {
    if (v32)
    {
      v20 = @"-mask-visualization";
    }

    else
    {
      v20 = @"-forced-to-background";
    }

    v19 = [(__CFString *)v19 stringByAppendingString:v20];
  }

  [a3 toneBias];
  v22 = v21;
  [a3 warmthBias];
  v24 = [v18 stringWithFormat:@"%@-%f, %f, %@", v19, *&v22, v23, v11];
  if (!a3 || !self->_cachingEnabled || !v30)
  {
    return BWSemanticStyleFiltersForSemanticStyleAndFilterToCombine(a3, a4, v30, v32, v33, self->_colorLookupCache, a8);
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
    v27 = BWSemanticStyleFiltersForSemanticStyleAndFilterToCombine(a3, a4, 1, v32, v33, self->_colorLookupCache, a8);
    os_unfair_lock_lock(&self->_filterCacheLock);
    [(NSMutableDictionary *)self->_cubeFilterCache setObject:v27 forKeyedSubscript:v25];
    [(NSMutableArray *)self->_recentFilterCacheKeys addObject:v25];
    if ([(NSMutableArray *)self->_recentFilterCacheKeys count]> self->_cacheMaxSize)
    {
      v28 = [(NSMutableArray *)self->_recentFilterCacheKeys firstObject];
      [(NSMutableArray *)self->_recentFilterCacheKeys removeObjectAtIndex:0];
      [(NSMutableDictionary *)self->_cubeFilterCache setObject:0 forKeyedSubscript:v28];
    }
  }

  os_unfair_lock_unlock(&self->_filterCacheLock);
  return v27;
}

@end