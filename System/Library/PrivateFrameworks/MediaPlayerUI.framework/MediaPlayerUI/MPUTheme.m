@interface MPUTheme
+ (id)_themeAssetCache;
+ (id)cachedObjectWithKey:(id)a3 block:(id)a4;
+ (id)disabledPlaybackControlColor;
@end

@implementation MPUTheme

+ (id)cachedObjectWithKey:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [a1 _themeAssetCache];
    v9 = [v8 objectForKey:v6];

    if (v7)
    {
      if (!v9)
      {
        v9 = v7[2](v7);
        if (v9)
        {
          v10 = [a1 _themeAssetCache];
          [v10 setObject:v9 forKey:v6];
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
  v4 = [a1 cachedObjectWithKey:v3 block:&__block_literal_global];

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