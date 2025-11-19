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
- (void)setDarkMode:(BOOL)a3;
- (void)setDetail:(id)a3;
- (void)setInstruction:(id)a3;
- (void)setLabelsHorizontalMargin:(UIEdgeInsets)a3;
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

      v7 = [MEMORY[0x277D75348] whiteColor];
      WeakRetained = objc_loadWeakRetained(&v2->_instructionLabel);
      [WeakRetained setTextColor:v7];
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
      v14 = [MEMORY[0x277D75348] grayColor];
      [v11 setTextColor:v14];
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
            v23 = [MEMORY[0x277D75348] whiteColor];
            [v22 setTextColor:v23];
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
  v4 = [WeakRetained widthAnchor];
  v5 = [(BKUIPearlInstructionView *)self widthAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [(BKUIPearlInstructionView *)self setLabelsWidthConstraint:v6];

  v33 = MEMORY[0x277CCAAD0];
  v43 = [(BKUIPearlInstructionView *)self labelsWidthConstraint];
  v44[0] = v43;
  v42 = objc_loadWeakRetained(&self->_instructionLabel);
  v41 = [v42 topAnchor];
  v40 = [(BKUIPearlInstructionView *)self topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40 constant:16.0];
  v44[1] = v39;
  v38 = objc_loadWeakRetained(&self->_instructionLabel);
  v37 = [v38 centerXAnchor];
  v36 = [(BKUIPearlInstructionView *)self centerXAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v44[2] = v35;
  v34 = objc_loadWeakRetained(&self->_instructionLabel);
  v31 = [v34 bottomAnchor];
  v32 = objc_loadWeakRetained(&self->_detailLabel);
  v30 = [v32 topAnchor];
  v29 = [v31 constraintLessThanOrEqualToAnchor:v30];
  v44[3] = v29;
  v28 = objc_loadWeakRetained(&self->_detailLabel);
  v27 = [v28 centerXAnchor];
  v26 = [(BKUIPearlInstructionView *)self centerXAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v44[4] = v25;
  v24 = objc_loadWeakRetained(&self->_detailLabel);
  v7 = [v24 widthAnchor];
  v8 = objc_loadWeakRetained(&self->_instructionLabel);
  v9 = [v8 widthAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v44[5] = v10;
  v11 = objc_loadWeakRetained(&self->_detailLabel);
  v12 = [v11 bottomAnchor];
  v13 = [(BKUIPearlInstructionView *)self bottomAnchor];
  v14 = [v12 constraintLessThanOrEqualToAnchor:v13];
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
  v18 = [v17 firstBaselineAnchor];
  v19 = objc_loadWeakRetained(&self->_instructionLabel);
  v20 = [v19 lastBaselineAnchor];
  v21 = [v18 constraintEqualToAnchor:v20 constant:v16];

  LODWORD(v22) = 1144750080;
  [v21 setPriority:v22];
  [v21 setActive:1];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setDarkMode:(BOOL)a3
{
  self->_darkMode = a3;
  if (a3)
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

- (void)setInstruction:(id)a3
{
  objc_storeStrong(&self->_instruction, a3);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_instructionLabel);
  [WeakRetained setText:v5];
}

- (void)setDetail:(id)a3
{
  objc_storeStrong(&self->_detail, a3);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_detailLabel);
  [WeakRetained setText:v5];
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

- (void)setLabelsHorizontalMargin:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(BKUIPearlInstructionView *)self labelsHorizontalMargin];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    self->_labelsHorizontalMargin.top = top;
    self->_labelsHorizontalMargin.left = left;
    self->_labelsHorizontalMargin.bottom = bottom;
    self->_labelsHorizontalMargin.right = right;
    v18 = [(BKUIPearlInstructionView *)self superview];
    [v18 size];
    v16 = v15 - self->_labelsHorizontalMargin.left - self->_labelsHorizontalMargin.right;
    v17 = [(BKUIPearlInstructionView *)self labelsWidthConstraint];
    [v17 setConstant:v16];
  }
}

- (NSLayoutYAxisAnchor)instructionTextTopAnchor
{
  WeakRetained = objc_loadWeakRetained(&self->_instructionLabel);
  v3 = [WeakRetained topAnchor];

  return v3;
}

- (CGSize)intrinsicContentSize
{
  [(BKUIPearlInstructionView *)self size];
  v4 = v3;
  v5 = [(BKUIPearlInstructionView *)self instructionLabel];
  [v5 intrinsicContentSize];
  v7 = v6;
  v8 = [(BKUIPearlInstructionView *)self detailLabel];
  [v8 intrinsicContentSize];
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