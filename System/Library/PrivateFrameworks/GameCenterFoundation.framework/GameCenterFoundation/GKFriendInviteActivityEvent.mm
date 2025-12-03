@interface GKFriendInviteActivityEvent
+ (id)metricsFieldsForStage:(unint64_t)stage hostApp:(id)app;
+ (id)stringForStage:(unint64_t)stage;
@end

@implementation GKFriendInviteActivityEvent

+ (id)metricsFieldsForStage:(unint64_t)stage hostApp:(id)app
{
  if (app)
  {
    v5 = sub_227A724EC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_getObjCClassMetadata();
  sub_227A2561C(stage, v5, v7);

  v8 = sub_227A7240C();

  return v8;
}

+ (id)stringForStage:(unint64_t)stage
{
  sub_227A25CB4(stage);
  v3 = sub_227A724BC();

  return v3;
}

@end