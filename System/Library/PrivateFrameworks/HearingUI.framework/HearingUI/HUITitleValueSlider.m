@interface HUITitleValueSlider
- (CGPoint)accessibilityActivationPoint;
- (HUITitleValueSlider)initWithEffect:(id)a3;
- (id)_accessibilityUserTestingChildren;
@end

@implementation HUITitleValueSlider

- (HUITitleValueSlider)initWithEffect:(id)a3
{
  v69 = a3;
  v70.receiver = self;
  v70.super_class = HUITitleValueSlider;
  v4 = [(HUITitleValueSlider *)&v70 init];
  if (v4)
  {
    v5 = objc_alloc_init(HUIStepSlider);
    slider = v4->_slider;
    v4->_slider = v5;

    [(HUIStepSlider *)v4->_slider setIsAccessibilityElement:0];
    [(HUIStepSlider *)v4->_slider setMinimumValue:0.0];
    LODWORD(v7) = 1.0;
    [(HUIStepSlider *)v4->_slider setMaximumValue:v7];
    [(HUIStepSlider *)v4->_slider setContinuous:1];
    [(HUIStepSlider *)v4->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 0.5;
    [(HUIStepSlider *)v4->_slider setValue:v8];
    v9 = [MEMORY[0x277D75348] systemLightGrayColor];
    [(HUIStepSlider *)v4->_slider setMinimumTrackTintColor:v9];
    [(HUIStepSlider *)v4->_slider setMaximumTrackTintColor:v9];
    v68 = v9;
    [(HUIStepSlider *)v4->_slider setTickColor:v9];
    [(HUITitleValueSlider *)v4 addSubview:v4->_slider];
    v10 = v4;
    v11 = v10;
    if (v69)
    {
      v12 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v69];
      v13 = v10[54];
      v10[54] = v12;

      [v10[54] setTranslatesAutoresizingMaskIntoConstraints:0];
      [v10 addSubview:v10[54]];
      v11 = [v10[54] contentView];
    }

    v14 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v10, "semanticContentAttribute")}];
    v66 = v14 != 1;
    v15 = v14 == 1;
    v16 = objc_alloc_init(MEMORY[0x277D756B8]);
    v17 = v10 + 52;
    v18 = v10[52];
    v10[52] = v16;

    v19 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] addingSymbolicTraits:0x8000 options:0];
    v20 = v10[52];
    v21 = MEMORY[0x277D74300];
    [v19 pointSize];
    v22 = [v21 fontWithDescriptor:v19 size:?];
    [v20 setFont:v22];

    v23 = v10[52];
    v24 = [MEMORY[0x277D75348] clearColor];
    [v23 setBackgroundColor:v24];

    [v10[52] setTextAlignment:2 * v15];
    [v10[52] setNumberOfLines:0];
    [v10[52] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 addSubview:v10[52]];
    v25 = objc_alloc_init(MEMORY[0x277D756B8]);
    v26 = v10[53];
    v10[53] = v25;

    v27 = v10[53];
    v28 = MEMORY[0x277D74300];
    [v19 pointSize];
    v67 = v19;
    v29 = [v28 fontWithDescriptor:v19 size:?];
    [v27 setFont:v29];

    v30 = v10[53];
    v31 = [MEMORY[0x277D75348] clearColor];
    [v30 setBackgroundColor:v31];

    [v10[53] setTextAlignment:2 * v66];
    [v10[53] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 addSubview:v10[53]];
    if (v69)
    {
      v32 = [v10[54] contentView];
      v33 = MEMORY[0x277CCAAD0];
      v34 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelValu.isa, *v17, v10[53], 0);
      v35 = [v33 constraintsWithVisualFormat:@"H:|[_titleLabel(>=75.0)]-[_valueLabel(>=75.0)]|" options:0 metrics:0 views:v34];
      [v32 addConstraints:v35];

      v36 = [v10[54] contentView];
      v37 = MEMORY[0x277CCAAD0];
      v38 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, *v17, 0);
      v39 = [v37 constraintsWithVisualFormat:@"V:|-[_titleLabel]-|" options:0 metrics:0 views:v38];
      [v36 addConstraints:v39];

      v40 = [v10[54] contentView];
      v41 = MEMORY[0x277CCAAD0];
      v42 = _NSDictionaryOfVariableBindings(&cfstr_Valuelabel.isa, v10[53], 0);
      v43 = [v41 constraintsWithVisualFormat:@"V:|-[_valueLabel]-|" options:0 metrics:0 views:v42];
      [v40 addConstraints:v43];

      v44 = MEMORY[0x277CCAAD0];
      v45 = _NSDictionaryOfVariableBindings(&cfstr_Effectview.isa, v10[54], 0);
      v46 = [v44 constraintsWithVisualFormat:@"H:|-[_effectView]-|" options:0 metrics:0 views:v45];
      [v10 addConstraints:v46];

      v47 = MEMORY[0x277CCAAD0];
      v48 = _NSDictionaryOfVariableBindings(&cfstr_Slider.isa, v4->_slider, 0);
      v49 = [v47 constraintsWithVisualFormat:@"H:|-[_slider]-|" options:0 metrics:0 views:v48];
      [v10 addConstraints:v49];

      v50 = @"V:|-[_effectView][_slider]-|";
      v17 = v10 + 54;
      v51 = @"_effectView, _slider";
    }

    else
    {
      v52 = *v17;
      v53 = [MEMORY[0x277D75348] whiteColor];
      [v52 setTextColor:v53];

      v54 = v10[53];
      v55 = [MEMORY[0x277D75348] whiteColor];
      [v54 setTextColor:v55];

      v56 = MEMORY[0x277CCAAD0];
      v57 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelValu.isa, *v17, v10[53], 0);
      v58 = [v56 constraintsWithVisualFormat:@"H:|-[_titleLabel(>=75.0)]-[_valueLabel(>=75.0)]-|" options:0 metrics:0 views:v57];
      [v10 addConstraints:v58];

      v59 = MEMORY[0x277CCAAD0];
      v60 = _NSDictionaryOfVariableBindings(&cfstr_Slider.isa, v4->_slider, 0);
      v61 = [v59 constraintsWithVisualFormat:@"H:|-[_slider]-|" options:0 metrics:0 views:v60];
      [v10 addConstraints:v61];

      v48 = [MEMORY[0x277CCAAD0] constraintWithItem:v10[53] attribute:10 relatedBy:0 toItem:*v17 attribute:10 multiplier:1.0 constant:0.0];
      [v10 addConstraint:v48];
      v50 = @"V:|-[_titleLabel]-[_slider]-|";
      v51 = @"_titleLabel, _slider";
    }

    v62 = MEMORY[0x277CCAAD0];
    v63 = _NSDictionaryOfVariableBindings(&v51->isa, *v17, v4->_slider, 0);
    v64 = [v62 constraintsWithVisualFormat:v50 options:0 metrics:0 views:v63];
    [v10 addConstraints:v64];
  }

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  [(HUIStepSlider *)self->_slider accessibilityActivationPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)_accessibilityUserTestingChildren
{
  v5[3] = *MEMORY[0x277D85DE8];
  valueLabel = self->_valueLabel;
  v5[0] = self->_titleLabel;
  v5[1] = valueLabel;
  v5[2] = self->_slider;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];

  return v3;
}

@end