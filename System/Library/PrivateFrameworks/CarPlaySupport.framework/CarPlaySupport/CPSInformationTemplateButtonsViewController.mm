@interface CPSInformationTemplateButtonsViewController
- (CPSButtonDelegate)buttonDelegate;
- (CPSInformationTemplateButtonsViewController)initWithButtons:(id)buttons buttonDelegate:(id)delegate;
- (id)preferredFocusEnvironments;
- (void)_updateButtons;
- (void)_updateHeight;
- (void)setButtonIdentifier:(id)identifier enabled:(BOOL)enabled;
- (void)setButtons:(id)buttons;
- (void)viewDidLoad;
@end

@implementation CPSInformationTemplateButtonsViewController

- (CPSInformationTemplateButtonsViewController)initWithButtons:(id)buttons buttonDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v11 = 0;
  objc_storeStrong(&v11, delegate);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = CPSInformationTemplateButtonsViewController;
  selfCopy = [(CPSInformationTemplateButtonsViewController *)&v10 initWithNibName:0 bundle:?];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = [location[0] copy];
    buttons = selfCopy->_buttons;
    selfCopy->_buttons = v5;
    MEMORY[0x277D82BD8](buttons);
    objc_storeWeak(&selfCopy->_buttonDelegate, v11);
    selfCopy->_preferredButtonIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)setButtons:(id)buttons
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buttons);
  v3 = [location[0] copy];
  buttons = selfCopy->_buttons;
  selfCopy->_buttons = v3;
  *&v5 = MEMORY[0x277D82BD8](buttons).n128_u64[0];
  [(CPSInformationTemplateButtonsViewController *)selfCopy _updateButtons];
  [(CPSInformationTemplateButtonsViewController *)selfCopy _updateHeight];
  objc_storeStrong(location, 0);
}

- (void)setButtonIdentifier:(id)identifier enabled:(BOOL)enabled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  enabledCopy = enabled;
  buttonStackView = [(CPSInformationTemplateButtonsViewController *)selfCopy buttonStackView];
  arrangedSubviews = [(UIStackView *)buttonStackView arrangedSubviews];
  v7 = MEMORY[0x277D82BE0](location[0]);
  v8 = enabledCopy;
  [(NSArray *)arrangedSubviews enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](arrangedSubviews);
  MEMORY[0x277D82BD8](buttonStackView);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void __75__CPSInformationTemplateButtonsViewController_setButtonIdentifier_enabled___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = a3;
  v12 = a4;
  v11[1] = a1;
  v4 = objc_opt_class();
  v11[0] = CPSSafeCast_18(v4, location[0]);
  v9 = [v11[0] identifier];
  v10 = [v9 isEqual:*(a1 + 32)];
  *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    [v11[0] setEnabled:{*(a1 + 40) & 1, v5}];
    *v12 = 1;
  }

  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v34[6] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v32 = a2;
  v31.receiver = self;
  v31.super_class = CPSInformationTemplateButtonsViewController;
  [(CPSInformationTemplateButtonsViewController *)&v31 viewDidLoad];
  view = [(CPSInformationTemplateButtonsViewController *)selfCopy view];
  v29 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 setAxis:0];
  [v29 setSpacing:12.0];
  [v29 setDistribution:1];
  if (_UISolariumEnabled())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [view setBackgroundColor:?];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v29 setBackgroundColor:?];
    MEMORY[0x277D82BD8](clearColor2);
  }

  [view addSubview:v29];
  [(CPSInformationTemplateButtonsViewController *)selfCopy setButtonStackView:v29];
  buttonStackView = [(CPSInformationTemplateButtonsViewController *)selfCopy buttonStackView];
  heightAnchor = [(UIStackView *)buttonStackView heightAnchor];
  v2 = _UISolariumEnabled();
  v3 = 36.0;
  if ((v2 & 1) == 0)
  {
    v3 = 32.0;
  }

  v6 = [heightAnchor constraintEqualToConstant:v3];
  [(CPSInformationTemplateButtonsViewController *)selfCopy setHeightConstraint:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](heightAnchor);
  *&v4 = MEMORY[0x277D82BD8](buttonStackView).n128_u64[0];
  v9 = MEMORY[0x277CCAAD0];
  leftAnchor = [view leftAnchor];
  leftAnchor2 = [v29 leftAnchor];
  v24 = [leftAnchor constraintLessThanOrEqualToAnchor:?];
  v34[0] = v24;
  rightAnchor = [view rightAnchor];
  rightAnchor2 = [v29 rightAnchor];
  v21 = [rightAnchor constraintGreaterThanOrEqualToAnchor:?];
  v34[1] = v21;
  topAnchor = [view topAnchor];
  topAnchor2 = [v29 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:?];
  v34[2] = v18;
  centerXAnchor = [v29 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:?];
  v34[3] = v15;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [v29 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:?];
  v34[4] = v12;
  heightConstraint = [(CPSInformationTemplateButtonsViewController *)selfCopy heightConstraint];
  v34[5] = heightConstraint;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
  [v9 activateConstraints:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](heightConstraint);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](leftAnchor2);
  *&v5 = MEMORY[0x277D82BD8](leftAnchor).n128_u64[0];
  [(CPSInformationTemplateButtonsViewController *)selfCopy _updateButtons];
  [(CPSInformationTemplateButtonsViewController *)selfCopy _updateHeight];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&view, 0);
}

