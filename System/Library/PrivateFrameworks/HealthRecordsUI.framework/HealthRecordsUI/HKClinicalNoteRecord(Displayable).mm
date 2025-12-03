@interface HKClinicalNoteRecord(Displayable)
- (id)codings;
- (id)title;
@end

@implementation HKClinicalNoteRecord(Displayable)

- (id)title
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v1 = [v0 localizedStringForKey:@"CLINICAL_NOTE_DETAIL_TITLE" value:&stru_1F4D16E38 table:@"HealthUI-Localizable-Clinical-Notes"];

  return v1;
}

- (id)codings
{
  documentTypeCodingCollection = [self documentTypeCodingCollection];
  codings = [documentTypeCodingCollection codings];

  return codings;
}

@end