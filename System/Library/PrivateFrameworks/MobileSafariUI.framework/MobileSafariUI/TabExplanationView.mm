@interface TabExplanationView
- (CGRect)labelsContainerFrame;
- (TabExplanationView)initWithVariant:(unint64_t)variant query:(id)query;
- (id)_basicLabel;
- (void)_updateLabelBlendMode;
- (void)setQuery:(id)query;
- (void)setVariant:(unint64_t)variant query:(id)query;
- (void)updateConstraints;
@end

@implementation TabExplanationView

- (id)_basicLabel
{
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setTextAlignment:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setOpaque:0];
  v5 = [MEMORY[0x277D75348] sf_colorNamed:@"TabExplanationLabelColor"];
  [v3 setTextColor:v5];

  v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2A8]];
  layer = [v3 layer];
  [layer setCompositingFilter:v6];

  return v3;
}

- (TabExplanationView)initWithVariant:(unint64_t)variant query:(id)query
{
  v78[4] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v74.receiver = self;
  v74.super_class = TabExplanationView;
  v7 = [(TabExplanationView *)&v74 initWithFrame:0.0, 0.0, 320.0, 300.0];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    labelsContainer = v7->_labelsContainer;
    v7->_labelsContainer = v9;

    [(UIView *)v7->_labelsContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)v7->_labelsContainer layer];
    [layer setAllowsGroupBlending:0];

    [(TabExplanationView *)v7 addSubview:v7->_labelsContainer];
    _basicLabel = [(TabExplanationView *)v7 _basicLabel];
    title = v7->_title;
    v7->_title = _basicLabel;

    v14 = v7->_title;
    [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76A08]];
    v15 = v72 = queryCopy;
    [MEMORY[0x277D74300] systemFontOfSize:27.0];
    v16 = v73 = variant;
    v17 = [v15 scaledFontForFont:v16];
    [(UILabel *)v14 setFont:v17];

    [(UILabel *)v7->_title setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v7->_title setNumberOfLines:0];
    [(UIView *)v7->_labelsContainer addSubview:v7->_title];
    _basicLabel2 = [(TabExplanationView *)v7 _basicLabel];
    message = v7->_message;
    v7->_message = _basicLabel2;

    v20 = v7->_message;
    v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v7->_message setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v7->_message setNumberOfLines:0];
    [(UIView *)v7->_labelsContainer addSubview:v7->_message];
    [(TabExplanationView *)v7 _updateLabelBlendMode];
    v22 = [MEMORY[0x277CCAAD0] constraintWithItem:v7->_labelsContainer attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
    [(TabExplanationView *)v7 addConstraint:v22];

    v23 = [MEMORY[0x277CCAAD0] constraintWithItem:v7->_labelsContainer attribute:10 relatedBy:0 toItem:v7 attribute:10 multiplier:1.0 constant:0.0];
    [(TabExplanationView *)v7 addConstraint:v23];

    v65 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIView *)v7->_labelsContainer leadingAnchor];
    leadingAnchor2 = [(TabExplanationView *)v7 leadingAnchor];
    v68 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v78[0] = v68;
    trailingAnchor = [(UIView *)v7->_labelsContainer trailingAnchor];
    trailingAnchor2 = [(TabExplanationView *)v7 trailingAnchor];
    v24 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v78[1] = v24;
    topAnchor = [(UIView *)v7->_labelsContainer topAnchor];
    topAnchor2 = [(TabExplanationView *)v7 topAnchor];
    v27 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v78[2] = v27;
    bottomAnchor = [(UIView *)v7->_labelsContainer bottomAnchor];
    bottomAnchor2 = [(TabExplanationView *)v7 bottomAnchor];
    v30 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v78[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:4];
    [v65 activateConstraints:v31];

    v71 = _NSDictionaryOfVariableBindings(@"_labelsContainer", v7->_labelsContainer, 0);
    v32 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(>=horizontalPadding)-[_labelsContainer]-(>=horizontalPadding)-|" options:0 metrics:&unk_2827FC370 views:v71];
    defaultHorizontalPaddingConstraints = v7->_defaultHorizontalPaddingConstraints;
    v7->_defaultHorizontalPaddingConstraints = v32;

    v34 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[_labelsContainer]-|" options:0 metrics:0 views:v71];
    accessibilityHorizontalPaddingConstraints = v7->_accessibilityHorizontalPaddingConstraints;
    v7->_accessibilityHorizontalPaddingConstraints = v34;

    topAnchor3 = [(UILabel *)v7->_message topAnchor];
    bottomAnchor3 = [(UILabel *)v7->_title bottomAnchor];
    v38 = 18.0;
    if (v73 == 2)
    {
      v38 = 10.0;
    }

    v39 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:v38];
    spaceBetweenTitleAndMessageConstraint = v7->_spaceBetweenTitleAndMessageConstraint;
    v7->_spaceBetweenTitleAndMessageConstraint = v39;

    [(NSLayoutConstraint *)v7->_spaceBetweenTitleAndMessageConstraint setActive:1];
    v41 = v7->_labelsContainer;
    v42 = [MEMORY[0x277CCAAD0] constraintWithItem:v7->_title attribute:3 relatedBy:0 toItem:v41 attribute:3 multiplier:1.0 constant:0.0];
    [(UIView *)v41 addConstraint:v42];

    v43 = v7->_labelsContainer;
    v44 = [MEMORY[0x277CCAAD0] constraintWithItem:v7->_message attribute:4 relatedBy:0 toItem:v43 attribute:4 multiplier:1.0 constant:0.0];
    [(UIView *)v43 addConstraint:v44];

    v45 = MEMORY[0x277CCAAD0];
    widthAnchor = [(UIView *)v7->_labelsContainer widthAnchor];
    v47 = [widthAnchor constraintGreaterThanOrEqualToConstant:124.0];
    v77[0] = v47;
    widthAnchor2 = [(UIView *)v7->_labelsContainer widthAnchor];
    v49 = [widthAnchor2 constraintLessThanOrEqualToConstant:439.0];
    v77[1] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
    [v45 activateConstraints:v50];

    v51 = v7->_labelsContainer;
    v52 = MEMORY[0x277CCAAD0];
    v53 = _NSDictionaryOfVariableBindings(@"_title", v7->_title, 0);
    v54 = [v52 constraintsWithVisualFormat:@"H:|[_title]|" options:0 metrics:0 views:v53];
    [(UIView *)v51 addConstraints:v54];

    v55 = v7->_labelsContainer;
    v56 = MEMORY[0x277CCAAD0];
    v57 = _NSDictionaryOfVariableBindings(@"_message", v7->_message, 0);
    v58 = [v56 constraintsWithVisualFormat:@"H:|[_message]|" options:0 metrics:0 views:v57];
    [(UIView *)v55 addConstraints:v58];

    queryCopy = v72;
    [(TabExplanationView *)v7 setVariant:v73 query:v72];
    v76 = objc_opt_class();
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
    v60 = [(TabExplanationView *)v7 registerForTraitChanges:v59 withTarget:v7 action:sel_setNeedsUpdateConstraints];

    v75 = objc_opt_class();
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    v62 = [(TabExplanationView *)v7 registerForTraitChanges:v61 withTarget:v7 action:sel__updateLabelBlendMode];

    v63 = v7;
  }

  return v7;
}

