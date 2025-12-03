@interface FeedbackLoggerFBFClient
- (_TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector)xpcConnector;
- (void)requestSandboxExtensionForBundleID:(id)d completion:(id)completion;
- (void)scheduleImmediateUploadWithHeaders:(id)headers completion:(id)completion;
@end

@implementation FeedbackLoggerFBFClient

- (_TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector)xpcConnector
{
  v2 = sub_24AB419B8();

  return v2;
}

- (void)requestSandboxExtensionForBundleID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_24AB6016C();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_24AB41AA8(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (void)scheduleImmediateUploadWithHeaders:(id)headers completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (headers)
  {
    headers = sub_24AB6010C();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_24AB41DE4(headers, sub_24AB435BC, v7);
}

@end