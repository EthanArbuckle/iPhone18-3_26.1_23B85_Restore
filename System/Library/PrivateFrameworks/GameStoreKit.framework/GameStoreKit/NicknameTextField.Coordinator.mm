@interface NicknameTextField.Coordinator
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtCV12GameStoreKit17NicknameTextField11Coordinator)init;
- (void)dealloc;
- (void)textChangedWithNotification:(id)notification;
- (void)textFieldDidBeginEditing:(id)editing;
@end

@implementation NicknameTextField.Coordinator

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D770B0] object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for NicknameTextField.Coordinator(0);
  [(NicknameTextField.Coordinator *)&v6 dealloc];
}

- (void)textChangedWithNotification:(id)notification
{
  v4 = sub_24F91EB58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();
  selfCopy = self;
  sub_24F3BF654();

  (*(v5 + 8))(v7, v4);
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = sub_24F3C12F8();

  return self & 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_24F3BF968(editingCopy);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  sub_24F3C0330(returnCopy);

  return 1;
}

- (_TtCV12GameStoreKit17NicknameTextField11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end