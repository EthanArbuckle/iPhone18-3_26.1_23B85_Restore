@interface GKDashboardSectionHeaderView
+ (CGSize)platformSizeForTitle:(id)title withFont:(id)font;
+ (double)widthForTitle:(id)title withFont:(id)font;
- (CGSize)intrinsicContentSize;
- (void)awakeFromNib;
- (void)setOnDarkBackground:(BOOL)background;
@end

@implementation GKDashboardSectionHeaderView

+ (double)widthForTitle:(id)title withFont:(id)font
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__GKDashboardSectionHeaderView_widthForTitle_withFont___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v5 = widthForTitle_withFont__onceToken;
  fontCopy = font;
  titleCopy = title;
  if (v5 != -1)
  {
    dispatch_once(&widthForTitle_withFont__onceToken, block);
  }

  [widthForTitle_withFont__sSectionHeaderView setTitle:titleCopy];

  if (fontCopy)
  {
    v8 = fontCopy;
  }

  else
  {
    v8 = widthForTitle_withFont__sOriginalFont;
  }

  [widthForTitle_withFont__sSectionHeaderView setFont:v8];

  [widthForTitle_withFont__sSectionHeaderView intrinsicContentSize];
  return result;
}

uint64_t __55__GKDashboardSectionHeaderView_widthForTitle_withFont___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _gkViewFromNib];
  v2 = widthForTitle_withFont__sSectionHeaderView;
  widthForTitle_withFont__sSectionHeaderView = v1;

  v3 = [widthForTitle_withFont__sSectionHeaderView font];
  v4 = widthForTitle_withFont__sOriginalFont;
  widthForTitle_withFont__sOriginalFont = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

+ (CGSize)platformSizeForTitle:(id)title withFont:(id)font
{
  v4 = *MEMORY[0x277CBF3A8];
  [self defaultHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = GKDashboardSectionHeaderView;
  [(GKDashboardSectionHeaderView *)&v4 awakeFromNib];
  textColor = [(UILabel *)self->_titleLabel textColor];
  [(GKDashboardSectionHeaderView *)self setTitleColor:textColor];
}

- (void)setOnDarkBackground:(BOOL)background
{
  if (self->_onDarkBackground != background)
  {
    self->_onDarkBackground = background;
  }
}

- (CGSize)intrinsicContentSize
{
  titleLabel = [(GKDashboardSectionHeaderView *)self titleLabel];
  [titleLabel intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  [(NSLayoutConstraint *)self->_leftMarginConstraint constant];
  v9 = v8;
  [(NSLayoutConstraint *)self->_rightMarginConstraint constant];
  v11 = v5 + v9 + v10;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

@end