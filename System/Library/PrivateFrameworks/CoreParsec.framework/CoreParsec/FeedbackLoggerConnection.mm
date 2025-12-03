@interface FeedbackLoggerConnection
- (void)requestSandboxExtensionForBundleID:(NSString *)d completion:(id)completion;
- (void)scheduleImmediateUploadWithHeaders:(id)headers completion:(id)completion;
@end

@implementation FeedbackLoggerConnection

- (void)scheduleImmediateUploadWithHeaders:(id)headers completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (headers)
  {
    headers = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_1000F66B8(headers, sub_1000F7DE0, v7);
}

- (void)requestSandboxExtensionForBundleID:(NSString *)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = d;
  v7[3] = v6;
  v7[4] = self;
  dCopy = d;
  selfCopy = self;

  sub_1000F72FC(&unk_10014EB40, v7);
}

@end