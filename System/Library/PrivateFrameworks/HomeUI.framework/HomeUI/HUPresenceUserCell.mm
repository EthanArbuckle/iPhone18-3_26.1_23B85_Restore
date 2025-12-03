@interface HUPresenceUserCell
- (HUPresenceUserCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupConstraints;
- (void)_updateCustomSeparatorInset;
- (void)_updateDescriptionText;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)checked;
- (void)setDeviceName:(id)name;
- (void)setDisabled:(BOOL)disabled;
- (void)setUserHandle:(id)handle;
- (void)setUserName:(id)name;
@end

@implementation HUPresenceUserCell

- (HUPresenceUserCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v45.receiver = self;
  v45.super_class = HUPresenceUserCell;
  v7 = [(HUPresenceUserCell *)&v45 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = objc_alloc_init(HUTitleDescriptionContentView);
    titleDescriptionView = v7->_titleDescriptionView;
    v7->_titleDescriptionView = v8;

    [(HUTitleDescriptionContentView *)v7->_titleDescriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUPresenceUserCell *)v7 contentView];
    [contentView addSubview:v7->_titleDescriptionView];

    v11 = MEMORY[0x277CBDBF8];
    defaultStore = [MEMORY[0x277D145B0] defaultStore];
    backingStore = [defaultStore backingStore];
    v14 = [v11 settingsWithContactStore:backingStore threeDTouchEnabled:0];

    v15 = [objc_alloc(MEMORY[0x277CBDBF0]) initWithSettings:v14];
    avatarViewController = v7->_avatarViewController;
    v7->_avatarViewController = v15;

    objc_initWeak(&location, v7);
    v17 = [HULayoutContainerView alloc];
    avatarViewController = [(HUPresenceUserCell *)v7 avatarViewController];
    view = [avatarViewController view];
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __52__HUPresenceUserCell_initWithStyle_reuseIdentifier___block_invoke;
    v42 = &unk_277DBF330;
    objc_copyWeak(&v43, &location);
    v20 = [(HULayoutContainerView *)v17 initWithContentView:view layoutBlock:&v39];
    avatarContainerView = v7->_avatarContainerView;
    v7->_avatarContainerView = v20;

    [(HULayoutContainerView *)v7->_avatarContainerView setTranslatesAutoresizingMaskIntoConstraints:0, v39, v40, v41, v42];
    contentView2 = [(HUPresenceUserCell *)v7 contentView];
    [contentView2 addSubview:v7->_avatarContainerView];

    v23 = objc_opt_new();
    [(HUPresenceUserCell *)v7 setBackgroundView:v23];

    [(HUPresenceUserCell *)v7 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    backgroundView = [(HUPresenceUserCell *)v7 backgroundView];
    [backgroundView setFrame:{v25, v27, v29, v31}];

    backgroundView2 = [(HUPresenceUserCell *)v7 backgroundView];
    [backgroundView2 setAutoresizingMask:18];

    v34 = objc_alloc_init(MEMORY[0x277D755E8]);
    checkmarkImageView = v7->_checkmarkImageView;
    v7->_checkmarkImageView = v34;

    [(UIImageView *)v7->_checkmarkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(HUPresenceUserCell *)v7 contentView];
    [contentView3 addSubview:v7->_checkmarkImageView];

    checkmarkImageView = [(HUPresenceUserCell *)v7 checkmarkImageView];
    [(UITableViewCell *)v7 hu_configureCheckmarkForImageView:checkmarkImageView checked:0];

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

- (void)setUserName:(id)name
{
  objc_storeStrong(&self->_userName, name);
  nameCopy = name;
  titleDescriptionView = [(HUPresenceUserCell *)self titleDescriptionView];
  [titleDescriptionView setTitleText:nameCopy];
}

- (void)setDeviceName:(id)name
{
  objc_storeStrong(&self->_deviceName, name);

  [(HUPresenceUserCell *)self _updateDescriptionText];
}

- (void)setUserHandle:(id)handle
{
  v15[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  objc_storeStrong(&self->_userHandle, handle);
  if (handleCopy)
  {
    defaultStore = [MEMORY[0x277D145B0] defaultStore];
    avatarViewController = [(HUPresenceUserCell *)self avatarViewController];
    descriptorForRequiredKeys = [avatarViewController descriptorForRequiredKeys];
    v15[0] = descriptorForRequiredKeys;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v10 = [defaultStore contactForUserHandle:handleCopy withKeys:v9];

    v14 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    avatarViewController2 = [(HUPresenceUserCell *)self avatarViewController];
    [avatarViewController2 setContacts:v11];
  }

  else
  {
    avatarViewController3 = [(HUPresenceUserCell *)self avatarViewController];
    [avatarViewController3 setContacts:MEMORY[0x277CBEBF8]];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  self->_disabled = disabled;
  titleDescriptionView = [(HUPresenceUserCell *)self titleDescriptionView];
  [titleDescriptionView setDisabled:disabledCopy];
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
  titleDescriptionView = [(HUPresenceUserCell *)self titleDescriptionView];
  [titleDescriptionView setDescriptionText:v4];
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    checkedCopy = checked;
    self->_checked = checked;
    checkmarkImageView = [(HUPresenceUserCell *)self checkmarkImageView];
    [(UITableViewCell *)self hu_configureCheckmarkForImageView:checkmarkImageView checked:checkedCopy];
  }
}

- (void)_setupConstraints
{
  v64[12] = *MEMORY[0x277D85DE8];
  contentView = [(HUPresenceUserCell *)self contentView];
  heightAnchor = [contentView heightAnchor];
  v5 = [heightAnchor constraintGreaterThanOrEqualToConstant:60.0];

  LODWORD(v6) = 1148829696;
  v63 = v5;
  [v5 setPriority:v6];
  v39 = MEMORY[0x277CCAAD0];
  v64[0] = v5;
  checkmarkImageView = [(HUPresenceUserCell *)self checkmarkImageView];
  leadingAnchor = [checkmarkImageView leadingAnchor];
  contentView2 = [(HUPresenceUserCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:28.0];
  v64[1] = v57;
  checkmarkImageView2 = [(HUPresenceUserCell *)self checkmarkImageView];
  centerYAnchor = [checkmarkImageView2 centerYAnchor];
  contentView3 = [(HUPresenceUserCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
  v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v64[2] = v51;
  checkmarkImageView3 = [(HUPresenceUserCell *)self checkmarkImageView];
  heightAnchor2 = [checkmarkImageView3 heightAnchor];
  contentView4 = [(HUPresenceUserCell *)self contentView];
  heightAnchor3 = [contentView4 heightAnchor];
  v46 = [heightAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3];
  v64[3] = v46;
  avatarContainerView = [(HUPresenceUserCell *)self avatarContainerView];
  leadingAnchor3 = [avatarContainerView leadingAnchor];
  checkmarkImageView4 = [(HUPresenceUserCell *)self checkmarkImageView];
  trailingAnchor = [checkmarkImageView4 trailingAnchor];
  v41 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
  v64[4] = v41;
  avatarContainerView2 = [(HUPresenceUserCell *)self avatarContainerView];
  centerYAnchor3 = [avatarContainerView2 centerYAnchor];
  contentView5 = [(HUPresenceUserCell *)self contentView];
  centerYAnchor4 = [contentView5 centerYAnchor];
  v35 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v64[5] = v35;
  avatarContainerView3 = [(HUPresenceUserCell *)self avatarContainerView];
  heightAnchor4 = [avatarContainerView3 heightAnchor];
  v32 = [heightAnchor4 constraintEqualToConstant:37.0];
  v64[6] = v32;
  avatarContainerView4 = [(HUPresenceUserCell *)self avatarContainerView];
  widthAnchor = [avatarContainerView4 widthAnchor];
  v29 = [widthAnchor constraintEqualToConstant:37.0];
  v64[7] = v29;
  titleDescriptionView = [(HUPresenceUserCell *)self titleDescriptionView];
  leadingAnchor4 = [titleDescriptionView leadingAnchor];
  avatarContainerView5 = [(HUPresenceUserCell *)self avatarContainerView];
  trailingAnchor2 = [avatarContainerView5 trailingAnchor];
  v24 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:12.0];
  v64[8] = v24;
  titleDescriptionView2 = [(HUPresenceUserCell *)self titleDescriptionView];
  topAnchor = [titleDescriptionView2 topAnchor];
  contentView6 = [(HUPresenceUserCell *)self contentView];
  topAnchor2 = [contentView6 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v64[9] = v19;
  titleDescriptionView3 = [(HUPresenceUserCell *)self titleDescriptionView];
  bottomAnchor = [titleDescriptionView3 bottomAnchor];
  contentView7 = [(HUPresenceUserCell *)self contentView];
  bottomAnchor2 = [contentView7 bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v64[10] = v9;
  titleDescriptionView4 = [(HUPresenceUserCell *)self titleDescriptionView];
  trailingAnchor3 = [titleDescriptionView4 trailingAnchor];
  contentView8 = [(HUPresenceUserCell *)self contentView];
  readableContentGuide = [contentView8 readableContentGuide];
  trailingAnchor4 = [readableContentGuide trailingAnchor];
  v15 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v64[11] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:12];
  [v39 activateConstraints:v16];
}

- (void)_updateCustomSeparatorInset
{
  avatarContainerView = [(HUPresenceUserCell *)self avatarContainerView];
  [avatarContainerView frame];
  [(HUPresenceUserCell *)self setSeparatorInset:0.0, v3, 0.0, 0.0];
}

@end