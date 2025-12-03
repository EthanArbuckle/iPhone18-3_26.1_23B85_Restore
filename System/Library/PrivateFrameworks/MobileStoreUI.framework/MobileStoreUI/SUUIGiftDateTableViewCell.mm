@interface SUUIGiftDateTableViewCell
- (SUUIGiftDateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SUUIGiftDateTableViewCellDelegate)delegate;
- (id)_labelColor;
- (id)_labelForDate:(id)date;
- (id)_newLabel;
- (void)_datePickerDateDidChange;
- (void)_datePickerEditingDidBegin;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)checked;
- (void)setDate:(id)date;
- (void)setLabel:(id)label;
- (void)setPlaceholder:(id)placeholder;
@end

@implementation SUUIGiftDateTableViewCell

- (SUUIGiftDateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v23.receiver = self;
  v23.super_class = SUUIGiftDateTableViewCell;
  v4 = [(SUUIGiftDateTableViewCell *)&v23 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomBorderView = v4->_bottomBorderView;
    v4->_bottomBorderView = v5;

    v7 = v4->_bottomBorderView;
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v7 setBackgroundColor:separatorColor];

    contentView = [(SUUIGiftDateTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_bottomBorderView];

    v10 = objc_alloc_init(MEMORY[0x277D753E8]);
    datePicker = v4->_datePicker;
    v4->_datePicker = v10;

    [(UIDatePicker *)v4->_datePicker setDatePickerMode:1];
    [(UIDatePicker *)v4->_datePicker setPreferredDatePickerStyle:2];
    v12 = v4->_datePicker;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UIDatePicker *)v12 setTintColor:systemBlueColor];

    v14 = *MEMORY[0x277D76840];
    [(UIDatePicker *)v4->_datePicker setMaximumContentSizeCategory:*MEMORY[0x277D76840]];
    [(UIDatePicker *)v4->_datePicker setMinimumContentSizeCategory:v14];
    [(UIDatePicker *)v4->_datePicker addTarget:v4 action:sel__datePickerDateDidChange forControlEvents:4096];
    [(UIDatePicker *)v4->_datePicker addTarget:v4 action:sel__datePickerEditingDidBegin forControlEvents:0x10000];
    v15 = [MEMORY[0x277CBEAA8] now];
    [(UIDatePicker *)v4->_datePicker setMinimumDate:v15];
    [(UIDatePicker *)v4->_datePicker setDate:v15];
    v16 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v4->_topBorderView;
    v4->_topBorderView = v16;

    v18 = v4->_topBorderView;
    separatorColor2 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v18 setBackgroundColor:separatorColor2];

    contentView2 = [(SUUIGiftDateTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_topBorderView];

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v4->_leftToRight = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 0;
  }

  return v4;
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked == checked)
  {
    return;
  }

  v21 = v7;
  v22 = v6;
  v23 = v5;
  v24 = v4;
  v25 = v3;
  self->_checked = checked;
  checkmarkView = self->_checkmarkView;
  if (!checked)
  {
    [(UIImageView *)checkmarkView removeFromSuperview];
    v13 = self->_checkmarkView;
    self->_checkmarkView = 0;
    goto LABEL_6;
  }

  if (!checkmarkView)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [MEMORY[0x277D755B8] imageNamed:@"GiftCheckmark" inBundle:v13];
    tintColor = [(SUUIGiftDateTableViewCell *)self tintColor];
    v16 = [v14 _flatImageWithColor:tintColor];

    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v16 highlightedImage:0];
    v18 = self->_checkmarkView;
    self->_checkmarkView = v17;

    [(SUUIGiftDateTableViewCell *)self addSubview:self->_checkmarkView];
