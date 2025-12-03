@interface HUEditableTextViewCell
- (BOOL)isTextViewFirstResponder;
- (HUEditableTextViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)text;
- (UITextViewDelegate)textViewDelegate;
- (id)trimmedStringForText:(id)text;
- (void)handleUITextViewTextDidBeginEditingNotification:(id)notification;
- (void)handleUITextViewTextDidEndEditingNotification:(id)notification;
- (void)prepareForReuse;
- (void)resignTextViewAsFirstResponder;
- (void)setEditEnabled:(BOOL)enabled;
- (void)setPlaceholderText:(id)text;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setText:(id)text;
- (void)setTextViewDelegate:(id)delegate;
- (void)updateTextColor;
@end

@implementation HUEditableTextViewCell

- (HUEditableTextViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v40.receiver = self;
  v40.super_class = HUEditableTextViewCell;
  v4 = [(HUEditableTextViewCell *)&v40 initWithStyle:style reuseIdentifier:identifier];
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
    textContainer = [(UITextView *)v4->_textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:clearColor];

    contentView = [(HUEditableTextViewCell *)v4 contentView];
    [contentView addSubview:v4->_textView];

    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [(UITextView *)v4->_textView leadingAnchor];
    contentView2 = [(HUEditableTextViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v17];

    trailingAnchor = [(UITextView *)v4->_textView trailingAnchor];
    contentView3 = [(HUEditableTextViewCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v22];

    topAnchor = [(UITextView *)v4->_textView topAnchor];
    contentView4 = [(HUEditableTextViewCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v27];

    bottomAnchor = [(UITextView *)v4->_textView bottomAnchor];
    contentView5 = [(HUEditableTextViewCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v32];

    contentView6 = [(HUEditableTextViewCell *)v4 contentView];
    heightAnchor = [contentView6 heightAnchor];
    v35 = [heightAnchor constraintEqualToConstant:176.0];

    LODWORD(v36) = 1144750080;
    [v35 setPriority:v36];
    [array addObject:v35];
    [MEMORY[0x277CCAAD0] activateConstraints:array];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_handleUITextViewTextDidBeginEditingNotification_ name:*MEMORY[0x277D77210] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel_handleUITextViewTextDidEndEditingNotification_ name:*MEMORY[0x277D77220] object:0];
  }

  return v4;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  if (selected)
  {
    v4 = [(HUEditableTextViewCell *)self textView:selected];
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
  textView = [(HUEditableTextViewCell *)self textView];
  [textView setText:0];

  textView2 = [(HUEditableTextViewCell *)self textView];
  [textView2 setDelegate:0];

  [(HUEditableTextViewCell *)self updateTextColor];
}

- (void)handleUITextViewTextDidBeginEditingNotification:(id)notification
{
  object = [notification object];
  textView = [(HUEditableTextViewCell *)self textView];

  v5 = object;
  if (object == textView)
  {
    if ([(HUEditableTextViewCell *)self showingPlaceholder])
    {
      [(HUEditableTextViewCell *)self setShowingPlaceholder:0];
      textView2 = [(HUEditableTextViewCell *)self textView];
      [textView2 setText:0];
    }

    [(HUEditableTextViewCell *)self updateTextColor];
    v5 = object;
  }
}

- (void)handleUITextViewTextDidEndEditingNotification:(id)notification
{
  object = [notification object];
  textView = [(HUEditableTextViewCell *)self textView];

  v5 = object;
  if (object == textView)
  {
    text = [object text];
    v7 = [(HUEditableTextViewCell *)self trimmedStringForText:text];
    textView2 = [(HUEditableTextViewCell *)self textView];
    [textView2 setText:v7];

    textView3 = [(HUEditableTextViewCell *)self textView];
    text2 = [textView3 text];
    if ([text2 isEqualToString:&stru_2823E0EE8])
    {
      placeholderText = [(HUEditableTextViewCell *)self placeholderText];

      v5 = object;
      if (!placeholderText)
      {
        goto LABEL_7;
      }

      [(HUEditableTextViewCell *)self setShowingPlaceholder:1];
      placeholderText = self->_placeholderText;
      textView4 = [(HUEditableTextViewCell *)self textView];
      [textView4 setText:placeholderText];

      [(HUEditableTextViewCell *)self updateTextColor];
    }

    else
    {
    }

    v5 = object;
  }

LABEL_7:
}

- (void)setEditEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  textView = [(HUEditableTextViewCell *)self textView];
  [textView setEditable:enabledCopy];
}

- (UITextViewDelegate)textViewDelegate
{
  textView = [(HUEditableTextViewCell *)self textView];
  delegate = [textView delegate];

  return delegate;
}

- (void)setTextViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  textView = [(HUEditableTextViewCell *)self textView];
  [textView setDelegate:delegateCopy];
}

- (NSString)text
{
  if (-[HUEditableTextViewCell showingPlaceholder](self, "showingPlaceholder") || (-[HUEditableTextViewCell textView](self, "textView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 text], v4 = objc_claimAutoreleasedReturnValue(), -[HUEditableTextViewCell placeholderText](self, "placeholderText"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqualToString:", v5), v5, v4, v3, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    textView = [(HUEditableTextViewCell *)self textView];
    text = [textView text];
    v7 = [(HUEditableTextViewCell *)self trimmedStringForText:text];
  }

  return v7;
}

- (void)setText:(id)text
{
  v4 = [(HUEditableTextViewCell *)self trimmedStringForText:text];
  text = self->_text;
  self->_text = v4;

  if ([(NSString *)self->_text isEqualToString:&stru_2823E0EE8])
  {
    placeholderText = [(HUEditableTextViewCell *)self placeholderText];

    if (!placeholderText)
    {
      goto LABEL_6;
    }

    [(HUEditableTextViewCell *)self setShowingPlaceholder:1];
    placeholderText2 = [(HUEditableTextViewCell *)self placeholderText];
    textView = [(HUEditableTextViewCell *)self textView];
    [textView setText:placeholderText2];
  }

  else
  {
    [(HUEditableTextViewCell *)self setShowingPlaceholder:0];
    v9 = self->_text;
    placeholderText2 = [(HUEditableTextViewCell *)self textView];
    [placeholderText2 setText:v9];
  }

LABEL_6:

  [(HUEditableTextViewCell *)self updateTextColor];
}

- (void)setPlaceholderText:(id)text
{
  textCopy = text;
  objc_storeStrong(&self->_placeholderText, text);
  textView = [(HUEditableTextViewCell *)self textView];
  text = [textView text];
  v7 = [text isEqualToString:&stru_2823E0EE8];

  if (v7)
  {
    [(HUEditableTextViewCell *)self setShowingPlaceholder:1];
    placeholderText = self->_placeholderText;
    textView2 = [(HUEditableTextViewCell *)self textView];
    [textView2 setText:placeholderText];
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
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    v3 = 0;
    v4 = 1;
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x277D75348] labelColor];
    v4 = 0;
    v3 = 1;
  }

  textView = [(HUEditableTextViewCell *)self textView];
  [textView setTextColor:secondaryLabelColor];

  if (v3)
  {
  }

  if (v4)
  {
  }
}

- (id)trimmedStringForText:(id)text
{
  v3 = MEMORY[0x277CCA900];
  textCopy = text;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v6;
}

- (BOOL)isTextViewFirstResponder
{
  textView = [(HUEditableTextViewCell *)self textView];
  isFirstResponder = [textView isFirstResponder];

  return isFirstResponder;
}

- (void)resignTextViewAsFirstResponder
{
  textView = [(HUEditableTextViewCell *)self textView];
  [textView resignFirstResponder];
}

@end