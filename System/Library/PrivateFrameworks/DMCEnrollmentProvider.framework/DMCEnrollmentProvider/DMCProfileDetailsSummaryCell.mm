@interface DMCProfileDetailsSummaryCell
+ (id)cellIdentifier;
- (void)setProfileViewModel:(id)a3;
@end

@implementation DMCProfileDetailsSummaryCell

+ (id)cellIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)setProfileViewModel:(id)a3
{
  v31 = a3;
  v3 = [v31 profile];
  v4 = objc_opt_new();
  v5 = [v3 signerSummary];
  if (![(__CFString *)v5 length])
  {

    v5 = &stru_2859FB650;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = DMCEnrollmentLocalizedString(@"DMC_SIGNED_BY");
  v8 = [v6 stringWithFormat:@"%@ ", v7];

  v28 = [DMCProfileViewModel trustTextForProfile:v3];
  v29 = v8;
  v27 = [[DMCProfileItemDetail alloc] initWithTitle:v8 detail:v5 trustText:v28];
  [v4 addObject:?];
  v9 = [v3 profileDescription];
  if ([v9 length])
  {
    v10 = DMCEnrollmentLocalizedString(@"DMC_DESCRIPTION_TITLE");
    v11 = [DMCProfileItemDetail itemDetailWithTitle:v10 detail:v9];

    [v4 addObject:v11];
  }

  v12 = [v31 payloadInfoSectionSummaries];
  v13 = [v12 mutableCopy];

  if ([v3 isLocked])
  {
    v14 = [v3 removalPasscode];
    v15 = [v14 length];

    if (v15)
    {
      v16 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_REMOVAL_PASSWORD");
      [v13 addObject:v16];
    }
  }

  v17 = [v3 payloadsWithClass:objc_opt_class()];
  v18 = [v17 firstObject];

  v19 = [v18 managedAppleID];
  if (!v19)
  {
    v19 = [v18 personaID];

    if (v19)
    {
      v20 = MEMORY[0x277D03490];
      v21 = [v18 personaID];
      v19 = [v20 managedAppleIDNameWithPersonaID:v21];
    }
  }

  if ([v19 length])
  {
    v22 = DMCEnrollmentLocalizedString(@"DMC_APPLE_ACCOUNT_TITLE");
    v23 = [DMCProfileItemDetail itemDetailWithTitle:v22 detail:v19];
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