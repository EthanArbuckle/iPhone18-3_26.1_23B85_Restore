@interface CaptureTimeoutController
- (void)handleTimerEvent;
@end

@implementation CaptureTimeoutController

- (void)handleTimerEvent
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    sub_247C57918();

    swift_unknownObjectRelease();
  }
}

@end