@interface CPSRouteRowView
- (CPSRouteRowInteracting)interactionDelegate;
- (CPSRouteRowView)initWithFrame:(CGRect)frame;
- (void)_updateAppearance;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)handleRowSelection:(id)selection;
- (void)setRepresentedRouteChoice:(id)choice;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSRouteRowView

- (CPSRouteRowView)initWithFrame:(CGRect)frame
{
  v100[19] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v97 = a2;
  v98 = 0;
  v96.receiver = self;
  v96.super_class = CPSRouteRowView;
  v98 = [(CPSRouteRowView *)&v96 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v98, v98);
  if (v98)
  {
    [(CPSRouteRowView *)v98 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSRouteRowView *)v98 setClipsToBounds:1];
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    v95 = [v3 initWithFrame:{frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width, frameCopy.size.height}];
    [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = v95;
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    [v16 setBackgroundColor:?];
    *&v4 = MEMORY[0x277D82BD8](_carSystemFocusColor).n128_u64[0];
    [(CPSRouteRowView *)v98 addSubview:v95, v4];
    [v95 setHidden:1];
    objc_storeStrong(&v98->_focusBackground, v95);
    v94 = [CPSInvisibleButton buttonWithType:?];
    [(CPSInvisibleButton *)v94 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSInvisibleButton *)v94 addTarget:v98 action:sel_handleRowSelection_ forControlEvents:0x2000];
    objc_storeStrong(&v98->_rowButton, v94);
    obj = objc_alloc_init(MEMORY[0x277D755E8]);
    [obj setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v98->_checkmarkView, obj);
    [obj setUserInteractionEnabled:0];
    layer = [obj layer];
    [layer setCornerRadius:11.0];
    MEMORY[0x277D82BD8](layer);
    [obj setContentCompressionResistancePriority:? forAxis:?];
    LODWORD(v5) = 1148846080;
    [obj setContentCompressionResistancePriority:0 forAxis:v5];
    [obj setContentMode:?];
    [(CPSInvisibleButton *)v94 addSubview:obj];
    v6 = objc_alloc(MEMORY[0x277D75A68]);
    v92 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v92 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v92 setAxis:1];
    [v92 setSpacing:-1.0];
    [v92 setAlignment:1];
    [(CPSInvisibleButton *)v94 addSubview:v92];
    objc_storeStrong(&v98->_labelStackView, v92);
    v19 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74410]];
    fontDescriptor = [v19 fontDescriptor];
    *&v7 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    v90 = [fontDescriptor fontDescriptorWithSymbolicTraits:v7];
    v89 = [MEMORY[0x277D74300] fontWithDescriptor:v90 size:?];
    v20 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
    fontDescriptor2 = [v20 fontDescriptor];
    *&v8 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    v87 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:{0x8000, v8}];
    v86 = [MEMORY[0x277D74300] fontWithDescriptor:v87 size:0.0];
    v85 = objc_alloc_init(MEMORY[0x277D75D18]);
    v84 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v85 setContentHuggingPriority:1 forAxis:?];
    LODWORD(v9) = 1132068864;
    [v84 setContentHuggingPriority:1 forAxis:v9];
    [v92 addArrangedSubview:v85];
    v83 = objc_alloc_init(CPSAbridgableLabel);
    [v83 setFont:v89];
    [v83 setTextAlignment:4];
    v21 = v83;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v21 setTextColor:?];
    *&v10 = MEMORY[0x277D82BD8](labelColor).n128_u64[0];
    [v83 setTranslatesAutoresizingMaskIntoConstraints:{0, v10}];
    LODWORD(v11) = 1148846080;
    [v83 setContentCompressionResistancePriority:1 forAxis:v11];
    [v83 setNumberOfLines:1];
    [v83 setMinimumScaleFactor:0.92];
    objc_storeStrong(&v98->_title, v83);
    [v92 addArrangedSubview:v98->_title];
    v82 = objc_alloc_init(CPSAbridgableLabel);
    [v82 setFont:v86];
    [v82 setTextAlignment:4];
    v23 = v82;
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [v23 setTextColor:?];
    *&v12 = MEMORY[0x277D82BD8](labelColor2).n128_u64[0];
    [v82 setTranslatesAutoresizingMaskIntoConstraints:{0, v12}];
    [v82 setNumberOfLines:2];
    [v82 setMinimumScaleFactor:0.92];
    objc_storeStrong(&v98->_detail, v82);
    [v92 addArrangedSubview:v98->_detail];
    [v92 addArrangedSubview:v84];
    [(CPSRouteRowView *)v98 addSubview:v94];
    v25 = MEMORY[0x277CCAAD0];
    heightAnchor = [v85 heightAnchor];
    heightAnchor2 = [v84 heightAnchor];
    v79 = [heightAnchor constraintEqualToAnchor:?];
    v100[0] = v79;
    leadingAnchor = [(CPSInvisibleButton *)v94 leadingAnchor];
    leadingAnchor2 = [(CPSRouteRowView *)v98 leadingAnchor];
    v76 = [leadingAnchor constraintEqualToAnchor:?];
    v100[1] = v76;
    trailingAnchor = [(CPSInvisibleButton *)v94 trailingAnchor];
    trailingAnchor2 = [(CPSRouteRowView *)v98 trailingAnchor];
    v73 = [trailingAnchor constraintEqualToAnchor:?];
    v100[2] = v73;
    topAnchor = [(CPSInvisibleButton *)v94 topAnchor];
    topAnchor2 = [(CPSRouteRowView *)v98 topAnchor];
    v70 = [topAnchor constraintEqualToAnchor:?];
    v100[3] = v70;
    bottomAnchor = [(CPSInvisibleButton *)v94 bottomAnchor];
    bottomAnchor2 = [(CPSRouteRowView *)v98 bottomAnchor];
    v67 = [bottomAnchor constraintEqualToAnchor:?];
    v100[4] = v67;
    trailingAnchor3 = [obj trailingAnchor];
    trailingAnchor4 = [(CPSInvisibleButton *)v94 trailingAnchor];
    v64 = [trailingAnchor3 constraintEqualToAnchor:? constant:?];
    v100[5] = v64;
    centerYAnchor = [obj centerYAnchor];
    centerYAnchor2 = [(CPSInvisibleButton *)v94 centerYAnchor];
    v61 = [centerYAnchor constraintEqualToAnchor:?];
    v100[6] = v61;
    heightAnchor3 = [obj heightAnchor];
    v59 = [heightAnchor3 constraintEqualToConstant:?];
    v100[7] = v59;
    widthAnchor = [obj widthAnchor];
    v57 = [widthAnchor constraintEqualToConstant:22.0];
    v100[8] = v57;
    centerYAnchor3 = [v92 centerYAnchor];
    centerYAnchor4 = [(CPSRouteRowView *)v98 centerYAnchor];
    v54 = [centerYAnchor3 constraintEqualToAnchor:?];
    v100[9] = v54;
    trailingAnchor5 = [v92 trailingAnchor];
    leadingAnchor3 = [obj leadingAnchor];
    v51 = [trailingAnchor5 constraintEqualToAnchor:-8.0 constant:?];
    v100[10] = v51;
    leadingAnchor4 = [v92 leadingAnchor];
    leadingAnchor5 = [(CPSRouteRowView *)v98 leadingAnchor];
    v48 = [leadingAnchor4 constraintEqualToAnchor:8.0 constant:?];
    v100[11] = v48;
    heightAnchor4 = [v92 heightAnchor];
    heightAnchor5 = [(CPSRouteRowView *)v98 heightAnchor];
    v45 = [heightAnchor4 constraintLessThanOrEqualToAnchor:1.0 multiplier:?];
    v100[12] = v45;
    topAnchor3 = [v92 topAnchor];
    topAnchor4 = [(CPSRouteRowView *)v98 topAnchor];
    v42 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:?];
    v100[13] = v42;
    bottomAnchor3 = [v92 bottomAnchor];
    bottomAnchor4 = [(CPSRouteRowView *)v98 bottomAnchor];
    v39 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:?];
    v100[14] = v39;
    topAnchor5 = [v95 topAnchor];
    topAnchor6 = [(CPSRouteRowView *)v98 topAnchor];
    v36 = [topAnchor5 constraintEqualToAnchor:?];
    v100[15] = v36;
    bottomAnchor5 = [v95 bottomAnchor];
    bottomAnchor6 = [(CPSRouteRowView *)v98 bottomAnchor];
    v33 = [bottomAnchor5 constraintEqualToAnchor:?];
    v100[16] = v33;
    leftAnchor = [v95 leftAnchor];
    leftAnchor2 = [(CPSRouteRowView *)v98 leftAnchor];
    v30 = [leftAnchor constraintEqualToAnchor:?];
    v100[17] = v30;
    rightAnchor = [v95 rightAnchor];
    rightAnchor2 = [(CPSRouteRowView *)v98 rightAnchor];
    v27 = [rightAnchor constraintEqualToAnchor:?];
    v100[18] = v27;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:19];
    [v25 activateConstraints:?];
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](rightAnchor);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](leftAnchor2);
    MEMORY[0x277D82BD8](leftAnchor);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](bottomAnchor6);
    MEMORY[0x277D82BD8](bottomAnchor5);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](topAnchor6);
    MEMORY[0x277D82BD8](topAnchor5);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](heightAnchor5);
    MEMORY[0x277D82BD8](heightAnchor4);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](leadingAnchor5);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](centerYAnchor4);
    MEMORY[0x277D82BD8](centerYAnchor3);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](heightAnchor3);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](heightAnchor);
    objc_storeStrong(&v82, 0);
    objc_storeStrong(&v83, 0);
    objc_storeStrong(&v84, 0);
    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v87, 0);
    objc_storeStrong(&fontDescriptor2, 0);
    objc_storeStrong(&v89, 0);
    objc_storeStrong(&v90, 0);
    objc_storeStrong(&fontDescriptor, 0);
    objc_storeStrong(&v92, 0);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v94, 0);
    objc_storeStrong(&v95, 0);
  }

  [(CPSRouteRowView *)v98 _updateAppearance];
  v15 = MEMORY[0x277D82BE0](v98);
  objc_storeStrong(v14, 0);
  return v15;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  [(CPSRouteRowView *)selfCopy _updateAppearance];
  objc_storeStrong(location, 0);
}

