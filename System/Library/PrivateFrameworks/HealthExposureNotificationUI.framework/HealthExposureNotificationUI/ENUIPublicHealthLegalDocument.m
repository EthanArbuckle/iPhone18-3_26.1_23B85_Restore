@interface ENUIPublicHealthLegalDocument
- (_TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument)init;
- (_TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument)initWithText:(id)a3 version:(id)a4;
@end

@implementation ENUIPublicHealthLegalDocument

- (_TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument)initWithText:(id)a3 version:(id)a4
{
  v5 = sub_251703164();
  v7 = v6;
  v8 = sub_251703164();
  v9 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_text);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument_version);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ENUIPublicHealthLegalDocument();
  return [(ENUIPublicHealthLegalDocument *)&v13 init];
}

- (_TtC28HealthExposureNotificationUI29ENUIPublicHealthLegalDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end