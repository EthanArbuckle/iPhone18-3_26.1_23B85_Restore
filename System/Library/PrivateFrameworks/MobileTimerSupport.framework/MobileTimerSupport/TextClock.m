@interface TextClock
- (_TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock)init;
- (void)dealloc;
- (void)timeFormatterTextDidChange:(id)a3;
@end

@implementation TextClock

- (_TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock)init
{
  *&self->delegate[OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock_delegate] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock_overrideDate;
  v4 = sub_22D81A8C8();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C20, &qword_22D8224D0);
  v6 = swift_allocObject();
  type metadata accessor for MTSUnfairLock();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = MEMORY[0x277D84F98];
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  *(&self->super.isa + v5) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TextClock(0);
  return [(TextClock *)&v10 init];
}

- (void)dealloc
{
  v2 = self;
  sub_22D7A25E4();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for TextClock(0);
  [(TextClock *)&v3 dealloc];
}

- (void)timeFormatterTextDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_22D7A3220(a3);
}

@end