@interface NicknameTextField.Coordinator
- (BOOL)nicknameShouldBeginEditing;
- (void)nicknameDidBecomeFirstResponder;
- (void)nicknameDidResignFirstResponder;
- (void)nicknameTextDidChangeWithMessage:(id)a3;
- (void)nicknameUpdateAvatarImage:(id)a3;
- (void)nicknameUpdateRequestCompletedWithStatus:(id)a3 error:(id)a4;
- (void)nicknameWillbeginUpdating;
@end

@implementation NicknameTextField.Coordinator

- (BOOL)nicknameShouldBeginEditing
{
  v2 = self;
  v3 = sub_24E1FC390();

  return v3 & 1;
}

- (void)nicknameDidBecomeFirstResponder
{
  v2 = self;
  sub_24E1FC458();
}

- (void)nicknameDidResignFirstResponder
{
  v2 = self;
  sub_24E1FC534();
}

- (void)nicknameWillbeginUpdating
{
  v2 = self;
  sub_24E1FC7BC();
}

- (void)nicknameUpdateAvatarImage:(id)a3
{
  sub_24E347CF8();
  v4 = self;
  sub_24DFB2450();
}

- (void)nicknameUpdateRequestCompletedWithStatus:(id)a3 error:(id)a4
{
  if (a3)
  {
    v6 = sub_24E347CF8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a4;
  v10 = self;
  sub_24E1FC870(v6, v8, a4);
}

- (void)nicknameTextDidChangeWithMessage:(id)a3
{
  if (a3)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_24E1FD13C(v4, v6);
}

@end