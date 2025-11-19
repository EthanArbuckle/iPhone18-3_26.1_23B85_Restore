@interface ButtonsAvailableModel
- (_TtC17NanoControlCenter21ButtonsAvailableModel)init;
@end

@implementation ButtonsAvailableModel

- (_TtC17NanoControlCenter21ButtonsAvailableModel)init
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities) = sub_25AF6BB5C(MEMORY[0x277D84F90]);
  *(&self->super.isa + OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel_allowedButtonsForConfiguration) = MEMORY[0x277D84FA0];
  sub_25B004264();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ButtonsAvailableModel();
  v3 = [(ButtonsAvailableModel *)&v5 init];

  return v3;
}

@end