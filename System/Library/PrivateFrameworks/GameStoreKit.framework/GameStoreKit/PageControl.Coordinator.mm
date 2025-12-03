@interface PageControl.Coordinator
- (_TtCV12GameStoreKit11PageControl11Coordinator)init;
- (void)updateCurrentPageWithSender:(id)sender;
@end

@implementation PageControl.Coordinator

- (void)updateCurrentPageWithSender:(id)sender
{
  v5 = *&self->control[OBJC_IVAR____TtCV12GameStoreKit11PageControl11Coordinator_control + 24];
  senderCopy = sender;
  selfCopy = self;

  [senderCopy currentPage];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F2180B8);
  sub_24F927178();
}

- (_TtCV12GameStoreKit11PageControl11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end