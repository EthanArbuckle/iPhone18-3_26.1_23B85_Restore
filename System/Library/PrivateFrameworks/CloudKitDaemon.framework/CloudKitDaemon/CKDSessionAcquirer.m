@interface CKDSessionAcquirer
- (_TtC14CloudKitDaemon18CKDSessionAcquirer)initWithSessionAcquisitionSetupInfo:(id)a3 sessionAcquisitionClientProxy:(id)a4 clientConnection:(id)a5 error:(id *)a6;
- (void)acquireSessionWithCompletionHandler:(id)a3;
@end

@implementation CKDSessionAcquirer

- (_TtC14CloudKitDaemon18CKDSessionAcquirer)initWithSessionAcquisitionSetupInfo:(id)a3 sessionAcquisitionClientProxy:(id)a4 clientConnection:(id)a5 error:(id *)a6
{
  v8 = a3;
  swift_unknownObjectRetain();
  return sub_2250B41D8(v8, a4, a5);
}

- (void)acquireSessionWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_2250B4C44();
}

@end