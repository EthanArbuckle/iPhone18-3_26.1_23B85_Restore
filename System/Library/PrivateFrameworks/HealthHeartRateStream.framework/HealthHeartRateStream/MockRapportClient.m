@interface MockRapportClient
- (_TtC21HealthHeartRateStream17MockRapportClient)init;
- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7;
@end

@implementation MockRapportClient

- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  v9 = _Block_copy(a7);
  v10 = sub_2517B32F0();
  v12 = v11;
  v13 = sub_2517B32B0();
  v14 = sub_2517B32F0();
  v16 = v15;
  if (a6)
  {
    a6 = sub_2517B32B0();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  v18 = self + OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_requestHandler;
  swift_beginAccess();
  v19 = *v18;
  if (*v18)
  {
    v20 = *(v18 + 1);
    v21 = self;
    sub_2517A9F58(v19);
    v19(v10, v12, v13, v14, v16, a6, sub_2517AA9B8, v17);

    sub_2517A9F88(v19);
  }

  else
  {
  }
}

- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5
{
  v7 = sub_2517B32F0();
  v9 = v8;
  if (a4)
  {
    a4 = sub_2517B32B0();
  }

  v10 = self + OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_registerRequestHandler;
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 1);
    v13 = self;
    sub_2517A9F58(v11);
    v11(v7, v9, a4);

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