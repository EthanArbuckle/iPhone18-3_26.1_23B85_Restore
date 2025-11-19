@interface MCDErrorLoadingView
- (MCDErrorLoadingView)initWithTitle:(id)a3 buttonText:(id)a4;
- (MCDErrorViewDelegate)delegate;
- (void)retryButtonPressed:(id)a3;
@end

@implementation MCDErrorLoadingView

- (MCDErrorLoadingView)initWithTitle:(id)a3 buttonText:(id)a4
{
  v61[8] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v60.receiver = self;
  v60.super_class = MCDErrorLoadingView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(MCDErrorLoadingView *)&v60 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  if (v12)
  {
    v13 = [MEMORY[0x277D75348] tableBackgroundColor];
    [(MCDErrorLoadingView *)v12 setBackgroundColor:v13];

    v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v59 = v6;
    if (v6)
    {
      [v14 setText:v6];
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
    v18 = [MEMORY[0x277D75348] labelColor];
    [v14 setTextColor:v18];

    v19 = objc_opt_new();
    v20 = [v19 titleLabel];
    v21 = _MCDNoContentFontWithTextStyle(*MEMORY[0x277D76920]);
    [v20 setFont:v21];

    v58 = v7;
    if (v7)
    {
      [v19 setTitle:v7 forState:0];
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
    v57 = [v24 heightAnchor];
    v55 = [(MCDErrorLoadingView *)v12 heightAnchor];
    v54 = [v57 constraintEqualToAnchor:v55 multiplier:0.15 constant:0.0];
    v61[0] = v54;
    v53 = [v14 topAnchor];
    v52 = [v24 bottomAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v61[1] = v51;
    v49 = [v14 leadingAnchor];
    v50 = [(MCDErrorLoadingView *)v12 safeAreaLayoutGuide];
    v48 = [v50 leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:12.0];
    v61[2] = v47;
    v43 = [v14 trailingAnchor];
    v44 = [(MCDErrorLoadingView *)v12 safeAreaLayoutGuide];
    v42 = [v44 trailingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42 constant:-12.0];
    v61[3] = v41;
    v40 = [v19 centerXAnchor];
    v39 = [(MCDErrorLoadingView *)v12 centerXAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v61[4] = v38;
    v37 = [v19 widthAnchor];
    v36 = [(MCDErrorLoadingView *)v12 widthAnchor];
    [v37 constraintEqualToAnchor:v36 multiplier:0.699999988 constant:0.0];
    v25 = v45 = v14;
    v61[5] = v25;
    v26 = [v19 heightAnchor];
    v27 = [v26 constraintEqualToConstant:40.0];
    v61[6] = v27;
    v28 = [v19 bottomAnchor];
    v29 = [(MCDErrorLoadingView *)v12 safeAreaLayoutGuide];
    v30 = [v29 bottomAnchor];
    v31 = [v28 constraintEqualToAnchor:v30 constant:-24.0];
    v61[7] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:8];
    [v46 activateConstraints:v32];

    v33 = v12;
    v7 = v58;
    v6 = v59;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)retryButtonPressed:(id)a3
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