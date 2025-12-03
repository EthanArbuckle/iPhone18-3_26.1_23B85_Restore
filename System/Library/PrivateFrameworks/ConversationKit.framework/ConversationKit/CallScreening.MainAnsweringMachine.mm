@interface CallScreening.MainAnsweringMachine
- (BOOL)isEnabled;
- (void)openURL:(NSURL *)l completion:(id)completion;
- (void)screenCallWithUUID:(NSString *)d manualScreening:(BOOL)screening completion:(id)completion;
- (void)screenCallWithUUID:(NSString *)d manualScreening:(BOOL)screening receptionist:(BOOL)receptionist completion:(id)completion;
@end

@implementation CallScreening.MainAnsweringMachine

- (BOOL)isEnabled
{

  v2 = CallScreening.MainAnsweringMachine.enabled.getter();

  return v2 & 1;
}

- (void)openURL:(NSURL *)l completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = l;
  v7[3] = v6;
  v7[4] = self;
  lCopy = l;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CallScreening.MainAnsweringMachine.open(_:), v7);
}

- (void)screenCallWithUUID:(NSString *)d manualScreening:(BOOL)screening completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = d;
  *(v9 + 24) = screening;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  dCopy = d;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:), v9);
}

- (void)screenCallWithUUID:(NSString *)d manualScreening:(BOOL)screening receptionist:(BOOL)receptionist completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = d;
  *(v11 + 24) = screening;
  *(v11 + 25) = receptionist;
  *(v11 + 32) = v10;
  *(v11 + 40) = self;
  dCopy = d;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CallScreening.MainAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v11);
}

@end