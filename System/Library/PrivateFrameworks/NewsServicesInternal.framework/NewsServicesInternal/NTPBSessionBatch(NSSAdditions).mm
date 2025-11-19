@interface NTPBSessionBatch(NSSAdditions)
+ (id)nss_sessionBatchWithIdentifier;
@end

@implementation NTPBSessionBatch(NSSAdditions)

+ (id)nss_sessionBatchWithIdentifier
{
  v0 = objc_opt_new();
  v1 = NSSNTPBAnalyticsUUIDData();
  [v0 setIdentifier:v1];

  return v0;
}

@end