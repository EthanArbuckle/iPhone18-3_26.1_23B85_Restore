@interface NTKCFaceDetailDiffableDataSource
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
@end

@implementation NTKCFaceDetailDiffableDataSource

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  snapshot = [(UITableViewDiffableDataSource *)self snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v7 = [sectionIdentifiers objectAtIndexedSubscript:section];

  ntk_identifier = [v7 ntk_identifier];
  LOBYTE(sectionIdentifiers) = [ntk_identifier isEqual:@"com.apple.nanotimekit.off"];

  if (sectionIdentifiers)
  {
    v9 = 0;
  }

  else
  {
    ntk_localizedSectionName = [v7 ntk_localizedSectionName];
    if ([ntk_localizedSectionName length])
    {
      v9 = ntk_localizedSectionName;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end