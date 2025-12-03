@interface FieldCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (void)didTapCell;
- (void)didTapDoneWithSender:(id)sender;
- (void)textFieldDidChangeWithSender:(id)sender;
@end

@implementation FieldCell

- (void)didTapCell
{
  selfCopy = self;
  sub_22838B914();
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  sub_228392000();
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_22838BD90(fieldCopy, location, length);

  return length & 1;
}

- (void)didTapDoneWithSender:(id)sender
{
  selfCopy = self;
  v3 = sub_22838A740();
  [v3 resignFirstResponder];
}

- (void)textFieldDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_22838CE78(senderCopy);
}

@end