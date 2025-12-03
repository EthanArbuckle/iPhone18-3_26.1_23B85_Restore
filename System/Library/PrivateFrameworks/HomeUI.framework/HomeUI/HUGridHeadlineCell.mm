@interface HUGridHeadlineCell
- (CGRect)unpaddedContentFrame;
- (HUGridHeadlineCell)initWithCoder:(id)coder;
- (HUGridHeadlineCell)initWithFrame:(CGRect)frame;
- (void)_setupCommonCellAppearance;
- (void)_updateHeadlineLabel;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)editing;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLayoutOptions:(id)options;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUGridHeadlineCell

- (HUGridHeadlineCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HUGridHeadlineCell;
  v3 = [(HUGridHeadlineCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HUGridHeadlineCell *)v3 _setupCommonCellAppearance];
  }

  return v4;
}

- (HUGridHeadlineCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUGridHeadlineCell;
  v3 = [(HUGridHeadlineCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUGridHeadlineCell *)v3 _setupCommonCellAppearance];
  }

  return v4;
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if (([optionsCopy isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, options);
    [(HUGridHeadlineCell *)self setNeedsUpdateConstraints];
    [(HUGridHeadlineCell *)self _updateHeadlineLabel];
    layoutOptions = [(HUGridHeadlineCell *)self layoutOptions];
    backgroundDisplayOptions = [layoutOptions backgroundDisplayOptions];
    editingBackgroundView = [(HUGridHeadlineCell *)self editingBackgroundView];
    [editingBackgroundView setDisplayOptions:backgroundDisplayOptions];

    layoutOptions2 = [(HUGridHeadlineCell *)self layoutOptions];
    [layoutOptions2 cellCornerRadius];
    v10 = v9;
    editingBackgroundView2 = [(HUGridHeadlineCell *)self editingBackgroundView];
    [editingBackgroundView2 setCornerRadius:v10];

    layoutOptions3 = [(HUGridHeadlineCell *)self layoutOptions];
    [layoutOptions3 cellCornerRadius];
    v14 = v13;
    editingBackgroundDarkeningView = [(HUGridHeadlineCell *)self editingBackgroundDarkeningView];
    [editingBackgroundDarkeningView _setContinuousCornerRadius:v14];
  }
}

