@interface SUUIGiftTextTableViewCell
+ (id)newTextView;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (SUUIGiftTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLabel:(id)label;
- (void)setPlaceholder:(id)placeholder;
- (void)setTextView:(id)view;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation SUUIGiftTextTableViewCell

- (SUUIGiftTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = SUUIGiftTextTableViewCell;
  v4 = [(SUUIGiftTextTableViewCell *)&v17 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(SUUIGiftTextTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomBorderView = v5->_bottomBorderView;
    v5->_bottomBorderView = v7;

    v9 = v5->_bottomBorderView;
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v9 setBackgroundColor:separatorColor];

    [contentView addSubview:v5->_bottomBorderView];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v5->_topBorderView;
    v5->_topBorderView = v11;

    v13 = v5->_topBorderView;
    separatorColor2 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v13 setBackgroundColor:separatorColor2];

    [contentView addSubview:v5->_topBorderView];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v5->_leftToRight = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 0;
  }

  return v5;
}

- (void)dealloc
{
  [(UITextView *)self->_textView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIGiftTextTableViewCell;
  [(SUUIGiftTextTableViewCell *)&v3 dealloc];
}

+ (id)newTextView
{
  v2 = objc_alloc_init(MEMORY[0x277D75C40]);
  [v2 setAlwaysBounceVertical:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:clearColor];

  v4 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [v2 setFont:v4];

  return v2;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  label = [(SUUIGiftTextTableViewCell *)self label];
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
        clearColor = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:clearColor];

        v10 = self->_label;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_label;
        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        [(UILabel *)v12 setTextColor:secondaryLabelColor];

        label = self->_label;
      }

      [(UILabel *)label setText:?];
      [(UILabel *)self->_label sizeToFit];
      contentView = [(SUUIGiftTextTableViewCell *)self contentView];
      [contentView addSubview:self->_label];
    }

    else
    {
      [(UILabel *)label removeFromSuperview];
      contentView = self->_label;
      self->_label = 0;
    }

    [(SUUIGiftTextTableViewCell *)self setNeedsLayout];
  }
}

- (void)setPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  placeholder = [(SUUIGiftTextTableViewCell *)self placeholder];
  if (placeholder != placeholderCopy && ([placeholderCopy isEqualToString:placeholder] & 1) == 0)
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

        v12 = self->_placeholderLabel;
        placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
        [(UILabel *)v12 setTextColor:placeholderTextColor];

        placeholderLabel = self->_placeholderLabel;
      }

      [(UILabel *)placeholderLabel setText:?];
      [(UILabel *)self->_placeholderLabel sizeToFit];
      contentView = [(SUUIGiftTextTableViewCell *)self contentView];
      [contentView addSubview:self->_placeholderLabel];
    }

    else
    {
      [(UILabel *)placeholderLabel removeFromSuperview];
      contentView = self->_placeholderLabel;
      self->_placeholderLabel = 0;
    }

    [(SUUIGiftTextTableViewCell *)self setNeedsLayout];
  }
}

- (void)setTextView:(id)view
{
  viewCopy = view;
  textView = self->_textView;
  v13 = viewCopy;
  if (textView != viewCopy)
  {
    if ([(UITextView *)textView isDescendantOfView:self])
    {
      [(UITextView *)self->_textView removeFromSuperview];
    }

    [(UITextView *)self->_textView setDelegate:0];
    objc_storeStrong(&self->_textView, view);
    textView = self->_textView;
  }

  if (textView)
  {
    superview = [(UITextView *)textView superview];
    contentView = [(SUUIGiftTextTableViewCell *)self contentView];

    if (superview != contentView)
    {
      contentView2 = [(SUUIGiftTextTableViewCell *)self contentView];
      [contentView2 insertSubview:self->_textView belowSubview:self->_bottomBorderView];
    }
  }

  delegate = [(UITextView *)self->_textView delegate];

  if (delegate != self)
  {
    [(UITextView *)self->_textView setDelegate:self];
  }

  placeholderLabel = self->_placeholderLabel;
  text = [(UITextView *)self->_textView text];
  -[UILabel setHidden:](placeholderLabel, "setHidden:", [text length] != 0);
}

- (void)layoutSubviews
{
  v57[1] = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = SUUIGiftTextTableViewCell;
  [(SUUIGiftTextTableViewCell *)&v56 layoutSubviews];
  contentView = [(SUUIGiftTextTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_label frame];
  v13 = v12;
  v15 = v14;
  leftToRight = [(SUUIGiftTextTableViewCell *)self leftToRight];
  label = self->_label;
  v55 = v11;
  v52 = v7;
  if (leftToRight)
  {
    v18 = 12.0;
    v19 = 15.0;
    v20 = v13;
    v21 = v15;
    v22 = 15.0;
    v23 = 12.0;
  }

  else
  {
    v23 = 12.0;
    v22 = 15.0;
    [SUUICGRectHelpers rect:15.0 withFlippedOriginXRelativeTo:12.0, v13, v15, v5, v7, v9, v11];
  }

  [(UILabel *)label setFrame:v19, v18, v20, v21];
  [(UILabel *)self->_placeholderLabel frame];
  v25 = v24;
  v58.origin.x = v22;
  v53 = v23;
  v58.origin.y = v23;
  v58.size.width = v13;
  v58.size.height = v15;
  v26 = CGRectGetMaxX(v58) + 5.0;
  v27 = v9;
  v54 = v9 + -15.0;
  v28 = v9 + -15.0 - v26;
  leftToRight2 = [(SUUIGiftTextTableViewCell *)self leftToRight];
  placeholderLabel = self->_placeholderLabel;
  v31 = 12.0;
  if (!leftToRight2)
  {
    [SUUICGRectHelpers rect:v26 withFlippedOriginXRelativeTo:12.0, v28, v25, v5, v52, v27];
    v26 = v32;
    v28 = v33;
    v25 = v34;
  }

  [(UILabel *)placeholderLabel setFrame:v26, v31, v28, v25];
  [(UITextView *)self->_textView frame];
  v59.origin.x = v22;
  v59.origin.y = v53;
  v59.size.width = v13;
  v59.size.height = v15;
  MaxY = CGRectGetMaxY(v59);
  [(UITextView *)self->_textView setFrame:10.0, MaxY + 3.0, v27 + -20.0, v55 + -10.0 - (MaxY + 3.0)];
  textView = self->_textView;
  superview = [(UILabel *)self->_label superview];
  [(UITextView *)textView convertRect:superview fromView:v22, v53, v13, v15];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = [MEMORY[0x277D75208] bezierPathWithRect:{v39, v41, v43, v45}];
  textContainer = [(UITextView *)self->_textView textContainer];
  v57[0] = v46;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  [textContainer setExclusionPaths:v48];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v51 = 1.0 / v50;

  [(UIView *)self->_bottomBorderView setFrame:0.0, v55 - v51, v27, v51];
  [(UIView *)self->_topBorderView setFrame:15.0, 0.0, v54, v51];
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  if (self->_maximumCharacterCount < 1)
  {
    return 1;
  }

  length = range.length;
  location = range.location;
  textCopy = text;
  text = [view text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, textCopy}];

  v12 = [v11 length] <= self->_maximumCharacterCount;
  return v12;
}

- (void)textViewDidEndEditing:(id)editing
{
  placeholderLabel = self->_placeholderLabel;
  text = [(UITextView *)self->_textView text];
  -[UILabel setHidden:](placeholderLabel, "setHidden:", [text length] != 0);
}

@end