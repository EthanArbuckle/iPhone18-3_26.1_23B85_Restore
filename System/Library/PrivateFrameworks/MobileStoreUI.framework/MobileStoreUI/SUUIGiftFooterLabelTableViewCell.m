@interface SUUIGiftFooterLabelTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setFooterLabel:(id)a3;
@end

@implementation SUUIGiftFooterLabelTableViewCell

- (void)setFooterLabel:(id)a3
{
  v16 = a3;
  v4 = [(SUUIGiftFooterLabelTableViewCell *)self footerLabel];
  if (v4 != v16 && ([v16 isEqualToString:v4] & 1) == 0)
  {
    footerLabel = self->_footerLabel;
    if (v16)
    {
      if (!footerLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_footerLabel;
        self->_footerLabel = v6;

        v8 = self->_footerLabel;
        v9 = [(SUUIGiftFooterLabelTableViewCell *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_footerLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_footerLabel setNumberOfLines:2];
        [(UILabel *)self->_footerLabel setTextAlignment:1];
        v12 = self->_footerLabel;
        v13 = [MEMORY[0x277D75348] secondaryLabelColor];
        [(UILabel *)v12 setTextColor:v13];

        v14 = [(SUUIGiftFooterLabelTableViewCell *)self contentView];
        [v14 addSubview:self->_footerLabel];

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
  v3 = [(SUUIGiftFooterLabelTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(UILabel *)self->_footerLabel setFrame:15.0, 6.0, v5 + -30.0, v7 + -6.0];
}

- (void)setBackgroundColor:(id)a3
{
  footerLabel = self->_footerLabel;
  v5 = a3;
  [(UILabel *)footerLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIGiftFooterLabelTableViewCell;
  [(SUUIGiftFooterLabelTableViewCell *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_footerLabel sizeThatFits:a3.width + -30.0, 1.79769313e308];
  v5 = v4 + 6.0;
  result.height = v5;
  result.width = v3;
  return result;
}

@end