@interface CUIKIReminderEditorImplementation
- (BOOL)saveChangesToEvents:(id)a3 error:(id *)a4;
- (CUIKIntegrationAlertDisplayer)alertDisplayer;
- (_TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation)init;
- (_TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation)initWithEventStore:(id)a3 alertDisplayer:(id)a4 undoManager:(id)a5 changeTracker:(id)a6;
- (void)delete:(id)a3 completionHandler:(id)a4;
- (void)setAlertDisplayer:(id)a3;
@end

@implementation CUIKIReminderEditorImplementation

- (_TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation)initWithEventStore:(id)a3 alertDisplayer:(id)a4 undoManager:(id)a5 changeTracker:(id)a6
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = a6;
  v12 = sub_2429A0360(v9, a4, a5, v11);

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

- (void)setAlertDisplayer:(id)a3
{
  v5 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  v7 = self;
  swift_unknownObjectRelease();
  v8 = *(&v7->super.isa + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer);
  *(&v7->super.isa + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer) = 0;
}

- (BOOL)saveChangesToEvents:(id)a3 error:(id *)a4
{
  sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
  v5 = sub_2429B7380();
  v6 = self;
  sub_2429A7200(v5);

  return 1;
}

- (void)delete:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
  v6 = sub_2429B7380();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_2429AAAF8(v6, sub_2429B1D08, v7);
}

- (_TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end