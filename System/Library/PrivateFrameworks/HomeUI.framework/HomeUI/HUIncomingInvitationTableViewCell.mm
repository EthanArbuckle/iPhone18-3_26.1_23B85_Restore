@interface HUIncomingInvitationTableViewCell
- (HUIncomingInvitationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUIncomingInvitationTableViewCellDelegate)delegate;
- (void)_hideInvitationSpinner;
- (void)_setupDynamicConstraints;
- (void)_showInvitationSpinner;
- (void)_updateInvitationViews;
- (void)closeButtonPressed:(id)pressed;
- (void)declineButtonPressed:(id)pressed;
- (void)prepareForReuse;
- (void)reportJunkPressed:(id)pressed;
- (void)setInvitation:(id)invitation;
- (void)setShowSpinner:(BOOL)spinner;
- (void)viewButtonPressed:(id)pressed;
@end

@implementation HUIncomingInvitationTableViewCell

- (HUIncomingInvitationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v114.receiver = self;
  v114.super_class = HUIncomingInvitationTableViewCell;
  v4 = [(HUIncomingInvitationTableViewCell *)&v114 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBDBE8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    avatarView = v4->_avatarView;
    v4->_avatarView = v6;

    [(CNAvatarView *)v4->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    avatarView = [(HUIncomingInvitationTableViewCell *)v4 avatarView];
    [contentView addSubview:avatarView];

    v109 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentView2 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [contentView2 addLayoutGuide:v109];

    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    homeNameLabel = v4->_homeNameLabel;
    v4->_homeNameLabel = v11;

    [(UILabel *)v4->_homeNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_homeNameLabel setFont:v13];

    [(UILabel *)v4->_homeNameLabel setNumberOfLines:2];
    contentView3 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_homeNameLabel];

    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    infoLabel = v4->_infoLabel;
    v4->_infoLabel = v15;

    [(UILabel *)v4->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v4->_infoLabel setFont:v17];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_infoLabel setTextColor:systemGrayColor];

    [(UILabel *)v4->_infoLabel setNumberOfLines:0];
    contentView4 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_infoLabel];

    filledButtonConfiguration = [MEMORY[0x277D75230] filledButtonConfiguration];
    [filledButtonConfiguration setButtonSize:1];
    [filledButtonConfiguration setCornerStyle:4];
    [filledButtonConfiguration contentInsets];
    [filledButtonConfiguration setContentInsets:?];
    v21 = [MEMORY[0x277D75220] buttonWithType:1];
    viewButton = v4->_viewButton;
    v4->_viewButton = v21;

    v112 = filledButtonConfiguration;
    v23 = [filledButtonConfiguration copy];
    v24 = _HULocalizedStringWithDefaultValue(@"HUUserManagementViewButton", @"HUUserManagementViewButton", 1);
    [(UIButtonConfiguration *)v23 setTitle:v24];

    tintColor = [(HUIncomingInvitationTableViewCell *)v4 tintColor];
    background = [(UIButtonConfiguration *)v23 background];
    [background setBackgroundColor:tintColor];

    knownContactViewButtonConfiguration = v4->_knownContactViewButtonConfiguration;
    v4->_knownContactViewButtonConfiguration = v23;
    v113 = v23;

    [(UIButton *)v4->_viewButton setAccessibilityIdentifier:@"Home.Users.IncomingInvitation.ViewButton"];
    [(UIButton *)v4->_viewButton setConfiguration:v113];
    [(UIButton *)v4->_viewButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_viewButton addTarget:v4 action:sel_viewButtonPressed_ forControlEvents:64];
    contentView5 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [contentView5 addSubview:v4->_viewButton];

    v29 = [MEMORY[0x277D75220] buttonWithType:1];
    reportJunkButton = v4->_reportJunkButton;
    v4->_reportJunkButton = v29;

    v31 = [filledButtonConfiguration copy];
    v32 = _HULocalizedStringWithDefaultValue(@"HUUserManagementReportJunkButton", @"HUUserManagementReportJunkButton", 1);
    [v31 setTitle:v32];

    tintColor2 = [(HUIncomingInvitationTableViewCell *)v4 tintColor];
    [v31 setBaseForegroundColor:tintColor2];

    quaternarySystemFillColor = [MEMORY[0x277D75348] quaternarySystemFillColor];
    v111 = v31;
    background2 = [v31 background];
    [background2 setBackgroundColor:quaternarySystemFillColor];

    [(UIButton *)v4->_reportJunkButton setAccessibilityIdentifier:@"Home.Users.IncomingInvitation.ReportJunkButton"];
    [(UIButton *)v4->_reportJunkButton setConfiguration:v31];
    [(UIButton *)v4->_reportJunkButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_reportJunkButton addTarget:v4 action:sel_reportJunkPressed_ forControlEvents:64];
    contentView6 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [contentView6 addSubview:v4->_reportJunkButton];

    v37 = [MEMORY[0x277D75220] buttonWithType:1];
    closeButton = v4->_closeButton;
    v4->_closeButton = v37;

    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    [plainButtonConfiguration setButtonSize:2];
    v110 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:13.0];
    v40 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v110];
    [plainButtonConfiguration setImage:v40];

    systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
    [plainButtonConfiguration setBaseForegroundColor:systemGray3Color];

    [plainButtonConfiguration setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
    [(UIButton *)v4->_closeButton setAccessibilityIdentifier:@"Home.Users.IncomingInvitation.CloseButton"];
    [(UIButton *)v4->_closeButton setConfiguration:plainButtonConfiguration];
    [(UIButton *)v4->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_closeButton addTarget:v4 action:sel_closeButtonPressed_ forControlEvents:64];
    contentView7 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [contentView7 addSubview:v4->_closeButton];

    v43 = [[HUInvitationHelper alloc] initWithMode:0];
    invitationHelper = v4->_invitationHelper;
    v4->_invitationHelper = v43;

    [(HUInvitationHelper *)v4->_invitationHelper setDelegate:v4];
    topAnchor = [(UILabel *)v4->_homeNameLabel topAnchor];
    topAnchor2 = [v109 topAnchor];
    v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v47 setActive:1];

    leadingAnchor = [(UILabel *)v4->_homeNameLabel leadingAnchor];
    leadingAnchor2 = [v109 leadingAnchor];
    v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v50 setActive:1];

    trailingAnchor = [(UILabel *)v4->_homeNameLabel trailingAnchor];
    trailingAnchor2 = [v109 trailingAnchor];
    v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v53 setActive:1];

    topAnchor3 = [(UILabel *)v4->_infoLabel topAnchor];
    bottomAnchor = [(UILabel *)v4->_homeNameLabel bottomAnchor];
    v56 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    [v56 setActive:1];

    leadingAnchor3 = [(UILabel *)v4->_infoLabel leadingAnchor];
    leadingAnchor4 = [v109 leadingAnchor];
    v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v59 setActive:1];

    trailingAnchor3 = [(UILabel *)v4->_infoLabel trailingAnchor];
    trailingAnchor4 = [v109 trailingAnchor];
    v62 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v62 setActive:1];

    topAnchor4 = [(UIButton *)v4->_viewButton topAnchor];
    bottomAnchor2 = [v109 bottomAnchor];
    v65 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:11.0];
    [v65 setActive:1];

    leadingAnchor5 = [(UIButton *)v4->_viewButton leadingAnchor];
    leadingAnchor6 = [v109 leadingAnchor];
    v68 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v68 setActive:1];

    heightAnchor = [(UIButton *)v4->_viewButton heightAnchor];
    v70 = [heightAnchor constraintGreaterThanOrEqualToConstant:29.0];
    [v70 setActive:1];

    heightAnchor2 = [(UIButton *)v4->_reportJunkButton heightAnchor];
    v72 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:29.0];
    [v72 setActive:1];

    heightAnchor3 = [(CNAvatarView *)v4->_avatarView heightAnchor];
    v74 = [heightAnchor3 constraintEqualToConstant:44.0];
    [v74 setActive:1];

    widthAnchor = [(CNAvatarView *)v4->_avatarView widthAnchor];
    heightAnchor4 = [(CNAvatarView *)v4->_avatarView heightAnchor];
    v77 = [widthAnchor constraintEqualToAnchor:heightAnchor4];
    [v77 setActive:1];

    topAnchor5 = [(CNAvatarView *)v4->_avatarView topAnchor];
    contentView8 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    topAnchor6 = [contentView8 topAnchor];
    v81 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:14.0];
    [v81 setActive:1];

    leadingAnchor7 = [(CNAvatarView *)v4->_avatarView leadingAnchor];
    contentView9 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    leadingAnchor8 = [contentView9 leadingAnchor];
    v85 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
    [v85 setActive:1];

    topAnchor7 = [(UIButton *)v4->_closeButton topAnchor];
    contentView10 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    topAnchor8 = [contentView10 topAnchor];
    v89 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:14.0];
    [v89 setActive:1];

    leadingAnchor9 = [(UIButton *)v4->_closeButton leadingAnchor];
    trailingAnchor5 = [v109 trailingAnchor];
    v92 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:trailingAnchor5 constant:14.0];
    [v92 setActive:1];

    trailingAnchor6 = [(UIButton *)v4->_closeButton trailingAnchor];
    contentView11 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    trailingAnchor7 = [contentView11 trailingAnchor];
    v96 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-14.0];
    [v96 setActive:1];

    topAnchor9 = [v109 topAnchor];
    contentView12 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    topAnchor10 = [contentView12 topAnchor];
    v100 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:topAnchor10 constant:11.0];
    [v100 setActive:1];

    bottomAnchor3 = [v109 bottomAnchor];
    bottomAnchor4 = [(UILabel *)v4->_infoLabel bottomAnchor];
    v103 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v103 setActive:1];

    leadingAnchor10 = [v109 leadingAnchor];
    trailingAnchor8 = [(CNAvatarView *)v4->_avatarView trailingAnchor];
    v106 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor8 constant:12.0];
    [v106 setActive:1];

    dynamicConstraints = v4->_dynamicConstraints;
    v4->_dynamicConstraints = MEMORY[0x277CBEBF8];

    [(HUIncomingInvitationTableViewCell *)v4 _setupDynamicConstraints];
  }

  return v4;
}

