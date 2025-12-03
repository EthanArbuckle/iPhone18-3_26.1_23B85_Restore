@interface HUStatusDetailsTitleDescriptionCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (HFStringGenerator)descriptionText;
- (HFStringGenerator)titleText;
- (HUStatusDetailsTitleDescriptionCell)initWithFrame:(CGRect)frame;
- (void)_layoutContentApplyingFrames:(BOOL)frames forTargetSize:(CGSize)size desiredSize:(CGSize *)desiredSize;
- (void)layoutSubviews;
- (void)setDescriptionText:(id)text;
- (void)setLayoutOptions:(id)options;
- (void)setTitleText:(id)text;
@end

@implementation HUStatusDetailsTitleDescriptionCell

- (HUStatusDetailsTitleDescriptionCell)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = HUStatusDetailsTitleDescriptionCell;
  v3 = [(HUStatusDetailsTitleDescriptionCell *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUStatusDetailsTitleDescriptionCell *)v3 setTitleLabel:v4];

    titleLabel = [(HUStatusDetailsTitleDescriptionCell *)v3 titleLabel];
    [titleLabel setNumberOfLines:0];

    contentView = [(HUStatusDetailsTitleDescriptionCell *)v3 contentView];
    titleLabel2 = [(HUStatusDetailsTitleDescriptionCell *)v3 titleLabel];
    [contentView addSubview:titleLabel2];

    v8 = objc_alloc(MEMORY[0x277D75C40]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUStatusDetailsTitleDescriptionCell *)v3 setDescriptionTextView:v9];

    descriptionTextView = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [descriptionTextView setDelegate:v3];

    descriptionTextView2 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [descriptionTextView2 setEditable:0];

    descriptionTextView3 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [descriptionTextView3 _setInteractiveTextSelectionDisabled:1];

    descriptionTextView4 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [descriptionTextView4 setScrollEnabled:0];

    descriptionTextView5 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [descriptionTextView5 setBackgroundColor:0];

    v15 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v17 = *(MEMORY[0x277D768C8] + 16);
    v18 = *(MEMORY[0x277D768C8] + 24);
    descriptionTextView6 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [descriptionTextView6 setTextContainerInset:{v15, v16, v17, v18}];

    descriptionTextView7 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    textContainer = [descriptionTextView7 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    contentView2 = [(HUStatusDetailsTitleDescriptionCell *)v3 contentView];
    descriptionTextView8 = [(HUStatusDetailsTitleDescriptionCell *)v3 descriptionTextView];
    [contentView2 addSubview:descriptionTextView8];
  }

  return v3;
}

- (HFStringGenerator)titleText
{
  titleLabel = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
  attributedText = [titleLabel attributedText];

  return attributedText;
}

- (void)setTitleText:(id)text
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [text stringWithAttributes:MEMORY[0x277CBEC10]];
  string = [v4 string];
  localizedUppercaseString = [string localizedUppercaseString];

  v7 = objc_alloc(MEMORY[0x277CCA898]);
  v12 = *MEMORY[0x277D740C0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v13[0] = systemGrayColor;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v7 initWithString:localizedUppercaseString attributes:v9];
  titleLabel = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
  [titleLabel setAttributedText:v10];
}

- (HFStringGenerator)descriptionText
{
  descriptionTextView = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
  attributedText = [descriptionTextView attributedText];

  return attributedText;
}

