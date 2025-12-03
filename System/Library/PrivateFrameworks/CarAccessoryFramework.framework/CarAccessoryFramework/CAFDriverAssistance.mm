@interface CAFDriverAssistance
+ (void)load;
- (CAFTargetSpeed)targetSpeedService;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFDriverAssistance

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFDriverAssistance;
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
  v6.super_class = CAFDriverAssistance;
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
  v6.super_class = CAFDriverAssistance;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (CAFTargetSpeed)targetSpeedService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x000000001E000004"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x000000001E000004"];
  firstObject = [v8 firstObject];
  if (firstObject && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = firstObject;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end