- (void)prepareForReuse
{
  [(HUIncomingInvitationTableViewCell *)self setInvitation:0];
  [(HUIncomingInvitationTableViewCell *)self setShowSpinner:0];
  v3.receiver = self;
  v3.super_class = HUIncomingInvitationTableViewCell;
  [(HUIncomingInvitationTableViewCell *)&v3 prepareForReuse];
}

- (void)viewButtonPressed:(id)pressed
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "User pressed button (%@)", &v8, 0xCu);
  }

  delegate = [(HUIncomingInvitationTableViewCell *)self delegate];
  [delegate invitationCell:self didRespondToInvitationWithResponse:1];
}

- (void)declineButtonPressed:(id)pressed
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "User pressed button (%@)", &v8, 0xCu);
  }

  delegate = [(HUIncomingInvitationTableViewCell *)self delegate];
  [delegate invitationCell:self didRespondToInvitationWithResponse:2];
}

- (void)reportJunkPressed:(id)pressed
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "User pressed button (%@)", &v8, 0xCu);
  }

  delegate = [(HUIncomingInvitationTableViewCell *)self delegate];
  [delegate invitationCell:self didRespondToInvitationWithResponse:4];
}

- (void)closeButtonPressed:(id)pressed
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "User pressed button (%@)", &v16, 0xCu);
  }

  invitationHelper = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
  isUnknownContact = [invitationHelper isUnknownContact];

  v9 = HFLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (isUnknownContact)
  {
    if (v10)
    {
      invitation = [(HUIncomingInvitationTableViewCell *)self invitation];
      hf_prettyDescription = [invitation hf_prettyDescription];
      v16 = 138412290;
      v17 = hf_prettyDescription;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring %@", &v16, 0xCu);
    }

    v13 = 3;
  }

  else
  {
    if (v10)
    {
      invitation2 = [(HUIncomingInvitationTableViewCell *)self invitation];
      v16 = 138412290;
      v17 = invitation2;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Declining %@", &v16, 0xCu);
    }

    v13 = 2;
  }

  delegate = [(HUIncomingInvitationTableViewCell *)self delegate];
  [delegate invitationCell:self didRespondToInvitationWithResponse:v13];
}

