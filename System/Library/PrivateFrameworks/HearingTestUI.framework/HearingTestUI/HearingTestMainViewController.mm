@interface HearingTestMainViewController
+ (id)makeStandardViewControllerWithHealthStore:(id)a3 entryPoint:(int64_t)a4 options:(id)a5 articleProvider:(id)a6 importFlowProvider:(id)a7;
- (void)viewDidLoad;
@end

@implementation HearingTestMainViewController

+ (id)makeStandardViewControllerWithHealthStore:(id)a3 entryPoint:(int64_t)a4 options:(id)a5 articleProvider:(id)a6 importFlowProvider:(id)a7
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = objc_allocWithZone(type metadata accessor for HearingTestMainViewController());
  v12 = a3;
  v13 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = sub_20CDCACA4(v12, a4, v13, a6);
  v15 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v15 setModalInPresentation_];
  [v15 setModalPresentationStyle_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v15;
}

- (void)viewDidLoad
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for HearingTestMainViewController();
  v3 = self;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  v4 = [(HearingTestMainViewController *)v3 headerView:v5.receiver];
  [v4 setAllowFullWidthIcon_];

  sub_20CDC94D4();
  sub_20CDC6814();
  sub_20CDC734C();
  sub_20CDC8294();
  sub_20CDC8F04();
  sub_20CDC9188();
  sub_20CDC7834();
}

@end