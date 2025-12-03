@interface CarPlayConnectionManager
+ (CarPlayConnectionManager)shared;
- (id)radioStore;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)registerUpdateHandler:(id)handler;
@end

@implementation CarPlayConnectionManager

+ (CarPlayConnectionManager)shared
{
  v2 = static CarPlayConnectionManager.shared.getter();

  return v2;
}

- (id)radioStore
{
  selfCopy = self;
  v3 = CarPlayConnectionManager.radioStore()();

  return v3;
}

- (void)registerUpdateHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  CarPlayConnectionManager.registerUpdateHandler(_:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(v7);
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  CarPlayConnectionManager.carManager(_:didUpdateCurrentCar:)(selfCopy, car);
}

@end