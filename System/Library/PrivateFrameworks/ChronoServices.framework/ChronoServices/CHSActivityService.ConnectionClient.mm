@interface CHSActivityService.ConnectionClient
- (_TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient)init;
- (void)activityDidUpdate:(id)update payloadID:(id)d;
@end

@implementation CHSActivityService.ConnectionClient

- (void)activityDidUpdate:(id)update payloadID:(id)d
{
  v5 = sub_195FA08B8();
  v7 = v6;
  v8 = sub_195FA08B8();
  v10 = v9;
  v11 = *(&self->super.isa + OBJC_IVAR____TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient_activityPayloadUpdateHandler);
  if (v11)
  {
    v12 = v8;
    v13 = *&self->activityPayloadUpdateHandler[OBJC_IVAR____TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient_activityPayloadUpdateHandler];
    selfCopy = self;
    sub_195ECF998(v11);
    v11(v5, v7, v12, v10);

    sub_195EB6E70(v11);
  }

  else
  {
  }
}

- (_TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCE14ChronoServicesCSo18CHSActivityService16ConnectionClient_activityPayloadUpdateHandler);
  v4 = _s16ConnectionClientCMa();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(CHSActivityService.ConnectionClient *)&v6 init];
}

@end