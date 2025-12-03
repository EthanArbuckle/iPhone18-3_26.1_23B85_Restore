@interface CPUIRepeatButton
- (CPUIRepeatButton)initWithFrame:(CGRect)frame;
- (void)setRepeatType:(int64_t)type;
@end

@implementation CPUIRepeatButton

- (CPUIRepeatButton)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CPUIRepeatButton;
  v3 = [(CPUIModernButton *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    traitCollection = [(CPUIRepeatButton *)v3 traitCollection];
    v6 = CPUIRepeatGlyph(traitCollection);
    repeatImage = v4->_repeatImage;
    v4->_repeatImage = v6;

    traitCollection2 = [(CPUIRepeatButton *)v4 traitCollection];
    v9 = CPUIRepeatOneGlyph(traitCollection2);
    repeatOneImage = v4->_repeatOneImage;
    v4->_repeatOneImage = v9;

    [(CPUIRepeatButton *)v4 setImage:v4->_repeatImage forState:0];
  }

  return v4;
}

- (void)setRepeatType:(int64_t)type
{
  if (type == 1)
  {
    repeatOneImage = [(CPUIRepeatButton *)self repeatOneImage];
    [(CPUIRepeatButton *)self setImage:repeatOneImage forState:0];

    [(CPUIRepeatButton *)self repeatOneImage];
  }

  else
  {
    repeatImage = [(CPUIRepeatButton *)self repeatImage];
    [(CPUIRepeatButton *)self setImage:repeatImage forState:0];

    [(CPUIRepeatButton *)self repeatImage];
  }
  v9 = ;
  labelColor = [MEMORY[0x277D75348] labelColor];
  v7 = [labelColor colorWithAlphaComponent:0.2];
  v8 = [v9 imageWithTintColor:v7];
  [(CPUIRepeatButton *)self setImage:v8 forState:1];
}

@end