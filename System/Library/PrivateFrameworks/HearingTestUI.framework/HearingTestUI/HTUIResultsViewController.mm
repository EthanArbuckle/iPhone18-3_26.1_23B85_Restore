@interface HTUIResultsViewController
- (_TtC13HearingTestUI25HTUIResultsViewController)initWithAudiogram:(id)audiogram healthStore:(id)store isHearingAssistAvailable:(BOOL)available application:(id)application deviceBluetoothUUID:(id)d;
- (void)didTapDone;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation HTUIResultsViewController

- (_TtC13HearingTestUI25HTUIResultsViewController)initWithAudiogram:(id)audiogram healthStore:(id)store isHearingAssistAvailable:(BOOL)available application:(id)application deviceBluetoothUUID:(id)d
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = _Block_copy(d);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = HTUIResultsViewController.init(audiogram:healthStore:isHearingAssistAvailable:application:deviceBluetoothUUID:)(audiogram, store, available, application, sub_20CDF5FF0, v13);

  return v14;
}

- (void)viewDidAppear:(BOOL)appear
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_20CDF1CB4(appear);
}

- (void)didTapDone
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager))
  {
    v2 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager);
    v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager);
    ObjectType = swift_getObjectType();
    v8 = 3;
    (*(v2 + 48))(&v8, self, &protocol witness table for HTUIResultsViewController, ObjectType, v2);
  }

  else
  {
    selfCopy = self;
  }

  [(HTUIResultsViewController *)self dismissViewControllerAnimated:1 completion:0, self];
}

@end