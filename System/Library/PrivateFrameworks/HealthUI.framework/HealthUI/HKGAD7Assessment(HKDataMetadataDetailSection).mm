@interface HKGAD7Assessment(HKDataMetadataDetailSection)
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKGAD7Assessment(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v4 = a3;
  v5 = HKUILocalizedStringForGAD7Risk([a1 risk]);
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"GAD7_RISK_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
  v8 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381E10);
  [v4 addText:v5 detail:v7 baseIdentifier:v8];

  v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", objc_msgSend(a1, "score")];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"GAD7_SCORE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
  v12 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381E28);
  v31 = v9;
  v32 = v4;
  [v4 addText:v9 detail:v11 baseIdentifier:v12];

  v13 = [a1 answers];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    do
    {
      v16 = [a1 answers];
      v17 = [v16 objectAtIndexedSubscript:v15];
      v18 = [v17 integerValue];

      v19 = HKUILocalizedStringForGAD7Answer(v18);
      v20 = MEMORY[0x1E696AEC0];
      v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v22 = [v21 localizedStringForKey:@"ASSESSMENT_POINT_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
      v23 = [v20 localizedStringWithFormat:v22, v18];

      v24 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@ %@", v19, v23];

      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GAD7_QUESTION_%i", ++v15];
      v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v27 = [v26 localizedStringForKey:v25 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
      v28 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381E40);
      [v32 addText:v24 detail:v27 baseIdentifier:v28];

      v29 = [a1 answers];
      v30 = [v29 count];
    }

    while (v30 > v15);
  }

  v33.receiver = a1;
  v33.super_class = &off_1F4463BB0;
  objc_msgSendSuper2(&v33, sel_addDetailValuesToSection_, v32);
}

@end