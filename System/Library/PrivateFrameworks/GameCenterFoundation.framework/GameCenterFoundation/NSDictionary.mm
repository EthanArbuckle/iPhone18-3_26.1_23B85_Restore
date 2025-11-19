@interface NSDictionary
@end

@implementation NSDictionary

void __76__NSDictionary_GKCollectionUtils___gkSubDictionaryWithKeys_mappedToNewKeys___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    v8 = v5;
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) objectAtIndex:a3];
    [v6 setObject:v8 forKey:v7];

    v5 = v8;
  }
}

void __60__NSDictionary_GKImageAdditions___gkImageCacheKeyPathsByKey__block_invoke()
{
  v0 = _gkImageCacheKeyPathsByKey_sKeyPaths;
  _gkImageCacheKeyPathsByKey_sKeyPaths = &unk_283B33470;
}

void __77__NSDictionary_GKImageAdditions___gkClientImageDictionaryForServerImageURLs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  [v4 setObject:v7 forKey:v6];
}

@end