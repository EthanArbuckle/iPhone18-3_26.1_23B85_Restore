@interface HUEditableCheckmarkTextCell
- (HUEditableCheckmarkDelegate)delegate;
- (HUEditableCheckmarkTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_checkmarkTapped:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryView:(id)a3;
- (void)setChecked:(BOOL)a3;
- (void)setDisableCheckmark:(BOOL)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setRemoveCheckmark:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateConstraints;
@end

@implementation HUEditableCheckmarkTextCell

- (HUEditableCheckmarkTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v21.receiver = self;
  v21.super_class = HUEditableCheckmarkTextCell;
  v4 = [(HUEditableCheckmarkTextCell *)&v21 initWithStyle:a3 reuseIdentifier:a4];
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
    v14 = [(HUEditableCheckmarkTextCell *)v5 contentView];
    [v14 addSubview:v5->_textField];

    v15 = [[HUCheckmarkAccessoryView alloc] initWithFrame:v7, v8, v9, v10];
    checkmarkView = v5->_checkmarkView;
    v5->_checkmarkView = v15;

    [(HUCheckmarkAccessoryView *)v5->_checkmarkView sizeToFit];
    [(HUCheckmarkAccessoryView *)v5->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(HUEditableCheckmarkTextCell *)v5 contentView];
    [v17 addSubview:v5->_checkmarkView];

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
  v3 = [(HUEditableCheckmarkTextCell *)self contentView];
  [v3 layoutMargins];
  v5 = v4;

  v6 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
  v7 = [v6 superview];
  v8 = [(HUEditableCheckmarkTextCell *)self contentView];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    [v10 frame];
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
  v3 = [(HUEditableCheckmarkTextCell *)self textField];
  [v3 setText:0];

  v4 = [(HUEditableCheckmarkTextCell *)self textField];
  [v4 setPlaceholder:0];

  v5 = [(HUEditableCheckmarkTextCell *)self textField];
  [v5 setDelegate:0];

  v6 = [(HUEditableCheckmarkTextCell *)self textField];
  [v6 setEnabled:1];

  v7 = [(HUEditableCheckmarkTextCell *)self textField];
  [v7 endEditing:1];

  [(HUEditableCheckmarkTextCell *)self setDisableCheckmark:0];
  [(HUEditableCheckmarkTextCell *)self setChecked:0];
  [(HUEditableCheckmarkTextCell *)self setAllowCheckmarkSelectionWhileDisabled:0];
  v8 = [(HUEditableCheckmarkTextCell *)self checkmarkTapRecognizer];
  [v8 setEnabled:0];
}

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  accessoryView = self->_accessoryView;
  if (accessoryView != v5)
  {
    v8 = v5;
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, a3);
    [(UIView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(HUEditableCheckmarkTextCell *)self contentView];
    [v7 addSubview:self->_accessoryView];

    v5 = v8;
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v4 = [(HUEditableCheckmarkTextCell *)self textField:a3];
    [v4 becomeFirstResponder];
  }
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v5 = !a3 || [(HUEditableCheckmarkTextCell *)self allowCheckmarkSelectionWhileDisabled];
  v6 = !v3;
  v7 = [(HUEditableCheckmarkTextCell *)self textField];
  [v7 setEnabled:v6];

  if (v6)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v8 = ;
  v9 = [(HUEditableCheckmarkTextCell *)self textField];
  [v9 setTextColor:v8];

  v10 = [(HUEditableCheckmarkTextCell *)self textField];
  [v10 setClearButtonMode:v6];

  v11 = [(HUEditableCheckmarkTextCell *)self checkmarkTapRecognizer];
  [v11 setEnabled:v5];
}

- (void)setChecked:(BOOL)a3
{
  if (self->_isChecked != a3)
  {
    v4 = a3;
    self->_isChecked = a3;
    v5 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    [v5 setChecked:v4];
  }
}

- (void)setDisableCheckmark:(BOOL)a3
{
  if (self->_disableCheckmark != a3)
  {
    self->_disableCheckmark = a3;
    v5 = [(HUEditableCheckmarkTextCell *)self disableCheckmark];
    v6 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    [v6 setDisabled:v5];

    v7 = [(HUEditableCheckmarkTextCell *)self checkmarkTapRecognizer];
    [v7 setEnabled:v5 ^ 1];

    v8 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    [v8 setHidden:{-[HUEditableCheckmarkTextCell disableCheckmark](self, "disableCheckmark")}];
  }
}

- (void)setRemoveCheckmark:(BOOL)a3
{
  if (self->_removeCheckmark != a3)
  {
    self->_removeCheckmark = a3;
    if ([(HUEditableCheckmarkTextCell *)self removeCheckmark])
    {
      v5 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
      [v5 removeFromSuperview];
    }

    else
    {
      v6 = [(HUEditableCheckmarkTextCell *)self contentView];
      v7 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
      [v6 addSubview:v7];

      v5 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
      [v5 sizeToFit];
    }

    [(HUEditableCheckmarkTextCell *)self setNeedsUpdateConstraints];

    [(HUEditableCheckmarkTextCell *)self updateConstraintsIfNeeded];
  }
}

- (void)_checkmarkTapped:(id)a3
{
  v4 = [(HUEditableCheckmarkTextCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(HUEditableCheckmarkTextCell *)self delegate];
    v6 = [(HUEditableCheckmarkTextCell *)self item];
    [v7 checkmarkTappedInCell:self forItem:v6];
  }
}

