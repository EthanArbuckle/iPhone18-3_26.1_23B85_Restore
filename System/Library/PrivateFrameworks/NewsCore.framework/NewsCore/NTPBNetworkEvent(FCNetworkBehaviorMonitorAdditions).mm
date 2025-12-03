@interface NTPBNetworkEvent(FCNetworkBehaviorMonitorAdditions)
- (BOOL)isSuccess;
- (uint64_t)pbNetworkEventType;
- (uint64_t)totalDuration;
@end

@implementation NTPBNetworkEvent(FCNetworkBehaviorMonitorAdditions)

- (uint64_t)pbNetworkEventType
{
  type = [self type];
  if (type > 0x1B)
  {
    return 0;
  }

  else
  {
    return dword_1B681A608[type];
  }
}

- (uint64_t)totalDuration
{
  dnsDuration = [self dnsDuration];
  v3 = [self connectDuration] + dnsDuration;
  requestDuration = [self requestDuration];
  return v3 + requestDuration + [self responseDuration];
}

- (BOOL)isSuccess
{
  if ([self errorCode])
  {
    return 0;
  }

  if ([self httpStatusCode] && (objc_msgSend(self, "httpStatusCode") < 0xC8 || objc_msgSend(self, "httpStatusCode") >= 0x12C))
  {
    return [self httpStatusCode] == 304;
  }

  return 1;
}

@end