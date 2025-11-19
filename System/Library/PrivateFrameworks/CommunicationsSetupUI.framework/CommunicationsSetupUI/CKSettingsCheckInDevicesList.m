@interface CKSettingsCheckInDevicesList
- (_TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList)init;
- (_TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList)initWithFullDataSharing:(BOOL)a3;
- (id)getView;
@end

@implementation CKSettingsCheckInDevicesList

- (_TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList)initWithFullDataSharing:(BOOL)a3
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [objc_opt_self() mainScreen];
  [v5 bounds];
  v7 = v6;

  v8 = self + OBJC_IVAR____TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList_view;
  *v8 = v7;
  v8[8] = v4;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CKSettingsCheckInDevicesList();
  return [(CKSettingsCheckInDevicesList *)&v10 init];
}

- (id)getView
{
  v3 = *(*(sub_243C6EF78() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(&self->super.isa + OBJC_IVAR____TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList_view);
  v9 = self->view[OBJC_IVAR____TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList_view];
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA8BB0, &qword_243C83AF0));
  v5 = self;
  v6 = sub_243C6EF38();
  sub_243C6EF68();
  sub_243C6EF28();

  return v6;
}

- (_TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end