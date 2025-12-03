@interface PendingReminderTracker
- (_TtC21CalendarUIKitInternal22PendingReminderTracker)init;
- (id)optimisticReminderFor:(id)for;
- (void)addPendingWithEvent:(id)event sequenceNumber:(int)number;
- (void)eventStoreDidChange:(id)change;
- (void)revertPendingWithEvent:(id)event sendNotification:(BOOL)notification;
- (void)setOptimisticReminderWithEvent:(id)event sequenceNumber:(int)number optimisticReminder:(id)reminder;
@end

@implementation PendingReminderTracker

- (void)addPendingWithEvent:(id)event sequenceNumber:(int)number
{
  eventCopy = event;
  selfCopy = self;
  sub_2429B2AC8(eventCopy, number, 1, selfCopy);
  objectID = [eventCopy objectID];
  if (objectID)
  {
    v8 = objectID;
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

- (void)setOptimisticReminderWithEvent:(id)event sequenceNumber:(int)number optimisticReminder:(id)reminder
{
  eventCopy = event;
  reminderCopy = reminder;
  selfCopy = self;
  sub_2429B5F4C(eventCopy, number, 1, &selfCopy->super, eventCopy, reminderCopy);
}

- (id)optimisticReminderFor:(id)for
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  forCopy = for;
  selfCopy = self;
  sub_2429B3518(forCopy, 0, 0, &selfCopy->super, &v9);

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

- (void)revertPendingWithEvent:(id)event sendNotification:(BOOL)notification
{
  eventCopy = event;
  selfCopy = self;
  sub_2429B2620(eventCopy, notification);
}

- (void)eventStoreDidChange:(id)change
{
  v4 = sub_2429B6D70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2429B6D50();
  selfCopy = self;
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