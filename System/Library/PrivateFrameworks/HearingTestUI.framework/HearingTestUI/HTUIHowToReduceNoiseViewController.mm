@interface HTUIHowToReduceNoiseViewController
- (void)didTapDone;
- (void)viewDidLoad;
@end

@implementation HTUIHowToReduceNoiseViewController

- (void)viewDidLoad
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_20CDAF330();
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

  [(HTUIHowToReduceNoiseViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end