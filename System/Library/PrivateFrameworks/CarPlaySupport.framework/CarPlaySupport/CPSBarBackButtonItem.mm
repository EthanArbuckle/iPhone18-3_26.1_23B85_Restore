@interface CPSBarBackButtonItem
- (CPSBarBackButtonItem)initWithCPBarButton:(id)button;
@end

@implementation CPSBarBackButtonItem

- (CPSBarBackButtonItem)initWithCPBarButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(CPSBarButtonItem *)v3 initWithCPBarButton:location[0] type:1];
  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

@end