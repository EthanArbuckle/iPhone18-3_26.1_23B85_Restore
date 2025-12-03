@interface HUAvatarContentView
- (HUAvatarContentView)initWithConfiguration:(id)configuration;
- (UIView)avatarView;
- (void)setAvatarSize:(double)size;
- (void)setConfiguration:(id)configuration;
- (void)setUserHandle:(id)handle;
@end

@implementation HUAvatarContentView

- (HUAvatarContentView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v49.receiver = self;
  v49.super_class = HUAvatarContentView;
  v5 = [(HUAvatarContentView *)&v49 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(HUAvatarContentView *)v5 setPreservesSuperviewLayoutMargins:1];
    v6->_avatarSize = 37.0;
    v7 = MEMORY[0x277CBDBF8];
    defaultStore = [MEMORY[0x277D145B0] defaultStore];
    backingStore = [defaultStore backingStore];
    v10 = [v7 settingsWithContactStore:backingStore threeDTouchEnabled:0];

    v11 = [objc_alloc(MEMORY[0x277CBDBF0]) initWithSettings:v10];
    avatarViewController = v6->_avatarViewController;
    v6->_avatarViewController = v11;

    avatarView = [(HUAvatarContentView *)v6 avatarView];
    [avatarView setTranslatesAutoresizingMaskIntoConstraints:0];

    avatarView2 = [(HUAvatarContentView *)v6 avatarView];
    [(HUAvatarContentView *)v6 addSubview:avatarView2];

    v15 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:configurationCopy];
    listContentView = v6->_listContentView;
    v6->_listContentView = v15;

    [(UIListContentView *)v6->_listContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUAvatarContentView *)v6 addSubview:v6->_listContentView];
    array = [MEMORY[0x277CBEB18] array];
    avatarView3 = [(HUAvatarContentView *)v6 avatarView];
    centerYAnchor = [avatarView3 centerYAnchor];
    centerYAnchor2 = [(HUAvatarContentView *)v6 centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v21];

    avatarView4 = [(HUAvatarContentView *)v6 avatarView];
    heightAnchor = [avatarView4 heightAnchor];
    avatarView5 = [(HUAvatarContentView *)v6 avatarView];
    widthAnchor = [avatarView5 widthAnchor];
    v26 = [heightAnchor constraintEqualToAnchor:widthAnchor];
    [array addObject:v26];

    avatarView6 = [(HUAvatarContentView *)v6 avatarView];
    widthAnchor2 = [avatarView6 widthAnchor];
    v29 = [widthAnchor2 constraintEqualToConstant:v6->_avatarSize];
    [(HUAvatarContentView *)v6 setAvatarWidth:v29];

    avatarWidth = [(HUAvatarContentView *)v6 avatarWidth];
    [array addObject:avatarWidth];

    listContentView = [(HUAvatarContentView *)v6 listContentView];
    topAnchor = [listContentView topAnchor];
    topAnchor2 = [(HUAvatarContentView *)v6 topAnchor];
    v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v34];

    listContentView2 = [(HUAvatarContentView *)v6 listContentView];
    bottomAnchor = [listContentView2 bottomAnchor];
    bottomAnchor2 = [(HUAvatarContentView *)v6 bottomAnchor];
    v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v38];

    listContentView3 = [(HUAvatarContentView *)v6 listContentView];
    trailingAnchor = [listContentView3 trailingAnchor];
    layoutMarginsGuide = [(HUAvatarContentView *)v6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v43];

    listContentView4 = [(HUAvatarContentView *)v6 listContentView];
    heightAnchor2 = [listContentView4 heightAnchor];
    v46 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:60.0];

    LODWORD(v47) = 1148829696;
    [v46 setPriority:v47];
    [array addObject:v46];
    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v6;
}

- (void)setConfiguration:(id)configuration
{
  v35[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = [configurationCopy copyWithZone:0];
  configuration = self->_configuration;
  self->_configuration = v5;

  objc_opt_class();
  v7 = configurationCopy;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
    goto LABEL_14;
  }

  text = [v9 text];
  if (text)
  {
    v11 = text;
    userHandle = [(HUAvatarContentView *)self userHandle];
    if (userHandle)
    {
    }

    else
    {
      image = [v9 image];

      if (image)
      {
        goto LABEL_10;
      }

      v31 = MEMORY[0x277CBDB38];
      text2 = [v9 text];
      v11 = [v31 contactWithDisplayName:text2 emailOrPhoneNumber:0];

      v35[0] = v11;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
      avatarViewController = [(HUAvatarContentView *)self avatarViewController];
      [avatarViewController setContacts:v33];
    }
  }

LABEL_10:
  listContentView = [(HUAvatarContentView *)self listContentView];
  [listContentView setConfiguration:v9];

  v15 = MEMORY[0x277CCAAD0];
  dynamicConstraints = [(HUAvatarContentView *)self dynamicConstraints];
  [v15 deactivateConstraints:dynamicConstraints];

  array = [MEMORY[0x277CBEB18] array];
  image2 = [v9 image];

  avatarView = [(HUAvatarContentView *)self avatarView];
  v20 = avatarView;
  if (image2)
  {
    [avatarView setHidden:1];

    listContentView2 = [(HUAvatarContentView *)self listContentView];
    leadingAnchor = [listContentView2 leadingAnchor];
    leadingAnchor2 = [(HUAvatarContentView *)self leadingAnchor];
    v23LeadingAnchor = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v23LeadingAnchor];
  }

  else
  {
    [avatarView setHidden:0];

    avatarView2 = [(HUAvatarContentView *)self avatarView];
    leadingAnchor3 = [avatarView2 leadingAnchor];
    layoutMarginsGuide = [(HUAvatarContentView *)self layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v29 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array addObject:v29];

    listContentView2 = [(HUAvatarContentView *)self avatarView];
    leadingAnchor = [listContentView2 trailingAnchor];
    leadingAnchor2 = [(HUAvatarContentView *)self listContentView];
    v23LeadingAnchor = [leadingAnchor2 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:v23LeadingAnchor];
    [array addObject:v30];
  }

  [(HUAvatarContentView *)self setDynamicConstraints:array];
  [MEMORY[0x277CCAAD0] activateConstraints:array];

LABEL_14:
}

- (void)setUserHandle:(id)handle
{
  v15[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  objc_storeStrong(&self->_userHandle, handle);
  if (handleCopy)
  {
    defaultStore = [MEMORY[0x277D145B0] defaultStore];
    avatarViewController = [(HUAvatarContentView *)self avatarViewController];
    descriptorForRequiredKeys = [avatarViewController descriptorForRequiredKeys];
    v15[0] = descriptorForRequiredKeys;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v10 = [defaultStore contactForUserHandle:handleCopy withKeys:v9];

    v14 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    avatarViewController2 = [(HUAvatarContentView *)self avatarViewController];
    [avatarViewController2 setContacts:v11];
  }

  else
  {
    avatarViewController3 = [(HUAvatarContentView *)self avatarViewController];
    [avatarViewController3 setContacts:MEMORY[0x277CBEBF8]];
  }
}

- (UIView)avatarView
{
  avatarViewController = [(HUAvatarContentView *)self avatarViewController];
  view = [avatarViewController view];

  return view;
}

- (void)setAvatarSize:(double)size
{
  self->_avatarSize = size;
  avatarWidth = [(HUAvatarContentView *)self avatarWidth];
  [avatarWidth setConstant:size];
}

@end