@interface JSClientCapabilities
- (BOOL)isEnabled:(id)a3;
- (_TtC12GameStoreKit20JSClientCapabilities)init;
@end

@implementation JSClientCapabilities

- (BOOL)isEnabled:(id)a3
{
  v3 = sub_24F92B0D8();
  v5 = v4;
  v6 = sub_24E8039DC(&unk_2861BFC98);
  swift_arrayDestroy();
  LOBYTE(v3) = sub_24F4D36F8(v3, v5, v6);

  return v3 & 1;
}

- (_TtC12GameStoreKit20JSClientCapabilities)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSClientCapabilities *)&v3 init];
}

@end