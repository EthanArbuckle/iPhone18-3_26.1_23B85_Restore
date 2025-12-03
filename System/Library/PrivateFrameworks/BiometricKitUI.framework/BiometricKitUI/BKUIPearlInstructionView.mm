@interface BKUIPearlInstructionView
- (BKUIPearlInstructionView)init;
- (CGSize)intrinsicContentSize;
- (NSLayoutYAxisAnchor)instructionTextTopAnchor;
- (UIEdgeInsets)labelsHorizontalMargin;
- (UILabel)detailLabel;
- (UILabel)instructionLabel;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_configureConstraints;
- (void)setDarkMode:(BOOL)mode;
- (void)setDetail:(id)detail;
- (void)setInstruction:(id)instruction;
- (void)setLabelsHorizontalMargin:(UIEdgeInsets)margin;
@end

@implementation BKUIPearlInstructionView

- (BKUIPearlInstructionView)init
{
  v35 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = BKUIPearlInstructionView;
  v2 = [(BKUIPearlInstructionView *)&v32 init];
  if (v2)
  {
    v3 = _os_feature_enabled_impl();
    if (v3)
    {
      LOBYTE(v3) = _os_feature_enabled_impl();
    }

    v2->_isSolarium = v3;
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    if (v2->_isSolarium)
    {
      v5 = *MEMORY[0x277D76A28];
      v6 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A28] weight:*MEMORY[0x277D74420]];
      [v4 setFont:v6];

      whiteColor = [MEMORY[0x277D75348] whiteColor];
      WeakRetained = objc_loadWeakRetained(&v2->_instructionLabel);
      [WeakRetained setTextColor:whiteColor];
    }

    else
    {
      v9 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20]];
      v10 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:0.0];
      [v4 setFont:v10];

      v5 = *MEMORY[0x277D76A28];
    }

    v27 = v4;
    objc_storeWeak(&v2->_instructionLabel, v4);
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    if (v2->_isSolarium)
    {
      v12 = v5;
    }

    else
    {
      v12 = *MEMORY[0x277D76918];
    }

    v26 = v12;
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
    [v11 setFont:v13];

    if (v2->_isSolarium)
    {
      grayColor = [MEMORY[0x277D75348] grayColor];
      [v11 setTextColor:grayColor];
    }

    objc_storeWeak(&v2->_detailLabel, v11);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = objc_loadWeakRetained(&v2->_instructionLabel);
    v33[0] = v15;
    v16 = objc_loadWeakRetained(&v2->_detailLabel);
    v33[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];

    v18 = [v17 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          [v22 setTextAlignment:1];
          [v22 setNumberOfLines:0];
          if (!v2->_isSolarium)
          {
            whiteColor2 = [MEMORY[0x277D75348] whiteColor];
            [v22 setTextColor:whiteColor2];
          }

          [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(BKUIPearlInstructionView *)v2 addSubview:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v19);
    }

    [(BKUIPearlInstructionView *)v2 _configureConstraints];
    +[BKUIStyle _layoutMarginsForPearEnrollView];
    [(BKUIPearlInstructionView *)v2 setLabelsHorizontalMargin:?];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_configureConstraints
{
  v44[7] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_instructionLabel);
  widthAnchor = [WeakRetained widthAnchor];
  widthAnchor2 = [(BKUIPearlInstructionView *)self widthAnchor];
  v6 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [(BKUIPearlInstructionView *)self setLabelsWidthConstraint:v6];

  v33 = MEMORY[0x277CCAAD0];
  labelsWidthConstraint = [(BKUIPearlInstructionView *)self labelsWidthConstraint];
  v44[0] = labelsWidthConstraint;
  v42 = objc_loadWeakRetained(&self->_instructionLabel);
  topAnchor = [v42 topAnchor];
  topAnchor2 = [(BKUIPearlInstructionView *)self topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v44[1] = v39;
  v38 = objc_loadWeakRetained(&self->_instructionLabel);
  centerXAnchor = [v38 centerXAnchor];
  centerXAnchor2 = [(BKUIPearlInstructionView *)self centerXAnchor];
  v35 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v44[2] = v35;
  v34 = objc_loadWeakRetained(&self->_instructionLabel);
  bottomAnchor = [v34 bottomAnchor];
  v32 = objc_loadWeakRetained(&self->_detailLabel);
  topAnchor3 = [v32 topAnchor];
  v29 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor3];
  v44[3] = v29;
  v28 = objc_loadWeakRetained(&self->_detailLabel);
  centerXAnchor3 = [v28 centerXAnchor];
  centerXAnchor4 = [(BKUIPearlInstructionView *)self centerXAnchor];
  v25 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v44[4] = v25;
  v24 = objc_loadWeakRetained(&self->_detailLabel);
  widthAnchor3 = [v24 widthAnchor];
  v8 = objc_loadWeakRetained(&self->_instructionLabel);
  widthAnchor4 = [v8 widthAnchor];
  v10 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v44[5] = v10;
  v11 = objc_loadWeakRetained(&self->_detailLabel);
  bottomAnchor2 = [v11 bottomAnchor];
  bottomAnchor3 = [(BKUIPearlInstructionView *)self bottomAnchor];
  v14 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  v44[6] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:7];
  [v33 activateConstraints:v15];

  if (self->_isSolarium)
  {
    v16 = 5.0;
  }

  else
  {
    v16 = 33.0;
  }

  v17 = objc_loadWeakRetained(&self->_detailLabel);
  firstBaselineAnchor = [v17 firstBaselineAnchor];
  v19 = objc_loadWeakRetained(&self->_instructionLabel);
  lastBaselineAnchor = [v19 lastBaselineAnchor];
  v21 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v16];

  LODWORD(v22) = 1144750080;
  [v21 setPriority:v22];
  [v21 setActive:1];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setDarkMode:(BOOL)mode
{
  self->_darkMode = mode;
  if (mode)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v6 = ;
  WeakRetained = objc_loadWeakRetained(&self->_instructionLabel);
  [WeakRetained setTextColor:v6];

  if (!self->_isSolarium)
  {
    v5 = objc_loadWeakRetained(&self->_detailLabel);
    [v5 setTextColor:v6];
  }
}

