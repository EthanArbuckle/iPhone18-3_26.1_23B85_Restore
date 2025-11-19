@interface FileCoordinatorInputSignal.Presenter
- (NSURL)presentedItemURL;
- (_TtCC19HealthOrchestration26FileCoordinatorInputSignal9Presenter)init;
- (void)presentedItemDidChange;
@end

@implementation FileCoordinatorInputSignal.Presenter

- (NSURL)presentedItemURL
{
  v3 = sub_22887F060();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtCC19HealthOrchestration26FileCoordinatorInputSignal9Presenter_observedURL, v3);
  v7 = sub_22887F040();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (void)presentedItemDidChange
{
  if (swift_weakLoadStrong())
  {
    v3 = OBJC_IVAR____TtCC19HealthOrchestration26FileCoordinatorInputSignal9Presenter_observedURL;
    v4 = self;
    sub_228819478(self + v3);
  }
}

- (_TtCC19HealthOrchestration26FileCoordinatorInputSignal9Presenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end