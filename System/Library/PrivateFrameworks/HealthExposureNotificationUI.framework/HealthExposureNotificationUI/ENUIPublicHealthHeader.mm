@interface ENUIPublicHealthHeader
- (_TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader)init;
- (_TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader)initWithTitle:(id)title subtitle:(id)subtitle backgroundColor:(id)color textColor:(id)textColor logoURL:(id)l style:(int64_t)style;
@end

@implementation ENUIPublicHealthHeader

- (_TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader)initWithTitle:(id)title subtitle:(id)subtitle backgroundColor:(id)color textColor:(id)textColor logoURL:(id)l style:(int64_t)style
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - v15;
  v17 = sub_251703164();
  v19 = v18;
  v20 = sub_251703164();
  v22 = v21;
  if (l)
  {
    sub_251702D84();
    v23 = sub_251702DA4();
    (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
  }

  else
  {
    v24 = sub_251702DA4();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  }

  v25 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title);
  *v25 = v17;
  v25[1] = v19;
  v26 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_subtitle);
  *v26 = v20;
  v26[1] = v22;
  *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_backgroundColor) = color;
  *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_textColor) = textColor;
  sub_25169479C(v16, self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_logoURL);
  *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style) = style;
  v27 = type metadata accessor for ENUIPublicHealthHeader(0);
  v32.receiver = self;
  v32.super_class = v27;
  colorCopy = color;
  textColorCopy = textColor;
  v30 = [(ENUIPublicHealthHeader *)&v32 init];
  sub_25168B718(v16, &qword_27F453E10, &unk_251708160);
  return v30;
}

- (_TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end