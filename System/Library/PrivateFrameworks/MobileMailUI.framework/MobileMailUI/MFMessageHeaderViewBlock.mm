@interface MFMessageHeaderViewBlock
- (MFMessageHeaderViewBlock)initWithFrame:(CGRect)frame;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)model;
- (void)initializePrimaryLayoutConstraints;
- (void)setDisplayMetrics:(id)metrics;
- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)edge;
- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)edge;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation MFMessageHeaderViewBlock

- (MFMessageHeaderViewBlock)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MFMessageHeaderViewBlock;
  v3 = [(MFMessageHeaderViewBlock *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v3->_usingLargeTextLayout = IsAccessibilityCategory;
    [(MFMessageHeaderViewBlock *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFMessageHeaderViewBlock *)v3 setPreservesSuperviewLayoutMargins:1];
    [(MFMessageHeaderViewBlock *)v3 setInsetsLayoutMarginsFromSafeArea:0];
    mailConversationViewExpandedCellBackgroundColor = [MEMORY[0x277D75348] mailConversationViewExpandedCellBackgroundColor];
    [(MFMessageHeaderViewBlock *)v3 setBackgroundColor:mailConversationViewExpandedCellBackgroundColor];

    [(MFMessageHeaderViewBlock *)v3 createPrimaryViews];
    [(MFMessageHeaderViewBlock *)v3 initializePrimaryLayoutConstraints];
    [(MFMessageHeaderViewBlock *)v3 setSeparatorDrawsFlushWithLeadingEdge:0];
    [(MFMessageHeaderViewBlock *)v3 setSeparatorDrawsFlushWithTrailingEdge:1];
    v3->_topSeparatorHidden = 1;
  }

  return v3;
}

- (void)createPrimaryViews
{
  v3 = [SeparatorLayer alloc];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(SeparatorLayer *)v3 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  [(MFMessageHeaderViewBlock *)self setTopSeparator:?];

  topSeparator = [(MFMessageHeaderViewBlock *)self topSeparator];
  [topSeparator setHidden:1];

  topSeparator2 = [(MFMessageHeaderViewBlock *)self topSeparator];
  [topSeparator2 setTranslatesAutoresizingMaskIntoConstraints:0];

  topSeparator3 = [(MFMessageHeaderViewBlock *)self topSeparator];
  [(MFMessageHeaderViewBlock *)self addSubview:?];

  v12 = [[SeparatorLayer alloc] initWithFrame:v4, v5, v6, v7];
  [(MFMessageHeaderViewBlock *)self setBottomSeparator:?];

  bottomSeparator = [(MFMessageHeaderViewBlock *)self bottomSeparator];
  [bottomSeparator setTranslatesAutoresizingMaskIntoConstraints:0];

  bottomSeparator2 = [(MFMessageHeaderViewBlock *)self bottomSeparator];
  [(MFMessageHeaderViewBlock *)self addSubview:?];

  v15 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(MFMessageHeaderViewBlock *)self setTrailingAccessoryViewLayoutGuide:?];

  trailingAccessoryViewLayoutGuide = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuide];
  [(MFMessageHeaderViewBlock *)self addLayoutGuide:?];
}

