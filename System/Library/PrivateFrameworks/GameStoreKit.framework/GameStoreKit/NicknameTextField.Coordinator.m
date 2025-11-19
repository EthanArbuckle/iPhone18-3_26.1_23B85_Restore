@interface NicknameTextField.Coordinator
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtCV12GameStoreKit17NicknameTextField11Coordinator)init;
- (void)dealloc;
- (void)textChangedWithNotification:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
@end

@implementation NicknameTextField.Coordinator

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:*MEMORY[0x277D770B0] object:0];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for NicknameTextField.Coordinator(0);
  [(NicknameTextField.Coordinator *)&v6 dealloc];
}

- (void)textChangedWithNotification:(id)a3
{
  v4 = sub_24F91EB58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();
  v8 = self;
  sub_24F3BF654();

  (*(v5 + 8))(v7, v4);
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_24F3C12F8();

  return self & 1;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24F3BF968(v4);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24F3C0330(v4);

  return 1;
}

- (_TtCV12GameStoreKit17NicknameTextField11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end