@interface SlowNetworkLTE
- (SlowNetworkLTE)init;
@end

@implementation SlowNetworkLTE

- (SlowNetworkLTE)init
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = SlowNetworkLTE;
  v2 = [(SlowNetworkCondition *)&v7 initWithProfile:@"LTE"];
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    *buf = 138412290;
    v9 = v3;
    v4 = v3;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ Init passed", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

@end