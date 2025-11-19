@interface _LocalizedImageCache
- (_LocalizedImageCache)init;
- (void)dealloc;
@end

@implementation _LocalizedImageCache

- (_LocalizedImageCache)init
{
  v7.receiver = self;
  v7.super_class = _LocalizedImageCache;
  v2 = [(_LocalizedImageCache *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__localeChanged name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4.receiver = self;
  v4.super_class = _LocalizedImageCache;
  [(_LocalizedImageCache *)&v4 dealloc];
}

@end