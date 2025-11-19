@interface HMTestFitNoiseCheckTopViewController
- (unint64_t)_fitNoiseCheckTopTestingViewHeight;
- (void)viewDidLoad;
@end

@implementation HMTestFitNoiseCheckTopViewController

- (void)viewDidLoad
{
  v31[5] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D12C00] fitNoiseCheckTopTestingView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(HMTestFitNoiseCheckTopViewController *)self view];
  [v4 addSubview:v3];

  v24 = MEMORY[0x277CCAAD0];
  v30 = [v3 heightAnchor];
  v29 = [v30 constraintLessThanOrEqualToConstant:{-[HMTestFitNoiseCheckTopViewController _fitNoiseCheckTopTestingViewHeight](self, "_fitNoiseCheckTopTestingViewHeight")}];
  v31[0] = v29;
  v27 = [v3 leadingAnchor];
  v28 = [(HMTestFitNoiseCheckTopViewController *)self view];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v31[1] = v25;
  v22 = [v3 trailingAnchor];
  v23 = [(HMTestFitNoiseCheckTopViewController *)self view];
  v21 = [v23 trailingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v31[2] = v20;
  v19 = [v3 centerXAnchor];
  v5 = [(HMTestFitNoiseCheckTopViewController *)self view];
  v6 = [v5 centerXAnchor];
  v7 = [v19 constraintEqualToAnchor:v6];
  v31[3] = v7;
  v8 = [v3 centerYAnchor];
  v9 = [(HMTestFitNoiseCheckTopViewController *)self view];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v31[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];
  [v24 activateConstraints:v12];

  v13 = [(HMTestFitNoiseCheckTopViewController *)self view];
  v14 = [v13 layer];
  v15 = [MEMORY[0x277D75348] redColor];
  [v14 setBorderColor:{objc_msgSend(v15, "cgColor")}];

  v16 = [(HMTestFitNoiseCheckTopViewController *)self view];
  v17 = [v16 layer];
  [v17 setBorderWidth:1.0];

  v18 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_fitNoiseCheckTopTestingViewHeight
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.ConnectedAudio");
  result = CFPreferencesGetAppIntegerValue(@"fitNoiseCheckTopTestingViewHeight", @"com.apple.ConnectedAudio", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = result == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 300;
  }

  return result;
}

@end