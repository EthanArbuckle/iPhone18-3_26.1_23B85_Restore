@interface HKAccountOwner(Localization)
- (id)sortDateTitle;
@end

@implementation HKAccountOwner(Localization)

- (id)sortDateTitle
{
  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v3 = [keyPath isEqualToString:*MEMORY[0x1E696B9B0]];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v4 localizedStringForKey:@"ACCOUNT_OWNER_SORT_DATE_TITLE_MODIFIED_DATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end