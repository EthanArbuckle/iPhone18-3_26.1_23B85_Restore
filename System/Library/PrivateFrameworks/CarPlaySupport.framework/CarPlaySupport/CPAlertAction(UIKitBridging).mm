@interface CPAlertAction(UIKitBridging)
- (id)alertActionRepresentationWithHandler:()UIKitBridging;
@end

@implementation CPAlertAction(UIKitBridging)

- (id)alertActionRepresentationWithHandler:()UIKitBridging
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if ([selfCopy style] <= 2)
  {
    [selfCopy style];
  }

  v4 = MEMORY[0x277D750F8];
  title = [selfCopy title];
  v6 = [v4 actionWithTitle:? style:? handler:?];
  MEMORY[0x277D82BD8](title);
  objc_storeStrong(location, 0);

  return v6;
}

@end