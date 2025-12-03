@interface HUGridActionSetTitleAndDescriptionView
- (HUGridActionSetTitleAndDescriptionView)initWithFrame:(CGRect)frame titleLabelSuperview:(id)superview;
- (void)setTitleAndDescriptionLabelTintColor:(id)color;
- (void)setTitleDescriptionLineSpacing:(double)spacing;
- (void)updateConstraints;
- (void)updateTitleText:(id)text descriptionText:(id)descriptionText;
@end

@implementation HUGridActionSetTitleAndDescriptionView

- (HUGridActionSetTitleAndDescriptionView)initWithFrame:(CGRect)frame titleLabelSuperview:(id)superview
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  superviewCopy = superview;
  v23.receiver = self;
  v23.super_class = HUGridActionSetTitleAndDescriptionView;
  height = [(HUGridActionSetTitleAndDescriptionView *)&v23 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUGridActionSetTitleAndDescriptionView *)height setTitleLabel:v11];

    titleLabel = [(HUGridActionSetTitleAndDescriptionView *)height titleLabel];
    [superviewCopy addSubview:titleLabel];

    titleLabel2 = [(HUGridActionSetTitleAndDescriptionView *)height titleLabel];
    [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel3 = [(HUGridActionSetTitleAndDescriptionView *)height titleLabel];
    [titleLabel3 setNumberOfLines:1];

    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    titleLabel4 = [(HUGridActionSetTitleAndDescriptionView *)height titleLabel];
    [titleLabel4 setTextColor:systemBlackColor];

    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUGridActionSetTitleAndDescriptionView *)height setDescriptionLabel:v17];

    descriptionLabel = [(HUGridActionSetTitleAndDescriptionView *)height descriptionLabel];
    [(HUGridActionSetTitleAndDescriptionView *)height addSubview:descriptionLabel];

    descriptionLabel2 = [(HUGridActionSetTitleAndDescriptionView *)height descriptionLabel];
    [descriptionLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    descriptionLabel3 = [(HUGridActionSetTitleAndDescriptionView *)height descriptionLabel];
    [descriptionLabel3 setNumberOfLines:1];

    descriptionLabel4 = [(HUGridActionSetTitleAndDescriptionView *)height descriptionLabel];
    [descriptionLabel4 setHidden:1];
  }

  return height;
}

