@interface WrappedPinEntryView
- (BOOL)hasText;
- (_TtC9CoreCDPUI19WrappedPinEntryView)initWithCoder:(id)coder;
- (_TtC9CoreCDPUI19WrappedPinEntryView)initWithFrame:(CGRect)frame;
- (int64_t)keyboardType;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)setKeyboardType:;
@end

@implementation WrappedPinEntryView

- (_TtC9CoreCDPUI19WrappedPinEntryView)initWithCoder:(id)coder
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
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
  selfCopy = self;
  v3 = sub_24521A170();

  return v3;
}

- (void)insertText:(id)text
{
  v4 = sub_24525518C();
  v6 = v5;
  selfCopy = self;
  sub_24521A1F4(v4, v6);
}

- (void)deleteBackward
{
  selfCopy = self;
  sub_24521A538();
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  sub_24521D178();
  sub_24521D72C(&qword_27EE0DD00, sub_24521D178);
  v6 = sub_24525532C();
  eventCopy = event;
  selfCopy = self;
  sub_24521D1C4(v6);
}

- (_TtC9CoreCDPUI19WrappedPinEntryView)initWithFrame:(CGRect)frame
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