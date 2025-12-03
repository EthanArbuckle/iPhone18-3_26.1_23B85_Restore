@interface CPSNameViewController
- (CPSNameViewController)initWithEntity:(id)entity;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
- (void)updateViews;
- (void)updateWithEntity:(id)entity;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CPSNameViewController

- (CPSNameViewController)initWithEntity:(id)entity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = CPSNameViewController;
  v9 = [(CPSNameViewController *)&v10 initWithNibName:0 bundle:?];
  selfCopy = v9;
  objc_storeStrong(&selfCopy, v9);
  if (v9)
  {
    objc_storeStrong(&selfCopy->_entity, location[0]);
    v4 = objc_alloc_init(CPSNameStackView);
    stackView = selfCopy->_stackView;
    selfCopy->_stackView = v4;
    MEMORY[0x277D82BD8](stackView);
    [(CPSNameStackView *)selfCopy->_stackView setContentCompressionResistancePriority:0 forAxis:?];
    LODWORD(v6) = 1144750080;
    [(CPSNameStackView *)selfCopy->_stackView setContentCompressionResistancePriority:1 forAxis:v6];
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)updateWithEntity:(id)entity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  [(CPSNameViewController *)selfCopy setEntity:location[0]];
  [(CPSNameViewController *)selfCopy updateViews];
  [(CPSNameViewController *)selfCopy resetLayoutConstraints];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSNameViewController;
  [(CPSNameViewController *)&v2 viewDidLoad];
  [(CPSNameViewController *)selfCopy setupViews];
  [(CPSNameViewController *)selfCopy updateViews];
}

- (void)setupViews
{
  v60[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v51[1] = a2;
  stackView = [(CPSNameViewController *)self stackView];
  [(CPSNameStackView *)stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView2 = [(CPSNameViewController *)selfCopy stackView];
  [(CPSNameStackView *)stackView2 setAlignment:?];
  stackView3 = [(CPSNameViewController *)selfCopy stackView];
  [(CPSNameStackView *)stackView3 setDistribution:3];
  stackView4 = [(CPSNameViewController *)selfCopy stackView];
  [(CPSNameStackView *)stackView4 setAxis:1];
  stackView5 = [(CPSNameViewController *)selfCopy stackView];
  [(CPSNameStackView *)stackView5 setBaselineRelativeArrangement:1];
  stackView6 = [(CPSNameViewController *)selfCopy stackView];
  [(CPSNameStackView *)stackView6 setSpacing:20.0];
  stackView7 = [(CPSNameViewController *)selfCopy stackView];
  v2 = insertNewLabelToStackView(stackView7);
  primaryLabel = selfCopy->_primaryLabel;
  selfCopy->_primaryLabel = v2;
  MEMORY[0x277D82BD8](primaryLabel);
  stackView8 = [(CPSNameViewController *)selfCopy stackView];
  v4 = insertNewLabelToStackView(stackView8);
  secondaryLabel = selfCopy->_secondaryLabel;
  selfCopy->_secondaryLabel = v4;
  MEMORY[0x277D82BD8](secondaryLabel);
  stackView9 = [(CPSNameViewController *)selfCopy stackView];
  v6 = insertNewLabelToStackView(stackView9);
  tertiaryLabel = selfCopy->_tertiaryLabel;
  selfCopy->_tertiaryLabel = v6;
  MEMORY[0x277D82BD8](tertiaryLabel);
  MEMORY[0x277D82BD8](stackView9);
  v51[0] = MEMORY[0x277D82BE0](*MEMORY[0x277D76A20]);
  v50 = MEMORY[0x277D82BE0](*MEMORY[0x277D76938]);
  v26 = MEMORY[0x277D74300];
  v25 = v51[0];
  traitCollection = [(CPSNameViewController *)selfCopy traitCollection];
  v27 = [v26 preferredFontForTextStyle:v25 compatibleWithTraitCollection:?];
  fontDescriptor = [v27 fontDescriptor];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](traitCollection);
  v37 = MEMORY[0x277D74430];
  v59 = *MEMORY[0x277D74430];
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v60[0] = v29;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
  *&v8 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  v30 = fontDescriptor;
  v39 = MEMORY[0x277D74380];
  v57 = *MEMORY[0x277D74380];
  v58 = v48;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:{1, v8}];
  v9 = [v30 fontDescriptorByAddingAttributes:?];
  v10 = fontDescriptor;
  fontDescriptor = v9;
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v31);
  v32 = [MEMORY[0x277D74300] fontWithDescriptor:fontDescriptor size:?];
  [(UILabel *)selfCopy->_primaryLabel setFont:?];
  *&v11 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  v34 = MEMORY[0x277D74300];
  v33 = v50;
  traitCollection2 = [(CPSNameViewController *)selfCopy traitCollection];
  v35 = [v34 preferredFontForTextStyle:v33 compatibleWithTraitCollection:?];
  fontDescriptor2 = [v35 fontDescriptor];
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](traitCollection2);
  v55 = *v37;
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74418]];
  v56 = v38;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  *&v12 = MEMORY[0x277D82BD8](v38).n128_u64[0];
  v40 = fontDescriptor2;
  v53 = *v39;
  v54 = v46;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:{1, v12}];
  v13 = [v40 fontDescriptorByAddingAttributes:?];
  v14 = fontDescriptor2;
  fontDescriptor2 = v13;
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v41);
  v42 = [MEMORY[0x277D74300] fontWithDescriptor:fontDescriptor2 size:0.0];
  [(UILabel *)selfCopy->_secondaryLabel setFont:?];
  MEMORY[0x277D82BD8](v42);
  v43 = [MEMORY[0x277D74300] fontWithDescriptor:fontDescriptor2 size:0.0];
  [(UILabel *)selfCopy->_tertiaryLabel setFont:?];
  *&v15 = MEMORY[0x277D82BD8](v43).n128_u64[0];
  [(UILabel *)selfCopy->_primaryLabel setAccessibilityIdentifier:@"CPNamePrimaryLabel", v15];
  [(UILabel *)selfCopy->_secondaryLabel setAccessibilityIdentifier:@"CPNameSecondaryLabel"];
  [(UILabel *)selfCopy->_tertiaryLabel setAccessibilityIdentifier:@"CPNameTertiaryLabel"];
  view = [(CPSNameViewController *)selfCopy view];
  stackView10 = [(CPSNameViewController *)selfCopy stackView];
  [view addSubview:?];
  MEMORY[0x277D82BD8](stackView10);
  MEMORY[0x277D82BD8](view);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&fontDescriptor2, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&fontDescriptor, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(v51, 0);
}

