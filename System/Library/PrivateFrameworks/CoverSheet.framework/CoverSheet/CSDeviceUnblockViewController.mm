@interface CSDeviceUnblockViewController
- (CSDeviceUnblockViewController)initWithViewModel:(id)model;
- (id)_addLabelWithText:(id)text color:(id)color font:(id)font toStack:(id)stack;
- (void)_addHeaderCancelIfNeededToStack:(id)stack;
- (void)_addSystemImageWithName:(id)name toStack:(id)stack;
- (void)setTimeoutString:(id)string;
- (void)viewDidLoad;
@end

@implementation CSDeviceUnblockViewController

- (CSDeviceUnblockViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = CSDeviceUnblockViewController;
  v6 = [(CSDeviceUnblockViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
  }

  return v7;
}

- (void)viewDidLoad
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_21EB05000, a2, OS_LOG_TYPE_DEBUG, "Last backup string: %@", &v2, 0xCu);
}

- (void)setTimeoutString:(id)string
{
  bodyLabel = self->_bodyLabel;
  v4 = [(CSDeviceUnblockViewModel *)self->_viewModel bodyTextForTimeout:string];
  [(UILabel *)bodyLabel setText:v4];
}

- (void)_addHeaderCancelIfNeededToStack:(id)stack
{
  v4 = MEMORY[0x277D75A68];
  stackCopy = stack;
  v14 = objc_alloc_init(v4);
  [v14 setAxis:0];
  [stackCopy addArrangedSubview:v14];
  [stackCopy spacing];
  [stackCopy setCustomSpacing:v14 afterView:v6 * 1.75];

  v7 = [MEMORY[0x277D75220] buttonWithType:0];
  [v7 addTarget:self->_viewModel action:sel_cancelButtonAction forControlEvents:64];
  cancelButtonText = [(CSDeviceUnblockViewModel *)self->_viewModel cancelButtonText];
  [v7 setTitle:cancelButtonText forState:0];

  titleLabel = [v7 titleLabel];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [titleLabel setFont:v10];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v7 setTitleColor:labelColor forState:0];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 addArrangedSubview:v7];
  v12 = objc_opt_new();
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1132068864;
  [v12 setContentHuggingPriority:0 forAxis:v13];
  [v14 addArrangedSubview:v12];
}

- (void)_addSystemImageWithName:(id)name toStack:(id)stack
{
  v5 = MEMORY[0x277D755B8];
  stackCopy = stack;
  v12 = [v5 _systemImageNamed:name];
  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
  [v7 setContentMode:1];
  heightAnchor = [v7 heightAnchor];
  v9 = [heightAnchor constraintEqualToConstant:70.0];
  [v9 setActive:1];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v7 setTintColor:whiteColor];

  [stackCopy addArrangedSubview:v7];
  [stackCopy spacing];
  [stackCopy setCustomSpacing:v7 afterView:v11 * 1.75];
}

- (id)_addLabelWithText:(id)text color:(id)color font:(id)font toStack:(id)stack
{
  fontCopy = font;
  v10 = MEMORY[0x277D756B8];
  stackCopy = stack;
  colorCopy = color;
  textCopy = text;
  v14 = objc_alloc_init(v10);
  [v14 setTextColor:colorCopy];

  if (fontCopy)
  {
    [v14 setFont:fontCopy];
  }

  else
  {
    preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
    v16 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:1];
    [v14 setFont:v16];
  }

  [v14 setText:textCopy];

  [v14 setTextAlignment:1];
  [v14 setNumberOfLines:0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [stackCopy addArrangedSubview:v14];

  return v14;
}

@end