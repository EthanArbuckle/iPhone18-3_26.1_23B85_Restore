@interface SendLaterRootViewModel
- (_TtC7ChatKit22SendLaterRootViewModel)init;
- (void)pluginInfoSelectedDateDidChange:(id)a3;
- (void)pluginInfoShowingDatePickerDidChange:(id)a3;
@end

@implementation SendLaterRootViewModel

- (void)pluginInfoSelectedDateDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190B0DA8C(v4);
}

- (void)pluginInfoShowingDatePickerDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190B0E0E0(v4);
}

- (_TtC7ChatKit22SendLaterRootViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end