@interface HKSpokenLanguageDiffableDataSource
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
@end

@implementation HKSpokenLanguageDiffableDataSource

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  snapshot = [(UITableViewDiffableDataSource *)self snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v7 = [sectionIdentifiers objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue > 2)
  {
    v11 = 0;
  }

  else
  {
    v9 = off_1E81B9240[unsignedIntegerValue];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:v9 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v11;
}

@end