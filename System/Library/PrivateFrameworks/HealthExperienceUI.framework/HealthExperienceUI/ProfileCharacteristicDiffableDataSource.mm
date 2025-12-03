@interface ProfileCharacteristicDiffableDataSource
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
@end

@implementation ProfileCharacteristicDiffableDataSource

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  snapshot = [(UITableViewDiffableDataSource *)self snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v9 = [sectionIdentifiers objectAtIndex:section];

  footerTitleProvider = self->_footerTitleProvider;
  if (footerTitleProvider)
  {
    v11 = footerTitleProvider[2](footerTitleProvider, viewCopy, section, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end