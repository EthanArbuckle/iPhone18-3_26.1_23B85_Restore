@interface HMTestFitNoiseCheckTopViewController
- (unint64_t)_fitNoiseCheckTopTestingViewHeight;
- (void)viewDidLoad;
@end

@implementation HMTestFitNoiseCheckTopViewController

- (void)viewDidLoad
{
  v31[5] = *MEMORY[0x277D85DE8];
  fitNoiseCheckTopTestingView = [MEMORY[0x277D12C00] fitNoiseCheckTopTestingView];
  [fitNoiseCheckTopTestingView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(HMTestFitNoiseCheckTopViewController *)self view];
  [view addSubview:fitNoiseCheckTopTestingView];

  v24 = MEMORY[0x277CCAAD0];
  heightAnchor = [fitNoiseCheckTopTestingView heightAnchor];
  v29 = [heightAnchor constraintLessThanOrEqualToConstant:{-[HMTestFitNoiseCheckTopViewController _fitNoiseCheckTopTestingViewHeight](self, "_fitNoiseCheckTopTestingViewHeight")}];
  v31[0] = v29;
  leadingAnchor = [fitNoiseCheckTopTestingView leadingAnchor];
  view2 = [(HMTestFitNoiseCheckTopViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[1] = v25;
  trailingAnchor = [fitNoiseCheckTopTestingView trailingAnchor];
  view3 = [(HMTestFitNoiseCheckTopViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[2] = v20;
  centerXAnchor = [fitNoiseCheckTopTestingView centerXAnchor];
  view4 = [(HMTestFitNoiseCheckTopViewController *)self view];
  centerXAnchor2 = [view4 centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v31[3] = v7;
  centerYAnchor = [fitNoiseCheckTopTestingView centerYAnchor];
  view5 = [(HMTestFitNoiseCheckTopViewController *)self view];
  centerYAnchor2 = [view5 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];
  [v24 activateConstraints:v12];

  view6 = [(HMTestFitNoiseCheckTopViewController *)self view];
  layer = [view6 layer];
  redColor = [MEMORY[0x277D75348] redColor];
  [layer setBorderColor:{objc_msgSend(redColor, "cgColor")}];

  view7 = [(HMTestFitNoiseCheckTopViewController *)self view];
  layer2 = [view7 layer];
  [layer2 setBorderWidth:1.0];

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