@interface CPSAvatarViewController
- (CPSAvatarViewController)initWithEntity:(id)entity;
- (void)resetLayoutConstraints;
- (void)setupLayoutConstraints;
- (void)setupViews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
- (void)updateViews;
- (void)updateWithEntity:(id)entity;
- (void)viewDidLoad;
@end

@implementation CPSAvatarViewController

- (CPSAvatarViewController)initWithEntity:(id)entity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = CPSAvatarViewController;
  v6 = [(CPSAvatarViewController *)&v7 initWithNibName:0 bundle:?];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_entity, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)updateWithEntity:(id)entity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  [(CPSAvatarViewController *)selfCopy setEntity:location[0]];
  [(CPSAvatarViewController *)selfCopy updateViews];
  [(CPSAvatarViewController *)selfCopy resetLayoutConstraints];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSAvatarViewController;
  [(CPSAvatarViewController *)&v2 viewDidLoad];
  [(CPSAvatarViewController *)selfCopy setupViews];
  [(CPSAvatarViewController *)selfCopy updateViews];
}

- (void)setupViews
{
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  entity = [(CPSAvatarViewController *)self entity];
  imageSet = [(CPEntityImageProviding *)entity imageSet];
  image = [imageSet image];
  v2 = [v4 initWithImage:?];
  avatarImageView = self->_avatarImageView;
  self->_avatarImageView = v2;
  MEMORY[0x277D82BD8](avatarImageView);
  MEMORY[0x277D82BD8](image);
  MEMORY[0x277D82BD8](imageSet);
  avatarImageView = [(CPSAvatarViewController *)self avatarImageView];
  [(UIImageView *)avatarImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  avatarImageView2 = [(CPSAvatarViewController *)self avatarImageView];
  [(UIImageView *)avatarImageView2 setIsAccessibilityElement:0];
  avatarImageView3 = [(CPSAvatarViewController *)self avatarImageView];
  [(UIImageView *)avatarImageView3 setAccessibilityIdentifier:@"CPAvatarView"];
  view = [(CPSAvatarViewController *)self view];
  avatarImageView4 = [(CPSAvatarViewController *)self avatarImageView];
  [view addSubview:?];
  MEMORY[0x277D82BD8](avatarImageView4);
  MEMORY[0x277D82BD8](view);
}

- (void)updateViews
{
  entity = [(CPSAvatarViewController *)self entity];
  imageSet = [(CPEntityImageProviding *)entity imageSet];
  image = [imageSet image];
  [(UIImageView *)self->_avatarImageView setImage:?];
  MEMORY[0x277D82BD8](image);
  MEMORY[0x277D82BD8](imageSet);
  MEMORY[0x277D82BD8](entity);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v8.receiver = selfCopy;
  v8.super_class = CPSAvatarViewController;
  [(CPSAvatarViewController *)&v8 traitCollectionDidChange:location[0]];
  [(CPSAvatarViewController *)selfCopy resetLayoutConstraints];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v3 = labelColor;
  cGColor = [labelColor CGColor];
  avatarImageView = [(CPSAvatarViewController *)selfCopy avatarImageView];
  layer = [(UIImageView *)avatarImageView layer];
  [layer setBorderColor:cGColor];
  MEMORY[0x277D82BD8](layer);
  MEMORY[0x277D82BD8](avatarImageView);
  MEMORY[0x277D82BD8](labelColor);
  objc_storeStrong(location, 0);
}

- (void)resetLayoutConstraints
{
  layoutConstraints = [(CPSAvatarViewController *)self layoutConstraints];
  v7 = [(NSArray *)layoutConstraints count];
  *&v2 = MEMORY[0x277D82BD8](layoutConstraints).n128_u64[0];
  if (v7)
  {
    v3 = MEMORY[0x277CCAAD0];
    layoutConstraints2 = [(CPSAvatarViewController *)self layoutConstraints];
    [v3 deactivateConstraints:?];
    [(CPSAvatarViewController *)self setLayoutConstraints:0, MEMORY[0x277D82BD8](layoutConstraints2).n128_f64[0]];
    view = [(CPSAvatarViewController *)self view];
    [view setNeedsUpdateConstraints];
    MEMORY[0x277D82BD8](view);
  }
}

- (void)updateViewConstraints
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSAvatarViewController;
  [(CPSAvatarViewController *)&v5 updateViewConstraints];
  layoutConstraints = [(CPSAvatarViewController *)selfCopy layoutConstraints];
  v4 = [(NSArray *)layoutConstraints count];
  *&v2 = MEMORY[0x277D82BD8](layoutConstraints).n128_u64[0];
  if (!v4)
  {
    [(CPSAvatarViewController *)selfCopy setupLayoutConstraints];
  }
}

- (void)setupLayoutConstraints
{
  v26[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v24[1] = a2;
  v24[0] = objc_opt_new();
  view = [(CPSAvatarViewController *)selfCopy view];
  centerXAnchor = [view centerXAnchor];
  avatarImageView = [(CPSAvatarViewController *)selfCopy avatarImageView];
  centerXAnchor2 = [(UIImageView *)avatarImageView centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:?];
  v26[0] = v15;
  view2 = [(CPSAvatarViewController *)selfCopy view];
  topAnchor = [view2 topAnchor];
  avatarImageView2 = [(CPSAvatarViewController *)selfCopy avatarImageView];
  topAnchor2 = [(UIImageView *)avatarImageView2 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:?];
  v26[1] = v10;
  avatarImageView3 = [(CPSAvatarViewController *)selfCopy avatarImageView];
  widthAnchor = [(UIImageView *)avatarImageView3 widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:*&CPSAvatarSize];
  v26[2] = v7;
  avatarImageView4 = [(CPSAvatarViewController *)selfCopy avatarImageView];
  heightAnchor = [(UIImageView *)avatarImageView4 heightAnchor];
  v4 = [heightAnchor constraintEqualToConstant:*&CPSAvatarSize];
  v26[3] = v4;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](avatarImageView4);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](avatarImageView3);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](avatarImageView2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](avatarImageView);
  MEMORY[0x277D82BD8](centerXAnchor);
  *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
  [v24[0] addObjectsFromArray:{v23, v2}];
  v20 = [v24[0] copy];
  [(CPSAvatarViewController *)selfCopy setLayoutConstraints:?];
  *&v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = MEMORY[0x277CCAAD0];
  layoutConstraints = [(CPSAvatarViewController *)selfCopy layoutConstraints];
  [v21 activateConstraints:?];
  MEMORY[0x277D82BD8](layoutConstraints);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v24, 0);
}

@end