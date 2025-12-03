@interface MCDErrorLoadingView
- (MCDErrorLoadingView)initWithTitle:(id)title buttonText:(id)text;
- (MCDErrorViewDelegate)delegate;
- (void)retryButtonPressed:(id)pressed;
@end

@implementation MCDErrorLoadingView

- (MCDErrorLoadingView)initWithTitle:(id)title buttonText:(id)text
{
  v61[8] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  textCopy = text;
  v60.receiver = self;
  v60.super_class = MCDErrorLoadingView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(MCDErrorLoadingView *)&v60 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  if (v12)
  {
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    [(MCDErrorLoadingView *)v12 setBackgroundColor:tableBackgroundColor];

    v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v59 = titleCopy;
    if (titleCopy)
    {
      [v14 setText:titleCopy];
    }

    else
    {
      v15 = MCDCarDisplayBundle();
      v16 = [v15 localizedStringForKey:@"FUSE_TIMEOUT_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
      [v14 setText:v16];
    }

    v17 = _MCDNoContentFontWithTextStyle(*MEMORY[0x277D76A20]);
    [v14 setFont:v17];

    [v14 setTextAlignment:1];
    [v14 setNumberOfLines:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v14 setTextColor:labelColor];

    v19 = objc_opt_new();
    titleLabel = [v19 titleLabel];
    v21 = _MCDNoContentFontWithTextStyle(*MEMORY[0x277D76920]);
    [titleLabel setFont:v21];

    v58 = textCopy;
    if (textCopy)
    {
      [v19 setTitle:textCopy forState:0];
    }

    else
    {
      v22 = MCDCarDisplayBundle();
      v23 = [v22 localizedStringForKey:@"Try Again" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
      [v19 setTitle:v23 forState:0];
    }

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 addTarget:v12 action:sel_retryButtonPressed_ forControlEvents:64];
    [v19 sizeToFit];
    v24 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(MCDErrorLoadingView *)v12 addLayoutGuide:v24];
    [(MCDErrorLoadingView *)v12 addSubview:v14];
    [(MCDErrorLoadingView *)v12 addSubview:v19];
    v46 = MEMORY[0x277CCAAD0];
    v56 = v24;
    heightAnchor = [v24 heightAnchor];
    heightAnchor2 = [(MCDErrorLoadingView *)v12 heightAnchor];
    v54 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.15 constant:0.0];
    v61[0] = v54;
    topAnchor = [v14 topAnchor];
    bottomAnchor = [v24 bottomAnchor];
    v51 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v61[1] = v51;
    leadingAnchor = [v14 leadingAnchor];
    safeAreaLayoutGuide = [(MCDErrorLoadingView *)v12 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v61[2] = v47;
    trailingAnchor = [v14 trailingAnchor];
    safeAreaLayoutGuide2 = [(MCDErrorLoadingView *)v12 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v61[3] = v41;
    centerXAnchor = [v19 centerXAnchor];
    centerXAnchor2 = [(MCDErrorLoadingView *)v12 centerXAnchor];
    v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v61[4] = v38;
    widthAnchor = [v19 widthAnchor];
    widthAnchor2 = [(MCDErrorLoadingView *)v12 widthAnchor];
    [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.699999988 constant:0.0];
    v25 = v45 = v14;
    v61[5] = v25;
    heightAnchor3 = [v19 heightAnchor];
    v27 = [heightAnchor3 constraintEqualToConstant:40.0];
    v61[6] = v27;
    bottomAnchor2 = [v19 bottomAnchor];
    safeAreaLayoutGuide3 = [(MCDErrorLoadingView *)v12 safeAreaLayoutGuide];
    bottomAnchor3 = [safeAreaLayoutGuide3 bottomAnchor];
    v31 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-24.0];
    v61[7] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:8];
    [v46 activateConstraints:v32];

    v33 = v12;
    textCopy = v58;
    titleCopy = v59;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)retryButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = MCDGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25AD8E000, v6, OS_LOG_TYPE_DEFAULT, "Retry button pressed", v8, 2u);
    }

    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 errorViewDidTapButton:self];
  }
}

- (MCDErrorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end