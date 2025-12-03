@interface SUUIGiftFooterLabelTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setFooterLabel:(id)label;
@end

@implementation SUUIGiftFooterLabelTableViewCell

- (void)setFooterLabel:(id)label
{
  labelCopy = label;
  footerLabel = [(SUUIGiftFooterLabelTableViewCell *)self footerLabel];
  if (footerLabel != labelCopy && ([labelCopy isEqualToString:footerLabel] & 1) == 0)
  {
    footerLabel = self->_footerLabel;
    if (labelCopy)
    {
      if (!footerLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_footerLabel;
        self->_footerLabel = v6;

        v8 = self->_footerLabel;
        backgroundColor = [(SUUIGiftFooterLabelTableViewCell *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_footerLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_footerLabel setNumberOfLines:2];
        [(UILabel *)self->_footerLabel setTextAlignment:1];
        v12 = self->_footerLabel;
        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        [(UILabel *)v12 setTextColor:secondaryLabelColor];

        contentView = [(SUUIGiftFooterLabelTableViewCell *)self contentView];
        [contentView addSubview:self->_footerLabel];

        footerLabel = self->_footerLabel;
      }

      [(UILabel *)footerLabel setText:?];
    }

    else
    {
      [(UILabel *)footerLabel removeFromSuperview];
      v15 = self->_footerLabel;
      self->_footerLabel = 0;
    }

    [(SUUIGiftFooterLabelTableViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SUUIGiftFooterLabelTableViewCell;
  [(SUUIGiftFooterLabelTableViewCell *)&v8 layoutSubviews];
  contentView = [(SUUIGiftFooterLabelTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  [(UILabel *)self->_footerLabel setFrame:15.0, 6.0, v5 + -30.0, v7 + -6.0];
}

- (void)setBackgroundColor:(id)color
{
  footerLabel = self->_footerLabel;
  colorCopy = color;
  [(UILabel *)footerLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIGiftFooterLabelTableViewCell;
  [(SUUIGiftFooterLabelTableViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_footerLabel sizeThatFits:fits.width + -30.0, 1.79769313e308];
  v5 = v4 + 6.0;
  result.height = v5;
  result.width = v3;
  return result;
}

@end