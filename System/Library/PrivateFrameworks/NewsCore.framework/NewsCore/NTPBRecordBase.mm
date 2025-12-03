@interface NTPBRecordBase
- (BOOL)hasExpiredAssetURLs;
- (BOOL)needsAssetURLRefresh;
@end

@implementation NTPBRecordBase

- (BOOL)needsAssetURLRefresh
{
  selfCopy = self;
  if (self)
  {
    assetURLsDate = [self assetURLsDate];
    if (assetURLsDate)
    {
      v3 = MEMORY[0x1E695DF00];
      assetURLsDate2 = [selfCopy assetURLsDate];
      v5 = [v3 dateWithPBDate:assetURLsDate2];
      [v5 fc_timeIntervalUntilNow];
      selfCopy = v6 >= 604800.0;
    }

    else
    {
      selfCopy = 1;
    }
  }

  return selfCopy;
}

- (BOOL)hasExpiredAssetURLs
{
  selfCopy = self;
  if (self)
  {
    assetURLsDate = [self assetURLsDate];
    if (assetURLsDate)
    {
      v3 = MEMORY[0x1E695DF00];
      assetURLsDate2 = [selfCopy assetURLsDate];
      v5 = [v3 dateWithPBDate:assetURLsDate2];
      [v5 fc_timeIntervalUntilNow];
      selfCopy = v6 >= 2592000.0;
    }

    else
    {
      selfCopy = 1;
    }
  }

  return selfCopy;
}

@end