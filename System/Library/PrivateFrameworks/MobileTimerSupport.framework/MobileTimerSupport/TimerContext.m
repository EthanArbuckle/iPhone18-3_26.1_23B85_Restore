@interface TimerContext
- (_TtC18MobileTimerSupport12TimerContext)init;
- (_TtC18MobileTimerSupport12TimerContext)initWithState:(int64_t)a3 timerId:(id)a4 duration:(double)a5 remainingTime:(double)a6 firing:(BOOL)a7 fireDate:(id)a8 title:(id)a9;
- (int64_t)requestedStyle;
- (void)setRequestedStyle:(int64_t)a3;
@end

@implementation TimerContext

- (int64_t)requestedStyle
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRequestedStyle:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_TtC18MobileTimerSupport12TimerContext)initWithState:(int64_t)a3 timerId:(id)a4 duration:(double)a5 remainingTime:(double)a6 firing:(BOOL)a7 fireDate:(id)a8 title:(id)a9
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  v18 = sub_22D81B2C8();
  v20 = v19;
  if (a8)
  {
    sub_22D81A878();
    v21 = sub_22D81A8C8();
    (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  }

  else
  {
    v22 = sub_22D81A8C8();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  }

  v23 = sub_22D81B2C8();
  return TimerContext.init(state:timerId:duration:remainingTime:firing:fireDate:title:)(a3, v18, v20, a7, v17, v23, v24, a5, a6);
}

- (_TtC18MobileTimerSupport12TimerContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end