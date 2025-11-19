@interface PageControl.Coordinator
- (_TtCV12GameStoreKit11PageControl11Coordinator)init;
- (void)updateCurrentPageWithSender:(id)a3;
@end

@implementation PageControl.Coordinator

- (void)updateCurrentPageWithSender:(id)a3
{
  v5 = *&self->control[OBJC_IVAR____TtCV12GameStoreKit11PageControl11Coordinator_control + 24];
  v6 = a3;
  v7 = self;

  [v6 currentPage];

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