@interface MPUFontDescriptorCache
+ (id)sharedFontDescriptorCache;
- (MPUFontDescriptorCache)init;
- (id)_cachedImmutableFontDescriptorMatchingMutableFontDescriptor:(id)a3;
- (id)cachedImmutableFontDescriptorForConfigurationBlock:(id)a3;
- (id)cachedImmutableFontDescriptorMatchingMutableFontDescriptor:(id)a3;
- (void)_handleContentSizeCategoryDidChangeNotification:(id)a3;
- (void)dealloc;
@end

@implementation MPUFontDescriptorCache

+ (id)sharedFontDescriptorCache
{
  if (sharedFontDescriptorCache_sSharedFontDescriptorCacheOnceToken != -1)
  {
    +[MPUFontDescriptorCache sharedFontDescriptorCache];
  }

  v3 = sharedFontDescriptorCache_sSharedFontDescriptorCache;

  return v3;
}

uint64_t __51__MPUFontDescriptorCache_sharedFontDescriptorCache__block_invoke()
{
  v0 = objc_alloc_init(MPUFontDescriptorCache);
  v1 = sharedFontDescriptorCache_sSharedFontDescriptorCache;
  sharedFontDescriptorCache_sSharedFontDescriptorCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MPUFontDescriptorCache)init
{
  v8.receiver = self;
  v8.super_class = MPUFontDescriptorCache;
  v2 = [(MPUFontDescriptorCache *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_maximumCapacity = 100;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedCachedFontDescriptors = v3->_orderedCachedFontDescriptors;
    v3->_orderedCachedFontDescriptors = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel__handleContentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = MPUFontDescriptorCache;
  [(MPUFontDescriptorCache *)&v4 dealloc];
}

- (id)cachedImmutableFontDescriptorForConfigurationBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    reusableMutableFontDescriptor = self->_reusableMutableFontDescriptor;
    if (!reusableMutableFontDescriptor)
    {
      v6 = objc_alloc_init(MPUMutableFontDescriptor);
      v7 = self->_reusableMutableFontDescriptor;
      self->_reusableMutableFontDescriptor = v6;

      reusableMutableFontDescriptor = self->_reusableMutableFontDescriptor;
    }

    v4[2](v4, reusableMutableFontDescriptor);
    v8 = [(MPUFontDescriptorCache *)self _cachedImmutableFontDescriptorMatchingMutableFontDescriptor:self->_reusableMutableFontDescriptor];
    [(MPUMutableFontDescriptor *)self->_reusableMutableFontDescriptor _resetToDefaultValues];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)cachedImmutableFontDescriptorMatchingMutableFontDescriptor:(id)a3
{
  if (a3)
  {
    v4 = [(MPUFontDescriptorCache *)self _cachedImmutableFontDescriptorMatchingMutableFontDescriptor:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleContentSizeCategoryDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v8 = [v4 defaultCenter];
  v6 = self;
  v7 = [v5 userInfo];

  [v8 postNotificationName:@"_MPUFontDescriptorDidInvalidateCachedFontsAndMetricsNotification" object:v6 userInfo:v7];
  [v8 postNotificationName:@"MPUFontDescriptorPreferredContentSizeCategoryDidChangeNotification" object:v6 userInfo:v7];
}

- (id)_cachedImmutableFontDescriptorMatchingMutableFontDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_orderedCachedFontDescriptors indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v4 _copyAllowingGlobalCacheLookup:0];
    if ([(NSMutableArray *)self->_orderedCachedFontDescriptors count]== self->_maximumCapacity)
    {
      [(NSMutableArray *)self->_orderedCachedFontDescriptors removeLastObject];
    }
  }

  else
  {
    v7 = v5;
    v6 = [(NSMutableArray *)self->_orderedCachedFontDescriptors objectAtIndex:v5];
    if (!v7)
    {
      goto LABEL_7;
    }

    [(NSMutableArray *)self->_orderedCachedFontDescriptors removeObjectAtIndex:v7];
  }

  [(NSMutableArray *)self->_orderedCachedFontDescriptors insertObject:v6 atIndex:0];
LABEL_7:

  return v6;
}

@end