- (void)handleRowSelection:(id)selection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selection);
  interactionDelegate = [(CPSRouteRowView *)selfCopy interactionDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = selfCopy;
    representedRouteChoice = [(CPSRouteRowView *)selfCopy representedRouteChoice];
    [interactionDelegate didSelectRow:v3 representingRouteChoice:?];
    MEMORY[0x277D82BD8](representedRouteChoice);
  }

  objc_storeStrong(&interactionDelegate, 0);
  objc_storeStrong(location, 0);
}

- (void)setRepresentedRouteChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  objc_storeStrong(&selfCopy->_representedRouteChoice, location[0]);
  title = [(CPSRouteRowView *)selfCopy title];
  summaryVariants = [location[0] summaryVariants];
  [(CPUIAbridgableLabel *)title setTextVariants:?];
  MEMORY[0x277D82BD8](summaryVariants);
  *&v3 = MEMORY[0x277D82BD8](title).n128_u64[0];
  selectionSummaryVariants = [location[0] selectionSummaryVariants];
  v18 = 0;
  v15 = 0;
  if (selectionSummaryVariants)
  {
    selectionSummaryVariants2 = [location[0] selectionSummaryVariants];
    v18 = 1;
    v15 = [selectionSummaryVariants2 count] != 0;
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](selectionSummaryVariants2);
  }

  *&v4 = MEMORY[0x277D82BD8](selectionSummaryVariants).n128_u64[0];
  if (v15)
  {
    detail = [(CPSRouteRowView *)selfCopy detail];
    selectionSummaryVariants3 = [location[0] selectionSummaryVariants];
    [(CPUIAbridgableLabel *)detail setTextVariants:?];
    MEMORY[0x277D82BD8](selectionSummaryVariants3);
    MEMORY[0x277D82BD8](detail);
  }

  else
  {
    additionalInformationVariants = [location[0] additionalInformationVariants];
    v16 = 0;
    v9 = 0;
    if (additionalInformationVariants)
    {
      additionalInformationVariants2 = [location[0] additionalInformationVariants];
      v16 = 1;
      v9 = [additionalInformationVariants2 count] != 0;
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](additionalInformationVariants2);
    }

    *&v5 = MEMORY[0x277D82BD8](additionalInformationVariants).n128_u64[0];
    if (v9)
    {
      detail2 = [(CPSRouteRowView *)selfCopy detail];
      additionalInformationVariants3 = [location[0] additionalInformationVariants];
      [(CPUIAbridgableLabel *)detail2 setTextVariants:?];
      MEMORY[0x277D82BD8](additionalInformationVariants3);
      MEMORY[0x277D82BD8](detail2);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(CPSRouteRowView *)self _updateAppearance];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v5 = 0;
  objc_storeStrong(&v5, coordinator);
  [(CPSRouteRowView *)selfCopy _updateAppearance];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateAppearance
{
  selfCopy = self;
  v37 = a2;
  rowButton = [(CPSRouteRowView *)self rowButton];
  isFocused = [(CPSInvisibleButton *)rowButton isFocused];
  *&v2 = MEMORY[0x277D82BD8](rowButton).n128_u64[0];
  v36 = isFocused;
  if (isFocused)
  {
    focusBackground = [(CPSRouteRowView *)selfCopy focusBackground];
    [(UIView *)focusBackground setHidden:0];
    title = [(CPSRouteRowView *)selfCopy title];
    _carSystemFocusLabelColor = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    [(CPSAbridgableLabel *)title setTextColor:?];
    MEMORY[0x277D82BD8](_carSystemFocusLabelColor);
    detail = [(CPSRouteRowView *)selfCopy detail];
    _carSystemFocusLabelColor2 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    [(CPSAbridgableLabel *)detail setTextColor:?];
    MEMORY[0x277D82BD8](_carSystemFocusLabelColor2);
    v3 = MEMORY[0x277D82BD8](detail).n128_u64[0];
  }

  else
  {
    focusBackground2 = [(CPSRouteRowView *)selfCopy focusBackground];
    [(UIView *)focusBackground2 setHidden:1];
    title2 = [(CPSRouteRowView *)selfCopy title];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(CPSAbridgableLabel *)title2 setTextColor:?];
    MEMORY[0x277D82BD8](labelColor);
    detail2 = [(CPSRouteRowView *)selfCopy detail];
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(CPSAbridgableLabel *)detail2 setTextColor:?];
    MEMORY[0x277D82BD8](labelColor2);
    v3 = MEMORY[0x277D82BD8](detail2).n128_u64[0];
  }

  if ([(CPSRouteRowView *)selfCopy isSelected])
  {
    location = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:22.0];
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:location];
    checkmarkView = [(CPSRouteRowView *)selfCopy checkmarkView];
    [(UIImageView *)checkmarkView setImage:v10];
    MEMORY[0x277D82BD8](checkmarkView);
    checkmarkView2 = [(CPSRouteRowView *)selfCopy checkmarkView];
    v33 = 0;
    v31 = 0;
    if (v36)
    {
      _carSystemFocusLabelColor3 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
      v33 = 1;
      v8 = _carSystemFocusLabelColor3;
    }

    else
    {
      labelColor3 = [MEMORY[0x277D75348] labelColor];
      v31 = 1;
      v8 = labelColor3;
    }

    [(UIImageView *)checkmarkView2 setTintColor:v8];
    if (v31)
    {
      MEMORY[0x277D82BD8](labelColor3);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](_carSystemFocusLabelColor3);
    }

    MEMORY[0x277D82BD8](checkmarkView2);
    objc_storeStrong(&location, 0);
  }

  else
  {
    v30 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:22.0];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"circle" withConfiguration:v30];
    checkmarkView3 = [(CPSRouteRowView *)selfCopy checkmarkView];
    [(UIImageView *)checkmarkView3 setImage:v6];
    MEMORY[0x277D82BD8](checkmarkView3);
    checkmarkView4 = [(CPSRouteRowView *)selfCopy checkmarkView];
    v28 = 0;
    v26 = 0;
    v24 = 0;
    if (v36)
    {
      _carSystemFocusLabelColor4 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
      v28 = 1;
      v4 = _carSystemFocusLabelColor4;
    }

    else
    {
      _carSystemSecondaryColor = [MEMORY[0x277D75348] _carSystemSecondaryColor];
      v26 = 1;
      v25 = [_carSystemSecondaryColor colorWithAlphaComponent:0.3];
      v24 = 1;
      v4 = v25;
    }

    [(UIImageView *)checkmarkView4 setTintColor:v4];
    if (v24)
    {
      MEMORY[0x277D82BD8](v25);
    }

    if (v26)
    {
      MEMORY[0x277D82BD8](_carSystemSecondaryColor);
    }

    if (v28)
    {
      MEMORY[0x277D82BD8](_carSystemFocusLabelColor4);
    }

    MEMORY[0x277D82BD8](checkmarkView4);
    objc_storeStrong(&v30, 0);
  }
}

- (CPSRouteRowInteracting)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end