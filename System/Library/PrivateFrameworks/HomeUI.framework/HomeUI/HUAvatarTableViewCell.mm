@interface HUAvatarTableViewCell
- (HFUserHandle)userHandle;
- (HUAvatarTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)description;
- (void)_setupConstraints;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAvatarSize:(double)a3;
- (void)setContentConfiguration:(id)a3;
- (void)setUserHandle:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUAvatarTableViewCell

- (HUAvatarTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = HUAvatarTableViewCell;
  v4 = [(HUAvatarTableViewCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [HUAvatarContentView alloc];
    v6 = [MEMORY[0x277D756E0] cellConfiguration];
    v7 = [(HUAvatarContentView *)v5 initWithConfiguration:v6];
    avatarContentView = v4->_avatarContentView;
    v4->_avatarContentView = v7;

    v9 = [(HUAvatarTableViewCell *)v4 contentView];
    [v9 addSubview:v4->_avatarContentView];

    v4->_showAccessLevelDescription = 0;
    v10 = [(HUAvatarTableViewCell *)v4 defaultContentConfiguration];
    contentConfiguration = v4->_contentConfiguration;
    v4->_contentConfiguration = v10;

    [(HUAvatarTableViewCell *)v4 _setupConstraints];
  }

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HUAvatarTableViewCell *)self userHandle];
  v5 = [v4 userID];
  [v3 appendString:v5 withName:@"userHandle"];

  v6 = [(HUAvatarTableViewCell *)self item];
  v7 = [v3 appendObject:v6 withName:@"item"];

  v8 = [v3 build];

  return v8;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUAvatarTableViewCell;
  [(HUAvatarTableViewCell *)&v5 prepareForReuse];
  [(HUAvatarTableViewCell *)self setUserHandle:0];
  v3 = [(HUAvatarTableViewCell *)self defaultContentConfiguration];
  v4 = [(HUAvatarTableViewCell *)self avatarContentView];
  [v4 setConfiguration:v3];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = HUAvatarTableViewCell;
  [(HUAvatarTableViewCell *)&v22 layoutSubviews];
  v3 = [(HUAvatarTableViewCell *)self effectiveUserInterfaceLayoutDirection];
  v4 = [(HUAvatarTableViewCell *)self avatarContentView];
  v5 = [v4 listContentView];
  v6 = [v5 textLayoutGuide];
  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(HUAvatarTableViewCell *)self avatarContentView];
  v16 = [v15 listContentView];
  [(HUAvatarTableViewCell *)self convertRect:v16 fromView:v8, v10, v12, v14];
  v18 = v17;
  v20 = v19;

  if (v3 == 1)
  {
    [(HUAvatarTableViewCell *)self bounds];
    v18 = v21 - (v18 + v20);
  }

  [(HUAvatarTableViewCell *)self setSeparatorInset:0.0, v18, 0.0, 20.0];
}

- (HFUserHandle)userHandle
{
  v2 = [(HUAvatarTableViewCell *)self avatarContentView];
  v3 = [v2 userHandle];

  return v3;
}

- (void)setUserHandle:(id)a3
{
  v4 = a3;
  v5 = [(HUAvatarTableViewCell *)self avatarContentView];
  [v5 setUserHandle:v4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUAvatarTableViewCell *)self defaultContentConfiguration];
  v5 = [(HUAvatarTableViewCell *)self item];
  v9 = [HUListContentConfigurationUtilities labelConfiguration:v4 forItem:v5];

  v6 = [(HUAvatarTableViewCell *)self item];
  v7 = [v6 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F80]];

  if ([(HUAvatarTableViewCell *)self showAccessLevelDescription]&& v8)
  {
    [v9 setSecondaryText:v8];
  }

  [(HUAvatarTableViewCell *)self setContentConfiguration:v9];
}

- (void)setContentConfiguration:(id)a3
{
  objc_storeStrong(&self->_contentConfiguration, a3);
  v5 = a3;
  v6 = [(HUAvatarTableViewCell *)self avatarContentView];
  [v6 setConfiguration:v5];
}

- (void)setAvatarSize:(double)a3
{
  self->_avatarSize = a3;
  v4 = [(HUAvatarTableViewCell *)self avatarContentView];
  [v4 setAvatarSize:a3];
}

- (void)_setupConstraints
{
  v26[4] = *MEMORY[0x277D85DE8];
  v3 = [(HUAvatarTableViewCell *)self avatarContentView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = MEMORY[0x277CCAAD0];
  v25 = [(HUAvatarTableViewCell *)self avatarContentView];
  v23 = [v25 leadingAnchor];
  v24 = [(HUAvatarTableViewCell *)self contentView];
  v22 = [v24 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v26[0] = v21;
  v20 = [(HUAvatarTableViewCell *)self avatarContentView];
  v18 = [v20 trailingAnchor];
  v19 = [(HUAvatarTableViewCell *)self contentView];
  v17 = [v19 trailingAnchor];
  v15 = [v18 constraintEqualToAnchor:v17];
  v26[1] = v15;
  v14 = [(HUAvatarTableViewCell *)self avatarContentView];
  v4 = [v14 topAnchor];
  v5 = [(HUAvatarTableViewCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v26[2] = v7;
  v8 = [(HUAvatarTableViewCell *)self avatarContentView];
  v9 = [v8 bottomAnchor];
  v10 = [(HUAvatarTableViewCell *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v26[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v16 activateConstraints:v13];
}

@end