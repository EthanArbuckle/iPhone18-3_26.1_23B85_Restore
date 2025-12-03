@interface OBSetupAssistantFinishedController
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (OBSetupAssistantFinishedController)initWithTitle:(id)title;
- (id)_headerFont;
- (id)_instructionFont;
- (void)buttonTapped:(id)tapped;
- (void)setButtonTitle:(id)title action:(id)action;
- (void)setInstructionalText:(id)text;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantFinishedController

- (OBSetupAssistantFinishedController)initWithTitle:(id)title
{
  titleCopy = title;
  v30.receiver = self;
  v30.super_class = OBSetupAssistantFinishedController;
  v5 = [(OBSetupAssistantFinishedController *)&v30 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(OBSetupAssistantFinishedController *)v5 setTitleLabel:v6];

    titleLabel = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    titleLabel2 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [titleLabel2 setTextColor:labelColor];

    _headerFont = [(OBSetupAssistantFinishedController *)v5 _headerFont];
    titleLabel3 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [titleLabel3 setFont:_headerFont];

    titleLabel4 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [titleLabel4 setText:titleCopy];

    titleLabel5 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [titleLabel5 setTextAlignment:1];

    titleLabel6 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [titleLabel6 setNumberOfLines:0];

    v15 = [OBButtonTray alloc];
    v16 = [(OBButtonTray *)v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(OBSetupAssistantFinishedController *)v5 setButtonTray:v16];

    buttonTray = [(OBSetupAssistantFinishedController *)v5 buttonTray];
    [buttonTray setTranslatesAutoresizingMaskIntoConstraints:0];

    buttonTray2 = [(OBSetupAssistantFinishedController *)v5 buttonTray];
    [buttonTray2 setHidden:1];

    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(OBSetupAssistantFinishedController *)v5 setInstructionalLabel:v19];

    instructionalLabel = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [instructionalLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    instructionalLabel2 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [instructionalLabel2 setTextColor:labelColor2];

    _instructionFont = [(OBSetupAssistantFinishedController *)v5 _instructionFont];
    instructionalLabel3 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [instructionalLabel3 setFont:_instructionFont];

    instructionalLabel4 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [instructionalLabel4 setText:titleCopy];

    instructionalLabel5 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [instructionalLabel5 setTextAlignment:1];

    instructionalLabel6 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [instructionalLabel6 setNumberOfLines:0];

    instructionalLabel7 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [instructionalLabel7 setHidden:1];
  }

  return v5;
}

