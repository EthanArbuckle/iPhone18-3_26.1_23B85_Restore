@interface WDDataTableViewCell
- (CGRect)detailTextLabelFrame;
- (CGRect)imageViewFrame;
- (CGRect)textLabelFrame;
- (UIFont)bodyFont;
- (WDDataTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDateString:(id)string;
- (void)setDisplayValue:(id)value;
@end

@implementation WDDataTableViewCell

- (WDDataTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = WDDataTableViewCell;
  v4 = [(WDDataTableViewCell *)&v19 initWithStyle:style reuseIdentifier:identifier];
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
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_textLabel setTextColor:labelColor];

    [(UILabel *)v4->_textLabel setAdjustsFontSizeToFitWidth:1];
    v10 = 2 * ([(WDDataTableViewCell *)v4 effectiveUserInterfaceLayoutDirection]== 0);
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailTextLabel = v4->_detailTextLabel;
    v4->_detailTextLabel = v11;

    [(UILabel *)v4->_detailTextLabel setTextAlignment:v10];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_detailTextLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_detailTextLabel setNumberOfLines:0];
    [(UILabel *)v4->_detailTextLabel setAdjustsFontSizeToFitWidth:1];
    contentView = [(WDDataTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_imageView];

    [(WDDataTableViewCell *)v4 imageViewFrame];
    [(UIImageView *)v4->_imageView setFrame:?];
    contentView2 = [(WDDataTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_textLabel];

    [(WDDataTableViewCell *)v4 textLabelFrame];
    [(UILabel *)v4->_textLabel setFrame:?];
    contentView3 = [(WDDataTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_detailTextLabel];

    [(WDDataTableViewCell *)v4 detailTextLabelFrame];
    [(UILabel *)v4->_detailTextLabel setFrame:?];
    [(WDDataTableViewCell *)v4 _contentSizeCategoryDidChange:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

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
  imageView = [(WDDataTableViewCell *)self imageView];
  image = [imageView image];

  if (image)
  {
    if ([(WDDataTableViewCell *)self effectiveUserInterfaceLayoutDirection])
    {
      contentView = [(WDDataTableViewCell *)self contentView];
      [contentView bounds];
      v7 = v6 + -24.0 + -16.0;

      contentView2 = [(WDDataTableViewCell *)self contentView];
      [contentView2 bounds];
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
  contentView = [(WDDataTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;

  if ([(WDDataTableViewCell *)self effectiveUserInterfaceLayoutDirection])
  {
    [(WDDataTableViewCell *)self detailTextLabelFrame];
    v6 = CGRectGetMaxX(v20) + 8.0;
    [(WDDataTableViewCell *)self imageViewFrame];
    if (CGRectIsEmpty(v21))
    {
      contentView2 = [(WDDataTableViewCell *)self contentView];
      [contentView2 bounds];
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
    imageView = [(WDDataTableViewCell *)self imageView];
    image = [imageView image];

    v13 = 8.0;
    if (!image)
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
  textLabel = [(WDDataTableViewCell *)self textLabel];
  contentView = [(WDDataTableViewCell *)self contentView];
  [contentView bounds];
  [textLabel sizeThatFits:{0.0, v5}];
  v7 = v6;

  detailTextLabel = [(WDDataTableViewCell *)self detailTextLabel];
  contentView2 = [(WDDataTableViewCell *)self contentView];
  [contentView2 bounds];
  [detailTextLabel sizeThatFits:{0.0, v10}];
  v12 = v11;

  contentView3 = [(WDDataTableViewCell *)self contentView];
  [contentView3 bounds];
  v15 = v14 + -32.0;
  [(WDDataTableViewCell *)self imageViewFrame];
  v17 = v15 - v16 + -8.0 + -4.0;

  v18 = v7 + v12;
  if (v7 + v12 > v17)
  {
    v19 = v17 - v7;
    contentView4 = [(WDDataTableViewCell *)self contentView];
    [contentView4 bounds];
    v22 = v21 / 3.0;
    contentView5 = [(WDDataTableViewCell *)self contentView];
    [contentView5 bounds];
    v25 = v24;

    detailTextLabel2 = [(WDDataTableViewCell *)self detailTextLabel];
    [detailTextLabel2 sizeThatFits:{v22, v25}];
    v12 = v27;

    if (v12 < v19)
    {
      v12 = v19;
    }
  }

  contentView6 = [(WDDataTableViewCell *)self contentView];
  [contentView6 bounds];
  v30 = v29;

  v31 = 16.0;
  if (![(WDDataTableViewCell *)self effectiveUserInterfaceLayoutDirection])
  {
    contentView7 = [(WDDataTableViewCell *)self contentView];
    [contentView7 bounds];
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

- (void)setDisplayValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy copy];
  displayValue = self->_displayValue;
  self->_displayValue = v5;

  textLabel = [(WDDataTableViewCell *)self textLabel];
  [textLabel setText:valueCopy];

  [(WDDataTableViewCell *)self setNeedsLayout];
}

- (void)setDateString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy copy];
  dateString = self->_dateString;
  self->_dateString = v5;

  detailTextLabel = [(WDDataTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:stringCopy];

  [(WDDataTableViewCell *)self setNeedsLayout];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  bodyFont = self->_bodyFont;
  self->_bodyFont = 0;

  bodyFont = [(WDDataTableViewCell *)self bodyFont];
  textLabel = [(WDDataTableViewCell *)self textLabel];
  [textLabel setFont:bodyFont];

  bodyFont2 = [(WDDataTableViewCell *)self bodyFont];
  detailTextLabel = [(WDDataTableViewCell *)self detailTextLabel];
  [detailTextLabel setFont:bodyFont2];

  [(WDDataTableViewCell *)self setNeedsLayout];
}

@end