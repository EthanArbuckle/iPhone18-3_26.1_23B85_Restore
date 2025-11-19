@interface HMSoftwareUpdateDocumentation(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSoftwareUpdateDocumentation(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:a1 context:a3];
  v5 = [a1 releaseNotesSummary];
  [v4 appendBool:v5 != 0 withName:@"releaseNotesSummary" ifEqualTo:1];

  v6 = [a1 releaseNotes];
  [v4 appendBool:v6 != 0 withName:@"releaseNotes" ifEqualTo:1];

  v7 = [a1 textReleaseNotes];
  [v4 appendBool:v7 != 0 withName:@"textReleaseNotes" ifEqualTo:1];

  v8 = [a1 licenseAgreement];
  [v4 appendBool:v8 != 0 withName:@"licenseAgreement" ifEqualTo:1];

  v9 = [a1 licenseAgreementVersion];
  [v4 appendObject:v9 withName:@"licenseAgreementVersion" options:1];

  return v4;
}

@end