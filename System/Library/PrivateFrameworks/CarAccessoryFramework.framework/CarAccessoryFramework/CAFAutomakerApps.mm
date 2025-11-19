@interface CAFAutomakerApps
+ (void)load;
- (NSArray)automakerAppServices;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFAutomakerApps

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFAutomakerApps;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846ABD38])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFAutomakerApps;
  [(CAFAccessory *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846ABD38])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFAutomakerApps;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (NSArray)automakerAppServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000023000001"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000023000001"];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end