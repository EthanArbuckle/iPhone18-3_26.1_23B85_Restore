@interface NTPBNetworkEvent(FCNetworkBehaviorMonitorAdditions)
- (BOOL)isSuccess;
- (uint64_t)pbNetworkEventType;
- (uint64_t)totalDuration;
@end

@implementation NTPBNetworkEvent(FCNetworkBehaviorMonitorAdditions)

- (uint64_t)pbNetworkEventType
{
  v1 = [a1 type];
  if (v1 > 0x1B)
  {
    return 0;
  }

  else
  {
    return dword_1B681A608[v1];
  }
}

- (uint64_t)totalDuration
{
  v2 = [a1 dnsDuration];
  v3 = [a1 connectDuration] + v2;
  v4 = [a1 requestDuration];
  return v3 + v4 + [a1 responseDuration];
}

- (BOOL)isSuccess
{
  if ([a1 errorCode])
  {
    return 0;
  }

  if ([a1 httpStatusCode] && (objc_msgSend(a1, "httpStatusCode") < 0xC8 || objc_msgSend(a1, "httpStatusCode") >= 0x12C))
  {
    return [a1 httpStatusCode] == 304;
  }

  return 1;
}

@end