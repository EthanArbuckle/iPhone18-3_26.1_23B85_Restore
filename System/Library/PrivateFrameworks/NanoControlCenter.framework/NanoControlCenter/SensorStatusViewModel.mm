@interface SensorStatusViewModel
- (UIEdgeInsets)_layoutMargins;
- (UIEdgeInsets)layoutMargins;
- (_TtC17NanoControlCenter21SensorStatusViewModel)init;
- (_TtC17NanoControlCenter21SensorStatusViewModel)initWithFocusModel:(id)a3;
- (double)_batteryLevel;
- (double)batteryLevel;
- (void)setBatteryLevel:(double)a3;
- (void)setConnectionStatus:(unint64_t)a3 connectionType:(unint64_t)a4;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
- (void)set_batteryLevel:(double)a3;
- (void)set_layoutMargins:(UIEdgeInsets)a3;
- (void)statusChangedForButton:(int64_t)a3 isOn:(BOOL)a4;
@end

@implementation SensorStatusViewModel

- (UIEdgeInsets)_layoutMargins
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = (self + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__layoutMargins);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)set_layoutMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (self + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__layoutMargins);
  swift_beginAccess();
  *v8 = top;
  v8[1] = left;
  v8[2] = bottom;
  v8[3] = right;
}

- (UIEdgeInsets)layoutMargins
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_25AF5D370();
  v3 = self;
  sub_25B004234();

  v4 = (v3 + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__layoutMargins);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (void)setLayoutMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = self;
  SensorStatusViewModel.layoutMargins.setter(top, left, bottom, right);
}

- (double)_batteryLevel
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__batteryLevel;
  swift_beginAccess();
  v4 = *(self + v3);

  return v4;
}

- (void)set_batteryLevel:(double)a3
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__batteryLevel;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)batteryLevel
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_25AF5D370();
  v3 = self;
  sub_25B004234();

  v4 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__batteryLevel;
  swift_beginAccess();
  v5 = *(v3 + v4);

  return v5;
}

- (void)setBatteryLevel:(double)a3
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  SensorStatusViewModel.batteryLevel.setter(a3);
}

- (_TtC17NanoControlCenter21SensorStatusViewModel)initWithFocusModel:(id)a3
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = SensorStatusViewModel.init(focusModel:)(a3);

  return v4;
}

- (void)setConnectionStatus:(unint64_t)a3 connectionType:(unint64_t)a4
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = self;
  SensorStatusViewModel.setConnectionStatus(_:connectionType:)(a3, a4);
}

- (void)statusChangedForButton:(int64_t)a3 isOn:(BOOL)a4
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = self;
  SensorStatusViewModel.statusChanged(for:isOn:)(a3, a4);
}

- (_TtC17NanoControlCenter21SensorStatusViewModel)init
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end