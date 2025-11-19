@interface HMDModernTransportMessageContextOptions
+ (id)newWithBuilder:(id)a3;
- (HMDModernTransportMessageContextOptions)initWithBuilder:(id)a3;
@end

@implementation HMDModernTransportMessageContextOptions

- (HMDModernTransportMessageContextOptions)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HMDModernTransportMessageContextOptions;
  v5 = [(HMDModernTransportMessageContextOptions *)&v15 init];
  if (v5)
  {
    v6 = [v4 transports];
    transports = v5->_transports;
    v5->_transports = v6;

    [v4 timeoutOverride];
    v5->_timeoutOverride = v8;
    [v4 timeToLive];
    v5->_timeToLive = v9;
    v5->_expectsMultipleResponses = [v4 expectsMultipleResponses];
    v5->_expectRapportSuccess = [v4 expectRapportSuccess];
    v5->_trackingDeviceReachability = [v4 trackingDeviceReachability];
    v10 = [v4 requestStartTimeHeaderKey];
    requestStartTimeHeaderKey = v5->_requestStartTimeHeaderKey;
    v5->_requestStartTimeHeaderKey = v10;

    v12 = [v4 timeToLiveHeaderKey];
    timeToLiveHeaderKey = v5->_timeToLiveHeaderKey;
    v5->_timeToLiveHeaderKey = v12;
  }

  return v5;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HMDModernTransportMessageContextOptionsBuilder);
  v3[2](v3, v4);

  v5 = [[HMDModernTransportMessageContextOptions alloc] initWithBuilder:v4];
  return v5;
}

@end