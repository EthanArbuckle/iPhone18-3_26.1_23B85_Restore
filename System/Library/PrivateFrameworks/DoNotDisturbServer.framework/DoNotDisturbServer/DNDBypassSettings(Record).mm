@interface DNDBypassSettings(Record)
+ (id)settingsForRecord:()Record;
- (DNDSMutableBypassSettingsRecord)makeRecord;
@end

@implementation DNDBypassSettings(Record)

+ (id)settingsForRecord:()Record
{
  v3 = MEMORY[0x277D05A10];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  immediateBypassEventSourceType = [v4 immediateBypassEventSourceType];
  [v5 setImmediateBypassEventSourceType:{objc_msgSend(immediateBypassEventSourceType, "unsignedIntegerValue")}];

  immediateBypassCNGroupIdentifier = [v4 immediateBypassCNGroupIdentifier];
  [v5 setImmediateBypassCNGroupIdentifier:immediateBypassCNGroupIdentifier];

  repeatEventSourceBehaviorEnabledSetting = [v4 repeatEventSourceBehaviorEnabledSetting];

  [v5 setRepeatEventSourceBehaviorEnabledSetting:{objc_msgSend(repeatEventSourceBehaviorEnabledSetting, "unsignedIntegerValue")}];

  return v5;
}

- (DNDSMutableBypassSettingsRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableBypassSettingsRecord);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "immediateBypassEventSourceType")}];
  [(DNDSMutableBypassSettingsRecord *)v2 setImmediateBypassEventSourceType:v3];

  immediateBypassCNGroupIdentifier = [self immediateBypassCNGroupIdentifier];
  [(DNDSMutableBypassSettingsRecord *)v2 setImmediateBypassCNGroupIdentifier:immediateBypassCNGroupIdentifier];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "repeatEventSourceBehaviorEnabledSetting")}];
  [(DNDSMutableBypassSettingsRecord *)v2 setRepeatEventSourceBehaviorEnabledSetting:v5];

  return v2;
}

@end