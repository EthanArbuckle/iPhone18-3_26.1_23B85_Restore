@interface CUIKIReminderEditorImplementation
- (BOOL)saveChangesToEvents:(id)events error:(id *)error;
- (CUIKIntegrationAlertDisplayer)alertDisplayer;
- (_TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation)init;
- (_TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation)initWithEventStore:(id)store alertDisplayer:(id)displayer undoManager:(id)manager changeTracker:(id)tracker;
- (void)delete:(id)delete completionHandler:(id)handler;
- (void)setAlertDisplayer:(id)displayer;
@end

@implementation CUIKIReminderEditorImplementation

- (_TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation)initWithEventStore:(id)store alertDisplayer:(id)displayer undoManager:(id)manager changeTracker:(id)tracker
{
  storeCopy = store;
  swift_unknownObjectRetain();
  managerCopy = manager;
  trackerCopy = tracker;
  v12 = sub_2429A0360(storeCopy, displayer, manager, trackerCopy);

  swift_unknownObjectRelease();
  return v12;
}

- (CUIKIntegrationAlertDisplayer)alertDisplayer
{
  v3 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setAlertDisplayer:(id)displayer
{
  v5 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = displayer;
  swift_unknownObjectRetain();
  selfCopy = self;
  swift_unknownObjectRelease();
  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer) = 0;
}

- (BOOL)saveChangesToEvents:(id)events error:(id *)error
{
  sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
  v5 = sub_2429B7380();
  selfCopy = self;
  sub_2429A7200(v5);

  return 1;
}

- (void)delete:(id)delete completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
  v6 = sub_2429B7380();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_2429AAAF8(v6, sub_2429B1D08, v7);
}

- (_TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end