@interface HKMedicalIDEmergencyAccessLearnMoreCell
- (HKMedicalIDEmergencyAccessLearnMoreCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_makeTextView;
- (void)_addSubviews;
- (void)_setUpConstraints;
- (void)_setUpViews;
- (void)setItems:(id)a3;
@end

@implementation HKMedicalIDEmergencyAccessLearnMoreCell

- (HKMedicalIDEmergencyAccessLearnMoreCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKMedicalIDEmergencyAccessLearnMoreCell;
  v4 = [(HKMedicalIDEmergencyAccessLearnMoreCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKMedicalIDEmergencyAccessLearnMoreCell *)v4 _setUpViews];
    [(HKMedicalIDEmergencyAccessLearnMoreCell *)v5 _addSubviews];
    [(HKMedicalIDEmergencyAccessLearnMoreCell *)v5 _setUpConstraints];
  }

  return v5;
}

- (void)_setUpViews
{
  [(HKMedicalIDEmergencyAccessLearnMoreCell *)self setSelectionStyle:0];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  itemsStackView = self->_itemsStackView;
  self->_itemsStackView = v4;

  [(UIStackView *)self->_itemsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_itemsStackView setSpacing:20.0];
  [(UIStackView *)self->_itemsStackView setAxis:1];
  [(UIStackView *)self->_itemsStackView setAlignment:0];
  v6 = self->_itemsStackView;

  [(UIStackView *)v6 setDistribution:0];
}

- (void)_addSubviews
{
  v3 = [(HKMedicalIDEmergencyAccessLearnMoreCell *)self contentView];
  [v3 addSubview:self->_itemsStackView];
}

- (void)_setUpConstraints
{
  v21[4] = *MEMORY[0x1E69E9840];
  v14 = MEMORY[0x1E696ACD8];
  v19 = [(UIStackView *)self->_itemsStackView topAnchor];
  v20 = [(HKMedicalIDEmergencyAccessLearnMoreCell *)self contentView];
  v18 = [v20 topAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 constant:16.0];
  v21[0] = v17;
  v15 = [(UIStackView *)self->_itemsStackView leadingAnchor];
  v16 = [(HKMedicalIDEmergencyAccessLearnMoreCell *)self contentView];
  v13 = [v16 leadingAnchor];
  v3 = [v15 constraintEqualToAnchor:v13 constant:16.0];
  v21[1] = v3;
  v4 = [(UIStackView *)self->_itemsStackView trailingAnchor];
  v5 = [(HKMedicalIDEmergencyAccessLearnMoreCell *)self contentView];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:-16.0];
  v21[2] = v7;
  v8 = [(UIStackView *)self->_itemsStackView bottomAnchor];
  v9 = [(HKMedicalIDEmergencyAccessLearnMoreCell *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:-16.0];
  v21[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  [v14 activateConstraints:v12];
}

- (id)_makeTextView
{
  v2 = objc_alloc(MEMORY[0x1E69DD168]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAdjustsFontForContentSizeCategory:1];
  [v3 setScrollEnabled:0];
  [v3 setBounces:0];
  [v3 setEditable:0];
  [v3 _setInteractiveTextSelectionDisabled:1];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v3;
}

- (void)setItems:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v37 = self;
  v5 = [(UIStackView *)self->_itemsStackView arrangedSubviews];
  v6 = [v5 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v46 + 1) + 8 * i) removeFromSuperview];
      }

      v7 = [v5 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v38 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v38)
  {
    v36 = *v43;
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    v35 = *MEMORY[0x1E69DDDC0];
    v34 = *MEMORY[0x1E69DB650];
    v33 = *MEMORY[0x1E69DDCF8];
    v14 = *MEMORY[0x1E69DB648];
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * j);
        v17 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v10, v11, v12, v13}];
        [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v17 setSpacing:0.0];
        [v17 setAxis:1];
        [v17 setAlignment:0];
        [v17 setDistribution:0];
        v18 = [(HKMedicalIDEmergencyAccessLearnMoreCell *)v37 _makeTextView];
        v19 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v35];
        v41 = [v19 fontDescriptorWithSymbolicTraits:2];

        v40 = [MEMORY[0x1E69DB878] fontWithDescriptor:v41 size:0.0];
        v52[0] = v34;
        v20 = [MEMORY[0x1E69DC888] labelColor];
        v52[1] = v14;
        v53[0] = v20;
        v53[1] = v40;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];

        v21 = objc_alloc(MEMORY[0x1E696AAB0]);
        v22 = v16;
        v23 = [v16 title];
        v24 = [v21 initWithString:v23 attributes:v39];
        [v18 setAttributedText:v24];

        [v17 addArrangedSubview:v18];
        v25 = [(HKMedicalIDEmergencyAccessLearnMoreCell *)v37 _makeTextView];
        v50[0] = v34;
        v26 = [MEMORY[0x1E69DC888] labelColor];
        v50[1] = v14;
        v51[0] = v26;
        v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v33];
        v51[1] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];

        v29 = objc_alloc(MEMORY[0x1E696AAB0]);
        v30 = [v22 body];
        v31 = [v29 initWithString:v30 attributes:v28];
        [v25 setAttributedText:v31];

        [v17 addArrangedSubview:v25];
        [(UIStackView *)v37->_itemsStackView addArrangedSubview:v17];
      }

      v38 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v38);
  }
}

@end