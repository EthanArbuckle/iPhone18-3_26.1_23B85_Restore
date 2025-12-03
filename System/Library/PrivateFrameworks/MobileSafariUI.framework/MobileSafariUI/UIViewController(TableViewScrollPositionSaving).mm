@interface UIViewController(TableViewScrollPositionSaving)
- (id)_safari_tableViewScrollPositionKey;
- (id)safari_tableViewForScrollPositionSaving;
@end

@implementation UIViewController(TableViewScrollPositionSaving)

- (id)safari_tableViewForScrollPositionSaving
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tableView = [self tableView];
  }

  else
  {
    tableView = 0;
  }

  return tableView;
}

- (id)_safari_tableViewScrollPositionKey
{
  safari_tableViewScrollPositionSaveIdentifier = [self safari_tableViewScrollPositionSaveIdentifier];
  v2 = [@"SavedScrollPosition-" stringByAppendingString:safari_tableViewScrollPositionSaveIdentifier];

  return v2;
}

@end