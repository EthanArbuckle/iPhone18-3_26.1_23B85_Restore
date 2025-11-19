@interface HUSliderValueTableViewCell
- (BOOL)_isShowingMinMaxLabels;
- (BOOL)isContinuous;
- (BOOL)isDisabled;
- (HUSliderValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUSliderValueTableViewCellDelegate)delegate;
- (UIImage)maximumValueImage;
- (UIImage)minimumValueImage;
- (double)maximumValue;
- (double)minimumValue;
- (double)value;
- (id)_createValueLabel;
- (void)_setupAutoLayoutConstraints;
- (void)_sliderChanged:(id)a3;
- (void)_updateMinMaxValueLabels;
- (void)didMoveToSuperview;
- (void)prepareForReuse;
- (void)setContinuous:(BOOL)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setMaximumValue:(double)a3;
- (void)setMaximumValueImage:(id)a3;
- (void)setMaximumValueText:(id)a3;
- (void)setMinimumValue:(double)a3;
- (void)setMinimumValueImage:(id)a3;
- (void)setMinimumValueText:(id)a3;
- (void)setShowValue:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setUseLargeCell:(BOOL)a3;
- (void)setValue:(double)a3;
@end

@implementation HUSliderValueTableViewCell

- (HUSliderValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v19.receiver = self;
  v19.super_class = HUSliderValueTableViewCell;
  v4 = [(HUSliderValueTableViewCell *)&v19 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75A30]);
    [(HUSliderValueTableViewCell *)v4 setSlider:v5];

    v6 = [(HUSliderValueTableViewCell *)v4 slider];
    [v6 setMinimumValue:0.0];

    v7 = [(HUSliderValueTableViewCell *)v4 slider];
    LODWORD(v8) = 1120403456;
    [v7 setMaximumValue:v8];

    v9 = [(HUSliderValueTableViewCell *)v4 slider];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(HUSliderValueTableViewCell *)v4 slider];
    [v10 addTarget:v4 action:sel__sliderChanged_ forControlEvents:4096];

    v11 = [(HUSliderValueTableViewCell *)v4 contentView];
    v12 = [(HUSliderValueTableViewCell *)v4 slider];
    [v11 addSubview:v12];

    v13 = [(HUSliderValueTableViewCell *)v4 _createValueLabel];
    [(HUSliderValueTableViewCell *)v4 setValueLabel:v13];

    [(HUSliderValueTableViewCell *)v4 setValue:0.0];
    v14 = [(HUSliderValueTableViewCell *)v4 contentView];
    v15 = [(HUSliderValueTableViewCell *)v4 valueLabel];
    [v14 addSubview:v15];

    v16 = [(HUSliderValueTableViewCell *)v4 textLabel];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [(HUSliderValueTableViewCell *)v4 textLabel];
    [v17 setHidden:1];

    [(HUSliderValueTableViewCell *)v4 setShowValue:1];
  }

  return v4;
}

- (id)_createValueLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277D75348] labelColor];
  [v3 setTextColor:v4];

  v5 = [(HUSliderValueTableViewCell *)self textLabel];
  v6 = [v5 font];
  [v3 setFont:v6];

  return v3;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = HUSliderValueTableViewCell;
  [(HUSliderValueTableViewCell *)&v3 didMoveToSuperview];
  [(HUSliderValueTableViewCell *)self _setupAutoLayoutConstraints];
}

- (void)setContinuous:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUSliderValueTableViewCell *)self slider];
  [v4 setContinuous:v3];
}

- (BOOL)isContinuous
{
  v2 = [(HUSliderValueTableViewCell *)self slider];
  v3 = [v2 isContinuous];

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUSliderValueTableViewCell;
  [(HUSliderValueTableViewCell *)&v4 prepareForReuse];
  [(HUSliderValueTableViewCell *)self setShowValue:1];
  v3 = [(HUSliderValueTableViewCell *)self textLabel];
  [v3 setHidden:1];

  [(HUSliderValueTableViewCell *)self setUseLargeCell:0];
}