- (void)updateViews
{
  selfCopy = self;
  v19[1] = a2;
  entity = [(CPSNameViewController *)self entity];
  v19[0] = [(CPEntityNameProviding *)entity name];
  entity2 = [(CPSNameViewController *)selfCopy entity];
  subtitle = [(CPEntityNameProviding *)entity2 subtitle];
  entity3 = [(CPSNameViewController *)selfCopy entity];
  location = [(CPEntityNameProviding *)entity3 informativeText];
  primaryLabel = [(CPSNameViewController *)selfCopy primaryLabel];
  v2 = MEMORY[0x277D82BD8](primaryLabel).n128_u64[0];
  if (primaryLabel)
  {
    primaryLabel2 = [(CPSNameViewController *)selfCopy primaryLabel];
    [(UILabel *)primaryLabel2 setText:v19[0]];
    primaryLabel3 = [(CPSNameViewController *)selfCopy primaryLabel];
    [(UILabel *)primaryLabel3 sizeToFit];
    v2 = MEMORY[0x277D82BD8](primaryLabel3).n128_u64[0];
  }

  secondaryLabel = [(CPSNameViewController *)selfCopy secondaryLabel];
  v3 = MEMORY[0x277D82BD8](secondaryLabel).n128_u64[0];
  if (secondaryLabel)
  {
    secondaryLabel2 = [(CPSNameViewController *)selfCopy secondaryLabel];
    [(UILabel *)secondaryLabel2 setText:subtitle];
    secondaryLabel3 = [(CPSNameViewController *)selfCopy secondaryLabel];
    [(UILabel *)secondaryLabel3 sizeToFit];
    v3 = MEMORY[0x277D82BD8](secondaryLabel3).n128_u64[0];
  }

  tertiaryLabel = [(CPSNameViewController *)selfCopy tertiaryLabel];
  *&v4 = MEMORY[0x277D82BD8](tertiaryLabel).n128_u64[0];
  if (tertiaryLabel)
  {
    tertiaryLabel2 = [(CPSNameViewController *)selfCopy tertiaryLabel];
    [(UILabel *)tertiaryLabel2 setText:location];
    tertiaryLabel3 = [(CPSNameViewController *)selfCopy tertiaryLabel];
    [(UILabel *)tertiaryLabel3 sizeToFit];
    MEMORY[0x277D82BD8](tertiaryLabel3);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&subtitle, 0);
  objc_storeStrong(v19, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSNameViewController;
  [(CPSNameViewController *)&v3 traitCollectionDidChange:location[0]];
  [(CPSNameViewController *)selfCopy resetLayoutConstraints];
  objc_storeStrong(location, 0);
}

- (void)resetLayoutConstraints
{
  layoutConstraints = [(CPSNameViewController *)self layoutConstraints];
  v7 = [(NSArray *)layoutConstraints count];
  *&v2 = MEMORY[0x277D82BD8](layoutConstraints).n128_u64[0];
  if (v7)
  {
    v3 = MEMORY[0x277CCAAD0];
    layoutConstraints2 = [(CPSNameViewController *)self layoutConstraints];
    [v3 deactivateConstraints:?];
    [(CPSNameViewController *)self setLayoutConstraints:0, MEMORY[0x277D82BD8](layoutConstraints2).n128_f64[0]];
    view = [(CPSNameViewController *)self view];
    [view setNeedsUpdateConstraints];
    MEMORY[0x277D82BD8](view);
  }
}

- (void)updateViewConstraints
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSNameViewController;
  [(CPSNameViewController *)&v5 updateViewConstraints];
  layoutConstraints = [(CPSNameViewController *)selfCopy layoutConstraints];
  v4 = [(NSArray *)layoutConstraints count];
  *&v2 = MEMORY[0x277D82BD8](layoutConstraints).n128_u64[0];
  if (!v4)
  {
    [(CPSNameViewController *)selfCopy setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v30[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v28[1] = a2;
  v28[0] = objc_opt_new();
  view = [(CPSNameViewController *)selfCopy view];
  leadingAnchor = [view leadingAnchor];
  stackView = [(CPSNameViewController *)selfCopy stackView];
  leadingAnchor2 = [(CPSNameStackView *)stackView leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:?];
  v30[0] = v19;
  view2 = [(CPSNameViewController *)selfCopy view];
  topAnchor = [view2 topAnchor];
  stackView2 = [(CPSNameViewController *)selfCopy stackView];
  topAnchor2 = [(CPSNameStackView *)stackView2 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:?];
  v30[1] = v14;
  view3 = [(CPSNameViewController *)selfCopy view];
  trailingAnchor = [view3 trailingAnchor];
  stackView3 = [(CPSNameViewController *)selfCopy stackView];
  trailingAnchor2 = [(CPSNameStackView *)stackView3 trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:?];
  v30[2] = v9;
  view4 = [(CPSNameViewController *)selfCopy view];
  bottomAnchor = [view4 bottomAnchor];
  stackView4 = [(CPSNameViewController *)selfCopy stackView];
  bottomAnchor2 = [(CPSNameStackView *)stackView4 bottomAnchor];
  v4 = [bottomAnchor constraintEqualToAnchor:?];
  v30[3] = v4;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](stackView4);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](stackView3);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](stackView2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](stackView);
  MEMORY[0x277D82BD8](leadingAnchor);
  *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
  [v28[0] addObjectsFromArray:{v27, v2}];
  v24 = [v28[0] copy];
  [(CPSNameViewController *)selfCopy setLayoutConstraints:?];
  *&v3 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  v25 = MEMORY[0x277CCAAD0];
  layoutConstraints = [(CPSNameViewController *)selfCopy layoutConstraints];
  [v25 activateConstraints:?];
  MEMORY[0x277D82BD8](layoutConstraints);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v28, 0);
}

