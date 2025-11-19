@interface FieldCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (void)didTapCell;
- (void)didTapDoneWithSender:(id)a3;
- (void)textFieldDidChangeWithSender:(id)a3;
@end

@implementation FieldCell

- (void)didTapCell
{
  v2 = self;
  sub_22838B914();
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_228392000();
  v9 = a3;
  v10 = self;
  LOBYTE(length) = sub_22838BD90(v9, location, length);

  return length & 1;
}

- (void)didTapDoneWithSender:(id)a3
{
  v4 = self;
  v3 = sub_22838A740();
  [v3 resignFirstResponder];
}

- (void)textFieldDidChangeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22838CE78(v4);
}

@end