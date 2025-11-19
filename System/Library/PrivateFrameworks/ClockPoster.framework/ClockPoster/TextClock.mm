@interface TextClock
- (_TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock)init;
- (void)dealloc;
- (void)timeFormatterTextDidChange:(id)a3;
@end

@implementation TextClock

- (_TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock)init
{
  *&self->delegate[OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_delegate] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock_overrideDate;
  v4 = sub_1E4996D8C();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC495429TextClock__timeFormatterByOffset;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A38, &qword_1E49A39E0);
  v6 = swift_allocObject();
  type metadata accessor for CPUnfairLock();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = MEMORY[0x1E69E7CC8];
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
  sub_1E493F0D0();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for TextClock(0);
  [(TextClock *)&v3 dealloc];
}

- (void)timeFormatterTextDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E493FCCC(a3);
}

@end