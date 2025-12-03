@interface HUItemTableHeaderFooterView
- (HUItemTableHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (NSAttributedString)attributedMessage;
- (NSString)message;
- (double)_bottomSpacing;
- (unint64_t)numberOfLines;
- (void)setAttributedMessage:(id)message;
- (void)setIncludeBottomSpacing:(BOOL)spacing;
- (void)setMessage:(id)message;
- (void)setNumberOfLines:(unint64_t)lines;
- (void)updateConstraints;
@end

@implementation HUItemTableHeaderFooterView

- (HUItemTableHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v21.receiver = self;
  v21.super_class = HUItemTableHeaderFooterView;
  v3 = [(HUItemTableHeaderFooterView *)&v21 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_opt_new();
    [(HUItemTableHeaderFooterView *)v3 setMessageTextView:v4];

    messageTextView = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [messageTextView setTranslatesAutoresizingMaskIntoConstraints:0];

    messageTextView2 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [messageTextView2 setEditable:0];

    messageTextView3 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [messageTextView3 _setInteractiveTextSelectionDisabled:1];

    messageTextView4 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [messageTextView4 setScrollEnabled:0];

    v9 = *MEMORY[0x277D768C8];
    v10 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
    messageTextView5 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [messageTextView5 setTextContainerInset:{v9, v10, v11, v12}];

    messageTextView6 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    textContainer = [messageTextView6 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    messageTextView7 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [messageTextView7 setBackgroundColor:clearColor];

    contentView = [(HUItemTableHeaderFooterView *)v3 contentView];
    messageTextView8 = [(HUItemTableHeaderFooterView *)v3 messageTextView];
    [contentView addSubview:messageTextView8];

    v3->_includeBottomSpacing = 1;
  }

  return v3;
}

- (void)setAttributedMessage:(id)message
{
  messageCopy = message;
  messageTextView = [(HUItemTableHeaderFooterView *)self messageTextView];
  [messageTextView setAttributedText:messageCopy];
}

- (NSAttributedString)attributedMessage
{
  messageTextView = [(HUItemTableHeaderFooterView *)self messageTextView];
  attributedText = [messageTextView attributedText];

  return attributedText;
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  messageTextView = [(HUItemTableHeaderFooterView *)self messageTextView];
  [messageTextView setText:messageCopy];
}

- (NSString)message
{
  messageTextView = [(HUItemTableHeaderFooterView *)self messageTextView];
  text = [messageTextView text];

  return text;
}

- (void)setNumberOfLines:(unint64_t)lines
{
  messageTextView = [(HUItemTableHeaderFooterView *)self messageTextView];
  textContainer = [messageTextView textContainer];
  [textContainer setMaximumNumberOfLines:lines];
}

- (unint64_t)numberOfLines
{
  messageTextView = [(HUItemTableHeaderFooterView *)self messageTextView];
  textContainer = [messageTextView textContainer];
  maximumNumberOfLines = [textContainer maximumNumberOfLines];

  return maximumNumberOfLines;
}

- (void)setIncludeBottomSpacing:(BOOL)spacing
{
  self->_includeBottomSpacing = spacing;
  [(HUItemTableHeaderFooterView *)self _bottomSpacing];
  v5 = -v4;
  bottomSpacingConstraint = [(HUItemTableHeaderFooterView *)self bottomSpacingConstraint];
  [bottomSpacingConstraint setConstant:v5];
}

- (double)_bottomSpacing
{
  includeBottomSpacing = [(HUItemTableHeaderFooterView *)self includeBottomSpacing];
  result = 35.0;
  if (!includeBottomSpacing)
  {
    return 0.0;
  }

  return result;
}

- (void)updateConstraints
{
  constraints = [(HUItemTableHeaderFooterView *)self constraints];

  if (constraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUItemTableHeaderFooterView *)self constraints];
    [v4 deactivateConstraints:constraints2];
  }

  v6 = objc_opt_new();
  messageTextView = [(HUItemTableHeaderFooterView *)self messageTextView];
  leadingAnchor = [messageTextView leadingAnchor];
  contentView = [(HUItemTableHeaderFooterView *)self contentView];
  readableContentGuide = [contentView readableContentGuide];
  leadingAnchor2 = [readableContentGuide leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v6 addObject:v12];

  messageTextView2 = [(HUItemTableHeaderFooterView *)self messageTextView];
  trailingAnchor = [messageTextView2 trailingAnchor];
  contentView2 = [(HUItemTableHeaderFooterView *)self contentView];
  readableContentGuide2 = [contentView2 readableContentGuide];
  trailingAnchor2 = [readableContentGuide2 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v6 addObject:v18];

  messageTextView3 = [(HUItemTableHeaderFooterView *)self messageTextView];
  firstBaselineAnchor = [messageTextView3 firstBaselineAnchor];
  contentView3 = [(HUItemTableHeaderFooterView *)self contentView];
  topAnchor = [contentView3 topAnchor];
  v23 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:46.0];
  [v6 addObject:v23];

  messageTextView4 = [(HUItemTableHeaderFooterView *)self messageTextView];
  lastBaselineAnchor = [messageTextView4 lastBaselineAnchor];
  contentView4 = [(HUItemTableHeaderFooterView *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  [(HUItemTableHeaderFooterView *)self _bottomSpacing];
  v29 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-v28];
  [(HUItemTableHeaderFooterView *)self setBottomSpacingConstraint:v29];

  bottomSpacingConstraint = [(HUItemTableHeaderFooterView *)self bottomSpacingConstraint];
  [v6 addObject:bottomSpacingConstraint];

  [MEMORY[0x277CCAAD0] activateConstraints:v6];
  [(HUItemTableHeaderFooterView *)self setConstraints:v6];
  v31.receiver = self;
  v31.super_class = HUItemTableHeaderFooterView;
  [(HUItemTableHeaderFooterView *)&v31 updateConstraints];
}

@end