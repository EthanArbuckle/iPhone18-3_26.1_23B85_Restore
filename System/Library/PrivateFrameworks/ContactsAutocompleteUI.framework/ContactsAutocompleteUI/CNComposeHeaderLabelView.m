@interface CNComposeHeaderLabelView
- (CGPoint)baselinePoint;
- (CNComposeHeaderLabelView)initWithFrame:(CGRect)a3;
- (void)_updateTextColor;
- (void)tintColorDidChange;
@end

@implementation CNComposeHeaderLabelView

- (void)_updateTextColor
{
  v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(CNComposeHeaderLabelView *)self setTextColor:v3];
}

- (CNComposeHeaderLabelView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CNComposeHeaderLabelView;
  v3 = [(CNComposeHeaderLabelView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CNComposeHeaderView defaultFont];
    [(CNComposeHeaderLabelView *)v3 setFont:v4];

    [(CNComposeHeaderLabelView *)v3 _updateTextColor];
  }

  return v3;
}

- (CGPoint)baselinePoint
{
  [(CNComposeHeaderLabelView *)self frame];
  v4 = v3;
  [(CNComposeHeaderLabelView *)self _baselineOffsetFromBottom];
  v6 = round(v4 - v5);
  v7 = 0.0;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CNComposeHeaderLabelView;
  [(CNComposeHeaderLabelView *)&v3 tintColorDidChange];
  [(CNComposeHeaderLabelView *)self _updateTextColor];
}

@end