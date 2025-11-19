@interface NDOWarrantyBenefitsViewController
- (NDOWarranty)warranty;
- (NDOWarrantyBenefitsViewController)initWithWarranty:(id)a3;
- (void)donePressed:(id)a3;
- (void)loadView;
@end

@implementation NDOWarrantyBenefitsViewController

- (NDOWarrantyBenefitsViewController)initWithWarranty:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedBenefitsCardTitle];
  v8.receiver = self;
  v8.super_class = NDOWarrantyBenefitsViewController;
  v6 = [(OBTextWelcomeController *)&v8 initWithTitle:v5];

  if (v6)
  {
    objc_storeWeak(&v6->_warranty, v4);
  }

  return v6;
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = NDOWarrantyBenefitsViewController;
  [(OBTextWelcomeController *)&v16 loadView];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_donePressed_];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [(NDOWarrantyBenefitsViewController *)self warranty];
  v6 = [v5 localizedBenefitsCardSubTitle];

  if (v6)
  {
    v7 = [(NDOWarrantyBenefitsViewController *)self warranty];
    v8 = [v7 localizedBenefitsCardSubTitle];
    [(OBTextWelcomeController *)self addSectionWithHeader:0 content:v8];
  }

  v9 = [(NDOWarrantyBenefitsViewController *)self warranty];
  v10 = [v9 benefitDetailsArray];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__NDOWarrantyBenefitsViewController_loadView__block_invoke;
  v15[3] = &unk_2799788E0;
  v15[4] = self;
  [v10 enumerateObjectsUsingBlock:v15];

  v11 = [(NDOWarrantyBenefitsViewController *)self warranty];
  v12 = [v11 localizedBenefitsCardFooter];

  if (v12)
  {
    v13 = [(NDOWarrantyBenefitsViewController *)self warranty];
    v14 = [v13 localizedBenefitsCardFooter];
    [(OBTextWelcomeController *)self addSectionWithHeader:0 content:v14];
  }
}

void __45__NDOWarrantyBenefitsViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 objectForKeyedSubscript:@"localizedBenefitLabel"];
  v4 = [v3 objectForKeyedSubscript:@"localizedBenefitValue"];

  [v2 addSectionWithHeader:v5 content:v4];
}

- (void)donePressed:(id)a3
{
  v3 = [(NDOWarrantyBenefitsViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (NDOWarranty)warranty
{
  WeakRetained = objc_loadWeakRetained(&self->_warranty);

  return WeakRetained;
}

@end