LABEL_6:
  }

  labelLabel = self->_labelLabel;
  v20 = [(SUUIGiftDateTableViewCell *)self _labelColor:v8];
  [(UILabel *)labelLabel setTextColor:v20];

  [(SUUIGiftDateTableViewCell *)self setNeedsLayout];
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = [(SUUIGiftDateTableViewCell *)self date];
  v5 = dateCopy;
  v6 = date;
  if (date != dateCopy)
  {
    v7 = [date isEqualToDate:dateCopy];
    v5 = dateCopy;
    if ((v7 & 1) == 0)
    {
      if (dateCopy)
      {
        contentView = [(SUUIGiftDateTableViewCell *)self contentView];
        [contentView addSubview:self->_datePicker];

        [(UIDatePicker *)self->_datePicker setDate:dateCopy];
        [(UIDatePicker *)self->_datePicker sizeToFit];
      }

      else
      {
        [(UIDatePicker *)self->_datePicker removeFromSuperview];
      }

      [(SUUIGiftDateTableViewCell *)self setNeedsLayout];
      v5 = dateCopy;
    }
  }

  v9 = [(SUUIGiftDateTableViewCell *)self _labelForDate:v5];
  [(SUUIGiftDateTableViewCell *)self setLabel:v9];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  label = [(SUUIGiftDateTableViewCell *)self label];
  if (label != labelCopy && ([label isEqualToString:labelCopy] & 1) == 0)
  {
    labelLabel = self->_labelLabel;
    if (labelCopy)
    {
      if (!labelLabel)
      {
        _newLabel = [(SUUIGiftDateTableViewCell *)self _newLabel];
        v7 = self->_labelLabel;
        self->_labelLabel = _newLabel;

        contentView = [(SUUIGiftDateTableViewCell *)self contentView];
        [contentView addSubview:self->_labelLabel];

        labelLabel = self->_labelLabel;
      }

      [(UILabel *)labelLabel setText:?];
      [(UILabel *)self->_labelLabel sizeToFit];
    }

    else
    {
      [(UILabel *)labelLabel removeFromSuperview];
      v9 = self->_labelLabel;
      self->_labelLabel = 0;
    }

    [(SUUIGiftDateTableViewCell *)self setNeedsLayout];
  }
}

- (void)setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  label = [(SUUIGiftDateTableViewCell *)self label];
  if (label != placeholderCopy && ([label isEqualToString:placeholderCopy] & 1) == 0)
  {
    placeholderLabel = self->_placeholderLabel;
    if (placeholderCopy)
    {
      if (!placeholderLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_placeholderLabel;
        self->_placeholderLabel = v6;

        v8 = self->_placeholderLabel;
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:clearColor];

        v10 = self->_placeholderLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_placeholderLabel setNumberOfLines:2];
        v12 = self->_placeholderLabel;
        placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
        [(UILabel *)v12 setTextColor:placeholderTextColor];

        contentView = [(SUUIGiftDateTableViewCell *)self contentView];
        [contentView addSubview:self->_placeholderLabel];

        placeholderLabel = self->_placeholderLabel;
      }

      [(UILabel *)placeholderLabel setText:?];
      [(UILabel *)self->_placeholderLabel sizeToFit];
    }

    else
    {
      [(UILabel *)placeholderLabel removeFromSuperview];
      v15 = self->_placeholderLabel;
      self->_placeholderLabel = 0;
    }

    [(SUUIGiftDateTableViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v70.receiver = self;
  v70.super_class = SUUIGiftDateTableViewCell;
  [(SUUIGiftDateTableViewCell *)&v70 layoutSubviews];
  contentView = [(SUUIGiftDateTableViewCell *)self contentView];
  [contentView bounds];
  v69 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v8 + -15.0;
  checkmarkView = self->_checkmarkView;
  if (checkmarkView)
  {
    [(UIImageView *)checkmarkView frame];
    v14 = v13;
    v16 = v15;
    v17 = v11 - v13;
    v18 = (v10 - v15) * 0.5;
    v19 = floorf(v18);
    [(UIImageView *)self->_checkmarkView setFrame:v11 - v13, v19];
    leftToRight = [(SUUIGiftDateTableViewCell *)self leftToRight];
    v21 = self->_checkmarkView;
    if (leftToRight)
    {
      v22 = v17;
    }

    else
    {
      [SUUICGRectHelpers rect:v17 withFlippedOriginXRelativeTo:v19, v14, v16, v69, v6, v8, v10];
      v19 = v23;
      v14 = v24;
      v16 = v25;
    }

    v11 = v17 + -7.0;
    [(UIImageView *)v21 setFrame:v22, v19, v14, v16];
  }

  labelLabel = self->_labelLabel;
  if (labelLabel)
  {
    v68 = v8;
    v27 = v6;
    [(UILabel *)labelLabel frame];
    width = v71.size.width;
    height = v71.size.height;
    v30 = 15.0;
    v71.origin.x = 15.0;
    MaxX = CGRectGetMaxX(v71);
    v32 = (v10 - height) * 0.5;
    v33 = floorf(v32);
    [(UILabel *)self->_labelLabel setFrame:15.0, v33, width, height];
    leftToRight2 = [(SUUIGiftDateTableViewCell *)self leftToRight];
    v35 = self->_labelLabel;
    if (!leftToRight2)
    {
      [SUUICGRectHelpers rect:15.0 withFlippedOriginXRelativeTo:v33, width, height, v69, v27, v68, v10];
      v30 = v36;
      v33 = v37;
      width = v38;
      height = v39;
    }

    v40 = MaxX + 7.0;
    [(UILabel *)v35 setFrame:v30, v33, width, height];
    v6 = v27;
    v8 = v68;
  }

  else
  {
    v40 = 15.0;
  }

  datePicker = self->_datePicker;
  if (datePicker)
  {
    [(UIDatePicker *)datePicker frame];
    v43 = v42;
    v45 = v44;
    v46 = v11 - v42;
    v47 = (v10 - v44) * 0.5;
    v48 = floorf(v47);
    [(UILabel *)self->_placeholderLabel setHidden:1];
    leftToRight3 = [(SUUIGiftDateTableViewCell *)self leftToRight];
    v50 = self->_datePicker;
    if (leftToRight3)
    {
      v51 = self->_datePicker;
      v52 = v46;
      v53 = v48;
      v54 = v43;
LABEL_17:
      v61 = v45;
LABEL_21:
      [v51 setFrame:{v52, v53, v54, v61}];
      goto LABEL_22;
    }

    v62 = v46;
    v63 = v48;
    v64 = v43;
    goto LABEL_20;
  }

  placeholderLabel = self->_placeholderLabel;
  if (placeholderLabel)
  {
    [(UILabel *)placeholderLabel frame];
    [(UILabel *)self->_placeholderLabel sizeThatFits:v11 - v40, 1.79769313e308];
    v57 = v56;
    v45 = v58;
    *&v56 = (v10 - v58) * 0.5;
    v59 = floorf(*&v56);
    [(UILabel *)self->_placeholderLabel setHidden:0];
    [(UILabel *)self->_placeholderLabel setFrame:v40, v59, v57, v45];
    leftToRight4 = [(SUUIGiftDateTableViewCell *)self leftToRight];
    v50 = self->_placeholderLabel;
    if (leftToRight4)
    {
      v51 = self->_placeholderLabel;
      v52 = v40;
      v53 = v59;
      v54 = v57;
      goto LABEL_17;
    }

    v62 = v40;
    v63 = v59;
    v64 = v57;
LABEL_20:
    [SUUICGRectHelpers rect:v62 withFlippedOriginXRelativeTo:v63, v64, v45, v69, v6, v8, v10];
    v51 = v50;
    goto LABEL_21;
  }

LABEL_22:
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v67 = 1.0 / v66;

  [(UIView *)self->_topBorderView setFrame:0.0, 0.0, v8, v67];
  [(UIView *)self->_bottomBorderView setFrame:0.0, v10 - v67, v8, v67];
}

- (void)_datePickerDateDidChange
{
  date = [(UIDatePicker *)self->_datePicker date];
  v3 = [(SUUIGiftDateTableViewCell *)self _labelForDate:date];
  [(SUUIGiftDateTableViewCell *)self setLabel:v3];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained giftDateTableViewCell:self didChangeDate:date];
}

