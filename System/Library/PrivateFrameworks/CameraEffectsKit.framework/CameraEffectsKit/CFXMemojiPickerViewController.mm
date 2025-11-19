@interface CFXMemojiPickerViewController
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (CFXMemojiPickerViewController)init;
- (CFXMemojiPickerViewControllerDelegate)delegate;
- (void)beginHidingInterfaceWithMessage:(id)a3;
- (void)endHidingInterface;
- (void)selectAvatarRecordWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)setAvatarPickerDelegate:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
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
  v3 = [MEMORY[0x277CF0530] appBackgroundColor];
  v4 = [(CFXMemojiPickerViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCA8D8] jfxBundle];
  v7 = [v6 localizedStringForKey:@"MEMOJI Name" value:&stru_28553D028 table:0];
  [v5 setText:v7];

  v8 = [MEMORY[0x277D74300] boldSystemFontOfSize:20.0];
  [v5 setFont:v8];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(CFXMemojiPickerViewController *)self view];
  [v9 addSubview:v5];

  v10 = objc_opt_new();
  v101 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  [v10 setImage:v101 forState:0];
  v11 = [v10 layer];
  [v11 setCornerRadius:15.0];

  v12 = [MEMORY[0x277D75348] systemGray4Color];
  [v10 setBackgroundColor:v12];

  v13 = [MEMORY[0x277D75348] systemGrayColor];
  [v10 setTintColor:v13];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addTarget:self action:sel_close_ forControlEvents:64];
  v14 = [(CFXMemojiPickerViewController *)self view];
  [v14 addSubview:v10];

  v100 = objc_opt_new();
  [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
  [v100 setFont:v15];

  [v100 setTextAlignment:1];
  v16 = [MEMORY[0x277D75348] systemGrayColor];
  [v100 setTintColor:v16];

  v17 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v100 setBackgroundColor:v17];

  [v100 setHidden:1];
  v18 = [(CFXMemojiPickerViewController *)self view];
  [v18 addSubview:v100];

  [(CFXMemojiPickerViewController *)self setMessagePrompt:v100];
  v19 = [(CFXMemojiPickerViewController *)self avatarPicker];
  [v19 setExtendedLayoutIncludesOpaqueBars:1];

  v20 = [(CFXMemojiPickerViewController *)self avatarPicker];
  [(CFXMemojiPickerViewController *)self addChildViewController:v20];

  v21 = [(CFXMemojiPickerViewController *)self view];
  v22 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v23 = [v22 view];
  [v21 addSubview:v23];

  v24 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v25 = [v24 view];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v98 = [v5 topAnchor];
  v99 = [(CFXMemojiPickerViewController *)self view];
  v97 = [v99 topAnchor];
  v96 = [v98 constraintEqualToAnchor:v97 constant:16.0];
  v103[0] = v96;
  v94 = [v5 leadingAnchor];
  v95 = [(CFXMemojiPickerViewController *)self view];
  v93 = [v95 leadingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93 constant:16.0];
  v103[1] = v92;
  v85 = v5;
  v90 = [v5 heightAnchor];
  v89 = [v90 constraintEqualToConstant:30.0];
  v103[2] = v89;
  v87 = [v10 topAnchor];
  v88 = [(CFXMemojiPickerViewController *)self view];
  v86 = [v88 topAnchor];
  v84 = [v87 constraintEqualToAnchor:v86 constant:16.0];
  v103[3] = v84;
  v91 = v10;
  v82 = [v10 trailingAnchor];
  v83 = [(CFXMemojiPickerViewController *)self view];
  v81 = [v83 trailingAnchor];
  v80 = [v82 constraintEqualToAnchor:v81 constant:-16.0];
  v103[4] = v80;
  v79 = [v10 heightAnchor];
  v78 = [v79 constraintEqualToConstant:30.0];
  v103[5] = v78;
  v77 = [v10 widthAnchor];
  v76 = [v77 constraintEqualToConstant:30.0];
  v103[6] = v76;
  v75 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v74 = [v75 view];
  v72 = [v74 bottomAnchor];
  v73 = [(CFXMemojiPickerViewController *)self view];
  v71 = [v73 bottomAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v103[7] = v70;
  v69 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v68 = [v69 view];
  v67 = [v68 topAnchor];
  v66 = [v5 bottomAnchor];
  v65 = [v67 constraintEqualToAnchor:v66 constant:16.0];
  v103[8] = v65;
  v64 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v63 = [v64 view];
  v61 = [v63 centerXAnchor];
  v62 = [(CFXMemojiPickerViewController *)self view];
  v60 = [v62 centerXAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v103[9] = v59;
  v58 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v56 = [v58 view];
  v54 = [v56 widthAnchor];
  v55 = [(CFXMemojiPickerViewController *)self view];
  v53 = [v55 widthAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v103[10] = v52;
  v51 = [(CFXMemojiPickerViewController *)self messagePrompt];
  v49 = [v51 bottomAnchor];
  v50 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v48 = [v50 view];
  v47 = [v48 bottomAnchor];
  v46 = [v49 constraintEqualToAnchor:v47];
  v103[11] = v46;
  v45 = [(CFXMemojiPickerViewController *)self messagePrompt];
  v43 = [v45 topAnchor];
  v44 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v42 = [v44 view];
  v41 = [v42 topAnchor];
  v40 = [v43 constraintEqualToAnchor:v41];
  v103[12] = v40;
  v39 = [(CFXMemojiPickerViewController *)self messagePrompt];
  v37 = [v39 centerXAnchor];
  v38 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v26 = [v38 view];
  v27 = [v26 centerXAnchor];
  v28 = [v37 constraintEqualToAnchor:v27];
  v103[13] = v28;
  v29 = [(CFXMemojiPickerViewController *)self messagePrompt];
  v30 = [v29 widthAnchor];
  v31 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v32 = [v31 view];
  v33 = [v32 widthAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];
  v103[14] = v34;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:15];

  v35 = [(CFXMemojiPickerViewController *)self view];
  [v35 addConstraints:v57];

  v36 = [(CFXMemojiPickerViewController *)self avatarPicker];
  [v36 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = CFXMemojiPickerViewController;
  [(CFXMemojiPickerViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(CFXMemojiPickerViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  if (v7 > v5)
  {
    v8 = [(CFXMemojiPickerViewController *)self avatarPicker];
    v9 = [v8 mode];

    if (v9 != 1)
    {
      v12 = 1;
      goto LABEL_7;
    }
  }

  if (v5 > v7)
  {
    v10 = [(CFXMemojiPickerViewController *)self avatarPicker];
    v11 = [v10 mode];

    if (v11)
    {
      v12 = 0;
LABEL_7:
      v13 = [(CFXMemojiPickerViewController *)self avatarPicker];
      [v13 setMode:v12];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = [(CFXMemojiPickerViewController *)self delegate];

  if (v4)
  {
    v5 = [(CFXMemojiPickerViewController *)self delegate];
    [v5 didDismissMemojiPicker];
  }
}

- (AVTAvatarPickerDelegate)avatarPickerDelegate
{
  v2 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v3 = [v2 avatarPickerDelegate];

  return v3;
}

- (void)setAvatarPickerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CFXMemojiPickerViewController *)self avatarPicker];
  [v5 setAvatarPickerDelegate:v4];
}

- (void)selectAvatarRecordWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CFXMemojiPickerViewController *)self avatarPicker];
  [v7 selectAvatarRecordWithIdentifier:v6 animated:v4];
}

- (void)beginHidingInterfaceWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(CFXMemojiPickerViewController *)self messagePrompt];
  [v5 setText:v4];

  v6 = [(CFXMemojiPickerViewController *)self messagePrompt];
  [v6 setHidden:0];

  v8 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v7 = [v8 view];
  [v7 setHidden:1];
}

- (void)endHidingInterface
{
  v3 = [(CFXMemojiPickerViewController *)self messagePrompt];
  [v3 setHidden:1];

  v5 = [(CFXMemojiPickerViewController *)self avatarPicker];
  v4 = [v5 view];
  [v4 setHidden:0];
}

- (CFXMemojiPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end