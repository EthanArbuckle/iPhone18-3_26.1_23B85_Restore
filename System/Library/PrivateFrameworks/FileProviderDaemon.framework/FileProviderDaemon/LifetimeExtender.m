@interface LifetimeExtender
- (NSString)prettyDescription;
- (_TtC18FileProviderDaemonP33_7D62E1A2C5B4A5D764464C136A51951216LifetimeExtender)init;
@end

@implementation LifetimeExtender

- (NSString)prettyDescription
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemonP33_7D62E1A2C5B4A5D764464C136A51951216LifetimeExtender_prettyDescription);
  v3 = *(self + OBJC_IVAR____TtC18FileProviderDaemonP33_7D62E1A2C5B4A5D764464C136A51951216LifetimeExtender_prettyDescription + 8);

  v4 = sub_1CF9E6888();

  return v4;
}

- (_TtC18FileProviderDaemonP33_7D62E1A2C5B4A5D764464C136A51951216LifetimeExtender)init
{
  *(self + OBJC_IVAR____TtC18FileProviderDaemonP33_7D62E1A2C5B4A5D764464C136A51951216LifetimeExtender_requestEffectivePID) = 0;
  v2 = self + OBJC_IVAR____TtC18FileProviderDaemonP33_7D62E1A2C5B4A5D764464C136A51951216LifetimeExtender_prettyDescription;
  strcpy(self + OBJC_IVAR____TtC18FileProviderDaemonP33_7D62E1A2C5B4A5D764464C136A51951216LifetimeExtender_prettyDescription, "FPFS indexer");
  v2[13] = 0;
  *(v2 + 7) = -5120;
  v4.receiver = self;
  v4.super_class = type metadata accessor for LifetimeExtender();
  return [(LifetimeExtender *)&v4 init];
}

@end