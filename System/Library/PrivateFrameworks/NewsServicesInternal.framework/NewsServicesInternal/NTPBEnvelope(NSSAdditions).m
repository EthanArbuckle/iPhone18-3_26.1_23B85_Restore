@interface NTPBEnvelope(NSSAdditions)
+ (id)nss_envelopeWithIdentifier;
@end

@implementation NTPBEnvelope(NSSAdditions)

+ (id)nss_envelopeWithIdentifier
{
  v0 = objc_opt_new();
  v1 = NSSNTPBAnalyticsUUIDData();
  [v0 setIdentifier:v1];

  return v0;
}

@end