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
  view = [(DKSpinnerController *)self view];
  [view addSubview:v3];

  v21 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v3 centerXAnchor];
  view2 = [(DKSpinnerController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v24[0] = v7;
  centerYAnchor = [v3 centerYAnchor];
  view3 = [(DKSpinnerController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v21 activateConstraints:v12];

  [v3 startAnimating];
  view4 = [(DKSpinnerController *)self view];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [view4 setBackgroundColor:systemBackgroundColor];

  v15 = objc_alloc(MEMORY[0x277D751E0]);
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
  v18 = [v15 initWithTitle:v17 style:0 target:self action:sel_cancelPressed_];
  navigationItem = [(DKSpinnerController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v18];

  v20 = *MEMORY[0x277D85DE8];
}

@end