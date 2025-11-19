@interface WrappedPinEntryView
- (BOOL)hasText;
- (_TtC9CoreCDPUI19WrappedPinEntryView)initWithCoder:(id)a3;
- (_TtC9CoreCDPUI19WrappedPinEntryView)initWithFrame:(CGRect)a3;
- (int64_t)keyboardType;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)setKeyboardType:;
@end

@implementation WrappedPinEntryView

- (_TtC9CoreCDPUI19WrappedPinEntryView)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreCDPUI19WrappedPinEntryView_isSecureTextEntry) = 1;
  result = sub_24525555C();
  __break(1u);
  return result;
}

- (int64_t)keyboardType
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (BOOL)hasText
{
  v2 = self;
  v3 = sub_24521A170();

  return v3;
}

- (void)insertText:(id)a3
{
  v4 = sub_24525518C();
  v6 = v5;
  v7 = self;
  sub_24521A1F4(v4, v6);
}

- (void)deleteBackward
{
  v2 = self;
  sub_24521A538();
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  sub_24521D178();
  sub_24521D72C(&qword_27EE0DD00, sub_24521D178);
  v6 = sub_24525532C();
  v7 = a4;
  v8 = self;
  sub_24521D1C4(v6);
}

- (_TtC9CoreCDPUI19WrappedPinEntryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setKeyboardType:
{
  if (qword_27EE0D9E8 != -1)
  {
    swift_once();
  }

  v0 = sub_24525420C();
  __swift_project_value_buffer(v0, qword_27EE11750);
  oslog = sub_2452541EC();
  v1 = sub_24525537C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2451DB000, oslog, v1, "KeyboardType cannot be set.", v2, 2u);
    MEMORY[0x245D66A70](v2, -1, -1);
  }
}

@end