@interface NDOWarrantyBenefitsViewController
- (NDOWarranty)warranty;
- (NDOWarrantyBenefitsViewController)initWithWarranty:(id)warranty;
- (void)donePressed:(id)pressed;
- (void)loadView;
@end

@implementation NDOWarrantyBenefitsViewController

- (NDOWarrantyBenefitsViewController)initWithWarranty:(id)warranty
{
  warrantyCopy = warranty;
  localizedBenefitsCardTitle = [warrantyCopy localizedBenefitsCardTitle];
  v8.receiver = self;
  v8.super_class = NDOWarrantyBenefitsViewController;
  v6 = [(OBTextWelcomeController *)&v8 initWithTitle:localizedBenefitsCardTitle];

  if (v6)
  {
    objc_storeWeak(&v6->_warranty, warrantyCopy);
  }

  return v6;
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = NDOWarrantyBenefitsViewController;
  [(OBTextWelcomeController *)&v16 loadView];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_donePressed_];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  warranty = [(NDOWarrantyBenefitsViewController *)self warranty];
  localizedBenefitsCardSubTitle = [warranty localizedBenefitsCardSubTitle];

  if (localizedBenefitsCardSubTitle)
  {
    warranty2 = [(NDOWarrantyBenefitsViewController *)self warranty];
    localizedBenefitsCardSubTitle2 = [warranty2 localizedBenefitsCardSubTitle];
    [(OBTextWelcomeController *)self addSectionWithHeader:0 content:localizedBenefitsCardSubTitle2];
  }

  warranty3 = [(NDOWarrantyBenefitsViewController *)self warranty];
  benefitDetailsArray = [warranty3 benefitDetailsArray];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__NDOWarrantyBenefitsViewController_loadView__block_invoke;
  v15[3] = &unk_2799788E0;
  v15[4] = self;
  [benefitDetailsArray enumerateObjectsUsingBlock:v15];

  warranty4 = [(NDOWarrantyBenefitsViewController *)self warranty];
  localizedBenefitsCardFooter = [warranty4 localizedBenefitsCardFooter];

  if (localizedBenefitsCardFooter)
  {
    warranty5 = [(NDOWarrantyBenefitsViewController *)self warranty];
    localizedBenefitsCardFooter2 = [warranty5 localizedBenefitsCardFooter];
    [(OBTextWelcomeController *)self addSectionWithHeader:0 content:localizedBenefitsCardFooter2];
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

- (void)donePressed:(id)pressed
{
  presentingViewController = [(NDOWarrantyBenefitsViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (NDOWarranty)warranty
{
  WeakRetained = objc_loadWeakRetained(&self->_warranty);

  return WeakRetained;
}

@end