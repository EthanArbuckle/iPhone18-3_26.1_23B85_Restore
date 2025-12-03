@interface FIUIWorkoutSummaryColoredDetailTableViewCell
+ (double)rowHeightWithNoDataString:(id)string;
- (FIUIWorkoutSummaryColoredDetailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_resizeFontsIfNeededToFitWidth:(double)width;
- (void)_setDefaultValueFontSizes;
- (void)_setupUI;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCustomAccessoryButton:(id)button;
- (void)setDetailString:(id)string suffixString:(id)suffixString textColor:(id)color shouldForceLTRForDetailString:(BOOL)detailString;
- (void)setNoDataString:(id)string textColor:(id)color;
- (void)setSecondMetricTitle:(id)title detailString:(id)string detailColor:(id)color;
- (void)setTitleString:(id)string;
@end

@implementation FIUIWorkoutSummaryColoredDetailTableViewCell

- (void)_setupUI
{
  [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self _setDefaultValueFontSizes];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v8;

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_titleLabel setTextColor:whiteColor];

  [(UILabel *)self->_titleLabel setAllowsDefaultTighteningForTruncation:1];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  v11 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  [(UILabel *)self->_titleLabel setFont:v11];

  v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  detailLabel = self->_detailLabel;
  self->_detailLabel = v12;

  v14 = [[FIUIDividerView alloc] initWithFrame:v4, v5, v6, v7];
  dividerView = self->_dividerView;
  self->_dividerView = &v14->super;

  v16 = objc_alloc_init(MEMORY[0x1E69DD250]);
  optionalButtonView = self->_optionalButtonView;
  self->_optionalButtonView = v16;

  v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.15 alpha:1.0];
  [(UIView *)self->_optionalButtonView setBackgroundColor:v18];

  layer = [(UIView *)self->_optionalButtonView layer];
  [layer setCornerRadius:6.0];

  [(UIView *)self->_optionalButtonView setHidden:1];
  contentView = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
  [contentView addSubview:self->_optionalButtonView];

  contentView2 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
  [contentView2 addSubview:self->_titleLabel];

  contentView3 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
  [contentView3 addSubview:self->_detailLabel];

  contentView4 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
  [contentView4 addSubview:self->_dividerView];
}

- (void)_setDefaultValueFontSizes
{
  v3 = [MEMORY[0x1E69DB878] fu_sausageFontOfSize:25.5];
  detailFont = self->_detailFont;
  self->_detailFont = v3;

  self->_suffixFont = [MEMORY[0x1E69DB878] fu_mediumSausageFontOfSize:18.0];

  MEMORY[0x1EEE66BB8]();
}

