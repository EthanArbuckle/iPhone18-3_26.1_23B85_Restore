@interface FeedbackLoggerFBFClient
- (_TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector)xpcConnector;
- (void)requestSandboxExtensionForBundleID:(id)a3 completion:(id)a4;
- (void)scheduleImmediateUploadWithHeaders:(id)a3 completion:(id)a4;
@end

@implementation FeedbackLoggerFBFClient

- (_TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector)xpcConnector
{
  v2 = sub_24AB419B8();

  return v2;
}

- (void)requestSandboxExtensionForBundleID:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_24AB6016C();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_24AB41AA8(v6, v8, v9, v5);
  _Block_release(v5);
}

- (void)scheduleImmediateUploadWithHeaders:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    a3 = sub_24AB6010C();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_24AB41DE4(a3, sub_24AB435BC, v7);
}

@end