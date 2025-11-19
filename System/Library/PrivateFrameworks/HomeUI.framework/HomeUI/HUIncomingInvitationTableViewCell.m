@interface HUIncomingInvitationTableViewCell
- (HUIncomingInvitationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUIncomingInvitationTableViewCellDelegate)delegate;
- (void)_hideInvitationSpinner;
- (void)_setupDynamicConstraints;
- (void)_showInvitationSpinner;
- (void)_updateInvitationViews;
- (void)closeButtonPressed:(id)a3;
- (void)declineButtonPressed:(id)a3;
- (void)prepareForReuse;
- (void)reportJunkPressed:(id)a3;
- (void)setInvitation:(id)a3;
- (void)setShowSpinner:(BOOL)a3;
- (void)viewButtonPressed:(id)a3;
@end

@implementation HUIncomingInvitationTableViewCell

- (HUIncomingInvitationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v114.receiver = self;
  v114.super_class = HUIncomingInvitationTableViewCell;
  v4 = [(HUIncomingInvitationTableViewCell *)&v114 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBDBE8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    avatarView = v4->_avatarView;
    v4->_avatarView = v6;

    [(CNAvatarView *)v4->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    v9 = [(HUIncomingInvitationTableViewCell *)v4 avatarView];
    [v8 addSubview:v9];

    v109 = objc_alloc_init(MEMORY[0x277D756D0]);
    v10 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [v10 addLayoutGuide:v109];

    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    homeNameLabel = v4->_homeNameLabel;
    v4->_homeNameLabel = v11;

    [(UILabel *)v4->_homeNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_homeNameLabel setFont:v13];

    [(UILabel *)v4->_homeNameLabel setNumberOfLines:2];
    v14 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [v14 addSubview:v4->_homeNameLabel];

    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    infoLabel = v4->_infoLabel;
    v4->_infoLabel = v15;

    [(UILabel *)v4->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v4->_infoLabel setFont:v17];

    v18 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_infoLabel setTextColor:v18];

    [(UILabel *)v4->_infoLabel setNumberOfLines:0];
    v19 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [v19 addSubview:v4->_infoLabel];

    v20 = [MEMORY[0x277D75230] filledButtonConfiguration];
    [v20 setButtonSize:1];
    [v20 setCornerStyle:4];
    [v20 contentInsets];
    [v20 setContentInsets:?];
    v21 = [MEMORY[0x277D75220] buttonWithType:1];
    viewButton = v4->_viewButton;
    v4->_viewButton = v21;

    v112 = v20;
    v23 = [v20 copy];
    v24 = _HULocalizedStringWithDefaultValue(@"HUUserManagementViewButton", @"HUUserManagementViewButton", 1);
    [(UIButtonConfiguration *)v23 setTitle:v24];

    v25 = [(HUIncomingInvitationTableViewCell *)v4 tintColor];
    v26 = [(UIButtonConfiguration *)v23 background];
    [v26 setBackgroundColor:v25];

    knownContactViewButtonConfiguration = v4->_knownContactViewButtonConfiguration;
    v4->_knownContactViewButtonConfiguration = v23;
    v113 = v23;

    [(UIButton *)v4->_viewButton setAccessibilityIdentifier:@"Home.Users.IncomingInvitation.ViewButton"];
    [(UIButton *)v4->_viewButton setConfiguration:v113];
    [(UIButton *)v4->_viewButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_viewButton addTarget:v4 action:sel_viewButtonPressed_ forControlEvents:64];
    v28 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [v28 addSubview:v4->_viewButton];

    v29 = [MEMORY[0x277D75220] buttonWithType:1];
    reportJunkButton = v4->_reportJunkButton;
    v4->_reportJunkButton = v29;

    v31 = [v20 copy];
    v32 = _HULocalizedStringWithDefaultValue(@"HUUserManagementReportJunkButton", @"HUUserManagementReportJunkButton", 1);
    [v31 setTitle:v32];

    v33 = [(HUIncomingInvitationTableViewCell *)v4 tintColor];
    [v31 setBaseForegroundColor:v33];

    v34 = [MEMORY[0x277D75348] quaternarySystemFillColor];
    v111 = v31;
    v35 = [v31 background];
    [v35 setBackgroundColor:v34];

    [(UIButton *)v4->_reportJunkButton setAccessibilityIdentifier:@"Home.Users.IncomingInvitation.ReportJunkButton"];
    [(UIButton *)v4->_reportJunkButton setConfiguration:v31];
    [(UIButton *)v4->_reportJunkButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_reportJunkButton addTarget:v4 action:sel_reportJunkPressed_ forControlEvents:64];
    v36 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [v36 addSubview:v4->_reportJunkButton];

    v37 = [MEMORY[0x277D75220] buttonWithType:1];
    closeButton = v4->_closeButton;
    v4->_closeButton = v37;

    v39 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [v39 setButtonSize:2];
    v110 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:13.0];
    v40 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v110];
    [v39 setImage:v40];

    v41 = [MEMORY[0x277D75348] systemGray3Color];
    [v39 setBaseForegroundColor:v41];

    [v39 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
    [(UIButton *)v4->_closeButton setAccessibilityIdentifier:@"Home.Users.IncomingInvitation.CloseButton"];
    [(UIButton *)v4->_closeButton setConfiguration:v39];
    [(UIButton *)v4->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4->_closeButton addTarget:v4 action:sel_closeButtonPressed_ forControlEvents:64];
    v42 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    [v42 addSubview:v4->_closeButton];

    v43 = [[HUInvitationHelper alloc] initWithMode:0];
    invitationHelper = v4->_invitationHelper;
    v4->_invitationHelper = v43;

    [(HUInvitationHelper *)v4->_invitationHelper setDelegate:v4];
    v45 = [(UILabel *)v4->_homeNameLabel topAnchor];
    v46 = [v109 topAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    [v47 setActive:1];

    v48 = [(UILabel *)v4->_homeNameLabel leadingAnchor];
    v49 = [v109 leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
    [v50 setActive:1];

    v51 = [(UILabel *)v4->_homeNameLabel trailingAnchor];
    v52 = [v109 trailingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];
    [v53 setActive:1];

    v54 = [(UILabel *)v4->_infoLabel topAnchor];
    v55 = [(UILabel *)v4->_homeNameLabel bottomAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];
    [v56 setActive:1];

    v57 = [(UILabel *)v4->_infoLabel leadingAnchor];
    v58 = [v109 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    [v59 setActive:1];

    v60 = [(UILabel *)v4->_infoLabel trailingAnchor];
    v61 = [v109 trailingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];
    [v62 setActive:1];

    v63 = [(UIButton *)v4->_viewButton topAnchor];
    v64 = [v109 bottomAnchor];
    v65 = [v63 constraintGreaterThanOrEqualToAnchor:v64 constant:11.0];
    [v65 setActive:1];

    v66 = [(UIButton *)v4->_viewButton leadingAnchor];
    v67 = [v109 leadingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];
    [v68 setActive:1];

    v69 = [(UIButton *)v4->_viewButton heightAnchor];
    v70 = [v69 constraintGreaterThanOrEqualToConstant:29.0];
    [v70 setActive:1];

    v71 = [(UIButton *)v4->_reportJunkButton heightAnchor];
    v72 = [v71 constraintGreaterThanOrEqualToConstant:29.0];
    [v72 setActive:1];

    v73 = [(CNAvatarView *)v4->_avatarView heightAnchor];
    v74 = [v73 constraintEqualToConstant:44.0];
    [v74 setActive:1];

    v75 = [(CNAvatarView *)v4->_avatarView widthAnchor];
    v76 = [(CNAvatarView *)v4->_avatarView heightAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];
    [v77 setActive:1];

    v78 = [(CNAvatarView *)v4->_avatarView topAnchor];
    v79 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    v80 = [v79 topAnchor];
    v81 = [v78 constraintEqualToAnchor:v80 constant:14.0];
    [v81 setActive:1];

    v82 = [(CNAvatarView *)v4->_avatarView leadingAnchor];
    v83 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    v84 = [v83 leadingAnchor];
    v85 = [v82 constraintEqualToAnchor:v84 constant:16.0];
    [v85 setActive:1];

    v86 = [(UIButton *)v4->_closeButton topAnchor];
    v87 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    v88 = [v87 topAnchor];
    v89 = [v86 constraintEqualToAnchor:v88 constant:14.0];
    [v89 setActive:1];

    v90 = [(UIButton *)v4->_closeButton leadingAnchor];
    v91 = [v109 trailingAnchor];
    v92 = [v90 constraintGreaterThanOrEqualToAnchor:v91 constant:14.0];
    [v92 setActive:1];

    v93 = [(UIButton *)v4->_closeButton trailingAnchor];
    v94 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    v95 = [v94 trailingAnchor];
    v96 = [v93 constraintEqualToAnchor:v95 constant:-14.0];
    [v96 setActive:1];

    v97 = [v109 topAnchor];
    v98 = [(HUIncomingInvitationTableViewCell *)v4 contentView];
    v99 = [v98 topAnchor];
    v100 = [v97 constraintGreaterThanOrEqualToAnchor:v99 constant:11.0];
    [v100 setActive:1];

    v101 = [v109 bottomAnchor];
    v102 = [(UILabel *)v4->_infoLabel bottomAnchor];
    v103 = [v101 constraintEqualToAnchor:v102];
    [v103 setActive:1];

    v104 = [v109 leadingAnchor];
    v105 = [(CNAvatarView *)v4->_avatarView trailingAnchor];
    v106 = [v104 constraintEqualToAnchor:v105 constant:12.0];
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

- (void)viewButtonPressed:(id)a3
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

  v7 = [(HUIncomingInvitationTableViewCell *)self delegate];
  [v7 invitationCell:self didRespondToInvitationWithResponse:1];
}

- (void)declineButtonPressed:(id)a3
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

  v7 = [(HUIncomingInvitationTableViewCell *)self delegate];
  [v7 invitationCell:self didRespondToInvitationWithResponse:2];
}

- (void)reportJunkPressed:(id)a3
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

  v7 = [(HUIncomingInvitationTableViewCell *)self delegate];
  [v7 invitationCell:self didRespondToInvitationWithResponse:4];
}

- (void)closeButtonPressed:(id)a3
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

  v7 = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
  v8 = [v7 isUnknownContact];

  v9 = HFLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = [(HUIncomingInvitationTableViewCell *)self invitation];
      v12 = [v11 hf_prettyDescription];
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring %@", &v16, 0xCu);
    }

    v13 = 3;
  }

  else
  {
    if (v10)
    {
      v14 = [(HUIncomingInvitationTableViewCell *)self invitation];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Declining %@", &v16, 0xCu);
    }

    v13 = 2;
  }

  v15 = [(HUIncomingInvitationTableViewCell *)self delegate];
  [v15 invitationCell:self didRespondToInvitationWithResponse:v13];
}

