@interface HUNameAndIconEditorCell
- (HUNameAndIconEditorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUNameAndIconEditorCellDelegate)delegate;
- (UIFont)textFieldFont;
- (void)_handleIconButtonTap:(id)a3;
- (void)_setupConstraints;
- (void)_updateDisabled;
- (void)_updateVariableTextFieldConstraints;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)setHideIconButton:(BOOL)a3;
- (void)setTextFieldFont:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUNameAndIconEditorCell

- (HUNameAndIconEditorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v34.receiver = self;
  v34.super_class = HUNameAndIconEditorCell;
  v4 = [(HUNameAndIconEditorCell *)&v34 initWithStyle:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    [(HUNameAndIconEditorCell *)v4 setContainerView:v10];

    v11 = [(HUNameAndIconEditorCell *)v4 containerView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(HUNameAndIconEditorCell *)v4 contentView];
    v13 = [(HUNameAndIconEditorCell *)v4 containerView];
    [v12 addSubview:v13];

    v14 = [[HUIconButton alloc] initWithFrame:v6, v7, v8, v9];
    [(HUNameAndIconEditorCell *)v4 setIconButton:v14];

    v15 = [(HUNameAndIconEditorCell *)v4 iconButton];
    [v15 addTarget:v4 action:sel__handleIconButtonTap_ forControlEvents:64];

    v16 = [(HUNameAndIconEditorCell *)v4 iconButton];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [(HUNameAndIconEditorCell *)v4 containerView];
    v18 = [(HUNameAndIconEditorCell *)v4 iconButton];
    [v17 addSubview:v18];

    v19 = [(HUNameAndIconEditorCell *)v4 iconButton];
    [v19 setContentMode:1];

    v20 = [objc_alloc(MEMORY[0x277D75BB8]) initWithFrame:{v6, v7, v8, v9}];
    [(HUNameAndIconEditorCell *)v4 setTextField:v20];

    v21 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    v22 = MEMORY[0x277D74300];
    [v21 scaledValueForValue:17.0];
    v23 = [v22 systemFontOfSize:? weight:?];
    v24 = [(HUNameAndIconEditorCell *)v4 textField];
    [v24 setFont:v23];

    v25 = [(HUNameAndIconEditorCell *)v4 textField];
    [v25 setReturnKeyType:9];

    v26 = [(HUNameAndIconEditorCell *)v4 textField];
    [v26 setClearButtonMode:1];

    v27 = [(HUNameAndIconEditorCell *)v4 textField];
    [v27 setAutocapitalizationType:1];

    v28 = [(HUNameAndIconEditorCell *)v4 textField];
    [v28 setContentVerticalAlignment:0];

    v29 = [(HUNameAndIconEditorCell *)v4 textField];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

    v30 = [(HUNameAndIconEditorCell *)v4 textField];
    [v30 setAdjustsFontForContentSizeCategory:1];

    v31 = [(HUNameAndIconEditorCell *)v4 containerView];
    v32 = [(HUNameAndIconEditorCell *)v4 textField];
    [v31 addSubview:v32];

    [(HUNameAndIconEditorCell *)v4 setHideIconButton:0];
    [(HUNameAndIconEditorCell *)v4 _setupConstraints];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUNameAndIconEditorCell;
  [(HUNameAndIconEditorCell *)&v4 prepareForReuse];
  [(HUNameAndIconEditorCell *)self setDisabled:0];
  v3 = [(HUNameAndIconEditorCell *)self iconButton];
  [v3 setHidden:0];
}

- (void)_setupConstraints
{
  v54[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUNameAndIconEditorCell *)self containerView];
  v5 = [v4 leadingAnchor];
  v6 = [(HUNameAndIconEditorCell *)self contentView];
  v7 = [v6 leadingAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  [v3 addObject:v8];

  v9 = [(HUNameAndIconEditorCell *)self containerView];
  v10 = [v9 trailingAnchor];
  v11 = [(HUNameAndIconEditorCell *)self contentView];
  v12 = [v11 trailingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v3 addObject:v13];

  v14 = [(HUNameAndIconEditorCell *)self containerView];
  v15 = [v14 topAnchor];
  v16 = [(HUNameAndIconEditorCell *)self contentView];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v53 = v3;
  [v3 addObject:v18];

  v19 = [(HUNameAndIconEditorCell *)self containerView];
  v20 = [v19 bottomAnchor];
  v21 = [(HUNameAndIconEditorCell *)self contentView];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v3 addObject:v23];

  v52 = [(HUNameAndIconEditorCell *)self iconButton];
  v50 = [v52 leadingAnchor];
  v51 = [(HUNameAndIconEditorCell *)self containerView];
  v49 = [v51 leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:10.0];
  v54[0] = v48;
  v47 = [(HUNameAndIconEditorCell *)self iconButton];
  v46 = [v47 topAnchor];
  v24 = [(HUNameAndIconEditorCell *)self containerView];
  v25 = [v24 topAnchor];
  v26 = [v46 constraintEqualToAnchor:v25 constant:10.0];
  v54[1] = v26;
  v27 = [(HUNameAndIconEditorCell *)self iconButton];
  v28 = [v27 bottomAnchor];
  v29 = [(HUNameAndIconEditorCell *)self containerView];
  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor:v30 constant:-10.0];
  v54[2] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
  [(HUNameAndIconEditorCell *)self setIconButtonConstraints:v32];

  v33 = [(HUNameAndIconEditorCell *)self iconButton];
  LODWORD(v34) = 1148846080;
  [v33 setContentHuggingPriority:0 forAxis:v34];

  v35 = [(HUNameAndIconEditorCell *)self iconButton];
  LODWORD(v36) = 1148846080;
  [v35 setContentHuggingPriority:1 forAxis:v36];

  v37 = [(HUNameAndIconEditorCell *)self iconButton];
  LODWORD(v38) = 1148846080;
  [v37 setContentCompressionResistancePriority:0 forAxis:v38];

  v39 = [(HUNameAndIconEditorCell *)self iconButtonConstraints];
  [v53 addObjectsFromArray:v39];

  [(HUNameAndIconEditorCell *)self _updateVariableTextFieldConstraints];
  v40 = [(HUNameAndIconEditorCell *)self textField];
  v41 = [v40 trailingAnchor];
  v42 = [(HUNameAndIconEditorCell *)self containerView];
  v43 = [v42 layoutMarginsGuide];
  v44 = [v43 trailingAnchor];
  v45 = [v41 constraintEqualToAnchor:v44];
  [v53 addObject:v45];

  [MEMORY[0x277CCAAD0] activateConstraints:v53];
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(HUNameAndIconEditorCell *)self _updateDisabled];
  }
}

