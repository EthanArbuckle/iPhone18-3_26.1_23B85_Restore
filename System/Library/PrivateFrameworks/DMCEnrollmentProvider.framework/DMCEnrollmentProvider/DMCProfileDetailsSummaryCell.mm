@interface DMCProfileDetailsSummaryCell
+ (id)cellIdentifier;
- (void)setProfileViewModel:(id)model;
@end

@implementation DMCProfileDetailsSummaryCell

+ (id)cellIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)setProfileViewModel:(id)model
{
  modelCopy = model;
  profile = [modelCopy profile];
  v4 = objc_opt_new();
  signerSummary = [profile signerSummary];
  if (![(__CFString *)signerSummary length])
  {

    signerSummary = &stru_2859FB650;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = DMCEnrollmentLocalizedString(@"DMC_SIGNED_BY");
  v8 = [v6 stringWithFormat:@"%@ ", v7];

  v28 = [DMCProfileViewModel trustTextForProfile:profile];
  v29 = v8;
  v27 = [[DMCProfileItemDetail alloc] initWithTitle:v8 detail:signerSummary trustText:v28];
  [v4 addObject:?];
  profileDescription = [profile profileDescription];
  if ([profileDescription length])
  {
    v10 = DMCEnrollmentLocalizedString(@"DMC_DESCRIPTION_TITLE");
    v11 = [DMCProfileItemDetail itemDetailWithTitle:v10 detail:profileDescription];

    [v4 addObject:v11];
  }

  payloadInfoSectionSummaries = [modelCopy payloadInfoSectionSummaries];
  v13 = [payloadInfoSectionSummaries mutableCopy];

  if ([profile isLocked])
  {
    removalPasscode = [profile removalPasscode];
    v15 = [removalPasscode length];

    if (v15)
    {
      v16 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_REMOVAL_PASSWORD");
      [v13 addObject:v16];
    }
  }

  v17 = [profile payloadsWithClass:objc_opt_class()];
  firstObject = [v17 firstObject];

  managedAppleID = [firstObject managedAppleID];
  if (!managedAppleID)
  {
    managedAppleID = [firstObject personaID];

    if (managedAppleID)
    {
      v20 = MEMORY[0x277D03490];
      personaID = [firstObject personaID];
      managedAppleID = [v20 managedAppleIDNameWithPersonaID:personaID];
    }
  }

  if ([managedAppleID length])
  {
    v22 = DMCEnrollmentLocalizedString(@"DMC_APPLE_ACCOUNT_TITLE");
    v23 = [DMCProfileItemDetail itemDetailWithTitle:v22 detail:managedAppleID];
    [v4 addObject:v23];
  }

  if ([v13 count])
  {
    v24 = DMCEnrollmentLocalizedString(@"DMC_CONTAINS_TITLE");
    v25 = [v13 componentsJoinedByString:@"\n"];
    v26 = [DMCProfileItemDetail itemDetailWithTitle:v24 detail:v25];

    [v4 addObject:v26];
  }

  [(DMCItemSummaryCell *)self createViewWithItemDetailArray:v4];
}

@end