- (void)setInstruction:(id)instruction
{
  objc_storeStrong(&self->_instruction, instruction);
  instructionCopy = instruction;
  WeakRetained = objc_loadWeakRetained(&self->_instructionLabel);
  [WeakRetained setText:instructionCopy];
}

- (void)setDetail:(id)detail
{
  objc_storeStrong(&self->_detail, detail);
  detailCopy = detail;
  WeakRetained = objc_loadWeakRetained(&self->_detailLabel);
  [WeakRetained setText:detailCopy];
}

- (id)viewForFirstBaselineLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_instructionLabel);

  return WeakRetained;
}

- (id)viewForLastBaselineLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_detailLabel);

  return WeakRetained;
}

- (void)setLabelsHorizontalMargin:(UIEdgeInsets)margin
{
  right = margin.right;
  bottom = margin.bottom;
  left = margin.left;
  top = margin.top;
  [(BKUIPearlInstructionView *)self labelsHorizontalMargin];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    self->_labelsHorizontalMargin.top = top;
    self->_labelsHorizontalMargin.left = left;
    self->_labelsHorizontalMargin.bottom = bottom;
    self->_labelsHorizontalMargin.right = right;
    superview = [(BKUIPearlInstructionView *)self superview];
    [superview size];
    v16 = v15 - self->_labelsHorizontalMargin.left - self->_labelsHorizontalMargin.right;
    labelsWidthConstraint = [(BKUIPearlInstructionView *)self labelsWidthConstraint];
    [labelsWidthConstraint setConstant:v16];
  }
}

- (NSLayoutYAxisAnchor)instructionTextTopAnchor
{
  WeakRetained = objc_loadWeakRetained(&self->_instructionLabel);
  topAnchor = [WeakRetained topAnchor];

  return topAnchor;
}

- (CGSize)intrinsicContentSize
{
  [(BKUIPearlInstructionView *)self size];
  v4 = v3;
  instructionLabel = [(BKUIPearlInstructionView *)self instructionLabel];
  [instructionLabel intrinsicContentSize];
  v7 = v6;
  detailLabel = [(BKUIPearlInstructionView *)self detailLabel];
  [detailLabel intrinsicContentSize];
  v10 = v7 + v9;

  v11 = v4;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (UILabel)instructionLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_instructionLabel);

  return WeakRetained;
}

- (UILabel)detailLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_detailLabel);

  return WeakRetained;
}

- (UIEdgeInsets)labelsHorizontalMargin
{
  top = self->_labelsHorizontalMargin.top;
  left = self->_labelsHorizontalMargin.left;
  bottom = self->_labelsHorizontalMargin.bottom;
  right = self->_labelsHorizontalMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end