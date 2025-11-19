@interface CPSNameViewController
- (CPSNameViewController)initWithEntity:(id)a3;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateViewConstraints;
- (void)updateViews;
- (void)updateWithEntity:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CPSNameViewController

- (CPSNameViewController)initWithEntity:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10.receiver = v3;
  v10.super_class = CPSNameViewController;
  v9 = [(CPSNameViewController *)&v10 initWithNibName:0 bundle:?];
  v12 = v9;
  objc_storeStrong(&v12, v9);
  if (v9)
  {
    objc_storeStrong(&v12->_entity, location[0]);
    v4 = objc_alloc_init(CPSNameStackView);
    stackView = v12->_stackView;
    v12->_stackView = v4;
    MEMORY[0x277D82BD8](stackView);
    [(CPSNameStackView *)v12->_stackView setContentCompressionResistancePriority:0 forAxis:?];
    LODWORD(v6) = 1144750080;
    [(CPSNameStackView *)v12->_stackView setContentCompressionResistancePriority:1 forAxis:v6];
  }

  v8 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (void)updateWithEntity:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSNameViewController *)v4 setEntity:location[0]];
  [(CPSNameViewController *)v4 updateViews];
  [(CPSNameViewController *)v4 resetLayoutConstraints];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSNameViewController;
  [(CPSNameViewController *)&v2 viewDidLoad];
  [(CPSNameViewController *)v4 setupViews];
  [(CPSNameViewController *)v4 updateViews];
}

- (void)setupViews
{
  v60[1] = *MEMORY[0x277D85DE8];
  v52 = self;
  v51[1] = a2;
  v16 = [(CPSNameViewController *)self stackView];
  [(CPSNameStackView *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(CPSNameViewController *)v52 stackView];
  [(CPSNameStackView *)v17 setAlignment:?];
  v18 = [(CPSNameViewController *)v52 stackView];
  [(CPSNameStackView *)v18 setDistribution:3];
  v19 = [(CPSNameViewController *)v52 stackView];
  [(CPSNameStackView *)v19 setAxis:1];
  v20 = [(CPSNameViewController *)v52 stackView];
  [(CPSNameStackView *)v20 setBaselineRelativeArrangement:1];
  v21 = [(CPSNameViewController *)v52 stackView];
  [(CPSNameStackView *)v21 setSpacing:20.0];
  v22 = [(CPSNameViewController *)v52 stackView];
  v2 = insertNewLabelToStackView(v22);
  primaryLabel = v52->_primaryLabel;
  v52->_primaryLabel = v2;
  MEMORY[0x277D82BD8](primaryLabel);
  v23 = [(CPSNameViewController *)v52 stackView];
  v4 = insertNewLabelToStackView(v23);
  secondaryLabel = v52->_secondaryLabel;
  v52->_secondaryLabel = v4;
  MEMORY[0x277D82BD8](secondaryLabel);
  v24 = [(CPSNameViewController *)v52 stackView];
  v6 = insertNewLabelToStackView(v24);
  tertiaryLabel = v52->_tertiaryLabel;
  v52->_tertiaryLabel = v6;
  MEMORY[0x277D82BD8](tertiaryLabel);
  MEMORY[0x277D82BD8](v24);
  v51[0] = MEMORY[0x277D82BE0](*MEMORY[0x277D76A20]);
  v50 = MEMORY[0x277D82BE0](*MEMORY[0x277D76938]);
  v26 = MEMORY[0x277D74300];
  v25 = v51[0];
  v28 = [(CPSNameViewController *)v52 traitCollection];
  v27 = [v26 preferredFontForTextStyle:v25 compatibleWithTraitCollection:?];
  v49 = [v27 fontDescriptor];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  v37 = MEMORY[0x277D74430];
  v59 = *MEMORY[0x277D74430];
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v60[0] = v29;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
  *&v8 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  v30 = v49;
  v39 = MEMORY[0x277D74380];
  v57 = *MEMORY[0x277D74380];
  v58 = v48;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:{1, v8}];
  v9 = [v30 fontDescriptorByAddingAttributes:?];
  v10 = v49;
  v49 = v9;
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v31);
  v32 = [MEMORY[0x277D74300] fontWithDescriptor:v49 size:?];
  [(UILabel *)v52->_primaryLabel setFont:?];
  *&v11 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  v34 = MEMORY[0x277D74300];
  v33 = v50;
  v36 = [(CPSNameViewController *)v52 traitCollection];
  v35 = [v34 preferredFontForTextStyle:v33 compatibleWithTraitCollection:?];
  v47 = [v35 fontDescriptor];
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  v55 = *v37;
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74418]];
  v56 = v38;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  *&v12 = MEMORY[0x277D82BD8](v38).n128_u64[0];
  v40 = v47;
  v53 = *v39;
  v54 = v46;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:{1, v12}];
  v13 = [v40 fontDescriptorByAddingAttributes:?];
  v14 = v47;
  v47 = v13;
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v41);
  v42 = [MEMORY[0x277D74300] fontWithDescriptor:v47 size:0.0];
  [(UILabel *)v52->_secondaryLabel setFont:?];
  MEMORY[0x277D82BD8](v42);
  v43 = [MEMORY[0x277D74300] fontWithDescriptor:v47 size:0.0];
  [(UILabel *)v52->_tertiaryLabel setFont:?];
  *&v15 = MEMORY[0x277D82BD8](v43).n128_u64[0];
  [(UILabel *)v52->_primaryLabel setAccessibilityIdentifier:@"CPNamePrimaryLabel", v15];
  [(UILabel *)v52->_secondaryLabel setAccessibilityIdentifier:@"CPNameSecondaryLabel"];
  [(UILabel *)v52->_tertiaryLabel setAccessibilityIdentifier:@"CPNameTertiaryLabel"];
  v45 = [(CPSNameViewController *)v52 view];
  v44 = [(CPSNameViewController *)v52 stackView];
  [v45 addSubview:?];
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(v51, 0);
}

