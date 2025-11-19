@interface TKErrorViewController
+ (id)viewControllerForMessage:(id)a3;
- (void)loadView;
- (void)setMessage:(id)a3;
- (void)viewDidLoad;
@end

@implementation TKErrorViewController

+ (id)viewControllerForMessage:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v7 = [MEMORY[0x277D75348] whiteColor];
  v6 = [(TKErrorViewController *)self view];
  [v6 setBackgroundColor:v7];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
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
  v10 = [(TKErrorViewController *)self view];
  [v10 addSubview:self->_label];
  MEMORY[0x277D82BD8](v10);
  v11 = MEMORY[0x277CCAAD0];
  v20 = [(UILabel *)self->_label leadingAnchor];
  v19 = [(TKErrorViewController *)self view];
  v18 = [v19 leadingAnchor];
  v17 = [v20 constraintEqualToAnchor:?];
  v33[0] = v17;
  v16 = [(UILabel *)self->_label trailingAnchor];
  v15 = [(TKErrorViewController *)self view];
  v14 = [v15 trailingAnchor];
  v13 = [v16 constraintEqualToAnchor:?];
  v33[1] = v13;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:?];
  [v11 activateConstraints:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v21 = MEMORY[0x277CCAAD0];
  v30 = [(UILabel *)self->_label topAnchor];
  v29 = [(TKErrorViewController *)self view];
  v28 = [v29 topAnchor];
  v27 = [v30 constraintEqualToAnchor:?];
  v32[0] = v27;
  v26 = [(UILabel *)self->_label bottomAnchor];
  v25 = [(TKErrorViewController *)self view];
  v24 = [v25 bottomAnchor];
  v23 = [v26 constraintEqualToAnchor:?];
  v32[1] = v23;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  [v21 activateConstraints:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = TKErrorViewController;
  [(TKErrorViewController *)&v2 viewDidLoad];
  [(UILabel *)v4->_label setText:v4->_message];
}

- (void)setMessage:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  message = v6->_message;
  v6->_message = v3;
  MEMORY[0x277D82BD8](message);
  [(UILabel *)v6->_label setText:v6->_message];
  objc_storeStrong(location, 0);
}

@end