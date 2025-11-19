@interface MFMessageHeaderViewBlock
- (MFMessageHeaderViewBlock)initWithFrame:(CGRect)a3;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)a3;
- (void)initializePrimaryLayoutConstraints;
- (void)setDisplayMetrics:(id)a3;
- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)a3;
- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation MFMessageHeaderViewBlock

- (MFMessageHeaderViewBlock)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MFMessageHeaderViewBlock;
  v3 = [(MFMessageHeaderViewBlock *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

    v3->_usingLargeTextLayout = IsAccessibilityCategory;
    [(MFMessageHeaderViewBlock *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFMessageHeaderViewBlock *)v3 setPreservesSuperviewLayoutMargins:1];
    [(MFMessageHeaderViewBlock *)v3 setInsetsLayoutMarginsFromSafeArea:0];
    v6 = [MEMORY[0x277D75348] mailConversationViewExpandedCellBackgroundColor];
    [(MFMessageHeaderViewBlock *)v3 setBackgroundColor:v6];

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

  v9 = [(MFMessageHeaderViewBlock *)self topSeparator];
  [v9 setHidden:1];

  v10 = [(MFMessageHeaderViewBlock *)self topSeparator];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(MFMessageHeaderViewBlock *)self topSeparator];
  [(MFMessageHeaderViewBlock *)self addSubview:?];

  v12 = [[SeparatorLayer alloc] initWithFrame:v4, v5, v6, v7];
  [(MFMessageHeaderViewBlock *)self setBottomSeparator:?];

  v13 = [(MFMessageHeaderViewBlock *)self bottomSeparator];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(MFMessageHeaderViewBlock *)self bottomSeparator];
  [(MFMessageHeaderViewBlock *)self addSubview:?];

  v15 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(MFMessageHeaderViewBlock *)self setTrailingAccessoryViewLayoutGuide:?];

  v16 = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuide];
  [(MFMessageHeaderViewBlock *)self addLayoutGuide:?];
}

- (void)initializePrimaryLayoutConstraints
{
  v26[5] = *MEMORY[0x277D85DE8];
  v3 = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuide];
  v4 = [v3 widthAnchor];
  +[MFMessageDisplayMetrics avatarDiameter];
  v5 = [v4 constraintEqualToConstant:?];
  [(MFMessageHeaderViewBlock *)self setTrailingAccessoryViewLayoutGuideWidth:v5];

  v6 = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuide];
  v7 = [v6 trailingAnchor];
  v8 = [(MFMessageHeaderViewBlock *)self trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [(MFMessageHeaderViewBlock *)self setTrailingAccessoryViewLayoutGuideTrailing:v9];

  v25 = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuideWidth];
  v26[0] = v25;
  v23 = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuide];
  v24 = [v23 heightAnchor];
  v22 = [(MFMessageHeaderViewBlock *)self heightAnchor];
  v21 = [v24 constraintEqualToAnchor:?];
  v26[1] = v21;
  v10 = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuideTrailing];
  v26[2] = v10;
  v11 = [(MFMessageHeaderViewBlock *)self bottomAnchor];
  v12 = [(MFMessageHeaderViewBlock *)self bottomSeparator];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v26[3] = v14;
  v15 = [(MFMessageHeaderViewBlock *)self topAnchor];
  v16 = [(MFMessageHeaderViewBlock *)self topSeparator];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
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
  v3 = [(MFMessageHeaderViewBlock *)self displayMetrics];
  [v3 avatarDiameterForCurrentContentSize];
  v5 = v4;
  v6 = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuideWidth];
  [v6 setConstant:v5];

  [(MFMessageHeaderViewBlock *)self directionalLayoutMargins];
  v8 = v7;
  v9 = [(MFMessageHeaderViewBlock *)self displayMetrics];
  LODWORD(v6) = [v9 prefersFlushSeparator];

  if (v6)
  {
    v10 = [(MFMessageHeaderViewBlock *)self displayMetrics];
    [v10 minHorizontalSpacing];
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

  v13 = [(MFMessageHeaderViewBlock *)self trailingAccessoryViewLayoutGuideTrailing];
  [v13 setConstant:-v8];

  v14 = [(MFMessageHeaderViewBlock *)self topSeparator];
  [(MFMessageHeaderViewBlock *)self bringSubviewToFront:v14];

  v15 = [(MFMessageHeaderViewBlock *)self bottomSeparator];
  [(MFMessageHeaderViewBlock *)self bringSubviewToFront:v15];
}

