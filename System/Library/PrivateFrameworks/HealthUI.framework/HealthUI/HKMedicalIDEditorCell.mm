@interface HKMedicalIDEditorCell
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (HKMedicalIDEditorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HKMedicalIDEditorCellEditDelegate)editDelegate;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)setupStackView;
- (void)setupSubviews;
- (void)updateValueLabel;
- (void)valueDidChange;
@end

@implementation HKMedicalIDEditorCell

- (HKMedicalIDEditorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKMedicalIDEditorCell;
  v4 = [(HKMedicalIDEditorCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    if ([objc_opt_class() showsLabelAndValue])
    {
      [(HKMedicalIDEditorCell *)v4 setupSubviews];
      [(HKMedicalIDEditorCell *)v4 setupStackView];
      [(HKMedicalIDEditorCell *)v4 _contentSizeCategoryDidChange:0];
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = HKMedicalIDEditorCell;
  [(HKMedicalIDEditorCell *)&v4 dealloc];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKMedicalIDEditorCell *)self setLabelLabel:v3];

  v4 = HKHealthKeyColor();
  v5 = [(HKMedicalIDEditorCell *)self labelLabel];
  [v5 setTextColor:v4];

  v6 = [(HKMedicalIDEditorCell *)self labelLabel];
  LODWORD(v7) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v7];

  v8 = objc_alloc_init(HKCaretOptionalTextField);
  [(HKMedicalIDEditorCell *)self setInputTextField:v8];

  v9 = [(HKMedicalIDEditorCell *)self inputTextField];
  [v9 setDelegate:self];

  v10 = [(HKMedicalIDEditorCell *)self inputTextField];
  [v10 setAdjustsFontSizeToFitWidth:1];

  v11 = [(HKMedicalIDEditorCell *)self inputTextField];
  LODWORD(v12) = 1132068864;
  [v11 setContentHuggingPriority:0 forAxis:v12];

  v13 = [MEMORY[0x1E69DC888] labelColor];
  v14 = [(HKMedicalIDEditorCell *)self inputTextField];
  [v14 setTextColor:v13];

  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(HKMedicalIDEditorCell *)self setVerticalSeparatorView:v15];

  v17 = [MEMORY[0x1E69DC888] tableSeparatorColor];
  v16 = [(HKMedicalIDEditorCell *)self verticalSeparatorView];
  [v16 setBackgroundColor:v17];
}

- (void)setupStackView
{
  v43[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [(HKMedicalIDEditorCell *)self labelLabel];
  v5 = [(HKMedicalIDEditorCell *)self verticalSeparatorView];
  v43[1] = v5;
  v6 = [(HKMedicalIDEditorCell *)self inputTextField];
  v43[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  v8 = [v3 initWithArrangedSubviews:v7];
  [(HKMedicalIDEditorCell *)self setStackView:v8];

  v9 = [(HKMedicalIDEditorCell *)self stackView];
  [v9 setSpacing:1.17549435e-38];

  v10 = [(HKMedicalIDEditorCell *)self stackView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HKMedicalIDEditorCell *)self contentView];
  v12 = [(HKMedicalIDEditorCell *)self stackView];
  [v11 addSubview:v12];

  v13 = [(HKMedicalIDEditorCell *)self stackView];
  v14 = [v13 leadingAnchor];
  v15 = [(HKMedicalIDEditorCell *)self contentView];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToSystemSpacingAfterAnchor:v16 multiplier:1.0];
  [v17 setActive:1];

  v18 = [(HKMedicalIDEditorCell *)self stackView];
  v19 = [v18 trailingAnchor];
  v20 = [(HKMedicalIDEditorCell *)self contentView];
  v21 = [v20 trailingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(HKMedicalIDEditorCell *)self stackView];
  v24 = [v23 topAnchor];
  v25 = [(HKMedicalIDEditorCell *)self contentView];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = [(HKMedicalIDEditorCell *)self stackView];
  v29 = [v28 bottomAnchor];
  v30 = [(HKMedicalIDEditorCell *)self contentView];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  v33 = [(HKMedicalIDEditorCell *)self stackView];
  v34 = [v33 heightAnchor];
  v35 = [v34 constraintGreaterThanOrEqualToConstant:44.0];

  LODWORD(v36) = 1144750080;
  [v35 setPriority:v36];
  [v35 setActive:1];
  v37 = [(HKMedicalIDEditorCell *)self labelLabel];
  v38 = [v37 widthAnchor];
  v39 = [v38 constraintGreaterThanOrEqualToConstant:90.0];
  [v39 setActive:1];

  v40 = [(HKMedicalIDEditorCell *)self verticalSeparatorView];
  v41 = [v40 widthAnchor];
  v42 = [v41 constraintEqualToConstant:0.5];
  [v42 setActive:1];
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v5 = [(HKMedicalIDEditorCell *)self labelLabel];
  [v5 setFont:v4];

  v6 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v7 = [(HKMedicalIDEditorCell *)self inputTextField];
  [v7 setFont:v6];

  v8 = [(HKMedicalIDEditorCell *)self inputTextField];
  [v8 setAdjustsFontSizeToFitWidth:1];

  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v10 = [(HKMedicalIDEditorCell *)self verticalSeparatorView];
  [v10 setHidden:IsUsingAccessibilityContentSizeCategory];

  LODWORD(IsUsingAccessibilityContentSizeCategory) = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v11 = [(HKMedicalIDEditorCell *)self stackView];
  [v11 setAxis:IsUsingAccessibilityContentSizeCategory];
}

- (void)valueDidChange
{
  [(HKMedicalIDEditorCell *)self updateValueLabel];
  v3 = [(HKMedicalIDEditorCell *)self editDelegate];
  [v3 medicalIDEditorCellDidChangeValue:self];
}

- (void)updateValueLabel
{
  if (self->_inputTextField)
  {
    v3 = [(HKMedicalIDEditorCell *)self formattedValue];
    [(HKCaretOptionalTextField *)self->_inputTextField setText:v3];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = [(HKMedicalIDEditorCell *)self _tableView];
  if ([v4 isDragging] & 1) != 0 || (objc_msgSend(v4, "isDecelerating") & 1) != 0 || (objc_msgSend(v4, "isTracking"))
  {
    v5 = 0;
  }

  else
  {
    __setCurrentlyEditingCell(self);
    v5 = 1;
  }

  return v5;
}

- (HKMedicalIDEditorCellEditDelegate)editDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editDelegate);

  return WeakRetained;
}

@end