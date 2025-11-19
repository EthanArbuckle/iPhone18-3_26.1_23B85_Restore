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
  v6 = [v4 minimumBreakthroughUrgency];
  [v5 setMinimumBreakthroughUrgency:{objc_msgSend(v6, "integerValue")}];

  v7 = [v4 allowedThreads];
  v8 = [v7 mutableCopy];
  [v5 setAllowedThreads:v8];

  v9 = [v4 deniedThreads];

  v10 = [v9 mutableCopy];
  [v5 setDeniedThreads:v10];

  return v5;
}

- (DNDSMutableApplicationConfigurationRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableApplicationConfigurationRecord);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "minimumBreakthroughUrgency")}];
  [(DNDSMutableApplicationConfigurationRecord *)v2 setMinimumBreakthroughUrgency:v3];

  v4 = [a1 allowedThreads];
  [(DNDSMutableApplicationConfigurationRecord *)v2 setAllowedThreads:v4];

  v5 = [a1 deniedThreads];
  [(DNDSMutableApplicationConfigurationRecord *)v2 setDeniedThreads:v5];

  return v2;
}

@end