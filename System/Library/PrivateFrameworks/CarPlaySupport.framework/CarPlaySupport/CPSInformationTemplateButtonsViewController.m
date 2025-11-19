@interface CPSInformationTemplateButtonsViewController
- (CPSButtonDelegate)buttonDelegate;
- (CPSInformationTemplateButtonsViewController)initWithButtons:(id)a3 buttonDelegate:(id)a4;
- (id)preferredFocusEnvironments;
- (void)_updateButtons;
- (void)_updateHeight;
- (void)setButtonIdentifier:(id)a3 enabled:(BOOL)a4;
- (void)setButtons:(id)a3;
- (void)viewDidLoad;
@end

@implementation CPSInformationTemplateButtonsViewController

- (CPSInformationTemplateButtonsViewController)initWithButtons:(id)a3 buttonDelegate:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = v13;
  v13 = 0;
  v10.receiver = v4;
  v10.super_class = CPSInformationTemplateButtonsViewController;
  v13 = [(CPSInformationTemplateButtonsViewController *)&v10 initWithNibName:0 bundle:?];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v5 = [location[0] copy];
    buttons = v13->_buttons;
    v13->_buttons = v5;
    MEMORY[0x277D82BD8](buttons);
    objc_storeWeak(&v13->_buttonDelegate, v11);
    v13->_preferredButtonIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (void)setButtons:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  buttons = v7->_buttons;
  v7->_buttons = v3;
  *&v5 = MEMORY[0x277D82BD8](buttons).n128_u64[0];
  [(CPSInformationTemplateButtonsViewController *)v7 _updateButtons];
  [(CPSInformationTemplateButtonsViewController *)v7 _updateHeight];
  objc_storeStrong(location, 0);
}

- (void)setButtonIdentifier:(id)a3 enabled:(BOOL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v6 = [(CPSInformationTemplateButtonsViewController *)v11 buttonStackView];
  v5 = [(UIStackView *)v6 arrangedSubviews];
  v7 = MEMORY[0x277D82BE0](location[0]);
  v8 = v9;
  [(NSArray *)v5 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
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
  v33 = self;
  v32 = a2;
  v31.receiver = self;
  v31.super_class = CPSInformationTemplateButtonsViewController;
  [(CPSInformationTemplateButtonsViewController *)&v31 viewDidLoad];
  v30 = [(CPSInformationTemplateButtonsViewController *)v33 view];
  v29 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 setAxis:0];
  [v29 setSpacing:12.0];
  [v29 setDistribution:1];
  if (_UISolariumEnabled())
  {
    v27 = [MEMORY[0x277D75348] clearColor];
    [v30 setBackgroundColor:?];
    v28 = [MEMORY[0x277D75348] clearColor];
    [v29 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v28);
  }

  [v30 addSubview:v29];
  [(CPSInformationTemplateButtonsViewController *)v33 setButtonStackView:v29];
  v8 = [(CPSInformationTemplateButtonsViewController *)v33 buttonStackView];
  v7 = [(UIStackView *)v8 heightAnchor];
  v2 = _UISolariumEnabled();
  v3 = 36.0;
  if ((v2 & 1) == 0)
  {
    v3 = 32.0;
  }

  v6 = [v7 constraintEqualToConstant:v3];
  [(CPSInformationTemplateButtonsViewController *)v33 setHeightConstraint:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = MEMORY[0x277CCAAD0];
  v26 = [v30 leftAnchor];
  v25 = [v29 leftAnchor];
  v24 = [v26 constraintLessThanOrEqualToAnchor:?];
  v34[0] = v24;
  v23 = [v30 rightAnchor];
  v22 = [v29 rightAnchor];
  v21 = [v23 constraintGreaterThanOrEqualToAnchor:?];
  v34[1] = v21;
  v20 = [v30 topAnchor];
  v19 = [v29 topAnchor];
  v18 = [v20 constraintEqualToAnchor:?];
  v34[2] = v18;
  v17 = [v29 centerXAnchor];
  v16 = [v30 centerXAnchor];
  v15 = [v17 constraintEqualToAnchor:?];
  v34[3] = v15;
  v14 = [v30 bottomAnchor];
  v13 = [v29 bottomAnchor];
  v12 = [v14 constraintEqualToAnchor:?];
  v34[4] = v12;
  v11 = [(CPSInformationTemplateButtonsViewController *)v33 heightConstraint];
  v34[5] = v11;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
  [v9 activateConstraints:?];
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
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  *&v5 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  [(CPSInformationTemplateButtonsViewController *)v33 _updateButtons];
  [(CPSInformationTemplateButtonsViewController *)v33 _updateHeight];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
}

- (void)_updateHeight
{
  v6 = [(CPSInformationTemplateButtonsViewController *)self buttons];
  if ([(NSArray *)v6 count])
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

  v4 = [(CPSInformationTemplateButtonsViewController *)self heightConstraint];
  [(NSLayoutConstraint *)v4 setConstant:v5];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
}

- (void)_updateButtons
{
  v25 = self;
  v24[1] = a2;
  v11 = [(CPSInformationTemplateButtonsViewController *)self buttonStackView];
  v10 = [(UIStackView *)v11 arrangedSubviews];
  v24[0] = [(NSArray *)v10 copy];
  MEMORY[0x277D82BD8](v10);
  v23 = [MEMORY[0x277D75518] focusSystemForEnvironment:{v25, MEMORY[0x277D82BD8](v11).n128_f64[0]}];
  v12 = objc_opt_class();
  v13 = [v23 focusedItem];
  v22 = CPSSafeCast_18(v12, v13);
  *&v2 = MEMORY[0x277D82BD8](v13).n128_u64[0];
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
  v8 = [(CPSInformationTemplateButtonsViewController *)v25 buttons];
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __61__CPSInformationTemplateButtonsViewController__updateButtons__block_invoke_2;
  v19 = &unk_278D93950;
  v20 = MEMORY[0x277D82BE0](v25);
  [(NSArray *)v8 enumerateObjectsUsingBlock:&v15];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v21;
    v6 = [(CPSInformationTemplateButtonsViewController *)v25 buttons];
    v7 = [(NSArray *)v6 count]- 1;
    *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (v14 >= v7)
    {
      v5 = v7;
    }

    else
    {
      v5 = v14;
    }

    [(CPSInformationTemplateButtonsViewController *)v25 setPreferredButtonIndex:v5, v4];
    [(CPSInformationTemplateButtonsViewController *)v25 setNeedsFocusUpdate];
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
    v7 = [(CPSInformationTemplateButtonsViewController *)self preferredButtonIndex];
    v12 = [(CPSInformationTemplateButtonsViewController *)self buttonStackView];
    v11 = 1;
    v10 = [(UIStackView *)v12 arrangedSubviews];
    v9 = 1;
    v8 = v7 < [(NSArray *)v10 count];
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v8)
  {
    v6 = [(CPSInformationTemplateButtonsViewController *)self buttonStackView];
    v5 = [(UIStackView *)v6 arrangedSubviews];
    v4 = [(NSArray *)v5 objectAtIndexedSubscript:[(CPSInformationTemplateButtonsViewController *)self preferredButtonIndex]];
    v15[0] = v4;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v3 = [(CPSInformationTemplateButtonsViewController *)self buttonStackView];
    v14 = [(UIStackView *)v3 arrangedSubviews];
    MEMORY[0x277D82BD8](v3);
  }

  return v14;
}

- (CPSButtonDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

@end