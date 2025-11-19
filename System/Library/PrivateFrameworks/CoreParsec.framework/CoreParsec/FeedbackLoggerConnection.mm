@interface FeedbackLoggerConnection
- (void)requestSandboxExtensionForBundleID:(NSString *)a3 completion:(id)a4;
- (void)scheduleImmediateUploadWithHeaders:(id)a3 completion:(id)a4;
@end

@implementation FeedbackLoggerConnection

- (void)scheduleImmediateUploadWithHeaders:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_1000F66B8(a3, sub_1000F7DE0, v7);
}

- (void)requestSandboxExtensionForBundleID:(NSString *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1000F72FC(&unk_10014EB40, v7);
}

@end