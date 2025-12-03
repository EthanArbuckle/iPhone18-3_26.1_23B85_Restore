@interface HMDEventRouterMessageFragmentationLogEvent
- (HMDEventRouterMessageFragmentationLogEvent)initWithIsCachedEventQueue:(BOOL)queue isFragmented:(BOOL)fragmented;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDEventRouterMessageFragmentationLogEvent

- (HMDEventRouterMessageFragmentationLogEvent)initWithIsCachedEventQueue:(BOOL)queue isFragmented:(BOOL)fragmented
{
  v7.receiver = self;
  v7.super_class = HMDEventRouterMessageFragmentationLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_isCachedEventQueue = queue;
    result->_isFragmented = fragmented;
  }

  return result;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventRouterMessageFragmentationLogEvent isCachedEventQueue](self, "isCachedEventQueue")}];
  [dictionary setObject:v4 forKeyedSubscript:@"isCachedEventQueue_BOOL"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventRouterMessageFragmentationLogEvent isFragmented](self, "isFragmented")}];
  [dictionary setObject:v5 forKeyedSubscript:@"isFragmented_BOOL"];

  if ([(HMDEventRouterMessageFragmentationLogEvent *)self isCachedEventQueue])
  {
    v6 = &unk_286627D60;
  }

  else
  {
    v6 = &unk_286627D78;
  }

  [dictionary setObject:v6 forKeyedSubscript:@"isCachedEventQueue_INT"];
  if ([(HMDEventRouterMessageFragmentationLogEvent *)self isFragmented])
  {
    v7 = &unk_286627D60;
  }

  else
  {
    v7 = &unk_286627D78;
  }

  [dictionary setObject:v7 forKeyedSubscript:@"isFragmented_INT"];

  return dictionary;
}

@end