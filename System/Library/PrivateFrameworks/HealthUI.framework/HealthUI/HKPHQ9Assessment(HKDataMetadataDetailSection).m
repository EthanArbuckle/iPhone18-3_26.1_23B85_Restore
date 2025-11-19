@interface HKPHQ9Assessment(HKDataMetadataDetailSection)
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKPHQ9Assessment(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v4 = a3;
  v5 = HKUILocalizedStringForPHQ9Risk([a1 risk]);
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"PHQ9_RISK_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
  v8 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381E58);
  [v4 addText:v5 detail:v7 baseIdentifier:v8];

  v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", objc_msgSend(a1, "score")];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"PHQ9_SCORE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
  v12 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381E70);
  v32 = v4;
  [v4 addText:v9 detail:v11 baseIdentifier:v12];

  v33 = a1;
  v13 = [a1 answers];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    do
    {
      v16 = [v33 answers];
      v17 = [v16 objectAtIndexedSubscript:v15];
      v18 = [v17 integerValue];

      v19 = HKUILocalizedStringForPHQ9Answer(v18);
      if (v18 == 4)
      {
        v20 = 0x1E696A000;
      }

      else
      {
        v21 = MEMORY[0x1E696AEC0];
        v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v23 = [v22 localizedStringForKey:@"ASSESSMENT_POINT_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
        v24 = [v21 localizedStringWithFormat:v23, v18];

        v20 = 0x1E696A000uLL;
        v25 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@ %@", v19, v24];

        v19 = v25;
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PHQ9_QUESTION_%i", ++v15];
      v27 = [*(v20 + 2792) bundleWithIdentifier:@"com.apple.HealthUI"];
      v28 = [v27 localizedStringForKey:v26 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
      v29 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381E88);
      [v32 addText:v19 detail:v28 baseIdentifier:v29];

      v30 = [v33 answers];
      v31 = [v30 count];
    }

    while (v31 > v15);
  }

  v34.receiver = v33;
  v34.super_class = &off_1F4463D18;
  objc_msgSendSuper2(&v34, sel_addDetailValuesToSection_, v32);
}

@end