- (void)setInvitation:(id)invitation
{
  v14 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  invitation = [(HUIncomingInvitationTableViewCell *)self invitation];

  if (invitation != invitationCopy)
  {
    objc_storeStrong(&self->_invitation, invitation);
    invitationHelper = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
    [invitationHelper setInvitation:invitationCopy];

    if (invitationCopy)
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription = [invitationCopy hf_prettyDescription];
        v12 = 138412290;
        v13 = hf_prettyDescription;
        _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Setting invitation %@", &v12, 0xCu);
      }

      [(HUIncomingInvitationTableViewCell *)self _updateInvitationViews];
    }

    else
    {
      [(HUIncomingInvitationTableViewCell *)self setContact:0];
      homeNameLabel = [(HUIncomingInvitationTableViewCell *)self homeNameLabel];
      [homeNameLabel setText:0];

      infoLabel = [(HUIncomingInvitationTableViewCell *)self infoLabel];
      [infoLabel setText:0];
    }

    [(HUIncomingInvitationTableViewCell *)self setNeedsLayout];
  }
}

- (void)_updateInvitationViews
{
  v28[1] = *MEMORY[0x277D85DE8];
  invitationHelper = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
  isUnknownContact = [invitationHelper isUnknownContact];

  if (isUnknownContact)
  {
    reportJunkButton3 = objc_alloc_init(MEMORY[0x277CBDB38]);
    v28[0] = reportJunkButton3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    avatarView = [(HUIncomingInvitationTableViewCell *)self avatarView];
    [avatarView setContacts:v6];

    reportJunkButton = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    configuration = [reportJunkButton configuration];
    v10 = [configuration copy];

    v11 = _HULocalizedStringWithDefaultValue(@"HUUserManagementViewButton", @"HUUserManagementViewButton", 1);
    [v10 setTitle:v11];

    viewButton = [(HUIncomingInvitationTableViewCell *)self viewButton];
    [viewButton setConfiguration:v10];

    reportJunkButton2 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    [reportJunkButton2 setHidden:0];
  }

  else
  {
    invitationHelper2 = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
    inviterContact = [invitationHelper2 inviterContact];
    v27 = inviterContact;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    avatarView2 = [(HUIncomingInvitationTableViewCell *)self avatarView];
    [avatarView2 setContacts:v16];

    knownContactViewButtonConfiguration = [(HUIncomingInvitationTableViewCell *)self knownContactViewButtonConfiguration];
    v19 = [knownContactViewButtonConfiguration copy];
    viewButton2 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    [viewButton2 setConfiguration:v19];

    reportJunkButton3 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    [reportJunkButton3 setHidden:1];
  }

  invitationHelper3 = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
  detailText = [invitationHelper3 detailText];

  invitationHelper4 = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
  homeInvitationTitle = [invitationHelper4 homeInvitationTitle];

  homeNameLabel = [(HUIncomingInvitationTableViewCell *)self homeNameLabel];
  [homeNameLabel setText:homeInvitationTitle];

  infoLabel = [(HUIncomingInvitationTableViewCell *)self infoLabel];
  [infoLabel setText:detailText];
}

