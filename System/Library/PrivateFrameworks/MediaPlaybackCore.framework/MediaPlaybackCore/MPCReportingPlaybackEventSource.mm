@interface MPCReportingPlaybackEventSource
- (MPCReportingPlaybackEventSource)init;
@end

@implementation MPCReportingPlaybackEventSource

- (MPCReportingPlaybackEventSource)init
{
  v6.receiver = self;
  v6.super_class = MPCReportingPlaybackEventSource;
  v2 = [(MPCReportingPlaybackEventSource *)&v6 init];
  if (v2)
  {
    v3 = +[MPCReportingDeviceIdentityPropertiesLoader sharedLoader];
    identityPropertiesLoader = v2->_identityPropertiesLoader;
    v2->_identityPropertiesLoader = v3;
  }

  return v2;
}

@end