- (void)initializePrimaryLayoutConstraints
{
  v26[5] = *MEMORY[0x277D85DE8];
  trailingAccessoryViewLayoutGuide = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuide];
  widthAnchor = [trailingAccessoryViewLayoutGuide widthAnchor];
  +[MFMessageDisplayMetrics avatarDiameter];
  v5 = [widthAnchor constraintEqualToConstant:?];
  [(MFMessageHeaderViewBlock *)self setTrailingAccessoryViewLayoutGuideWidth:v5];

  trailingAccessoryViewLayoutGuide2 = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuide];
  trailingAnchor = [trailingAccessoryViewLayoutGuide2 trailingAnchor];
  trailingAnchor2 = [(MFMessageHeaderViewBlock *)self trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(MFMessageHeaderViewBlock *)self setTrailingAccessoryViewLayoutGuideTrailing:v9];

  trailingAccessoryViewLayoutGuideWidth = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuideWidth];
  v26[0] = trailingAccessoryViewLayoutGuideWidth;
  trailingAccessoryViewLayoutGuide3 = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuide];
  heightAnchor = [trailingAccessoryViewLayoutGuide3 heightAnchor];
  heightAnchor2 = [(MFMessageHeaderViewBlock *)self heightAnchor];
  v21 = [heightAnchor constraintEqualToAnchor:?];
  v26[1] = v21;
  trailingAccessoryViewLayoutGuideTrailing = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuideTrailing];
  v26[2] = trailingAccessoryViewLayoutGuideTrailing;
  bottomAnchor = [(MFMessageHeaderViewBlock *)self bottomAnchor];
  bottomSeparator = [(MFMessageHeaderViewBlock *)self bottomSeparator];
  bottomAnchor2 = [bottomSeparator bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v14;
  topAnchor = [(MFMessageHeaderViewBlock *)self topAnchor];
  topSeparator = [(MFMessageHeaderViewBlock *)self topSeparator];
  topAnchor2 = [topSeparator topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[4] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:5];

  [MEMORY[0x277CCAAD0] activateConstraints:v19];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateConstraints
{
  v16.receiver = self;
  v16.super_class = MFMessageHeaderViewBlock;
  [(MFMessageHeaderViewBlock *)&v16 updateConstraints];
  displayMetrics = [(MFMessageHeaderViewBlock *)self displayMetrics];
  [displayMetrics avatarDiameterForCurrentContentSize];
  v5 = v4;
  trailingAccessoryViewLayoutGuideWidth = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuideWidth];
  [trailingAccessoryViewLayoutGuideWidth setConstant:v5];

  [(MFMessageHeaderViewBlock *)self directionalLayoutMargins];
  v8 = v7;
  displayMetrics2 = [(MFMessageHeaderViewBlock *)self displayMetrics];
  LODWORD(trailingAccessoryViewLayoutGuideWidth) = [displayMetrics2 prefersFlushSeparator];

  if (trailingAccessoryViewLayoutGuideWidth)
  {
    displayMetrics3 = [(MFMessageHeaderViewBlock *)self displayMetrics];
    [displayMetrics3 minHorizontalSpacing];
    v12 = v11;

    if (v12 >= v8 + -10.0)
    {
      v8 = v12;
    }

    else
    {
      v8 = v8 + -10.0;
    }
  }

  trailingAccessoryViewLayoutGuideTrailing = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuideTrailing];
  [trailingAccessoryViewLayoutGuideTrailing setConstant:-v8];

  topSeparator = [(MFMessageHeaderViewBlock *)self topSeparator];
  [(MFMessageHeaderViewBlock *)self bringSubviewToFront:topSeparator];

  bottomSeparator = [(MFMessageHeaderViewBlock *)self bottomSeparator];
  [(MFMessageHeaderViewBlock *)self bringSubviewToFront:bottomSeparator];
}

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (![(MFMessageDisplayMetrics *)self->_displayMetrics isEqual:?])
  {
    objc_storeStrong(&self->_displayMetrics, metrics);
    [(MFMessageHeaderViewBlock *)self setNeedsUpdateConstraints];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v7.receiver = self;
  v7.super_class = MFMessageHeaderViewBlock;
  [(MFMessageHeaderViewBlock *)&v7 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [(MFMessageHeaderViewBlock *)self setUsingLargeTextLayout:IsAccessibilityCategory];
}

- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)edge
{
  edgeCopy = edge;
  topSeparatorLeading = [(MFMessageHeaderViewBlock *)self topSeparatorLeading];
  if (!topSeparatorLeading)
  {
    goto LABEL_6;
  }

  v6 = topSeparatorLeading;
  bottomSeparatorLeading = [(MFMessageHeaderViewBlock *)self bottomSeparatorLeading];
  if (!bottomSeparatorLeading)
  {

    goto LABEL_6;
  }

  separatorDrawsFlushWithLeadingEdge = self->_separatorDrawsFlushWithLeadingEdge;

  if (separatorDrawsFlushWithLeadingEdge != edgeCopy)
  {
LABEL_6:
    topSeparatorLeading2 = [(MFMessageHeaderViewBlock *)self topSeparatorLeading];
    [topSeparatorLeading2 setActive:0];

    bottomSeparatorLeading2 = [(MFMessageHeaderViewBlock *)self bottomSeparatorLeading];
    [bottomSeparatorLeading2 setActive:0];

    topSeparator = [(MFMessageHeaderViewBlock *)self topSeparator];
    leadingAnchor = [topSeparator leadingAnchor];
    if (edgeCopy)
    {
      leadingAnchor2 = [(MFMessageHeaderViewBlock *)self leadingAnchor];
      v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-7.0];
      [(MFMessageHeaderViewBlock *)self setTopSeparatorLeading:v14];

      bottomSeparator = [(MFMessageHeaderViewBlock *)self bottomSeparator];
      leadingAnchor3 = [bottomSeparator leadingAnchor];
      leadingAnchor4 = [(MFMessageHeaderViewBlock *)self leadingAnchor];
      v17LeadingAnchor = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:-7.0];
      [(MFMessageHeaderViewBlock *)self setBottomSeparatorLeading:v17LeadingAnchor];
    }

    else
    {
      layoutMarginsGuide = [(MFMessageHeaderViewBlock *)self layoutMarginsGuide];
      leadingAnchor5 = [layoutMarginsGuide leadingAnchor];
      v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor5 constant:-7.0];
      [(MFMessageHeaderViewBlock *)self setTopSeparatorLeading:v21];

      bottomSeparator = [(MFMessageHeaderViewBlock *)self bottomSeparator];
      leadingAnchor3 = [bottomSeparator leadingAnchor];
      leadingAnchor4 = [(MFMessageHeaderViewBlock *)self layoutMarginsGuide];
      v17LeadingAnchor = [leadingAnchor4 leadingAnchor];
      v22 = [leadingAnchor3 constraintEqualToAnchor:v17LeadingAnchor constant:-7.0];
      [(MFMessageHeaderViewBlock *)self setBottomSeparatorLeading:v22];
    }

    topSeparatorLeading3 = [(MFMessageHeaderViewBlock *)self topSeparatorLeading];
    [topSeparatorLeading3 setActive:1];

    bottomSeparatorLeading3 = [(MFMessageHeaderViewBlock *)self bottomSeparatorLeading];
    [bottomSeparatorLeading3 setActive:1];
  }

  self->_separatorDrawsFlushWithLeadingEdge = edgeCopy;

  [(MFMessageHeaderViewBlock *)self setNeedsUpdateConstraints];
}

- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)edge
{
  edgeCopy = edge;
  topSeparatorTrailing = [(MFMessageHeaderViewBlock *)self topSeparatorTrailing];
  if (!topSeparatorTrailing)
  {
    goto LABEL_6;
  }

  v6 = topSeparatorTrailing;
  bottomSeparatorTrailing = [(MFMessageHeaderViewBlock *)self bottomSeparatorTrailing];
  if (!bottomSeparatorTrailing)
  {

    goto LABEL_6;
  }

  separatorDrawsFlushWithTrailingEdge = self->_separatorDrawsFlushWithTrailingEdge;

  if (separatorDrawsFlushWithTrailingEdge != edgeCopy)
  {
LABEL_6:
    topSeparatorTrailing2 = [(MFMessageHeaderViewBlock *)self topSeparatorTrailing];
    [topSeparatorTrailing2 setActive:0];

    bottomSeparatorTrailing2 = [(MFMessageHeaderViewBlock *)self bottomSeparatorTrailing];
    [bottomSeparatorTrailing2 setActive:0];

    topSeparator = [(MFMessageHeaderViewBlock *)self topSeparator];
    trailingAnchor = [topSeparator trailingAnchor];
    if (edgeCopy)
    {
      trailingAnchor2 = [(MFMessageHeaderViewBlock *)self trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [(MFMessageHeaderViewBlock *)self setTopSeparatorTrailing:v14];

      bottomSeparator = [(MFMessageHeaderViewBlock *)self bottomSeparator];
      trailingAnchor3 = [bottomSeparator trailingAnchor];
      trailingAnchor4 = [(MFMessageHeaderViewBlock *)self trailingAnchor];
      v17TrailingAnchor = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [(MFMessageHeaderViewBlock *)self setBottomSeparatorTrailing:v17TrailingAnchor];
    }

    else
    {
      layoutMarginsGuide = [(MFMessageHeaderViewBlock *)self layoutMarginsGuide];
      trailingAnchor5 = [layoutMarginsGuide trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor5 constant:7.0];
      [(MFMessageHeaderViewBlock *)self setTopSeparatorTrailing:v21];

      bottomSeparator = [(MFMessageHeaderViewBlock *)self bottomSeparator];
      trailingAnchor3 = [bottomSeparator trailingAnchor];
      trailingAnchor4 = [(MFMessageHeaderViewBlock *)self layoutMarginsGuide];
      v17TrailingAnchor = [trailingAnchor4 trailingAnchor];
      v22 = [trailingAnchor3 constraintEqualToAnchor:v17TrailingAnchor constant:7.0];
      [(MFMessageHeaderViewBlock *)self setBottomSeparatorTrailing:v22];
    }

    topSeparatorTrailing3 = [(MFMessageHeaderViewBlock *)self topSeparatorTrailing];
    [topSeparatorTrailing3 setActive:1];

    bottomSeparatorTrailing3 = [(MFMessageHeaderViewBlock *)self bottomSeparatorTrailing];
    [bottomSeparatorTrailing3 setActive:1];
  }

  self->_separatorDrawsFlushWithTrailingEdge = edgeCopy;

  [(MFMessageHeaderViewBlock *)self setNeedsUpdateConstraints];
}

- (void)displayMessageUsingViewModel:(id)model
{
  modelCopy = model;
  observableCancelable = [(MFMessageHeaderViewBlock *)self observableCancelable];
  [observableCancelable cancel];

  [(MFMessageHeaderViewBlock *)self setViewModel:modelCopy];
  objc_initWeak(&location, self);
  modelObservable = [modelCopy modelObservable];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __57__MFMessageHeaderViewBlock_displayMessageUsingViewModel___block_invoke;
  v11 = &unk_278182378;
  objc_copyWeak(&v12, &location);
  v7 = [modelObservable subscribeWithResultBlock:&v8];
  [(MFMessageHeaderViewBlock *)self setObservableCancelable:v7, v8, v9, v10, v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __57__MFMessageHeaderViewBlock_displayMessageUsingViewModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setViewModel:v3];
}

@end