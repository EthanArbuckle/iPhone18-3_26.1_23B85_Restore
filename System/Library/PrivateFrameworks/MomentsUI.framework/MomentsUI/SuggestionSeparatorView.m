@interface SuggestionSeparatorView
- (_TtC9MomentsUI23SuggestionSeparatorView)initWithCoder:(id)a3;
- (_TtC9MomentsUI23SuggestionSeparatorView)initWithFrame:(CGRect)a3;
@end

@implementation SuggestionSeparatorView

- (_TtC9MomentsUI23SuggestionSeparatorView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SuggestionSeparatorView();
  v7 = [(SuggestionSeparatorView *)&v10 initWithFrame:x, y, width, height];
  [(SuggestionSeparatorView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [objc_opt_self() separatorColor];
  [(SuggestionSeparatorView *)v7 setBackgroundColor:v8];

  return v7;
}

- (_TtC9MomentsUI23SuggestionSeparatorView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end