- (void)_setupCommonCellAppearance
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HUGridHeadlineCell *)self setEditingBackgroundContainerView:v3];

  editingBackgroundContainerView = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  [editingBackgroundContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  editingBackgroundContainerView2 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  [editingBackgroundContainerView2 setHidden:1];

  editingBackgroundContainerView3 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  [editingBackgroundContainerView3 setUserInteractionEnabled:0];

  contentView = [(HUGridHeadlineCell *)self contentView];
  editingBackgroundContainerView4 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  [contentView addSubview:editingBackgroundContainerView4];

  v9 = [HUGridCellBackgroundView alloc];
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [(HUGridCellBackgroundView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], v11, v12, v13];
  [(HUGridHeadlineCell *)self setEditingBackgroundView:v14];

  editingBackgroundView = [(HUGridHeadlineCell *)self editingBackgroundView];
  layer = [editingBackgroundView layer];
  [layer setMasksToBounds:1];

  editingBackgroundView2 = [(HUGridHeadlineCell *)self editingBackgroundView];
  [editingBackgroundView2 setUserInteractionEnabled:0];

  editingBackgroundView3 = [(HUGridHeadlineCell *)self editingBackgroundView];
  [editingBackgroundView3 setAutoresizingMask:18];

  editingBackgroundContainerView5 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  editingBackgroundView4 = [(HUGridHeadlineCell *)self editingBackgroundView];
  [editingBackgroundContainerView5 addSubview:editingBackgroundView4];

  v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v11, v12, v13}];
  [(HUGridHeadlineCell *)self setEditingBackgroundDarkeningView:v21];

  v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.13];
  editingBackgroundDarkeningView = [(HUGridHeadlineCell *)self editingBackgroundDarkeningView];
  [editingBackgroundDarkeningView setBackgroundColor:v22];

  editingBackgroundDarkeningView2 = [(HUGridHeadlineCell *)self editingBackgroundDarkeningView];
  [editingBackgroundDarkeningView2 setUserInteractionEnabled:0];

  editingBackgroundDarkeningView3 = [(HUGridHeadlineCell *)self editingBackgroundDarkeningView];
  [editingBackgroundDarkeningView3 setAutoresizingMask:18];

  editingBackgroundContainerView6 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  editingBackgroundDarkeningView4 = [(HUGridHeadlineCell *)self editingBackgroundDarkeningView];
  [editingBackgroundContainerView6 addSubview:editingBackgroundDarkeningView4];

  v28 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUGridHeadlineCell *)self setHeadlineLabel:v28];

  headlineLabel = [(HUGridHeadlineCell *)self headlineLabel];
  [headlineLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  headlineLabel2 = [(HUGridHeadlineCell *)self headlineLabel];
  [headlineLabel2 setAdjustsFontSizeToFitWidth:1];

  headlineLabel3 = [(HUGridHeadlineCell *)self headlineLabel];
  [headlineLabel3 setBaselineAdjustment:1];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  headlineLabel4 = [(HUGridHeadlineCell *)self headlineLabel];
  [headlineLabel4 setTextColor:systemWhiteColor];

  headlineLabel5 = [(HUGridHeadlineCell *)self headlineLabel];
  [headlineLabel5 setUserInteractionEnabled:0];

  contentView2 = [(HUGridHeadlineCell *)self contentView];
  headlineLabel6 = [(HUGridHeadlineCell *)self headlineLabel];
  [contentView2 addSubview:headlineLabel6];

  v45 = HUImageNamed(@"dashboard-headline-edit-chevron");
  v37 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v45];
  [(HUGridHeadlineCell *)self setEditingChevronImageView:v37];

  systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
  editingChevronImageView = [(HUGridHeadlineCell *)self editingChevronImageView];
  [editingChevronImageView setTintColor:systemWhiteColor2];

  editingChevronImageView2 = [(HUGridHeadlineCell *)self editingChevronImageView];
  [editingChevronImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  editingChevronImageView3 = [(HUGridHeadlineCell *)self editingChevronImageView];
  [editingChevronImageView3 setHidden:1];

  editingChevronImageView4 = [(HUGridHeadlineCell *)self editingChevronImageView];
  [editingChevronImageView4 setUserInteractionEnabled:0];

  contentView3 = [(HUGridHeadlineCell *)self contentView];
  editingChevronImageView5 = [(HUGridHeadlineCell *)self editingChevronImageView];
  [contentView3 addSubview:editingChevronImageView5];
}

- (void)prepareForReuse
{
  [(HUGridHeadlineCell *)self setEditing:0];
  v3.receiver = self;
  v3.super_class = HUGridHeadlineCell;
  [(HUGridHeadlineCell *)&v3 prepareForReuse];
}

