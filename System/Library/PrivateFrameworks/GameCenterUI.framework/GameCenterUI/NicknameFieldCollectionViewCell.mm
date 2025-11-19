@interface NicknameFieldCollectionViewCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC12GameCenterUI20DynamicTypeTextField)accessibilityTextLabel;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChangeSelection:(id)a3;
- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4;
@end

@implementation NicknameFieldCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_24E2D6454();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
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
  v2 = self;
  sub_24E2D6BAC();
}

- (_TtC12GameCenterUI20DynamicTypeTextField)accessibilityTextLabel
{
  v2 = sub_24E2D7BC0();

  return v2;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2D7FB8(v4);

  return 1;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2D806C();
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_24E347CF8();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_24E2D821C(v12, location, length, v9, v11);

  return length & 1;
}

- (void)textFieldDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2D865C();
}

- (void)textFieldDidEndEditing:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_24E2D8754();
}

@end