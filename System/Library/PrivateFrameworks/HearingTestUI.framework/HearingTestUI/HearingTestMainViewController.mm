@interface HearingTestMainViewController
+ (id)makeStandardViewControllerWithHealthStore:(id)store entryPoint:(int64_t)point options:(id)options articleProvider:(id)provider importFlowProvider:(id)flowProvider;
- (void)viewDidLoad;
@end

@implementation HearingTestMainViewController

+ (id)makeStandardViewControllerWithHealthStore:(id)store entryPoint:(int64_t)point options:(id)options articleProvider:(id)provider importFlowProvider:(id)flowProvider
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = objc_allocWithZone(type metadata accessor for HearingTestMainViewController());
  storeCopy = store;
  optionsCopy = options;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = sub_20CDCACA4(storeCopy, point, optionsCopy, provider);
  initWithRootViewController_ = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [initWithRootViewController_ setModalInPresentation_];
  [initWithRootViewController_ setModalPresentationStyle_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return initWithRootViewController_;
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
  selfCopy = self;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  v4 = [(HearingTestMainViewController *)selfCopy headerView:v5.receiver];
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