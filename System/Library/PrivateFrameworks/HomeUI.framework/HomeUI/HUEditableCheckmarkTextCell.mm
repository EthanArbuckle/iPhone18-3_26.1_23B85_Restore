@interface HUEditableCheckmarkTextCell
- (HUEditableCheckmarkDelegate)delegate;
- (HUEditableCheckmarkTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_checkmarkTapped:(id)tapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryView:(id)view;
- (void)setChecked:(BOOL)checked;
- (void)setDisableCheckmark:(BOOL)checkmark;
- (void)setDisabled:(BOOL)disabled;
- (void)setRemoveCheckmark:(BOOL)checkmark;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateConstraints;
@end

@implementation HUEditableCheckmarkTextCell

- (HUEditableCheckmarkTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v21.receiver = self;
  v21.super_class = HUEditableCheckmarkTextCell;
  v4 = [(HUEditableCheckmarkTextCell *)&v21 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_disableCheckmark = 0;
    v4->_removeCheckmark = 0;
    v4->_isChecked = 0;
    v4->_allowCheckmarkSelectionWhileDisabled = 0;
    v6 = objc_alloc(MEMORY[0x277D75BB8]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    textField = v5->_textField;
    v5->_textField = v11;

    [(UITextField *)v5->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextField *)v5->_textField setFont:v13];

    [(UITextField *)v5->_textField setAdjustsFontForContentSizeCategory:1];
    [(UITextField *)v5->_textField setReturnKeyType:9];
    [(UITextField *)v5->_textField setClearButtonMode:3];
    [(UITextField *)v5->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUEditableCheckmarkTextCell *)v5 contentView];
    [contentView addSubview:v5->_textField];

    v15 = [[HUCheckmarkAccessoryView alloc] initWithFrame:v7, v8, v9, v10];
    checkmarkView = v5->_checkmarkView;
    v5->_checkmarkView = v15;

    [(HUCheckmarkAccessoryView *)v5->_checkmarkView sizeToFit];
    [(HUCheckmarkAccessoryView *)v5->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(HUEditableCheckmarkTextCell *)v5 contentView];
    [contentView2 addSubview:v5->_checkmarkView];

    v18 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v5 action:sel__checkmarkTapped_];
    checkmarkTapRecognizer = v5->_checkmarkTapRecognizer;
    v5->_checkmarkTapRecognizer = v18;

    [(UITapGestureRecognizer *)v5->_checkmarkTapRecognizer setCancelsTouchesInView:1];
    [(UITapGestureRecognizer *)v5->_checkmarkTapRecognizer setDelegate:v5];
    [(HUCheckmarkAccessoryView *)v5->_checkmarkView setUserInteractionEnabled:1];
    [(HUCheckmarkAccessoryView *)v5->_checkmarkView addGestureRecognizer:v5->_checkmarkTapRecognizer];
  }

  return v5;
}

