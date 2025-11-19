@interface HUEditableTextViewCell
- (BOOL)isTextViewFirstResponder;
- (HUEditableTextViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)text;
- (UITextViewDelegate)textViewDelegate;
- (id)trimmedStringForText:(id)a3;
- (void)handleUITextViewTextDidBeginEditingNotification:(id)a3;
- (void)handleUITextViewTextDidEndEditingNotification:(id)a3;
- (void)prepareForReuse;
- (void)resignTextViewAsFirstResponder;
- (void)setEditEnabled:(BOOL)a3;
- (void)setPlaceholderText:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setText:(id)a3;
- (void)setTextViewDelegate:(id)a3;
- (void)updateTextColor;
@end

@implementation HUEditableTextViewCell

- (HUEditableTextViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v40.receiver = self;
  v40.super_class = HUEditableTextViewCell;
  v4 = [(HUEditableTextViewCell *)&v40 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75C40]);
    v6 = [v5 initWithFrame:0 textContainer:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v4->_textView;
    v4->_textView = v6;

    [(UITextView *)v4->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextView *)v4->_textView setFont:v8];

    [(UITextView *)v4->_textView setAdjustsFontForContentSizeCategory:1];
    [(UITextView *)v4->_textView setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    v9 = [(UITextView *)v4->_textView textContainer];
    [v9 setLineFragmentPadding:0.0];

    v10 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:v10];

    v11 = [(HUEditableTextViewCell *)v4 contentView];
    [v11 addSubview:v4->_textView];

    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [(UITextView *)v4->_textView leadingAnchor];
    v14 = [(HUEditableTextViewCell *)v4 contentView];
    v15 = [v14 layoutMarginsGuide];
    v16 = [v15 leadingAnchor];
    v17 = [v13 constraintEqualToAnchor:v16];
    [v12 addObject:v17];

    v18 = [(UITextView *)v4->_textView trailingAnchor];
    v19 = [(HUEditableTextViewCell *)v4 contentView];
    v20 = [v19 layoutMarginsGuide];
    v21 = [v20 trailingAnchor];
    v22 = [v18 constraintEqualToAnchor:v21];
    [v12 addObject:v22];

    v23 = [(UITextView *)v4->_textView topAnchor];
    v24 = [(HUEditableTextViewCell *)v4 contentView];
    v25 = [v24 layoutMarginsGuide];
    v26 = [v25 topAnchor];
    v27 = [v23 constraintEqualToAnchor:v26];
    [v12 addObject:v27];

    v28 = [(UITextView *)v4->_textView bottomAnchor];
    v29 = [(HUEditableTextViewCell *)v4 contentView];
    v30 = [v29 layoutMarginsGuide];
    v31 = [v30 bottomAnchor];
    v32 = [v28 constraintEqualToAnchor:v31];
    [v12 addObject:v32];

    v33 = [(HUEditableTextViewCell *)v4 contentView];
    v34 = [v33 heightAnchor];
    v35 = [v34 constraintEqualToConstant:176.0];

    LODWORD(v36) = 1144750080;
    [v35 setPriority:v36];
    [v12 addObject:v35];
    [MEMORY[0x277CCAAD0] activateConstraints:v12];
    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    [v37 addObserver:v4 selector:sel_handleUITextViewTextDidBeginEditingNotification_ name:*MEMORY[0x277D77210] object:0];

    v38 = [MEMORY[0x277CCAB98] defaultCenter];
    [v38 addObserver:v4 selector:sel_handleUITextViewTextDidEndEditingNotification_ name:*MEMORY[0x277D77220] object:0];
  }

  return v4;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v4 = [(HUEditableTextViewCell *)self textView:a3];
    [v4 becomeFirstResponder];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUEditableTextViewCell;
  [(HUEditableTextViewCell *)&v5 prepareForReuse];
  [(HUEditableTextViewCell *)self setText:0];
  [(HUEditableTextViewCell *)self setPlaceholderText:0];
  [(HUEditableTextViewCell *)self setShowingPlaceholder:0];
  v3 = [(HUEditableTextViewCell *)self textView];
  [v3 setText:0];

  v4 = [(HUEditableTextViewCell *)self textView];
  [v4 setDelegate:0];

  [(HUEditableTextViewCell *)self updateTextColor];
}

- (void)handleUITextViewTextDidBeginEditingNotification:(id)a3
{
  v7 = [a3 object];
  v4 = [(HUEditableTextViewCell *)self textView];

  v5 = v7;
  if (v7 == v4)
  {
    if ([(HUEditableTextViewCell *)self showingPlaceholder])
    {
      [(HUEditableTextViewCell *)self setShowingPlaceholder:0];
      v6 = [(HUEditableTextViewCell *)self textView];
      [v6 setText:0];
    }

    [(HUEditableTextViewCell *)self updateTextColor];
    v5 = v7;
  }
}

