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
  v4 = [(HMHearingAidInstructionsForUseViewController *)self view];
  [v4 addSubview:v3];

  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.apple.com/legal/ifu/haf"];
  v27 = [MEMORY[0x277CCAD20] requestWithURL:v28];
  v5 = [v3 loadRequest:v27];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(HMHearingAidInstructionsForUseViewController *)self view];
  [v6 addSubview:v3];

  v18 = MEMORY[0x277CCAAD0];
  v25 = [v3 topAnchor];
  v26 = [(HMHearingAidInstructionsForUseViewController *)self view];
  v24 = [v26 safeAreaLayoutGuide];
  v23 = [v24 topAnchor];
  v22 = [v25 constraintEqualToAnchor:v23];
  v31[0] = v22;
  v20 = [v3 bottomAnchor];
  v21 = [(HMHearingAidInstructionsForUseViewController *)self view];
  v19 = [v21 bottomAnchor];
  v17 = [v20 constraintEqualToAnchor:v19];
  v31[1] = v17;
  v7 = [v3 leadingAnchor];
  v8 = [(HMHearingAidInstructionsForUseViewController *)self view];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v31[2] = v10;
  v11 = [v3 trailingAnchor];
  v12 = [(HMHearingAidInstructionsForUseViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v31[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v18 activateConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

@end