- (void)viewDidLoad
{
  v103[12] = *MEMORY[0x1E69E9840];
  v100.receiver = self;
  v100.super_class = OBSetupAssistantFinishedController;
  [(OBBaseWelcomeController *)&v100 viewDidLoad];
  contentView = [(OBSetupAssistantFinishedController *)self contentView];

  if (contentView)
  {
    [(OBSetupAssistantFinishedController *)self contentView];
  }

  else
  {
    [(OBSetupAssistantFinishedController *)self titleLabel];
  }
  v4 = ;
  view = [(OBSetupAssistantFinishedController *)self view];
  [view addSubview:v4];

  view2 = [(OBSetupAssistantFinishedController *)self view];
  buttonTray = [(OBSetupAssistantFinishedController *)self buttonTray];
  [view2 addSubview:buttonTray];

  view3 = [(OBSetupAssistantFinishedController *)self view];
  instructionalLabel = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  [view3 addSubview:instructionalLabel];

  v66 = MEMORY[0x1E696ACD8];
  view4 = [(OBSetupAssistantFinishedController *)self view];
  layoutMarginsGuide = [view4 layoutMarginsGuide];
  leftAnchor = [layoutMarginsGuide leftAnchor];
  leftAnchor2 = [v4 leftAnchor];
  v89 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v103[0] = v89;
  view5 = [(OBSetupAssistantFinishedController *)self view];
  layoutMarginsGuide2 = [view5 layoutMarginsGuide];
  rightAnchor = [layoutMarginsGuide2 rightAnchor];
  rightAnchor2 = [v4 rightAnchor];
  v82 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v103[1] = v82;
  view6 = [(OBSetupAssistantFinishedController *)self view];
  layoutMarginsGuide3 = [view6 layoutMarginsGuide];
  centerXAnchor = [layoutMarginsGuide3 centerXAnchor];
  centerXAnchor2 = [v4 centerXAnchor];
  v77 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v103[2] = v77;
  view7 = [(OBSetupAssistantFinishedController *)self view];
  centerYAnchor = [view7 centerYAnchor];
  bottomAnchor = [v4 bottomAnchor];
  v73 = [centerYAnchor constraintEqualToAnchor:bottomAnchor];
  v103[3] = v73;
  topAnchor = [v4 topAnchor];
  view8 = [(OBSetupAssistantFinishedController *)self view];
  layoutMarginsGuide4 = [view8 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide4 topAnchor];
  v68 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  v103[4] = v68;
  buttonTray2 = [(OBSetupAssistantFinishedController *)self buttonTray];
  bottomAnchor2 = [buttonTray2 bottomAnchor];
  view9 = [(OBSetupAssistantFinishedController *)self view];
  bottomAnchor3 = [view9 bottomAnchor];
  v62 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
  v103[5] = v62;
  buttonTray3 = [(OBSetupAssistantFinishedController *)self buttonTray];
  leadingAnchor = [buttonTray3 leadingAnchor];
  view10 = [(OBSetupAssistantFinishedController *)self view];
  leadingAnchor2 = [view10 leadingAnchor];
  v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v103[6] = v57;
  buttonTray4 = [(OBSetupAssistantFinishedController *)self buttonTray];
  trailingAnchor = [buttonTray4 trailingAnchor];
  view11 = [(OBSetupAssistantFinishedController *)self view];
  trailingAnchor2 = [view11 trailingAnchor];
  v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  v103[7] = v52;
  view12 = [(OBSetupAssistantFinishedController *)self view];
  layoutMarginsGuide5 = [view12 layoutMarginsGuide];
  leftAnchor3 = [layoutMarginsGuide5 leftAnchor];
  instructionalLabel2 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  leftAnchor4 = [instructionalLabel2 leftAnchor];
  v46 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v103[8] = v46;
  view13 = [(OBSetupAssistantFinishedController *)self view];
  layoutMarginsGuide6 = [view13 layoutMarginsGuide];
  rightAnchor3 = [layoutMarginsGuide6 rightAnchor];
  instructionalLabel3 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  rightAnchor4 = [instructionalLabel3 rightAnchor];
  v40 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v103[9] = v40;
  view14 = [(OBSetupAssistantFinishedController *)self view];
  layoutMarginsGuide7 = [view14 layoutMarginsGuide];
  bottomAnchor4 = [layoutMarginsGuide7 bottomAnchor];
  instructionalLabel4 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  bottomAnchor5 = [instructionalLabel4 bottomAnchor];
  v13 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v103[10] = v13;
  instructionalLabel5 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  topAnchor3 = [instructionalLabel5 topAnchor];
  v99 = v4;
  bottomAnchor6 = [v4 bottomAnchor];
  v17 = [topAnchor3 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor6 multiplier:1.0];
  v103[11] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:12];
  [v66 activateConstraints:v18];

  v19 = +[OBDevice currentDevice];
  type = [v19 type];

  v96 = MEMORY[0x1E696ACD8];
  buttonTray5 = [(OBSetupAssistantFinishedController *)self buttonTray];
  buttonLayoutGuide = [buttonTray5 buttonLayoutGuide];
  v23 = buttonLayoutGuide;
  if (type == 2)
  {
    widthAnchor = [buttonLayoutGuide widthAnchor];
    v25 = [widthAnchor constraintEqualToConstant:360.0];
    v102[0] = v25;
    buttonTray6 = [(OBSetupAssistantFinishedController *)self buttonTray];
    buttonLayoutGuide2 = [buttonTray6 buttonLayoutGuide];
    centerXAnchor3 = [buttonLayoutGuide2 centerXAnchor];
    view15 = [(OBSetupAssistantFinishedController *)self view];
    centerXAnchor4 = [view15 centerXAnchor];
    v94 = centerXAnchor3;
    trailingAnchor3 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v102[1] = trailingAnchor3;
    view17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
    [v96 activateConstraints:view17];
  }

  else
  {
    leadingAnchor3 = [buttonLayoutGuide leadingAnchor];
    view16 = [(OBSetupAssistantFinishedController *)self view];
    layoutMarginsGuide8 = [view16 layoutMarginsGuide];
    buttonLayoutGuide2 = [layoutMarginsGuide8 leadingAnchor];
    v94 = [leadingAnchor3 constraintEqualToAnchor:?];
    v101[0] = v94;
    view15 = [(OBSetupAssistantFinishedController *)self buttonTray];
    centerXAnchor4 = [view15 buttonLayoutGuide];
    trailingAnchor3 = [centerXAnchor4 trailingAnchor];
    view17 = [(OBSetupAssistantFinishedController *)self view];
    [view17 layoutMarginsGuide];
    v32 = v92 = v23;
    [v32 trailingAnchor];
    v34 = v33 = buttonTray5;
    v35 = [trailingAnchor3 constraintEqualToAnchor:v34];
    v101[1] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
    [v96 activateConstraints:v36];

    v25 = view16;
    widthAnchor = leadingAnchor3;

    buttonTray5 = v33;
    buttonTray6 = layoutMarginsGuide8;

    v23 = v92;
  }

  [(OBBaseWelcomeController *)self setTemplateType:2];
  v37 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = OBSetupAssistantFinishedController;
  [(OBBaseWelcomeController *)&v16 viewDidLayoutSubviews];
  view = [(OBSetupAssistantFinishedController *)self view];
  [view safeAreaInsets];
  v5 = v4;

  buttonTrayBottomConstraint = [(OBSetupAssistantFinishedController *)self buttonTrayBottomConstraint];

  if (!buttonTrayBottomConstraint)
  {
    buttonTray = [(OBSetupAssistantFinishedController *)self buttonTray];
    buttonLayoutGuide = [buttonTray buttonLayoutGuide];
    bottomAnchor = [buttonLayoutGuide bottomAnchor];
    view2 = [(OBSetupAssistantFinishedController *)self view];
    layoutMarginsGuide = [view2 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(OBSetupAssistantFinishedController *)self setButtonTrayBottomConstraint:v13];

    buttonTrayBottomConstraint2 = [(OBSetupAssistantFinishedController *)self buttonTrayBottomConstraint];
    [buttonTrayBottomConstraint2 setActive:1];
  }

  buttonTrayBottomConstraint3 = [(OBSetupAssistantFinishedController *)self buttonTrayBottomConstraint];
  [buttonTrayBottomConstraint3 setConstant:v5];
}

