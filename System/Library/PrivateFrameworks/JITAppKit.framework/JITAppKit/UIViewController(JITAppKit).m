@interface UIViewController(JITAppKit)
+ (id)jitappkit:()JITAppKit;
- (id)identifier;
- (void)setIdentifier:()JITAppKit;
- (void)setTkPage:()JITAppKit;
@end

@implementation UIViewController(JITAppKit)

- (void)setTkPage:()JITAppKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  objc_setAssociatedObject(v4, &PAGE_KEY, location[0], 1);
  objc_storeStrong(location, 0);
}

- (id)identifier
{
  v6 = a1;
  v5[1] = a2;
  v5[0] = objc_getAssociatedObject(a1, &IDENTIFIER_KEY);
  if (!v5[0])
  {
    v4 = [v6 tkPage];
    v5[0] = [v4 viewName];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v4);
  }

  v3 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

- (void)setIdentifier:()JITAppKit
{
  v4 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  objc_setAssociatedObject(v4, &IDENTIFIER_KEY, location[0], 3);
  objc_storeStrong(location, 0);
}

+ (id)jitappkit:()JITAppKit
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = +[TKApplication shared];
  v4 = [v5 loadPage:location[0]];
  v6 = WithFinalizer(v4);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

@end