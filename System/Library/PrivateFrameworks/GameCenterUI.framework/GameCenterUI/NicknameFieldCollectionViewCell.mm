@interface NicknameFieldCollectionViewCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC12GameCenterUI20DynamicTypeTextField)accessibilityTextLabel;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChangeSelection:(id)selection;
- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason;
@end

@implementation NicknameFieldCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E2D6454();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_24E2D673C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24E2D6BAC();
}

- (_TtC12GameCenterUI20DynamicTypeTextField)accessibilityTextLabel
{
  v2 = sub_24E2D7BC0();

  return v2;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  sub_24E2D7FB8(returnCopy);

  return 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_24E2D806C();
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = sub_24E347CF8();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_24E2D821C(fieldCopy, location, length, v9, v11);

  return length & 1;
}

- (void)textFieldDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_24E2D865C();
}

- (void)textFieldDidEndEditing:(id)editing reason:(int64_t)reason
{
  editingCopy = editing;
  selfCopy = self;
  sub_24E2D8754();
}

@end