- (void)layoutSubviews
{
  contentView = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v59.origin.x = v9;
  memset(&v59.origin.y, 0, 24);
  [(UILabel *)self->_titleLabel sizeThatFits:v9 + 5.5 * -2.0];
  v13 = v12;
  v14 = 17.0 - v12;
  [(UILabel *)self->_titleLabel _baselineOffsetFromBottom];
  v16 = v14 + v15;
  contentView2 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
  v52 = v16;
  v53 = v13;
  [(UILabel *)self->_titleLabel setFrame:FIUIRoundFrameToViewScale(contentView2)];

  customAccessoryButton = self->_customAccessoryButton;
  v51 = v11;
  if (customAccessoryButton)
  {
    [(UIButton *)customAccessoryButton sizeToFit];
    imageView = [(UIButton *)self->_customAccessoryButton imageView];
    [imageView frame];
    v50 = v20;

    [(UIButton *)self->_customAccessoryButton frame];
    v22 = v21;
    imageView2 = [(UIButton *)self->_customAccessoryButton imageView];
    [imageView2 frame];
    v25 = v24;
    imageView3 = [(UIButton *)self->_customAccessoryButton imageView];
    [imageView3 frame];
    v28 = v22 - (v25 + v27);

    [(UIButton *)self->_customAccessoryButton bounds];
    v30 = v29;
    v59.size.width = v31;
    v59.size.height = v29;
    v59.origin.x = v28 + v9 - v31 + -6.0;
    v60.origin.x = v5;
    v60.origin.y = v7;
    v60.size.width = v9;
    v60.size.height = v11;
    v32 = CGRectGetMidY(v60) + v30 * -0.5;
    [(UILabel *)self->_titleLabel frame];
    if (v59.origin.x <= CGRectGetMaxX(v61))
    {
      [(UILabel *)self->_titleLabel frame];
      if (v32 <= CGRectGetMaxY(v62))
      {
        v32 = 21.0 - v50;
      }
    }

    v59.origin.y = v32;
    FIUIFlipFrameRightToLeftIfNeeded(&v59.origin.x, v5, v7, v9, v11);
    [(UIButton *)self->_customAccessoryButton setFrame:v59.origin.x, v59.origin.y, v59.size.width, v59.size.height];
    v33 = v7;
    v34 = v5;
  }

  else
  {
    v33 = v7;
    v34 = v5;
  }

  [(UILabel *)self->_detailLabel sizeThatFits:v9 + 5.5 * -2.0, 1.79769313e308];
  CGRectGetWidth(v59);
  [(UILabel *)self->_detailLabel _baselineOffsetFromBottom];
  contentView3 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
  v55 = FIUIRoundFrameToViewScale(contentView3);
  v56 = v36;
  v57 = v37;
  v58 = v38;

  FIUIFlipFrameRightToLeftIfNeeded(&v55, v34, v33, v9, v51);
  [(UILabel *)self->_detailLabel setFrame:v55, v56, v57, v58];
  [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self _resizeFontsIfNeededToFitWidth:v57];
  noDataLabel = self->_noDataLabel;
  if (noDataLabel)
  {
    [(UILabel *)noDataLabel sizeThatFits:v9 + 5.5 * -2.0, 1.79769313e308];
    v41 = v40;
    v43 = v42;
    [(UILabel *)self->_detailLabel _baselineOffsetFromBottom];
    v54[0] = 5.5;
    v54[1] = v44 + 17.0;
    v54[2] = v41;
    v54[3] = v43;
    FIUIFlipFrameRightToLeftIfNeeded(v54, v34, v33, v9, v51);
    contentView4 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
    [(UILabel *)self->_noDataLabel setFrame:FIUIRoundFrameToViewScale(contentView4)];
  }

  [(UILabel *)self->_secondTitleLabel setFrame:5.5, v52 + 38.25, v9 + 5.5 * -2.0, v53];
  contentView5 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
  [(UILabel *)self->_secondDetailLabel setFrame:FIUIRoundFrameToViewScale(contentView5)];

  [(UIView *)self->_dividerView sizeThatFits:v9 + 5.5 * -2.0, 1.79769313e308];
  v63.origin.x = v34;
  v48 = v47;
  v63.origin.y = v33;
  v63.size.width = v9;
  v63.size.height = v51;
  [(UIView *)self->_dividerView setFrame:5.5, CGRectGetMaxY(v63) - v48, v9 + 5.5 * -2.0, v48];
  if (![(UIView *)self->_optionalButtonView isHidden])
  {
    if (FIUIOnePixel_onceToken != -1)
    {
      [FIUIWorkoutSummaryColoredDetailTableViewCell layoutSubviews];
    }

    v64.origin.x = v34;
    v64.origin.y = v33;
    v64.size.width = v9;
    v64.size.height = v51;
    CGRectInset(v64, 1.0, *&FIUIOnePixel_onePixel * 2.0 + 1.0);
    if (FIUIOnePixel_onceToken != -1)
    {
      [FIUIWorkoutSummaryColoredDetailTableViewCell layoutSubviews];
    }

    contentView6 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
    [(UIView *)self->_optionalButtonView setFrame:FIUIRoundFrameToViewScale(contentView6)];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = FIUIWorkoutSummaryColoredDetailTableViewCell;
  [(FIUIWorkoutSummaryColoredDetailTableViewCell *)&v5 prepareForReuse];
  [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self _setDefaultValueFontSizes];
  self->_shouldForceLTRForDetailString = 0;
  [(UILabel *)self->_secondTitleLabel removeFromSuperview];
  secondTitleLabel = self->_secondTitleLabel;
  self->_secondTitleLabel = 0;

  [(UILabel *)self->_secondDetailLabel removeFromSuperview];
  secondDetailLabel = self->_secondDetailLabel;
  self->_secondDetailLabel = 0;
}

+ (double)rowHeightWithNoDataString:(id)string
{
  if (!string)
  {
    return 49.0;
  }

  stringCopy = string;
  v4 = _NoDataLabel();
  [v4 setText:stringCopy];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v7 = v6;

  [v4 sizeThatFits:{v7 + 5.5 * -2.0, 1.79769313e308}];
  v9 = v8;

  return v9 + 17.0 + 9.0;
}

- (FIUIWorkoutSummaryColoredDetailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = FIUIWorkoutSummaryColoredDetailTableViewCell;
  v4 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(FIUIWorkoutSummaryColoredDetailTableViewCell *)v4 _setupUI];
  }

  return v5;
}

