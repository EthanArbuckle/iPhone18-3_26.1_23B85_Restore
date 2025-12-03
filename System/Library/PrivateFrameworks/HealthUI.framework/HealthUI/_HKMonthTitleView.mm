@interface _HKMonthTitleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_HKMonthTitleView)initWithFrame:(CGRect)frame;
- (void)_updateFont;
- (void)layoutSubviews;
- (void)setDate:(id)date;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _HKMonthTitleView

- (_HKMonthTitleView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _HKMonthTitleView;
  v3 = [(_HKMonthTitleView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    monthTitle = v3->_monthTitle;
    v3->_monthTitle = v4;

    [(UILabel *)v3->_monthTitle setTextAlignment:1];
    [(_HKMonthTitleView *)v3 addSubview:v3->_monthTitle];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    dividerLine = v3->_dividerLine;
    v3->_dividerLine = v6;

    tableSeparatorColor = [MEMORY[0x1E69DC888] tableSeparatorColor];
    [(UIView *)v3->_dividerLine setBackgroundColor:tableSeparatorColor];

    [(_HKMonthTitleView *)v3 addSubview:v3->_dividerLine];
    [(_HKMonthTitleView *)v3 _updateFont];
    [(_HKMonthTitleView *)v3 setTopPadding:10.0];
    [(_HKMonthTitleView *)v3 setBottomPadding:7.0];
  }

  return v3;
}

- (void)_updateFont
{
  v3 = *MEMORY[0x1E69DDC40];
  if (HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(*MEMORY[0x1E69DDC40]))
  {
    v4 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v3];
    [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC8] maximumContentSizeCategory:v3 compatibleWithTraitCollection:v4];
  }

  else
  {
    v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC8] addingSymbolicTraits:32770 options:0];
    [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:20.0];
  }
  v5 = ;

  [(UILabel *)self->_monthTitle setFont:v5];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_monthTitle frame:fits.width];
  v5 = v4;
  [(UILabel *)self->_monthTitle frame];
  v7 = v6;
  [(_HKMonthTitleView *)self bottomPadding];
  v9 = v8 + v7;
  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = _HKMonthTitleView;
  [(_HKMonthTitleView *)&v11 layoutSubviews];
  [(UILabel *)self->_monthTitle frame];
  MaxY = CGRectGetMaxY(v12);
  font = [(UILabel *)self->_monthTitle font];
  [font descender];
  v6 = MaxY + v5 + 12.0;

  dividerLine = self->_dividerLine;
  [(_HKMonthTitleView *)self dividerOriginX];
  v9 = v8;
  [(_HKMonthTitleView *)self dividerWidth];
  [(UIView *)dividerLine setFrame:v9, v6, v10, HKUIOnePixel()];
}

- (void)setDate:(id)date
{
  monthTitle = self->_monthTitle;
  v5 = [(_HKMonthTitleView *)self _monthStringFromDate:date];
  [(UILabel *)monthTitle setText:v5];

  [(UILabel *)self->_monthTitle sizeToFit];
  [(UILabel *)self->_monthTitle frame];
  Height = CGRectGetHeight(v13);
  [(UILabel *)self->_monthTitle frame];
  v7 = Height - CGRectGetMaxY(v14);
  font = [(UILabel *)self->_monthTitle font];
  [font descender];
  v10 = v7 + v9 + 12.0;

  v11 = self->_monthTitle;

  [(UILabel *)v11 setDirectionalLayoutMargins:0.0, 0.0, v10, 0.0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  self->_highlighted = highlighted;
  if (highlighted)
  {
    HKHealthKeyColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v5 = ;
  monthTitle = [(_HKMonthTitleView *)self monthTitle];
  [monthTitle setTextColor:v5];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = _HKMonthTitleView;
  [(_HKMonthTitleView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(_HKMonthTitleView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(_HKMonthTitleView *)self _updateFont];
      [(_HKMonthTitleView *)self setNeedsLayout];
    }
  }
}

@end