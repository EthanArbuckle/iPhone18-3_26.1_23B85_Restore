@interface HUAvatarContentView
- (HUAvatarContentView)initWithConfiguration:(id)a3;
- (UIView)avatarView;
- (void)setAvatarSize:(double)a3;
- (void)setConfiguration:(id)a3;
- (void)setUserHandle:(id)a3;
@end

@implementation HUAvatarContentView

- (HUAvatarContentView)initWithConfiguration:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = HUAvatarContentView;
  v5 = [(HUAvatarContentView *)&v49 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(HUAvatarContentView *)v5 setPreservesSuperviewLayoutMargins:1];
    v6->_avatarSize = 37.0;
    v7 = MEMORY[0x277CBDBF8];
    v8 = [MEMORY[0x277D145B0] defaultStore];
    v9 = [v8 backingStore];
    v10 = [v7 settingsWithContactStore:v9 threeDTouchEnabled:0];

    v11 = [objc_alloc(MEMORY[0x277CBDBF0]) initWithSettings:v10];
    avatarViewController = v6->_avatarViewController;
    v6->_avatarViewController = v11;

    v13 = [(HUAvatarContentView *)v6 avatarView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(HUAvatarContentView *)v6 avatarView];
    [(HUAvatarContentView *)v6 addSubview:v14];

    v15 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:v4];
    listContentView = v6->_listContentView;
    v6->_listContentView = v15;

    [(UIListContentView *)v6->_listContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUAvatarContentView *)v6 addSubview:v6->_listContentView];
    v17 = [MEMORY[0x277CBEB18] array];
    v18 = [(HUAvatarContentView *)v6 avatarView];
    v19 = [v18 centerYAnchor];
    v20 = [(HUAvatarContentView *)v6 centerYAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v17 addObject:v21];

    v22 = [(HUAvatarContentView *)v6 avatarView];
    v23 = [v22 heightAnchor];
    v24 = [(HUAvatarContentView *)v6 avatarView];
    v25 = [v24 widthAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v17 addObject:v26];

    v27 = [(HUAvatarContentView *)v6 avatarView];
    v28 = [v27 widthAnchor];
    v29 = [v28 constraintEqualToConstant:v6->_avatarSize];
    [(HUAvatarContentView *)v6 setAvatarWidth:v29];

    v30 = [(HUAvatarContentView *)v6 avatarWidth];
    [v17 addObject:v30];

    v31 = [(HUAvatarContentView *)v6 listContentView];
    v32 = [v31 topAnchor];
    v33 = [(HUAvatarContentView *)v6 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v17 addObject:v34];

    v35 = [(HUAvatarContentView *)v6 listContentView];
    v36 = [v35 bottomAnchor];
    v37 = [(HUAvatarContentView *)v6 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v17 addObject:v38];

    v39 = [(HUAvatarContentView *)v6 listContentView];
    v40 = [v39 trailingAnchor];
    v41 = [(HUAvatarContentView *)v6 layoutMarginsGuide];
    v42 = [v41 trailingAnchor];
    v43 = [v40 constraintEqualToAnchor:v42];
    [v17 addObject:v43];

    v44 = [(HUAvatarContentView *)v6 listContentView];
    v45 = [v44 heightAnchor];
    v46 = [v45 constraintGreaterThanOrEqualToConstant:60.0];

    LODWORD(v47) = 1148829696;
    [v46 setPriority:v47];
    [v17 addObject:v46];
    [MEMORY[0x277CCAAD0] activateConstraints:v17];
  }

  return v6;
}

- (void)setConfiguration:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 copyWithZone:0];
  configuration = self->_configuration;
  self->_configuration = v5;

  objc_opt_class();
  v7 = v4;
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

  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = [(HUAvatarContentView *)self userHandle];
    if (v12)
    {
    }

    else
    {
      v13 = [v9 image];

      if (v13)
      {
        goto LABEL_10;
      }

      v31 = MEMORY[0x277CBDB38];
      v32 = [v9 text];
      v11 = [v31 contactWithDisplayName:v32 emailOrPhoneNumber:0];

      v35[0] = v11;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
      v34 = [(HUAvatarContentView *)self avatarViewController];
      [v34 setContacts:v33];
    }
  }

LABEL_10:
  v14 = [(HUAvatarContentView *)self listContentView];
  [v14 setConfiguration:v9];

  v15 = MEMORY[0x277CCAAD0];
  v16 = [(HUAvatarContentView *)self dynamicConstraints];
  [v15 deactivateConstraints:v16];

  v17 = [MEMORY[0x277CBEB18] array];
  v18 = [v9 image];

  v19 = [(HUAvatarContentView *)self avatarView];
  v20 = v19;
  if (v18)
  {
    [v19 setHidden:1];

    v21 = [(HUAvatarContentView *)self listContentView];
    v22 = [v21 leadingAnchor];
    v23 = [(HUAvatarContentView *)self leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v17 addObject:v24];
  }

  else
  {
    [v19 setHidden:0];

    v25 = [(HUAvatarContentView *)self avatarView];
    v26 = [v25 leadingAnchor];
    v27 = [(HUAvatarContentView *)self layoutMarginsGuide];
    v28 = [v27 leadingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    [v17 addObject:v29];

    v21 = [(HUAvatarContentView *)self avatarView];
    v22 = [v21 trailingAnchor];
    v23 = [(HUAvatarContentView *)self listContentView];
    v24 = [v23 leadingAnchor];
    v30 = [v22 constraintEqualToAnchor:v24];
    [v17 addObject:v30];
  }

  [(HUAvatarContentView *)self setDynamicConstraints:v17];
  [MEMORY[0x277CCAAD0] activateConstraints:v17];

LABEL_14:
}

- (void)setUserHandle:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_userHandle, a3);
  if (v5)
  {
    v6 = [MEMORY[0x277D145B0] defaultStore];
    v7 = [(HUAvatarContentView *)self avatarViewController];
    v8 = [v7 descriptorForRequiredKeys];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v10 = [v6 contactForUserHandle:v5 withKeys:v9];

    v14 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v12 = [(HUAvatarContentView *)self avatarViewController];
    [v12 setContacts:v11];
  }

  else
  {
    v13 = [(HUAvatarContentView *)self avatarViewController];
    [v13 setContacts:MEMORY[0x277CBEBF8]];
  }
}

- (UIView)avatarView
{
  v2 = [(HUAvatarContentView *)self avatarViewController];
  v3 = [v2 view];

  return v3;
}

- (void)setAvatarSize:(double)a3
{
  self->_avatarSize = a3;
  v4 = [(HUAvatarContentView *)self avatarWidth];
  [v4 setConstant:a3];
}

@end