@interface SuggestionSeparatorView
- (_TtC9MomentsUI23SuggestionSeparatorView)initWithCoder:(id)coder;
- (_TtC9MomentsUI23SuggestionSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation SuggestionSeparatorView

- (_TtC9MomentsUI23SuggestionSeparatorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SuggestionSeparatorView();
  height = [(SuggestionSeparatorView *)&v10 initWithFrame:x, y, width, height];
  [(SuggestionSeparatorView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  separatorColor = [objc_opt_self() separatorColor];
  [(SuggestionSeparatorView *)height setBackgroundColor:separatorColor];

  return height;
}

- (_TtC9MomentsUI23SuggestionSeparatorView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end