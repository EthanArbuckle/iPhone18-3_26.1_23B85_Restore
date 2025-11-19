@interface HKSpokenLanguageDiffableDataSource
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
@end

@implementation HKSpokenLanguageDiffableDataSource

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(UITableViewDiffableDataSource *)self snapshot];
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [v7 unsignedIntegerValue];

  if (v8 > 2)
  {
    v11 = 0;
  }

  else
  {
    v9 = off_1E81B9240[v8];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v11 = [v10 localizedStringForKey:v9 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v11;
}

@end