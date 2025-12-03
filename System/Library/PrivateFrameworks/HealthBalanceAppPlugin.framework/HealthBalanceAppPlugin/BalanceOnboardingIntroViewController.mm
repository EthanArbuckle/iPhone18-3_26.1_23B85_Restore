@interface BalanceOnboardingIntroViewController
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation BalanceOnboardingIntroViewController

- (void)viewDidLoad
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_251371E40();
}

- (void)hxui_primaryFooterButtonTapped
{
  v3 = sub_251384BD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  navigationController = [(BalanceOnboardingIntroViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v10 = navigationController;
    type metadata accessor for BalanceOnboardingNavigationController();
    if (swift_dynamicCastClass())
    {
      sub_25137F11C();

      (*(v4 + 104))(v7, *MEMORY[0x277D0FE30], v3);
      sub_2513808E0(selfCopy, v7);

      (*(v4 + 8))(v7, v3);

      return;
    }
  }

  sub_2513862C4();
  __break(1u);
}

- (void)hxui_cancelButtonTapped
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  navigationController = [(BalanceOnboardingIntroViewController *)selfCopy navigationController];
  if (!navigationController)
  {
    goto LABEL_9;
  }

  v4 = navigationController;
  type metadata accessor for BalanceOnboardingNavigationController();
  if (!swift_dynamicCastClass())
  {

LABEL_9:
    sub_2513862C4();
    __break(1u);
    return;
  }

  sub_25137F11C();

  sub_251380BC8();
}

@end