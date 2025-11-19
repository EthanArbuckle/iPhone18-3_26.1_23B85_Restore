@interface HUPresenceUserCell
- (HUPresenceUserCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupConstraints;
- (void)_updateCustomSeparatorInset;
- (void)_updateDescriptionText;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)a3;
- (void)setDeviceName:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setUserHandle:(id)a3;
- (void)setUserName:(id)a3;
@end

@implementation HUPresenceUserCell

- (HUPresenceUserCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v45.receiver = self;
  v45.super_class = HUPresenceUserCell;
  v7 = [(HUPresenceUserCell *)&v45 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = objc_alloc_init(HUTitleDescriptionContentView);
    titleDescriptionView = v7->_titleDescriptionView;
    v7->_titleDescriptionView = v8;

    [(HUTitleDescriptionContentView *)v7->_titleDescriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(HUPresenceUserCell *)v7 contentView];
    [v10 addSubview:v7->_titleDescriptionView];

    v11 = MEMORY[0x277CBDBF8];
    v12 = [MEMORY[0x277D145B0] defaultStore];
    v13 = [v12 backingStore];
    v14 = [v11 settingsWithContactStore:v13 threeDTouchEnabled:0];

    v15 = [objc_alloc(MEMORY[0x277CBDBF0]) initWithSettings:v14];
    avatarViewController = v7->_avatarViewController;
    v7->_avatarViewController = v15;

    objc_initWeak(&location, v7);
    v17 = [HULayoutContainerView alloc];
    v18 = [(HUPresenceUserCell *)v7 avatarViewController];
    v19 = [v18 view];
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __52__HUPresenceUserCell_initWithStyle_reuseIdentifier___block_invoke;
    v42 = &unk_277DBF330;
    objc_copyWeak(&v43, &location);
    v20 = [(HULayoutContainerView *)v17 initWithContentView:v19 layoutBlock:&v39];
    avatarContainerView = v7->_avatarContainerView;
    v7->_avatarContainerView = v20;

    [(HULayoutContainerView *)v7->_avatarContainerView setTranslatesAutoresizingMaskIntoConstraints:0, v39, v40, v41, v42];
    v22 = [(HUPresenceUserCell *)v7 contentView];
    [v22 addSubview:v7->_avatarContainerView];

    v23 = objc_opt_new();
    [(HUPresenceUserCell *)v7 setBackgroundView:v23];

    [(HUPresenceUserCell *)v7 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [(HUPresenceUserCell *)v7 backgroundView];
    [v32 setFrame:{v25, v27, v29, v31}];

    v33 = [(HUPresenceUserCell *)v7 backgroundView];
    [v33 setAutoresizingMask:18];

    v34 = objc_alloc_init(MEMORY[0x277D755E8]);
    checkmarkImageView = v7->_checkmarkImageView;
    v7->_checkmarkImageView = v34;

    [(UIImageView *)v7->_checkmarkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = [(HUPresenceUserCell *)v7 contentView];
    [v36 addSubview:v7->_checkmarkImageView];

    v37 = [(HUPresenceUserCell *)v7 checkmarkImageView];
    [(UITableViewCell *)v7 hu_configureCheckmarkForImageView:v37 checked:0];

    [(HUPresenceUserCell *)v7 _setupConstraints];
    [(HUPresenceUserCell *)v7 _updateCustomSeparatorInset];
    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __52__HUPresenceUserCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCustomSeparatorInset];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUPresenceUserCell;
  [(HUPresenceUserCell *)&v3 prepareForReuse];
  [(HUPresenceUserCell *)self setUserName:0];
  [(HUPresenceUserCell *)self setUserHandle:0];
  [(HUPresenceUserCell *)self setDeviceName:0];
  [(HUPresenceUserCell *)self setDisabled:0];
  [(HUPresenceUserCell *)self setChecked:0];
  [(HUPresenceUserCell *)self setLocationUnavailable:0];
}

- (void)setUserName:(id)a3
{
  objc_storeStrong(&self->_userName, a3);
  v5 = a3;
  v6 = [(HUPresenceUserCell *)self titleDescriptionView];
  [v6 setTitleText:v5];
}

- (void)setDeviceName:(id)a3
{
  objc_storeStrong(&self->_deviceName, a3);

  [(HUPresenceUserCell *)self _updateDescriptionText];
}

- (void)setUserHandle:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_userHandle, a3);
  if (v5)
  {
    v6 = [MEMORY[0x277D145B0] defaultStore];
    v7 = [(HUPresenceUserCell *)self avatarViewController];
    v8 = [v7 descriptorForRequiredKeys];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v10 = [v6 contactForUserHandle:v5 withKeys:v9];

    v14 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v12 = [(HUPresenceUserCell *)self avatarViewController];
    [v12 setContacts:v11];
  }

  else
  {
    v13 = [(HUPresenceUserCell *)self avatarViewController];
    [v13 setContacts:MEMORY[0x277CBEBF8]];
  }
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  self->_disabled = a3;
  v4 = [(HUPresenceUserCell *)self titleDescriptionView];
  [v4 setDisabled:v3];
}

