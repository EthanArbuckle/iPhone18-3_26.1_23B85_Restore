@interface CCUIAnalyticsEventsController
- (CCUIAnalyticsEventsController)init;
- (void)analyticsLogMainViewControllerDismiss;
- (void)analyticsLogMainViewControllerPresent;
@end

@implementation CCUIAnalyticsEventsController

- (void)analyticsLogMainViewControllerPresent
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD820);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  selfCopy = self;
  sub_21EAA8520();
  v10 = sub_21EAA8530();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = OBJC_IVAR___CCUIAnalyticsEventsController_currentSessionIdentifier;
  swift_beginAccess();
  sub_21EA88CD0(v8, selfCopy + v11, &unk_27CEDCFF0);
  swift_endAccess();
  sub_21EAA84B0();
  v12 = sub_21EAA84C0();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  v13 = OBJC_IVAR___CCUIAnalyticsEventsController_sessionBeginTime;
  swift_beginAccess();
  sub_21EA88CD0(v5, selfCopy + v13, &qword_27CEDD820);
  swift_endAccess();
}

- (void)analyticsLogMainViewControllerDismiss
{
  selfCopy = self;
  sub_21EA88F2C();
}

- (CCUIAnalyticsEventsController)init
{
  v3 = OBJC_IVAR___CCUIAnalyticsEventsController_currentSessionIdentifier;
  v4 = sub_21EAA8530();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v5 = OBJC_IVAR___CCUIAnalyticsEventsController_sessionBeginTime;
  v6 = sub_21EAA84C0();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for AnalyticsEventsController();
  return [(CCUIAnalyticsEventsController *)&v8 init];
}

@end