@interface OBSetupAssistantFinishedController
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (OBSetupAssistantFinishedController)initWithTitle:(id)a3;
- (id)_headerFont;
- (id)_instructionFont;
- (void)buttonTapped:(id)a3;
- (void)setButtonTitle:(id)a3 action:(id)a4;
- (void)setInstructionalText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantFinishedController

- (OBSetupAssistantFinishedController)initWithTitle:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = OBSetupAssistantFinishedController;
  v5 = [(OBSetupAssistantFinishedController *)&v30 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(OBSetupAssistantFinishedController *)v5 setTitleLabel:v6];

    v7 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [MEMORY[0x1E69DC888] labelColor];
    v9 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [v9 setTextColor:v8];

    v10 = [(OBSetupAssistantFinishedController *)v5 _headerFont];
    v11 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [v11 setFont:v10];

    v12 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [v12 setText:v4];

    v13 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [v13 setTextAlignment:1];

    v14 = [(OBSetupAssistantFinishedController *)v5 titleLabel];
    [v14 setNumberOfLines:0];

    v15 = [OBButtonTray alloc];
    v16 = [(OBButtonTray *)v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(OBSetupAssistantFinishedController *)v5 setButtonTray:v16];

    v17 = [(OBSetupAssistantFinishedController *)v5 buttonTray];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(OBSetupAssistantFinishedController *)v5 buttonTray];
    [v18 setHidden:1];

    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(OBSetupAssistantFinishedController *)v5 setInstructionalLabel:v19];

    v20 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [MEMORY[0x1E69DC888] labelColor];
    v22 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [v22 setTextColor:v21];

    v23 = [(OBSetupAssistantFinishedController *)v5 _instructionFont];
    v24 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [v24 setFont:v23];

    v25 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [v25 setText:v4];

    v26 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [v26 setTextAlignment:1];

    v27 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [v27 setNumberOfLines:0];

    v28 = [(OBSetupAssistantFinishedController *)v5 instructionalLabel];
    [v28 setHidden:1];
  }

  return v5;
}

