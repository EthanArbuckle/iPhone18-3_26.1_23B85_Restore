@interface MPUTheme
+ (id)_themeAssetCache;
+ (id)cachedObjectWithKey:(id)key block:(id)block;
+ (id)disabledPlaybackControlColor;
@end

@implementation MPUTheme

+ (id)cachedObjectWithKey:(id)key block:(id)block
{
  keyCopy = key;
  blockCopy = block;
  if (keyCopy)
  {
    _themeAssetCache = [self _themeAssetCache];
    v9 = [_themeAssetCache objectForKey:keyCopy];

    if (blockCopy)
    {
      if (!v9)
      {
        v9 = blockCopy[2](blockCopy);
        if (v9)
        {
          _themeAssetCache2 = [self _themeAssetCache];
          [_themeAssetCache2 setObject:v9 forKey:keyCopy];
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)disabledPlaybackControlColor
{
  v3 = NSStringFromSelector(a2);
  v4 = [self cachedObjectWithKey:v3 block:&__block_literal_global];

  return v4;
}

+ (id)_themeAssetCache
{
  if (_themeAssetCache___onceToken != -1)
  {
    +[MPUTheme _themeAssetCache];
  }

  v3 = _themeAssetCache___themeAssetCache;

  return v3;
}

uint64_t __28__MPUTheme__themeAssetCache__block_invoke()
{
  _themeAssetCache___themeAssetCache = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

@end