- (void)setCustomAccessoryButton:(id)button
{
  buttonCopy = button;
  superview = [(UIButton *)self->_customAccessoryButton superview];
  contentView = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];

  if (superview == contentView)
  {
    [(UIButton *)self->_customAccessoryButton removeFromSuperview];
  }

  objc_storeStrong(&self->_customAccessoryButton, button);
  if (buttonCopy)
  {
    contentView2 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
    [contentView2 addSubview:self->_customAccessoryButton];

    contentView3 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
    [contentView3 bringSubviewToFront:self->_customAccessoryButton];
  }

  [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self setNeedsLayout];
}

- (void)setTitleString:(id)string
{
  localizedUppercaseString = [string localizedUppercaseString];
  [(UILabel *)self->_titleLabel setText:localizedUppercaseString];
}

- (void)_resizeFontsIfNeededToFitWidth:(double)width
{
  fontDescriptor = [(UIFont *)self->_detailFont fontDescriptor];
  fontDescriptor2 = [(UIFont *)self->_suffixFont fontDescriptor];
  if (width > 0.0)
  {
    attributedText = [(UILabel *)self->_detailLabel attributedText];
    [attributedText size];
    if (v7 <= width)
    {
LABEL_5:
    }

    else
    {
      while (1)
      {
        [(UIFont *)self->_detailFont pointSize];
        v9 = v8;

        if (v9 < 15.0)
        {
          break;
        }

        v10 = MEMORY[0x1E69DB878];
        [(UIFont *)self->_detailFont pointSize];
        v12 = [v10 fontWithDescriptor:fontDescriptor size:v11 * 0.9];
        detailFont = self->_detailFont;
        self->_detailFont = v12;

        v14 = MEMORY[0x1E69DB878];
        [(UIFont *)self->_suffixFont pointSize];
        v16 = [v14 fontWithDescriptor:fontDescriptor2 size:v15 * 0.9];
        suffixFont = self->_suffixFont;
        self->_suffixFont = v16;

        IsRightToLeft = FIUILocaleIsRightToLeft();
        v19 = NLSessionFormatDetailLabel(self->_detailString, self->_suffixString, self->_detailFont, self->_suffixFont, self->_textColor, IsRightToLeft, self->_shouldForceLTRForDetailString);
        [(UILabel *)self->_detailLabel setAttributedText:v19];

        attributedText = [(UILabel *)self->_detailLabel attributedText];
        [attributedText size];
        if (v20 <= width)
        {
          goto LABEL_5;
        }
      }
    }
  }
}