- (void)viewDidLoad
{
  v103[12] = *MEMORY[0x1E69E9840];
  v100.receiver = self;
  v100.super_class = OBSetupAssistantFinishedController;
  [(OBBaseWelcomeController *)&v100 viewDidLoad];
  v3 = [(OBSetupAssistantFinishedController *)self contentView];

  if (v3)
  {
    [(OBSetupAssistantFinishedController *)self contentView];
  }

  else
  {
    [(OBSetupAssistantFinishedController *)self titleLabel];
  }
  v4 = ;
  v5 = [(OBSetupAssistantFinishedController *)self view];
  [v5 addSubview:v4];

  v6 = [(OBSetupAssistantFinishedController *)self view];
  v7 = [(OBSetupAssistantFinishedController *)self buttonTray];
  [v6 addSubview:v7];

  v8 = [(OBSetupAssistantFinishedController *)self view];
  v9 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  [v8 addSubview:v9];

  v66 = MEMORY[0x1E696ACD8];
  v97 = [(OBSetupAssistantFinishedController *)self view];
  v95 = [v97 layoutMarginsGuide];
  v93 = [v95 leftAnchor];
  v91 = [v4 leftAnchor];
  v89 = [v93 constraintEqualToAnchor:v91];
  v103[0] = v89;
  v87 = [(OBSetupAssistantFinishedController *)self view];
  v85 = [v87 layoutMarginsGuide];
  v84 = [v85 rightAnchor];
  v83 = [v4 rightAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v103[1] = v82;
  v81 = [(OBSetupAssistantFinishedController *)self view];
  v80 = [v81 layoutMarginsGuide];
  v79 = [v80 centerXAnchor];
  v78 = [v4 centerXAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v103[2] = v77;
  v76 = [(OBSetupAssistantFinishedController *)self view];
  v75 = [v76 centerYAnchor];
  v74 = [v4 bottomAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v103[3] = v73;
  v71 = [v4 topAnchor];
  v72 = [(OBSetupAssistantFinishedController *)self view];
  v70 = [v72 layoutMarginsGuide];
  v69 = [v70 topAnchor];
  v68 = [v71 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v69 multiplier:1.0];
  v103[4] = v68;
  v67 = [(OBSetupAssistantFinishedController *)self buttonTray];
  v64 = [v67 bottomAnchor];
  v65 = [(OBSetupAssistantFinishedController *)self view];
  v63 = [v65 bottomAnchor];
  v62 = [v64 constraintEqualToAnchor:v63 constant:0.0];
  v103[5] = v62;
  v61 = [(OBSetupAssistantFinishedController *)self buttonTray];
  v59 = [v61 leadingAnchor];
  v60 = [(OBSetupAssistantFinishedController *)self view];
  v58 = [v60 leadingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58 constant:0.0];
  v103[6] = v57;
  v56 = [(OBSetupAssistantFinishedController *)self buttonTray];
  v54 = [v56 trailingAnchor];
  v55 = [(OBSetupAssistantFinishedController *)self view];
  v53 = [v55 trailingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:0.0];
  v103[7] = v52;
  v51 = [(OBSetupAssistantFinishedController *)self view];
  v50 = [v51 layoutMarginsGuide];
  v48 = [v50 leftAnchor];
  v49 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  v47 = [v49 leftAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v103[8] = v46;
  v45 = [(OBSetupAssistantFinishedController *)self view];
  v44 = [v45 layoutMarginsGuide];
  v42 = [v44 rightAnchor];
  v43 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  v41 = [v43 rightAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v103[9] = v40;
  v39 = [(OBSetupAssistantFinishedController *)self view];
  v38 = [v39 layoutMarginsGuide];
  v10 = [v38 bottomAnchor];
  v11 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v103[10] = v13;
  v14 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  v15 = [v14 topAnchor];
  v99 = v4;
  v16 = [v4 bottomAnchor];
  v17 = [v15 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v16 multiplier:1.0];
  v103[11] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:12];
  [v66 activateConstraints:v18];

  v19 = +[OBDevice currentDevice];
  v20 = [v19 type];

  v96 = MEMORY[0x1E696ACD8];
  v21 = [(OBSetupAssistantFinishedController *)self buttonTray];
  v22 = [v21 buttonLayoutGuide];
  v23 = v22;
  if (v20 == 2)
  {
    v24 = [v22 widthAnchor];
    v25 = [v24 constraintEqualToConstant:360.0];
    v102[0] = v25;
    v26 = [(OBSetupAssistantFinishedController *)self buttonTray];
    v98 = [v26 buttonLayoutGuide];
    v27 = [v98 centerXAnchor];
    v28 = [(OBSetupAssistantFinishedController *)self view];
    v29 = [v28 centerXAnchor];
    v94 = v27;
    v30 = [v27 constraintEqualToAnchor:v29];
    v102[1] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
    [v96 activateConstraints:v31];
  }

  else
  {
    v86 = [v22 leadingAnchor];
    v88 = [(OBSetupAssistantFinishedController *)self view];
    v90 = [v88 layoutMarginsGuide];
    v98 = [v90 leadingAnchor];
    v94 = [v86 constraintEqualToAnchor:?];
    v101[0] = v94;
    v28 = [(OBSetupAssistantFinishedController *)self buttonTray];
    v29 = [v28 buttonLayoutGuide];
    v30 = [v29 trailingAnchor];
    v31 = [(OBSetupAssistantFinishedController *)self view];
    [v31 layoutMarginsGuide];
    v32 = v92 = v23;
    [v32 trailingAnchor];
    v34 = v33 = v21;
    v35 = [v30 constraintEqualToAnchor:v34];
    v101[1] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
    [v96 activateConstraints:v36];

    v25 = v88;
    v24 = v86;

    v21 = v33;
    v26 = v90;

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
  v3 = [(OBSetupAssistantFinishedController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;

  v6 = [(OBSetupAssistantFinishedController *)self buttonTrayBottomConstraint];

  if (!v6)
  {
    v7 = [(OBSetupAssistantFinishedController *)self buttonTray];
    v8 = [v7 buttonLayoutGuide];
    v9 = [v8 bottomAnchor];
    v10 = [(OBSetupAssistantFinishedController *)self view];
    v11 = [v10 layoutMarginsGuide];
    v12 = [v11 bottomAnchor];
    v13 = [v9 constraintEqualToAnchor:v12];
    [(OBSetupAssistantFinishedController *)self setButtonTrayBottomConstraint:v13];

    v14 = [(OBSetupAssistantFinishedController *)self buttonTrayBottomConstraint];
    [v14 setActive:1];
  }

  v15 = [(OBSetupAssistantFinishedController *)self buttonTrayBottomConstraint];
  [v15 setConstant:v5];
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = OBSetupAssistantFinishedController;
  [(OBSetupAssistantFinishedController *)&v8 traitCollectionDidChange:a3];
  v4 = [(OBSetupAssistantFinishedController *)self _headerFont];
  v5 = [(OBSetupAssistantFinishedController *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(OBSetupAssistantFinishedController *)self _instructionFont];
  v7 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  [v7 setFont:v6];
}

- (void)setButtonTitle:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(OBSetupAssistantFinishedController *)self boldButton];
  [v8 removeFromSuperview];

  v9 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  [v9 removeFromSuperview];

  v10 = [(OBSetupAssistantFinishedController *)self buttonTray];
  [v10 setHidden:0];

  v11 = +[OBBoldTrayButton boldButton];
  [(OBSetupAssistantFinishedController *)self setBoldButton:v11];

  [(OBSetupAssistantFinishedController *)self setBoldButtonBlock:v6];
  v12 = [(OBSetupAssistantFinishedController *)self boldButton];
  [v12 setTitle:v7 forState:0];

  v13 = [(OBSetupAssistantFinishedController *)self boldButton];
  [v13 addTarget:self action:sel_buttonTapped_ forControlEvents:0x2000];

  v14 = [(OBSetupAssistantFinishedController *)self boldButton];
  [v14 _obk_applyGlassWithProminence:0];

  v16 = [(OBSetupAssistantFinishedController *)self buttonTray];
  v15 = [(OBSetupAssistantFinishedController *)self boldButton];
  [v16 addButton:v15];
}

- (void)setInstructionalText:(id)a3
{
  v4 = a3;
  v5 = [(OBSetupAssistantFinishedController *)self buttonTray];
  [v5 removeFromSuperview];

  v6 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  [v6 setHidden:0];

  v7 = [(OBSetupAssistantFinishedController *)self instructionalLabel];
  [v7 setText:v4];
}

- (id)_headerFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD58]];
  v3 = +[OBDevice currentDevice];
  v4 = [v3 templateType];

  if (v4 == 5)
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

- (void)buttonTapped:(id)a3
{
  v4 = [(OBSetupAssistantFinishedController *)self boldButtonBlock];

  if (v4)
  {
    v5 = [(OBSetupAssistantFinishedController *)self boldButtonBlock];
    v5[2]();
  }
}

@end