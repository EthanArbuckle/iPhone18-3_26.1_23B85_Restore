@interface HearingTestNoiseInterruptionViewController
- (void)didTapHowtoReduceNoise;
- (void)viewDidLoad;
@end

@implementation HearingTestNoiseInterruptionViewController

- (void)viewDidLoad
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for HearingTestNoiseInterruptionViewController();
  v3 = self;
  [(HearingTestInterruptionsViewController *)&v4 viewDidLoad];
  sub_20CDA8BF0();
  sub_20CDA8F34();
}

- (void)didTapHowtoReduceNoise
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = objc_allocWithZone(type metadata accessor for HTUIHowToReduceNoiseViewController());
  v6 = self;
  v4 = HTUIHowToReduceNoiseViewController.init()();
  v5 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];

  [(HearingTestNoiseInterruptionViewController *)v6 presentViewController:v5 animated:1 completion:0];
}

@end