- (void)setDetailString:(id)string suffixString:(id)suffixString textColor:(id)color shouldForceLTRForDetailString:(BOOL)detailString
{
  colorCopy = color;
  self->_shouldForceLTRForDetailString = detailString;
  if (string)
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = &stru_1F5F88F90;
  }

  v12 = stringCopy;
  suffixStringCopy = suffixString;
  v14 = suffixStringCopy;
  if (suffixStringCopy)
  {
    v15 = suffixStringCopy;
  }

  else
  {
    v15 = &stru_1F5F88F90;
  }

  v16 = v15;

  localizedUppercaseString = [(__CFString *)v12 localizedUppercaseString];

  localizedUppercaseString2 = [(__CFString *)v16 localizedUppercaseString];

  detailString = self->_detailString;
  self->_detailString = localizedUppercaseString;
  v20 = localizedUppercaseString;

  suffixString = self->_suffixString;
  self->_suffixString = localizedUppercaseString2;
  v22 = localizedUppercaseString2;

  textColor = self->_textColor;
  self->_textColor = colorCopy;
  v24 = colorCopy;

  IsRightToLeft = FIUILocaleIsRightToLeft();
  v26 = NLSessionFormatDetailLabel(self->_detailString, self->_suffixString, self->_detailFont, self->_suffixFont, self->_textColor, IsRightToLeft, self->_shouldForceLTRForDetailString);
  [(UILabel *)self->_detailLabel setAttributedText:v26];
}

- (void)setSecondMetricTitle:(id)title detailString:(id)string detailColor:(id)color
{
  titleCopy = title;
  stringCopy = string;
  colorCopy = color;
  v10 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  secondTitleLabel = self->_secondTitleLabel;
  if (!secondTitleLabel)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v13 = self->_secondTitleLabel;
    self->_secondTitleLabel = v12;

    [(UILabel *)self->_secondTitleLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)self->_secondTitleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_secondTitleLabel setFont:v10];
    v14 = self->_secondTitleLabel;
    systemGrayTextColor = [MEMORY[0x1E6989B18] systemGrayTextColor];
    [(UILabel *)v14 setTextColor:systemGrayTextColor];

    contentView = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
    [contentView addSubview:self->_secondTitleLabel];

    secondTitleLabel = self->_secondTitleLabel;
  }

  localizedUppercaseString = [titleCopy localizedUppercaseString];
  [(UILabel *)secondTitleLabel setText:localizedUppercaseString];

  secondDetailLabel = self->_secondDetailLabel;
  if (!secondDetailLabel)
  {
    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v20 = self->_secondDetailLabel;
    self->_secondDetailLabel = v19;

    [(UILabel *)self->_secondDetailLabel setFont:v10];
    [(UILabel *)self->_secondDetailLabel setTextColor:colorCopy];
    contentView2 = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
    [contentView2 addSubview:self->_secondDetailLabel];

    secondDetailLabel = self->_secondDetailLabel;
  }

  localizedUppercaseString2 = [stringCopy localizedUppercaseString];
  [(UILabel *)secondDetailLabel setText:localizedUppercaseString2];
}

- (void)setNoDataString:(id)string textColor:(id)color
{
  stringCopy = string;
  colorCopy = color;
  if (stringCopy && (v7 = [stringCopy length], v8 = stringCopy, v7))
  {
    noDataLabel = self->_noDataLabel;
    if (!noDataLabel)
    {
      v10 = _NoDataLabel();
      v11 = self->_noDataLabel;
      self->_noDataLabel = v10;

      contentView = [(FIUIWorkoutSummaryColoredDetailTableViewCell *)self contentView];
      [contentView addSubview:self->_noDataLabel];

      v8 = stringCopy;
      noDataLabel = self->_noDataLabel;
    }

    [(UILabel *)noDataLabel setText:v8];
    [(UILabel *)self->_noDataLabel setTextColor:colorCopy];
  }

  else
  {
    [(UILabel *)self->_noDataLabel removeFromSuperview];
    v13 = self->_noDataLabel;
    self->_noDataLabel = 0;
  }
}

@end