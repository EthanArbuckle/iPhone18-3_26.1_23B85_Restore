@interface BTDeviceSmartRouteController
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation BTDeviceSmartRouteController

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v8;
    v6 = [v5 titleLabel];
    [v6 setLineBreakMode:0];

    v7 = [v5 titleLabel];

    [v7 setNumberOfLines:0];
  }
}

@end