@interface HMDAppleMediaAccessoryRemovalLogEvent
- (HMDAppleMediaAccessoryRemovalLogEvent)initWithIsLocalRemoval:(BOOL)a3 isLocalFallback:(BOOL)a4 isDuplicate:(BOOL)a5 duplicateCount:(int64_t)a6;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAppleMediaAccessoryRemovalLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessoryRemovalLogEvent isLocalRemoval](self, "isLocalRemoval")}];
  [v3 setObject:v4 forKeyedSubscript:@"isLocalRemoval"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessoryRemovalLogEvent isLocalFallback](self, "isLocalFallback")}];
  [v3 setObject:v5 forKeyedSubscript:@"isLocalFallback"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessoryRemovalLogEvent isDuplicate](self, "isDuplicate")}];
  [v3 setObject:v6 forKeyedSubscript:@"isDuplicate"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAppleMediaAccessoryRemovalLogEvent duplicateCount](self, "duplicateCount")}];
  [v3 setObject:v7 forKeyedSubscript:@"duplicateCount"];

  return v3;
}

- (HMDAppleMediaAccessoryRemovalLogEvent)initWithIsLocalRemoval:(BOOL)a3 isLocalFallback:(BOOL)a4 isDuplicate:(BOOL)a5 duplicateCount:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = HMDAppleMediaAccessoryRemovalLogEvent;
  result = [(HMMLogEvent *)&v11 init];
  if (result)
  {
    result->_isLocalRemoval = a3;
    result->_isLocalFallback = a4;
    result->_isDuplicate = a5;
    result->_duplicateCount = a6;
  }

  return result;
}

@end