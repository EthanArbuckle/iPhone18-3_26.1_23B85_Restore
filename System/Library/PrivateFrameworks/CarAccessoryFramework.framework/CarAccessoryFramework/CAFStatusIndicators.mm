@interface CAFStatusIndicators
+ (void)load;
- (CAFActivityIndicator)activityIndicatorService;
- (CAFBluetoothStatus)bluetoothStatusService;
- (CAFCellularStatus)cellularStatusService;
- (CAFCurrentUserStatus)currentUserStatusService;
- (CAFWiFiStatus)wiFiStatusService;
- (NSArray)deepLinkStatusItemServices;
- (NSArray)statusItemServices;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFStatusIndicators

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFStatusIndicators;
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
  v6.super_class = CAFStatusIndicators;
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
  v6.super_class = CAFStatusIndicators;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (NSArray)statusItemServices
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000016100001"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000016100001"];
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

- (NSArray)deepLinkStatusItemServices
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000016100002"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000016100002"];
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

- (CAFWiFiStatus)wiFiStatusService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000016100003"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000016100003"];
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

- (CAFBluetoothStatus)bluetoothStatusService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000016100004"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000016100004"];
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

- (CAFCellularStatus)cellularStatusService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000016100005"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000016100005"];
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

- (CAFCurrentUserStatus)currentUserStatusService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000016100006"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000016100006"];
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

- (CAFActivityIndicator)activityIndicatorService
{
  v3 = [(CAFAccessory *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000016100007"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000016100007"];
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