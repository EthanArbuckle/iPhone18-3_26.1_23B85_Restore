@interface PageControlView.Coordinator
- (_TtCV13FitnessCoreUI15PageControlView11Coordinator)init;
- (void)updateCurrentPageWithSender:(id)sender;
@end

@implementation PageControlView.Coordinator

- (void)updateCurrentPageWithSender:(id)sender
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  senderCopy = sender;
  selfCopy = self;
  [senderCopy currentPage];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC08);
  sub_20C3E8ADC();
}

- (_TtCV13FitnessCoreUI15PageControlView11Coordinator)init
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end