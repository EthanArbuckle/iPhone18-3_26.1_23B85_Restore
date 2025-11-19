@interface FMNHttpClient
- (_TtC12FMNetworking13FMNHttpClient)init;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
@end

@implementation FMNHttpClient

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_24A88CEF0(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_sessionLock);
  v3 = self;

  sub_24A8BB0C4();

  v4.receiver = v3;
  v4.super_class = type metadata accessor for FMNHttpClient();
  [(FMNHttpClient *)&v4 dealloc];
}

- (_TtC12FMNetworking13FMNHttpClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end