- (NSDirectionalEdgeInsets)directionalLayoutMargins
{
  v6.receiver = self;
  v6.super_class = OBSetupAssistantFinishedController;
  [(OBBaseWelcomeController *)&v6 directionalLayoutMargins];
  v5 = 0.0;
  result.trailing = v4;
  result.bottom = v5;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = OBSetupAssistantFinishedController;
  [(OBSetupAssistantFinishedController *)&v8 traitCollectionDidChange:change];
  _headerFont = [(OBSetupAssistantFinishedController *)self _headerFont];
  titleLabel = [(OBSetupAssistantFinishedController *)self titleLabel];
  [titleLabel setFont:_headerFont];

  _instructionFont = [(OBSetupAssistantFinishedController *)self _instructionFont];
  instructionalLabel = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  [instructionalLabel setFont:_instructionFont];
}

- (void)setButtonTitle:(id)title action:(id)action
{
  actionCopy = action;
  titleCopy = title;
  boldButton = [(OBSetupAssistantFinishedController *)self boldButton];
  [boldButton removeFromSuperview];

  instructionalLabel = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  [instructionalLabel removeFromSuperview];

  buttonTray = [(OBSetupAssistantFinishedController *)self buttonTray];
  [buttonTray setHidden:0];

  v11 = +[OBBoldTrayButton boldButton];
  [(OBSetupAssistantFinishedController *)self setBoldButton:v11];

  [(OBSetupAssistantFinishedController *)self setBoldButtonBlock:actionCopy];
  boldButton2 = [(OBSetupAssistantFinishedController *)self boldButton];
  [boldButton2 setTitle:titleCopy forState:0];

  boldButton3 = [(OBSetupAssistantFinishedController *)self boldButton];
  [boldButton3 addTarget:self action:sel_buttonTapped_ forControlEvents:0x2000];

  boldButton4 = [(OBSetupAssistantFinishedController *)self boldButton];
  [boldButton4 _obk_applyGlassWithProminence:0];

  buttonTray2 = [(OBSetupAssistantFinishedController *)self buttonTray];
  boldButton5 = [(OBSetupAssistantFinishedController *)self boldButton];
  [buttonTray2 addButton:boldButton5];
}

- (void)setInstructionalText:(id)text
{
  textCopy = text;
  buttonTray = [(OBSetupAssistantFinishedController *)self buttonTray];
  [buttonTray removeFromSuperview];

  instructionalLabel = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  [instructionalLabel setHidden:0];

  instructionalLabel2 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  [instructionalLabel2 setText:textCopy];
}

- (id)_headerFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD58]];
  v3 = +[OBDevice currentDevice];
  templateType = [v3 templateType];

  if (templateType == 5)
  {
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB8]];

    v2 = v5;
  }

  v6 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v7 = [v6 boldSystemFontOfSize:?];

  return v7;
}

- (id)_instructionFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v3 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v4 = [v3 boldSystemFontOfSize:?];

  return v4;
}

- (void)buttonTapped:(id)tapped
{
  boldButtonBlock = [(OBSetupAssistantFinishedController *)self boldButtonBlock];

  if (boldButtonBlock)
  {
    boldButtonBlock2 = [(OBSetupAssistantFinishedController *)self boldButtonBlock];
    boldButtonBlock2[2]();
  }
}

@end