- (void)updateTitleText:(id)text descriptionText:(id)descriptionText
{
  textCopy = text;
  descriptionTextCopy = descriptionText;
  titleLabel = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
  attributedText = [titleLabel attributedText];
  if ([textCopy isEqualToAttributedString:attributedText])
  {
    descriptionLabel = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
    attributedText2 = [descriptionLabel attributedText];
    v11 = [descriptionTextCopy isEqualToAttributedString:attributedText2];

    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  titleLabel2 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
  [titleLabel2 setAttributedText:textCopy];

  descriptionLabel2 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  [descriptionLabel2 setAttributedText:descriptionTextCopy];

  descriptionLabel3 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  isHidden = [descriptionLabel3 isHidden];

  descriptionLabel4 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  text = [descriptionLabel4 text];
  v18 = [text length] == 0;
  descriptionLabel5 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  [descriptionLabel5 setHidden:v18];

  descriptionLabel6 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  LODWORD(text) = [descriptionLabel6 isHidden];

  if (isHidden != text)
  {
    titleAndDescriptionConstraints = [(HUGridActionSetTitleAndDescriptionView *)self titleAndDescriptionConstraints];

    if (titleAndDescriptionConstraints)
    {
      v22 = MEMORY[0x277CCAAD0];
      titleAndDescriptionConstraints2 = [(HUGridActionSetTitleAndDescriptionView *)self titleAndDescriptionConstraints];
      [v22 deactivateConstraints:titleAndDescriptionConstraints2];
    }

    [(HUGridActionSetTitleAndDescriptionView *)self setTitleAndDescriptionConstraints:0];
    [(HUGridActionSetTitleAndDescriptionView *)self setTitleDescriptionSpacingConstraint:0];
    [(HUGridActionSetTitleAndDescriptionView *)self setNeedsUpdateConstraints];
  }

LABEL_9:
}

- (void)setTitleDescriptionLineSpacing:(double)spacing
{
  self->_titleDescriptionLineSpacing = spacing;
  titleDescriptionSpacingConstraint = [(HUGridActionSetTitleAndDescriptionView *)self titleDescriptionSpacingConstraint];
  [titleDescriptionSpacingConstraint setConstant:spacing];
}

- (void)setTitleAndDescriptionLabelTintColor:(id)color
{
  colorCopy = color;
  titleLabel = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
  [titleLabel setTextColor:colorCopy];

  descriptionLabel = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
  [descriptionLabel setTextColor:colorCopy];
}

- (void)updateConstraints
{
  titleAndDescriptionConstraints = [(HUGridActionSetTitleAndDescriptionView *)self titleAndDescriptionConstraints];

  if (!titleAndDescriptionConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    titleLabel = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
    leadingAnchor = [titleLabel leadingAnchor];
    leadingAnchor2 = [(HUGridActionSetTitleAndDescriptionView *)self leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v8];

    titleLabel2 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
    trailingAnchor = [titleLabel2 trailingAnchor];
    trailingAnchor2 = [(HUGridActionSetTitleAndDescriptionView *)self trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v12];

    descriptionLabel = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
    leadingAnchor3 = [descriptionLabel leadingAnchor];
    leadingAnchor4 = [(HUGridActionSetTitleAndDescriptionView *)self leadingAnchor];
    v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array addObject:v16];

    descriptionLabel2 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
    trailingAnchor3 = [descriptionLabel2 trailingAnchor];
    trailingAnchor4 = [(HUGridActionSetTitleAndDescriptionView *)self trailingAnchor];
    v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [array addObject:v20];

    titleLabel3 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
    topAnchor = [titleLabel3 topAnchor];
    topAnchor2 = [(HUGridActionSetTitleAndDescriptionView *)self topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v24];

    descriptionLabel3 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
    LODWORD(topAnchor) = [descriptionLabel3 isHidden];

    if (topAnchor)
    {
      titleLabel4 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
      bottomAnchor = [titleLabel4 bottomAnchor];
      bottomAnchor2 = [(HUGridActionSetTitleAndDescriptionView *)self bottomAnchor];
      v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [array addObject:v29];
    }

    else
    {
      descriptionLabel4 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
      bottomAnchor3 = [descriptionLabel4 bottomAnchor];
      bottomAnchor4 = [(HUGridActionSetTitleAndDescriptionView *)self bottomAnchor];
      v33 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [array addObject:v33];

      shouldUseControlCenterMaterials = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];
      descriptionLabel5 = [(HUGridActionSetTitleAndDescriptionView *)self descriptionLabel];
      firstBaselineAnchor = [descriptionLabel5 firstBaselineAnchor];
      titleLabel5 = [(HUGridActionSetTitleAndDescriptionView *)self titleLabel];
      lastBaselineAnchor = [titleLabel5 lastBaselineAnchor];
      if (shouldUseControlCenterMaterials)
      {
        [(HUGridActionSetTitleAndDescriptionView *)self titleDescriptionLineSpacing];
        [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
      }

      else
      {
        [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
      }
      v39 = ;
      [(HUGridActionSetTitleAndDescriptionView *)self setTitleDescriptionSpacingConstraint:v39];

      titleLabel4 = [(HUGridActionSetTitleAndDescriptionView *)self titleDescriptionSpacingConstraint];
      [array addObject:titleLabel4];
    }

    [(HUGridActionSetTitleAndDescriptionView *)self setTitleAndDescriptionConstraints:array];
    v40 = MEMORY[0x277CCAAD0];
    titleAndDescriptionConstraints2 = [(HUGridActionSetTitleAndDescriptionView *)self titleAndDescriptionConstraints];
    [v40 activateConstraints:titleAndDescriptionConstraints2];
  }

  v42.receiver = self;
  v42.super_class = HUGridActionSetTitleAndDescriptionView;
  [(HUGridActionSetTitleAndDescriptionView *)&v42 updateConstraints];
}

@end