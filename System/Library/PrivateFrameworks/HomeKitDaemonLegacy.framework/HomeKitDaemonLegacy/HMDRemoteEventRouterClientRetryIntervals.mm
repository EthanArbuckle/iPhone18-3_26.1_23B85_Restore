@interface HMDRemoteEventRouterClientRetryIntervals
+ (id)retryIntervalsForResidentClient;
- (HMDRemoteEventRouterClientRetryIntervals)initWithIntervals:(id)intervals;
- (double)nextInterval;
@end

@implementation HMDRemoteEventRouterClientRetryIntervals

- (double)nextInterval
{
  intervals = [(HMDRemoteEventRouterClientRetryIntervals *)self intervals];
  v4 = [intervals objectAtIndexedSubscript:{-[HMDRemoteEventRouterClientRetryIntervals currentIndex](self, "currentIndex")}];
  [v4 doubleValue];
  v6 = v5;

  currentIndex = [(HMDRemoteEventRouterClientRetryIntervals *)self currentIndex];
  intervals2 = [(HMDRemoteEventRouterClientRetryIntervals *)self intervals];
  v9 = [intervals2 count] - 1;

  if (currentIndex < v9)
  {
    [(HMDRemoteEventRouterClientRetryIntervals *)self setCurrentIndex:[(HMDRemoteEventRouterClientRetryIntervals *)self currentIndex]+ 1];
  }

  return v6;
}

- (HMDRemoteEventRouterClientRetryIntervals)initWithIntervals:(id)intervals
{
  intervalsCopy = intervals;
  v9.receiver = self;
  v9.super_class = HMDRemoteEventRouterClientRetryIntervals;
  v5 = [(HMDRemoteEventRouterClientRetryIntervals *)&v9 init];
  if (v5)
  {
    v6 = [intervalsCopy copy];
    intervals = v5->_intervals;
    v5->_intervals = v6;
  }

  return v5;
}

+ (id)retryIntervalsForResidentClient
{
  v2 = [[HMDRemoteEventRouterClientRetryIntervals alloc] initWithIntervals:&unk_2866272B0];

  return v2;
}

@end