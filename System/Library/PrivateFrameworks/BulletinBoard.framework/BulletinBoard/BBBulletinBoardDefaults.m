@interface BBBulletinBoardDefaults
+ (id)standardDefaults;
- (void)_bindAndRegisterDefaults;
@end

@implementation BBBulletinBoardDefaults

+ (id)standardDefaults
{
  if (standardDefaults___once != -1)
  {
    +[BBBulletinBoardDefaults standardDefaults];
  }

  v3 = standardDefaults___instance;

  return v3;
}

uint64_t __43__BBBulletinBoardDefaults_standardDefaults__block_invoke()
{
  standardDefaults___instance = objc_alloc_init(BBBulletinBoardDefaults);

  return MEMORY[0x2821F96F8]();
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalContentPreviewSetting"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"BBContentPreviewsSetting" toDefaultValue:&unk_28542E7B8 options:1];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalAnnounceSetting"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"BBAnnounceSetting" toDefaultValue:&unk_28542E7D0 options:1];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalAnnounceHeadphonesSetting"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"BBAnnounceHeadphonesSetting" toDefaultValue:&unk_28542E7B8 options:1];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalAnnounceCarPlaySetting"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"BBAnnounceCarPlaySetting" toDefaultValue:&unk_28542E7E8 options:1];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"announceSupportedForHeadphones"];
  v8 = MEMORY[0x277CBEC28];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"BBAnnounceSupportedForHeadPhones" toDefaultValue:MEMORY[0x277CBEC28] options:1];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"announceSupportedForCarPlay"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"BBAnnounceSupportedForCarPlay" toDefaultValue:v8 options:1];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"pairedVehiclesForCarPlay"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"BBPairedVehiclesForCarPlay" toDefaultValue:v8 options:1];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalScheduledDeliverySetting"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"BBScheduledDeliverySetting" toDefaultValue:&unk_28542E7B8 options:1];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalScheduledDeliveryTimes"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"BBScheduledDeliveryTimes" toDefaultValue:0 options:1];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalScheduledDeliveryShowNextSummarySetting"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"BBScheduledDeliveryShowNextSummary" toDefaultValue:&unk_28542E7B8 options:1];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalNotificationListDisplayStyleSetting"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"BBNotificationListDisplayStyleSetting" toDefaultValue:&unk_28542E7B8 options:1];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalSummarizationSetting"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"BBSummarizationSetting" toDefaultValue:&unk_28542E7B8 options:1];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalHighlightsSetting"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v16 withDefaultKey:@"BBHighlightsSetting" toDefaultValue:&unk_28542E7B8 options:1];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"globalSpokenNotificationSetting_deprecated"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v17 withDefaultKey:@"BBSpokenNotificationSetting" toDefaultValue:&unk_28542E7B8 options:1];
}

@end