@interface CFXStageManagerWarningViewController
- (BOOL)isMultitasking;
- (BOOL)showDoneButton;
- (CFXStageManagerWarningViewControllerDelegate)delegate;
- (void)doneButtonTapped:(id)a3;
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
  v3 = [MEMORY[0x277D75348] blackColor];
  v4 = [v3 CGColor];
  v5 = [(CFXStageManagerWarningViewController *)self view];
  v6 = [v5 layer];
  [v6 setBackgroundColor:v4];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(CFXStageManagerWarningViewController *)self view];
  [v8 addSubview:v7];

  v33 = MEMORY[0x277CCAAD0];
  v36 = [v7 centerXAnchor];
  v38 = [(CFXStageManagerWarningViewController *)self view];
  v35 = [v38 centerXAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v42[0] = v34;
  v32 = [v7 centerYAnchor];
  v9 = [(CFXStageManagerWarningViewController *)self view];
  v10 = [v9 centerYAnchor];
  v11 = [v32 constraintEqualToAnchor:v10];
  v42[1] = v11;
  v12 = [v7 widthAnchor];
  v13 = [(CFXStageManagerWarningViewController *)self view];
  v14 = [v13 widthAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:-32.0];
  v42[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
  [v33 activateConstraints:v16];

  v17 = [MEMORY[0x277CCA8D8] jfxBundle];
  v18 = [v17 localizedStringForKey:@"STAGEMANAGER_UNSUPPORTED_WARNING" value:&stru_28553D028 table:0];
  [v7 setText:v18];

  v19 = [MEMORY[0x277D74300] systemFontOfSize:24.0];
  [v7 setFont:v19];

  [v7 setNumberOfLines:3];
  [v7 setLineBreakMode:0];
  v20 = [MEMORY[0x277D75348] whiteColor];
  [v7 setTextColor:v20];

  [v7 setTextAlignment:1];
  [v7 sizeToFit];
  v21 = [MEMORY[0x277D3D078] doneButton];
  v22 = [(CFXStageManagerWarningViewController *)self view];
  [v22 addSubview:v21];

  [v21 addTarget:self action:sel_doneButtonTapped_ forControlEvents:64];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = MEMORY[0x277CCAAD0];
  v39 = [v21 topAnchor];
  v31 = self;
  v23 = [(CFXStageManagerWarningViewController *)self view];
  v24 = [v23 topAnchor];
  v25 = [v39 constraintEqualToAnchor:v24 constant:16.0];
  v41[0] = v25;
  v26 = [v21 trailingAnchor];
  v27 = [(CFXStageManagerWarningViewController *)self view];
  v28 = [v27 trailingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28 constant:-16.0];
  v41[1] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  [v37 activateConstraints:v30];

  [(CFXStageManagerWarningViewController *)v31 setDoneButton:v21];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CFXStageManagerWarningViewController;
  [(CFXStageManagerWarningViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(CFXStageManagerWarningViewController *)self view];
  [v3 setHidden:{-[CFXStageManagerWarningViewController isMultitasking](self, "isMultitasking") ^ 1}];

  v4 = [(CFXStageManagerWarningViewController *)self doneButton];
  [v4 setHidden:{-[CFXStageManagerWarningViewController showDoneButton](self, "showDoneButton") ^ 1}];
}

- (BOOL)isMultitasking
{
  v2 = [(CFXStageManagerWarningViewController *)self view];
  v3 = [v2 window];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  return v7 != v12 || v5 != v10;
}

- (BOOL)showDoneButton
{
  v3 = [(CFXStageManagerWarningViewController *)self delegate];

  if (v3)
  {
    v4 = [(CFXStageManagerWarningViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)doneButtonTapped:(id)a3
{
  v8 = a3;
  v4 = [(CFXStageManagerWarningViewController *)self delegate];
  if (v4)
  {
  }

  else
  {
    v5 = [(CFXStageManagerWarningViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = [(CFXStageManagerWarningViewController *)self delegate];
  [v7 stageManagerWarningDoneButtonWasTapped:v8];

LABEL_5:
}

- (CFXStageManagerWarningViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end