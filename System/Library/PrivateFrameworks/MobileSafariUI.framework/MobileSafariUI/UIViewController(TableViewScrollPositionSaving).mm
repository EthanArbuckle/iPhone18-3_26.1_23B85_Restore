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
    v2 = [a1 tableView];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_safari_tableViewScrollPositionKey
{
  v1 = [a1 safari_tableViewScrollPositionSaveIdentifier];
  v2 = [@"SavedScrollPosition-" stringByAppendingString:v1];

  return v2;
}

@end