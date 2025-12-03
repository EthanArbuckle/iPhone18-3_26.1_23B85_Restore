@interface TKErrorViewController
+ (id)viewControllerForMessage:(id)message;
- (void)loadView;
- (void)setMessage:(id)message;
- (void)viewDidLoad;
@end

@implementation TKErrorViewController

+ (id)viewControllerForMessage:(id)message
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v5 = [[TKErrorViewController alloc] initWithNibName:0 bundle:?];
  [(TKErrorViewController *)v5 setMessage:location[0]];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)loadView
{
  v33[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v8 = MEMORY[0x277CBF3A0];
  v5 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(TKErrorViewController *)self setView:?];
  MEMORY[0x277D82BD8](v5);
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  view = [(TKErrorViewController *)self view];
  [view setBackgroundColor:whiteColor];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](whiteColor);
  v3 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{*v8, v8[1], v8[2], v8[3]}];
  label = self->_label;
  self->_label = v3;
  MEMORY[0x277D82BD8](label);
  [(UILabel *)self->_label setNumberOfLines:0];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_label setFont:?];
  MEMORY[0x277D82BD8](v9);
  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(TKErrorViewController *)self view];
  [view2 addSubview:self->_label];
  MEMORY[0x277D82BD8](view2);
  v11 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UILabel *)self->_label leadingAnchor];
  view3 = [(TKErrorViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:?];
  v33[0] = v17;
  trailingAnchor = [(UILabel *)self->_label trailingAnchor];
  view4 = [(TKErrorViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:?];
  v33[1] = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:?];
  [v11 activateConstraints:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](leadingAnchor);
  v21 = MEMORY[0x277CCAAD0];
  topAnchor = [(UILabel *)self->_label topAnchor];
  view5 = [(TKErrorViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:?];
  v32[0] = v27;
  bottomAnchor = [(UILabel *)self->_label bottomAnchor];
  view6 = [(TKErrorViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:?];
  v32[1] = v23;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  [v21 activateConstraints:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](topAnchor);
  *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = TKErrorViewController;
  [(TKErrorViewController *)&v2 viewDidLoad];
  [(UILabel *)selfCopy->_label setText:selfCopy->_message];
}

- (void)setMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v3 = [location[0] copy];
  message = selfCopy->_message;
  selfCopy->_message = v3;
  MEMORY[0x277D82BD8](message);
  [(UILabel *)selfCopy->_label setText:selfCopy->_message];
  objc_storeStrong(location, 0);
}

@end