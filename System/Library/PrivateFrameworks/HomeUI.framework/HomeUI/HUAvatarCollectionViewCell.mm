@interface HUAvatarCollectionViewCell
- (HFUserHandle)userHandle;
- (HUAvatarCollectionViewCell)initWithFrame:(CGRect)a3;
- (NSString)description;
- (void)_setupConstraints;
- (void)prepareForReuse;
- (void)setAvatarSize:(double)a3;
- (void)setContentConfiguration:(id)a3;
- (void)setUserHandle:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUAvatarCollectionViewCell

- (HUAvatarCollectionViewCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = HUAvatarCollectionViewCell;
  v3 = [(HUAvatarCollectionViewCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [HUAvatarContentView alloc];
    v5 = [MEMORY[0x277D756E0] cellConfiguration];
    v6 = [(HUAvatarContentView *)v4 initWithConfiguration:v5];
    avatarContentView = v3->_avatarContentView;
    v3->_avatarContentView = v6;

    v8 = [(HUAvatarCollectionViewCell *)v3 contentView];
    [v8 addSubview:v3->_avatarContentView];

    v3->_showAccessLevelDescription = 0;
    v9 = [(HUAvatarCollectionViewCell *)v3 defaultContentConfiguration];
    contentConfiguration = v3->_contentConfiguration;
    v3->_contentConfiguration = v9;

    [(HUAvatarCollectionViewCell *)v3 _setupConstraints];
  }

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUAvatarCollectionViewCell *)self userHandle];
  v5 = [v4 userID];
  [v3 appendString:v5 withName:@"userHandle"];

  v6 = [(HUAvatarCollectionViewCell *)self item];
  v7 = [v3 appendObject:v6 withName:@"item"];

  v8 = [v3 build];

  return v8;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUAvatarCollectionViewCell;
  [(HUAvatarCollectionViewCell *)&v5 prepareForReuse];
  [(HUAvatarCollectionViewCell *)self setUserHandle:0];
  v3 = [(HUAvatarCollectionViewCell *)self defaultContentConfiguration];
  v4 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [v4 setConfiguration:v3];
}

- (HFUserHandle)userHandle
{
  v2 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  v3 = [v2 userHandle];

  return v3;
}

- (void)setUserHandle:(id)a3
{
  v4 = a3;
  v5 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [v5 setUserHandle:v4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUAvatarCollectionViewCell *)self item];
  v9 = [HUListContentConfigurationUtilities labelDefaultConfigurationForItem:v4];

  v5 = [(HUAvatarCollectionViewCell *)self item];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F80]];

  if ([(HUAvatarCollectionViewCell *)self showAccessLevelDescription]&& v7)
  {
    [v9 setSecondaryText:v7];
  }

  v8 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [v8 setConfiguration:v9];
}

- (void)setContentConfiguration:(id)a3
{
  objc_storeStrong(&self->_contentConfiguration, a3);
  v5 = a3;
  v6 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [v6 setConfiguration:v5];
}

- (void)setAvatarSize:(double)a3
{
  self->_avatarSize = a3;
  v4 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [v4 setAvatarSize:a3];
}

- (void)_setupConstraints
{
  v26[4] = *MEMORY[0x277D85DE8];
  v3 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = MEMORY[0x277CCAAD0];
  v25 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  v23 = [v25 leadingAnchor];
  v24 = [(HUAvatarCollectionViewCell *)self contentView];
  v22 = [v24 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v26[0] = v21;
  v20 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  v18 = [v20 trailingAnchor];
  v19 = [(HUAvatarCollectionViewCell *)self contentView];
  v17 = [v19 trailingAnchor];
  v15 = [v18 constraintEqualToAnchor:v17];
  v26[1] = v15;
  v14 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  v4 = [v14 topAnchor];
  v5 = [(HUAvatarCollectionViewCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v26[2] = v7;
  v8 = [(HUAvatarCollectionViewCell *)self avatarContentView];
  v9 = [v8 bottomAnchor];
  v10 = [(HUAvatarCollectionViewCell *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v26[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v16 activateConstraints:v13];
}

@end