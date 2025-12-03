@interface HKMedicalIDEditorCell
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (HKMedicalIDEditorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HKMedicalIDEditorCellEditDelegate)editDelegate;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)setupStackView;
- (void)setupSubviews;
- (void)updateValueLabel;
- (void)valueDidChange;
@end

@implementation HKMedicalIDEditorCell

- (HKMedicalIDEditorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKMedicalIDEditorCell;
  v4 = [(HKMedicalIDEditorCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    if ([objc_opt_class() showsLabelAndValue])
    {
      [(HKMedicalIDEditorCell *)v4 setupSubviews];
      [(HKMedicalIDEditorCell *)v4 setupStackView];
      [(HKMedicalIDEditorCell *)v4 _contentSizeCategoryDidChange:0];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = HKMedicalIDEditorCell;
  [(HKMedicalIDEditorCell *)&v4 dealloc];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKMedicalIDEditorCell *)self setLabelLabel:v3];

  v4 = HKHealthKeyColor();
  labelLabel = [(HKMedicalIDEditorCell *)self labelLabel];
  [labelLabel setTextColor:v4];

  labelLabel2 = [(HKMedicalIDEditorCell *)self labelLabel];
  LODWORD(v7) = 1148846080;
  [labelLabel2 setContentHuggingPriority:0 forAxis:v7];

  v8 = objc_alloc_init(HKCaretOptionalTextField);
  [(HKMedicalIDEditorCell *)self setInputTextField:v8];

  inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField setDelegate:self];

  inputTextField2 = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField2 setAdjustsFontSizeToFitWidth:1];

  inputTextField3 = [(HKMedicalIDEditorCell *)self inputTextField];
  LODWORD(v12) = 1132068864;
  [inputTextField3 setContentHuggingPriority:0 forAxis:v12];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  inputTextField4 = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField4 setTextColor:labelColor];

  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(HKMedicalIDEditorCell *)self setVerticalSeparatorView:v15];

  tableSeparatorColor = [MEMORY[0x1E69DC888] tableSeparatorColor];
  verticalSeparatorView = [(HKMedicalIDEditorCell *)self verticalSeparatorView];
  [verticalSeparatorView setBackgroundColor:tableSeparatorColor];
}

- (void)setupStackView
{
  v43[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  labelLabel = [(HKMedicalIDEditorCell *)self labelLabel];
  verticalSeparatorView = [(HKMedicalIDEditorCell *)self verticalSeparatorView];
  v43[1] = verticalSeparatorView;
  inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
  v43[2] = inputTextField;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  v8 = [v3 initWithArrangedSubviews:v7];
  [(HKMedicalIDEditorCell *)self setStackView:v8];

  stackView = [(HKMedicalIDEditorCell *)self stackView];
  [stackView setSpacing:1.17549435e-38];

  stackView2 = [(HKMedicalIDEditorCell *)self stackView];
  [stackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HKMedicalIDEditorCell *)self contentView];
  stackView3 = [(HKMedicalIDEditorCell *)self stackView];
  [contentView addSubview:stackView3];

  stackView4 = [(HKMedicalIDEditorCell *)self stackView];
  leadingAnchor = [stackView4 leadingAnchor];
  contentView2 = [(HKMedicalIDEditorCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  [v17 setActive:1];

  stackView5 = [(HKMedicalIDEditorCell *)self stackView];
  trailingAnchor = [stackView5 trailingAnchor];
  contentView3 = [(HKMedicalIDEditorCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v22 setActive:1];

  stackView6 = [(HKMedicalIDEditorCell *)self stackView];
  topAnchor = [stackView6 topAnchor];
  contentView4 = [(HKMedicalIDEditorCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v27 setActive:1];

  stackView7 = [(HKMedicalIDEditorCell *)self stackView];
  bottomAnchor = [stackView7 bottomAnchor];
  contentView5 = [(HKMedicalIDEditorCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v32 setActive:1];

  stackView8 = [(HKMedicalIDEditorCell *)self stackView];
  heightAnchor = [stackView8 heightAnchor];
  v35 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];

  LODWORD(v36) = 1144750080;
  [v35 setPriority:v36];
  [v35 setActive:1];
  labelLabel2 = [(HKMedicalIDEditorCell *)self labelLabel];
  widthAnchor = [labelLabel2 widthAnchor];
  v39 = [widthAnchor constraintGreaterThanOrEqualToConstant:90.0];
  [v39 setActive:1];

  verticalSeparatorView2 = [(HKMedicalIDEditorCell *)self verticalSeparatorView];
  widthAnchor2 = [verticalSeparatorView2 widthAnchor];
  v42 = [widthAnchor2 constraintEqualToConstant:0.5];
  [v42 setActive:1];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  labelLabel = [(HKMedicalIDEditorCell *)self labelLabel];
  [labelLabel setFont:v4];

  v6 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  inputTextField = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField setFont:v6];

  inputTextField2 = [(HKMedicalIDEditorCell *)self inputTextField];
  [inputTextField2 setAdjustsFontSizeToFitWidth:1];

  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  verticalSeparatorView = [(HKMedicalIDEditorCell *)self verticalSeparatorView];
  [verticalSeparatorView setHidden:IsUsingAccessibilityContentSizeCategory];

  LODWORD(IsUsingAccessibilityContentSizeCategory) = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  stackView = [(HKMedicalIDEditorCell *)self stackView];
  [stackView setAxis:IsUsingAccessibilityContentSizeCategory];
}

- (void)valueDidChange
{
  [(HKMedicalIDEditorCell *)self updateValueLabel];
  editDelegate = [(HKMedicalIDEditorCell *)self editDelegate];
  [editDelegate medicalIDEditorCellDidChangeValue:self];
}

- (void)updateValueLabel
{
  if (self->_inputTextField)
  {
    formattedValue = [(HKMedicalIDEditorCell *)self formattedValue];
    [(HKCaretOptionalTextField *)self->_inputTextField setText:formattedValue];
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  _tableView = [(HKMedicalIDEditorCell *)self _tableView];
  if ([_tableView isDragging] & 1) != 0 || (objc_msgSend(_tableView, "isDecelerating") & 1) != 0 || (objc_msgSend(_tableView, "isTracking"))
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