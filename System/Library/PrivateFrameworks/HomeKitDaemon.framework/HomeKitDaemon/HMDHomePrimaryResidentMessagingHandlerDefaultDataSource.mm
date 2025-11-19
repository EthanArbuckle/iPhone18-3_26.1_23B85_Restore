@interface HMDHomePrimaryResidentMessagingHandlerDefaultDataSource
- (HMDHomePrimaryResidentMessagingHandlerDefaultDataSource)init;
@end

@implementation HMDHomePrimaryResidentMessagingHandlerDefaultDataSource

- (HMDHomePrimaryResidentMessagingHandlerDefaultDataSource)init
{
  v8.receiver = self;
  v8.super_class = HMDHomePrimaryResidentMessagingHandlerDefaultDataSource;
  v2 = [(HMDHomePrimaryResidentMessagingHandlerDefaultDataSource *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    v5 = [objc_alloc(MEMORY[0x277D0F930]) initWithOptions:0];
    timerManager = v2->_timerManager;
    v2->_timerManager = v5;
  }

  return v2;
}

@end