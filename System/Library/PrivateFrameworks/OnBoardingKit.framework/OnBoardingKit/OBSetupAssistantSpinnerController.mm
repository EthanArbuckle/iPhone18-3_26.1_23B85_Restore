@interface OBSetupAssistantSpinnerController
- (BOOL)_shouldUseScrollView;
- (OBSetupAssistantSpinnerController)initWithSpinnerText:(id)text;
- (OBSetupAssistantSpinnerController)initWithSpinnerText:(id)text title:(id)title;
- (int64_t)_activityIndicatorViewStyle;
- (void)_updateLayout;
- (void)_updateTextColor;
- (void)loadView;
- (void)setActivityIndicatorHidden:(BOOL)hidden;
- (void)setPrivacyLinkController:(id)controller;
- (void)setSpinnerText:(id)text;
- (void)setSpinnerTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
- (void)updateDirectionalLayoutMargins;
- (void)viewDidLayoutSubviews;
@end

@implementation OBSetupAssistantSpinnerController

- (OBSetupAssistantSpinnerController)initWithSpinnerText:(id)text
{
  textCopy = text;
  v15.receiver = self;
  v15.super_class = OBSetupAssistantSpinnerController;
  v5 = [(OBSetupAssistantSpinnerController *)&v15 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [textCopy copy];
    spinnerText = v5->_spinnerText;
    v5->_spinnerText = v6;

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    textLabel = v5->_textLabel;
    v5->_textLabel = v9;

    [(UILabel *)v5->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_textLabel setNumberOfLines:0];
    v11 = MEMORY[0x1E69DB878];
    _textStyle = [(OBSetupAssistantSpinnerController *)v5 _textStyle];
    v13 = [v11 preferredFontForTextStyle:_textStyle];
    [(UILabel *)v5->_textLabel setFont:v13];

    [(UILabel *)v5->_textLabel setText:v5->_spinnerText];
  }

  return v5;
}

