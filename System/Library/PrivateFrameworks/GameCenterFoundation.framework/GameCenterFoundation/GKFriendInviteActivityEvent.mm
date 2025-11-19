@interface GKFriendInviteActivityEvent
+ (id)metricsFieldsForStage:(unint64_t)a3 hostApp:(id)a4;
+ (id)stringForStage:(unint64_t)a3;
@end

@implementation GKFriendInviteActivityEvent

+ (id)metricsFieldsForStage:(unint64_t)a3 hostApp:(id)a4
{
  if (a4)
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
  sub_227A2561C(a3, v5, v7);

  v8 = sub_227A7240C();

  return v8;
}

+ (id)stringForStage:(unint64_t)a3
{
  sub_227A25CB4(a3);
  v3 = sub_227A724BC();

  return v3;
}

@end