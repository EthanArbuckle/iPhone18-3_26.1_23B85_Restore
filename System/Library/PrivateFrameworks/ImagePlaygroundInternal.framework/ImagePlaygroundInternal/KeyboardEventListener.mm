@interface KeyboardEventListener
- (_TtC23ImagePlaygroundInternal21KeyboardEventListener)init;
- (void)_keyboardWillShowWithNotification:(id)notification;
@end

@implementation KeyboardEventListener

- (void)_keyboardWillShowWithNotification:(id)notification
{
  v4 = sub_1D28711B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D2871188();
  selfCopy = self;
  if (sub_1D2745020(v7, 1))
  {
    v9 = *(&selfCopy->super.isa + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow);
    if (!v9)
    {
      (*(v5 + 8))(v7, v4);

      return;
    }

    sub_1D22A58B8(*(&selfCopy->super.isa + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow));
    sub_1D274568C(v11);
    v9(v11);
    sub_1D22A576C(v9);
  }

  (*(v5 + 8))(v7, v4);
}

- (_TtC23ImagePlaygroundInternal21KeyboardEventListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end