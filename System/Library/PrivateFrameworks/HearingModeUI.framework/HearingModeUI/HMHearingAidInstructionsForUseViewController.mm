@interface HMHearingAidInstructionsForUseViewController
- (void)viewDidLoad;
@end

@implementation HMHearingAidInstructionsForUseViewController

- (void)viewDidLoad
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HMHearingAidInstructionsForUseViewController;
  [(HMHearingAidInstructionsForUseViewController *)&v30 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277CE3850]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(HMHearingAidInstructionsForUseViewController *)self view];
  [view addSubview:v3];

  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.apple.com/legal/ifu/haf"];
  v27 = [MEMORY[0x277CCAD20] requestWithURL:v28];
  v5 = [v3 loadRequest:v27];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(HMHearingAidInstructionsForUseViewController *)self view];
  [view2 addSubview:v3];

  v18 = MEMORY[0x277CCAAD0];
  topAnchor = [v3 topAnchor];
  view3 = [(HMHearingAidInstructionsForUseViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[0] = v22;
  bottomAnchor = [v3 bottomAnchor];
  view4 = [(HMHearingAidInstructionsForUseViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[1] = v17;
  leadingAnchor = [v3 leadingAnchor];
  view5 = [(HMHearingAidInstructionsForUseViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[2] = v10;
  trailingAnchor = [v3 trailingAnchor];
  view6 = [(HMHearingAidInstructionsForUseViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v18 activateConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

@end