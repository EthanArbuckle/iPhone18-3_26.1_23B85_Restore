@interface HUScheduleAccessViewController
- (HUScheduleAccessViewController)initWithCoder:(id)coder;
- (HUScheduleAccessViewController)initWithGuestAccessSchedule:(id)schedule tintColor:(id)color shouldDisplayAlwaysAllowedSchedule:(BOOL)allowedSchedule scheduleBackgroundColor:(id)backgroundColor listRowBackgroundColor:(id)rowBackgroundColor;
- (HUScheduleAccessViewController)initWithHomeID:(id)d tintColor:(id)color;
- (HUScheduleAccessViewController)initWithHomeID:(id)d tintColor:(id)color listRowBackgroundColor:(id)backgroundColor;
- (HUScheduleAccessViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation HUScheduleAccessViewController

- (HUScheduleAccessViewController)initWithGuestAccessSchedule:(id)schedule tintColor:(id)color shouldDisplayAlwaysAllowedSchedule:(BOOL)allowedSchedule scheduleBackgroundColor:(id)backgroundColor listRowBackgroundColor:(id)rowBackgroundColor
{
  allowedScheduleCopy = allowedSchedule;
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  scheduleCopy = schedule;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  rowBackgroundColorCopy = rowBackgroundColor;
  v16 = HUScheduleAccessViewController.init(guestAccessSchedule:tintColor:shouldDisplayAlwaysAllowedSchedule:scheduleBackgroundColor:listRowBackgroundColor:)(schedule, colorCopy, allowedScheduleCopy, backgroundColorCopy, rowBackgroundColor);

  return v16;
}

- (HUScheduleAccessViewController)initWithHomeID:(id)d tintColor:(id)color
{
  v6 = sub_25459A1B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25459A190();
  colorCopy = color;
  v12 = sub_25459A170();
  v13 = [(HUScheduleAccessViewController *)self initWithHomeID:v12 tintColor:colorCopy listRowBackgroundColor:0];

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (HUScheduleAccessViewController)initWithHomeID:(id)d tintColor:(id)color listRowBackgroundColor:(id)backgroundColor
{
  v7 = sub_25459A1B0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25459A190();
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v13 = HUScheduleAccessViewController.init(homeID:tintColor:listRowBackgroundColor:)(v10, colorCopy, backgroundColor);

  return v13;
}

- (HUScheduleAccessViewController)initWithCoder:(id)coder
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (self + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR___HUScheduleAccessViewController_hostingController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___HUScheduleAccessViewController_task) = 0;
  result = sub_25459AAE0();
  __break(1u);
  return result;
}

- (HUScheduleAccessViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (self + OBJC_IVAR___HUScheduleAccessViewController_scheduleAccessList);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR___HUScheduleAccessViewController_hostingController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___HUScheduleAccessViewController_task) = 0;
  result = sub_25459AAE0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  HUScheduleAccessViewController.viewDidLoad()();
}

@end