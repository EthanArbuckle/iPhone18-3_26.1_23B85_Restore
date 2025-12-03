@interface MockRapportClient
- (_TtC21HealthHeartRateStream17MockRapportClient)init;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
@end

@implementation MockRapportClient

- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_2517B32F0();
  v12 = v11;
  v13 = sub_2517B32B0();
  v14 = sub_2517B32F0();
  v16 = v15;
  if (options)
  {
    options = sub_2517B32B0();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  v18 = self + OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_requestHandler;
  swift_beginAccess();
  v19 = *v18;
  if (*v18)
  {
    v20 = *(v18 + 1);
    selfCopy = self;
    sub_2517A9F58(v19);
    v19(v10, v12, v13, v14, v16, options, sub_2517AA9B8, v17);

    sub_2517A9F88(v19);
  }

  else
  {
  }
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  v7 = sub_2517B32F0();
  v9 = v8;
  if (options)
  {
    options = sub_2517B32B0();
  }

  v10 = self + OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_registerRequestHandler;
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 1);
    selfCopy = self;
    sub_2517A9F58(v11);
    v11(v7, v9, options);

    sub_2517A9F88(v11);
  }

  else
  {
  }
}

- (_TtC21HealthHeartRateStream17MockRapportClient)init
{
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_requestHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_registerRequestHandler);
  v5 = type metadata accessor for MockRapportClient();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(MockRapportClient *)&v7 init];
}

@end