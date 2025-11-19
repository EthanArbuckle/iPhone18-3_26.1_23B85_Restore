@interface CSDeviceUnblockViewController
- (CSDeviceUnblockViewController)initWithViewModel:(id)a3;
- (id)_addLabelWithText:(id)a3 color:(id)a4 font:(id)a5 toStack:(id)a6;
- (void)_addHeaderCancelIfNeededToStack:(id)a3;
- (void)_addSystemImageWithName:(id)a3 toStack:(id)a4;
- (void)setTimeoutString:(id)a3;
- (void)viewDidLoad;
@end

@implementation CSDeviceUnblockViewController

- (CSDeviceUnblockViewController)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSDeviceUnblockViewController;
  v6 = [(CSDeviceUnblockViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21EB05000, a2, OS_LOG_TYPE_DEBUG, "Last backup string: %@", &v2, 0xCu);
}

- (void)setTimeoutString:(id)a3
{
  bodyLabel = self->_bodyLabel;
  v4 = [(CSDeviceUnblockViewModel *)self->_viewModel bodyTextForTimeout:a3];
  [(UILabel *)bodyLabel setText:v4];
}

- (void)_addHeaderCancelIfNeededToStack:(id)a3
{
  v4 = MEMORY[0x277D75A68];
  v5 = a3;
  v14 = objc_alloc_init(v4);
  [v14 setAxis:0];
  [v5 addArrangedSubview:v14];
  [v5 spacing];
  [v5 setCustomSpacing:v14 afterView:v6 * 1.75];

  v7 = [MEMORY[0x277D75220] buttonWithType:0];
  [v7 addTarget:self->_viewModel action:sel_cancelButtonAction forControlEvents:64];
  v8 = [(CSDeviceUnblockViewModel *)self->_viewModel cancelButtonText];
  [v7 setTitle:v8 forState:0];

  v9 = [v7 titleLabel];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v9 setFont:v10];

  v11 = [MEMORY[0x277D75348] labelColor];
  [v7 setTitleColor:v11 forState:0];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 addArrangedSubview:v7];
  v12 = objc_opt_new();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1132068864;
  [v12 setContentHuggingPriority:0 forAxis:v13];
  [v14 addArrangedSubview:v12];
}

- (void)_addSystemImageWithName:(id)a3 toStack:(id)a4
{
  v5 = MEMORY[0x277D755B8];
  v6 = a4;
  v12 = [v5 _systemImageNamed:a3];
  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
  [v7 setContentMode:1];
  v8 = [v7 heightAnchor];
  v9 = [v8 constraintEqualToConstant:70.0];
  [v9 setActive:1];

  v10 = [MEMORY[0x277D75348] whiteColor];
  [v7 setTintColor:v10];

  [v6 addArrangedSubview:v7];
  [v6 spacing];
  [v6 setCustomSpacing:v7 afterView:v11 * 1.75];
}

- (id)_addLabelWithText:(id)a3 color:(id)a4 font:(id)a5 toStack:(id)a6
{
  v9 = a5;
  v10 = MEMORY[0x277D756B8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  [v14 setTextColor:v12];

  if (v9)
  {
    [v14 setFont:v9];
  }

  else
  {
    v15 = [MEMORY[0x277CF0D60] preferredFontProvider];
    v16 = [v15 preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:1];
    [v14 setFont:v16];
  }

  [v14 setText:v13];

  [v14 setTextAlignment:1];
  [v14 setNumberOfLines:0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addArrangedSubview:v14];

  return v14;
}

@end