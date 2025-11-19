@interface CPSBarBackButtonItem
- (CPSBarBackButtonItem)initWithCPBarButton:(id)a3;
@end

@implementation CPSBarBackButtonItem

- (CPSBarBackButtonItem)initWithCPBarButton:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [(CPSBarButtonItem *)v3 initWithCPBarButton:location[0] type:1];
  v5 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v5;
}

@end