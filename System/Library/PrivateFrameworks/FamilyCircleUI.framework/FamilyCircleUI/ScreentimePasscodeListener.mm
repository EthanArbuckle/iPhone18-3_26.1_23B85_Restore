@interface ScreentimePasscodeListener
- (_TtC14FamilyCircleUI26ScreentimePasscodeListener)init;
- (void)handleRestrictionsPINNotification:(id)a3;
@end

@implementation ScreentimePasscodeListener

- (void)handleRestrictionsPINNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21BD9BC74(v4);
}

- (_TtC14FamilyCircleUI26ScreentimePasscodeListener)init
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC6D8, &qword_21BE4AF30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  *&self->delegate[OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener__state;
  v14 = 0;
  sub_21BE26C6C();
  (*(v4 + 32))(self + v8, v7, v3);
  v9 = (&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_ageRangeStateUpdateAction);
  v10 = type metadata accessor for ScreentimePasscodeListener();
  *v9 = 0;
  v9[1] = 0;
  v13.receiver = self;
  v13.super_class = v10;
  return [(ScreentimePasscodeListener *)&v13 init];
}

@end