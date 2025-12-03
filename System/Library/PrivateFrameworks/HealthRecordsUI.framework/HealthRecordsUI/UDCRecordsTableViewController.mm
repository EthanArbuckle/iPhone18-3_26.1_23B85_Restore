@interface UDCRecordsTableViewController
- (_TtC15HealthRecordsUI29UDCRecordsTableViewController)initWithCoder:(id)coder;
- (void)modePickerDidChange:(id)change;
@end

@implementation UDCRecordsTableViewController

- (_TtC15HealthRecordsUI29UDCRecordsTableViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController_preferredSegment) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController_additionalPredicate) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI29UDCRecordsTableViewController____lazy_storage___modePicker) = 0;
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)modePickerDidChange:(id)change
{
  if (change)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1D112633C();

  sub_1D1127EC0(v6, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D11280D4);
}

@end