@interface NTPBPublisherPaidDescriptionStrings(FCAdditions)
+ (id)publisherPaidDescriptionStringsFromJSON:()FCAdditions;
@end

@implementation NTPBPublisherPaidDescriptionStrings(FCAdditions)

+ (id)publisherPaidDescriptionStringsFromJSON:()FCAdditions
{
  v0 = [MEMORY[0x1E695DF20] fc_dictionaryFromJSON:?];
  if ([v0 count])
  {
    v1 = objc_alloc_init(MEMORY[0x1E69B6F40]);
    v2 = [v0 objectForKeyedSubscript:@"paywallDescription"];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 objectForKey:@"channelPaywall"];
      v5 = [v3 objectForKey:@"promotionalPaywall"];
      v6 = [v3 objectForKey:@"leakyPaywall"];
      v7 = [v3 objectForKey:@"hardPaywall"];
      v8 = v7;
      if (v4)
      {
        v9 = 0;
      }

      else
      {
        v9 = v5 == 0;
      }

      if (!v9 || v6 != 0 || v7 != 0)
      {
        v12 = objc_alloc_init(MEMORY[0x1E69B6EE0]);
        [v12 setChannelPaywall:v4];
        [v12 setPromotionalPaywall:v5];
        [v12 setLeakyPaywall:v6];
        [v12 setHardPaywall:v8];
        [v1 setPaywallDescription:v12];
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end