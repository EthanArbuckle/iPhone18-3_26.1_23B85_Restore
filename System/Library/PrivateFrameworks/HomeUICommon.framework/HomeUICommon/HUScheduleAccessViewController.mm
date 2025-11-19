@interface HUScheduleAccessViewController
- (HUScheduleAccessViewController)initWithCoder:(id)a3;
- (HUScheduleAccessViewController)initWithGuestAccessSchedule:(id)a3 tintColor:(id)a4 shouldDisplayAlwaysAllowedSchedule:(BOOL)a5 scheduleBackgroundColor:(id)a6 listRowBackgroundColor:(id)a7;
- (HUScheduleAccessViewController)initWithHomeID:(id)a3 tintColor:(id)a4;
- (HUScheduleAccessViewController)initWithHomeID:(id)a3 tintColor:(id)a4 listRowBackgroundColor:(id)a5;
- (HUScheduleAccessViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUScheduleAccessViewController

- (HUScheduleAccessViewController)initWithGuestAccessSchedule:(id)a3 tintColor:(id)a4 shouldDisplayAlwaysAllowedSchedule:(BOOL)a5 scheduleBackgroundColor:(id)a6 listRowBackgroundColor:(id)a7
{
  v9 = a5;
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = HUScheduleAccessViewController.init(guestAccessSchedule:tintColor:shouldDisplayAlwaysAllowedSchedule:scheduleBackgroundColor:listRowBackgroundColor:)(a3, v13, v9, v14, a7);

  return v16;
}

- (HUScheduleAccessViewController)initWithHomeID:(id)a3 tintColor:(id)a4
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
  v11 = a4;
  v12 = sub_25459A170();
  v13 = [(HUScheduleAccessViewController *)self initWithHomeID:v12 tintColor:v11 listRowBackgroundColor:0];

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (HUScheduleAccessViewController)initWithHomeID:(id)a3 tintColor:(id)a4 listRowBackgroundColor:(id)a5
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
  v11 = a4;
  v12 = a5;
  v13 = HUScheduleAccessViewController.init(homeID:tintColor:listRowBackgroundColor:)(v10, v11, a5);

  return v13;
}

- (HUScheduleAccessViewController)initWithCoder:(id)a3
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

- (HUScheduleAccessViewController)initWithNibName:(id)a3 bundle:(id)a4
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

  v3 = self;
  HUScheduleAccessViewController.viewDidLoad()();
}

@end