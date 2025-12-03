@interface GKTextView
+ (void)initialize;
- (GKTextView)initWithFrame:(CGRect)frame;
- (NSAttributedString)attributedPlaceholderText;
- (NSString)placeholderText;
- (id)insertDictationResultPlaceholder;
- (void)applyTextStyle:(id)style;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result;
- (void)replayAndApplyStyle;
- (void)setAttributedPlaceholderText:(id)text;
- (void)setAttributedText:(id)text;
- (void)setPlaceholderText:(id)text;
- (void)setText:(id)text;
- (void)set_baseStyle:(id)style;
- (void)updatePlaceholderVisibility;
@end

@implementation GKTextView

+ (void)initialize
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 appearanceWhenContainedInInstancesOfClasses:v3];

  v5 = objc_alloc_init(MEMORY[0x277D0C8C0]);
  [v4 set_baseStyle:v5];
}

- (GKTextView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = GKTextView;
  v3 = [(GKTextView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1 || (v6 = 0x277D0C8B8, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v6 = 0x277D0C8C0;
    }

    v7 = objc_alloc_init(*v6);
    objc_storeStrong(&v3->__baseStyle, v7);
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKTextView;
  [(GKTextView *)&v4 dealloc];
}

- (void)updatePlaceholderVisibility
{
  text = [(GKTextView *)self text];
  v3 = [text length] != 0;
  placeholderLabel = [(GKTextView *)self placeholderLabel];
  [placeholderLabel setHidden:v3];
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = GKTextView;
  [(GKTextView *)&v4 setText:text];
  [(GKTextView *)self replayAndApplyStyle];
}

- (void)setAttributedText:(id)text
{
  v4.receiver = self;
  v4.super_class = GKTextView;
  [(GKTextView *)&v4 setAttributedText:text];
  [(GKTextView *)self replayAndApplyStyle];
}

- (void)setPlaceholderText:(id)text
{
  v4 = MEMORY[0x277D0C8B0];
  textCopy = text;
  textStyle = [v4 textStyle];
  composeMessage = [textStyle composeMessage];

  v7 = [textCopy _gkAttributedStringByApplyingStyle:composeMessage];

  [(GKTextView *)self setAttributedPlaceholderText:v7];
}

- (void)setAttributedPlaceholderText:(id)text
{
  textCopy = text;
  placeholderLabel = [(GKTextView *)self placeholderLabel];
  if (textCopy && !placeholderLabel)
  {
    placeholderLabel = objc_alloc_init(GKLabel);
    [(GKTextView *)self addSubview:placeholderLabel];
    [(GKTextView *)self setPlaceholderLabel:placeholderLabel];
    [(GKTextView *)self updatePlaceholderVisibility];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D741D8];
    textStorage = [(GKTextView *)self textStorage];
    [defaultCenter addObserver:self selector:sel_textStorageDidChangeNotification_ name:v6 object:textStorage];
  }

  [(GKLabel *)placeholderLabel setAttributedText:textCopy];
  [(GKTextView *)self setNeedsLayout];
}

- (NSString)placeholderText
{
  placeholderLabel = [(GKTextView *)self placeholderLabel];
  text = [placeholderLabel text];

  return text;
}

- (NSAttributedString)attributedPlaceholderText
{
  placeholderLabel = [(GKTextView *)self placeholderLabel];
  attributedText = [placeholderLabel attributedText];

  return attributedText;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = GKTextView;
  [(GKTextView *)&v17 layoutSubviews];
  placeholderLabel = [(GKTextView *)self placeholderLabel];
  if (placeholderLabel)
  {
    [(GKTextView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    text = [placeholderLabel text];
    if ([text _gkIsNaturallyRTL])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    [placeholderLabel setTextAlignment:v13];

    [placeholderLabel setNumberOfLines:0];
    [placeholderLabel setOpaque:0];
    [placeholderLabel setBackgroundColor:0];
    [(GKTextView *)self textContainerInset];
    v15 = v7 + v14;
    [placeholderLabel sizeThatFits:{v9, v11}];
    [placeholderLabel setFrame:{v5 + 5.0, v15, v9 + -12.0, v16}];
  }
}

- (void)set_baseStyle:(id)style
{
  styleCopy = style;
  if (self->__baseStyle != styleCopy)
  {
    v6 = styleCopy;
    objc_storeStrong(&self->__baseStyle, style);
    [(GKTextView *)self replayAndApplyStyle];
    styleCopy = v6;
  }
}

- (void)applyTextStyle:(id)style
{
  appliedStyle = style;
  v6 = appliedStyle;
  if (self->_appliedStyle != appliedStyle)
  {
    objc_storeStrong(&self->_appliedStyle, style);
    appliedStyle = self->_appliedStyle;
  }

  if (appliedStyle)
  {
    [(GKTextView *)self replayAndApplyStyle];
  }
}

- (void)replayAndApplyStyle
{
  v3 = self->__baseStyle;
  appliedStyle = self->_appliedStyle;
  if (appliedStyle)
  {
    v7 = v3;
    v5 = [(GKTextStyle *)appliedStyle replayOnBaseStyle:self->__baseStyle systemContentSizeDidChange:0];

    v3 = v5;
  }

  if (v3)
  {
    attributes = [(GKTextStyle *)v3 attributes];
    [(GKTextView *)self setTypingAttributes:attributes];
  }

  MEMORY[0x2821F96F8]();
}

- (id)insertDictationResultPlaceholder
{
  placeholderLabel = [(GKTextView *)self placeholderLabel];
  [placeholderLabel setAlpha:0.0];

  v6.receiver = self;
  v6.super_class = GKTextView;
  insertDictationResultPlaceholder = [(GKTextView *)&v6 insertDictationResultPlaceholder];

  return insertDictationResultPlaceholder;
}

- (void)removeDictationResultPlaceholder:(id)placeholder willInsertResult:(BOOL)result
{
  resultCopy = result;
  placeholderCopy = placeholder;
  placeholderLabel = [(GKTextView *)self placeholderLabel];
  [placeholderLabel setAlpha:1.0];

  v8.receiver = self;
  v8.super_class = GKTextView;
  [(GKTextView *)&v8 removeDictationResultPlaceholder:placeholderCopy willInsertResult:resultCopy];
}

@end