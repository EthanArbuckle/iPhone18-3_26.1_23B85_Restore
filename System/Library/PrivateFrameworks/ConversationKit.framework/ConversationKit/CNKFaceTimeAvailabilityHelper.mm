@interface CNKFaceTimeAvailabilityHelper
- (IDSURI)preferredFromID;
- (TUIDSIDQueryController)queryController;
- (void)isDestinationAvailableForServiceAndCapability:(NSString *)a3 service:(NSString *)a4 capability:(NSString *)a5 completionHandler:(id)a6;
- (void)isHandleAvailableForFaceTime:(TUHandle *)a3 completionHandler:(id)a4;
@end

@implementation CNKFaceTimeAvailabilityHelper

- (TUIDSIDQueryController)queryController
{
  v2 = CNKFaceTimeAvailabilityHelper.queryController.getter();

  return v2;
}

- (IDSURI)preferredFromID
{
  v2 = CNKFaceTimeAvailabilityHelper.preferredFromID.getter();

  return v2;
}

- (void)isHandleAvailableForFaceTime:(TUHandle *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:), v7);
}

- (void)isDestinationAvailableForServiceAndCapability:(NSString *)a3 service:(NSString *)a4 capability:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:), v11);
}

@end