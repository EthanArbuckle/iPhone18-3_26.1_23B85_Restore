@interface HUAvatarTableViewCell
- (HFUserHandle)userHandle;
- (HUAvatarTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)description;
- (void)_setupConstraints;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAvatarSize:(double)size;
- (void)setContentConfiguration:(id)configuration;
- (void)setUserHandle:(id)handle;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUAvatarTableViewCell

- (HUAvatarTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = HUAvatarTableViewCell;
  v4 = [(HUAvatarTableViewCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [HUAvatarContentView alloc];
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    v7 = [(HUAvatarContentView *)v5 initWithConfiguration:cellConfiguration];
    avatarContentView = v4->_avatarContentView;
    v4->_avatarContentView = v7;

    contentView = [(HUAvatarTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_avatarContentView];

    v4->_showAccessLevelDescription = 0;
    defaultContentConfiguration = [(HUAvatarTableViewCell *)v4 defaultContentConfiguration];
    contentConfiguration = v4->_contentConfiguration;
    v4->_contentConfiguration = defaultContentConfiguration;

    [(HUAvatarTableViewCell *)v4 _setupConstraints];
  }

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  userHandle = [(HUAvatarTableViewCell *)self userHandle];
  userID = [userHandle userID];
  [v3 appendString:userID withName:@"userHandle"];

  item = [(HUAvatarTableViewCell *)self item];
  v7 = [v3 appendObject:item withName:@"item"];

  build = [v3 build];

  return build;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUAvatarTableViewCell;
  [(HUAvatarTableViewCell *)&v5 prepareForReuse];
  [(HUAvatarTableViewCell *)self setUserHandle:0];
  defaultContentConfiguration = [(HUAvatarTableViewCell *)self defaultContentConfiguration];
  avatarContentView = [(HUAvatarTableViewCell *)self avatarContentView];
  [avatarContentView setConfiguration:defaultContentConfiguration];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = HUAvatarTableViewCell;
  [(HUAvatarTableViewCell *)&v22 layoutSubviews];
  effectiveUserInterfaceLayoutDirection = [(HUAvatarTableViewCell *)self effectiveUserInterfaceLayoutDirection];
  avatarContentView = [(HUAvatarTableViewCell *)self avatarContentView];
  listContentView = [avatarContentView listContentView];
  textLayoutGuide = [listContentView textLayoutGuide];
  [textLayoutGuide layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  avatarContentView2 = [(HUAvatarTableViewCell *)self avatarContentView];
  listContentView2 = [avatarContentView2 listContentView];
  [(HUAvatarTableViewCell *)self convertRect:listContentView2 fromView:v8, v10, v12, v14];
  v18 = v17;
  v20 = v19;

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    [(HUAvatarTableViewCell *)self bounds];
    v18 = v21 - (v18 + v20);
  }

  [(HUAvatarTableViewCell *)self setSeparatorInset:0.0, v18, 0.0, 20.0];
}

- (HFUserHandle)userHandle
{
  avatarContentView = [(HUAvatarTableViewCell *)self avatarContentView];
  userHandle = [avatarContentView userHandle];

  return userHandle;
}

- (void)setUserHandle:(id)handle
{
  handleCopy = handle;
  avatarContentView = [(HUAvatarTableViewCell *)self avatarContentView];
  [avatarContentView setUserHandle:handleCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  defaultContentConfiguration = [(HUAvatarTableViewCell *)self defaultContentConfiguration];
  item = [(HUAvatarTableViewCell *)self item];
  v9 = [HUListContentConfigurationUtilities labelConfiguration:defaultContentConfiguration forItem:item];

  item2 = [(HUAvatarTableViewCell *)self item];
  latestResults = [item2 latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F80]];

  if ([(HUAvatarTableViewCell *)self showAccessLevelDescription]&& v8)
  {
    [v9 setSecondaryText:v8];
  }

  [(HUAvatarTableViewCell *)self setContentConfiguration:v9];
}

- (void)setContentConfiguration:(id)configuration
{
  objc_storeStrong(&self->_contentConfiguration, configuration);
  configurationCopy = configuration;
  avatarContentView = [(HUAvatarTableViewCell *)self avatarContentView];
  [avatarContentView setConfiguration:configurationCopy];
}

- (void)setAvatarSize:(double)size
{
  self->_avatarSize = size;
  avatarContentView = [(HUAvatarTableViewCell *)self avatarContentView];
  [avatarContentView setAvatarSize:size];
}

- (void)_setupConstraints
{
  v26[4] = *MEMORY[0x277D85DE8];
  avatarContentView = [(HUAvatarTableViewCell *)self avatarContentView];
  [avatarContentView setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = MEMORY[0x277CCAAD0];
  avatarContentView2 = [(HUAvatarTableViewCell *)self avatarContentView];
  leadingAnchor = [avatarContentView2 leadingAnchor];
  contentView = [(HUAvatarTableViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v21;
  avatarContentView3 = [(HUAvatarTableViewCell *)self avatarContentView];
  trailingAnchor = [avatarContentView3 trailingAnchor];
  contentView2 = [(HUAvatarTableViewCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[1] = v15;
  avatarContentView4 = [(HUAvatarTableViewCell *)self avatarContentView];
  topAnchor = [avatarContentView4 topAnchor];
  contentView3 = [(HUAvatarTableViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v7;
  avatarContentView5 = [(HUAvatarTableViewCell *)self avatarContentView];
  bottomAnchor = [avatarContentView5 bottomAnchor];
  contentView4 = [(HUAvatarTableViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v16 activateConstraints:v13];
}

@end