- (void)_setupDynamicConstraints
{
  v33[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  dynamicConstraints = [(HUIncomingInvitationTableViewCell *)self dynamicConstraints];
  [v3 deactivateConstraints:dynamicConstraints];

  traitCollection = [(HUIncomingInvitationTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  reportJunkButton = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
  v31 = reportJunkButton;
  if (IsAccessibilityCategory)
  {
    topAnchor = [reportJunkButton topAnchor];
    viewButton = [(HUIncomingInvitationTableViewCell *)self viewButton];
    [viewButton bottomAnchor];
    v28 = v30 = topAnchor;
    v27 = [topAnchor constraintEqualToAnchor:17.0 constant:?];
    v33[0] = v27;
    reportJunkButton2 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    leadingAnchor = [reportJunkButton2 leadingAnchor];
    viewButton2 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    leadingAnchor2 = [viewButton2 leadingAnchor];
    v25 = leadingAnchor;
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[1] = v13;
    reportJunkButton3 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    v15 = v33;
  }

  else
  {
    leadingAnchor3 = [reportJunkButton leadingAnchor];
    viewButton = [(HUIncomingInvitationTableViewCell *)self viewButton];
    [viewButton trailingAnchor];
    v28 = v30 = leadingAnchor3;
    v27 = [leadingAnchor3 constraintEqualToAnchor:17.0 constant:?];
    v32[0] = v27;
    reportJunkButton2 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    bottomAnchor = [reportJunkButton2 bottomAnchor];
    viewButton2 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    leadingAnchor2 = [viewButton2 bottomAnchor];
    v25 = bottomAnchor;
    v13 = [bottomAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[1] = v13;
    reportJunkButton3 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    v15 = v32;
  }

  bottomAnchor2 = [reportJunkButton3 bottomAnchor];
  contentView = [(HUIncomingInvitationTableViewCell *)self contentView];
  bottomAnchor3 = [contentView bottomAnchor];
  v21 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-14.0];
  v15[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  [(HUIncomingInvitationTableViewCell *)self setDynamicConstraints:v22];

  v23 = MEMORY[0x277CCAAD0];
  dynamicConstraints2 = [(HUIncomingInvitationTableViewCell *)self dynamicConstraints];
  [v23 activateConstraints:dynamicConstraints2];
}

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner != spinner)
  {
    self->_showSpinner = spinner;
    if (spinner)
    {
      [(HUIncomingInvitationTableViewCell *)self _showInvitationSpinner];
    }

    else
    {
      [(HUIncomingInvitationTableViewCell *)self _hideInvitationSpinner];
    }
  }
}

- (void)_showInvitationSpinner
{
  v29[2] = *MEMORY[0x277D85DE8];
  spinner = [(HUIncomingInvitationTableViewCell *)self spinner];

  if (spinner)
  {
    spinner2 = [(HUIncomingInvitationTableViewCell *)self spinner];
    [spinner2 removeFromSuperview];

    [(HUIncomingInvitationTableViewCell *)self setSpinner:0];
  }

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(HUIncomingInvitationTableViewCell *)self setSpinner:v5];

  spinner3 = [(HUIncomingInvitationTableViewCell *)self spinner];
  [spinner3 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HUIncomingInvitationTableViewCell *)self contentView];
  spinner4 = [(HUIncomingInvitationTableViewCell *)self spinner];
  [contentView addSubview:spinner4];

  spinner5 = [(HUIncomingInvitationTableViewCell *)self spinner];
  [spinner5 startAnimating];

  v26 = MEMORY[0x277CCAAD0];
  spinner6 = [(HUIncomingInvitationTableViewCell *)self spinner];
  centerXAnchor = [spinner6 centerXAnchor];
  reportJunkButton = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
  centerXAnchor2 = [reportJunkButton centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v29[0] = v12;
  spinner7 = [(HUIncomingInvitationTableViewCell *)self spinner];
  centerYAnchor = [spinner7 centerYAnchor];
  reportJunkButton2 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
  centerYAnchor2 = [reportJunkButton2 centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v29[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [v26 activateConstraints:v18];

  reportJunkButton3 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
  [reportJunkButton3 setHidden:1];

  viewButton = [(HUIncomingInvitationTableViewCell *)self viewButton];
  configuration = [viewButton configuration];

  v22 = _HULocalizedStringWithDefaultValue(@"HUUserManagementCancelButton", @"HUUserManagementCancelButton", 1);
  [configuration setTitle:v22];

  viewButton2 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [viewButton2 setConfiguration:configuration];

  viewButton3 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [viewButton3 removeTarget:0 action:0 forControlEvents:64];

  viewButton4 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [viewButton4 addTarget:self action:sel_declineButtonPressed_ forControlEvents:64];
}

- (void)_hideInvitationSpinner
{
  spinner = [(HUIncomingInvitationTableViewCell *)self spinner];

  if (spinner)
  {
    spinner2 = [(HUIncomingInvitationTableViewCell *)self spinner];
    [spinner2 removeFromSuperview];

    [(HUIncomingInvitationTableViewCell *)self setSpinner:0];
  }

  viewButton = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [viewButton setHidden:0];

  viewButton2 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  configuration = [viewButton2 configuration];

  v7 = _HULocalizedStringWithDefaultValue(@"HUUserManagementViewButton", @"HUUserManagementViewButton", 1);
  [configuration setTitle:v7];

  viewButton3 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [viewButton3 setConfiguration:configuration];

  viewButton4 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [viewButton4 removeTarget:0 action:0 forControlEvents:64];

  viewButton5 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [viewButton5 addTarget:self action:sel_viewButtonPressed_ forControlEvents:64];
}

- (HUIncomingInvitationTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end