- (OBSetupAssistantSpinnerController)initWithSpinnerText:(id)text title:(id)title
{
  titleCopy = title;
  v7 = [(OBSetupAssistantSpinnerController *)self initWithSpinnerText:text];
  if (v7)
  {
    v8 = [titleCopy copy];
    spinnerTitle = v7->_spinnerTitle;
    v7->_spinnerTitle = v8;

    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v11;

    [(UILabel *)v7->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_titleLabel setNumberOfLines:0];
    v13 = MEMORY[0x1E69DB878];
    _textStyle = [(OBSetupAssistantSpinnerController *)v7 _textStyle];
    v15 = [v13 preferredFontForTextStyle:_textStyle];
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

  activityIndicator = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  [activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];

  [(OBSetupAssistantSpinnerController *)self _updateLayout];
  [(OBSetupAssistantSpinnerController *)self _updateTextColor];
}

- (void)viewDidLayoutSubviews
{
  v62[9] = *MEMORY[0x1E69E9840];
  v61.receiver = self;
  v61.super_class = OBSetupAssistantSpinnerController;
  [(OBBaseWelcomeController *)&v61 viewDidLayoutSubviews];
  scrollView = [(OBSetupAssistantSpinnerController *)self scrollView];
  if (scrollView)
  {
  }

  else if ([(OBSetupAssistantSpinnerController *)self _shouldUseScrollView])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [(OBSetupAssistantSpinnerController *)self setScrollView:v4];

    scrollView2 = [(OBSetupAssistantSpinnerController *)self scrollView];
    [scrollView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(OBSetupAssistantSpinnerController *)self setScrollContentView:v7];

    scrollContentView = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    [scrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(OBSetupAssistantSpinnerController *)self view];
    scrollView3 = [(OBSetupAssistantSpinnerController *)self scrollView];
    [view addSubview:scrollView3];

    scrollView4 = [(OBSetupAssistantSpinnerController *)self scrollView];
    scrollContentView2 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    [scrollView4 addSubview:scrollContentView2];

    v40 = MEMORY[0x1E696ACD8];
    view2 = [(OBSetupAssistantSpinnerController *)self view];
    topAnchor = [view2 topAnchor];
    scrollView5 = [(OBSetupAssistantSpinnerController *)self scrollView];
    topAnchor2 = [scrollView5 topAnchor];
    v56 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v62[0] = v56;
    view3 = [(OBSetupAssistantSpinnerController *)self view];
    rightAnchor = [view3 rightAnchor];
    scrollView6 = [(OBSetupAssistantSpinnerController *)self scrollView];
    rightAnchor2 = [scrollView6 rightAnchor];
    v51 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v62[1] = v51;
    view4 = [(OBSetupAssistantSpinnerController *)self view];
    bottomAnchor = [view4 bottomAnchor];
    scrollView7 = [(OBSetupAssistantSpinnerController *)self scrollView];
    bottomAnchor2 = [scrollView7 bottomAnchor];
    v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v62[2] = v46;
    view5 = [(OBSetupAssistantSpinnerController *)self view];
    leftAnchor = [view5 leftAnchor];
    scrollView8 = [(OBSetupAssistantSpinnerController *)self scrollView];
    leftAnchor2 = [scrollView8 leftAnchor];
    v41 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v62[3] = v41;
    scrollContentView3 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    topAnchor3 = [scrollContentView3 topAnchor];
    scrollView9 = [(OBSetupAssistantSpinnerController *)self scrollView];
    topAnchor4 = [scrollView9 topAnchor];
    v35 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v62[4] = v35;
    scrollContentView4 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    rightAnchor3 = [scrollContentView4 rightAnchor];
    scrollView10 = [(OBSetupAssistantSpinnerController *)self scrollView];
    rightAnchor4 = [scrollView10 rightAnchor];
    v30 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v62[5] = v30;
    scrollContentView5 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    bottomAnchor3 = [scrollContentView5 bottomAnchor];
    scrollView11 = [(OBSetupAssistantSpinnerController *)self scrollView];
    bottomAnchor4 = [scrollView11 bottomAnchor];
    v25 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v62[6] = v25;
    scrollContentView6 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    leftAnchor3 = [scrollContentView6 leftAnchor];
    scrollView12 = [(OBSetupAssistantSpinnerController *)self scrollView];
    leftAnchor4 = [scrollView12 leftAnchor];
    v15 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v62[7] = v15;
    scrollContentView7 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
    widthAnchor = [scrollContentView7 widthAnchor];
    scrollView13 = [(OBSetupAssistantSpinnerController *)self scrollView];
    widthAnchor2 = [scrollView13 widthAnchor];
    v20 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v62[8] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:9];
    [v40 activateConstraints:v21];

    [(OBSetupAssistantSpinnerController *)self _updateLayout];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setSpinnerText:(id)text
{
  v4 = [text copy];
  spinnerText = self->_spinnerText;
  self->_spinnerText = v4;

  v6 = self->_spinnerText;
  textLabel = [(OBSetupAssistantSpinnerController *)self textLabel];
  [textLabel setText:v6];
}

- (void)setSpinnerTitle:(id)title
{
  v4 = [title copy];
  spinnerTitle = self->_spinnerTitle;
  self->_spinnerTitle = v4;

  v6 = self->_spinnerTitle;
  titleLabel = [(OBSetupAssistantSpinnerController *)self titleLabel];
  [titleLabel setText:v6];
}

- (void)traitCollectionDidChange:(id)change
{
  v4 = MEMORY[0x1E69DB878];
  _textStyle = [(OBSetupAssistantSpinnerController *)self _textStyle];
  v6 = [v4 preferredFontForTextStyle:_textStyle];
  textLabel = [(OBSetupAssistantSpinnerController *)self textLabel];
  [textLabel setFont:v6];

  v8 = MEMORY[0x1E69DB878];
  _textStyle2 = [(OBSetupAssistantSpinnerController *)self _textStyle];
  v10 = [v8 preferredFontForTextStyle:_textStyle2];
  titleLabel = [(OBSetupAssistantSpinnerController *)self titleLabel];
  [titleLabel setFont:v10];

  [(OBSetupAssistantSpinnerController *)self _updateLayout];
}

- (void)setActivityIndicatorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_activityIndicatorHidden = hidden;
  activityIndicator = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  v6 = activityIndicator;
  if (hiddenCopy)
  {
    [activityIndicator stopAnimating];
  }

  else
  {
    [activityIndicator startAnimating];
  }

  [(OBSetupAssistantSpinnerController *)self _updateTextColor];
}

