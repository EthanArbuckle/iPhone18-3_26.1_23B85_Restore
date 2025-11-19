@interface WDUserDefaults
- (WDUserDefaults)initWithHealthStore:(id)a3;
@end

@implementation WDUserDefaults

- (WDUserDefaults)initWithHealthStore:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WDUserDefaults;
  v5 = [(WDUserDefaults *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCD570] healthAppDefaultsDomainWithHealthStore:v4];
    keyValueDomain = v5->_keyValueDomain;
    v5->_keyValueDomain = v6;
  }

  return v5;
}

@end