- (double)minimumValue
{
  v2 = [(HUSliderValueTableViewCell *)self slider];
  [v2 minimumValue];
  v4 = v3;

  return v4;
}

- (void)setMinimumValue:(double)a3
{
  v3 = a3;
  v5 = [(HUSliderValueTableViewCell *)self slider];
  *&v4 = v3;
  [v5 setMinimumValue:v4];
}

- (double)maximumValue
{
  v2 = [(HUSliderValueTableViewCell *)self slider];
  [v2 maximumValue];
  v4 = v3;

  return v4;
}

- (void)setMaximumValue:(double)a3
{
  v3 = a3;
  v5 = [(HUSliderValueTableViewCell *)self slider];
  *&v4 = v3;
  [v5 setMaximumValue:v4];
}

- (double)value
{
  v2 = [(HUSliderValueTableViewCell *)self slider];
  [v2 value];
  v4 = v3;

  return v4;
}

- (void)setValue:(double)a3
{
  v5 = a3;
  v6 = [(HUSliderValueTableViewCell *)self slider];
  *&v7 = v5;
  [v6 setValue:v7];

  v8 = [(HUSliderValueTableViewCell *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HUSliderValueTableViewCell *)self delegate];
    v11 = [(HUSliderValueTableViewCell *)self item];
    v15 = [v10 valueDescriptionForItem:v11 value:a3];

    v12 = v15;
  }

  else
  {
    v12 = 0;
  }

  v16 = v12;
  if (![v12 length])
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.1f", *&a3];

    v16 = v13;
  }

  v14 = [(HUSliderValueTableViewCell *)self valueLabel];
  [v14 setText:v16];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  v6 = [(HUSliderValueTableViewCell *)self textLabel];
  [v6 setText:v5];

  v7 = [(HUSliderValueTableViewCell *)self textLabel];
  [v7 setHidden:0];
}

- (void)_sliderChanged:(id)a3
{
  v4 = [(HUSliderValueTableViewCell *)self slider];
  [v4 value];
  [(HUSliderValueTableViewCell *)self setValue:v5];

  v6 = [(HUSliderValueTableViewCell *)self delegate];
  [(HUSliderValueTableViewCell *)self value];
  [v6 sliderValueTableViewCell:self didChangeValue:?];
}

- (void)setShowValue:(BOOL)a3
{
  if (self->_showValue != a3)
  {
    self->_showValue = a3;
    v5 = [(HUSliderValueTableViewCell *)self showValue];
    v6 = [(HUSliderValueTableViewCell *)self valueLabel];
    [v6 setHidden:!v5];

    [(HUSliderValueTableViewCell *)self _setupAutoLayoutConstraints];
  }
}

- (UIImage)minimumValueImage
{
  v2 = [(HUSliderValueTableViewCell *)self slider];
  v3 = [v2 minimumValueImage];

  return v3;
}

- (void)setMinimumValueImage:(id)a3
{
  v4 = a3;
  v5 = [(HUSliderValueTableViewCell *)self slider];
  [v5 setMinimumValueImage:v4];

  [(HUSliderValueTableViewCell *)self _updateMinMaxValueLabels];
}

- (UIImage)maximumValueImage
{
  v2 = [(HUSliderValueTableViewCell *)self slider];
  v3 = [v2 maximumValueImage];

  return v3;
}

- (void)setMaximumValueImage:(id)a3
{
  v4 = a3;
  v5 = [(HUSliderValueTableViewCell *)self slider];
  [v5 setMaximumValueImage:v4];

  [(HUSliderValueTableViewCell *)self _updateMinMaxValueLabels];
}

- (void)setUseLargeCell:(BOOL)a3
{
  if (self->_useLargeCell != a3)
  {
    self->_useLargeCell = a3;
    [(HUSliderValueTableViewCell *)self _setupAutoLayoutConstraints];
  }
}

- (void)setMinimumValueText:(id)a3
{
  v5 = a3;
  if (self->_minimumValueText != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_minimumValueText, a3);
    [(HUSliderValueTableViewCell *)self _updateMinMaxValueLabels];
    v5 = v6;
  }
}

