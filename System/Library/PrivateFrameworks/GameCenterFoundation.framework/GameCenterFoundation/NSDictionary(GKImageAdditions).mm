@interface NSDictionary(GKImageAdditions)
+ (id)_gkClientImageDictionaryForServerImageURLs:()GKImageAdditions;
+ (id)_gkImageCacheKeyPathsByKey;
- (id)_gkImageURLForSize:()GKImageAdditions scale:foundSize:;
@end

@implementation NSDictionary(GKImageAdditions)

- (id)_gkImageURLForSize:()GKImageAdditions scale:foundSize:
{
  if (a2 == 0.0)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/NSDictionary+GKImageAdditions.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ (scale != 0)\n[%s (%s:%d)]", v10, "-[NSDictionary(GKImageAdditions) _gkImageURLForSize:scale:foundSize:]", objc_msgSend(lastPathComponent, "UTF8String"), 83];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
  }

  v14 = (a4 * a2);
  v15 = [self objectForKeyedSubscript:@"template"];
  v16 = v15;
  if (v15 && [v15 length])
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v14];
    v18 = [MEMORY[0x277CCAB68] stringWithString:v16];
    lastPathComponent2 = [v18 lastPathComponent];
    v20 = [v18 rangeOfString:lastPathComponent2 options:12];
    [v18 replaceOccurrencesOfString:@"{w}" withString:v17 options:4 range:{v20, v21}];
    lastPathComponent3 = [v18 lastPathComponent];

    v23 = [v18 rangeOfString:lastPathComponent3 options:12];
    [v18 replaceOccurrencesOfString:@"{h}" withString:v17 options:4 range:{v23, v24}];
    if (a5)
    {
      *a5 = v14;
    }
  }

  else if (v14 > 512)
  {
LABEL_19:
    v18 = 0;
  }

  else
  {
    while (1)
    {
      v25 = (v14 * a2);
      v26 = @"64";
      if (v25 >= 65)
      {
        v26 = @"128";
        if (v25 >= 0x81)
        {
          if (v25 >= 0x101)
          {
            v26 = @"512";
          }

          else
          {
            v26 = @"256";
          }
        }
      }

      v27 = [self objectForKey:v26];
      if (v27)
      {
        break;
      }

      if (v14)
      {
        v28 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
        v29 = v28 | (v28 >> 4) | ((v28 | (v28 >> 4)) >> 8);
        v14 = (v29 | (v29 >> 16)) + 1;
      }

      else
      {
        v14 = 1;
      }

      if (v14 >= 513)
      {
        goto LABEL_19;
      }
    }

    v18 = v27;
    if (a5)
    {
      *a5 = v14;
    }
  }

  return v18;
}

+ (id)_gkImageCacheKeyPathsByKey
{
  if (_gkImageCacheKeyPathsByKey_onceToken != -1)
  {
    +[NSDictionary(GKImageAdditions) _gkImageCacheKeyPathsByKey];
  }

  v1 = _gkImageCacheKeyPathsByKey_sKeyPaths;

  return v1;
}

+ (id)_gkClientImageDictionaryForServerImageURLs:()GKImageAdditions
{
  v4 = a3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _gkImageCacheKeyPathsByKey = [self _gkImageCacheKeyPathsByKey];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__NSDictionary_GKImageAdditions___gkClientImageDictionaryForServerImageURLs___block_invoke;
  v12[3] = &unk_2785DD848;
  v7 = dictionary;
  v13 = v7;
  v14 = v4;
  v8 = v4;
  [_gkImageCacheKeyPathsByKey enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

@end