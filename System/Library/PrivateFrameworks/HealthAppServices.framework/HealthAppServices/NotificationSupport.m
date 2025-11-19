@interface NotificationSupport
+ (UNNotificationSound)defaultHealthAppNotificationSound;
+ (id)createNotificationUserInfoFor:(int64_t)a3 with:(id)a4;
- (_TtC17HealthAppServices19NotificationSupport)init;
@end

@implementation NotificationSupport

+ (UNNotificationSound)defaultHealthAppNotificationSound
{
  v2 = [objc_opt_self() soundWithAlertType_];

  return v2;
}

+ (id)createNotificationUserInfoFor:(int64_t)a3 with:(id)a4
{
  sub_251307374();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    sub_25130EE64();
    v11 = sub_25130EEC4();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_25130EEC4();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  _s17HealthAppServices19NotificationSupportC06createD8UserInfo3for4withSDys11AnyHashableVypGSo20HKNotificationDomainV_10Foundation3URLVSgtFZ_0(a3, v10);
  sub_251307430(v10, sub_251307374);
  v13 = sub_25130EF64();

  return v13;
}

- (_TtC17HealthAppServices19NotificationSupport)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NotificationSupport();
  return [(NotificationSupport *)&v3 init];
}

@end