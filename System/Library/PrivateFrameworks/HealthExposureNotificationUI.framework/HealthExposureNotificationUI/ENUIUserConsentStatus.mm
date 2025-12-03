@interface ENUIUserConsentStatus
- (NSDate)dateConsented;
- (_TtC28HealthExposureNotificationUI21ENUIUserConsentStatus)init;
- (_TtC28HealthExposureNotificationUI21ENUIUserConsentStatus)initWithTextConsented:(id)consented versionConsented:(id)versionConsented dateConsented:(id)dateConsented;
@end

@implementation ENUIUserConsentStatus

- (NSDate)dateConsented
{
  v3 = sub_251702E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_dateConsented, v3);
  v8 = sub_251702DD4();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (_TtC28HealthExposureNotificationUI21ENUIUserConsentStatus)initWithTextConsented:(id)consented versionConsented:(id)versionConsented dateConsented:(id)dateConsented
{
  v6 = sub_251702E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251703164();
  v13 = v12;
  v14 = sub_251703164();
  v16 = v15;
  sub_251702E04();
  v17 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_textConsented);
  *v17 = v11;
  v17[1] = v13;
  v18 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_versionConsented);
  *v18 = v14;
  v18[1] = v16;
  (*(v7 + 16))(self + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_dateConsented, v10, v6);
  v19 = type metadata accessor for ENUIUserConsentStatus(0);
  v22.receiver = self;
  v22.super_class = v19;
  v20 = [(ENUIUserConsentStatus *)&v22 init];
  (*(v7 + 8))(v10, v6);
  return v20;
}

- (_TtC28HealthExposureNotificationUI21ENUIUserConsentStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end