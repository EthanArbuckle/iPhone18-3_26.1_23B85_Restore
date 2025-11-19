@interface CATRemoteConnectionSocketOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CATRemoteConnectionSocketOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(CATRemoteConnectionSocketOptions *)self adaptiveWriteTimeout];
    [v4 setAdaptiveWriteTimeout:v5];

    v6 = [(CATRemoteConnectionSocketOptions *)self keepAliveEnabled];
    [v4 setKeepAliveEnabled:v6];

    v7 = [(CATRemoteConnectionSocketOptions *)self keepAliveDelay];
    [v4 setKeepAliveDelay:v7];

    v8 = [(CATRemoteConnectionSocketOptions *)self keepAliveInterval];
    [v4 setKeepAliveInterval:v8];

    v9 = [(CATRemoteConnectionSocketOptions *)self keepAliveCount];
    [v4 setKeepAliveCount:v9];

    v10 = [(CATRemoteConnectionSocketOptions *)self netServiceType];
    [v4 setNetServiceType:v10];
  }

  return v4;
}

@end