- (void)_datePickerEditingDidBegin
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__SUUIGiftDateTableViewCell__datePickerEditingDidBegin__block_invoke;
  v2[3] = &unk_2798F5BE8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __55__SUUIGiftDateTableViewCell__datePickerEditingDidBegin__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) window];
  [v1 endEditing:1];
}

- (id)_labelColor
{
  if (self->_checked)
  {
    [(SUUIGiftDateTableViewCell *)self tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v2 = ;

  return v2;
}

- (id)_labelForDate:(id)date
{
  dateCopy = date;
  giftConfiguration = [(SUUIGiftDateTableViewCell *)self giftConfiguration];
  clientContext = [giftConfiguration clientContext];

  calendar = [(UIDatePicker *)self->_datePicker calendar];
  LODWORD(giftConfiguration) = [calendar isDateInToday:dateCopy];

  if (giftConfiguration)
  {
    if (clientContext)
    {
      v8 = @"GIFTING_FIELD_LABEL_TODAY";
LABEL_6:
      v9 = [clientContext localizedStringForKey:v8 inTable:@"Gifting"];
      goto LABEL_10;
    }

    v10 = @"GIFTING_FIELD_LABEL_TODAY";
  }

  else
  {
    if (clientContext)
    {
      v8 = @"GIFTING_FIELD_LABEL_OTHER_DATE";
      goto LABEL_6;
    }

    v10 = @"GIFTING_FIELD_LABEL_OTHER_DATE";
  }

  v9 = [SUUIClientContext localizedStringForKey:v10 inBundles:0 inTable:@"Gifting"];
LABEL_10:
  v11 = v9;

  return v11;
}

- (id)_newLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  v5 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  [v3 setFont:v5];

  _labelColor = [(SUUIGiftDateTableViewCell *)self _labelColor];
  [v3 setTextColor:_labelColor];

  return v3;
}

- (SUUIGiftDateTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end