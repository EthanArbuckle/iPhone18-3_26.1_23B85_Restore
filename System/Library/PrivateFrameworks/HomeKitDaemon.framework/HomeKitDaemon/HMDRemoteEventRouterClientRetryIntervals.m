@interface HMDRemoteEventRouterClientRetryIntervals
+ (id)retryIntervalsForResidentClient;
- (HMDRemoteEventRouterClientRetryIntervals)initWithIntervals:(id)a3;
- (double)nextInterval;
@end

@implementation HMDRemoteEventRouterClientRetryIntervals

- (double)nextInterval
{
  v3 = [(HMDRemoteEventRouterClientRetryIntervals *)self intervals];
  v4 = [v3 objectAtIndexedSubscript:{-[HMDRemoteEventRouterClientRetryIntervals currentIndex](self, "currentIndex")}];
  [v4 doubleValue];
  v6 = v5;

  v7 = [(HMDRemoteEventRouterClientRetryIntervals *)self currentIndex];
  v8 = [(HMDRemoteEventRouterClientRetryIntervals *)self intervals];
  v9 = [v8 count] - 1;

  if (v7 < v9)
  {
    [(HMDRemoteEventRouterClientRetryIntervals *)self setCurrentIndex:[(HMDRemoteEventRouterClientRetryIntervals *)self currentIndex]+ 1];
  }

  return v6;
}

- (HMDRemoteEventRouterClientRetryIntervals)initWithIntervals:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDRemoteEventRouterClientRetryIntervals;
  v5 = [(HMDRemoteEventRouterClientRetryIntervals *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    intervals = v5->_intervals;
    v5->_intervals = v6;
  }

  return v5;
}

+ (id)retryIntervalsForResidentClient
{
  v2 = [[HMDRemoteEventRouterClientRetryIntervals alloc] initWithIntervals:&unk_283E754E8];

  return v2;
}

@end