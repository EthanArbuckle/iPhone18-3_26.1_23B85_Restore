@interface CPSAvatarViewController
- (CPSAvatarViewController)initWithEntity:(id)a3;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateViewConstraints;
- (void)updateViews;
- (void)updateWithEntity:(id)a3;
- (void)viewDidLoad;
@end

@implementation CPSAvatarViewController

- (CPSAvatarViewController)initWithEntity:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = CPSAvatarViewController;
  v6 = [(CPSAvatarViewController *)&v7 initWithNibName:0 bundle:?];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_entity, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)updateWithEntity:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(CPSAvatarViewController *)v4 setEntity:location[0]];
  [(CPSAvatarViewController *)v4 updateViews];
  [(CPSAvatarViewController *)v4 resetLayoutConstraints];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSAvatarViewController;
  [(CPSAvatarViewController *)&v2 viewDidLoad];
  [(CPSAvatarViewController *)v4 setupViews];
  [(CPSAvatarViewController *)v4 updateViews];
}

- (void)setupViews
{
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v7 = [(CPSAvatarViewController *)self entity];
  v6 = [(CPEntityImageProviding *)v7 imageSet];
  v5 = [v6 image];
  v2 = [v4 initWithImage:?];
  avatarImageView = self->_avatarImageView;
  self->_avatarImageView = v2;
  MEMORY[0x277D82BD8](avatarImageView);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v8 = [(CPSAvatarViewController *)self avatarImageView];
  [(UIImageView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(CPSAvatarViewController *)self avatarImageView];
  [(UIImageView *)v9 setIsAccessibilityElement:0];
  v10 = [(CPSAvatarViewController *)self avatarImageView];
  [(UIImageView *)v10 setAccessibilityIdentifier:@"CPAvatarView"];
  v12 = [(CPSAvatarViewController *)self view];
  v11 = [(CPSAvatarViewController *)self avatarImageView];
  [v12 addSubview:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
}

- (void)updateViews
{
  v4 = [(CPSAvatarViewController *)self entity];
  v3 = [(CPEntityImageProviding *)v4 imageSet];
  v2 = [v3 image];
  [(UIImageView *)self->_avatarImageView setImage:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8.receiver = v10;
  v8.super_class = CPSAvatarViewController;
  [(CPSAvatarViewController *)&v8 traitCollectionDidChange:location[0]];
  [(CPSAvatarViewController *)v10 resetLayoutConstraints];
  v7 = [MEMORY[0x277D75348] labelColor];
  v3 = v7;
  v4 = [v7 CGColor];
  v6 = [(CPSAvatarViewController *)v10 avatarImageView];
  v5 = [(UIImageView *)v6 layer];
  [v5 setBorderColor:v4];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
}

- (void)resetLayoutConstraints
{
  v6 = [(CPSAvatarViewController *)self layoutConstraints];
  v7 = [(NSArray *)v6 count];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v3 = MEMORY[0x277CCAAD0];
    v4 = [(CPSAvatarViewController *)self layoutConstraints];
    [v3 deactivateConstraints:?];
    [(CPSAvatarViewController *)self setLayoutConstraints:0, MEMORY[0x277D82BD8](v4).n128_f64[0]];
    v5 = [(CPSAvatarViewController *)self view];
    [v5 setNeedsUpdateConstraints];
    MEMORY[0x277D82BD8](v5);
  }
}

- (void)updateViewConstraints
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSAvatarViewController;
  [(CPSAvatarViewController *)&v5 updateViewConstraints];
  v3 = [(CPSAvatarViewController *)v7 layoutConstraints];
  v4 = [(NSArray *)v3 count];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (!v4)
  {
    [(CPSAvatarViewController *)v7 setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25 = self;
  v24[1] = a2;
  v24[0] = objc_opt_new();
  v19 = [(CPSAvatarViewController *)v25 view];
  v18 = [v19 centerXAnchor];
  v17 = [(CPSAvatarViewController *)v25 avatarImageView];
  v16 = [(UIImageView *)v17 centerXAnchor];
  v15 = [v18 constraintEqualToAnchor:?];
  v26[0] = v15;
  v14 = [(CPSAvatarViewController *)v25 view];
  v13 = [v14 topAnchor];
  v12 = [(CPSAvatarViewController *)v25 avatarImageView];
  v11 = [(UIImageView *)v12 topAnchor];
  v10 = [v13 constraintEqualToAnchor:?];
  v26[1] = v10;
  v9 = [(CPSAvatarViewController *)v25 avatarImageView];
  v8 = [(UIImageView *)v9 widthAnchor];
  v7 = [v8 constraintEqualToConstant:*&CPSAvatarSize];
  v26[2] = v7;
  v6 = [(CPSAvatarViewController *)v25 avatarImageView];
  v5 = [(UIImageView *)v6 heightAnchor];
  v4 = [v5 constraintEqualToConstant:*&CPSAvatarSize];
  v26[3] = v4;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *&v2 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  [v24[0] addObjectsFromArray:{v23, v2}];
  v20 = [v24[0] copy];
  [(CPSAvatarViewController *)v25 setLayoutConstraints:?];
  *&v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = MEMORY[0x277CCAAD0];
  v22 = [(CPSAvatarViewController *)v25 layoutConstraints];
  [v21 activateConstraints:?];
  MEMORY[0x277D82BD8](v22);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v24, 0);
}

@end