- (void)setVariant:(unint64_t)variant query:(id)query
{
  queryCopy = query;
  self->_variant = variant;
  v10 = queryCopy;
  if (variant == 2 || variant == 1)
  {
    v7 = _WBSLocalizedString();
  }

  else
  {
    v7 = 0;
  }

  [(UILabel *)self->_title setText:v7];

  v8 = 18.0;
  if (variant == 2)
  {
    v8 = 10.0;
  }

  [(NSLayoutConstraint *)self->_spaceBetweenTitleAndMessageConstraint setConstant:v8];
  v9 = messageForVariant(variant, v10);
  [(UILabel *)self->_message setText:v9];
}

- (void)setQuery:(id)query
{
  v4 = messageForVariant(self->_variant, query);
  [(UILabel *)self->_message setText:v4];
}

- (CGRect)labelsContainerFrame
{
  [(UIView *)self->_labelsContainer frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = TabExplanationView;
  [(TabExplanationView *)&v6 updateConstraints];
  traitCollection = [(TabExplanationView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [MEMORY[0x277CCAAD0] sf_setConstraints:self->_accessibilityHorizontalPaddingConstraints active:IsAccessibilityCategory];
  [MEMORY[0x277CCAAD0] sf_setConstraints:self->_defaultHorizontalPaddingConstraints active:IsAccessibilityCategory ^ 1];
}

- (void)_updateLabelBlendMode
{
  traitCollection = [(TabExplanationView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v5 = MEMORY[0x277CDA298];
  if (userInterfaceStyle == 2)
  {
    v5 = MEMORY[0x277CDA2A8];
  }

  v8 = [MEMORY[0x277CD9EA0] filterWithType:*v5];
  layer = [(UILabel *)self->_title layer];
  [layer setCompositingFilter:v8];

  layer2 = [(UILabel *)self->_message layer];
  [layer2 setCompositingFilter:v8];
}

@end