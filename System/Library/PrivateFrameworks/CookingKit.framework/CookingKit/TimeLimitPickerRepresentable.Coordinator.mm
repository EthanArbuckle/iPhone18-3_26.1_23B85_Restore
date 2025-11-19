@interface TimeLimitPickerRepresentable.Coordinator
- (_TtCV10CookingKitP33_3FE83860B62C210505335C3B40C86F6928TimeLimitPickerRepresentable11Coordinator)init;
- (void)updateTimeLimit:(id)a3;
@end

@implementation TimeLimitPickerRepresentable.Coordinator

- (void)updateTimeLimit:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 countDownDuration];

  sub_21A176C98(&qword_27CD03878);
  sub_21A2F7194();
}

- (_TtCV10CookingKitP33_3FE83860B62C210505335C3B40C86F6928TimeLimitPickerRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end