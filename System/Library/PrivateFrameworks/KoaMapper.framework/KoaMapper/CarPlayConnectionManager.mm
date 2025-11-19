@interface CarPlayConnectionManager
+ (CarPlayConnectionManager)shared;
- (id)radioStore;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)registerUpdateHandler:(id)a3;
@end

@implementation CarPlayConnectionManager

+ (CarPlayConnectionManager)shared
{
  v2 = static CarPlayConnectionManager.shared.getter();

  return v2;
}

- (id)radioStore
{
  v2 = self;
  v3 = CarPlayConnectionManager.radioStore()();

  return v3;
}

- (void)registerUpdateHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  CarPlayConnectionManager.registerUpdateHandler(_:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(v7);
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CarPlayConnectionManager.carManager(_:didUpdateCurrentCar:)(v8, a4);
}

@end