@interface AppleCardFamilySettingsViewModel
- (_TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel)init;
- (void)dealloc;
- (void)serviceAccountDidChange;
@end

@implementation AppleCardFamilySettingsViewModel

- (void)dealloc
{
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = self;
  v5 = [ObjCClassFromMetadata defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for AppleCardFamilySettingsViewModel();
  [(AppleCardFamilySettingsViewModel *)&v6 dealloc];
}

- (void)serviceAccountDidChange
{
  v2 = self;
  sub_21BC6A178();
}

- (_TtC14FamilyCircleUI32AppleCardFamilySettingsViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end