@interface NSDictionary
@end

@implementation NSDictionary

void __56__NSDictionary_MRAdditions__MR_isEqualToNowPlayingInfo___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  if (([*(a1 + 32) containsObject:v9] & 1) == 0)
  {
    v8 = [*(a1 + 40) objectForKey:v9];
    *(*(*(a1 + 48) + 8) + 24) = _MRNowPlayingValuesAreEqual(v7, v8);
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

@end