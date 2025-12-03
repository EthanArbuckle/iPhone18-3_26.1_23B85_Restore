@interface HKStateOfMind(HKDataMetadataDetailSection)
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKStateOfMind(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v4 = a3;
  displayTypeController = [v4 displayTypeController];
  sampleType = [self sampleType];
  v7 = [displayTypeController displayTypeForObjectType:sampleType];

  v8 = HKUILocalizedStringForStateOfMind(self);
  localization = [v7 localization];
  displayName = [localization displayName];
  v11 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381D98);
  [v4 addText:v8 detail:displayName baseIdentifier:v11];

  hk_percentDecimalNumberFormatter = [MEMORY[0x1E696ADA0] hk_percentDecimalNumberFormatter];
  v13 = MEMORY[0x1E696AD98];
  [self valence];
  v14 = [v13 numberWithDouble:?];
  v15 = [hk_percentDecimalNumberFormatter stringFromNumber:v14];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:@"STATE_OF_MIND_VALENCE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
  v18 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381DB0);
  [v4 addText:v15 detail:v17 baseIdentifier:v18];

  domains = [self domains];
  v20 = [domains count];

  if (v20)
  {
    domains2 = [self domains];
    v22 = [domains2 hk_map:&__block_literal_global_939];

    v23 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v22];
    v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v25 = [v24 localizedStringForKey:@"STATE_OF_MIND_DOMAINS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    v26 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381DC8);
    [v4 addText:v23 detail:v25 baseIdentifier:v26];
  }

  labels = [self labels];
  v28 = [labels count];

  if (v28)
  {
    labels2 = [self labels];
    v30 = [labels2 hk_map:&__block_literal_global_951];

    v31 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v30];
    v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v33 = [v32 localizedStringForKey:@"STATE_OF_MIND_DESCRIPTIONS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    v34 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381DE0);
    [v4 addText:v31 detail:v33 baseIdentifier:v34];
  }

  context = [self context];

  if (context)
  {
    context2 = [self context];
    v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v38 = [v37 localizedStringForKey:@"STATE_OF_MIND_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    v39 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381DF8);
    [v4 addText:context2 detail:v38 baseIdentifier:v39];
  }

  v40.receiver = self;
  v40.super_class = &off_1F4463710;
  objc_msgSendSuper2(&v40, sel_addDetailValuesToSection_, v4);
}

@end