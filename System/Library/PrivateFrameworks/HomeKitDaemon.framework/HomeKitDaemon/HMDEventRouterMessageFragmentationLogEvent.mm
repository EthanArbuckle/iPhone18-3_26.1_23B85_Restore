@interface HMDEventRouterMessageFragmentationLogEvent
- (HMDEventRouterMessageFragmentationLogEvent)initWithIsCachedEventQueue:(BOOL)a3 isFragmented:(BOOL)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDEventRouterMessageFragmentationLogEvent

- (HMDEventRouterMessageFragmentationLogEvent)initWithIsCachedEventQueue:(BOOL)a3 isFragmented:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = HMDEventRouterMessageFragmentationLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_isCachedEventQueue = a3;
    result->_isFragmented = a4;
  }

  return result;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventRouterMessageFragmentationLogEvent isCachedEventQueue](self, "isCachedEventQueue")}];
  [v3 setObject:v4 forKeyedSubscript:@"isCachedEventQueue_BOOL"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventRouterMessageFragmentationLogEvent isFragmented](self, "isFragmented")}];
  [v3 setObject:v5 forKeyedSubscript:@"isFragmented_BOOL"];

  if ([(HMDEventRouterMessageFragmentationLogEvent *)self isCachedEventQueue])
  {
    v6 = &unk_283E74828;
  }

  else
  {
    v6 = &unk_283E74840;
  }

  [v3 setObject:v6 forKeyedSubscript:@"isCachedEventQueue_INT"];
  if ([(HMDEventRouterMessageFragmentationLogEvent *)self isFragmented])
  {
    v7 = &unk_283E74828;
  }

  else
  {
    v7 = &unk_283E74840;
  }

  [v3 setObject:v7 forKeyedSubscript:@"isFragmented_INT"];

  return v3;
}

@end