- (void)updateViews
{
  v20 = self;
  v19[1] = a2;
  v13 = [(CPSNameViewController *)self entity];
  v19[0] = [(CPEntityNameProviding *)v13 name];
  v14 = [(CPSNameViewController *)v20 entity];
  v18 = [(CPEntityNameProviding *)v14 subtitle];
  v15 = [(CPSNameViewController *)v20 entity];
  location = [(CPEntityNameProviding *)v15 informativeText];
  v16 = [(CPSNameViewController *)v20 primaryLabel];
  v2 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if (v16)
  {
    v11 = [(CPSNameViewController *)v20 primaryLabel];
    [(UILabel *)v11 setText:v19[0]];
    v12 = [(CPSNameViewController *)v20 primaryLabel];
    [(UILabel *)v12 sizeToFit];
    v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  }

  v10 = [(CPSNameViewController *)v20 secondaryLabel];
  v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v10)
  {
    v8 = [(CPSNameViewController *)v20 secondaryLabel];
    [(UILabel *)v8 setText:v18];
    v9 = [(CPSNameViewController *)v20 secondaryLabel];
    [(UILabel *)v9 sizeToFit];
    v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  v7 = [(CPSNameViewController *)v20 tertiaryLabel];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v7)
  {
    v5 = [(CPSNameViewController *)v20 tertiaryLabel];
    [(UILabel *)v5 setText:location];
    v6 = [(CPSNameViewController *)v20 tertiaryLabel];
    [(UILabel *)v6 sizeToFit];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSNameViewController;
  [(CPSNameViewController *)&v3 traitCollectionDidChange:location[0]];
  [(CPSNameViewController *)v5 resetLayoutConstraints];
  objc_storeStrong(location, 0);
}

