@interface DKSpinnerController
- (void)viewDidLoad;
@end

@implementation DKSpinnerController

- (void)viewDidLoad
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = DKSpinnerController;
  [(DKSpinnerController *)&v23 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(DKSpinnerController *)self view];
  [v4 addSubview:v3];

  v21 = MEMORY[0x277CCAAD0];
  v22 = [v3 centerXAnchor];
  v5 = [(DKSpinnerController *)self view];
  v6 = [v5 centerXAnchor];
  v7 = [v22 constraintEqualToAnchor:v6];
  v24[0] = v7;
  v8 = [v3 centerYAnchor];
  v9 = [(DKSpinnerController *)self view];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v21 activateConstraints:v12];

  [v3 startAnimating];
  v13 = [(DKSpinnerController *)self view];
  v14 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v13 setBackgroundColor:v14];

  v15 = objc_alloc(MEMORY[0x277D751E0]);
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
  v18 = [v15 initWithTitle:v17 style:0 target:self action:sel_cancelPressed_];
  v19 = [(DKSpinnerController *)self navigationItem];
  [v19 setLeftBarButtonItem:v18];

  v20 = *MEMORY[0x277D85DE8];
}

@end