@interface CATRemoteConnectionSocketOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CATRemoteConnectionSocketOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  if (v4)
  {
    adaptiveWriteTimeout = [(CATRemoteConnectionSocketOptions *)self adaptiveWriteTimeout];
    [v4 setAdaptiveWriteTimeout:adaptiveWriteTimeout];

    keepAliveEnabled = [(CATRemoteConnectionSocketOptions *)self keepAliveEnabled];
    [v4 setKeepAliveEnabled:keepAliveEnabled];

    keepAliveDelay = [(CATRemoteConnectionSocketOptions *)self keepAliveDelay];
    [v4 setKeepAliveDelay:keepAliveDelay];

    keepAliveInterval = [(CATRemoteConnectionSocketOptions *)self keepAliveInterval];
    [v4 setKeepAliveInterval:keepAliveInterval];

    keepAliveCount = [(CATRemoteConnectionSocketOptions *)self keepAliveCount];
    [v4 setKeepAliveCount:keepAliveCount];

    netServiceType = [(CATRemoteConnectionSocketOptions *)self netServiceType];
    [v4 setNetServiceType:netServiceType];
  }

  return v4;
}

@end