@interface MTWatchActivityManager
+ (_TtC18MobileTimerSupport22MTWatchActivityManager)shared;
+ (void)setShared:(id)shared;
- (_TtC18MobileTimerSupport22MTWatchActivityManager)init;
- (void)endActivityWithAlarmID:(id)d;
- (void)startActivityWithAlarmID:(id)d firingDate:(id)date;
@end

@implementation MTWatchActivityManager

+ (_TtC18MobileTimerSupport22MTWatchActivityManager)shared
{
  if (qword_27DA01A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_27DA035B8;
}

+ (void)setShared:(id)shared
{
  v3 = qword_27DA01A20;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27DA035B8;
  qword_27DA035B8 = sharedCopy;
}

- (void)startActivityWithAlarmID:(id)d firingDate:(id)date
{
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A918();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81A8F8();
  sub_22D81A878();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

- (void)endActivityWithAlarmID:(id)d
{
  v3 = sub_22D81A918();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81A8F8();
  (*(v4 + 8))(v7, v3);
}

- (_TtC18MobileTimerSupport22MTWatchActivityManager)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18MobileTimerSupport22MTWatchActivityManager_activityManager;
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(&self->super.isa + v4) = qword_27DA02490;
  v6.receiver = self;
  v6.super_class = ObjectType;
  sub_22D81A198();
  return [(MTWatchActivityManager *)&v6 init];
}

@end