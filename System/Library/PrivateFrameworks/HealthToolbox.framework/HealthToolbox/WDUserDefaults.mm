@interface WDUserDefaults
- (WDUserDefaults)initWithHealthStore:(id)store;
@end

@implementation WDUserDefaults

- (WDUserDefaults)initWithHealthStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = WDUserDefaults;
  v5 = [(WDUserDefaults *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCD570] healthAppDefaultsDomainWithHealthStore:storeCopy];
    keyValueDomain = v5->_keyValueDomain;
    v5->_keyValueDomain = v6;
  }

  return v5;
}

@end