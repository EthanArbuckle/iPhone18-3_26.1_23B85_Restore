@interface UIViewController(JITAppKit)
+ (id)jitappkit:()JITAppKit;
- (id)identifier;
- (void)setIdentifier:()JITAppKit;
- (void)setTkPage:()JITAppKit;
@end

@implementation UIViewController(JITAppKit)

- (void)setTkPage:()JITAppKit
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  objc_setAssociatedObject(selfCopy, &PAGE_KEY, location[0], 1);
  objc_storeStrong(location, 0);
}

- (id)identifier
{
  selfCopy = self;
  v5[1] = a2;
  v5[0] = objc_getAssociatedObject(self, &IDENTIFIER_KEY);
  if (!v5[0])
  {
    tkPage = [selfCopy tkPage];
    v5[0] = [tkPage viewName];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](tkPage);
  }

  v3 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

- (void)setIdentifier:()JITAppKit
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  objc_setAssociatedObject(selfCopy, &IDENTIFIER_KEY, location[0], 3);
  objc_storeStrong(location, 0);
}

+ (id)jitappkit:()JITAppKit
{
  location[2] = self;
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