@interface HKStateOfMind(HKDataMetadataDetailSection)
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKStateOfMind(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v4 = a3;
  v5 = [v4 displayTypeController];
  v6 = [a1 sampleType];
  v7 = [v5 displayTypeForObjectType:v6];

  v8 = HKUILocalizedStringForStateOfMind(a1);
  v9 = [v7 localization];
  v10 = [v9 displayName];
  v11 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381D98);
  [v4 addText:v8 detail:v10 baseIdentifier:v11];

  v12 = [MEMORY[0x1E696ADA0] hk_percentDecimalNumberFormatter];
  v13 = MEMORY[0x1E696AD98];
  [a1 valence];
  v14 = [v13 numberWithDouble:?];
  v15 = [v12 stringFromNumber:v14];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:@"STATE_OF_MIND_VALENCE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
  v18 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381DB0);
  [v4 addText:v15 detail:v17 baseIdentifier:v18];

  v19 = [a1 domains];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [a1 domains];
    v22 = [v21 hk_map:&__block_literal_global_939];

    v23 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v22];
    v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v25 = [v24 localizedStringForKey:@"STATE_OF_MIND_DOMAINS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    v26 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381DC8);
    [v4 addText:v23 detail:v25 baseIdentifier:v26];
  }

  v27 = [a1 labels];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [a1 labels];
    v30 = [v29 hk_map:&__block_literal_global_951];

    v31 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v30];
    v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v33 = [v32 localizedStringForKey:@"STATE_OF_MIND_DESCRIPTIONS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    v34 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381DE0);
    [v4 addText:v31 detail:v33 baseIdentifier:v34];
  }

  v35 = [a1 context];

  if (v35)
  {
    v36 = [a1 context];
    v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v38 = [v37 localizedStringForKey:@"STATE_OF_MIND_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    v39 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381DF8);
    [v4 addText:v36 detail:v38 baseIdentifier:v39];
  }

  v40.receiver = a1;
  v40.super_class = &off_1F4463710;
  objc_msgSendSuper2(&v40, sel_addDetailValuesToSection_, v4);
}

@end