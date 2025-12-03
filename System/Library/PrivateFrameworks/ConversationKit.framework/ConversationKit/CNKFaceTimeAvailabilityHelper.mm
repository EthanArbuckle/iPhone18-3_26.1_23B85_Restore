@interface CNKFaceTimeAvailabilityHelper
- (IDSURI)preferredFromID;
- (TUIDSIDQueryController)queryController;
- (void)isDestinationAvailableForServiceAndCapability:(NSString *)capability service:(NSString *)service capability:(NSString *)a5 completionHandler:(id)handler;
- (void)isHandleAvailableForFaceTime:(TUHandle *)time completionHandler:(id)handler;
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

- (void)isHandleAvailableForFaceTime:(TUHandle *)time completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = time;
  v7[3] = v6;
  v7[4] = self;
  timeCopy = time;
  selfCopy = self;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CNKFaceTimeAvailabilityHelper.isHandleAvailable(forFaceTime:), v7);
}

- (void)isDestinationAvailableForServiceAndCapability:(NSString *)capability service:(NSString *)service capability:(NSString *)a5 completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = capability;
  v11[3] = service;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  capabilityCopy = capability;
  serviceCopy = service;
  v14 = a5;
  selfCopy = self;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CNKFaceTimeAvailabilityHelper.isDestinationAvailableForServiceAndCapability(_:service:capability:), v11);
}

@end