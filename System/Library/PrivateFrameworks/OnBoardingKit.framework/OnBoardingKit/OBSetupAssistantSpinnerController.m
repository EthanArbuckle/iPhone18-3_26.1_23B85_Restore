@interface OBSetupAssistantSpinnerController
- (BOOL)_shouldUseScrollView;
- (OBSetupAssistantSpinnerController)initWithSpinnerText:(id)a3;
- (OBSetupAssistantSpinnerController)initWithSpinnerText:(id)a3 title:(id)a4;
- (int64_t)_activityIndicatorViewStyle;
- (void)_updateLayout;
- (void)_updateTextColor;
- (void)loadView;
- (void)setActivityIndicatorHidden:(BOOL)a3;
- (void)setPrivacyLinkController:(id)a3;
- (void)setSpinnerText:(id)a3;
- (void)setSpinnerTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateDirectionalLayoutMargins;
- (void)viewDidLayoutSubviews;
@end

@implementation OBSetupAssistantSpinnerController

- (OBSetupAssistantSpinnerController)initWithSpinnerText:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = OBSetupAssistantSpinnerController;
  v5 = [(OBSetupAssistantSpinnerController *)&v15 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    spinnerText = v5->_spinnerText;
    v5->_spinnerText = v6;

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    textLabel = v5->_textLabel;
    v5->_textLabel = v9;

    [(UILabel *)v5->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_textLabel setNumberOfLines:0];
    v11 = MEMORY[0x1E69DB878];
    v12 = [(OBSetupAssistantSpinnerController *)v5 _textStyle];
    v13 = [v11 preferredFontForTextStyle:v12];
    [(UILabel *)v5->_textLabel setFont:v13];

    [(UILabel *)v5->_textLabel setText:v5->_spinnerText];
  }

  return v5;
}

- (OBSetupAssistantSpinnerController)initWithSpinnerText:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = [(OBSetupAssistantSpinnerController *)self initWithSpinnerText:a3];
  if (v7)
  {
    v8 = [v6 copy];
    spinnerTitle = v7->_spinnerTitle;
    v7->_spinnerTitle = v8;

    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v11;

    [(UILabel *)v7->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_titleLabel setNumberOfLines:0];
    v13 = MEMORY[0x1E69DB878];
    v14 = [(OBSetupAssistantSpinnerController *)v7 _textStyle];
    v15 = [v13 preferredFontForTextStyle:v14];
    [(UILabel *)v7->_titleLabel setFont:v15];

    [(UILabel *)v7->_titleLabel setText:v7->_spinnerTitle];
  }

  return v7;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = OBSetupAssistantSpinnerController;
  [(OBBaseWelcomeController *)&v5 loadView];
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:{-[OBSetupAssistantSpinnerController _activityIndicatorViewStyle](self, "_activityIndicatorViewStyle")}];
  [(OBSetupAssistantSpinnerController *)self setActivityIndicator:v3];

  v4 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(OBSetupAssistantSpinnerController *)self _updateLayout];
  [(OBSetupAssistantSpinnerController *)self _updateTextColor];
}

