@interface NTPBRecordBase
- (BOOL)hasExpiredAssetURLs;
- (BOOL)needsAssetURLRefresh;
@end

@implementation NTPBRecordBase

- (BOOL)needsAssetURLRefresh
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 assetURLsDate];
    if (v2)
    {
      v3 = MEMORY[0x1E695DF00];
      v4 = [v1 assetURLsDate];
      v5 = [v3 dateWithPBDate:v4];
      [v5 fc_timeIntervalUntilNow];
      v1 = v6 >= 604800.0;
    }

    else
    {
      v1 = 1;
    }
  }

  return v1;
}

- (BOOL)hasExpiredAssetURLs
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 assetURLsDate];
    if (v2)
    {
      v3 = MEMORY[0x1E695DF00];
      v4 = [v1 assetURLsDate];
      v5 = [v3 dateWithPBDate:v4];
      [v5 fc_timeIntervalUntilNow];
      v1 = v6 >= 2592000.0;
    }

    else
    {
      v1 = 1;
    }
  }

  return v1;
}

@end