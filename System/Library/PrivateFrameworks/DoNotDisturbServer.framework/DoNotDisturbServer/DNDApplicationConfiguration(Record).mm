@interface DNDApplicationConfiguration(Record)
+ (id)configurationForRecord:()Record;
- (DNDSMutableApplicationConfigurationRecord)makeRecord;
@end

@implementation DNDApplicationConfiguration(Record)

+ (id)configurationForRecord:()Record
{
  v3 = MEMORY[0x277D05A00];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  minimumBreakthroughUrgency = [v4 minimumBreakthroughUrgency];
  [v5 setMinimumBreakthroughUrgency:{objc_msgSend(minimumBreakthroughUrgency, "integerValue")}];

  allowedThreads = [v4 allowedThreads];
  v8 = [allowedThreads mutableCopy];
  [v5 setAllowedThreads:v8];

  deniedThreads = [v4 deniedThreads];

  v10 = [deniedThreads mutableCopy];
  [v5 setDeniedThreads:v10];

  return v5;
}

- (DNDSMutableApplicationConfigurationRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableApplicationConfigurationRecord);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "minimumBreakthroughUrgency")}];
  [(DNDSMutableApplicationConfigurationRecord *)v2 setMinimumBreakthroughUrgency:v3];

  allowedThreads = [self allowedThreads];
  [(DNDSMutableApplicationConfigurationRecord *)v2 setAllowedThreads:allowedThreads];

  deniedThreads = [self deniedThreads];
  [(DNDSMutableApplicationConfigurationRecord *)v2 setDeniedThreads:deniedThreads];

  return v2;
}

@end