@interface NTKCFaceDetailDiffableDataSource
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
@end

@implementation NTKCFaceDetailDiffableDataSource

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(UITableViewDiffableDataSource *)self snapshot];
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 objectAtIndexedSubscript:a4];

  v8 = [v7 ntk_identifier];
  LOBYTE(v6) = [v8 isEqual:@"com.apple.nanotimekit.off"];

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 ntk_localizedSectionName];
    if ([v10 length])
    {
      v9 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end