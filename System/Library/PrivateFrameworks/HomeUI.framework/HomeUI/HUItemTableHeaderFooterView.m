@interface HUItemTableHeaderFooterView
- (HUItemTableHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (NSAttributedString)attributedMessage;
- (NSString)message;
- (double)_bottomSpacing;
- (unint64_t)numberOfLines;
- (void)setAttributedMessage:(id)a3;
- (void)setIncludeBottomSpacing:(BOOL)a3;
- (void)setMessage:(id)a3;
- (void)setNumberOfLines:(unint64_t)a3;
- (void)updateConstraints;
@end

@implementation HUItemTableHeaderFooterView

- (HUItemTableHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v21.receiver = self;
  v21.super_class = HUItemTableHeaderFooterView;
  v3 = [(HUItemTableHeaderFooterView *)&v21 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    [(HUItemTableHeaderFooterView *)v3 setMessageTextView:v4];

    v5 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [v6 setEditable:0];

    v7 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [v7 _setInteractiveTextSelectionDisabled:1];

    v8 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [v8 setScrollEnabled:0];

    v9 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
    v13 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [v13 setTextContainerInset:{v9, v10, v11, v12}];

    v14 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    v15 = [v14 textContainer];
    [v15 setLineFragmentPadding:0.0];

    v16 = [MEMORY[0x277D75348] clearColor];
    v17 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [v17 setBackgroundColor:v16];

    v18 = [(HUItemTableHeaderFooterView *)v3 contentView];
    v19 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [v18 addSubview:v19];

    v3->_includeBottomSpacing = 1;
  }

  return v3;
}

- (void)setAttributedMessage:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableHeaderFooterView *)self messageTextView];
  [v5 setAttributedText:v4];
}

- (NSAttributedString)attributedMessage
{
  v2 = [(HUItemTableHeaderFooterView *)self messageTextView];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableHeaderFooterView *)self messageTextView];
  [v5 setText:v4];
}

- (NSString)message
{
  v2 = [(HUItemTableHeaderFooterView *)self messageTextView];
  v3 = [v2 text];

  return v3;
}

- (void)setNumberOfLines:(unint64_t)a3
{
  v5 = [(HUItemTableHeaderFooterView *)self messageTextView];
  v4 = [v5 textContainer];
  [v4 setMaximumNumberOfLines:a3];
}

- (unint64_t)numberOfLines
{
  v2 = [(HUItemTableHeaderFooterView *)self messageTextView];
  v3 = [v2 textContainer];
  v4 = [v3 maximumNumberOfLines];

  return v4;
}

- (void)setIncludeBottomSpacing:(BOOL)a3
{
  self->_includeBottomSpacing = a3;
  [(HUItemTableHeaderFooterView *)self _bottomSpacing];
  v5 = -v4;
  v6 = [(HUItemTableHeaderFooterView *)self bottomSpacingConstraint];
  [v6 setConstant:v5];
}

- (double)_bottomSpacing
{
  v2 = [(HUItemTableHeaderFooterView *)self includeBottomSpacing];
  result = 35.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (void)updateConstraints
{
  v3 = [(HUItemTableHeaderFooterView *)self constraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUItemTableHeaderFooterView *)self constraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = objc_opt_new();
  v7 = [(HUItemTableHeaderFooterView *)self messageTextView];
  v8 = [v7 leadingAnchor];
  v9 = [(HUItemTableHeaderFooterView *)self contentView];
  v10 = [v9 readableContentGuide];
  v11 = [v10 leadingAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];
  [v6 addObject:v12];

  v13 = [(HUItemTableHeaderFooterView *)self messageTextView];
  v14 = [v13 trailingAnchor];
  v15 = [(HUItemTableHeaderFooterView *)self contentView];
  v16 = [v15 readableContentGuide];
  v17 = [v16 trailingAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];
  [v6 addObject:v18];

  v19 = [(HUItemTableHeaderFooterView *)self messageTextView];
  v20 = [v19 firstBaselineAnchor];
  v21 = [(HUItemTableHeaderFooterView *)self contentView];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:46.0];
  [v6 addObject:v23];

  v24 = [(HUItemTableHeaderFooterView *)self messageTextView];
  v25 = [v24 lastBaselineAnchor];
  v26 = [(HUItemTableHeaderFooterView *)self contentView];
  v27 = [v26 bottomAnchor];
  [(HUItemTableHeaderFooterView *)self _bottomSpacing];
  v29 = [v25 constraintEqualToAnchor:v27 constant:-v28];
  [(HUItemTableHeaderFooterView *)self setBottomSpacingConstraint:v29];

  v30 = [(HUItemTableHeaderFooterView *)self bottomSpacingConstraint];
  [v6 addObject:v30];

  [MEMORY[0x277CCAAD0] activateConstraints:v6];
  [(HUItemTableHeaderFooterView *)self setConstraints:v6];
  v31.receiver = self;
  v31.super_class = HUItemTableHeaderFooterView;
  [(HUItemTableHeaderFooterView *)&v31 updateConstraints];
}

@end