@interface SendLaterRootViewModel
- (_TtC7ChatKit22SendLaterRootViewModel)init;
- (void)pluginInfoSelectedDateDidChange:(id)change;
- (void)pluginInfoShowingDatePickerDidChange:(id)change;
@end

@implementation SendLaterRootViewModel

- (void)pluginInfoSelectedDateDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_190B0DA8C(changeCopy);
}

- (void)pluginInfoShowingDatePickerDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_190B0E0E0(changeCopy);
}

- (_TtC7ChatKit22SendLaterRootViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end