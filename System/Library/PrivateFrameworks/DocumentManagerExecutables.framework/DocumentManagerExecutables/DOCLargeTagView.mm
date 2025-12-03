@interface DOCLargeTagView
- (DOCLargeTagView)initWithFrame:(CGRect)frame;
- (void)_updateBackgroundColor;
- (void)_updateSelectionIndications;
- (void)layoutSubviews;
- (void)setSelectionType:(int64_t)type;
- (void)setTagValue:(id)value;
- (void)updateBackground;
@end

@implementation DOCLargeTagView

- (DOCLargeTagView)initWithFrame:(CGRect)frame
{
  v75[9] = *MEMORY[0x277D85DE8];
  v74.receiver = self;
  v74.super_class = DOCLargeTagView;
  v3 = [(DOCLargeTagView *)&v74 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[DOCTagAppearance pickerList];
    [v4 cellCornerRadius];
    [(DOCLargeTagView *)v3 _setContinuousCornerRadius:?];

    [(DOCLargeTagView *)v3 updateBackground];
    v5 = [[DOCTagDotView alloc] initWithDefaultTagDimension:1 adjustsSizeForContentSizeCategory:DOCDefaultTagDimension()];
    tagDotView = v3->_tagDotView;
    v3->_tagDotView = v5;

    v7 = objc_alloc_init(DOCTagCheckmarkView);
    checkmarkView = v3->_checkmarkView;
    v3->_checkmarkView = v7;

    [(DOCTagCheckmarkView *)v3->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    tagNameLabel = v3->_tagNameLabel;
    v3->_tagNameLabel = v9;

    [(UILabel *)v3->_tagNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = MEMORY[0x277D74300];
    v12 = +[DOCTagAppearance pickerList];
    titleTextStyle = [v12 titleTextStyle];
    traitCollection = [(DOCLargeTagView *)v3 traitCollection];
    v15 = [v11 preferredFontForTextStyle:titleTextStyle compatibleWithTraitCollection:traitCollection];
    [(UILabel *)v3->_tagNameLabel setFont:v15];

    [(UILabel *)v3->_tagNameLabel setAdjustsFontForContentSizeCategory:1];
    tagDotView = [(DOCLargeTagView *)v3 tagDotView];
    [(DOCLargeTagView *)v3 addSubview:tagDotView];

    tagNameLabel = [(DOCLargeTagView *)v3 tagNameLabel];
    [(DOCLargeTagView *)v3 addSubview:tagNameLabel];

    checkmarkView = [(DOCLargeTagView *)v3 checkmarkView];
    [(DOCLargeTagView *)v3 addSubview:checkmarkView];

    v19 = +[DOCTagAppearance pickerList];
    [v19 cellInteriorLayoutMargins];
    [(DOCLargeTagView *)v3 setDirectionalLayoutMargins:?];

    v55 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(DOCLargeTagView *)v3 leadingAnchor];
    tagDotView2 = [(DOCLargeTagView *)v3 tagDotView];
    leadingAnchor2 = [tagDotView2 leadingAnchor];
    v71 = +[DOCTagAppearance pickerList];
    [v71 spacing_leadingEdgeToDot];
    v69 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-v20];
    v75[0] = v69;
    tagDotView3 = [(DOCLargeTagView *)v3 tagDotView];
    trailingAnchor = [tagDotView3 trailingAnchor];
    tagNameLabel2 = [(DOCLargeTagView *)v3 tagNameLabel];
    leadingAnchor3 = [tagNameLabel2 leadingAnchor];
    v65 = +[DOCTagAppearance pickerList];
    [v65 spacing_dotToTitle];
    v63 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-v21];
    v75[1] = v63;
    tagNameLabel3 = [(DOCLargeTagView *)v3 tagNameLabel];
    trailingAnchor2 = [tagNameLabel3 trailingAnchor];
    checkmarkView2 = [(DOCLargeTagView *)v3 checkmarkView];
    leadingAnchor4 = [checkmarkView2 leadingAnchor];
    v59 = +[DOCTagAppearance pickerList];
    [v59 spacing_titleToCheckmark];
    v57 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor4 constant:-v22];
    v75[2] = v57;
    checkmarkView3 = [(DOCLargeTagView *)v3 checkmarkView];
    trailingAnchor3 = [checkmarkView3 trailingAnchor];
    trailingAnchor4 = [(DOCLargeTagView *)v3 trailingAnchor];
    v53 = +[DOCTagAppearance pickerList];
    [v53 spacing_trailingEdgeToCheckmark];
    v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v23];
    v75[3] = v51;
    tagNameLabel4 = [(DOCLargeTagView *)v3 tagNameLabel];
    firstBaselineAnchor = [tagNameLabel4 firstBaselineAnchor];
    layoutMarginsGuide = [(DOCLargeTagView *)v3 layoutMarginsGuide];
    topAnchor = [layoutMarginsGuide topAnchor];
    v46 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:0.979591837];
    v75[4] = v46;
    layoutMarginsGuide2 = [(DOCLargeTagView *)v3 layoutMarginsGuide];
    bottomAnchor = [layoutMarginsGuide2 bottomAnchor];
    tagNameLabel5 = [(DOCLargeTagView *)v3 tagNameLabel];
    lastBaselineAnchor = [tagNameLabel5 lastBaselineAnchor];
    v41 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.12];
    v75[5] = v41;
    tagDotView4 = [(DOCLargeTagView *)v3 tagDotView];
    centerYAnchor = [tagDotView4 centerYAnchor];
    tagNameLabel6 = [(DOCLargeTagView *)v3 tagNameLabel];
    centerYAnchor2 = [tagNameLabel6 centerYAnchor];
    v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v75[6] = v36;
    checkmarkView4 = [(DOCLargeTagView *)v3 checkmarkView];
    centerYAnchor3 = [checkmarkView4 centerYAnchor];
    tagNameLabel7 = [(DOCLargeTagView *)v3 tagNameLabel];
    centerYAnchor4 = [tagNameLabel7 centerYAnchor];
    v26 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v75[7] = v26;
    checkmarkView5 = [(DOCLargeTagView *)v3 checkmarkView];
    heightAnchor = [checkmarkView5 heightAnchor];
    tagDotView5 = [(DOCLargeTagView *)v3 tagDotView];
    heightAnchor2 = [tagDotView5 heightAnchor];
    v31 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 multiplier:1.25];
    v75[8] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:9];
    [v55 activateConstraints:v32];
  }

  return v3;
}