- (void)setPrivacyLinkController:(id)controller
{
  controllerCopy = controller;
  objc_storeStrong(&self->_privacyLinkController, controller);
  [controllerCopy willMoveToParentViewController:self];
  [(OBSetupAssistantSpinnerController *)self addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:self];
  view = [controllerCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

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
  scrollContentView = [(OBSetupAssistantSpinnerController *)self scrollContentView];
  [scrollContentView directionalLayoutMargins];
  v5 = v4;
  v7 = v6;

  view = [(OBSetupAssistantSpinnerController *)self view];
  [view directionalLayoutMargins];
  v10 = v9;

  view2 = [(OBSetupAssistantSpinnerController *)self view];
  [view2 directionalLayoutMargins];
  v13 = v12;

  scrollContentView2 = [(OBSetupAssistantSpinnerController *)self scrollContentView];
  [scrollContentView2 setDirectionalLayoutMargins:{v5, v10, v7, v13}];
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
  textLabel = [(OBSetupAssistantSpinnerController *)self textLabel];
  [textLabel setTextColor:v4];
}

- (void)_updateLayout
{
  v182[5] = *MEMORY[0x1E69E9840];
  activityIndicator = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  [activityIndicator removeFromSuperview];

  textLabel = [(OBSetupAssistantSpinnerController *)self textLabel];
  [textLabel removeFromSuperview];

  titleLabel = [(OBSetupAssistantSpinnerController *)self titleLabel];
  [titleLabel removeFromSuperview];

  privacyLinkController = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  view = [privacyLinkController view];
  [view removeFromSuperview];

  _shouldUseScrollView = [(OBSetupAssistantSpinnerController *)self _shouldUseScrollView];
  view2 = [(OBSetupAssistantSpinnerController *)self view];
  if (_shouldUseScrollView)
  {
    scrollContentView = [(OBSetupAssistantSpinnerController *)self scrollContentView];

    view2 = scrollContentView;
  }

  activityIndicator2 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  [view2 addSubview:activityIndicator2];

  textLabel2 = [(OBSetupAssistantSpinnerController *)self textLabel];
  [view2 addSubview:textLabel2];

  titleLabel2 = [(OBSetupAssistantSpinnerController *)self titleLabel];
  [view2 addSubview:titleLabel2];

  privacyLinkController2 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  view3 = [privacyLinkController2 view];
  [view2 addSubview:view3];

  _activityIndicatorViewStyle = [(OBSetupAssistantSpinnerController *)self _activityIndicatorViewStyle];
  activityIndicator3 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  [activityIndicator3 setActivityIndicatorViewStyle:_activityIndicatorViewStyle];

  LODWORD(activityIndicator3) = +[OBViewUtilities shouldUseAccessibilityLayout];
  textLabel3 = [(OBSetupAssistantSpinnerController *)self textLabel];
  v19 = textLabel3;
  v173 = view2;
  if (activityIndicator3)
  {
    v100 = _shouldUseScrollView;
    [textLabel3 setTextAlignment:4];

    v20 = +[OBUtilities mainScreen];
    [v20 bounds];
    v22 = v21 * 0.09;

    v111 = MEMORY[0x1E696ACD8];
    activityIndicator4 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
    topAnchor = [activityIndicator4 topAnchor];
    layoutMarginsGuide = [view2 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v142 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v22];
    v182[0] = v142;
    activityIndicator5 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
    leadingAnchor = [activityIndicator5 leadingAnchor];
    layoutMarginsGuide2 = [view2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    v117 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v182[1] = v117;
    textLabel4 = [(OBSetupAssistantSpinnerController *)self textLabel];
    topAnchor3 = [textLabel4 topAnchor];
    activityIndicator6 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
    bottomAnchor = [activityIndicator6 bottomAnchor];
    v103 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:37.0];
    v182[2] = v103;
    textLabel5 = [(OBSetupAssistantSpinnerController *)self textLabel];
    leftAnchor = [textLabel5 leftAnchor];
    layoutMarginsGuide3 = [view2 layoutMarginsGuide];
    leftAnchor2 = [layoutMarginsGuide3 leftAnchor];
    v25 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v182[3] = v25;
    textLabel6 = [(OBSetupAssistantSpinnerController *)self textLabel];
    rightAnchor = [textLabel6 rightAnchor];
    layoutMarginsGuide4 = [view2 layoutMarginsGuide];
    rightAnchor2 = [layoutMarginsGuide4 rightAnchor];
    v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v182[4] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:5];
    [v111 activateConstraints:v31];

    titleLabel3 = [(OBSetupAssistantSpinnerController *)self titleLabel];

    if (titleLabel3)
    {
      titleLabel4 = [(OBSetupAssistantSpinnerController *)self titleLabel];
      [titleLabel4 setTextAlignment:4];

      v132 = MEMORY[0x1E696ACD8];
      titleLabel5 = [(OBSetupAssistantSpinnerController *)self titleLabel];
      topAnchor4 = [titleLabel5 topAnchor];
      layoutMarginsGuide5 = [v173 layoutMarginsGuide];
      topAnchor5 = [layoutMarginsGuide5 topAnchor];
      v143 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      v181[0] = v143;
      titleLabel6 = [(OBSetupAssistantSpinnerController *)self titleLabel];
      leftAnchor3 = [titleLabel6 leftAnchor];
      layoutMarginsGuide6 = [v173 layoutMarginsGuide];
      leftAnchor4 = [layoutMarginsGuide6 leftAnchor];
      v36 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
      v181[1] = v36;
      titleLabel7 = [(OBSetupAssistantSpinnerController *)self titleLabel];
      rightAnchor3 = [titleLabel7 rightAnchor];
      layoutMarginsGuide7 = [v173 layoutMarginsGuide];
      rightAnchor4 = [layoutMarginsGuide7 rightAnchor];
      v41 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
      v181[2] = v41;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v181 count:3];
      [v132 activateConstraints:v42];
    }

    privacyLinkController3 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];

    if (privacyLinkController3)
    {
      if (v100)
      {
        v168 = MEMORY[0x1E696ACD8];
        privacyLinkController4 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
        view4 = [privacyLinkController4 view];
        topAnchor6 = [view4 topAnchor];
        textLabel7 = [(OBSetupAssistantSpinnerController *)self textLabel];
        bottomAnchor2 = [textLabel7 bottomAnchor];
        v49 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:20.0];
        v180 = v49;
        v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v180 count:1];
        [v168 activateConstraints:v50];
      }

      v133 = MEMORY[0x1E696ACD8];
      privacyLinkController5 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
      view5 = [privacyLinkController5 view];
      leftAnchor5 = [view5 leftAnchor];
      layoutMarginsGuide8 = [v173 layoutMarginsGuide];
      leftAnchor6 = [layoutMarginsGuide8 leftAnchor];
      v51 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
      v179[0] = v51;
      privacyLinkController6 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
      view6 = [privacyLinkController6 view];
      rightAnchor5 = [view6 rightAnchor];
      layoutMarginsGuide9 = [v173 layoutMarginsGuide];
      rightAnchor6 = [layoutMarginsGuide9 rightAnchor];
      v52 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
      v179[1] = v52;
      privacyLinkController7 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
      view7 = [privacyLinkController7 view];
      bottomAnchor3 = [view7 bottomAnchor];
      layoutMarginsGuide10 = [v173 layoutMarginsGuide];
      bottomAnchor4 = [layoutMarginsGuide10 bottomAnchor];
      v58 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v179[2] = v58;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:3];
      [v133 activateConstraints:v59];

      v60 = v173;
      layoutMarginsGuide11 = leftAnchor5;

      v62 = leftAnchor6;
      bottomAnchor5 = view5;

      bottomAnchor6 = layoutMarginsGuide8;
      textLabel8 = privacyLinkController5;

      v66 = view6;
      goto LABEL_14;
    }

    v97 = MEMORY[0x1E696ACD8];
    textLabel8 = [(OBSetupAssistantSpinnerController *)self textLabel];
    bottomAnchor5 = [textLabel8 bottomAnchor];
    v60 = v173;
    layoutMarginsGuide11 = [v173 layoutMarginsGuide];
    bottomAnchor6 = [layoutMarginsGuide11 bottomAnchor];
    v62 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
    v178 = v62;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v178 count:1];
    v98 = v97;
