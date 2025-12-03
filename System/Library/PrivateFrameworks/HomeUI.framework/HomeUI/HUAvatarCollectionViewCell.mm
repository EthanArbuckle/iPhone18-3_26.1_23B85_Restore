@interface HUAvatarCollectionViewCell
- (HFUserHandle)userHandle;
- (HUAvatarCollectionViewCell)initWithFrame:(CGRect)frame;
- (NSString)description;
- (void)_setupConstraints;
- (void)prepareForReuse;
- (void)setAvatarSize:(double)size;
- (void)setContentConfiguration:(id)configuration;
- (void)setUserHandle:(id)handle;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUAvatarCollectionViewCell

- (HUAvatarCollectionViewCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = HUAvatarCollectionViewCell;
  v3 = [(HUAvatarCollectionViewCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [HUAvatarContentView alloc];
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    v6 = [(HUAvatarContentView *)v4 initWithConfiguration:cellConfiguration];
    avatarContentView = v3->_avatarContentView;
    v3->_avatarContentView = v6;

    contentView = [(HUAvatarCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_avatarContentView];

    v3->_showAccessLevelDescription = 0;
    defaultContentConfiguration = [(HUAvatarCollectionViewCell *)v3 defaultContentConfiguration];
    contentConfiguration = v3->_contentConfiguration;
    v3->_contentConfiguration = defaultContentConfiguration;

    [(HUAvatarCollectionViewCell *)v3 _setupConstraints];
  }

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  userHandle = [(HUAvatarCollectionViewCell *)self userHandle];
  userID = [userHandle userID];
  [v3 appendString:userID withName:@"userHandle"];

  item = [(HUAvatarCollectionViewCell *)self item];
  v7 = [v3 appendObject:item withName:@"item"];

  build = [v3 build];

  return build;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUAvatarCollectionViewCell;
  [(HUAvatarCollectionViewCell *)&v5 prepareForReuse];
  [(HUAvatarCollectionViewCell *)self setUserHandle:0];
  defaultContentConfiguration = [(HUAvatarCollectionViewCell *)self defaultContentConfiguration];
  avatarContentView = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [avatarContentView setConfiguration:defaultContentConfiguration];
}

- (HFUserHandle)userHandle
{
  avatarContentView = [(HUAvatarCollectionViewCell *)self avatarContentView];
  userHandle = [avatarContentView userHandle];

  return userHandle;
}

- (void)setUserHandle:(id)handle
{
  handleCopy = handle;
  avatarContentView = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [avatarContentView setUserHandle:handleCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUAvatarCollectionViewCell *)self item];
  v9 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:item];

  item2 = [(HUAvatarCollectionViewCell *)self item];
  latestResults = [item2 latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F80]];

  if ([(HUAvatarCollectionViewCell *)self showAccessLevelDescription]&& v7)
  {
    [v9 setSecondaryText:v7];
  }

  avatarContentView = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [avatarContentView setConfiguration:v9];
}

- (void)setContentConfiguration:(id)configuration
{
  objc_storeStrong(&self->_contentConfiguration, configuration);
  configurationCopy = configuration;
  avatarContentView = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [avatarContentView setConfiguration:configurationCopy];
}

- (void)setAvatarSize:(double)size
{
  self->_avatarSize = size;
  avatarContentView = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [avatarContentView setAvatarSize:size];
}

- (void)_setupConstraints
{
  v26[4] = *MEMORY[0x277D85DE8];
  avatarContentView = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [avatarContentView setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = MEMORY[0x277CCAAD0];
  avatarContentView2 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  leadingAnchor = [avatarContentView2 leadingAnchor];
  contentView = [(HUAvatarCollectionViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v21;
  avatarContentView3 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  trailingAnchor = [avatarContentView3 trailingAnchor];
  contentView2 = [(HUAvatarCollectionViewCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[1] = v15;
  avatarContentView4 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  topAnchor = [avatarContentView4 topAnchor];
  contentView3 = [(HUAvatarCollectionViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v7;
  avatarContentView5 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  bottomAnchor = [avatarContentView5 bottomAnchor];
  contentView4 = [(HUAvatarCollectionViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v16 activateConstraints:v13];
}

@end