- (void)setMaximumValueText:(id)a3
{
  v5 = a3;
  if (self->_maximumValueText != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_maximumValueText, a3);
    [(HUSliderValueTableViewCell *)self _updateMinMaxValueLabels];
    v5 = v6;
  }
}

- (BOOL)isDisabled
{
  v2 = [(HUSliderValueTableViewCell *)self slider];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUSliderValueTableViewCell *)self slider];
  [v5 setEnabled:!v3];

  [(HUSliderValueTableViewCell *)self setUserInteractionEnabled:!v3];
  if (v3)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v8 = ;
  v6 = [(HUSliderValueTableViewCell *)self textLabel];
  [v6 setTextColor:v8];

  v7 = [(HUSliderValueTableViewCell *)self valueLabel];
  [v7 setTextColor:v8];

  [(HUSliderValueTableViewCell *)self setTextColor:v8];
}

- (void)_setupAutoLayoutConstraints
{
  v3 = [(HUSliderValueTableViewCell *)self constraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUSliderValueTableViewCell *)self constraints];
    [v4 deactivateConstraints:v5];
  }

  v126 = [MEMORY[0x277CBEB18] array];
  if ([(HUSliderValueTableViewCell *)self useLargeCell])
  {
    v6 = [(HUSliderValueTableViewCell *)self textLabel];
    v7 = [v6 topAnchor];
    v8 = [(HUSliderValueTableViewCell *)self contentView];
    v9 = [v8 readableContentGuide];
    v10 = [v9 topAnchor];
    v11 = [v7 constraintEqualToAnchor:v10];
    [v126 addObject:v11];

    v12 = [(HUSliderValueTableViewCell *)self textLabel];
    v13 = [v12 leadingAnchor];
    v14 = [(HUSliderValueTableViewCell *)self contentView];
    v15 = [v14 readableContentGuide];
    v16 = [v15 leadingAnchor];
    v17 = [v13 constraintEqualToAnchor:v16];
    [v126 addObject:v17];

    v18 = [(HUSliderValueTableViewCell *)self valueLabel];
    v19 = [v18 centerYAnchor];
    v20 = [(HUSliderValueTableViewCell *)self textLabel];
    v21 = [v20 centerYAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    [v126 addObject:v22];

    v23 = [(HUSliderValueTableViewCell *)self valueLabel];
    v24 = [v23 trailingAnchor];
    v25 = [(HUSliderValueTableViewCell *)self contentView];
    v26 = [v25 readableContentGuide];
    v27 = [v26 trailingAnchor];
    v28 = [v24 constraintEqualToAnchor:v27];
    [v126 addObject:v28];

    v29 = [(HUSliderValueTableViewCell *)self slider];
    v30 = [v29 topAnchor];
    v31 = [(HUSliderValueTableViewCell *)self textLabel];
    v32 = [v31 bottomAnchor];
    v33 = [v30 constraintEqualToAnchor:v32 constant:12.0];
    [v126 addObject:v33];

    v34 = [(HUSliderValueTableViewCell *)self slider];
    v35 = [v34 leadingAnchor];
    v36 = [(HUSliderValueTableViewCell *)self contentView];
    v37 = [v36 readableContentGuide];
    v38 = [v37 leadingAnchor];
    v39 = [v35 constraintEqualToAnchor:v38];
    [v126 addObject:v39];

    v40 = [(HUSliderValueTableViewCell *)self slider];
    v41 = [v40 trailingAnchor];
    v42 = [(HUSliderValueTableViewCell *)self contentView];
    v43 = [v42 readableContentGuide];
    v44 = [v43 trailingAnchor];
    v45 = [v41 constraintEqualToAnchor:v44];
    [v126 addObject:v45];

    v46 = [(HUSliderValueTableViewCell *)self slider];
    v47 = [v46 bottomAnchor];
    v48 = [(HUSliderValueTableViewCell *)self contentView];
    v49 = [v48 readableContentGuide];
    v50 = [v49 bottomAnchor];
  }

  else
  {
    v51 = [(HUSliderValueTableViewCell *)self slider];
    v52 = [v51 bottomAnchor];
    v53 = [(HUSliderValueTableViewCell *)self contentView];
    v54 = [v53 readableContentGuide];
    v55 = [v54 bottomAnchor];
    v56 = [v52 constraintEqualToAnchor:v55];
    [v126 addObject:v56];

    v57 = [(HUSliderValueTableViewCell *)self valueLabel];
    v58 = [v57 trailingAnchor];
    v59 = [(HUSliderValueTableViewCell *)self contentView];
    v60 = [v59 readableContentGuide];
    v61 = [v60 trailingAnchor];
    v62 = [v58 constraintEqualToAnchor:v61];
    [v126 addObject:v62];

    if ([(HUSliderValueTableViewCell *)self showValue])
    {
      v63 = [(HUSliderValueTableViewCell *)self valueLabel];
      v64 = [v63 leadingAnchor];
      v65 = [(HUSliderValueTableViewCell *)self contentView];
      v66 = [v65 readableContentGuide];
      v67 = [v66 leadingAnchor];
      v68 = [v64 constraintEqualToAnchor:v67];
      [v126 addObject:v68];

      v69 = [(HUSliderValueTableViewCell *)self valueLabel];
      v70 = [v69 topAnchor];
      v71 = [(HUSliderValueTableViewCell *)self contentView];
      v72 = [v71 readableContentGuide];
      v73 = [v72 topAnchor];
      v74 = [v70 constraintEqualToAnchor:v73];
      [v126 addObject:v74];

      v75 = [(HUSliderValueTableViewCell *)self slider];
      v76 = [v75 topAnchor];
      v77 = [(HUSliderValueTableViewCell *)self valueLabel];
      [v77 bottomAnchor];
    }

    else
    {
      v78 = [(HUSliderValueTableViewCell *)self slider];
      v79 = [v78 topAnchor];
      v80 = [(HUSliderValueTableViewCell *)self contentView];
      v81 = [v80 readableContentGuide];
      v82 = [v81 topAnchor];
      v83 = [v79 constraintEqualToAnchor:v82];
      [v126 addObject:v83];

      v84 = [(HUSliderValueTableViewCell *)self valueLabel];
      v85 = [v84 leadingAnchor];
      v86 = [(HUSliderValueTableViewCell *)self slider];
      v87 = [v86 trailingAnchor];
      v88 = [v85 constraintEqualToAnchor:v87 constant:12.0];
      [v126 addObject:v88];

      v75 = [(HUSliderValueTableViewCell *)self valueLabel];
      v76 = [v75 centerYAnchor];
      v77 = [(HUSliderValueTableViewCell *)self slider];
      [v77 centerYAnchor];
    }
    v89 = ;
    v90 = [v76 constraintEqualToAnchor:v89];
    [v126 addObject:v90];

    if ([(HUSliderValueTableViewCell *)self _isShowingMinMaxLabels])
    {
      v91 = [(HUSliderValueTableViewCell *)self minValueLabel];
      v92 = [v91 leadingAnchor];
      v93 = [(HUSliderValueTableViewCell *)self contentView];
      v94 = [v93 readableContentGuide];
      v95 = [v94 leadingAnchor];
      v96 = [v92 constraintEqualToAnchor:v95];
      [v126 addObject:v96];

      v97 = [(HUSliderValueTableViewCell *)self slider];
      v98 = [v97 leadingAnchor];
      v99 = [(HUSliderValueTableViewCell *)self minValueLabel];
      v100 = [v99 trailingAnchor];
      v101 = [v98 constraintEqualToAnchor:v100 constant:4.0];
      [v126 addObject:v101];

      v102 = [(HUSliderValueTableViewCell *)self maxValueLabel];
      v103 = [v102 trailingAnchor];
      v104 = [(HUSliderValueTableViewCell *)self contentView];
      v105 = [v104 readableContentGuide];
      v106 = [v105 trailingAnchor];
      v107 = [v103 constraintEqualToAnchor:v106];
      [v126 addObject:v107];

      v108 = [(HUSliderValueTableViewCell *)self slider];
      v109 = [v108 trailingAnchor];
      v110 = [(HUSliderValueTableViewCell *)self maxValueLabel];
      v111 = [v110 leadingAnchor];
      v112 = [v109 constraintEqualToAnchor:v111 constant:-4.0];
      [v126 addObject:v112];

      v113 = [(HUSliderValueTableViewCell *)self minValueLabel];
      v114 = [v113 centerYAnchor];
      v115 = [(HUSliderValueTableViewCell *)self slider];
      v116 = [v115 centerYAnchor];
      v117 = [v114 constraintEqualToAnchor:v116];
      [v126 addObject:v117];

      v46 = [(HUSliderValueTableViewCell *)self maxValueLabel];
      v47 = [v46 centerYAnchor];
      v48 = [(HUSliderValueTableViewCell *)self slider];
      v49 = [v48 centerYAnchor];
      v118 = [v47 constraintEqualToAnchor:v49];
      [v126 addObject:v118];
      goto LABEL_12;
    }

    v119 = [(HUSliderValueTableViewCell *)self slider];
    v120 = [v119 leadingAnchor];
    v121 = [(HUSliderValueTableViewCell *)self contentView];
    v122 = [v121 readableContentGuide];
    v123 = [v122 leadingAnchor];
    v124 = [v120 constraintEqualToAnchor:v123];
    [v126 addObject:v124];

    v46 = [(HUSliderValueTableViewCell *)self slider];
    v47 = [v46 trailingAnchor];
    v48 = [(HUSliderValueTableViewCell *)self contentView];
    v49 = [v48 readableContentGuide];
    v50 = [v49 trailingAnchor];
  }

  v118 = v50;
  v125 = [v47 constraintEqualToAnchor:v50];
  [v126 addObject:v125];

LABEL_12:
  [(HUSliderValueTableViewCell *)self setConstraints:v126];
  [MEMORY[0x277CCAAD0] activateConstraints:v126];
}