- (void)_updateHeight
{
  buttons = [(CPSInformationTemplateButtonsViewController *)self buttons];
  if ([(NSArray *)buttons count])
  {
    v2 = _UISolariumEnabled();
    v3 = 36.0;
    if ((v2 & 1) == 0)
    {
      v3 = 32.0;
    }

    v5 = v3;
  }

  else
  {
    v5 = 0.0;
  }

  heightConstraint = [(CPSInformationTemplateButtonsViewController *)self heightConstraint];
  [(NSLayoutConstraint *)heightConstraint setConstant:v5];
  MEMORY[0x277D82BD8](heightConstraint);
  MEMORY[0x277D82BD8](buttons);
}

- (void)_updateButtons
{
  selfCopy = self;
  v24[1] = a2;
  buttonStackView = [(CPSInformationTemplateButtonsViewController *)self buttonStackView];
  arrangedSubviews = [(UIStackView *)buttonStackView arrangedSubviews];
  v24[0] = [(NSArray *)arrangedSubviews copy];
  MEMORY[0x277D82BD8](arrangedSubviews);
  v23 = [MEMORY[0x277D75518] focusSystemForEnvironment:{selfCopy, MEMORY[0x277D82BD8](buttonStackView).n128_f64[0]}];
  v12 = objc_opt_class();
  focusedItem = [v23 focusedItem];
  v22 = CPSSafeCast_18(v12, focusedItem);
  *&v2 = MEMORY[0x277D82BD8](focusedItem).n128_u64[0];
  if (v22)
  {
    v9 = [v24[0] indexOfObject:{v22, v2}];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v9;
  [v24[0] enumerateObjectsUsingBlock:&__block_literal_global_12];
  buttons = [(CPSInformationTemplateButtonsViewController *)selfCopy buttons];
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __61__CPSInformationTemplateButtonsViewController__updateButtons__block_invoke_2;
  v19 = &unk_278D93950;
  v20 = MEMORY[0x277D82BE0](selfCopy);
  [(NSArray *)buttons enumerateObjectsUsingBlock:&v15];
  *&v3 = MEMORY[0x277D82BD8](buttons).n128_u64[0];
  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v21;
    buttons2 = [(CPSInformationTemplateButtonsViewController *)selfCopy buttons];
    v7 = [(NSArray *)buttons2 count]- 1;
    *&v4 = MEMORY[0x277D82BD8](buttons2).n128_u64[0];
    if (v14 >= v7)
    {
      v5 = v7;
    }

    else
    {
      v5 = v14;
    }

    [(CPSInformationTemplateButtonsViewController *)selfCopy setPreferredButtonIndex:v5, v4];
    [(CPSInformationTemplateButtonsViewController *)selfCopy setNeedsFocusUpdate];
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v24, 0);
}

void __61__CPSInformationTemplateButtonsViewController__updateButtons__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] removeFromSuperview];
  objc_storeStrong(location, 0);
}

void __61__CPSInformationTemplateButtonsViewController__updateButtons__block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[3] = a3;
  v14[2] = a4;
  v14[1] = a1;
  v14[0] = [CPSStyledTextButton buttonWithTextButton:location[0]];
  v7 = [a1[4] buttonDelegate];
  [v14[0] setDelegate:?];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [v14[0] setWantsGlass:{1, v4}];
  v8 = MEMORY[0x277CCAAD0];
  v11 = [v14[0] widthAnchor];
  v10 = [v11 constraintEqualToConstant:182.0];
  v16[0] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v8 activateConstraints:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v13 = [a1[4] buttonStackView];
  [v13 addArrangedSubview:v14[0]];
  MEMORY[0x277D82BD8](v13);
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  v15[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v9 = 0;
  v8 = 0;
  if ([(CPSInformationTemplateButtonsViewController *)self preferredButtonIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    preferredButtonIndex = [(CPSInformationTemplateButtonsViewController *)self preferredButtonIndex];
    buttonStackView = [(CPSInformationTemplateButtonsViewController *)self buttonStackView];
    v11 = 1;
    arrangedSubviews = [(UIStackView *)buttonStackView arrangedSubviews];
    v9 = 1;
    v8 = preferredButtonIndex < [(NSArray *)arrangedSubviews count];
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](arrangedSubviews);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](buttonStackView);
  }

  if (v8)
  {
    buttonStackView2 = [(CPSInformationTemplateButtonsViewController *)self buttonStackView];
    arrangedSubviews2 = [(UIStackView *)buttonStackView2 arrangedSubviews];
    v4 = [(NSArray *)arrangedSubviews2 objectAtIndexedSubscript:[(CPSInformationTemplateButtonsViewController *)self preferredButtonIndex]];
    v15[0] = v4;
    arrangedSubviews3 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](arrangedSubviews2);
    MEMORY[0x277D82BD8](buttonStackView2);
  }

  else
  {
    buttonStackView3 = [(CPSInformationTemplateButtonsViewController *)self buttonStackView];
    arrangedSubviews3 = [(UIStackView *)buttonStackView3 arrangedSubviews];
    MEMORY[0x277D82BD8](buttonStackView3);
  }

  return arrangedSubviews3;
}

- (CPSButtonDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

@end