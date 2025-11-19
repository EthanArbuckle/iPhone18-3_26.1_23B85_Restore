@interface KeyboardObserver
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
@end

@implementation KeyboardObserver

- (void)keyboardWillShow:(id)a3
{
  v3 = sub_243B6F9EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6F9CC();

  sub_243B31170();

  (*(v4 + 8))(v7, v3);
}

- (void)keyboardWillHide:(id)a3
{
  v3 = sub_243B6F9EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B6F9CC();
  swift_getKeyPath();
  swift_getKeyPath();
  v8[1] = 0;

  sub_243B6FC4C();
  (*(v4 + 8))(v7, v3);
}

@end