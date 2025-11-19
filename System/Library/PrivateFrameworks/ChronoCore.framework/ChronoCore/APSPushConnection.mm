@interface APSPushConnection
- (_TtC10ChronoCore17APSPushConnection)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forInfo:(id)a5;
@end

@implementation APSPushConnection

- (_TtC10ChronoCore17APSPushConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = a4;
    v9 = sub_224DA96D8();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v13 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_224CC3134(v9, v11);
  sub_224AC1D9C(v9, v11);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_224CC3354(a4);
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forInfo:(id)a5
{
  if (a4)
  {
    v8 = a3;
    v9 = a5;
    v10 = self;
    v11 = a4;
    v12 = sub_224DA96D8();
    v14 = v13;
  }

  else
  {
    v15 = a3;
    v16 = a5;
    v17 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  sub_224CC3700(v12, v14, a5);
  sub_224AC1D9C(v12, v14);
}

@end