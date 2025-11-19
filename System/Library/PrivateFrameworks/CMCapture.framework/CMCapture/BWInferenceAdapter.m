@interface BWInferenceAdapter
- (BWInferenceAdapter)init;
- (id)description;
- (void)dealloc;
@end

@implementation BWInferenceAdapter

- (BWInferenceAdapter)init
{
  v4.receiver = self;
  v4.super_class = BWInferenceAdapter;
  v2 = [(BWInferenceAdapter *)&v4 init];
  if (v2)
  {
    v2->_cachedInferenceProviderByCacheKey = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceAdapter;
  [(BWInferenceAdapter *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = BWInferenceAdapter;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p> cachedInferenceProviderByCacheKey:%@ shouldCacheInferenceProvider:%d", -[BWInferenceAdapter description](&v3, sel_description), self, self->_cachedInferenceProviderByCacheKey, self->_shouldCacheInferenceProvider];
}

@end