@interface AlarmContext
- (_TtC18MobileTimerSupport12AlarmContext)init;
- (_TtC18MobileTimerSupport12AlarmContext)initWithTitle:(id)title alarmId:(id)id hour:(unint64_t)hour min:(unint64_t)min isSnoozed:(BOOL)snoozed snoozeFireDate:(id)date isFiring:(BOOL)firing;
- (int64_t)requestedStyle;
- (void)setRequestedStyle:(int64_t)style;
@end

@implementation AlarmContext

- (int64_t)requestedStyle
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRequestedStyle:(int64_t)style
{
  v5 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  swift_beginAccess();
  *(&self->super.isa + v5) = style;
}

- (_TtC18MobileTimerSupport12AlarmContext)initWithTitle:(id)title alarmId:(id)id hour:(unint64_t)hour min:(unint64_t)min isSnoozed:(BOOL)snoozed snoozeFireDate:(id)date isFiring:(BOOL)firing
{
  snoozedCopy = snoozed;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - v14;
  v16 = sub_22D81B2C8();
  v18 = v17;
  v19 = sub_22D81B2C8();
  v21 = v20;
  if (date)
  {
    sub_22D81A878();
    v22 = sub_22D81A8C8();
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
  }

  else
  {
    v23 = sub_22D81A8C8();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  }

  return AlarmContext.init(title:alarmId:hour:min:isSnoozed:snoozeFireDate:isFiring:)(v16, v18, v19, v21, hour, min, snoozedCopy, v15, firing);
}

- (_TtC18MobileTimerSupport12AlarmContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end