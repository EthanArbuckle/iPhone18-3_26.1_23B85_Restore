@interface CFXStageManagerWarningViewController
- (BOOL)isMultitasking;
- (BOOL)showDoneButton;
- (CFXStageManagerWarningViewControllerDelegate)delegate;
- (void)doneButtonTapped:(id)tapped;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CFXStageManagerWarningViewController

- (void)viewDidLoad
{
  v42[3] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = CFXStageManagerWarningViewController;
  [(CFXStageManagerWarningViewController *)&v40 viewDidLoad];
  blackColor = [MEMORY[0x277D75348] blackColor];
  cGColor = [blackColor CGColor];
  view = [(CFXStageManagerWarningViewController *)self view];
  layer = [view layer];
  [layer setBackgroundColor:cGColor];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CFXStageManagerWarningViewController *)self view];
  [view2 addSubview:v7];

  v33 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v7 centerXAnchor];
  view3 = [(CFXStageManagerWarningViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v42[0] = v34;
  centerYAnchor = [v7 centerYAnchor];
  view4 = [(CFXStageManagerWarningViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v42[1] = v11;
  widthAnchor = [v7 widthAnchor];
  view5 = [(CFXStageManagerWarningViewController *)self view];
  widthAnchor2 = [view5 widthAnchor];
  v15 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-32.0];
  v42[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
  [v33 activateConstraints:v16];

  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v18 = [jfxBundle localizedStringForKey:@"STAGEMANAGER_UNSUPPORTED_WARNING" value:&stru_28553D028 table:0];
  [v7 setText:v18];

  v19 = [MEMORY[0x277D74300] systemFontOfSize:24.0];
  [v7 setFont:v19];

  [v7 setNumberOfLines:3];
  [v7 setLineBreakMode:0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v7 setTextColor:whiteColor];

  [v7 setTextAlignment:1];
  [v7 sizeToFit];
  doneButton = [MEMORY[0x277D3D078] doneButton];
  view6 = [(CFXStageManagerWarningViewController *)self view];
  [view6 addSubview:doneButton];

  [doneButton addTarget:self action:sel_doneButtonTapped_ forControlEvents:64];
  [doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = MEMORY[0x277CCAAD0];
  topAnchor = [doneButton topAnchor];
  selfCopy = self;
  view7 = [(CFXStageManagerWarningViewController *)self view];
  topAnchor2 = [view7 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v41[0] = v25;
  trailingAnchor = [doneButton trailingAnchor];
  view8 = [(CFXStageManagerWarningViewController *)self view];
  trailingAnchor2 = [view8 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v41[1] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  [v37 activateConstraints:v30];

  [(CFXStageManagerWarningViewController *)selfCopy setDoneButton:doneButton];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CFXStageManagerWarningViewController;
  [(CFXStageManagerWarningViewController *)&v5 viewWillLayoutSubviews];
  view = [(CFXStageManagerWarningViewController *)self view];
  [view setHidden:{-[CFXStageManagerWarningViewController isMultitasking](self, "isMultitasking") ^ 1}];

  doneButton = [(CFXStageManagerWarningViewController *)self doneButton];
  [doneButton setHidden:{-[CFXStageManagerWarningViewController showDoneButton](self, "showDoneButton") ^ 1}];
}

- (BOOL)isMultitasking
{
  view = [(CFXStageManagerWarningViewController *)self view];
  window = [view window];
  [window bounds];
  v5 = v4;
  v7 = v6;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10 = v9;
  v12 = v11;

  return v7 != v12 || v5 != v10;
}

- (BOOL)showDoneButton
{
  delegate = [(CFXStageManagerWarningViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CFXStageManagerWarningViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)doneButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(CFXStageManagerWarningViewController *)self delegate];
  if (delegate)
  {
  }

  else
  {
    delegate2 = [(CFXStageManagerWarningViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  delegate3 = [(CFXStageManagerWarningViewController *)self delegate];
  [delegate3 stageManagerWarningDoneButtonWasTapped:tappedCopy];

LABEL_5:
}

- (CFXStageManagerWarningViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end