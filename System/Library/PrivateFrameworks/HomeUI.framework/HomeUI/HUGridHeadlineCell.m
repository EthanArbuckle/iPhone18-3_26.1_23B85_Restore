@interface HUGridHeadlineCell
- (CGRect)unpaddedContentFrame;
- (HUGridHeadlineCell)initWithCoder:(id)a3;
- (HUGridHeadlineCell)initWithFrame:(CGRect)a3;
- (void)_setupCommonCellAppearance;
- (void)_updateHeadlineLabel;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLayoutOptions:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUGridHeadlineCell

- (HUGridHeadlineCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUGridHeadlineCell;
  v3 = [(HUGridHeadlineCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HUGridHeadlineCell *)v3 _setupCommonCellAppearance];
  }

  return v4;
}

- (HUGridHeadlineCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUGridHeadlineCell;
  v3 = [(HUGridHeadlineCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUGridHeadlineCell *)v3 _setupCommonCellAppearance];
  }

  return v4;
}

- (void)setLayoutOptions:(id)a3
{
  v16 = a3;
  if (([v16 isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, a3);
    [(HUGridHeadlineCell *)self setNeedsUpdateConstraints];
    [(HUGridHeadlineCell *)self _updateHeadlineLabel];
    v5 = [(HUGridHeadlineCell *)self layoutOptions];
    v6 = [v5 backgroundDisplayOptions];
    v7 = [(HUGridHeadlineCell *)self editingBackgroundView];
    [v7 setDisplayOptions:v6];

    v8 = [(HUGridHeadlineCell *)self layoutOptions];
    [v8 cellCornerRadius];
    v10 = v9;
    v11 = [(HUGridHeadlineCell *)self editingBackgroundView];
    [v11 setCornerRadius:v10];

    v12 = [(HUGridHeadlineCell *)self layoutOptions];
    [v12 cellCornerRadius];
    v14 = v13;
    v15 = [(HUGridHeadlineCell *)self editingBackgroundDarkeningView];
    [v15 _setContinuousCornerRadius:v14];
  }
}

- (void)_setupCommonCellAppearance
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(HUGridHeadlineCell *)self setEditingBackgroundContainerView:v3];

  v4 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  [v5 setHidden:1];

  v6 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  [v6 setUserInteractionEnabled:0];

  v7 = [(HUGridHeadlineCell *)self contentView];
  v8 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  [v7 addSubview:v8];

  v9 = [HUGridCellBackgroundView alloc];
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [(HUGridCellBackgroundView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], v11, v12, v13];
  [(HUGridHeadlineCell *)self setEditingBackgroundView:v14];

  v15 = [(HUGridHeadlineCell *)self editingBackgroundView];
  v16 = [v15 layer];
  [v16 setMasksToBounds:1];

  v17 = [(HUGridHeadlineCell *)self editingBackgroundView];
  [v17 setUserInteractionEnabled:0];

  v18 = [(HUGridHeadlineCell *)self editingBackgroundView];
  [v18 setAutoresizingMask:18];

  v19 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  v20 = [(HUGridHeadlineCell *)self editingBackgroundView];
  [v19 addSubview:v20];

  v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v11, v12, v13}];
  [(HUGridHeadlineCell *)self setEditingBackgroundDarkeningView:v21];

  v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.13];
  v23 = [(HUGridHeadlineCell *)self editingBackgroundDarkeningView];
  [v23 setBackgroundColor:v22];

  v24 = [(HUGridHeadlineCell *)self editingBackgroundDarkeningView];
  [v24 setUserInteractionEnabled:0];

  v25 = [(HUGridHeadlineCell *)self editingBackgroundDarkeningView];
  [v25 setAutoresizingMask:18];

  v26 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
  v27 = [(HUGridHeadlineCell *)self editingBackgroundDarkeningView];
  [v26 addSubview:v27];

  v28 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUGridHeadlineCell *)self setHeadlineLabel:v28];

  v29 = [(HUGridHeadlineCell *)self headlineLabel];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(HUGridHeadlineCell *)self headlineLabel];
  [v30 setAdjustsFontSizeToFitWidth:1];

  v31 = [(HUGridHeadlineCell *)self headlineLabel];
  [v31 setBaselineAdjustment:1];

  v32 = [MEMORY[0x277D75348] systemWhiteColor];
  v33 = [(HUGridHeadlineCell *)self headlineLabel];
  [v33 setTextColor:v32];

  v34 = [(HUGridHeadlineCell *)self headlineLabel];
  [v34 setUserInteractionEnabled:0];

  v35 = [(HUGridHeadlineCell *)self contentView];
  v36 = [(HUGridHeadlineCell *)self headlineLabel];
  [v35 addSubview:v36];

  v45 = HUImageNamed(@"dashboard-headline-edit-chevron");
  v37 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v45];
  [(HUGridHeadlineCell *)self setEditingChevronImageView:v37];

  v38 = [MEMORY[0x277D75348] systemWhiteColor];
  v39 = [(HUGridHeadlineCell *)self editingChevronImageView];
  [v39 setTintColor:v38];

  v40 = [(HUGridHeadlineCell *)self editingChevronImageView];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = [(HUGridHeadlineCell *)self editingChevronImageView];
  [v41 setHidden:1];

  v42 = [(HUGridHeadlineCell *)self editingChevronImageView];
  [v42 setUserInteractionEnabled:0];

  v43 = [(HUGridHeadlineCell *)self contentView];
  v44 = [(HUGridHeadlineCell *)self editingChevronImageView];
  [v43 addSubview:v44];
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
  v2 = [(HUGridHeadlineCell *)self headlineLabel];
  [v2 frame];
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

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    v4 = a3;
    self->_editing = a3;
    v6 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    [v6 setHidden:!v4];

    v7 = [(HUGridHeadlineCell *)self editingChevronImageView];
    [v7 setHidden:!v4];

    [(HUGridHeadlineCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HUGridHeadlineCell;
  [(HUGridHeadlineCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__HUGridHeadlineCell_setHighlighted___block_invoke;
  v5[3] = &unk_277DB7EE0;
  v5[4] = self;
  v6 = a3;
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUGridHeadlineCell *)self headlineLabel];
  v5 = [v4 leadingAnchor];
  v6 = [(HUGridHeadlineCell *)self contentView];
  v7 = [v6 leadingAnchor];
  v8 = [(HUGridHeadlineCell *)self layoutOptions];
  [v8 cellInnerMargin];
  v9 = [v5 constraintEqualToAnchor:v7 constant:?];
  [v3 addObject:v9];

  v10 = [(HUGridHeadlineCell *)self headlineLabel];
  v11 = [v10 trailingAnchor];
  v12 = [(HUGridHeadlineCell *)self contentView];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintLessThanOrEqualToAnchor:v13];
  [v3 addObject:v14];

  v15 = [(HUGridHeadlineCell *)self headlineLabel];
  v16 = [v15 firstBaselineAnchor];
  v17 = [(HUGridHeadlineCell *)self contentView];
  v18 = [v17 topAnchor];
  v19 = [(HUGridHeadlineCell *)self layoutOptions];
  [v19 headlineBaselineOffset];
  v21 = [v16 constraintEqualToAnchor:v18 constant:-v20];
  [v3 addObject:v21];

  if ([(HUGridHeadlineCell *)self isEditing])
  {
    v22 = [(HUGridHeadlineCell *)self headlineLabel];
    v23 = [v22 trailingAnchor];
    v24 = [(HUGridHeadlineCell *)self editingChevronImageView];
    v25 = [v24 leadingAnchor];
    v26 = [v23 constraintLessThanOrEqualToAnchor:v25];
    [v3 addObject:v26];

    v27 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    v28 = [v27 trailingAnchor];
    v29 = [(HUGridHeadlineCell *)self contentView];
    v30 = [v29 trailingAnchor];
    v31 = [v28 constraintLessThanOrEqualToAnchor:v30];
    [v3 addObject:v31];

    v32 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    v33 = [v32 trailingAnchor];
    v34 = [(HUGridHeadlineCell *)self headlineLabel];
    v35 = [v34 trailingAnchor];
    v36 = [(HUGridHeadlineCell *)self isEditing];
    v37 = 52.0;
    if (!v36)
    {
      v37 = 0.0;
    }

    v38 = [v33 constraintEqualToAnchor:v35 constant:v37];

    LODWORD(v39) = 1144766464;
    [v38 setPriority:v39];
    [v3 addObject:v38];
    v40 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    v41 = [v40 widthAnchor];
    v42 = [(HUGridHeadlineCell *)self layoutOptions];
    [v42 editingBackgroundMinimumWidth];
    v43 = [v41 constraintGreaterThanOrEqualToConstant:?];

    LODWORD(v44) = 1144782848;
    [v43 setPriority:v44];
    [v3 addObject:v43];
    v45 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    v46 = [v45 leadingAnchor];
    v47 = [(HUGridHeadlineCell *)self contentView];
    v48 = [v47 leadingAnchor];
    v49 = [v46 constraintEqualToAnchor:v48];
    [v3 addObject:v49];

    v50 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    v51 = [v50 centerYAnchor];
    v52 = [(HUGridHeadlineCell *)self headlineLabel];
    v53 = [v52 centerYAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    [v3 addObject:v54];

    v55 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    v56 = [v55 heightAnchor];
    v57 = [(HUGridHeadlineCell *)self layoutOptions];
    [v57 editingBackgroundHeight];
    v58 = [v56 constraintEqualToConstant:?];
    [v3 addObject:v58];

    v59 = [(HUGridHeadlineCell *)self editingChevronImageView];
    v60 = [v59 trailingAnchor];
    v61 = [(HUGridHeadlineCell *)self editingBackgroundContainerView];
    v62 = [v61 trailingAnchor];
    v63 = [(HUGridHeadlineCell *)self layoutOptions];
    [v63 cellInnerMargin];
    v65 = [v60 constraintEqualToAnchor:v62 constant:-v64];
    [v3 addObject:v65];

    v66 = [(HUGridHeadlineCell *)self editingChevronImageView];
    v67 = [v66 centerYAnchor];
    v68 = [(HUGridHeadlineCell *)self headlineLabel];
    v69 = [v68 centerYAnchor];
    v70 = [v67 constraintEqualToAnchor:v69];
    [v3 addObject:v70];
  }

  v71 = [(HUGridHeadlineCell *)self headlineCellConstraints];
  v72 = [v3 isEqualToArray:v71];

  if ((v72 & 1) == 0)
  {
    v73 = MEMORY[0x277CCAAD0];
    v74 = [(HUGridHeadlineCell *)self headlineCellConstraints];
    [v73 deactivateConstraints:v74];

    [(HUGridHeadlineCell *)self setHeadlineCellConstraints:v3];
    v75 = MEMORY[0x277CCAAD0];
    v76 = [(HUGridHeadlineCell *)self headlineCellConstraints];
    [v75 activateConstraints:v76];
  }

  v77.receiver = self;
  v77.super_class = HUGridHeadlineCell;
  [(HUGridHeadlineCell *)&v77 updateConstraints];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = [(HUGridHeadlineCell *)self item];
  v5 = *MEMORY[0x277D13F60];
  v14[0] = *MEMORY[0x277D13F60];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v7 = [v4 resultsContainRequiredProperties:v6];

  v8 = [(HUGridHeadlineCell *)self item];

  if (v8 && (v7 & 1) == 0)
  {
    v9 = [(HUGridHeadlineCell *)self item];
    NSLog(&cfstr_ItemIsMissingR.isa, v9);
  }

  if (v7)
  {
    v10 = [(HUGridHeadlineCell *)self item];
    v11 = [v10 latestResults];
    v12 = [v11 objectForKeyedSubscript:v5];
    v13 = [(HUGridHeadlineCell *)self headlineLabel];
    [v13 setText:v12];
  }

  else
  {
    v10 = [(HUGridHeadlineCell *)self headlineLabel];
    [v10 setText:&stru_2823E0EE8];
  }
}

- (void)_updateHeadlineLabel
{
  v4 = [(HUGridHeadlineCell *)self layoutOptions];
  v5 = [v4 font];
  v6 = [(HUGridHeadlineCell *)self headlineLabel];
  [v6 setFont:v5];

  v15 = [(HUGridHeadlineCell *)self layoutOptions];
  v7 = [v15 font];
  [v7 pointSize];
  v9 = v8;
  if (v8 <= 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v5 = [(HUGridHeadlineCell *)self layoutOptions];
    [v5 minimumFontSize];
    v11 = v10;
    v6 = [(HUGridHeadlineCell *)self layoutOptions];
    v2 = [v6 font];
    [v2 pointSize];
    v13 = v11 / v12;
  }

  v14 = [(HUGridHeadlineCell *)self headlineLabel];
  [v14 setMinimumScaleFactor:v13];

  if (v9 > 0.0)
  {
  }
}

@end