@interface CallScreening.MainAnsweringMachine
- (BOOL)isEnabled;
- (void)openURL:(NSURL *)a3 completion:(id)a4;
- (void)screenCallWithUUID:(NSString *)a3 manualScreening:(BOOL)a4 completion:(id)a5;
- (void)screenCallWithUUID:(NSString *)a3 manualScreening:(BOOL)a4 receptionist:(BOOL)a5 completion:(id)a6;
@end

@implementation CallScreening.MainAnsweringMachine

- (BOOL)isEnabled
{

  v2 = CallScreening.MainAnsweringMachine.enabled.getter();

  return v2 & 1;
}

- (void)openURL:(NSURL *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CallScreening.MainAnsweringMachine.open(_:), v7);
}

- (void)screenCallWithUUID:(NSString *)a3 manualScreening:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  v10 = a3;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:), v9);
}

- (void)screenCallWithUUID:(NSString *)a3 manualScreening:(BOOL)a4 receptionist:(BOOL)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 25) = a5;
  *(v11 + 32) = v10;
  *(v11 + 40) = self;
  v12 = a3;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v11);
}

@end