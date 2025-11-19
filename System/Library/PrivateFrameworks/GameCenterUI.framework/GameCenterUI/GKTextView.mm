@interface GKTextView
+ (void)initialize;
- (GKTextView)initWithFrame:(CGRect)a3;
- (NSAttributedString)attributedPlaceholderText;
- (NSString)placeholderText;
- (id)insertDictationResultPlaceholder;
- (void)applyTextStyle:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4;
- (void)replayAndApplyStyle;
- (void)setAttributedPlaceholderText:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setPlaceholderText:(id)a3;
- (void)setText:(id)a3;
- (void)set_baseStyle:(id)a3;
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

- (GKTextView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = GKTextView;
  v3 = [(GKTextView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 != 1 || (v6 = 0x277D0C8B8, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKTextView;
  [(GKTextView *)&v4 dealloc];
}

- (void)updatePlaceholderVisibility
{
  v5 = [(GKTextView *)self text];
  v3 = [v5 length] != 0;
  v4 = [(GKTextView *)self placeholderLabel];
  [v4 setHidden:v3];
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKTextView;
  [(GKTextView *)&v4 setText:a3];
  [(GKTextView *)self replayAndApplyStyle];
}

- (void)setAttributedText:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKTextView;
  [(GKTextView *)&v4 setAttributedText:a3];
  [(GKTextView *)self replayAndApplyStyle];
}

- (void)setPlaceholderText:(id)a3
{
  v4 = MEMORY[0x277D0C8B0];
  v5 = a3;
  v6 = [v4 textStyle];
  v8 = [v6 composeMessage];

  v7 = [v5 _gkAttributedStringByApplyingStyle:v8];

  [(GKTextView *)self setAttributedPlaceholderText:v7];
}

- (void)setAttributedPlaceholderText:(id)a3
{
  v8 = a3;
  v4 = [(GKTextView *)self placeholderLabel];
  if (v8 && !v4)
  {
    v4 = objc_alloc_init(GKLabel);
    [(GKTextView *)self addSubview:v4];
    [(GKTextView *)self setPlaceholderLabel:v4];
    [(GKTextView *)self updatePlaceholderVisibility];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D741D8];
    v7 = [(GKTextView *)self textStorage];
    [v5 addObserver:self selector:sel_textStorageDidChangeNotification_ name:v6 object:v7];
  }

  [(GKLabel *)v4 setAttributedText:v8];
  [(GKTextView *)self setNeedsLayout];
}

- (NSString)placeholderText
{
  v2 = [(GKTextView *)self placeholderLabel];
  v3 = [v2 text];

  return v3;
}

- (NSAttributedString)attributedPlaceholderText
{
  v2 = [(GKTextView *)self placeholderLabel];
  v3 = [v2 attributedText];

  return v3;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = GKTextView;
  [(GKTextView *)&v17 layoutSubviews];
  v3 = [(GKTextView *)self placeholderLabel];
  if (v3)
  {
    [(GKTextView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v3 text];
    if ([v12 _gkIsNaturallyRTL])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    [v3 setTextAlignment:v13];

    [v3 setNumberOfLines:0];
    [v3 setOpaque:0];
    [v3 setBackgroundColor:0];
    [(GKTextView *)self textContainerInset];
    v15 = v7 + v14;
    [v3 sizeThatFits:{v9, v11}];
    [v3 setFrame:{v5 + 5.0, v15, v9 + -12.0, v16}];
  }
}

- (void)set_baseStyle:(id)a3
{
  v5 = a3;
  if (self->__baseStyle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__baseStyle, a3);
    [(GKTextView *)self replayAndApplyStyle];
    v5 = v6;
  }
}

- (void)applyTextStyle:(id)a3
{
  appliedStyle = a3;
  v6 = appliedStyle;
  if (self->_appliedStyle != appliedStyle)
  {
    objc_storeStrong(&self->_appliedStyle, a3);
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
    v6 = [(GKTextStyle *)v3 attributes];
    [(GKTextView *)self setTypingAttributes:v6];
  }

  MEMORY[0x2821F96F8]();
}

- (id)insertDictationResultPlaceholder
{
  v3 = [(GKTextView *)self placeholderLabel];
  [v3 setAlpha:0.0];

  v6.receiver = self;
  v6.super_class = GKTextView;
  v4 = [(GKTextView *)&v6 insertDictationResultPlaceholder];

  return v4;
}

- (void)removeDictationResultPlaceholder:(id)a3 willInsertResult:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(GKTextView *)self placeholderLabel];
  [v7 setAlpha:1.0];

  v8.receiver = self;
  v8.super_class = GKTextView;
  [(GKTextView *)&v8 removeDictationResultPlaceholder:v6 willInsertResult:v4];
}

@end