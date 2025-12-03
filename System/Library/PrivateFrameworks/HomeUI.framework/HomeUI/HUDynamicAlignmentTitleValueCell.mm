@interface HUDynamicAlignmentTitleValueCell
- (BOOL)useVerticalLayout;
- (void)_ensureCorrectHeaderViewOrientation;
@end

@implementation HUDynamicAlignmentTitleValueCell

- (BOOL)useVerticalLayout
{
  labelsStackView = [(HUTitleValueCell *)self labelsStackView];
  [labelsStackView setAxis:0];

  labelsStackView2 = [(HUTitleValueCell *)self labelsStackView];
  [labelsStackView2 setAlignment:2];

  labelsStackView3 = [(HUTitleValueCell *)self labelsStackView];
  [labelsStackView3 setDistribution:3];

  titleLabel = [(HUTitleValueCell *)self titleLabel];
  [titleLabel setNumberOfLines:1];

  valueLabel = [(HUTitleValueCell *)self valueLabel];
  [valueLabel setNumberOfLines:1];

  v8 = 2 * ([(HUDynamicAlignmentTitleValueCell *)self effectiveUserInterfaceLayoutDirection]== 0);
  valueLabel2 = [(HUTitleValueCell *)self valueLabel];
  [valueLabel2 setTextAlignment:v8];

  titleLabel2 = [(HUTitleValueCell *)self titleLabel];
  text = [titleLabel2 text];

  valueLabel3 = [(HUTitleValueCell *)self valueLabel];
  text2 = [valueLabel3 text];

  layoutOptions = [(HUDynamicAlignmentTitleValueCell *)self layoutOptions];
  longestPossibleTitleText = [layoutOptions longestPossibleTitleText];
  titleLabel3 = [(HUTitleValueCell *)self titleLabel];
  [titleLabel3 setText:longestPossibleTitleText];

  layoutOptions2 = [(HUDynamicAlignmentTitleValueCell *)self layoutOptions];
  longestPossibleValueText = [layoutOptions2 longestPossibleValueText];
  valueLabel4 = [(HUTitleValueCell *)self valueLabel];
  [valueLabel4 setText:longestPossibleValueText];

  labelsStackView4 = [(HUTitleValueCell *)self labelsStackView];
  [labelsStackView4 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v22 = v21;

  contentView = [(HUDynamicAlignmentTitleValueCell *)self contentView];
  readableContentGuide = [contentView readableContentGuide];
  [readableContentGuide layoutFrame];
  Width = CGRectGetWidth(v29);

  titleLabel4 = [(HUTitleValueCell *)self titleLabel];
  [titleLabel4 setText:text];

  valueLabel5 = [(HUTitleValueCell *)self valueLabel];
  [valueLabel5 setText:text2];

  return v22 > Width;
}

- (void)_ensureCorrectHeaderViewOrientation
{
  titleLabel = [(HUTitleValueCell *)self titleLabel];
  if (titleLabel)
  {
    v6 = titleLabel;
    valueLabel = [(HUTitleValueCell *)self valueLabel];

    if (valueLabel)
    {
      titleLabel2 = [(HUTitleValueCell *)self titleLabel];
      text = [titleLabel2 text];
      v10 = [text length];
      if (v10)
      {
        valueLabel2 = [(HUTitleValueCell *)self valueLabel];
        text2 = [valueLabel2 text];
        if ([text2 length])
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

      labelsStackView = [(HUTitleValueCell *)self labelsStackView];
      [labelsStackView setSpacing:v11];

      if (v10)
      {
      }

      useVerticalLayout = [(HUDynamicAlignmentTitleValueCell *)self useVerticalLayout];
      labelsStackView2 = [(HUTitleValueCell *)self labelsStackView];
      v15 = labelsStackView2;
      if (useVerticalLayout)
      {
        [labelsStackView2 setSpacing:0.0];

        labelsStackView3 = [(HUTitleValueCell *)self labelsStackView];
        [labelsStackView3 setAxis:1];

        labelsStackView4 = [(HUTitleValueCell *)self labelsStackView];
        [labelsStackView4 setAlignment:0];

        labelsStackView5 = [(HUTitleValueCell *)self labelsStackView];
        [labelsStackView5 setDistribution:0];

        titleLabel3 = [(HUTitleValueCell *)self titleLabel];
        [titleLabel3 setNumberOfLines:0];

        valueLabel3 = [(HUTitleValueCell *)self valueLabel];
        [valueLabel3 setNumberOfLines:0];

        v21 = 4;
      }

      else
      {
        [labelsStackView2 setAxis:0];

        labelsStackView6 = [(HUTitleValueCell *)self labelsStackView];
        [labelsStackView6 setAlignment:2];

        labelsStackView7 = [(HUTitleValueCell *)self labelsStackView];
        [labelsStackView7 setDistribution:3];

        titleLabel4 = [(HUTitleValueCell *)self titleLabel];
        [titleLabel4 setNumberOfLines:1];

        valueLabel4 = [(HUTitleValueCell *)self valueLabel];
        [valueLabel4 setNumberOfLines:1];

        v21 = 2 * ([(HUDynamicAlignmentTitleValueCell *)self effectiveUserInterfaceLayoutDirection]== 0);
      }

      valueLabel5 = [(HUTitleValueCell *)self valueLabel];
      [valueLabel5 setTextAlignment:v21];
    }
  }
}

@end