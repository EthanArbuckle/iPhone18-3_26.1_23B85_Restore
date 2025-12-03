@interface CFXMemojiPickerViewController
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (CFXMemojiPickerViewController)init;
- (CFXMemojiPickerViewControllerDelegate)delegate;
- (void)beginHidingInterfaceWithMessage:(id)message;
- (void)endHidingInterface;
- (void)selectAvatarRecordWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)setAvatarPickerDelegate:(id)delegate;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CFXMemojiPickerViewController

- (CFXMemojiPickerViewController)init
{
  v7.receiver = self;
  v7.super_class = CFXMemojiPickerViewController;
  v2 = [(CFXMemojiPickerViewController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0518]);
    v4 = [objc_alloc(MEMORY[0x277CF0528]) initWithCellSize:74.0 engagedCellSize:74.0 interitemSpacing:108.0 gridEdgeInsets:{108.0, 16.0, 0, 0x4020000000000000, 0, 0x4020000000000000}];
    v5 = [MEMORY[0x277CF0520] funCamAvatarPickerControllerForStore:v3 style:v4 allowsCreation:0];
    [(CFXMemojiPickerViewController *)v2 setAvatarPicker:v5];
  }

  return v2;
}

- (void)viewDidLoad
{
  v103[15] = *MEMORY[0x277D85DE8];
  v102.receiver = self;
  v102.super_class = CFXMemojiPickerViewController;
  [(CFXMemojiPickerViewController *)&v102 viewDidLoad];
  [(CFXMemojiPickerViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  appBackgroundColor = [MEMORY[0x277CF0530] appBackgroundColor];
  view = [(CFXMemojiPickerViewController *)self view];
  [view setBackgroundColor:appBackgroundColor];

  v5 = objc_opt_new();
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v7 = [jfxBundle localizedStringForKey:@"MEMOJI Name" value:&stru_28553D028 table:0];
  [v5 setText:v7];

  v8 = [MEMORY[0x277D74300] boldSystemFontOfSize:20.0];
  [v5 setFont:v8];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CFXMemojiPickerViewController *)self view];
  [view2 addSubview:v5];

  v10 = objc_opt_new();
  v101 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  [v10 setImage:v101 forState:0];
  layer = [v10 layer];
  [layer setCornerRadius:15.0];

  systemGray4Color = [MEMORY[0x277D75348] systemGray4Color];
  [v10 setBackgroundColor:systemGray4Color];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v10 setTintColor:systemGrayColor];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addTarget:self action:sel_close_ forControlEvents:64];
  view3 = [(CFXMemojiPickerViewController *)self view];
  [view3 addSubview:v10];

  v100 = objc_opt_new();
  [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
  [v100 setFont:v15];

  [v100 setTextAlignment:1];
  systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
  [v100 setTintColor:systemGrayColor2];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [v100 setBackgroundColor:systemBackgroundColor];

  [v100 setHidden:1];
  view4 = [(CFXMemojiPickerViewController *)self view];
  [view4 addSubview:v100];

  [(CFXMemojiPickerViewController *)self setMessagePrompt:v100];
  avatarPicker = [(CFXMemojiPickerViewController *)self avatarPicker];
  [avatarPicker setExtendedLayoutIncludesOpaqueBars:1];

  avatarPicker2 = [(CFXMemojiPickerViewController *)self avatarPicker];
  [(CFXMemojiPickerViewController *)self addChildViewController:avatarPicker2];

  view5 = [(CFXMemojiPickerViewController *)self view];
  avatarPicker3 = [(CFXMemojiPickerViewController *)self avatarPicker];
  view6 = [avatarPicker3 view];
  [view5 addSubview:view6];

  avatarPicker4 = [(CFXMemojiPickerViewController *)self avatarPicker];
  view7 = [avatarPicker4 view];
  [view7 setTranslatesAutoresizingMaskIntoConstraints:0];

  topAnchor = [v5 topAnchor];
  view8 = [(CFXMemojiPickerViewController *)self view];
  topAnchor2 = [view8 topAnchor];
  v96 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v103[0] = v96;
  leadingAnchor = [v5 leadingAnchor];
  view9 = [(CFXMemojiPickerViewController *)self view];
  leadingAnchor2 = [view9 leadingAnchor];
  v92 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v103[1] = v92;
  v85 = v5;
  heightAnchor = [v5 heightAnchor];
  v89 = [heightAnchor constraintEqualToConstant:30.0];
  v103[2] = v89;
  topAnchor3 = [v10 topAnchor];
  view10 = [(CFXMemojiPickerViewController *)self view];
  topAnchor4 = [view10 topAnchor];
  v84 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
  v103[3] = v84;
  v91 = v10;
  trailingAnchor = [v10 trailingAnchor];
  view11 = [(CFXMemojiPickerViewController *)self view];
  trailingAnchor2 = [view11 trailingAnchor];
  v80 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v103[4] = v80;
  heightAnchor2 = [v10 heightAnchor];
  v78 = [heightAnchor2 constraintEqualToConstant:30.0];
  v103[5] = v78;
  widthAnchor = [v10 widthAnchor];
  v76 = [widthAnchor constraintEqualToConstant:30.0];
  v103[6] = v76;
  avatarPicker5 = [(CFXMemojiPickerViewController *)self avatarPicker];
  view12 = [avatarPicker5 view];
  bottomAnchor = [view12 bottomAnchor];
  view13 = [(CFXMemojiPickerViewController *)self view];
  bottomAnchor2 = [view13 bottomAnchor];
  v70 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v103[7] = v70;
  avatarPicker6 = [(CFXMemojiPickerViewController *)self avatarPicker];
  view14 = [avatarPicker6 view];
  topAnchor5 = [view14 topAnchor];
  bottomAnchor3 = [v5 bottomAnchor];
  v65 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:16.0];
  v103[8] = v65;
  avatarPicker7 = [(CFXMemojiPickerViewController *)self avatarPicker];
  view15 = [avatarPicker7 view];
  centerXAnchor = [view15 centerXAnchor];
  view16 = [(CFXMemojiPickerViewController *)self view];
  centerXAnchor2 = [view16 centerXAnchor];
  v59 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v103[9] = v59;
  avatarPicker8 = [(CFXMemojiPickerViewController *)self avatarPicker];
  view17 = [avatarPicker8 view];
  widthAnchor2 = [view17 widthAnchor];
  view18 = [(CFXMemojiPickerViewController *)self view];
  widthAnchor3 = [view18 widthAnchor];
  v52 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  v103[10] = v52;
  messagePrompt = [(CFXMemojiPickerViewController *)self messagePrompt];
  bottomAnchor4 = [messagePrompt bottomAnchor];
  avatarPicker9 = [(CFXMemojiPickerViewController *)self avatarPicker];
  view19 = [avatarPicker9 view];
  bottomAnchor5 = [view19 bottomAnchor];
  v46 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v103[11] = v46;
  messagePrompt2 = [(CFXMemojiPickerViewController *)self messagePrompt];
  topAnchor6 = [messagePrompt2 topAnchor];
  avatarPicker10 = [(CFXMemojiPickerViewController *)self avatarPicker];
  view20 = [avatarPicker10 view];
  topAnchor7 = [view20 topAnchor];
  v40 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v103[12] = v40;
  messagePrompt3 = [(CFXMemojiPickerViewController *)self messagePrompt];
  centerXAnchor3 = [messagePrompt3 centerXAnchor];
  avatarPicker11 = [(CFXMemojiPickerViewController *)self avatarPicker];
  view21 = [avatarPicker11 view];
  centerXAnchor4 = [view21 centerXAnchor];
  v28 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v103[13] = v28;
  messagePrompt4 = [(CFXMemojiPickerViewController *)self messagePrompt];
  widthAnchor4 = [messagePrompt4 widthAnchor];
  avatarPicker12 = [(CFXMemojiPickerViewController *)self avatarPicker];
  view22 = [avatarPicker12 view];
  widthAnchor5 = [view22 widthAnchor];
  v34 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  v103[14] = v34;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:15];

  view23 = [(CFXMemojiPickerViewController *)self view];
  [view23 addConstraints:v57];

  avatarPicker13 = [(CFXMemojiPickerViewController *)self avatarPicker];
  [avatarPicker13 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = CFXMemojiPickerViewController;
  [(CFXMemojiPickerViewController *)&v14 viewDidLayoutSubviews];
  view = [(CFXMemojiPickerViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  if (v7 > v5)
  {
    avatarPicker = [(CFXMemojiPickerViewController *)self avatarPicker];
    mode = [avatarPicker mode];

    if (mode != 1)
    {
      v12 = 1;
      goto LABEL_7;
    }
  }

  if (v5 > v7)
  {
    avatarPicker2 = [(CFXMemojiPickerViewController *)self avatarPicker];
    mode2 = [avatarPicker2 mode];

    if (mode2)
    {
      v12 = 0;
LABEL_7:
      avatarPicker3 = [(CFXMemojiPickerViewController *)self avatarPicker];
      [avatarPicker3 setMode:v12];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  delegate = [(CFXMemojiPickerViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CFXMemojiPickerViewController *)self delegate];
    [delegate2 didDismissMemojiPicker];
  }
}

- (AVTAvatarPickerDelegate)avatarPickerDelegate
{
  avatarPicker = [(CFXMemojiPickerViewController *)self avatarPicker];
  avatarPickerDelegate = [avatarPicker avatarPickerDelegate];

  return avatarPickerDelegate;
}

- (void)setAvatarPickerDelegate:(id)delegate
{
  delegateCopy = delegate;
  avatarPicker = [(CFXMemojiPickerViewController *)self avatarPicker];
  [avatarPicker setAvatarPickerDelegate:delegateCopy];
}

- (void)selectAvatarRecordWithIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  avatarPicker = [(CFXMemojiPickerViewController *)self avatarPicker];
  [avatarPicker selectAvatarRecordWithIdentifier:identifierCopy animated:animatedCopy];
}

- (void)beginHidingInterfaceWithMessage:(id)message
{
  messageCopy = message;
  messagePrompt = [(CFXMemojiPickerViewController *)self messagePrompt];
  [messagePrompt setText:messageCopy];

  messagePrompt2 = [(CFXMemojiPickerViewController *)self messagePrompt];
  [messagePrompt2 setHidden:0];

  avatarPicker = [(CFXMemojiPickerViewController *)self avatarPicker];
  view = [avatarPicker view];
  [view setHidden:1];
}

- (void)endHidingInterface
{
  messagePrompt = [(CFXMemojiPickerViewController *)self messagePrompt];
  [messagePrompt setHidden:1];

  avatarPicker = [(CFXMemojiPickerViewController *)self avatarPicker];
  view = [avatarPicker view];
  [view setHidden:0];
}

- (CFXMemojiPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end