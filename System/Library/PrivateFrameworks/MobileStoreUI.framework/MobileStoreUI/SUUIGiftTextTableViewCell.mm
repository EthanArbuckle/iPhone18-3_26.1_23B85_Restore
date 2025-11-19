@interface SUUIGiftTextTableViewCell
+ (id)newTextView;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (SUUIGiftTextTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLabel:(id)a3;
- (void)setPlaceholder:(id)a3;
- (void)setTextView:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation SUUIGiftTextTableViewCell

- (SUUIGiftTextTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v17.receiver = self;
  v17.super_class = SUUIGiftTextTableViewCell;
  v4 = [(SUUIGiftTextTableViewCell *)&v17 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SUUIGiftTextTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomBorderView = v5->_bottomBorderView;
    v5->_bottomBorderView = v7;

    v9 = v5->_bottomBorderView;
    v10 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v9 setBackgroundColor:v10];

    [v6 addSubview:v5->_bottomBorderView];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v5->_topBorderView;
    v5->_topBorderView = v11;

    v13 = v5->_topBorderView;
    v14 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v13 setBackgroundColor:v14];

    [v6 addSubview:v5->_topBorderView];
    v15 = [MEMORY[0x277D75128] sharedApplication];
    v5->_leftToRight = [v15 userInterfaceLayoutDirection] == 0;
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
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [v2 setFont:v4];

  return v2;
}

- (void)setLabel:(id)a3
{
  v15 = a3;
  v4 = [(SUUIGiftTextTableViewCell *)self label];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    label = self->_label;
    if (v15)
    {
      if (!label)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_label;
        self->_label = v6;

        v8 = self->_label;
        v9 = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_label;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_label;
        v13 = [MEMORY[0x277D75348] secondaryLabelColor];
        [(UILabel *)v12 setTextColor:v13];

        label = self->_label;
      }

      [(UILabel *)label setText:?];
      [(UILabel *)self->_label sizeToFit];
      v14 = [(SUUIGiftTextTableViewCell *)self contentView];
      [v14 addSubview:self->_label];
    }

    else
    {
      [(UILabel *)label removeFromSuperview];
      v14 = self->_label;
      self->_label = 0;
    }

    [(SUUIGiftTextTableViewCell *)self setNeedsLayout];
  }
}

- (void)setPlaceholder:(id)a3
{
  v15 = a3;
  v4 = [(SUUIGiftTextTableViewCell *)self placeholder];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    placeholderLabel = self->_placeholderLabel;
    if (v15)
    {
      if (!placeholderLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_placeholderLabel;
        self->_placeholderLabel = v6;

        v8 = self->_placeholderLabel;
        v9 = [MEMORY[0x277D75348] clearColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_placeholderLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_placeholderLabel;
        v13 = [MEMORY[0x277D75348] placeholderTextColor];
        [(UILabel *)v12 setTextColor:v13];

        placeholderLabel = self->_placeholderLabel;
      }

      [(UILabel *)placeholderLabel setText:?];
      [(UILabel *)self->_placeholderLabel sizeToFit];
      v14 = [(SUUIGiftTextTableViewCell *)self contentView];
      [v14 addSubview:self->_placeholderLabel];
    }

    else
    {
      [(UILabel *)placeholderLabel removeFromSuperview];
      v14 = self->_placeholderLabel;
      self->_placeholderLabel = 0;
    }

    [(SUUIGiftTextTableViewCell *)self setNeedsLayout];
  }
}

- (void)setTextView:(id)a3
{
  v5 = a3;
  textView = self->_textView;
  v13 = v5;
  if (textView != v5)
  {
    if ([(UITextView *)textView isDescendantOfView:self])
    {
      [(UITextView *)self->_textView removeFromSuperview];
    }

    [(UITextView *)self->_textView setDelegate:0];
    objc_storeStrong(&self->_textView, a3);
    textView = self->_textView;
  }

  if (textView)
  {
    v7 = [(UITextView *)textView superview];
    v8 = [(SUUIGiftTextTableViewCell *)self contentView];

    if (v7 != v8)
    {
      v9 = [(SUUIGiftTextTableViewCell *)self contentView];
      [v9 insertSubview:self->_textView belowSubview:self->_bottomBorderView];
    }
  }

  v10 = [(UITextView *)self->_textView delegate];

  if (v10 != self)
  {
    [(UITextView *)self->_textView setDelegate:self];
  }

  placeholderLabel = self->_placeholderLabel;
  v12 = [(UITextView *)self->_textView text];
  -[UILabel setHidden:](placeholderLabel, "setHidden:", [v12 length] != 0);
}

- (void)layoutSubviews
{
  v57[1] = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = SUUIGiftTextTableViewCell;
  [(SUUIGiftTextTableViewCell *)&v56 layoutSubviews];
  v3 = [(SUUIGiftTextTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_label frame];
  v13 = v12;
  v15 = v14;
  v16 = [(SUUIGiftTextTableViewCell *)self leftToRight];
  label = self->_label;
  v55 = v11;
  v52 = v7;
  if (v16)
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
  v29 = [(SUUIGiftTextTableViewCell *)self leftToRight];
  placeholderLabel = self->_placeholderLabel;
  v31 = 12.0;
  if (!v29)
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
  v37 = [(UILabel *)self->_label superview];
  [(UITextView *)textView convertRect:v37 fromView:v22, v53, v13, v15];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = [MEMORY[0x277D75208] bezierPathWithRect:{v39, v41, v43, v45}];
  v47 = [(UITextView *)self->_textView textContainer];
  v57[0] = v46;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  [v47 setExclusionPaths:v48];

  v49 = [MEMORY[0x277D759A0] mainScreen];
  [v49 scale];
  v51 = 1.0 / v50;

  [(UIView *)self->_bottomBorderView setFrame:0.0, v55 - v51, v27, v51];
  [(UIView *)self->_topBorderView setFrame:15.0, 0.0, v54, v51];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  if (self->_maximumCharacterCount < 1)
  {
    return 1;
  }

  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  v12 = [v11 length] <= self->_maximumCharacterCount;
  return v12;
}

- (void)textViewDidEndEditing:(id)a3
{
  placeholderLabel = self->_placeholderLabel;
  v4 = [(UITextView *)self->_textView text];
  -[UILabel setHidden:](placeholderLabel, "setHidden:", [v4 length] != 0);
}

@end