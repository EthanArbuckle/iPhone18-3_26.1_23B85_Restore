@interface CPUIRepeatButton
- (CPUIRepeatButton)initWithFrame:(CGRect)a3;
- (void)setRepeatType:(int64_t)a3;
@end

@implementation CPUIRepeatButton

- (CPUIRepeatButton)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CPUIRepeatButton;
  v3 = [(CPUIModernButton *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CPUIRepeatButton *)v3 traitCollection];
    v6 = CPUIRepeatGlyph(v5);
    repeatImage = v4->_repeatImage;
    v4->_repeatImage = v6;

    v8 = [(CPUIRepeatButton *)v4 traitCollection];
    v9 = CPUIRepeatOneGlyph(v8);
    repeatOneImage = v4->_repeatOneImage;
    v4->_repeatOneImage = v9;

    [(CPUIRepeatButton *)v4 setImage:v4->_repeatImage forState:0];
  }

  return v4;
}

- (void)setRepeatType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(CPUIRepeatButton *)self repeatOneImage];
    [(CPUIRepeatButton *)self setImage:v4 forState:0];

    [(CPUIRepeatButton *)self repeatOneImage];
  }

  else
  {
    v5 = [(CPUIRepeatButton *)self repeatImage];
    [(CPUIRepeatButton *)self setImage:v5 forState:0];

    [(CPUIRepeatButton *)self repeatImage];
  }
  v9 = ;
  v6 = [MEMORY[0x277D75348] labelColor];
  v7 = [v6 colorWithAlphaComponent:0.2];
  v8 = [v9 imageWithTintColor:v7];
  [(CPUIRepeatButton *)self setImage:v8 forState:1];
}

@end