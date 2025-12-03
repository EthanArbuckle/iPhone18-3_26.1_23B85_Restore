@interface SUUIGiftTextFieldTableViewCell
- (SUUIGiftTextFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setKeyboardType:(int64_t)type;
- (void)setLabel:(id)label;
@end

@implementation SUUIGiftTextFieldTableViewCell

- (SUUIGiftTextFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v21.receiver = self;
  v21.super_class = SUUIGiftTextFieldTableViewCell;
  v4 = [(SUUIGiftTextFieldTableViewCell *)&v21 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(SUUIGiftTextFieldTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x277D75BB8]);
    textField = v5->_textField;
    v5->_textField = v7;

    v9 = v5->_textField;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UITextField *)v9 setBackgroundColor:systemBackgroundColor];

    v11 = v5->_textField;
    v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [(UITextField *)v11 setFont:v12];

    v13 = v5->_textField;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UITextField *)v13 setTextColor:labelColor];

    [(UITextField *)v5->_textField sizeToFit];
    [contentView addSubview:v5->_textField];
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v5->_topBorderView;
    v5->_topBorderView = v15;

    v17 = v5->_topBorderView;
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v17 setBackgroundColor:separatorColor];

    [contentView addSubview:v5->_topBorderView];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v5->_leftToRight = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 0;
  }

  return v5;
}

- (void)setEnabled:(BOOL)enabled
{
  [(UITextField *)self->_textField setEnabled:?];
  textField = self->_textField;
  labelColor = [MEMORY[0x277D75348] labelColor];
  v8 = labelColor;
  if (enabled)
  {
    [(UITextField *)textField setTextColor:labelColor];
  }

  else
  {
    v7 = [labelColor colorWithAlphaComponent:0.3];
    [(UITextField *)textField setTextColor:v7];
  }
}

- (void)setKeyboardType:(int64_t)type
{
  [(UITextField *)self->_textField setAutocapitalizationType:type != 7];
  textField = self->_textField;

  [(UITextField *)textField setKeyboardType:type];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  label = [(SUUIGiftTextFieldTableViewCell *)self label];
  if (label != labelCopy && ([labelCopy isEqualToString:label] & 1) == 0)
  {
    label = self->_label;
    if (labelCopy)
    {
      if (!label)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_label;
        self->_label = v6;

        v8 = self->_label;
        systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
        [(UILabel *)v8 setBackgroundColor:systemBackgroundColor];

        v10 = self->_label;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_label;
        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        [(UILabel *)v12 setTextColor:secondaryLabelColor];

        contentView = [(SUUIGiftTextFieldTableViewCell *)self contentView];
        [contentView addSubview:self->_label];

        label = self->_label;
      }

      [(UILabel *)label setText:?];
      [(UILabel *)self->_label sizeToFit];
    }

    else
    {
      [(UILabel *)label removeFromSuperview];
      v15 = self->_label;
      self->_label = 0;
    }

    [(SUUIGiftTextFieldTableViewCell *)self setNeedsLayout];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SUUIGiftTextFieldTableViewCell;
  v5 = [(SUUIGiftTextFieldTableViewCell *)&v8 hitTest:event withEvent:test.x, test.y];
  if ([v5 isDescendantOfView:self])
  {
    v6 = self->_textField;

    v5 = v6;
  }

  return v5;
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = SUUIGiftTextFieldTableViewCell;
  [(SUUIGiftTextFieldTableViewCell *)&v43 layoutSubviews];
  contentView = [(SUUIGiftTextFieldTableViewCell *)self contentView];
  [contentView bounds];
  v39 = v5;
  v41 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v7 + -15.0;
  label = self->_label;
  if (label)
  {
    [(UILabel *)label frame];
    width = v44.size.width;
    height = v44.size.height;
    v14 = 15.0;
    v44.origin.x = 15.0;
    MaxX = CGRectGetMaxX(v44);
    v16 = (v9 - height) * 0.5;
    v17 = floorf(v16);
    [(UILabel *)self->_label setFrame:15.0, v17, width, height];
    leftToRight = [(SUUIGiftTextFieldTableViewCell *)self leftToRight];
    v19 = self->_label;
    if (!leftToRight)
    {
      [SUUICGRectHelpers rect:15.0 withFlippedOriginXRelativeTo:v17, width, height, v41, v39, v7, v9];
      v14 = v20;
      v17 = v21;
      width = v22;
      height = v23;
    }

    v24 = MaxX + 5.0;
    [(UILabel *)v19 setFrame:v14, v17, width, height, *&v39, *&v41];
  }

  else
  {
    v24 = 15.0;
  }

  [(UITextField *)self->_textField frame:*&v39];
  v26 = v25;
  v27 = v10 - v24;
  v28 = (v9 - v25) * 0.5;
  v29 = floorf(v28);
  leftToRight2 = [(SUUIGiftTextFieldTableViewCell *)self leftToRight];
  textField = self->_textField;
  if (!leftToRight2)
  {
    [SUUICGRectHelpers rect:v24 withFlippedOriginXRelativeTo:v29, v10 - v24, v26, v42, v40, v7, v9];
    v24 = v32;
    v29 = v33;
    v27 = v34;
    v26 = v35;
  }

  [(UITextField *)textField setFrame:v24, v29, v27, v26];
  topBorderView = self->_topBorderView;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [(UIView *)topBorderView setFrame:15.0, 0.0, v7 + -15.0, 1.0 / v38];
}

@end