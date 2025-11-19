@interface WDDataTableViewCell
- (CGRect)detailTextLabelFrame;
- (CGRect)imageViewFrame;
- (CGRect)textLabelFrame;
- (UIFont)bodyFont;
- (WDDataTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDateString:(id)a3;
- (void)setDisplayValue:(id)a3;
@end

@implementation WDDataTableViewCell

- (WDDataTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v19.receiver = self;
  v19.super_class = WDDataTableViewCell;
  v4 = [(WDDataTableViewCell *)&v19 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v4->_imageView;
    v4->_imageView = v5;

    [(UIImageView *)v4->_imageView setContentMode:1];
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v4->_textLabel;
    v4->_textLabel = v7;

    [(UILabel *)v4->_textLabel setTextAlignment:4];
    v9 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_textLabel setTextColor:v9];

    [(UILabel *)v4->_textLabel setAdjustsFontSizeToFitWidth:1];
    v10 = 2 * ([(WDDataTableViewCell *)v4 effectiveUserInterfaceLayoutDirection]== 0);
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailTextLabel = v4->_detailTextLabel;
    v4->_detailTextLabel = v11;

    [(UILabel *)v4->_detailTextLabel setTextAlignment:v10];
    v13 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_detailTextLabel setTextColor:v13];

    [(UILabel *)v4->_detailTextLabel setNumberOfLines:0];
    [(UILabel *)v4->_detailTextLabel setAdjustsFontSizeToFitWidth:1];
    v14 = [(WDDataTableViewCell *)v4 contentView];
    [v14 addSubview:v4->_imageView];

    [(WDDataTableViewCell *)v4 imageViewFrame];
    [(UIImageView *)v4->_imageView setFrame:?];
    v15 = [(WDDataTableViewCell *)v4 contentView];
    [v15 addSubview:v4->_textLabel];

    [(WDDataTableViewCell *)v4 textLabelFrame];
    [(UILabel *)v4->_textLabel setFrame:?];
    v16 = [(WDDataTableViewCell *)v4 contentView];
    [v16 addSubview:v4->_detailTextLabel];

    [(WDDataTableViewCell *)v4 detailTextLabelFrame];
    [(UILabel *)v4->_detailTextLabel setFrame:?];
    [(WDDataTableViewCell *)v4 _contentSizeCategoryDidChange:0];
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v4 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = WDDataTableViewCell;
  [(WDDataTableViewCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WDDataTableViewCell;
  [(WDDataTableViewCell *)&v3 layoutSubviews];
  [(WDDataTableViewCell *)self imageViewFrame];
  [(UIImageView *)self->_imageView setFrame:?];
  [(WDDataTableViewCell *)self detailTextLabelFrame];
  [(UILabel *)self->_detailTextLabel setFrame:?];
  [(WDDataTableViewCell *)self textLabelFrame];
  [(UILabel *)self->_textLabel setFrame:?];
}

- (UIFont)bodyFont
{
  bodyFont = self->_bodyFont;
  if (!bodyFont)
  {
    v4 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v5 = self->_bodyFont;
    self->_bodyFont = v4;

    bodyFont = self->_bodyFont;
  }

  return bodyFont;
}

- (CGRect)imageViewFrame
{
  v3 = [(WDDataTableViewCell *)self imageView];
  v4 = [v3 image];

  if (v4)
  {
    if ([(WDDataTableViewCell *)self effectiveUserInterfaceLayoutDirection])
    {
      v5 = [(WDDataTableViewCell *)self contentView];
      [v5 bounds];
      v7 = v6 + -24.0 + -16.0;

      v8 = [(WDDataTableViewCell *)self contentView];
      [v8 bounds];
      v10 = round((v9 + -24.0) * 0.5);

      v11 = 24.0;
    }

    else
    {
      [(WDDataTableViewCell *)self bounds];
      v10 = round((v13 + -24.0) * 0.5);
      v11 = 24.0;
      v7 = 16.0;
    }

    v12 = 24.0;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v14 = v7;
  v15 = v10;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)textLabelFrame
{
  v3 = [(WDDataTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;

  if ([(WDDataTableViewCell *)self effectiveUserInterfaceLayoutDirection])
  {
    [(WDDataTableViewCell *)self detailTextLabelFrame];
    v6 = CGRectGetMaxX(v20) + 8.0;
    [(WDDataTableViewCell *)self imageViewFrame];
    if (CGRectIsEmpty(v21))
    {
      v7 = [(WDDataTableViewCell *)self contentView];
      [v7 bounds];
      MinX = v8;
    }

    else
    {
      [(WDDataTableViewCell *)self imageViewFrame];
      MinX = CGRectGetMinX(v24);
    }

    v14 = MinX - v6;
    v15 = -16.0;
  }

  else
  {
    [(WDDataTableViewCell *)self imageViewFrame];
    MaxX = CGRectGetMaxX(v22);
    v11 = [(WDDataTableViewCell *)self imageView];
    v12 = [v11 image];

    v13 = 8.0;
    if (!v12)
    {
      v13 = 16.0;
    }

    v6 = MaxX + v13;
    [(WDDataTableViewCell *)self detailTextLabelFrame];
    v14 = CGRectGetMinX(v23) - v6;
    v15 = -8.0;
  }

  v16 = v14 + v15;
  v17 = v5 + -8.0;
  v18 = 4.0;
  v19 = v6;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v18;
  result.origin.x = v19;
  return result;
}

- (CGRect)detailTextLabelFrame
{
  v3 = [(WDDataTableViewCell *)self textLabel];
  v4 = [(WDDataTableViewCell *)self contentView];
  [v4 bounds];
  [v3 sizeThatFits:{0.0, v5}];
  v7 = v6;

  v8 = [(WDDataTableViewCell *)self detailTextLabel];
  v9 = [(WDDataTableViewCell *)self contentView];
  [v9 bounds];
  [v8 sizeThatFits:{0.0, v10}];
  v12 = v11;

  v13 = [(WDDataTableViewCell *)self contentView];
  [v13 bounds];
  v15 = v14 + -32.0;
  [(WDDataTableViewCell *)self imageViewFrame];
  v17 = v15 - v16 + -8.0 + -4.0;

  v18 = v7 + v12;
  if (v7 + v12 > v17)
  {
    v19 = v17 - v7;
    v20 = [(WDDataTableViewCell *)self contentView];
    [v20 bounds];
    v22 = v21 / 3.0;
    v23 = [(WDDataTableViewCell *)self contentView];
    [v23 bounds];
    v25 = v24;

    v26 = [(WDDataTableViewCell *)self detailTextLabel];
    [v26 sizeThatFits:{v22, v25}];
    v12 = v27;

    if (v12 < v19)
    {
      v12 = v19;
    }
  }

  v28 = [(WDDataTableViewCell *)self contentView];
  [v28 bounds];
  v30 = v29;

  v31 = 16.0;
  if (![(WDDataTableViewCell *)self effectiveUserInterfaceLayoutDirection])
  {
    v32 = [(WDDataTableViewCell *)self contentView];
    [v32 bounds];
    v31 = v33 - v12 + -16.0;
  }

  v34 = v30 + -8.0;
  v35 = v31;
  v36 = 4.0;
  v37 = v12;
  result.size.height = v34;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (void)setDisplayValue:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  displayValue = self->_displayValue;
  self->_displayValue = v5;

  v7 = [(WDDataTableViewCell *)self textLabel];
  [v7 setText:v4];

  [(WDDataTableViewCell *)self setNeedsLayout];
}

- (void)setDateString:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  dateString = self->_dateString;
  self->_dateString = v5;

  v7 = [(WDDataTableViewCell *)self detailTextLabel];
  [v7 setText:v4];

  [(WDDataTableViewCell *)self setNeedsLayout];
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  bodyFont = self->_bodyFont;
  self->_bodyFont = 0;

  v5 = [(WDDataTableViewCell *)self bodyFont];
  v6 = [(WDDataTableViewCell *)self textLabel];
  [v6 setFont:v5];

  v7 = [(WDDataTableViewCell *)self bodyFont];
  v8 = [(WDDataTableViewCell *)self detailTextLabel];
  [v8 setFont:v7];

  [(WDDataTableViewCell *)self setNeedsLayout];
}

@end