- (void)updateConstraints
{
  v88[3] = *MEMORY[0x277D85DE8];
  v3 = [(HUEditableCheckmarkTextCell *)self contentView];
  v4 = [v3 layoutMarginsGuide];

  v5 = [(HUEditableCheckmarkTextCell *)self staticConstraints];

  v6 = 0x277CBE000;
  v82 = v4;
  if (!v5)
  {
    v7 = [(HUEditableCheckmarkTextCell *)self contentView];
    v8 = [v7 heightAnchor];
    v9 = [v8 constraintGreaterThanOrEqualToConstant:44.0];

    LODWORD(v10) = 1148829696;
    v80 = v9;
    [v9 setPriority:v10];
    v88[0] = v9;
    v11 = [(HUEditableCheckmarkTextCell *)self textField];
    v12 = [v11 topAnchor];
    v13 = [v4 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v88[1] = v14;
    v15 = [(HUEditableCheckmarkTextCell *)self textField];
    v16 = [v15 bottomAnchor];
    v17 = [v82 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v88[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];
    [(HUEditableCheckmarkTextCell *)self setStaticConstraints:v19];

    v6 = 0x277CBE000uLL;
    v4 = v82;

    v20 = MEMORY[0x277CCAAD0];
    v21 = [(HUEditableCheckmarkTextCell *)self staticConstraints];
    [v20 activateConstraints:v21];

    v22 = [(HUEditableCheckmarkTextCell *)self textField];
    LODWORD(v23) = 1132068864;
    [v22 setContentHuggingPriority:0 forAxis:v23];

    v24 = [(HUEditableCheckmarkTextCell *)self contentView];
    LODWORD(v25) = 1132068864;
    [v24 setContentCompressionResistancePriority:0 forAxis:v25];
  }

  v26 = objc_opt_new();
  v27 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
  v28 = [v27 superview];
  v29 = [(HUEditableCheckmarkTextCell *)self contentView];
  v30 = [v28 isEqual:v29];

  v31 = [(HUEditableCheckmarkTextCell *)self textField];
  v32 = [v31 leadingAnchor];
  v81 = v26;
  if (v30)
  {
    v74 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    v69 = [v74 trailingAnchor];
    v66 = [v32 constraintEqualToAnchor:v69 constant:12.0];
    v87[0] = v66;
    v76 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    v70 = [v76 widthAnchor];
    v72 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    v68 = [v72 heightAnchor];
    v67 = [v70 constraintEqualToAnchor:v68];
    v87[1] = v67;
    v65 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    v64 = [v65 leadingAnchor];
    v63 = [v4 leadingAnchor];
    v33 = [v64 constraintEqualToAnchor:v63];
    v87[2] = v33;
    v34 = [(HUEditableCheckmarkTextCell *)self checkmarkView];
    [v34 centerYAnchor];
    v35 = v78 = v32;
    v36 = [v4 centerYAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v87[3] = v37;
    [*(v6 + 2656) arrayWithObjects:v87 count:4];
    v38 = v31;
    v40 = v39 = v6;
    [v26 addObjectsFromArray:v40];

    v6 = v39;
    v31 = v38;
    v41 = v66;

    v4 = v82;
    v32 = v78;

    v42 = v69;
    v43 = v74;
  }

  else
  {
    v43 = [v4 leadingAnchor];
    v42 = [v32 constraintEqualToAnchor:v43];
    v86 = v42;
    v41 = [*(v6 + 2656) arrayWithObjects:&v86 count:1];
    [v26 addObjectsFromArray:v41];
  }

  v44 = [(HUEditableCheckmarkTextCell *)self accessoryView];

  v45 = [(HUEditableCheckmarkTextCell *)self textField];
  v46 = [v45 trailingAnchor];
  if (v44)
  {
    v79 = [(HUEditableCheckmarkTextCell *)self accessoryView];
    v77 = [v79 leadingAnchor];
    v75 = [v46 constraintEqualToAnchor:v77];
    v85[0] = v75;
    v73 = [(HUEditableCheckmarkTextCell *)self accessoryView];
    v71 = [v73 centerYAnchor];
    v47 = [v4 centerYAnchor];
    v48 = [v71 constraintEqualToAnchor:v47];
    v85[1] = v48;
    v49 = [(HUEditableCheckmarkTextCell *)self accessoryView];
    v50 = [v49 trailingAnchor];
    v51 = [v4 trailingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    v85[2] = v52;
    v53 = [*(v6 + 2656) arrayWithObjects:v85 count:3];
    [v81 addObjectsFromArray:v53];

    v4 = v82;
    v54 = v81;

    v45 = [(HUEditableCheckmarkTextCell *)self accessoryView];
    LODWORD(v55) = 1144766464;
    [v45 setContentCompressionResistancePriority:0 forAxis:v55];
  }

  else
  {
    v56 = [v4 trailingAnchor];
    v57 = [v46 constraintEqualToAnchor:v56];
    v84 = v57;
    v58 = [*(v6 + 2656) arrayWithObjects:&v84 count:1];
    v54 = v26;
    [v26 addObjectsFromArray:v58];
  }

  v59 = MEMORY[0x277CCAAD0];
  v60 = [(HUEditableCheckmarkTextCell *)self dynamicConstraints];
  [v59 deactivateConstraints:v60];

  [(HUEditableCheckmarkTextCell *)self setDynamicConstraints:v54];
  v61 = MEMORY[0x277CCAAD0];
  v62 = [(HUEditableCheckmarkTextCell *)self dynamicConstraints];
  [v61 activateConstraints:v62];

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