- (void)viewWillLayoutSubviews
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v23 = a2;
  v22.receiver = self;
  v22.super_class = CPSNameViewController;
  [(CPSNameViewController *)&v22 viewWillLayoutSubviews];
  Width = 0.0;
  memset(__b, 0, sizeof(__b));
  stackView = [(CPSNameViewController *)selfCopy stackView];
  obj = [(CPSNameStackView *)stackView arrangedSubviews];
  v18 = [obj countByEnumeratingWithState:__b objects:v25 count:{16, MEMORY[0x277D82BD8](stackView).n128_f64[0]}];
  if (v18)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v18;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v14);
      v11 = Width;
      [v20 bounds];
      if (v11 < CGRectGetWidth(v27))
      {
        [v20 bounds];
        Width = CGRectGetWidth(v28);
      }

      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v9 = Width;
  stackView2 = [(CPSNameViewController *)selfCopy stackView];
  [(CPSNameStackView *)stackView2 fittingWidth];
  v3 = (v9 - v2);
  if (v3 <= 0)
  {
    v3 = -v3;
  }

  v10 = v3;
  MEMORY[0x277D82BD8](stackView2);
  if (v10 > 20.0)
  {
    v5 = Width + 20.0;
    stackView3 = [(CPSNameViewController *)selfCopy stackView];
    [(CPSNameStackView *)stackView3 setFittingWidth:v5];
    *&v4 = MEMORY[0x277D82BD8](stackView3).n128_u64[0];
    stackView4 = [(CPSNameViewController *)selfCopy stackView];
    [(CPSNameStackView *)stackView4 invalidateIntrinsicContentSize];
    MEMORY[0x277D82BD8](stackView4);
  }
}

@end