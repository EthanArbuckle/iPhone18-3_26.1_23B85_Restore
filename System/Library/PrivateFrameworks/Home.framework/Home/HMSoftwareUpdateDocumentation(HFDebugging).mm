@interface HMSoftwareUpdateDocumentation(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSoftwareUpdateDocumentation(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  releaseNotesSummary = [self releaseNotesSummary];
  [v4 appendBool:releaseNotesSummary != 0 withName:@"releaseNotesSummary" ifEqualTo:1];

  releaseNotes = [self releaseNotes];
  [v4 appendBool:releaseNotes != 0 withName:@"releaseNotes" ifEqualTo:1];

  textReleaseNotes = [self textReleaseNotes];
  [v4 appendBool:textReleaseNotes != 0 withName:@"textReleaseNotes" ifEqualTo:1];

  licenseAgreement = [self licenseAgreement];
  [v4 appendBool:licenseAgreement != 0 withName:@"licenseAgreement" ifEqualTo:1];

  licenseAgreementVersion = [self licenseAgreementVersion];
  [v4 appendObject:licenseAgreementVersion withName:@"licenseAgreementVersion" options:1];

  return v4;
}

@end