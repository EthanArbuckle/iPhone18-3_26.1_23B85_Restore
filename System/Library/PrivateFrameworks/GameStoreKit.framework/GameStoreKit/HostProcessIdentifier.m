@interface HostProcessIdentifier
- (NSString)hostBundleId;
- (_TtC12GameStoreKit21HostProcessIdentifier)init;
- (void)setHostBundleId:(id)a3;
@end

@implementation HostProcessIdentifier

- (NSString)hostBundleId
{
  v2 = self + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_24F92B098();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHostBundleId:(id)a3
{
  if (a3)
  {
    v4 = sub_24F92B0D8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC12GameStoreKit21HostProcessIdentifier)init
{
  v3 = (self + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  v4 = type metadata accessor for HostProcessIdentifier();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(HostProcessIdentifier *)&v6 init];
}

@end