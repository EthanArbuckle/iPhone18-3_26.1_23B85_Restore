@interface ACAccount(HUMediaSelectionComparison)
- (uint64_t)hasSameAppleMusicServiceAltDSID:()HUMediaSelectionComparison;
@end

@implementation ACAccount(HUMediaSelectionComparison)

- (uint64_t)hasSameAppleMusicServiceAltDSID:()HUMediaSelectionComparison
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  ams_altDSID = [self ams_altDSID];
  ams_altDSID2 = [v7 ams_altDSID];
  v10 = [ams_altDSID isEqualToString:ams_altDSID2];

  return v10;
}

@end