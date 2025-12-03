@interface _SearchEntryWithMatchDisplay
- (_SearchEntryWithMatchDisplay)initWithFrame:(CGRect)frame;
- (id)_createMatchDisplayLabel;
- (void)layoutSubviews;
- (void)setMatchDisplayString:(id)string;
@end

@implementation _SearchEntryWithMatchDisplay

- (id)_createMatchDisplayLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setOpaque:0];
  [v4 setHidden:1];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [v4 setTextColor:systemGrayColor];

  searchField = [(_SearchEntryWithMatchDisplay *)self searchField];
  font = [searchField font];
  [v4 setFont:font];

  return v4;
}

- (_SearchEntryWithMatchDisplay)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _SearchEntryWithMatchDisplay;
  v3 = [(_SearchEntryWithMatchDisplay *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _createMatchDisplayLabel = [(_SearchEntryWithMatchDisplay *)v3 _createMatchDisplayLabel];
    matchDisplayLabel = v4->_matchDisplayLabel;
    v4->_matchDisplayLabel = _createMatchDisplayLabel;

    [(_SearchEntryWithMatchDisplay *)v4 addSubview:v4->_matchDisplayLabel];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(_SearchEntryWithMatchDisplay *)v4 setBackgroundColor:systemBackgroundColor];
  }

  return v4;
}

- (void)setMatchDisplayString:(id)string
{
  [(UILabel *)self->_matchDisplayLabel setText:string];

  [(_SearchEntryWithMatchDisplay *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = _SearchEntryWithMatchDisplay;
  [(_SearchEntryWithMatchDisplay *)&v15 layoutSubviews];
  [(_SearchEntryWithMatchDisplay *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_matchDisplayLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  v8.n128_f64[0] = v7;
  v10.n128_f64[0] = v9;
  v11.n128_f64[0] = v4 + -40.0 - v7;
  v12.n128_u64[0] = 0.5;
  v13.n128_f64[0] = (v6 - v9) * 0.5;
  matchDisplayLabel = self->_matchDisplayLabel;
  HKUIRectIntegralToScreenScale(v11, v13, v8, v10, v12);
  [(UILabel *)matchDisplayLabel setFrame:?];
}

@end