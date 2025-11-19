@interface HMDUserDataZoneControllerShareLogEvent
- (HMDUserDataZoneControllerShareLogEvent)initWithResult:(unint64_t)a3 didAccept:(BOOL)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUserDataZoneControllerShareLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"result";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserDataZoneControllerShareLogEvent result](self, "result")}];
  v8[1] = @"didAccept";
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUserDataZoneControllerShareLogEvent didAccept](self, "didAccept")}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDUserDataZoneControllerShareLogEvent)initWithResult:(unint64_t)a3 didAccept:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = HMDUserDataZoneControllerShareLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_result = a3;
    result->_didAccept = a4;
  }

  return result;
}

@end