- (void)resetLayoutConstraints
{
  v6 = [(CPSNameViewController *)self layoutConstraints];
  v7 = [(NSArray *)v6 count];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v3 = MEMORY[0x277CCAAD0];
    v4 = [(CPSNameViewController *)self layoutConstraints];
    [v3 deactivateConstraints:?];
    [(CPSNameViewController *)self setLayoutConstraints:0, MEMORY[0x277D82BD8](v4).n128_f64[0]];
    v5 = [(CPSNameViewController *)self view];
    [v5 setNeedsUpdateConstraints];
    MEMORY[0x277D82BD8](v5);
  }
}

- (void)updateViewConstraints
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSNameViewController;
  [(CPSNameViewController *)&v5 updateViewConstraints];
  v3 = [(CPSNameViewController *)v7 layoutConstraints];
  v4 = [(NSArray *)v3 count];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (!v4)
  {
    [(CPSNameViewController *)v7 setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29 = self;
  v28[1] = a2;
  v28[0] = objc_opt_new();
  v23 = [(CPSNameViewController *)v29 view];
  v22 = [v23 leadingAnchor];
  v21 = [(CPSNameViewController *)v29 stackView];
  v20 = [(CPSNameStackView *)v21 leadingAnchor];
  v19 = [v22 constraintEqualToAnchor:?];
  v30[0] = v19;
  v18 = [(CPSNameViewController *)v29 view];
  v17 = [v18 topAnchor];
  v16 = [(CPSNameViewController *)v29 stackView];
  v15 = [(CPSNameStackView *)v16 topAnchor];
  v14 = [v17 constraintEqualToAnchor:?];
  v30[1] = v14;
  v13 = [(CPSNameViewController *)v29 view];
  v12 = [v13 trailingAnchor];
  v11 = [(CPSNameViewController *)v29 stackView];
  v10 = [(CPSNameStackView *)v11 trailingAnchor];
  v9 = [v12 constraintEqualToAnchor:?];
  v30[2] = v9;
  v8 = [(CPSNameViewController *)v29 view];
  v7 = [v8 bottomAnchor];
  v6 = [(CPSNameViewController *)v29 stackView];
  v5 = [(CPSNameStackView *)v6 bottomAnchor];
  v4 = [v7 constraintEqualToAnchor:?];
  v30[3] = v4;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  *&v2 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  [v28[0] addObjectsFromArray:{v27, v2}];
  v24 = [v28[0] copy];
  [(CPSNameViewController *)v29 setLayoutConstraints:?];
  *&v3 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  v25 = MEMORY[0x277CCAAD0];
  v26 = [(CPSNameViewController *)v29 layoutConstraints];
  [v25 activateConstraints:?];
  MEMORY[0x277D82BD8](v26);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v28, 0);
}

- (void)viewWillLayoutSubviews
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = self;
  v23 = a2;
  v22.receiver = self;
  v22.super_class = CPSNameViewController;
  [(CPSNameViewController *)&v22 viewWillLayoutSubviews];
  Width = 0.0;
  memset(__b, 0, sizeof(__b));
  v16 = [(CPSNameViewController *)v24 stackView];
  obj = [(CPSNameStackView *)v16 arrangedSubviews];
  v18 = [obj countByEnumeratingWithState:__b objects:v25 count:{16, MEMORY[0x277D82BD8](v16).n128_f64[0]}];
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
  v8 = [(CPSNameViewController *)v24 stackView];
  [(CPSNameStackView *)v8 fittingWidth];
  v3 = (v9 - v2);
  if (v3 <= 0)
  {
    v3 = -v3;
  }

  v10 = v3;
  MEMORY[0x277D82BD8](v8);
  if (v10 > 20.0)
  {
    v5 = Width + 20.0;
    v6 = [(CPSNameViewController *)v24 stackView];
    [(CPSNameStackView *)v6 setFittingWidth:v5];
    *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    v7 = [(CPSNameViewController *)v24 stackView];
    [(CPSNameStackView *)v7 invalidateIntrinsicContentSize];
    MEMORY[0x277D82BD8](v7);
  }
}

@end