LABEL_17:
    [v98 activateConstraints:v51];
    goto LABEL_18;
  }

  [textLabel3 setTextAlignment:1];

  v115 = MEMORY[0x1E696ACD8];
  activityIndicator7 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  bottomAnchor7 = [activityIndicator7 bottomAnchor];
  textLabel9 = [(OBSetupAssistantSpinnerController *)self textLabel];
  topAnchor7 = [textLabel9 topAnchor];
  v145 = [bottomAnchor7 constraintEqualToAnchor:topAnchor7 constant:-16.0];
  v177[0] = v145;
  activityIndicator8 = [(OBSetupAssistantSpinnerController *)self activityIndicator];
  centerXAnchor = [activityIndicator8 centerXAnchor];
  centerXAnchor2 = [view2 centerXAnchor];
  v123 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v177[1] = v123;
  textLabel10 = [(OBSetupAssistantSpinnerController *)self textLabel];
  leftAnchor7 = [textLabel10 leftAnchor];
  layoutMarginsGuide12 = [view2 layoutMarginsGuide];
  leftAnchor8 = [layoutMarginsGuide12 leftAnchor];
  v106 = [leftAnchor7 constraintEqualToAnchor:leftAnchor8];
  v177[2] = v106;
  textLabel11 = [(OBSetupAssistantSpinnerController *)self textLabel];
  rightAnchor7 = [textLabel11 rightAnchor];
  layoutMarginsGuide13 = [view2 layoutMarginsGuide];
  rightAnchor8 = [layoutMarginsGuide13 rightAnchor];
  v70 = [rightAnchor7 constraintEqualToAnchor:rightAnchor8];
  v177[3] = v70;
  textLabel12 = [(OBSetupAssistantSpinnerController *)self textLabel];
  centerYAnchor = [textLabel12 centerYAnchor];
  centerYAnchor2 = [view2 centerYAnchor];
  v74 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v177[4] = v74;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:5];
  [v115 activateConstraints:v75];

  titleLabel8 = [(OBSetupAssistantSpinnerController *)self titleLabel];

  if (titleLabel8)
  {
    titleLabel9 = [(OBSetupAssistantSpinnerController *)self titleLabel];
    [titleLabel9 setTextAlignment:1];

    v135 = MEMORY[0x1E696ACD8];
    titleLabel10 = [(OBSetupAssistantSpinnerController *)self titleLabel];
    topAnchor8 = [titleLabel10 topAnchor];
    layoutMarginsGuide14 = [v173 layoutMarginsGuide];
    topAnchor9 = [layoutMarginsGuide14 topAnchor];
    v146 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
    v176[0] = v146;
    titleLabel11 = [(OBSetupAssistantSpinnerController *)self titleLabel];
    leftAnchor9 = [titleLabel11 leftAnchor];
    layoutMarginsGuide15 = [v173 layoutMarginsGuide];
    leftAnchor10 = [layoutMarginsGuide15 leftAnchor];
    v80 = [leftAnchor9 constraintEqualToAnchor:leftAnchor10];
    v176[1] = v80;
    titleLabel12 = [(OBSetupAssistantSpinnerController *)self titleLabel];
    rightAnchor9 = [titleLabel12 rightAnchor];
    layoutMarginsGuide16 = [v173 layoutMarginsGuide];
    rightAnchor10 = [layoutMarginsGuide16 rightAnchor];
    v85 = [rightAnchor9 constraintEqualToAnchor:rightAnchor10];
    v176[2] = v85;
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:3];
    [v135 activateConstraints:v86];
  }

  privacyLinkController8 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];

  v88 = MEMORY[0x1E696ACD8];
  if (!privacyLinkController8)
  {
    textLabel8 = [(OBSetupAssistantSpinnerController *)self textLabel];
    bottomAnchor5 = [textLabel8 bottomAnchor];
    v60 = v173;
    layoutMarginsGuide11 = [v173 layoutMarginsGuide];
    bottomAnchor6 = [layoutMarginsGuide11 bottomAnchor];
    v62 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
    v174 = v62;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v174 count:1];
    v98 = v88;
    goto LABEL_17;
  }

  privacyLinkController9 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  view8 = [privacyLinkController9 view];
  leftAnchor11 = [view8 leftAnchor];
  layoutMarginsGuide17 = [v173 layoutMarginsGuide];
  leftAnchor12 = [layoutMarginsGuide17 leftAnchor];
  v51 = [leftAnchor11 constraintEqualToAnchor:leftAnchor12];
  v175[0] = v51;
  privacyLinkController6 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  view9 = [privacyLinkController6 view];
  rightAnchor11 = [view9 rightAnchor];
  layoutMarginsGuide18 = [v173 layoutMarginsGuide];
  rightAnchor12 = [layoutMarginsGuide18 rightAnchor];
  [rightAnchor11 constraintEqualToAnchor:rightAnchor12];
  v89 = v116 = v88;
  v175[1] = v89;
  privacyLinkController10 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  view10 = [privacyLinkController10 view];
  bottomAnchor8 = [view10 bottomAnchor];
  layoutMarginsGuide19 = [v173 layoutMarginsGuide];
  bottomAnchor9 = [layoutMarginsGuide19 bottomAnchor];
  v95 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  v175[2] = v95;
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:3];
  [v116 activateConstraints:v96];

  bottomAnchor5 = view8;
  v62 = leftAnchor12;

  bottomAnchor6 = layoutMarginsGuide17;
  textLabel8 = privacyLinkController9;

  v60 = v173;
  layoutMarginsGuide11 = leftAnchor11;

  v66 = view9;
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
  privacyLinkController = [(OBSetupAssistantSpinnerController *)self privacyLinkController];

  if (!privacyLinkController)
  {
    return 0;
  }

  scrollView = [(OBSetupAssistantSpinnerController *)self scrollView];

  if (scrollView)
  {
    return 1;
  }

  textLabel = [(OBSetupAssistantSpinnerController *)self textLabel];
  [textLabel frame];
  MaxY = CGRectGetMaxY(v11);
  privacyLinkController2 = [(OBSetupAssistantSpinnerController *)self privacyLinkController];
  view = [privacyLinkController2 view];
  [view frame];
  v5 = MaxY > CGRectGetMinY(v12);

  return v5;
}

@end