- (UIFont)textFieldFont
{
  v2 = [(HUNameAndIconEditorCell *)self textField];
  v3 = [v2 font];

  return v3;
}

- (void)setTextFieldFont:(id)a3
{
  v4 = a3;
  v5 = [(HUNameAndIconEditorCell *)self textField];
  [v5 setFont:v4];
}

- (void)setHideIconButton:(BOOL)a3
{
  if (self->_hideIconButton != a3)
  {
    v4 = a3;
    self->_hideIconButton = a3;
    v6 = [(HUNameAndIconEditorCell *)self iconButton];
    [v6 setHidden:v4];

    [(HUNameAndIconEditorCell *)self _updateVariableTextFieldConstraints];
  }
}

- (void)_updateVariableTextFieldConstraints
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = [(HUNameAndIconEditorCell *)self textFieldLeadingConstraint];

  if (v3)
  {
    v4 = [(HUNameAndIconEditorCell *)self textFieldLeadingConstraint];
    v49[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [(HUNameAndIconEditorCell *)self textFieldTopBottomConstraints];
  v7 = [v6 hmf_isEmpty];

  if ((v7 & 1) == 0)
  {
    v8 = [(HUNameAndIconEditorCell *)self textFieldTopBottomConstraints];
    v9 = [v5 arrayByAddingObjectsFromArray:v8];

    v5 = v9;
  }

  [MEMORY[0x277CCAAD0] deactivateConstraints:v5];
  v45 = v5;
  if ([(HUNameAndIconEditorCell *)self hideIconButton])
  {
    v10 = [(HUNameAndIconEditorCell *)self containerView];
    [v10 leadingAnchor];
  }

  else
  {
    v10 = [(HUNameAndIconEditorCell *)self iconButton];
    [v10 trailingAnchor];
  }
  v11 = ;

  if ([(HUNameAndIconEditorCell *)self hideIconButton])
  {
    v12 = 18.0;
  }

  else
  {
    v12 = 12.0;
  }

  v13 = [(HUNameAndIconEditorCell *)self textField];
  v14 = [v13 leadingAnchor];
  v44 = v11;
  v15 = [v14 constraintEqualToAnchor:v11 constant:v12];
  [(HUNameAndIconEditorCell *)self setTextFieldLeadingConstraint:v15];

  LODWORD(v13) = [(HUNameAndIconEditorCell *)self hideIconButton];
  v16 = [(HUNameAndIconEditorCell *)self textField];
  v17 = [v16 topAnchor];
  v43 = v17;
  if (v13)
  {
    v41 = [(HUNameAndIconEditorCell *)self contentView];
    v40 = [v41 layoutMarginsGuide];
    v39 = [v40 topAnchor];
    v18 = [v17 constraintEqualToAnchor:v39];
    v48[0] = v18;
    v19 = [(HUNameAndIconEditorCell *)self textField];
    v20 = [v19 bottomAnchor];
    v21 = [(HUNameAndIconEditorCell *)self contentView];
    v22 = [v21 layoutMarginsGuide];
    v23 = [v22 bottomAnchor];
    v24 = [v20 constraintEqualToAnchor:v23];
    v48[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    [(HUNameAndIconEditorCell *)self setTextFieldTopBottomConstraints:v25];

    v26 = MEMORY[0x277CCAAD0];
    v16 = [(HUNameAndIconEditorCell *)self iconButtonConstraints];
    [v26 deactivateConstraints:v16];
  }

  else
  {
    v42 = [(HUNameAndIconEditorCell *)self containerView];
    v27 = [v42 topAnchor];
    v28 = [v17 constraintEqualToAnchor:v27];
    v47[0] = v28;
    v29 = [(HUNameAndIconEditorCell *)self textField];
    v30 = [v29 bottomAnchor];
    v31 = [(HUNameAndIconEditorCell *)self containerView];
    v32 = [v31 bottomAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
    v47[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    [(HUNameAndIconEditorCell *)self setTextFieldTopBottomConstraints:v34];
  }

  v35 = [(HUNameAndIconEditorCell *)self textFieldLeadingConstraint];
  v46 = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v37 = [(HUNameAndIconEditorCell *)self textFieldTopBottomConstraints];
  v38 = [v36 arrayByAddingObjectsFromArray:v37];

  [MEMORY[0x277CCAAD0] activateConstraints:v38];
}

- (void)traitCollectionDidChange:(id)a3
{
  v3.receiver = self;
  v3.super_class = HUNameAndIconEditorCell;
  [(HUNameAndIconEditorCell *)&v3 traitCollectionDidChange:a3];
}

- (void)_handleIconButtonTap:(id)a3
{
  v4 = [(HUNameAndIconEditorCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HUNameAndIconEditorCell *)self delegate];
    [v6 nameAndIconEditorCellDidTapIcon:self];
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUNameAndIconEditorCell *)self item];
  v12 = [v5 latestResults];

  v6 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  v7 = [v12 objectForKeyedSubscript:*MEMORY[0x277D13EA0]];
  v8 = [MEMORY[0x277D14AC0] displayIconDescriptorFromIconDescriptor:v6 symbolName:v7];

  [(HUNameAndIconEditorCell *)self _updateDisabled];
  v9 = [(HUNameAndIconEditorCell *)self iconButton];
  [v9 updateWithIconDescriptor:v8 animated:v3];

  if ([v7 isEqualToString:*MEMORY[0x277D141B0]])
  {
    v10 = [MEMORY[0x277D75348] systemGrayColor];
    v11 = [(HUNameAndIconEditorCell *)self iconButton];
    [v11 setTintColor:v10];
  }

  else
  {
    v10 = [(HUNameAndIconEditorCell *)self iconButton];
    [v10 setTintColor:0];
  }
}

- (void)_updateDisabled
{
  if ([(HUNameAndIconEditorCell *)self isDisabled])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(HUNameAndIconEditorCell *)self item];
    v5 = [v4 latestResults];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v3 = [v6 BOOLValue] ^ 1;
  }

  [(HUNameAndIconEditorCell *)self setUserInteractionEnabled:v3];
  v7 = [(HUNameAndIconEditorCell *)self iconButton];
  [v7 setEnabled:v3];

  v8 = [(HUNameAndIconEditorCell *)self textField];
  [v8 setEnabled:v3];

  if ([(HUNameAndIconEditorCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v9 = ;
  v10 = [(HUNameAndIconEditorCell *)self textField];
  [v10 setTextColor:v9];

  v11 = [(HUNameAndIconEditorCell *)self textField];
  [v11 setClearButtonMode:v3];
}

- (HUNameAndIconEditorCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end