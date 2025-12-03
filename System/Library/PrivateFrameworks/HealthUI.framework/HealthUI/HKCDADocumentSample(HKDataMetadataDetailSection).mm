@interface HKCDADocumentSample(HKDataMetadataDetailSection)
- (void)addDetailValuesToSection:()HKDataMetadataDetailSection;
@end

@implementation HKCDADocumentSample(HKDataMetadataDetailSection)

- (void)addDetailValuesToSection:()HKDataMetadataDetailSection
{
  v4 = a3;
  document = [self document];
  v6 = document;
  if (document)
  {
    title = [document title];
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"CLINICAL_DOCUMENT_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v10 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381CF0);
    [v4 addText:title detail:v9 baseIdentifier:v10];

    patientName = [v6 patientName];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"CLINICAL_DOCUMENT_PATIENT_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v14 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381D08);
    [v4 addText:patientName detail:v13 baseIdentifier:v14];

    authorName = [v6 authorName];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v17 = [v16 localizedStringForKey:@"CLINICAL_DOCUMENT_AUTHOR_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v18 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381D20);
    [v4 addText:authorName detail:v17 baseIdentifier:v18];

    custodianName = [v6 custodianName];
    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v21 = [v20 localizedStringForKey:@"CLINICAL_DOCUMENT_CUSTODIAN_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v22 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381D38);
    [v4 addText:custodianName detail:v21 baseIdentifier:v22];
  }

  v23.receiver = self;
  v23.super_class = &off_1F4452638;
  objc_msgSendSuper2(&v23, sel_addDetailValuesToSection_, v4);
}

@end