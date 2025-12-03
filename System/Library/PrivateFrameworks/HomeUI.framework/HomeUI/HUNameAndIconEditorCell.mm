@interface HUNameAndIconEditorCell
- (HUNameAndIconEditorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUNameAndIconEditorCellDelegate)delegate;
- (UIFont)textFieldFont;
- (void)_handleIconButtonTap:(id)tap;
- (void)_setupConstraints;
- (void)_updateDisabled;
- (void)_updateVariableTextFieldConstraints;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)setHideIconButton:(BOOL)button;
- (void)setTextFieldFont:(id)font;
- (void)traitCollectionDidChange:(id)change;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUNameAndIconEditorCell

- (HUNameAndIconEditorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34.receiver = self;
  v34.super_class = HUNameAndIconEditorCell;
  v4 = [(HUNameAndIconEditorCell *)&v34 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    [(HUNameAndIconEditorCell *)v4 setContainerView:v10];

    containerView = [(HUNameAndIconEditorCell *)v4 containerView];
    [containerView setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(HUNameAndIconEditorCell *)v4 contentView];
    containerView2 = [(HUNameAndIconEditorCell *)v4 containerView];
    [contentView addSubview:containerView2];

    v14 = [[HUIconButton alloc] initWithFrame:v6, v7, v8, v9];
    [(HUNameAndIconEditorCell *)v4 setIconButton:v14];

    iconButton = [(HUNameAndIconEditorCell *)v4 iconButton];
    [iconButton addTarget:v4 action:sel__handleIconButtonTap_ forControlEvents:64];

    iconButton2 = [(HUNameAndIconEditorCell *)v4 iconButton];
    [iconButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

    containerView3 = [(HUNameAndIconEditorCell *)v4 containerView];
    iconButton3 = [(HUNameAndIconEditorCell *)v4 iconButton];
    [containerView3 addSubview:iconButton3];

    iconButton4 = [(HUNameAndIconEditorCell *)v4 iconButton];
    [iconButton4 setContentMode:1];

    v20 = [objc_alloc(MEMORY[0x277D75BB8]) initWithFrame:{v6, v7, v8, v9}];
    [(HUNameAndIconEditorCell *)v4 setTextField:v20];

    v21 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    v22 = MEMORY[0x277D74300];
    [v21 scaledValueForValue:17.0];
    v23 = [v22 systemFontOfSize:? weight:?];
    textField = [(HUNameAndIconEditorCell *)v4 textField];
    [textField setFont:v23];

    textField2 = [(HUNameAndIconEditorCell *)v4 textField];
    [textField2 setReturnKeyType:9];

    textField3 = [(HUNameAndIconEditorCell *)v4 textField];
    [textField3 setClearButtonMode:1];

    textField4 = [(HUNameAndIconEditorCell *)v4 textField];
    [textField4 setAutocapitalizationType:1];

    textField5 = [(HUNameAndIconEditorCell *)v4 textField];
    [textField5 setContentVerticalAlignment:0];

    textField6 = [(HUNameAndIconEditorCell *)v4 textField];
    [textField6 setTranslatesAutoresizingMaskIntoConstraints:0];

    textField7 = [(HUNameAndIconEditorCell *)v4 textField];
    [textField7 setAdjustsFontForContentSizeCategory:1];

    containerView4 = [(HUNameAndIconEditorCell *)v4 containerView];
    textField8 = [(HUNameAndIconEditorCell *)v4 textField];
    [containerView4 addSubview:textField8];

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
  iconButton = [(HUNameAndIconEditorCell *)self iconButton];
  [iconButton setHidden:0];
}

- (void)_setupConstraints
{
  v54[3] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  containerView = [(HUNameAndIconEditorCell *)self containerView];
  leadingAnchor = [containerView leadingAnchor];
  contentView = [(HUNameAndIconEditorCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v8];

  containerView2 = [(HUNameAndIconEditorCell *)self containerView];
  trailingAnchor = [containerView2 trailingAnchor];
  contentView2 = [(HUNameAndIconEditorCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v13];

  containerView3 = [(HUNameAndIconEditorCell *)self containerView];
  topAnchor = [containerView3 topAnchor];
  contentView3 = [(HUNameAndIconEditorCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v53 = array;
  [array addObject:v18];

  containerView4 = [(HUNameAndIconEditorCell *)self containerView];
  bottomAnchor = [containerView4 bottomAnchor];
  contentView4 = [(HUNameAndIconEditorCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v23];

  iconButton = [(HUNameAndIconEditorCell *)self iconButton];
  leadingAnchor3 = [iconButton leadingAnchor];
  containerView5 = [(HUNameAndIconEditorCell *)self containerView];
  leadingAnchor4 = [containerView5 leadingAnchor];
  v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
  v54[0] = v48;
  iconButton2 = [(HUNameAndIconEditorCell *)self iconButton];
  topAnchor3 = [iconButton2 topAnchor];
  containerView6 = [(HUNameAndIconEditorCell *)self containerView];
  topAnchor4 = [containerView6 topAnchor];
  v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
  v54[1] = v26;
  iconButton3 = [(HUNameAndIconEditorCell *)self iconButton];
  bottomAnchor3 = [iconButton3 bottomAnchor];
  containerView7 = [(HUNameAndIconEditorCell *)self containerView];
  bottomAnchor4 = [containerView7 bottomAnchor];
  v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-10.0];
  v54[2] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
  [(HUNameAndIconEditorCell *)self setIconButtonConstraints:v32];

  iconButton4 = [(HUNameAndIconEditorCell *)self iconButton];
  LODWORD(v34) = 1148846080;
  [iconButton4 setContentHuggingPriority:0 forAxis:v34];

  iconButton5 = [(HUNameAndIconEditorCell *)self iconButton];
  LODWORD(v36) = 1148846080;
  [iconButton5 setContentHuggingPriority:1 forAxis:v36];

  iconButton6 = [(HUNameAndIconEditorCell *)self iconButton];
  LODWORD(v38) = 1148846080;
  [iconButton6 setContentCompressionResistancePriority:0 forAxis:v38];

  iconButtonConstraints = [(HUNameAndIconEditorCell *)self iconButtonConstraints];
  [v53 addObjectsFromArray:iconButtonConstraints];

  [(HUNameAndIconEditorCell *)self _updateVariableTextFieldConstraints];
  textField = [(HUNameAndIconEditorCell *)self textField];
  trailingAnchor3 = [textField trailingAnchor];
  containerView8 = [(HUNameAndIconEditorCell *)self containerView];
  layoutMarginsGuide = [containerView8 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v53 addObject:v45];

  [MEMORY[0x277CCAAD0] activateConstraints:v53];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(HUNameAndIconEditorCell *)self _updateDisabled];
  }
}

- (UIFont)textFieldFont
{
  textField = [(HUNameAndIconEditorCell *)self textField];
  font = [textField font];

  return font;
}

- (void)setTextFieldFont:(id)font
{
  fontCopy = font;
  textField = [(HUNameAndIconEditorCell *)self textField];
  [textField setFont:fontCopy];
}

- (void)setHideIconButton:(BOOL)button
{
  if (self->_hideIconButton != button)
  {
    buttonCopy = button;
    self->_hideIconButton = button;
    iconButton = [(HUNameAndIconEditorCell *)self iconButton];
    [iconButton setHidden:buttonCopy];

    [(HUNameAndIconEditorCell *)self _updateVariableTextFieldConstraints];
  }
}

- (void)_updateVariableTextFieldConstraints
{
  v49[1] = *MEMORY[0x277D85DE8];
  textFieldLeadingConstraint = [(HUNameAndIconEditorCell *)self textFieldLeadingConstraint];

  if (textFieldLeadingConstraint)
  {
    textFieldLeadingConstraint2 = [(HUNameAndIconEditorCell *)self textFieldLeadingConstraint];
    v49[0] = textFieldLeadingConstraint2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  textFieldTopBottomConstraints = [(HUNameAndIconEditorCell *)self textFieldTopBottomConstraints];
  hmf_isEmpty = [textFieldTopBottomConstraints hmf_isEmpty];

  if ((hmf_isEmpty & 1) == 0)
  {
    textFieldTopBottomConstraints2 = [(HUNameAndIconEditorCell *)self textFieldTopBottomConstraints];
    v9 = [v5 arrayByAddingObjectsFromArray:textFieldTopBottomConstraints2];

    v5 = v9;
  }

  [MEMORY[0x277CCAAD0] deactivateConstraints:v5];
  v45 = v5;
  if ([(HUNameAndIconEditorCell *)self hideIconButton])
  {
    containerView = [(HUNameAndIconEditorCell *)self containerView];
    [containerView leadingAnchor];
  }

  else
  {
    containerView = [(HUNameAndIconEditorCell *)self iconButton];
    [containerView trailingAnchor];
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

  textField = [(HUNameAndIconEditorCell *)self textField];
  leadingAnchor = [textField leadingAnchor];
  v44 = v11;
  v15 = [leadingAnchor constraintEqualToAnchor:v11 constant:v12];
  [(HUNameAndIconEditorCell *)self setTextFieldLeadingConstraint:v15];

  LODWORD(textField) = [(HUNameAndIconEditorCell *)self hideIconButton];
  textField2 = [(HUNameAndIconEditorCell *)self textField];
  topAnchor = [textField2 topAnchor];
  v43 = topAnchor;
  if (textField)
  {
    contentView = [(HUNameAndIconEditorCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v48[0] = v18;
    textField3 = [(HUNameAndIconEditorCell *)self textField];
    bottomAnchor = [textField3 bottomAnchor];
    contentView2 = [(HUNameAndIconEditorCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v48[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    [(HUNameAndIconEditorCell *)self setTextFieldTopBottomConstraints:v25];

    v26 = MEMORY[0x277CCAAD0];
    textField2 = [(HUNameAndIconEditorCell *)self iconButtonConstraints];
    [v26 deactivateConstraints:textField2];
  }

  else
  {
    containerView2 = [(HUNameAndIconEditorCell *)self containerView];
    topAnchor3 = [containerView2 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor3];
    v47[0] = v28;
    textField4 = [(HUNameAndIconEditorCell *)self textField];
    bottomAnchor3 = [textField4 bottomAnchor];
    containerView3 = [(HUNameAndIconEditorCell *)self containerView];
    bottomAnchor4 = [containerView3 bottomAnchor];
    v33 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v47[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    [(HUNameAndIconEditorCell *)self setTextFieldTopBottomConstraints:v34];
  }

  textFieldLeadingConstraint3 = [(HUNameAndIconEditorCell *)self textFieldLeadingConstraint];
  v46 = textFieldLeadingConstraint3;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  textFieldTopBottomConstraints3 = [(HUNameAndIconEditorCell *)self textFieldTopBottomConstraints];
  v38 = [v36 arrayByAddingObjectsFromArray:textFieldTopBottomConstraints3];

  [MEMORY[0x277CCAAD0] activateConstraints:v38];
}

- (void)traitCollectionDidChange:(id)change
{
  v3.receiver = self;
  v3.super_class = HUNameAndIconEditorCell;
  [(HUNameAndIconEditorCell *)&v3 traitCollectionDidChange:change];
}

- (void)_handleIconButtonTap:(id)tap
{
  delegate = [(HUNameAndIconEditorCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HUNameAndIconEditorCell *)self delegate];
    [delegate2 nameAndIconEditorCellDidTapIcon:self];
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  item = [(HUNameAndIconEditorCell *)self item];
  latestResults = [item latestResults];

  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA0]];
  v8 = [MEMORY[0x277D14AC0] displayIconDescriptorFromIconDescriptor:v6 symbolName:v7];

  [(HUNameAndIconEditorCell *)self _updateDisabled];
  iconButton = [(HUNameAndIconEditorCell *)self iconButton];
  [iconButton updateWithIconDescriptor:v8 animated:animationCopy];

  if ([v7 isEqualToString:*MEMORY[0x277D141B0]])
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    iconButton2 = [(HUNameAndIconEditorCell *)self iconButton];
    [iconButton2 setTintColor:systemGrayColor];
  }

  else
  {
    systemGrayColor = [(HUNameAndIconEditorCell *)self iconButton];
    [systemGrayColor setTintColor:0];
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
    item = [(HUNameAndIconEditorCell *)self item];
    latestResults = [item latestResults];
    v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v3 = [v6 BOOLValue] ^ 1;
  }

  [(HUNameAndIconEditorCell *)self setUserInteractionEnabled:v3];
  iconButton = [(HUNameAndIconEditorCell *)self iconButton];
  [iconButton setEnabled:v3];

  textField = [(HUNameAndIconEditorCell *)self textField];
  [textField setEnabled:v3];

  if ([(HUNameAndIconEditorCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v9 = ;
  textField2 = [(HUNameAndIconEditorCell *)self textField];
  [textField2 setTextColor:v9];

  textField3 = [(HUNameAndIconEditorCell *)self textField];
  [textField3 setClearButtonMode:v3];
}

- (HUNameAndIconEditorCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end