- (void)layoutSubviews
{
  contentView = [(HUEditableCheckmarkTextCell *)self contentView];
  [contentView layoutMargins];
  v5 = v4;

  checkmarkView = [(HUEditableCheckmarkTextCell *)self checkmarkView];
  superview = [checkmarkView superview];
  contentView2 = [(HUEditableCheckmarkTextCell *)self contentView];
  v9 = [superview isEqual:contentView2];

  if (v9)
  {
    checkmarkView2 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    [checkmarkView2 frame];
    v5 = v5 + v11 + 0.0 + 12.0;
  }

  [(HUEditableCheckmarkTextCell *)self setSeparatorInset:0.0, v5, 0.0, 0.0];
  [(HUEditableCheckmarkTextCell *)self separatorInset];
  if (v5 != v15 || v12 != 0.0 || v14 != 0.0 || v13 != 0.0)
  {
    [(HUEditableCheckmarkTextCell *)self separatorInset];
    [(HUEditableCheckmarkTextCell *)self setSeparatorInset:0.0, v5 + v5 - v16, 0.0, 0.0];
  }

  v17.receiver = self;
  v17.super_class = HUEditableCheckmarkTextCell;
  [(HUEditableCheckmarkTextCell *)&v17 layoutSubviews];
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = HUEditableCheckmarkTextCell;
  [(HUEditableCheckmarkTextCell *)&v9 prepareForReuse];
  textField = [(HUEditableCheckmarkTextCell *)self textField];
  [textField setText:0];

  textField2 = [(HUEditableCheckmarkTextCell *)self textField];
  [textField2 setPlaceholder:0];

  textField3 = [(HUEditableCheckmarkTextCell *)self textField];
  [textField3 setDelegate:0];

  textField4 = [(HUEditableCheckmarkTextCell *)self textField];
  [textField4 setEnabled:1];

  textField5 = [(HUEditableCheckmarkTextCell *)self textField];
  [textField5 endEditing:1];

  [(HUEditableCheckmarkTextCell *)self setDisableCheckmark:0];
  [(HUEditableCheckmarkTextCell *)self setChecked:0];
  [(HUEditableCheckmarkTextCell *)self setAllowCheckmarkSelectionWhileDisabled:0];
  checkmarkTapRecognizer = [(HUEditableCheckmarkTextCell *)self checkmarkTapRecognizer];
  [checkmarkTapRecognizer setEnabled:0];
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  accessoryView = self->_accessoryView;
  if (accessoryView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, view);
    [(UIView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUEditableCheckmarkTextCell *)self contentView];
    [contentView addSubview:self->_accessoryView];

    viewCopy = v8;
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  if (selected)
  {
    v4 = [(HUEditableCheckmarkTextCell *)self textField:selected];
    [v4 becomeFirstResponder];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v5 = !disabled || [(HUEditableCheckmarkTextCell *)self allowCheckmarkSelectionWhileDisabled];
  v6 = !disabledCopy;
  textField = [(HUEditableCheckmarkTextCell *)self textField];
  [textField setEnabled:v6];

  if (v6)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v8 = ;
  textField2 = [(HUEditableCheckmarkTextCell *)self textField];
  [textField2 setTextColor:v8];

  textField3 = [(HUEditableCheckmarkTextCell *)self textField];
  [textField3 setClearButtonMode:v6];

  checkmarkTapRecognizer = [(HUEditableCheckmarkTextCell *)self checkmarkTapRecognizer];
  [checkmarkTapRecognizer setEnabled:v5];
}

- (void)setChecked:(BOOL)checked
{
  if (self->_isChecked != checked)
  {
    checkedCopy = checked;
    self->_isChecked = checked;
    checkmarkView = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    [checkmarkView setChecked:checkedCopy];
  }
}

- (void)setDisableCheckmark:(BOOL)checkmark
{
  if (self->_disableCheckmark != checkmark)
  {
    self->_disableCheckmark = checkmark;
    disableCheckmark = [(HUEditableCheckmarkTextCell *)self disableCheckmark];
    checkmarkView = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    [checkmarkView setDisabled:disableCheckmark];

    checkmarkTapRecognizer = [(HUEditableCheckmarkTextCell *)self checkmarkTapRecognizer];
    [checkmarkTapRecognizer setEnabled:disableCheckmark ^ 1];

    checkmarkView2 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    [checkmarkView2 setHidden:{-[HUEditableCheckmarkTextCell disableCheckmark](self, "disableCheckmark")}];
  }
}

- (void)setRemoveCheckmark:(BOOL)checkmark
{
  if (self->_removeCheckmark != checkmark)
  {
    self->_removeCheckmark = checkmark;
    if ([(HUEditableCheckmarkTextCell *)self removeCheckmark])
    {
      checkmarkView = [(HUEditableCheckmarkTextCell *)self checkmarkView];
      [checkmarkView removeFromSuperview];
    }

    else
    {
      contentView = [(HUEditableCheckmarkTextCell *)self contentView];
      checkmarkView2 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
      [contentView addSubview:checkmarkView2];

      checkmarkView = [(HUEditableCheckmarkTextCell *)self checkmarkView];
      [checkmarkView sizeToFit];
    }

    [(HUEditableCheckmarkTextCell *)self setNeedsUpdateConstraints];

    [(HUEditableCheckmarkTextCell *)self updateConstraintsIfNeeded];
  }
}

- (void)_checkmarkTapped:(id)tapped
{
  delegate = [(HUEditableCheckmarkTextCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HUEditableCheckmarkTextCell *)self delegate];
    item = [(HUEditableCheckmarkTextCell *)self item];
    [delegate2 checkmarkTappedInCell:self forItem:item];
  }
}

