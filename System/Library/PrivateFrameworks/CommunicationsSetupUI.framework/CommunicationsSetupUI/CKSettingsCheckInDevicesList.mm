@interface CKSettingsCheckInDevicesList
- (_TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList)init;
- (_TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList)initWithFullDataSharing:(BOOL)sharing;
- (id)getView;
@end

@implementation CKSettingsCheckInDevicesList

- (_TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList)initWithFullDataSharing:(BOOL)sharing
{
  if (sharing)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
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
  selfCopy = self;
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