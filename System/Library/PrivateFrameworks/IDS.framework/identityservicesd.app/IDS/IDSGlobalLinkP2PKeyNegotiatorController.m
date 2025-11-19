@interface IDSGlobalLinkP2PKeyNegotiatorController
- (_TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController)init;
- (void)negotiatorForGroup:(id)a3 completionHandler:(id)a4;
@end

@implementation IDSGlobalLinkP2PKeyNegotiatorController

- (void)negotiatorForGroup:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_100936B38();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = swift_allocObject();
  v10[2] = sub_1007BDF48;
  v10[3] = v9;
  v10[4] = self;
  v10[5] = v6;
  v10[6] = v8;
  v11 = self;

  sub_100936188();
}

- (_TtC17identityservicesd39IDSGlobalLinkP2PKeyNegotiatorController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end