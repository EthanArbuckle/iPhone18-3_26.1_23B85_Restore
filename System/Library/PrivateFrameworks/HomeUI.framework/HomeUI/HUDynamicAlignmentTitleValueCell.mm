@interface HUDynamicAlignmentTitleValueCell
- (BOOL)useVerticalLayout;
- (void)_ensureCorrectHeaderViewOrientation;
@end

@implementation HUDynamicAlignmentTitleValueCell

- (BOOL)useVerticalLayout
{
  v3 = [(HUTitleValueCell *)self labelsStackView];
  [v3 setAxis:0];

  v4 = [(HUTitleValueCell *)self labelsStackView];
  [v4 setAlignment:2];

  v5 = [(HUTitleValueCell *)self labelsStackView];
  [v5 setDistribution:3];

  v6 = [(HUTitleValueCell *)self titleLabel];
  [v6 setNumberOfLines:1];

  v7 = [(HUTitleValueCell *)self valueLabel];
  [v7 setNumberOfLines:1];

  v8 = 2 * ([(HUDynamicAlignmentTitleValueCell *)self effectiveUserInterfaceLayoutDirection]== 0);
  v9 = [(HUTitleValueCell *)self valueLabel];
  [v9 setTextAlignment:v8];

  v10 = [(HUTitleValueCell *)self titleLabel];
  v11 = [v10 text];

  v12 = [(HUTitleValueCell *)self valueLabel];
  v13 = [v12 text];

  v14 = [(HUDynamicAlignmentTitleValueCell *)self layoutOptions];
  v15 = [v14 longestPossibleTitleText];
  v16 = [(HUTitleValueCell *)self titleLabel];
  [v16 setText:v15];

  v17 = [(HUDynamicAlignmentTitleValueCell *)self layoutOptions];
  v18 = [v17 longestPossibleValueText];
  v19 = [(HUTitleValueCell *)self valueLabel];
  [v19 setText:v18];

  v20 = [(HUTitleValueCell *)self labelsStackView];
  [v20 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v22 = v21;

  v23 = [(HUDynamicAlignmentTitleValueCell *)self contentView];
  v24 = [v23 readableContentGuide];
  [v24 layoutFrame];
  Width = CGRectGetWidth(v29);

  v26 = [(HUTitleValueCell *)self titleLabel];
  [v26 setText:v11];

  v27 = [(HUTitleValueCell *)self valueLabel];
  [v27 setText:v13];

  return v22 > Width;
}

- (void)_ensureCorrectHeaderViewOrientation
{
  v5 = [(HUTitleValueCell *)self titleLabel];
  if (v5)
  {
    v6 = v5;
    v7 = [(HUTitleValueCell *)self valueLabel];

    if (v7)
    {
      v8 = [(HUTitleValueCell *)self titleLabel];
      v9 = [v8 text];
      v10 = [v9 length];
      if (v10)
      {
        v2 = [(HUTitleValueCell *)self valueLabel];
        v3 = [v2 text];
        if ([v3 length])
        {
          v11 = 16.0;
        }

        else
        {
          v11 = 0.0;
        }
      }

      else
      {
        v11 = 0.0;
      }

      v12 = [(HUTitleValueCell *)self labelsStackView];
      [v12 setSpacing:v11];

      if (v10)
      {
      }

      v13 = [(HUDynamicAlignmentTitleValueCell *)self useVerticalLayout];
      v14 = [(HUTitleValueCell *)self labelsStackView];
      v15 = v14;
      if (v13)
      {
        [v14 setSpacing:0.0];

        v16 = [(HUTitleValueCell *)self labelsStackView];
        [v16 setAxis:1];

        v17 = [(HUTitleValueCell *)self labelsStackView];
        [v17 setAlignment:0];

        v18 = [(HUTitleValueCell *)self labelsStackView];
        [v18 setDistribution:0];

        v19 = [(HUTitleValueCell *)self titleLabel];
        [v19 setNumberOfLines:0];

        v20 = [(HUTitleValueCell *)self valueLabel];
        [v20 setNumberOfLines:0];

        v21 = 4;
      }

      else
      {
        [v14 setAxis:0];

        v22 = [(HUTitleValueCell *)self labelsStackView];
        [v22 setAlignment:2];

        v23 = [(HUTitleValueCell *)self labelsStackView];
        [v23 setDistribution:3];

        v24 = [(HUTitleValueCell *)self titleLabel];
        [v24 setNumberOfLines:1];

        v25 = [(HUTitleValueCell *)self valueLabel];
        [v25 setNumberOfLines:1];

        v21 = 2 * ([(HUDynamicAlignmentTitleValueCell *)self effectiveUserInterfaceLayoutDirection]== 0);
      }

      v26 = [(HUTitleValueCell *)self valueLabel];
      [v26 setTextAlignment:v21];
    }
  }
}

@end