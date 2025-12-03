@interface CAFAutomakerApps
+ (void)load;
- (NSArray)automakerAppServices;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFAutomakerApps

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFAutomakerApps;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABD38])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFAutomakerApps;
  [(CAFAccessory *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABD38])
  {
    v5 = observerCopy;
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
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000023000001"];

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