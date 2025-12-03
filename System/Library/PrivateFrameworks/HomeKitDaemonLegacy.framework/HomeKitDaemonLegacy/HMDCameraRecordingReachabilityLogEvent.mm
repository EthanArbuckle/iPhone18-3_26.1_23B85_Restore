@interface HMDCameraRecordingReachabilityLogEvent
- (HMDCameraRecordingReachabilityLogEvent)initWithReachability:(BOOL)reachability didCreateEventModel:(BOOL)model reachabilityChangeDebounceCount:(unint64_t)count offlineDuration:(double)duration hapAccessory:(id)accessory;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCameraRecordingReachabilityLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingReachabilityLogEvent reachable](self, "reachable")}];
  [v3 setObject:v4 forKeyedSubscript:@"reachable"];

  if ([(HMDCameraRecordingReachabilityLogEvent *)self reachable])
  {
    v5 = &unk_286627940;
  }

  else
  {
    v5 = &unk_286627958;
  }

  [v3 setObject:v5 forKeyedSubscript:@"isReachable_INT"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingReachabilityLogEvent didCreateEventModel](self, "didCreateEventModel")}];
  [v3 setObject:v6 forKeyedSubscript:@"didCreateEventModel"];

  if ([(HMDCameraRecordingReachabilityLogEvent *)self didCreateEventModel])
  {
    v7 = &unk_286627940;
  }

  else
  {
    v7 = &unk_286627958;
  }

  [v3 setObject:v7 forKeyedSubscript:@"didCreateEventModel_INT"];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingReachabilityLogEvent reachabilityChangeDebounceCount](self, "reachabilityChangeDebounceCount")}];
  [v3 setObject:v8 forKeyedSubscript:@"reachabilityChangeDebounceCount_INT"];

  v9 = MEMORY[0x277CCABB0];
  [(HMDCameraRecordingReachabilityLogEvent *)self offlineDuration];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"offlineDurationSeconds"];

  v11 = [v3 copy];

  return v11;
}

- (HMDCameraRecordingReachabilityLogEvent)initWithReachability:(BOOL)reachability didCreateEventModel:(BOOL)model reachabilityChangeDebounceCount:(unint64_t)count offlineDuration:(double)duration hapAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v18.receiver = self;
  v18.super_class = HMDCameraRecordingReachabilityLogEvent;
  v13 = [(HMMLogEvent *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_reachable = reachability;
    v13->_didCreateEventModel = model;
    v13->_reachabilityChangeDebounceCount = count;
    v13->_offlineDuration = duration;
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v14->_accessoryIdentifier;
    v14->_accessoryIdentifier = identifier;
  }

  return v14;
}

@end