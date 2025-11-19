@interface SuggestionsTextField
- (_TtC16CommunicationsUI20SuggestionsTextField)initWithFrame:(CGRect)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)layoutSubviews;
@end

@implementation SuggestionsTextField

- (void)layoutSubviews
{
  v2 = self;
  SuggestionsTextField.layoutSubviews()();
}

- (void)keyboardWillShow:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C2E4FD80(v4, 1);
}

- (void)keyboardWillHide:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C2E4FD80(v4, 0);
}

- (_TtC16CommunicationsUI20SuggestionsTextField)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end