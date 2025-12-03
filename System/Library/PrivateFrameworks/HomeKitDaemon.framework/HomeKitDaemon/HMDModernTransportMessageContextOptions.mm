@interface HMDModernTransportMessageContextOptions
+ (id)newWithBuilder:(id)builder;
- (HMDModernTransportMessageContextOptions)initWithBuilder:(id)builder;
@end

@implementation HMDModernTransportMessageContextOptions

- (HMDModernTransportMessageContextOptions)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = HMDModernTransportMessageContextOptions;
  v5 = [(HMDModernTransportMessageContextOptions *)&v15 init];
  if (v5)
  {
    transports = [builderCopy transports];
    transports = v5->_transports;
    v5->_transports = transports;

    [builderCopy timeoutOverride];
    v5->_timeoutOverride = v8;
    [builderCopy timeToLive];
    v5->_timeToLive = v9;
    v5->_expectsMultipleResponses = [builderCopy expectsMultipleResponses];
    v5->_expectRapportSuccess = [builderCopy expectRapportSuccess];
    v5->_trackingDeviceReachability = [builderCopy trackingDeviceReachability];
    requestStartTimeHeaderKey = [builderCopy requestStartTimeHeaderKey];
    requestStartTimeHeaderKey = v5->_requestStartTimeHeaderKey;
    v5->_requestStartTimeHeaderKey = requestStartTimeHeaderKey;

    timeToLiveHeaderKey = [builderCopy timeToLiveHeaderKey];
    timeToLiveHeaderKey = v5->_timeToLiveHeaderKey;
    v5->_timeToLiveHeaderKey = timeToLiveHeaderKey;
  }

  return v5;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(HMDModernTransportMessageContextOptionsBuilder);
  builderCopy[2](builderCopy, v4);

  v5 = [[HMDModernTransportMessageContextOptions alloc] initWithBuilder:v4];
  return v5;
}

@end