- (void)_updateDescriptionText
{
  if ([(HUPresenceUserCell *)self isLocationUnavailable])
  {
    _HULocalizedStringWithDefaultValue(@"HUPresenceEventUnsupportedUserDescriptionText", @"HUPresenceEventUnsupportedUserDescriptionText", 1);
  }

  else
  {
    [(HUPresenceUserCell *)self deviceName];
  }
  v4 = ;
  v3 = [(HUPresenceUserCell *)self titleDescriptionView];
  [v3 setDescriptionText:v4];
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    v4 = a3;
    self->_checked = a3;
    v6 = [(HUPresenceUserCell *)self checkmarkImageView];
    [(UITableViewCell *)self hu_configureCheckmarkForImageView:v6 checked:v4];
  }
}

- (void)_setupConstraints
{
  v64[12] = *MEMORY[0x277D85DE8];
  v3 = [(HUPresenceUserCell *)self contentView];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintGreaterThanOrEqualToConstant:60.0];

  LODWORD(v6) = 1148829696;
  v63 = v5;
  [v5 setPriority:v6];
  v39 = MEMORY[0x277CCAAD0];
  v64[0] = v5;
  v62 = [(HUPresenceUserCell *)self checkmarkImageView];
  v60 = [v62 leadingAnchor];
  v61 = [(HUPresenceUserCell *)self contentView];
  v59 = [v61 layoutMarginsGuide];
  v58 = [v59 leadingAnchor];
  v57 = [v60 constraintEqualToAnchor:v58 constant:28.0];
  v64[1] = v57;
  v56 = [(HUPresenceUserCell *)self checkmarkImageView];
  v54 = [v56 centerYAnchor];
  v55 = [(HUPresenceUserCell *)self contentView];
  v53 = [v55 layoutMarginsGuide];
  v52 = [v53 centerYAnchor];
  v51 = [v54 constraintEqualToAnchor:v52];
  v64[2] = v51;
  v50 = [(HUPresenceUserCell *)self checkmarkImageView];
  v48 = [v50 heightAnchor];
  v49 = [(HUPresenceUserCell *)self contentView];
  v47 = [v49 heightAnchor];
  v46 = [v48 constraintLessThanOrEqualToAnchor:v47];
  v64[3] = v46;
  v45 = [(HUPresenceUserCell *)self avatarContainerView];
  v43 = [v45 leadingAnchor];
  v44 = [(HUPresenceUserCell *)self checkmarkImageView];
  v42 = [v44 trailingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 constant:15.0];
  v64[4] = v41;
  v40 = [(HUPresenceUserCell *)self avatarContainerView];
  v37 = [v40 centerYAnchor];
  v38 = [(HUPresenceUserCell *)self contentView];
  v36 = [v38 centerYAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v64[5] = v35;
  v34 = [(HUPresenceUserCell *)self avatarContainerView];
  v33 = [v34 heightAnchor];
  v32 = [v33 constraintEqualToConstant:37.0];
  v64[6] = v32;
  v31 = [(HUPresenceUserCell *)self avatarContainerView];
  v30 = [v31 widthAnchor];
  v29 = [v30 constraintEqualToConstant:37.0];
  v64[7] = v29;
  v28 = [(HUPresenceUserCell *)self titleDescriptionView];
  v26 = [v28 leadingAnchor];
  v27 = [(HUPresenceUserCell *)self avatarContainerView];
  v25 = [v27 trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:12.0];
  v64[8] = v24;
  v23 = [(HUPresenceUserCell *)self titleDescriptionView];
  v21 = [v23 topAnchor];
  v22 = [(HUPresenceUserCell *)self contentView];
  v20 = [v22 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v64[9] = v19;
  v18 = [(HUPresenceUserCell *)self titleDescriptionView];
  v17 = [v18 bottomAnchor];
  v7 = [(HUPresenceUserCell *)self contentView];
  v8 = [v7 bottomAnchor];
  v9 = [v17 constraintEqualToAnchor:v8];
  v64[10] = v9;
  v10 = [(HUPresenceUserCell *)self titleDescriptionView];
  v11 = [v10 trailingAnchor];
  v12 = [(HUPresenceUserCell *)self contentView];
  v13 = [v12 readableContentGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];
  v64[11] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:12];
  [v39 activateConstraints:v16];
}

- (void)_updateCustomSeparatorInset
{
  v4 = [(HUPresenceUserCell *)self avatarContainerView];
  [v4 frame];
  [(HUPresenceUserCell *)self setSeparatorInset:0.0, v3, 0.0, 0.0];
}

@end