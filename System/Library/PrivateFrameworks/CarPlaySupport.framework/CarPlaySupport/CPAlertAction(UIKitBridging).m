@interface CPAlertAction(UIKitBridging)
- (id)alertActionRepresentationWithHandler:()UIKitBridging;
@end

@implementation CPAlertAction(UIKitBridging)

- (id)alertActionRepresentationWithHandler:()UIKitBridging
{
  v8 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if ([v8 style] <= 2)
  {
    [v8 style];
  }

  v4 = MEMORY[0x277D750F8];
  v5 = [v8 title];
  v6 = [v4 actionWithTitle:? style:? handler:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

@end