- (void)setDisplayMetrics:(id)a3
{
  v5 = a3;
  if (![(MFMessageDisplayMetrics *)self->_displayMetrics isEqual:?])
  {
    objc_storeStrong(&self->_displayMetrics, a3);
    [(MFMessageHeaderViewBlock *)self setNeedsUpdateConstraints];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFMessageHeaderViewBlock;
  [(MFMessageHeaderViewBlock *)&v7 traitCollectionDidChange:v4];
  v5 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  [(MFMessageHeaderViewBlock *)self setUsingLargeTextLayout:IsAccessibilityCategory];
}

- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFMessageHeaderViewBlock *)self topSeparatorLeading];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [(MFMessageHeaderViewBlock *)self bottomSeparatorLeading];
  if (!v7)
  {

    goto LABEL_6;
  }

  separatorDrawsFlushWithLeadingEdge = self->_separatorDrawsFlushWithLeadingEdge;

  if (separatorDrawsFlushWithLeadingEdge != v3)
  {
LABEL_6:
    v9 = [(MFMessageHeaderViewBlock *)self topSeparatorLeading];
    [v9 setActive:0];

    v10 = [(MFMessageHeaderViewBlock *)self bottomSeparatorLeading];
    [v10 setActive:0];

    v11 = [(MFMessageHeaderViewBlock *)self topSeparator];
    v12 = [v11 leadingAnchor];
    if (v3)
    {
      v13 = [(MFMessageHeaderViewBlock *)self leadingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13 constant:-7.0];
      [(MFMessageHeaderViewBlock *)self setTopSeparatorLeading:v14];

      v15 = [(MFMessageHeaderViewBlock *)self bottomSeparator];
      v16 = [v15 leadingAnchor];
      v17 = [(MFMessageHeaderViewBlock *)self leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17 constant:-7.0];
      [(MFMessageHeaderViewBlock *)self setBottomSeparatorLeading:v18];
    }

    else
    {
      v19 = [(MFMessageHeaderViewBlock *)self layoutMarginsGuide];
      v20 = [v19 leadingAnchor];
      v21 = [v12 constraintEqualToAnchor:v20 constant:-7.0];
      [(MFMessageHeaderViewBlock *)self setTopSeparatorLeading:v21];

      v15 = [(MFMessageHeaderViewBlock *)self bottomSeparator];
      v16 = [v15 leadingAnchor];
      v17 = [(MFMessageHeaderViewBlock *)self layoutMarginsGuide];
      v18 = [v17 leadingAnchor];
      v22 = [v16 constraintEqualToAnchor:v18 constant:-7.0];
      [(MFMessageHeaderViewBlock *)self setBottomSeparatorLeading:v22];
    }

    v23 = [(MFMessageHeaderViewBlock *)self topSeparatorLeading];
    [v23 setActive:1];

    v24 = [(MFMessageHeaderViewBlock *)self bottomSeparatorLeading];
    [v24 setActive:1];
  }

  self->_separatorDrawsFlushWithLeadingEdge = v3;

  [(MFMessageHeaderViewBlock *)self setNeedsUpdateConstraints];
}

- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)a3
{
  v3 = a3;
  v5 = [(MFMessageHeaderViewBlock *)self topSeparatorTrailing];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [(MFMessageHeaderViewBlock *)self bottomSeparatorTrailing];
  if (!v7)
  {

    goto LABEL_6;
  }

  separatorDrawsFlushWithTrailingEdge = self->_separatorDrawsFlushWithTrailingEdge;

  if (separatorDrawsFlushWithTrailingEdge != v3)
  {
LABEL_6:
    v9 = [(MFMessageHeaderViewBlock *)self topSeparatorTrailing];
    [v9 setActive:0];

    v10 = [(MFMessageHeaderViewBlock *)self bottomSeparatorTrailing];
    [v10 setActive:0];

    v11 = [(MFMessageHeaderViewBlock *)self topSeparator];
    v12 = [v11 trailingAnchor];
    if (v3)
    {
      v13 = [(MFMessageHeaderViewBlock *)self trailingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      [(MFMessageHeaderViewBlock *)self setTopSeparatorTrailing:v14];

      v15 = [(MFMessageHeaderViewBlock *)self bottomSeparator];
      v16 = [v15 trailingAnchor];
      v17 = [(MFMessageHeaderViewBlock *)self trailingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [(MFMessageHeaderViewBlock *)self setBottomSeparatorTrailing:v18];
    }

    else
    {
      v19 = [(MFMessageHeaderViewBlock *)self layoutMarginsGuide];
      v20 = [v19 trailingAnchor];
      v21 = [v12 constraintEqualToAnchor:v20 constant:7.0];
      [(MFMessageHeaderViewBlock *)self setTopSeparatorTrailing:v21];

      v15 = [(MFMessageHeaderViewBlock *)self bottomSeparator];
      v16 = [v15 trailingAnchor];
      v17 = [(MFMessageHeaderViewBlock *)self layoutMarginsGuide];
      v18 = [v17 trailingAnchor];
      v22 = [v16 constraintEqualToAnchor:v18 constant:7.0];
      [(MFMessageHeaderViewBlock *)self setBottomSeparatorTrailing:v22];
    }

    v23 = [(MFMessageHeaderViewBlock *)self topSeparatorTrailing];
    [v23 setActive:1];

    v24 = [(MFMessageHeaderViewBlock *)self bottomSeparatorTrailing];
    [v24 setActive:1];
  }

  self->_separatorDrawsFlushWithTrailingEdge = v3;

  [(MFMessageHeaderViewBlock *)self setNeedsUpdateConstraints];
}

- (void)displayMessageUsingViewModel:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageHeaderViewBlock *)self observableCancelable];
  [v5 cancel];

  [(MFMessageHeaderViewBlock *)self setViewModel:v4];
  objc_initWeak(&location, self);
  v6 = [v4 modelObservable];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __57__MFMessageHeaderViewBlock_displayMessageUsingViewModel___block_invoke;
  v11 = &unk_278182378;
  objc_copyWeak(&v12, &location);
  v7 = [v6 subscribeWithResultBlock:&v8];
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