- (void)updateConstraints
{
  v88[3] = *MEMORY[0x277D85DE8];
  contentView = [(HUEditableCheckmarkTextCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];

  staticConstraints = [(HUEditableCheckmarkTextCell *)self staticConstraints];

  v6 = 0x277CBE000;
  v82 = layoutMarginsGuide;
  if (!staticConstraints)
  {
    contentView2 = [(HUEditableCheckmarkTextCell *)self contentView];
    heightAnchor = [contentView2 heightAnchor];
    v9 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];

    LODWORD(v10) = 1148829696;
    v80 = v9;
    [v9 setPriority:v10];
    v88[0] = v9;
    textField = [(HUEditableCheckmarkTextCell *)self textField];
    topAnchor = [textField topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v88[1] = v14;
    textField2 = [(HUEditableCheckmarkTextCell *)self textField];
    bottomAnchor = [textField2 bottomAnchor];
    bottomAnchor2 = [v82 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v88[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];
    [(HUEditableCheckmarkTextCell *)self setStaticConstraints:v19];

    v6 = 0x277CBE000uLL;
    layoutMarginsGuide = v82;

    v20 = MEMORY[0x277CCAAD0];
    staticConstraints2 = [(HUEditableCheckmarkTextCell *)self staticConstraints];
    [v20 activateConstraints:staticConstraints2];

    textField3 = [(HUEditableCheckmarkTextCell *)self textField];
    LODWORD(v23) = 1132068864;
    [textField3 setContentHuggingPriority:0 forAxis:v23];

    contentView3 = [(HUEditableCheckmarkTextCell *)self contentView];
    LODWORD(v25) = 1132068864;
    [contentView3 setContentCompressionResistancePriority:0 forAxis:v25];
  }

  v26 = objc_opt_new();
  checkmarkView = [(HUEditableCheckmarkTextCell *)self checkmarkView];
  superview = [checkmarkView superview];
  contentView4 = [(HUEditableCheckmarkTextCell *)self contentView];
  v30 = [superview isEqual:contentView4];

  textField4 = [(HUEditableCheckmarkTextCell *)self textField];
  leadingAnchor = [textField4 leadingAnchor];
  v81 = v26;
  if (v30)
  {
    checkmarkView2 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    trailingAnchor = [checkmarkView2 trailingAnchor];
    v66 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:12.0];
    v87[0] = v66;
    checkmarkView3 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    widthAnchor = [checkmarkView3 widthAnchor];
    checkmarkView4 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    heightAnchor2 = [checkmarkView4 heightAnchor];
    v67 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    v87[1] = v67;
    checkmarkView5 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    leadingAnchor2 = [checkmarkView5 leadingAnchor];
    leadingAnchor3 = [layoutMarginsGuide leadingAnchor];
    v33 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v87[2] = v33;
    checkmarkView6 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    [checkmarkView6 centerYAnchor];
    v35 = v78 = leadingAnchor;
    centerYAnchor = [layoutMarginsGuide centerYAnchor];
    v37 = [v35 constraintEqualToAnchor:centerYAnchor];
    v87[3] = v37;
    [*(v6 + 2656) arrayWithObjects:v87 count:4];
    v38 = textField4;
    v40 = v39 = v6;
    [v26 addObjectsFromArray:v40];

    v6 = v39;
    textField4 = v38;
    v41 = v66;

    layoutMarginsGuide = v82;
    leadingAnchor = v78;

    v42 = trailingAnchor;
    leadingAnchor4 = checkmarkView2;
  }

  else
  {
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor4];
    v86 = v42;
    v41 = [*(v6 + 2656) arrayWithObjects:&v86 count:1];
    [v26 addObjectsFromArray:v41];
  }

  accessoryView = [(HUEditableCheckmarkTextCell *)self accessoryView];

  textField5 = [(HUEditableCheckmarkTextCell *)self textField];
  trailingAnchor2 = [textField5 trailingAnchor];
  if (accessoryView)
  {
    accessoryView2 = [(HUEditableCheckmarkTextCell *)self accessoryView];
    leadingAnchor5 = [accessoryView2 leadingAnchor];
    v75 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor5];
    v85[0] = v75;
    accessoryView3 = [(HUEditableCheckmarkTextCell *)self accessoryView];
    centerYAnchor2 = [accessoryView3 centerYAnchor];
    centerYAnchor3 = [layoutMarginsGuide centerYAnchor];
    v48 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
    v85[1] = v48;
    accessoryView4 = [(HUEditableCheckmarkTextCell *)self accessoryView];
    trailingAnchor3 = [accessoryView4 trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v85[2] = v52;
    v53 = [*(v6 + 2656) arrayWithObjects:v85 count:3];
    [v81 addObjectsFromArray:v53];

    layoutMarginsGuide = v82;
    v54 = v81;

    textField5 = [(HUEditableCheckmarkTextCell *)self accessoryView];
    LODWORD(v55) = 1144766464;
    [textField5 setContentCompressionResistancePriority:0 forAxis:v55];
  }

  else
  {
    trailingAnchor5 = [layoutMarginsGuide trailingAnchor];
    v57 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor5];
    v84 = v57;
    v58 = [*(v6 + 2656) arrayWithObjects:&v84 count:1];
    v54 = v26;
    [v26 addObjectsFromArray:v58];
  }

  v59 = MEMORY[0x277CCAAD0];
  dynamicConstraints = [(HUEditableCheckmarkTextCell *)self dynamicConstraints];
  [v59 deactivateConstraints:dynamicConstraints];

  [(HUEditableCheckmarkTextCell *)self setDynamicConstraints:v54];
  v61 = MEMORY[0x277CCAAD0];
  dynamicConstraints2 = [(HUEditableCheckmarkTextCell *)self dynamicConstraints];
  [v61 activateConstraints:dynamicConstraints2];

  v83.receiver = self;
  v83.super_class = HUEditableCheckmarkTextCell;
  [(HUEditableCheckmarkTextCell *)&v83 updateConstraints];
}

- (HUEditableCheckmarkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end