- (CGRect)unpaddedContentFrame
{
  headlineLabel = [(HUGridHeadlineCell *)self headlineLabel];
  [headlineLabel frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    editingCopy = editing;
    self->_editing = editing;
    editingBackgroundContainerView = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    [editingBackgroundContainerView setHidden:!editingCopy];

    editingChevronImageView = [(HUGridHeadlineCell *)self editingChevronImageView];
    [editingChevronImageView setHidden:!editingCopy];

    [(HUGridHeadlineCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = HUGridHeadlineCell;
  [(HUGridHeadlineCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__HUGridHeadlineCell_setHighlighted___block_invoke;
  v5[3] = &unk_277DB7EE0;
  v5[4] = self;
  highlightedCopy = highlighted;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.15];
}

void __37__HUGridHeadlineCell_setHighlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.75;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) editingBackgroundContainerView];
  [v3 setAlpha:v2];

  if (*(a1 + 40))
  {
    v4 = 0.75;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [*(a1 + 32) headlineLabel];
  [v5 setAlpha:v4];
}

- (void)updateConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  headlineLabel = [(HUGridHeadlineCell *)self headlineLabel];
  leadingAnchor = [headlineLabel leadingAnchor];
  contentView = [(HUGridHeadlineCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  layoutOptions = [(HUGridHeadlineCell *)self layoutOptions];
  [layoutOptions cellInnerMargin];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  [array addObject:v9];

  headlineLabel2 = [(HUGridHeadlineCell *)self headlineLabel];
  trailingAnchor = [headlineLabel2 trailingAnchor];
  contentView2 = [(HUGridHeadlineCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v14 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [array addObject:v14];

  headlineLabel3 = [(HUGridHeadlineCell *)self headlineLabel];
  firstBaselineAnchor = [headlineLabel3 firstBaselineAnchor];
  contentView3 = [(HUGridHeadlineCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  layoutOptions2 = [(HUGridHeadlineCell *)self layoutOptions];
  [layoutOptions2 headlineBaselineOffset];
  v21 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:-v20];
  [array addObject:v21];

  if ([(HUGridHeadlineCell *)self isEditing])
  {
    headlineLabel4 = [(HUGridHeadlineCell *)self headlineLabel];
    trailingAnchor3 = [headlineLabel4 trailingAnchor];
    editingChevronImageView = [(HUGridHeadlineCell *)self editingChevronImageView];
    leadingAnchor3 = [editingChevronImageView leadingAnchor];
    v26 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor3];
    [array addObject:v26];

    editingBackgroundContainerView = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    trailingAnchor4 = [editingBackgroundContainerView trailingAnchor];
    contentView4 = [(HUGridHeadlineCell *)self contentView];
    trailingAnchor5 = [contentView4 trailingAnchor];
    v31 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5];
    [array addObject:v31];

    editingBackgroundContainerView2 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    trailingAnchor6 = [editingBackgroundContainerView2 trailingAnchor];
    headlineLabel5 = [(HUGridHeadlineCell *)self headlineLabel];
    trailingAnchor7 = [headlineLabel5 trailingAnchor];
    isEditing = [(HUGridHeadlineCell *)self isEditing];
    v37 = 52.0;
    if (!isEditing)
    {
      v37 = 0.0;
    }

    v38 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:v37];

    LODWORD(v39) = 1144766464;
    [v38 setPriority:v39];
    [array addObject:v38];
    editingBackgroundContainerView3 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    widthAnchor = [editingBackgroundContainerView3 widthAnchor];
    layoutOptions3 = [(HUGridHeadlineCell *)self layoutOptions];
    [layoutOptions3 editingBackgroundMinimumWidth];
    v43 = [widthAnchor constraintGreaterThanOrEqualToConstant:?];

    LODWORD(v44) = 1144782848;
    [v43 setPriority:v44];
    [array addObject:v43];
    editingBackgroundContainerView4 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    leadingAnchor4 = [editingBackgroundContainerView4 leadingAnchor];
    contentView5 = [(HUGridHeadlineCell *)self contentView];
    leadingAnchor5 = [contentView5 leadingAnchor];
    v49 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [array addObject:v49];

    editingBackgroundContainerView5 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    centerYAnchor = [editingBackgroundContainerView5 centerYAnchor];
    headlineLabel6 = [(HUGridHeadlineCell *)self headlineLabel];
    centerYAnchor2 = [headlineLabel6 centerYAnchor];
    v54 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v54];

    editingBackgroundContainerView6 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    heightAnchor = [editingBackgroundContainerView6 heightAnchor];
    layoutOptions4 = [(HUGridHeadlineCell *)self layoutOptions];
    [layoutOptions4 editingBackgroundHeight];
    v58 = [heightAnchor constraintEqualToConstant:?];
    [array addObject:v58];

    editingChevronImageView2 = [(HUGridHeadlineCell *)self editingChevronImageView];
    trailingAnchor8 = [editingChevronImageView2 trailingAnchor];
    editingBackgroundContainerView7 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    trailingAnchor9 = [editingBackgroundContainerView7 trailingAnchor];
    layoutOptions5 = [(HUGridHeadlineCell *)self layoutOptions];
    [layoutOptions5 cellInnerMargin];
    v65 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-v64];
    [array addObject:v65];

    editingChevronImageView3 = [(HUGridHeadlineCell *)self editingChevronImageView];
    centerYAnchor3 = [editingChevronImageView3 centerYAnchor];
    headlineLabel7 = [(HUGridHeadlineCell *)self headlineLabel];
    centerYAnchor4 = [headlineLabel7 centerYAnchor];
    v70 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [array addObject:v70];
  }

  headlineCellConstraints = [(HUGridHeadlineCell *)self headlineCellConstraints];
  v72 = [array isEqualToArray:headlineCellConstraints];

  if ((v72 & 1) == 0)
  {
    v73 = MEMORY[0x277CCAAD0];
    headlineCellConstraints2 = [(HUGridHeadlineCell *)self headlineCellConstraints];
    [v73 deactivateConstraints:headlineCellConstraints2];

    [(HUGridHeadlineCell *)self setHeadlineCellConstraints:array];
    v75 = MEMORY[0x277CCAAD0];
    headlineCellConstraints3 = [(HUGridHeadlineCell *)self headlineCellConstraints];
    [v75 activateConstraints:headlineCellConstraints3];
  }

  v77.receiver = self;
  v77.super_class = HUGridHeadlineCell;
  [(HUGridHeadlineCell *)&v77 updateConstraints];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v14[1] = *MEMORY[0x277D85DE8];
  item = [(HUGridHeadlineCell *)self item];
  v5 = *MEMORY[0x277D13F60];
  v14[0] = *MEMORY[0x277D13F60];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v7 = [item resultsContainRequiredProperties:v6];

  item2 = [(HUGridHeadlineCell *)self item];

  if (item2 && (v7 & 1) == 0)
  {
    item3 = [(HUGridHeadlineCell *)self item];
    NSLog(&cfstr_ItemIsMissingR.isa, item3);
  }

  if (v7)
  {
    item4 = [(HUGridHeadlineCell *)self item];
    latestResults = [item4 latestResults];
    v12 = [latestResults objectForKeyedSubscript:v5];
    headlineLabel = [(HUGridHeadlineCell *)self headlineLabel];
    [headlineLabel setText:v12];
  }

  else
  {
    item4 = [(HUGridHeadlineCell *)self headlineLabel];
    [item4 setText:&stru_2823E0EE8];
  }
}

- (void)_updateHeadlineLabel
{
  layoutOptions = [(HUGridHeadlineCell *)self layoutOptions];
  font = [layoutOptions font];
  headlineLabel = [(HUGridHeadlineCell *)self headlineLabel];
  [headlineLabel setFont:font];

  layoutOptions2 = [(HUGridHeadlineCell *)self layoutOptions];
  font2 = [layoutOptions2 font];
  [font2 pointSize];
  v9 = v8;
  if (v8 <= 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    font = [(HUGridHeadlineCell *)self layoutOptions];
    [font minimumFontSize];
    v11 = v10;
    headlineLabel = [(HUGridHeadlineCell *)self layoutOptions];
    font3 = [headlineLabel font];
    [font3 pointSize];
    v13 = v11 / v12;
  }

  headlineLabel2 = [(HUGridHeadlineCell *)self headlineLabel];
  [headlineLabel2 setMinimumScaleFactor:v13];

  if (v9 > 0.0)
  {
  }
}

@end