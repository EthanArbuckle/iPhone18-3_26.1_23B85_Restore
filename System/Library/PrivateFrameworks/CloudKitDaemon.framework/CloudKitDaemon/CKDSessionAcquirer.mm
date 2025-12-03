@interface CKDSessionAcquirer
- (_TtC14CloudKitDaemon18CKDSessionAcquirer)initWithSessionAcquisitionSetupInfo:(id)info sessionAcquisitionClientProxy:(id)proxy clientConnection:(id)connection error:(id *)error;
- (void)acquireSessionWithCompletionHandler:(id)handler;
@end

@implementation CKDSessionAcquirer

- (_TtC14CloudKitDaemon18CKDSessionAcquirer)initWithSessionAcquisitionSetupInfo:(id)info sessionAcquisitionClientProxy:(id)proxy clientConnection:(id)connection error:(id *)error
{
  infoCopy = info;
  swift_unknownObjectRetain();
  return sub_2250B41D8(infoCopy, proxy, connection);
}

- (void)acquireSessionWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_2250B4C44();
}

@end