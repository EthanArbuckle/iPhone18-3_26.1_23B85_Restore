@interface OBSetupAssistantProgressController
- (OBSetupAssistantProgressController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (OBSetupAssistantProgressController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (double)_progressLabelTopAnchorConstraintConstantWithFont:(id)a3;
- (void)setProgress:(double)a3;
- (void)setProgressText:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantProgressController

- (OBSetupAssistantProgressController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v6.receiver = self;
  v6.super_class = OBSetupAssistantProgressController;
  return [(OBWelcomeController *)&v6 initWithTitle:a3 detailText:a4 icon:a5 contentLayout:2];
}

- (OBSetupAssistantProgressController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  v6.receiver = self;
  v6.super_class = OBSetupAssistantProgressController;
  return [(OBWelcomeController *)&v6 initWithTitle:a3 detailText:a4 symbolName:a5 contentLayout:2];
}

- (void)viewDidLoad
{
  v86[8] = *MEMORY[0x1E69E9840];
  v85.receiver = self;
  v85.super_class = OBSetupAssistantProgressController;
  [(OBWelcomeController *)&v85 viewDidLoad];
  [(OBWelcomeController *)self setTemplateType:2];
  v3 = [(OBWelcomeController *)self headerView];
  [v3 setForceCenterAlignment:1];

  v4 = [(OBSetupAssistantProgressController *)self _progressFont];
  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBSetupAssistantProgressController *)self setProgressLabel:v6];

  v7 = [(OBSetupAssistantProgressController *)self progressLabel];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(OBSetupAssistantProgressController *)self progressLabel];
  [v8 setTextAlignment:1];

  v9 = [MEMORY[0x1E69DC888] labelColor];
  v10 = [(OBSetupAssistantProgressController *)self progressLabel];
  [v10 setTextColor:v9];

  v11 = [(OBSetupAssistantProgressController *)self progressLabel];
  [v11 setFont:v4];

  v12 = [(OBSetupAssistantProgressController *)self progressLabel];
  [v12 setNumberOfLines:0];

  v13 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:0];
  [(OBSetupAssistantProgressController *)self setProgressBar:v13];

  v14 = [MEMORY[0x1E69DC888] systemBlueColor];
  v15 = [(OBSetupAssistantProgressController *)self progressBar];
  [v15 setProgressTintColor:v14];

  v16 = [(OBSetupAssistantProgressController *)self progressBar];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(OBWelcomeController *)self contentView];
  v18 = [(OBSetupAssistantProgressController *)self progressLabel];
  [v17 addSubview:v18];

  v19 = [(OBWelcomeController *)self contentView];
  v20 = [(OBSetupAssistantProgressController *)self progressBar];
  [v19 addSubview:v20];

  v21 = [(OBSetupAssistantProgressController *)self progressLabel];
  v22 = [v21 topAnchor];
  v23 = [(OBWelcomeController *)self scrollView];
  v24 = [v23 centerYAnchor];
  v84 = v4;
  [(OBSetupAssistantProgressController *)self _progressLabelTopAnchorConstraintConstantWithFont:v4];
  v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24 constant:?];
  [(OBSetupAssistantProgressController *)self setProgressLabelTopAnchorConstraint:v25];

  v68 = MEMORY[0x1E696ACD8];
  v83 = [(OBSetupAssistantProgressController *)self progressBar];
  v81 = [v83 topAnchor];
  v82 = [(OBWelcomeController *)self contentView];
  v80 = [v82 topAnchor];
  v79 = [v81 constraintGreaterThanOrEqualToAnchor:v80];
  v86[0] = v79;
  v78 = [(OBSetupAssistantProgressController *)self progressBar];
  v76 = [v78 centerXAnchor];
  v77 = [(OBWelcomeController *)self contentView];
  v75 = [v77 centerXAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v86[1] = v74;
  v73 = [(OBSetupAssistantProgressController *)self progressBar];
  v71 = [v73 heightAnchor];
  v72 = [(OBSetupAssistantProgressController *)self progressBar];
  [v72 intrinsicContentSize];
  v70 = [v71 constraintEqualToConstant:v26];
  v86[2] = v70;
  v69 = [(OBSetupAssistantProgressController *)self progressBar];
  v66 = [v69 bottomAnchor];
  v67 = [(OBSetupAssistantProgressController *)self progressLabel];
  v65 = [v67 topAnchor];
  v64 = [v66 constraintEqualToAnchor:v65 constant:-14.0];
  v86[3] = v64;
  v63 = [(OBSetupAssistantProgressController *)self progressLabel];
  v61 = [v63 leftAnchor];
  v62 = [(OBWelcomeController *)self contentView];
  v60 = [v62 safeAreaLayoutGuide];
  v59 = [v60 leftAnchor];
  v58 = [v61 constraintEqualToAnchor:v59];
  v86[4] = v58;
  v57 = [(OBSetupAssistantProgressController *)self progressLabel];
  v55 = [v57 rightAnchor];
  v56 = [(OBWelcomeController *)self contentView];
  v54 = [v56 safeAreaLayoutGuide];
  v27 = [v54 rightAnchor];
  v28 = [v55 constraintEqualToAnchor:v27];
  v86[5] = v28;
  v29 = [(OBSetupAssistantProgressController *)self progressLabelTopAnchorConstraint];
  v86[6] = v29;
  v30 = [(OBSetupAssistantProgressController *)self progressLabel];
  v31 = [v30 bottomAnchor];
  v32 = [(OBWelcomeController *)self contentView];
  v33 = [v32 bottomAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  v86[7] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:8];
  [v68 activateConstraints:v35];

  v36 = [(OBSetupAssistantProgressController *)self progressLabel];
  LODWORD(v37) = 1148846080;
  [v36 setContentHuggingPriority:1 forAxis:v37];

  v38 = +[OBDevice currentDevice];
  v39 = [v38 type];

  if (v39 != 2)
  {
    v41 = [(OBSetupAssistantProgressController *)self progressBar];
    v42 = v41;
    goto LABEL_5;
  }

  v40 = +[OBFeatureFlags isNaturalUIEnabled];
  v41 = [(OBSetupAssistantProgressController *)self progressBar];
  v42 = v41;
  if (v40)
  {
LABEL_5:
    v45 = [v41 leftAnchor];
    v46 = [(OBWelcomeController *)self contentView];
    v47 = [v46 safeAreaLayoutGuide];
    v48 = [v47 leftAnchor];
    v49 = [v45 constraintEqualToAnchor:v48];
    [v49 setActive:1];

    v42 = [(OBSetupAssistantProgressController *)self progressBar];
    v43 = [v42 rightAnchor];
    v44 = [(OBWelcomeController *)self contentView];
    v50 = [v44 safeAreaLayoutGuide];
    v51 = [v50 rightAnchor];
    v52 = [v43 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    goto LABEL_6;
  }

  v43 = [v41 widthAnchor];
  v44 = [v43 constraintEqualToConstant:448.0];
  [v44 setActive:1];
LABEL_6:

  v53 = *MEMORY[0x1E69E9840];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = OBSetupAssistantProgressController;
  [(OBWelcomeController *)&v9 traitCollectionDidChange:a3];
  v4 = [(OBSetupAssistantProgressController *)self _progressFont];
  v5 = [(OBSetupAssistantProgressController *)self progressLabel];
  [v5 setFont:v4];

  [(OBSetupAssistantProgressController *)self _progressLabelTopAnchorConstraintConstantWithFont:v4];
  v7 = v6;
  v8 = [(OBSetupAssistantProgressController *)self progressLabelTopAnchorConstraint];
  [v8 setConstant:v7];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(OBWelcomeController *)self headerView];
  [v5 setTitle:v4];
}

- (void)setProgressText:(id)a3
{
  v4 = a3;
  v5 = [(OBSetupAssistantProgressController *)self progressLabel];
  [v5 setText:v4];
}

- (void)setProgress:(double)a3
{
  v3 = a3;
  v5 = [(OBSetupAssistantProgressController *)self progressBar];
  *&v4 = v3;
  [v5 setProgress:v4];
}

- (double)_progressLabelTopAnchorConstraintConstantWithFont:(id)a3
{
  v3 = a3;
  [v3 ascender];
  v5 = v4;
  [v3 descender];
  v7 = v6;

  return -(v5 - v7);
}

@end