- (void)setInvitation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUIncomingInvitationTableViewCell *)self invitation];

  if (v6 != v5)
  {
    objc_storeStrong(&self->_invitation, a3);
    v7 = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
    [v7 setInvitation:v5];

    if (v5)
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 hf_prettyDescription];
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Setting invitation %@", &v12, 0xCu);
      }

      [(HUIncomingInvitationTableViewCell *)self _updateInvitationViews];
    }

    else
    {
      [(HUIncomingInvitationTableViewCell *)self setContact:0];
      v10 = [(HUIncomingInvitationTableViewCell *)self homeNameLabel];
      [v10 setText:0];

      v11 = [(HUIncomingInvitationTableViewCell *)self infoLabel];
      [v11 setText:0];
    }

    [(HUIncomingInvitationTableViewCell *)self setNeedsLayout];
  }
}

- (void)_updateInvitationViews
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
  v4 = [v3 isUnknownContact];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBDB38]);
    v28[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v7 = [(HUIncomingInvitationTableViewCell *)self avatarView];
    [v7 setContacts:v6];

    v8 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    v9 = [v8 configuration];
    v10 = [v9 copy];

    v11 = _HULocalizedStringWithDefaultValue(@"HUUserManagementViewButton", @"HUUserManagementViewButton", 1);
    [v10 setTitle:v11];

    v12 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    [v12 setConfiguration:v10];

    v13 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    [v13 setHidden:0];
  }

  else
  {
    v14 = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
    v15 = [v14 inviterContact];
    v27 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v17 = [(HUIncomingInvitationTableViewCell *)self avatarView];
    [v17 setContacts:v16];

    v18 = [(HUIncomingInvitationTableViewCell *)self knownContactViewButtonConfiguration];
    v19 = [v18 copy];
    v20 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    [v20 setConfiguration:v19];

    v5 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    [v5 setHidden:1];
  }

  v21 = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
  v22 = [v21 detailText];

  v23 = [(HUIncomingInvitationTableViewCell *)self invitationHelper];
  v24 = [v23 homeInvitationTitle];

  v25 = [(HUIncomingInvitationTableViewCell *)self homeNameLabel];
  [v25 setText:v24];

  v26 = [(HUIncomingInvitationTableViewCell *)self infoLabel];
  [v26 setText:v22];
}

