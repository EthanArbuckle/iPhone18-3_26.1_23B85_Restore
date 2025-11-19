@interface PendingReminderTracker
- (_TtC21CalendarUIKitInternal22PendingReminderTracker)init;
- (id)optimisticReminderFor:(id)a3;
- (void)addPendingWithEvent:(id)a3 sequenceNumber:(int)a4;
- (void)eventStoreDidChange:(id)a3;
- (void)revertPendingWithEvent:(id)a3 sendNotification:(BOOL)a4;
- (void)setOptimisticReminderWithEvent:(id)a3 sequenceNumber:(int)a4 optimisticReminder:(id)a5;
@end

@implementation PendingReminderTracker

- (void)addPendingWithEvent:(id)a3 sequenceNumber:(int)a4
{
  v6 = a3;
  v11 = self;
  sub_2429B2AC8(v6, a4, 1, v11);
  v7 = [v6 objectID];
  if (v7)
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2429B8550;
    *(v9 + 32) = v8;
    v10 = v8;
    sub_2429B3FB8(v9);
  }

  else
  {
    __break(1u);
  }
}

- (void)setOptimisticReminderWithEvent:(id)a3 sequenceNumber:(int)a4 optimisticReminder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_2429B5F4C(v8, a4, 1, &v10->super, v8, v9);
}

- (id)optimisticReminderFor:(id)a3
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v4 = a3;
  v5 = self;
  sub_2429B3518(v4, 0, 0, &v5->super, &v9);

  v6 = v9;
  if (v9)
  {
    v7 = *(&v10 + 1);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)revertPendingWithEvent:(id)a3 sendNotification:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_2429B2620(v6, a4);
}

- (void)eventStoreDidChange:(id)a3
{
  v4 = sub_2429B6D70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2429B6D50();
  v9 = self;
  sub_2429B4238();

  (*(v5 + 8))(v8, v4);
}

- (_TtC21CalendarUIKitInternal22PendingReminderTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end