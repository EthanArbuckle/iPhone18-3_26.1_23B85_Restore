@interface HearingTestOptions
- (BOOL)isEqual:(id)a3;
- (_TtC13HearingTestUI18HearingTestOptions)init;
- (_TtC13HearingTestUI18HearingTestOptions)initWithRawValue:(int64_t)a3;
@end

@implementation HearingTestOptions

- (_TtC13HearingTestUI18HearingTestOptions)initWithRawValue:(int64_t)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for HearingTestOptions();
  return [(HearingTestOptions *)&v4 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_20CDC3ED4(v8);

  sub_20CDCB994(v8, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDCBB64);
  return v6;
}

- (_TtC13HearingTestUI18HearingTestOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end