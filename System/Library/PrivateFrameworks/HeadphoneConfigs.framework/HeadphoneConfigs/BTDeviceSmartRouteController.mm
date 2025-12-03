@interface BTDeviceSmartRouteController
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation BTDeviceSmartRouteController

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = cellCopy;
    titleLabel = [v5 titleLabel];
    [titleLabel setLineBreakMode:0];

    titleLabel2 = [v5 titleLabel];

    [titleLabel2 setNumberOfLines:0];
  }
}

@end