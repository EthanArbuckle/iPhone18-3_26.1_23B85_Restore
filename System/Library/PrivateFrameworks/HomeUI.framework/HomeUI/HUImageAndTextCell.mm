@interface HUImageAndTextCell
- (CGSize)imageViewRecommendedSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HUImageAndTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_resetContentConstraints;
- (void)prepareForReuse;
- (void)setImageViewRecommendedSize:(CGSize)size;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUImageAndTextCell

- (HUImageAndTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34.receiver = self;
  v34.super_class = HUImageAndTextCell;
  v4 = [(HUImageAndTextCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    messageTextView = v4->_messageTextView;
    v4->_messageTextView = v5;

    messageTextView = [(HUImageAndTextCell *)v4 messageTextView];
    [messageTextView setTranslatesAutoresizingMaskIntoConstraints:0];

    messageTextView2 = [(HUImageAndTextCell *)v4 messageTextView];
    [messageTextView2 setEditable:0];

    messageTextView3 = [(HUImageAndTextCell *)v4 messageTextView];
    [messageTextView3 _setInteractiveTextSelectionDisabled:1];

    messageTextView4 = [(HUImageAndTextCell *)v4 messageTextView];
    [messageTextView4 setScrollEnabled:0];

    messageTextView5 = [(HUImageAndTextCell *)v4 messageTextView];
    textContainer = [messageTextView5 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    messageTextView6 = [(HUImageAndTextCell *)v4 messageTextView];
    [messageTextView6 setBackgroundColor:clearColor];

    v15 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v17 = *(MEMORY[0x277D768C8] + 16);
    v18 = *(MEMORY[0x277D768C8] + 24);
    messageTextView7 = [(HUImageAndTextCell *)v4 messageTextView];
    [messageTextView7 setTextContainerInset:{v15, v16, v17, v18}];

    messageTextView8 = [(HUImageAndTextCell *)v4 messageTextView];
    LODWORD(v21) = 1148846080;
    [messageTextView8 setContentCompressionResistancePriority:1 forAxis:v21];

    messageTextView9 = [(HUImageAndTextCell *)v4 messageTextView];
    LODWORD(v23) = 1132068864;
    [messageTextView9 setContentHuggingPriority:1 forAxis:v23];

    contentView = [(HUImageAndTextCell *)v4 contentView];
    messageTextView10 = [(HUImageAndTextCell *)v4 messageTextView];
    [contentView addSubview:messageTextView10];

    v26 = objc_opt_new();
    infoImageViewTrailingMarginLayoutGuide = v4->_infoImageViewTrailingMarginLayoutGuide;
    v4->_infoImageViewTrailingMarginLayoutGuide = v26;

    v28 = objc_opt_new();
    infoImageView = v4->_infoImageView;
    v4->_infoImageView = v28;

    infoImageView = [(HUImageAndTextCell *)v4 infoImageView];
    [infoImageView setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView2 = [(HUImageAndTextCell *)v4 contentView];
    infoImageView2 = [(HUImageAndTextCell *)v4 infoImageView];
    [contentView2 addSubview:infoImageView2];

    [(HUImageAndTextCell *)v4 setImageViewRecommendedSize:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    [(HUImageAndTextCell *)v4 setBackgroundColor:0];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUImageAndTextCell;
  [(HUImageAndTextCell *)&v3 prepareForReuse];
  [(HUImageAndTextCell *)self setItem:0];
  [(HUImageAndTextCell *)self setImageViewRecommendedSize:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
  [(HUImageAndTextCell *)self updateUIWithAnimation:0];
}

- (void)setImageViewRecommendedSize:(CGSize)size
{
  if (size.width != self->_imageViewRecommendedSize.width || size.height != self->_imageViewRecommendedSize.height)
  {
    self->_imageViewRecommendedSize = size;
    [(HUImageAndTextCell *)self _resetContentConstraints];
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUImageAndTextCell *)self item];

  if (item)
  {
    objc_opt_class();
    item2 = [(HUImageAndTextCell *)self item];
    latestResults = [item2 latestResults];
    v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    identifier = [v9 identifier];

    if (identifier)
    {
      v10 = HUImageNamed(identifier);
    }

    else
    {
      v10 = 0;
    }

    infoImageView = [(HUImageAndTextCell *)self infoImageView];
    [infoImageView setImage:v10];

    infoImageView2 = [(HUImageAndTextCell *)self infoImageView];
    [infoImageView2 setContentMode:1];

    item3 = [(HUImageAndTextCell *)self item];
    latestResults2 = [item3 latestResults];
    v18 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

    if ([v18 prefersDynamicString])
    {
      messageTextView = [(HUImageAndTextCell *)self messageTextView];
      [messageTextView bounds];
      messageTextView3 = [v18 dynamicStringForSize:MEMORY[0x277CBEC10] attributes:{v20, v21}];
      messageTextView2 = [(HUImageAndTextCell *)self messageTextView];
      [messageTextView2 setAttributedText:messageTextView3];
    }

    else
    {
      messageTextView = [v18 stringWithAttributes:MEMORY[0x277CBEC10]];
      messageTextView3 = [(HUImageAndTextCell *)self messageTextView];
      [messageTextView3 setAttributedText:messageTextView];
    }

    [(HUImageAndTextCell *)self _resetContentConstraints];
    messageTextView4 = [(HUImageAndTextCell *)self messageTextView];
    [messageTextView4 invalidateIntrinsicContentSize];

    [(HUImageAndTextCell *)self invalidateIntrinsicContentSize];
  }

  else
  {
    infoImageView3 = [(HUImageAndTextCell *)self infoImageView];
    [infoImageView3 setImage:0];

    messageTextView5 = [(HUImageAndTextCell *)self messageTextView];
    [messageTextView5 setAttributedText:0];

    messageTextView6 = [(HUImageAndTextCell *)self messageTextView];
    [messageTextView6 setText:0];

    [(HUImageAndTextCell *)self _resetContentConstraints];
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(HUImageAndTextCell *)self layoutMargins];
  v11 = v10;
  [(HUImageAndTextCell *)self layoutMargins];
  v13 = width - (v11 + v12);
  infoImageView = [(HUImageAndTextCell *)self infoImageView];
  image = [infoImageView image];

  if (image)
  {
    v16 = MEMORY[0x277D76C80];
    [(HUImageAndTextCell *)self imageViewRecommendedSize];
    if (v18 == *(MEMORY[0x277CBF390] + 16) && v17 == *(MEMORY[0x277CBF390] + 24))
    {
      infoImageView2 = [(HUImageAndTextCell *)self infoImageView];
      image2 = [infoImageView2 image];
      [image2 size];
      v21 = v24;
    }

    else
    {
      [(HUImageAndTextCell *)self imageViewRecommendedSize];
      v21 = v20;
    }

    height = *(v16 + 8);
    v13 = v13 - v21 + -24.0;
  }

  messageTextView = [(HUImageAndTextCell *)self messageTextView];
  *&v26 = priority;
  *&v27 = fittingPriority;
  [messageTextView systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:height verticalFittingPriority:{v26, v27}];
  v29 = v28;
  v31 = v30;

  v32 = v29;
  v33 = v31;
  result.height = v33;
  result.width = v32;
  return result;
}

- (void)_resetContentConstraints
{
  v68[5] = *MEMORY[0x277D85DE8];
  v3 = 0x277CCA000uLL;
  v4 = MEMORY[0x277CCAAD0];
  contentConstraints = [(HUImageAndTextCell *)self contentConstraints];
  [v4 deactivateConstraints:contentConstraints];

  v6 = objc_opt_new();
  infoImageView = [(HUImageAndTextCell *)self infoImageView];
  image = [infoImageView image];

  contentView = [(HUImageAndTextCell *)self contentView];
  infoImageViewTrailingMarginLayoutGuide = [(HUImageAndTextCell *)self infoImageViewTrailingMarginLayoutGuide];
  if (image)
  {
    [contentView addLayoutGuide:infoImageViewTrailingMarginLayoutGuide];

    [(HUImageAndTextCell *)self imageViewRecommendedSize];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __46__HUImageAndTextCell__resetContentConstraints__block_invoke;
    v67[3] = &unk_277DB8928;
    v67[5] = v11;
    v67[6] = v12;
    v67[4] = self;
    v66 = __46__HUImageAndTextCell__resetContentConstraints__block_invoke(v67);
    infoImageView2 = [(HUImageAndTextCell *)self infoImageView];
    topAnchor = [infoImageView2 topAnchor];
    messageTextView = [(HUImageAndTextCell *)self messageTextView];
    topAnchor2 = [messageTextView topAnchor];
    v61 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v68[0] = v61;
    infoImageView3 = [(HUImageAndTextCell *)self infoImageView];
    leadingAnchor = [infoImageView3 leadingAnchor];
    layoutMarginsGuide = [(HUImageAndTextCell *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v68[1] = v56;
    infoImageViewTrailingMarginLayoutGuide2 = [(HUImageAndTextCell *)self infoImageViewTrailingMarginLayoutGuide];
    leadingAnchor3 = [infoImageViewTrailingMarginLayoutGuide2 leadingAnchor];
    infoImageView4 = [(HUImageAndTextCell *)self infoImageView];
    trailingAnchor = [infoImageView4 trailingAnchor];
    v50 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
    v68[2] = v50;
    infoImageViewTrailingMarginLayoutGuide3 = [(HUImageAndTextCell *)self infoImageViewTrailingMarginLayoutGuide];
    widthAnchor = [infoImageViewTrailingMarginLayoutGuide3 widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:24.0];
    v68[3] = v15;
    messageTextView2 = [(HUImageAndTextCell *)self messageTextView];
    leadingAnchor4 = [messageTextView2 leadingAnchor];
    infoImageViewTrailingMarginLayoutGuide4 = [(HUImageAndTextCell *)self infoImageViewTrailingMarginLayoutGuide];
    [infoImageViewTrailingMarginLayoutGuide4 trailingAnchor];
    v20 = v19 = v6;
    v21 = [leadingAnchor4 constraintEqualToAnchor:v20];
    v68[4] = v21;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:5];

    v6 = v19;
    v3 = 0x277CCA000;

    [v19 addObjectsFromArray:v51];
    [v19 addObjectsFromArray:v66];
  }

  else
  {
    [contentView removeLayoutGuide:infoImageViewTrailingMarginLayoutGuide];

    messageTextView3 = [(HUImageAndTextCell *)self messageTextView];
    leadingAnchor5 = [messageTextView3 leadingAnchor];
    layoutMarginsGuide2 = [(HUImageAndTextCell *)self layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide2 leadingAnchor];
    v26 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

    [v6 addObject:v26];
    layoutMarginsGuide3 = [(HUImageAndTextCell *)self layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    messageTextView4 = [(HUImageAndTextCell *)self messageTextView];
    trailingAnchor3 = [messageTextView4 trailingAnchor];
    v31 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [v6 addObject:v31];
  }

  contentView2 = [(HUImageAndTextCell *)self contentView];
  topAnchor3 = [contentView2 topAnchor];
  messageTextView5 = [(HUImageAndTextCell *)self messageTextView];
  topAnchor4 = [messageTextView5 topAnchor];
  v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v6 addObject:v36];

  contentView3 = [(HUImageAndTextCell *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  messageTextView6 = [(HUImageAndTextCell *)self messageTextView];
  bottomAnchor2 = [messageTextView6 bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v6 addObject:v41];

  contentView4 = [(HUImageAndTextCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
  messageTextView7 = [(HUImageAndTextCell *)self messageTextView];
  trailingAnchor5 = [messageTextView7 trailingAnchor];
  v47 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  [v6 addObject:v47];

  [(HUImageAndTextCell *)self setContentConstraints:v6];
  v48 = *(v3 + 2768);
  contentConstraints2 = [(HUImageAndTextCell *)self contentConstraints];
  [v48 activateConstraints:contentConstraints2];
}

id __46__HUImageAndTextCell__resetContentConstraints__block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v1 = *(MEMORY[0x277CBF390] + 16) == *(a1 + 40) && *(MEMORY[0x277CBF390] + 24) == *(a1 + 48);
  if (v1 || ([*(a1 + 32) infoImageView], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "image"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = [*(a1 + 32) infoImageView];
    v6 = [v5 widthAnchor];
    v7 = [v6 constraintEqualToConstant:*(a1 + 40)];
    v13[0] = v7;
    v8 = [*(a1 + 32) infoImageView];
    v9 = [v8 heightAnchor];
    v10 = [v9 constraintEqualToConstant:*(a1 + 48)];
    v13[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  return v11;
}

- (CGSize)imageViewRecommendedSize
{
  width = self->_imageViewRecommendedSize.width;
  height = self->_imageViewRecommendedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end