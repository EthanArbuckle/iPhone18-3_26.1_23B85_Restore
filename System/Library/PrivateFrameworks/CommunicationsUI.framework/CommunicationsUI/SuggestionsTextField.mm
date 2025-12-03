@interface SuggestionsTextField
- (_TtC16CommunicationsUI20SuggestionsTextField)initWithFrame:(CGRect)frame;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)layoutSubviews;
@end

@implementation SuggestionsTextField

- (void)layoutSubviews
{
  selfCopy = self;
  SuggestionsTextField.layoutSubviews()();
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  selfCopy = self;
  sub_1C2E4FD80(showCopy, 1);
}

- (void)keyboardWillHide:(id)hide
{
  hideCopy = hide;
  selfCopy = self;
  sub_1C2E4FD80(hideCopy, 0);
}

- (_TtC16CommunicationsUI20SuggestionsTextField)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end