- (void)setDescriptionText:(id)text
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D756E0];
  textCopy = text;
  prominentInsetGroupedHeaderConfiguration = [v4 prominentInsetGroupedHeaderConfiguration];
  v14[0] = *MEMORY[0x277D740A8];
  secondaryTextProperties = [prominentInsetGroupedHeaderConfiguration secondaryTextProperties];
  font = [secondaryTextProperties font];
  v15[0] = font;
  v14[1] = *MEMORY[0x277D740C0];
  secondaryTextProperties2 = [prominentInsetGroupedHeaderConfiguration secondaryTextProperties];
  color = [secondaryTextProperties2 color];
  v15[1] = color;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [textCopy stringWithAttributes:v11];

  descriptionTextView = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
  [descriptionTextView setAttributedText:v12];
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if (([optionsCopy isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, options);
    layoutOptions = [(HUStatusDetailsTitleDescriptionCell *)self layoutOptions];
    sectionHeaderFont = [layoutOptions sectionHeaderFont];
    titleLabel = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
    [titleLabel setFont:sectionHeaderFont];

    [(HUStatusDetailsTitleDescriptionCell *)self invalidateIntrinsicContentSize];
    [(HUStatusDetailsTitleDescriptionCell *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5 = *MEMORY[0x277CBF3A8];
  [(HUStatusDetailsTitleDescriptionCell *)self _layoutContentApplyingFrames:0 forTargetSize:&v5 desiredSize:fits.width, fits.height];
  v4 = *(&v5 + 1);
  v3 = *&v5;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_layoutContentApplyingFrames:(BOOL)frames forTargetSize:(CGSize)size desiredSize:(CGSize *)desiredSize
{
  height = size.height;
  width = size.width;
  framesCopy = frames;
  v10 = *MEMORY[0x277CBF348];
  titleLabel = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
  [titleLabel sizeThatFits:{width, height}];
  v13 = v12;

  layoutOptions = [(HUStatusDetailsTitleDescriptionCell *)self layoutOptions];
  [layoutOptions sectionTitleMargin];
  v16 = v15;

  if (framesCopy)
  {
    titleLabel2 = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
    [titleLabel2 setFrame:{v10, v16, width, v13}];
  }

  descriptionTextView = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
  font = [descriptionTextView font];
  [font _scaledValueForValue:20.0];
  v21 = HURoundToScreenScale(v20);

  titleLabel3 = [(HUStatusDetailsTitleDescriptionCell *)self titleLabel];
  font2 = [titleLabel3 font];
  [font2 descender];
  v25 = v13 + v16 + v24;

  descriptionTextView2 = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
  font3 = [descriptionTextView2 font];

  descriptionTextView3 = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
  [descriptionTextView3 sizeThatFits:{width, height}];
  v29 = v28;

  [font3 ascender];
  v31 = v21 + v25 - v30;
  if (framesCopy)
  {
    descriptionTextView4 = [(HUStatusDetailsTitleDescriptionCell *)self descriptionTextView];
    [descriptionTextView4 setFrame:{v10, v31, width, v29}];
  }

  v33 = font3;
  if (desiredSize)
  {
    v46.origin.x = v10;
    v46.origin.y = v16;
    v46.size.width = width;
    v46.size.height = v13;
    v50.origin.x = v10;
    v50.origin.y = v31;
    v50.size.width = width;
    v50.size.height = v29;
    v47 = CGRectUnion(v46, v50);
    x = v47.origin.x;
    y = v47.origin.y;
    v36 = v47.size.width;
    v47.origin.x = v10;
    v47.origin.y = v31;
    v47.size.width = width;
    v47.size.height = v29;
    MaxY = CGRectGetMaxY(v47);
    [font3 lineHeight];
    v39 = v38;
    [font3 ascender];
    v41 = MaxY - (v39 - v40) + 14.0;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = v36;
    v48.size.height = v41;
    MaxX = CGRectGetMaxX(v48);
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = v36;
    v49.size.height = v41;
    v43 = CGRectGetMaxY(v49);
    v33 = font3;
    desiredSize->width = MaxX;
    desiredSize->height = v43;
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUStatusDetailsTitleDescriptionCell;
  [(HUStatusDetailsTitleDescriptionCell *)&v5 layoutSubviews];
  [(HUStatusDetailsTitleDescriptionCell *)self bounds];
  [(HUStatusDetailsTitleDescriptionCell *)self _layoutContentApplyingFrames:1 forTargetSize:0 desiredSize:v3, v4];
}

@end