- (void)_setupDynamicConstraints
{
  v33[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUIncomingInvitationTableViewCell *)self dynamicConstraints];
  [v3 deactivateConstraints:v4];

  v5 = [(HUIncomingInvitationTableViewCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  v8 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
  v31 = v8;
  if (IsAccessibilityCategory)
  {
    v9 = [v8 topAnchor];
    v29 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    [v29 bottomAnchor];
    v28 = v30 = v9;
    v27 = [v9 constraintEqualToAnchor:17.0 constant:?];
    v33[0] = v27;
    v26 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    v10 = [v26 leadingAnchor];
    v11 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    v12 = [v11 leadingAnchor];
    v25 = v10;
    v13 = [v10 constraintEqualToAnchor:v12];
    v33[1] = v13;
    v14 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    v15 = v33;
  }

  else
  {
    v16 = [v8 leadingAnchor];
    v29 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    [v29 trailingAnchor];
    v28 = v30 = v16;
    v27 = [v16 constraintEqualToAnchor:17.0 constant:?];
    v32[0] = v27;
    v26 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
    v17 = [v26 bottomAnchor];
    v11 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    v12 = [v11 bottomAnchor];
    v25 = v17;
    v13 = [v17 constraintEqualToAnchor:v12];
    v32[1] = v13;
    v14 = [(HUIncomingInvitationTableViewCell *)self viewButton];
    v15 = v32;
  }

  v18 = [v14 bottomAnchor];
  v19 = [(HUIncomingInvitationTableViewCell *)self contentView];
  v20 = [v19 bottomAnchor];
  v21 = [v18 constraintEqualToAnchor:v20 constant:-14.0];
  v15[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  [(HUIncomingInvitationTableViewCell *)self setDynamicConstraints:v22];

  v23 = MEMORY[0x277CCAAD0];
  v24 = [(HUIncomingInvitationTableViewCell *)self dynamicConstraints];
  [v23 activateConstraints:v24];
}

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner != a3)
  {
    self->_showSpinner = a3;
    if (a3)
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
  v3 = [(HUIncomingInvitationTableViewCell *)self spinner];

  if (v3)
  {
    v4 = [(HUIncomingInvitationTableViewCell *)self spinner];
    [v4 removeFromSuperview];

    [(HUIncomingInvitationTableViewCell *)self setSpinner:0];
  }

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(HUIncomingInvitationTableViewCell *)self setSpinner:v5];

  v6 = [(HUIncomingInvitationTableViewCell *)self spinner];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(HUIncomingInvitationTableViewCell *)self contentView];
  v8 = [(HUIncomingInvitationTableViewCell *)self spinner];
  [v7 addSubview:v8];

  v9 = [(HUIncomingInvitationTableViewCell *)self spinner];
  [v9 startAnimating];

  v26 = MEMORY[0x277CCAAD0];
  v28 = [(HUIncomingInvitationTableViewCell *)self spinner];
  v27 = [v28 centerXAnchor];
  v10 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
  v11 = [v10 centerXAnchor];
  v12 = [v27 constraintEqualToAnchor:v11];
  v29[0] = v12;
  v13 = [(HUIncomingInvitationTableViewCell *)self spinner];
  v14 = [v13 centerYAnchor];
  v15 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
  v16 = [v15 centerYAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v29[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [v26 activateConstraints:v18];

  v19 = [(HUIncomingInvitationTableViewCell *)self reportJunkButton];
  [v19 setHidden:1];

  v20 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  v21 = [v20 configuration];

  v22 = _HULocalizedStringWithDefaultValue(@"HUUserManagementCancelButton", @"HUUserManagementCancelButton", 1);
  [v21 setTitle:v22];

  v23 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [v23 setConfiguration:v21];

  v24 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [v24 removeTarget:0 action:0 forControlEvents:64];

  v25 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [v25 addTarget:self action:sel_declineButtonPressed_ forControlEvents:64];
}

- (void)_hideInvitationSpinner
{
  v3 = [(HUIncomingInvitationTableViewCell *)self spinner];

  if (v3)
  {
    v4 = [(HUIncomingInvitationTableViewCell *)self spinner];
    [v4 removeFromSuperview];

    [(HUIncomingInvitationTableViewCell *)self setSpinner:0];
  }

  v5 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [v5 setHidden:0];

  v6 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  v11 = [v6 configuration];

  v7 = _HULocalizedStringWithDefaultValue(@"HUUserManagementViewButton", @"HUUserManagementViewButton", 1);
  [v11 setTitle:v7];

  v8 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [v8 setConfiguration:v11];

  v9 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [v9 removeTarget:0 action:0 forControlEvents:64];

  v10 = [(HUIncomingInvitationTableViewCell *)self viewButton];
  [v10 addTarget:self action:sel_viewButtonPressed_ forControlEvents:64];
}

- (HUIncomingInvitationTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end