@interface HUCollectionTextViewCell
- (HUCollectionTextViewCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setContentConfiguration:(id)configuration;
@end

@implementation HUCollectionTextViewCell

- (HUCollectionTextViewCell)initWithFrame:(CGRect)frame
{
  v47.receiver = self;
  v47.super_class = HUCollectionTextViewCell;
  v3 = [(HUCollectionTextViewCell *)&v47 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(HUTappableTextView);
    [(HUCollectionTextViewCell *)v3 setMessageTextView:v4];

    messageTextView = [(HUCollectionTextViewCell *)v3 messageTextView];
    [messageTextView setTranslatesAutoresizingMaskIntoConstraints:0];

    messageTextView2 = [(HUCollectionTextViewCell *)v3 messageTextView];
    [messageTextView2 setEditable:0];

    messageTextView3 = [(HUCollectionTextViewCell *)v3 messageTextView];
    [messageTextView3 _setInteractiveTextSelectionDisabled:1];

    messageTextView4 = [(HUCollectionTextViewCell *)v3 messageTextView];
    [messageTextView4 setScrollEnabled:0];

    messageTextView5 = [(HUCollectionTextViewCell *)v3 messageTextView];
    textContainer = [messageTextView5 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    messageTextView6 = [(HUCollectionTextViewCell *)v3 messageTextView];
    [messageTextView6 setBackgroundColor:clearColor];

    v13 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v15 = *(MEMORY[0x277D768C8] + 16);
    v16 = *(MEMORY[0x277D768C8] + 24);
    messageTextView7 = [(HUCollectionTextViewCell *)v3 messageTextView];
    [messageTextView7 setTextContainerInset:{v13, v14, v15, v16}];

    contentView = [(HUCollectionTextViewCell *)v3 contentView];
    messageTextView8 = [(HUCollectionTextViewCell *)v3 messageTextView];
    [contentView addSubview:messageTextView8];

    [(HUCollectionTextViewCell *)v3 setPreservesSuperviewLayoutMargins:1];
    array = [MEMORY[0x277CBEB18] array];
    messageTextView9 = [(HUCollectionTextViewCell *)v3 messageTextView];
    [messageTextView9 setTranslatesAutoresizingMaskIntoConstraints:0];

    messageTextView10 = [(HUCollectionTextViewCell *)v3 messageTextView];
    leadingAnchor = [messageTextView10 leadingAnchor];
    contentView2 = [(HUCollectionTextViewCell *)v3 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v27];

    messageTextView11 = [(HUCollectionTextViewCell *)v3 messageTextView];
    trailingAnchor = [messageTextView11 trailingAnchor];
    contentView3 = [(HUCollectionTextViewCell *)v3 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v33];

    messageTextView12 = [(HUCollectionTextViewCell *)v3 messageTextView];
    topAnchor = [messageTextView12 topAnchor];
    contentView4 = [(HUCollectionTextViewCell *)v3 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v39];

    messageTextView13 = [(HUCollectionTextViewCell *)v3 messageTextView];
    bottomAnchor = [messageTextView13 bottomAnchor];
    contentView5 = [(HUCollectionTextViewCell *)v3 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v45];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v3;
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = HUCollectionTextViewCell;
  [(HUCollectionTextViewCell *)&v8 prepareForReuse];
  messageTextView = [(HUCollectionTextViewCell *)self messageTextView];
  [messageTextView setText:0];

  messageTextView2 = [(HUCollectionTextViewCell *)self messageTextView];
  [messageTextView2 setAttributedText:0];

  messageTextView3 = [(HUCollectionTextViewCell *)self messageTextView];
  [messageTextView3 setTappableTextViewDelegate:0];

  messageTextView4 = [(HUCollectionTextViewCell *)self messageTextView];
  [messageTextView4 setDelegate:0];

  messageTextView5 = [(HUCollectionTextViewCell *)self messageTextView];
  [messageTextView5 sizeToFit];
}

- (void)setContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  v19 = configurationCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v19;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    attributedText = [v6 attributedText];
    if (attributedText)
    {
      messageTextView = [(HUCollectionTextViewCell *)self messageTextView];
      [messageTextView setAttributedText:attributedText];
    }

    else
    {
      messageTextView = [v6 text];
      messageTextView2 = [(HUCollectionTextViewCell *)self messageTextView];
      [messageTextView2 setText:messageTextView];
    }

    textProperties = [v6 textProperties];
    font = [textProperties font];
    messageTextView3 = [(HUCollectionTextViewCell *)self messageTextView];
    [messageTextView3 setFont:font];

    textProperties2 = [v6 textProperties];
    color = [textProperties2 color];
    messageTextView4 = [(HUCollectionTextViewCell *)self messageTextView];
    [messageTextView4 setTextColor:color];

    textProperties3 = [v6 textProperties];
    adjustsFontForContentSizeCategory = [textProperties3 adjustsFontForContentSizeCategory];
    messageTextView5 = [(HUCollectionTextViewCell *)self messageTextView];
    [messageTextView5 setAdjustsFontForContentSizeCategory:adjustsFontForContentSizeCategory];
  }
}

@end