- (void)setTagValue:(id)value
{
  valueCopy = value;
  if (self->_tagValue != valueCopy)
  {
    v12 = valueCopy;
    objc_storeStrong(&self->_tagValue, value);
    tagValue = self->_tagValue;
    tagDotView = [(DOCLargeTagView *)self tagDotView];
    [tagDotView setItemTag:tagValue];

    v8 = self->_tagValue;
    checkmarkView = [(DOCLargeTagView *)self checkmarkView];
    [checkmarkView setItemTag:v8];

    displayName = [(DOCTag *)self->_tagValue displayName];
    tagNameLabel = [(DOCLargeTagView *)self tagNameLabel];
    [tagNameLabel setText:displayName];

    [(DOCLargeTagView *)self updateBackground];
    valueCopy = v12;
  }
}

- (void)setSelectionType:(int64_t)type
{
  if (self->_selectionType != type)
  {
    self->_selectionType = type;
    [(DOCLargeTagView *)self updateBackground];
  }
}

- (void)updateBackground
{
  [(DOCLargeTagView *)self _updateBackgroundColor];

  [(DOCLargeTagView *)self _updateSelectionIndications];
}

- (void)_updateBackgroundColor
{
  selectionType = [(DOCLargeTagView *)self selectionType];
  if (selectionType == 2)
  {
    v9 = +[DOCTagAppearance pickerList];
    tagValue = [(DOCLargeTagView *)self tagValue];
    v5 = v9;
    v6 = tagValue;
    v7 = 0;
LABEL_9:
    v8 = [v5 backgroundColorForTag:v6 selected:v7];
    [(DOCLargeTagView *)self setBackgroundColor:v8];

    return;
  }

  if (selectionType != 1)
  {
    if (selectionType)
    {
      return;
    }

    v9 = +[DOCTagAppearance pickerList];
    tagValue = [(DOCLargeTagView *)self tagValue];
    v5 = v9;
    v6 = tagValue;
    v7 = 1;
    goto LABEL_9;
  }

  [(DOCLargeTagView *)self setBackgroundColor:0];
}

- (void)_updateSelectionIndications
{
  checkmarkView = [(DOCLargeTagView *)self checkmarkView];
  [checkmarkView setChecked:{-[DOCLargeTagView selectionType](self, "selectionType") != 2}];

  v4 = +[DOCTagAppearance renderingAppearance];
  outlineTagsToIndicateMixedState = [v4 outlineTagsToIndicateMixedState];

  selectionType = [(DOCLargeTagView *)self selectionType];
  if (outlineTagsToIndicateMixedState)
  {
    tagDotView = [(DOCLargeTagView *)self tagDotView];
    [tagDotView setRenderedTagVariant:selectionType == 1];
  }

  else
  {
    layer = [(DOCLargeTagView *)self layer];
    tagDotView = layer;
    if (selectionType == 1)
    {
      [layer setBorderWidth:2.0];

      tagDotView = [(DOCLargeTagView *)self tagValue];
      tagBackgroundColor = [tagDotView tagBackgroundColor];
      cGColor = [tagBackgroundColor CGColor];
      layer2 = [(DOCLargeTagView *)self layer];
      [layer2 setBorderColor:cGColor];
    }

    else
    {
      [layer setBorderWidth:0.0];
    }
  }
}

- (void)layoutSubviews
{
  [(DOCLargeTagView *)self updateBackground];
  v3.receiver = self;
  v3.super_class = DOCLargeTagView;
  [(DOCLargeTagView *)&v3 layoutSubviews];
}

@end