- (void)_updateMinMaxValueLabels
{
  if ((self->_minimumValueText || self->_maximumValueText) && (([(HUSliderValueTableViewCell *)self minimumValueImage], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, [(HUSliderValueTableViewCell *)self maximumValueImage], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5)))
  {
    if (!self->_minValueLabel)
    {
      v6 = [(HUSliderValueTableViewCell *)self _createValueLabel];
      [(HUSliderValueTableViewCell *)self setMinValueLabel:v6];

      v7 = [(HUSliderValueTableViewCell *)self contentView];
      [v7 addSubview:self->_minValueLabel];
    }

    if (!self->_maxValueLabel)
    {
      v8 = [(HUSliderValueTableViewCell *)self _createValueLabel];
      [(HUSliderValueTableViewCell *)self setMaxValueLabel:v8];

      v9 = [(HUSliderValueTableViewCell *)self contentView];
      [v9 addSubview:self->_maxValueLabel];
    }

    [(UILabel *)self->_minValueLabel setText:self->_minimumValueText];
    [(UILabel *)self->_maxValueLabel setText:self->_maximumValueText];

    [(HUSliderValueTableViewCell *)self _setupAutoLayoutConstraints];
  }

  else
  {
    [(UILabel *)self->_minValueLabel removeFromSuperview];
    [(UILabel *)self->_maxValueLabel removeFromSuperview];
    [(HUSliderValueTableViewCell *)self setMinValueLabel:0];

    [(HUSliderValueTableViewCell *)self setMaxValueLabel:0];
  }
}

- (BOOL)_isShowingMinMaxLabels
{
  v3 = [(HUSliderValueTableViewCell *)self contentView];
  if ([v3 containsView:self->_minValueLabel])
  {
    v4 = [(HUSliderValueTableViewCell *)self contentView];
    v5 = [v4 containsView:self->_maxValueLabel];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HUSliderValueTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end