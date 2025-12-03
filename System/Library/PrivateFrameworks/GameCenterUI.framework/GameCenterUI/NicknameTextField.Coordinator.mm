@interface NicknameTextField.Coordinator
- (BOOL)nicknameShouldBeginEditing;
- (void)nicknameDidBecomeFirstResponder;
- (void)nicknameDidResignFirstResponder;
- (void)nicknameTextDidChangeWithMessage:(id)message;
- (void)nicknameUpdateAvatarImage:(id)image;
- (void)nicknameUpdateRequestCompletedWithStatus:(id)status error:(id)error;
- (void)nicknameWillbeginUpdating;
@end

@implementation NicknameTextField.Coordinator

- (BOOL)nicknameShouldBeginEditing
{
  selfCopy = self;
  v3 = sub_24E1FC390();

  return v3 & 1;
}

- (void)nicknameDidBecomeFirstResponder
{
  selfCopy = self;
  sub_24E1FC458();
}

- (void)nicknameDidResignFirstResponder
{
  selfCopy = self;
  sub_24E1FC534();
}

- (void)nicknameWillbeginUpdating
{
  selfCopy = self;
  sub_24E1FC7BC();
}

- (void)nicknameUpdateAvatarImage:(id)image
{
  sub_24E347CF8();
  selfCopy = self;
  sub_24DFB2450();
}

- (void)nicknameUpdateRequestCompletedWithStatus:(id)status error:(id)error
{
  if (status)
  {
    v6 = sub_24E347CF8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  errorCopy = error;
  selfCopy = self;
  sub_24E1FC870(v6, v8, error);
}

- (void)nicknameTextDidChangeWithMessage:(id)message
{
  if (message)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_24E1FD13C(v4, v6);
}

@end