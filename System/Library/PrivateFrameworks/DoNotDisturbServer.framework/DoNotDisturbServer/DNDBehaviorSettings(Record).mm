@interface DNDBehaviorSettings(Record)
+ (id)settingsForRecord:()Record;
- (DNDSMutableBehaviorSettingsRecord)makeRecord;
@end

@implementation DNDBehaviorSettings(Record)

+ (id)settingsForRecord:()Record
{
  v3 = MEMORY[0x277D05A08];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  interruptionBehaviorSetting = [v4 interruptionBehaviorSetting];

  [v5 setInterruptionBehaviorSetting:{objc_msgSend(interruptionBehaviorSetting, "unsignedIntegerValue")}];

  return v5;
}

- (DNDSMutableBehaviorSettingsRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableBehaviorSettingsRecord);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "interruptionBehaviorSetting")}];
  [(DNDSMutableBehaviorSettingsRecord *)v2 setInterruptionBehaviorSetting:v3];

  return v2;
}

@end