- (void)handleUITextViewTextDidEndEditingNotification:(id)a3
{
  v14 = [a3 object];
  v4 = [(HUEditableTextViewCell *)self textView];

  v5 = v14;
  if (v14 == v4)
  {
    v6 = [v14 text];
    v7 = [(HUEditableTextViewCell *)self trimmedStringForText:v6];
    v8 = [(HUEditableTextViewCell *)self textView];
    [v8 setText:v7];

    v9 = [(HUEditableTextViewCell *)self textView];
    v10 = [v9 text];
    if ([v10 isEqualToString:&stru_2823E0EE8])
    {
      v11 = [(HUEditableTextViewCell *)self placeholderText];

      v5 = v14;
      if (!v11)
      {
        goto LABEL_7;
      }

      [(HUEditableTextViewCell *)self setShowingPlaceholder:1];
      placeholderText = self->_placeholderText;
      v13 = [(HUEditableTextViewCell *)self textView];
      [v13 setText:placeholderText];

      [(HUEditableTextViewCell *)self updateTextColor];
    }

    else
    {
    }

    v5 = v14;
  }

LABEL_7:
}

- (void)setEditEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUEditableTextViewCell *)self textView];
  [v4 setEditable:v3];
}

- (UITextViewDelegate)textViewDelegate
{
  v2 = [(HUEditableTextViewCell *)self textView];
  v3 = [v2 delegate];

  return v3;
}

- (void)setTextViewDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HUEditableTextViewCell *)self textView];
  [v5 setDelegate:v4];
}

- (NSString)text
{
  if (-[HUEditableTextViewCell showingPlaceholder](self, "showingPlaceholder") || (-[HUEditableTextViewCell textView](self, "textView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 text], v4 = objc_claimAutoreleasedReturnValue(), -[HUEditableTextViewCell placeholderText](self, "placeholderText"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v4, v3, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v8 = [(HUEditableTextViewCell *)self textView];
    v9 = [v8 text];
    v7 = [(HUEditableTextViewCell *)self trimmedStringForText:v9];
  }

  return v7;
}

- (void)setText:(id)a3
{
  v4 = [(HUEditableTextViewCell *)self trimmedStringForText:a3];
  text = self->_text;
  self->_text = v4;

  if ([(NSString *)self->_text isEqualToString:&stru_2823E0EE8])
  {
    v6 = [(HUEditableTextViewCell *)self placeholderText];

    if (!v6)
    {
      goto LABEL_6;
    }

    [(HUEditableTextViewCell *)self setShowingPlaceholder:1];
    v7 = [(HUEditableTextViewCell *)self placeholderText];
    v8 = [(HUEditableTextViewCell *)self textView];
    [v8 setText:v7];
  }

  else
  {
    [(HUEditableTextViewCell *)self setShowingPlaceholder:0];
    v9 = self->_text;
    v7 = [(HUEditableTextViewCell *)self textView];
    [v7 setText:v9];
  }

LABEL_6:

  [(HUEditableTextViewCell *)self updateTextColor];
}

- (void)setPlaceholderText:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_placeholderText, a3);
  v5 = [(HUEditableTextViewCell *)self textView];
  v6 = [v5 text];
  v7 = [v6 isEqualToString:&stru_2823E0EE8];

  if (v7)
  {
    [(HUEditableTextViewCell *)self setShowingPlaceholder:1];
    placeholderText = self->_placeholderText;
    v9 = [(HUEditableTextViewCell *)self textView];
    [v9 setText:placeholderText];
  }

  else
  {
    [(HUEditableTextViewCell *)self setShowingPlaceholder:0];
  }

  [(HUEditableTextViewCell *)self updateTextColor];
}

- (void)updateTextColor
{
  if ([(HUEditableTextViewCell *)self showingPlaceholder]|| [(HUEditableTextViewCell *)self isDisabled])
  {
    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277D75348] labelColor];
    v4 = 0;
    v3 = 1;
  }

  v5 = [(HUEditableTextViewCell *)self textView];
  [v5 setTextColor:v6];

  if (v3)
  {
  }

  if (v4)
  {
  }
}

- (id)trimmedStringForText:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  return v6;
}

- (BOOL)isTextViewFirstResponder
{
  v2 = [(HUEditableTextViewCell *)self textView];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (void)resignTextViewAsFirstResponder
{
  v2 = [(HUEditableTextViewCell *)self textView];
  [v2 resignFirstResponder];
}

@end