- (void)viewDidLayoutSubviews
{
  v62[9] = *MEMORY[0x1E69E9840];
  v61.receiver = self;
  v61.super_class = OBSetupAssistantSpinnerController;
  [(OBBaseWelcomeController *)&v61 viewDidLayoutSubviews];
  v3 = [(OBSetupAssistantSpinnerController *)self scrollView];
  if (v3)
  {
  }

  else if ([(OBSetupAssistantSpinnerController *)self _shouldUseScrollView])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [(OBSetupAssistantSpinnerController *)self setScrollView:v4];

    v5 = [(OBSetupAssistantSpinnerController *)self scrollView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(OBSetupAssistantSpinnerController *)self setScrollContentView:v7];

    v8 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(OBSetupAssistantSpinnerController *)self view];
    v10 = [(OBSetupAssistantSpinnerController *)self scrollView];
    [v9 addSubview:v10];

    v11 = [(OBSetupAssistantSpinnerController *)self scrollView];
    v12 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    [v11 addSubview:v12];

    v40 = MEMORY[0x1E696ACD8];
    v60 = [(OBSetupAssistantSpinnerController *)self view];
    v58 = [v60 topAnchor];
    v59 = [(OBSetupAssistantSpinnerController *)self scrollView];
    v57 = [v59 topAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v62[0] = v56;
    v55 = [(OBSetupAssistantSpinnerController *)self view];
    v53 = [v55 rightAnchor];
    v54 = [(OBSetupAssistantSpinnerController *)self scrollView];
    v52 = [v54 rightAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v62[1] = v51;
    v50 = [(OBSetupAssistantSpinnerController *)self view];
    v48 = [v50 bottomAnchor];
    v49 = [(OBSetupAssistantSpinnerController *)self scrollView];
    v47 = [v49 bottomAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v62[2] = v46;
    v45 = [(OBSetupAssistantSpinnerController *)self view];
    v43 = [v45 leftAnchor];
    v44 = [(OBSetupAssistantSpinnerController *)self scrollView];
    v42 = [v44 leftAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v62[3] = v41;
    v39 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    v37 = [v39 topAnchor];
    v38 = [(OBSetupAssistantSpinnerController *)self scrollView];
    v36 = [v38 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v62[4] = v35;
    v34 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    v32 = [v34 rightAnchor];
    v33 = [(OBSetupAssistantSpinnerController *)self scrollView];
    v31 = [v33 rightAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v62[5] = v30;
    v29 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    v27 = [v29 bottomAnchor];
    v28 = [(OBSetupAssistantSpinnerController *)self scrollView];
    v26 = [v28 bottomAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v62[6] = v25;
    v24 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    v23 = [v24 leftAnchor];
    v13 = [(OBSetupAssistantSpinnerController *)self scrollView];
    v14 = [v13 leftAnchor];
    v15 = [v23 constraintEqualToAnchor:v14];
    v62[7] = v15;
    v16 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    v17 = [v16 widthAnchor];
    v18 = [(OBSetupAssistantSpinnerController *)self scrollView];
    v19 = [v18 widthAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v62[8] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:9];
    [v40 activateConstraints:v21];

    [(OBSetupAssistantSpinnerController *)self _updateLayout];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setSpinnerText:(id)a3
{
  v4 = [a3 copy];
  spinnerText = self->_spinnerText;
  self->_spinnerText = v4;

  v6 = self->_spinnerText;
  v7 = [(OBSetupAssistantSpinnerController *)self textLabel];
  [v7 setText:v6];
}

- (void)setSpinnerTitle:(id)a3
{
  v4 = [a3 copy];
  spinnerTitle = self->_spinnerTitle;
  self->_spinnerTitle = v4;

  v6 = self->_spinnerTitle;
  v7 = [(OBSetupAssistantSpinnerController *)self titleLabel];
  [v7 setText:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = MEMORY[0x1E69DB878];
  v5 = [(OBSetupAssistantSpinnerController *)self _textStyle];
  v6 = [v4 preferredFontForTextStyle:v5];
  v7 = [(OBSetupAssistantSpinnerController *)self textLabel];
  [v7 setFont:v6];

  v8 = MEMORY[0x1E69DB878];
  v9 = [(OBSetupAssistantSpinnerController *)self _textStyle];
  v10 = [v8 preferredFontForTextStyle:v9];
  v11 = [(OBSetupAssistantSpinnerController *)self titleLabel];
  [v11 setFont:v10];

  [(OBSetupAssistantSpinnerController *)self _updateLayout];
}

- (void)setActivityIndicatorHidden:(BOOL)a3
{
  v3 = a3;
  self->_activityIndicatorHidden = a3;
  v5 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  v6 = v5;
  if (v3)
  {
    [v5 stopAnimating];
  }

  else
  {
    [v5 startAnimating];
  }

  [(OBSetupAssistantSpinnerController *)self _updateTextColor];
}

- (void)setPrivacyLinkController:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_privacyLinkController, a3);
  [v6 willMoveToParentViewController:self];
  [(OBSetupAssistantSpinnerController *)self addChildViewController:v6];
  [v6 didMoveToParentViewController:self];
  v5 = [v6 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([(OBSetupAssistantSpinnerController *)self isViewLoaded])
  {
    [(OBSetupAssistantSpinnerController *)self _updateLayout];
  }
}

- (void)updateDirectionalLayoutMargins
{
  v15.receiver = self;
  v15.super_class = OBSetupAssistantSpinnerController;
  [(OBBaseWelcomeController *)&v15 updateDirectionalLayoutMargins];
  v3 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
  [v3 directionalLayoutMargins];
  v5 = v4;
  v7 = v6;

  v8 = [(OBSetupAssistantSpinnerController *)self view];
  [v8 directionalLayoutMargins];
  v10 = v9;

  v11 = [(OBSetupAssistantSpinnerController *)self view];
  [v11 directionalLayoutMargins];
  v13 = v12;

  v14 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
  [v14 setDirectionalLayoutMargins:{v5, v10, v7, v13}];
}

- (void)_updateTextColor
{
  if ([(OBSetupAssistantSpinnerController *)self isActivityIndicatorHidden])
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v4 = ;
  v3 = [(OBSetupAssistantSpinnerController *)self textLabel];
  [v3 setTextColor:v4];
}

- (void)_updateLayout
{
  v182[5] = *MEMORY[0x1E69E9840];
  v3 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  [v3 removeFromSuperview];

  v4 = [(OBSetupAssistantSpinnerController *)self textLabel];
  [v4 removeFromSuperview];

  v5 = [(OBSetupAssistantSpinnerController *)self titleLabel];
  [v5 removeFromSuperview];

  v6 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  v7 = [v6 view];
  [v7 removeFromSuperview];

  v8 = [(OBSetupAssistantSpinnerController *)self _shouldUseScrollView];
  v9 = [(OBSetupAssistantSpinnerController *)self view];
  if (v8)
  {
    v10 = [(OBSetupAssistantSpinnerController *)self scrollContentView];

    v9 = v10;
  }

  v11 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  [v9 addSubview:v11];

  v12 = [(OBSetupAssistantSpinnerController *)self textLabel];
  [v9 addSubview:v12];

  v13 = [(OBSetupAssistantSpinnerController *)self titleLabel];
  [v9 addSubview:v13];

  v14 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  v15 = [v14 view];
  [v9 addSubview:v15];

  v16 = [(OBSetupAssistantSpinnerController *)self _activityIndicatorViewStyle];
  v17 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  [v17 setActivityIndicatorViewStyle:v16];

  LODWORD(v17) = +[OBViewUtilities shouldUseAccessibilityLayout];
  v18 = [(OBSetupAssistantSpinnerController *)self textLabel];
  v19 = v18;
  v173 = v9;
  if (v17)
  {
    v100 = v8;
    [v18 setTextAlignment:4];

    v20 = +[OBUtilities mainScreen];
    [v20 bounds];
    v22 = v21 * 0.09;

    v111 = MEMORY[0x1E696ACD8];
    v166 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
    v154 = [v166 topAnchor];
    v160 = [v9 layoutMarginsGuide];
    v148 = [v160 topAnchor];
    v142 = [v154 constraintEqualToAnchor:v148 constant:v22];
    v182[0] = v142;
    v137 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
    v125 = [v137 leadingAnchor];
    v131 = [v9 layoutMarginsGuide];
    v121 = [v131 leadingAnchor];
    v117 = [v125 constraintEqualToAnchor:v121];
    v182[1] = v117;
    v113 = [(OBSetupAssistantSpinnerController *)self textLabel];
    v107 = [v113 topAnchor];
    v109 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
    v105 = [v109 bottomAnchor];
    v103 = [v107 constraintEqualToAnchor:v105 constant:37.0];
    v182[2] = v103;
    v102 = [(OBSetupAssistantSpinnerController *)self textLabel];
    v101 = [v102 leftAnchor];
    v23 = [v9 layoutMarginsGuide];
    v24 = [v23 leftAnchor];
    v25 = [v101 constraintEqualToAnchor:v24];
    v182[3] = v25;
    v26 = [(OBSetupAssistantSpinnerController *)self textLabel];
    v27 = [v26 rightAnchor];
    v28 = [v9 layoutMarginsGuide];
    v29 = [v28 rightAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v182[4] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:5];
    [v111 activateConstraints:v31];

    v32 = [(OBSetupAssistantSpinnerController *)self titleLabel];

    if (v32)
    {
      v33 = [(OBSetupAssistantSpinnerController *)self titleLabel];
      [v33 setTextAlignment:4];

      v132 = MEMORY[0x1E696ACD8];
      v167 = [(OBSetupAssistantSpinnerController *)self titleLabel];
      v155 = [v167 topAnchor];
      v161 = [v173 layoutMarginsGuide];
      v149 = [v161 topAnchor];
      v143 = [v155 constraintEqualToAnchor:v149];
      v181[0] = v143;
      v138 = [(OBSetupAssistantSpinnerController *)self titleLabel];
      v126 = [v138 leftAnchor];
      v34 = [v173 layoutMarginsGuide];
      v35 = [v34 leftAnchor];
      v36 = [v126 constraintEqualToAnchor:v35];
      v181[1] = v36;
      v37 = [(OBSetupAssistantSpinnerController *)self titleLabel];
      v38 = [v37 rightAnchor];
      v39 = [v173 layoutMarginsGuide];
      v40 = [v39 rightAnchor];
      v41 = [v38 constraintEqualToAnchor:v40];
      v181[2] = v41;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v181 count:3];
      [v132 activateConstraints:v42];
    }

    v43 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];

    if (v43)
    {
      if (v100)
      {
        v168 = MEMORY[0x1E696ACD8];
        v44 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
        v45 = [v44 view];
        v46 = [v45 topAnchor];
        v47 = [(OBSetupAssistantSpinnerController *)self textLabel];
        v48 = [v47 bottomAnchor];
        v49 = [v46 constraintEqualToAnchor:v48 constant:20.0];
        v180 = v49;
        v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v180 count:1];
        [v168 activateConstraints:v50];
      }

      v133 = MEMORY[0x1E696ACD8];
      v169 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
      v162 = [v169 view];
      v156 = [v162 leftAnchor];
      v150 = [v173 layoutMarginsGuide];
      v144 = [v150 leftAnchor];
      v51 = [v156 constraintEqualToAnchor:v144];
      v179[0] = v51;
      v139 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
      v127 = [v139 view];
      v118 = [v127 rightAnchor];
      v122 = [v173 layoutMarginsGuide];
      v114 = [v122 rightAnchor];
      v52 = [v118 constraintEqualToAnchor:v114];
      v179[1] = v52;
      v53 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
      v54 = [v53 view];
      v55 = [v54 bottomAnchor];
      v56 = [v173 layoutMarginsGuide];
      v57 = [v56 bottomAnchor];
      v58 = [v55 constraintEqualToAnchor:v57];
      v179[2] = v58;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:3];
      [v133 activateConstraints:v59];

      v60 = v173;
      v61 = v156;

      v62 = v144;
      v63 = v162;

      v64 = v150;
      v65 = v169;

      v66 = v127;
      goto LABEL_14;
    }

    v97 = MEMORY[0x1E696ACD8];
    v65 = [(OBSetupAssistantSpinnerController *)self textLabel];
    v63 = [v65 bottomAnchor];
    v60 = v173;
    v61 = [v173 layoutMarginsGuide];
    v64 = [v61 bottomAnchor];
    v62 = [v63 constraintLessThanOrEqualToAnchor:v64];
    v178 = v62;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1];
    v98 = v97;
LABEL_17:
    [v98 activateConstraints:v51];
    goto LABEL_18;
  }

  [v18 setTextAlignment:1];

  v115 = MEMORY[0x1E696ACD8];
  v170 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  v157 = [v170 bottomAnchor];
  v163 = [(OBSetupAssistantSpinnerController *)self textLabel];
  v151 = [v163 topAnchor];
  v145 = [v157 constraintEqualToAnchor:v151 constant:-16.0];
  v177[0] = v145;
  v140 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  v134 = [v140 centerXAnchor];
  v128 = [v9 centerXAnchor];
  v123 = [v134 constraintEqualToAnchor:v128];
  v177[1] = v123;
  v119 = [(OBSetupAssistantSpinnerController *)self textLabel];
  v110 = [v119 leftAnchor];
  v112 = [v9 layoutMarginsGuide];
  v108 = [v112 leftAnchor];
  v106 = [v110 constraintEqualToAnchor:v108];
  v177[2] = v106;
  v104 = [(OBSetupAssistantSpinnerController *)self textLabel];
  v67 = [v104 rightAnchor];
  v68 = [v9 layoutMarginsGuide];
  v69 = [v68 rightAnchor];
  v70 = [v67 constraintEqualToAnchor:v69];
  v177[3] = v70;
  v71 = [(OBSetupAssistantSpinnerController *)self textLabel];
  v72 = [v71 centerYAnchor];
  v73 = [v9 centerYAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];
  v177[4] = v74;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:5];
  [v115 activateConstraints:v75];

  v76 = [(OBSetupAssistantSpinnerController *)self titleLabel];

  if (v76)
  {
    v77 = [(OBSetupAssistantSpinnerController *)self titleLabel];
    [v77 setTextAlignment:1];

    v135 = MEMORY[0x1E696ACD8];
    v171 = [(OBSetupAssistantSpinnerController *)self titleLabel];
    v158 = [v171 topAnchor];
    v164 = [v173 layoutMarginsGuide];
    v152 = [v164 topAnchor];
    v146 = [v158 constraintEqualToAnchor:v152];
    v176[0] = v146;
    v141 = [(OBSetupAssistantSpinnerController *)self titleLabel];
    v129 = [v141 leftAnchor];
    v78 = [v173 layoutMarginsGuide];
    v79 = [v78 leftAnchor];
    v80 = [v129 constraintEqualToAnchor:v79];
    v176[1] = v80;
    v81 = [(OBSetupAssistantSpinnerController *)self titleLabel];
    v82 = [v81 rightAnchor];
    v83 = [v173 layoutMarginsGuide];
    v84 = [v83 rightAnchor];
    v85 = [v82 constraintEqualToAnchor:v84];
    v176[2] = v85;
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:3];
    [v135 activateConstraints:v86];
  }

  v87 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];

  v88 = MEMORY[0x1E696ACD8];
  if (!v87)
  {
    v65 = [(OBSetupAssistantSpinnerController *)self textLabel];
    v63 = [v65 bottomAnchor];
    v60 = v173;
    v61 = [v173 layoutMarginsGuide];
    v64 = [v61 bottomAnchor];
    v62 = [v63 constraintLessThanOrEqualToAnchor:v64];
    v174 = v62;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v174 count:1];
    v98 = v88;
    goto LABEL_17;
  }

  v172 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  v165 = [v172 view];
  v159 = [v165 leftAnchor];
  v153 = [v173 layoutMarginsGuide];
  v147 = [v153 leftAnchor];
  v51 = [v159 constraintEqualToAnchor:v147];
  v175[0] = v51;
  v139 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  v136 = [v139 view];
  v124 = [v136 rightAnchor];
  v130 = [v173 layoutMarginsGuide];
  v120 = [v130 rightAnchor];
  [v124 constraintEqualToAnchor:v120];
  v89 = v116 = v88;
  v175[1] = v89;
  v90 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  v91 = [v90 view];
  v92 = [v91 bottomAnchor];
  v93 = [v173 layoutMarginsGuide];
  v94 = [v93 bottomAnchor];
  v95 = [v92 constraintEqualToAnchor:v94];
  v175[2] = v95;
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:3];
  [v116 activateConstraints:v96];

  v63 = v165;
  v62 = v147;

  v64 = v153;
  v65 = v172;

  v60 = v173;
  v61 = v159;

  v66 = v136;
LABEL_14:

LABEL_18:
  v99 = *MEMORY[0x1E69E9840];
}

- (int64_t)_activityIndicatorViewStyle
{
  if (+[OBViewUtilities shouldUseAccessibilityLayout])
  {
    return 101;
  }

  else
  {
    return 100;
  }
}

- (BOOL)_shouldUseScrollView
{
  v3 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(OBSetupAssistantSpinnerController *)self scrollView];

  if (v4)
  {
    return 1;
  }

  v6 = [(OBSetupAssistantSpinnerController *)self textLabel];
  [v6 frame];
  MaxY = CGRectGetMaxY(v11);
  v8 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  v9 = [v8 view];
  [v9 frame];
  v5 = MaxY > CGRectGetMinY(v12);

  return v5;
}

@end