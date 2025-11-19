@interface UIView(MUButtonCellRowViewSwiftBridging)
- (void)_mapsui_registerButtonCellModel:()MUButtonCellRowViewSwiftBridging;
@end

@implementation UIView(MUButtonCellRowViewSwiftBridging)

- (void)_mapsui_registerButtonCellModel:()MUButtonCellRowViewSwiftBridging
{
  v4 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v4 setChangeDelegate:a1];
  }
}

@end