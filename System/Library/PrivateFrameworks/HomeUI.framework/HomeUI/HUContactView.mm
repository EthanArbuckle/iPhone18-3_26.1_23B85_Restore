@interface HUContactView
- (BOOL)_isPhoneNumberOnlyAccount;
- (HUContactView)initWithFrame:(CGRect)frame;
- (NSAttributedString)message;
- (void)_setupViews;
- (void)_updateConstraints;
- (void)_updateNameLabelFont;
- (void)setAccounts:(id)accounts;
- (void)setAvatarDiameter:(double)diameter;
- (void)setContact:(id)contact;
- (void)setContactNameFontTextStyle:(id)style;
- (void)setMessage:(id)message;
- (void)setNumberOfLinesForMessage:(unint64_t)message;
@end

@implementation HUContactView

- (HUContactView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUContactView;
  v3 = [(HUContactView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_avatarDiameter = 85.0;
    v3->_contactNameFormatStyle = 0;
    [(HUContactView *)v3 _setupViews];
  }

  return v4;
}

- (void)setAvatarDiameter:(double)diameter
{
  if (self->_avatarDiameter != diameter)
  {
    self->_avatarDiameter = diameter;
    [(HUContactView *)self _updateConstraints];
  }
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  if (([(CNContact *)self->_contact isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contact, contact);
    if (self->_contact)
    {
      avatarView = [(HUContactView *)self avatarView];
      [avatarView setContact:contactCopy];

      v6 = MEMORY[0x277CBDA78];
      contact = [(HUContactView *)self contact];
      v8 = [v6 stringFromContact:contact style:{-[HUContactView contactNameFormatStyle](self, "contactNameFormatStyle")}];
      nameLabel = [(HUContactView *)self nameLabel];
      [nameLabel setText:v8];
    }

    [(HUContactView *)self _updateConstraints];
  }
}

- (NSAttributedString)message
{
  messageLabel = [(HUContactView *)self messageLabel];
  attributedText = [messageLabel attributedText];

  return attributedText;
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  messageLabel = [(HUContactView *)self messageLabel];
  if (messageCopy)
  {

    if (!messageLabel)
    {
      v5 = objc_alloc_init(MEMORY[0x277D756B8]);
      [(HUContactView *)self setMessageLabel:v5];

      messageLabel2 = [(HUContactView *)self messageLabel];
      [messageLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

      messageLabel3 = [(HUContactView *)self messageLabel];
      [(HUContactView *)self addSubview:messageLabel3];
    }

    numberOfLinesForMessage = [(HUContactView *)self numberOfLinesForMessage];
    messageLabel4 = [(HUContactView *)self messageLabel];
    [messageLabel4 setNumberOfLines:numberOfLinesForMessage];

    messageLabel5 = [(HUContactView *)self messageLabel];
    [messageLabel5 setAttributedText:messageCopy];

    messageLabel6 = [(HUContactView *)self messageLabel];
    [messageLabel6 sizeToFit];

    [(HUContactView *)self _updateConstraints];
  }

  else
  {
    [messageLabel removeFromSuperview];

    [(HUContactView *)self setMessageLabel:0];
  }
}

- (void)setAccounts:(id)accounts
{
  v66 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = accounts;
  v3 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (!v3)
  {
    v54 = 0;
    v5 = 0;
    goto LABEL_20;
  }

  v4 = v3;
  v54 = 0;
  v5 = 0;
  v6 = *v56;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v56 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v55 + 1) + 8 * i);
      objc_opt_class();
      v9 = v8;
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      objc_opt_class();
      v12 = v9;
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v11)
      {
        v15 = v54;
        v54 = v12;
        v16 = v5;
      }

      else
      {
        v15 = v5;
        v16 = v12;
        if (!v14)
        {
          goto LABEL_16;
        }
      }

      v17 = v12;

      v5 = v16;
LABEL_16:
    }

    v4 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  }

  while (v4);
LABEL_20:
  v18 = HFLogForCategory();
  v19 = v54;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    *buf = 138412802;
    v60 = v20;
    v61 = 2112;
    v62 = v54;
    v63 = 2112;
    v64 = v5;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@ appleMusicAccount = [%@], appleIDAccount = [%@] ", buf, 0x20u);
  }

  if (v5)
  {
    if (v54)
    {
      goto LABEL_24;
    }

LABEL_27:
    appleMusicAccountLabel = [(HUContactView *)self appleMusicAccountLabel];
    [appleMusicAccountLabel removeFromSuperview];

    [(HUContactView *)self setAppleMusicAccountLabel:0];
    if (v5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    appleIDAccountLabel = [(HUContactView *)self appleIDAccountLabel];
    [appleIDAccountLabel removeFromSuperview];

    [(HUContactView *)self setAppleIDAccountLabel:0];
    if (!v54)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v5)
    {
LABEL_28:
      appleIDAccountLabel2 = [(HUContactView *)self appleIDAccountLabel];

      if (!appleIDAccountLabel2)
      {
        v24 = objc_alloc_init(MEMORY[0x277D756B8]);
        [(HUContactView *)self setAppleIDAccountLabel:v24];

        appleIDAccountLabel3 = [(HUContactView *)self appleIDAccountLabel];
        [appleIDAccountLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

        appleIDAccountLabel4 = [(HUContactView *)self appleIDAccountLabel];
        [(HUContactView *)self addSubview:appleIDAccountLabel4];
      }
    }
  }

  if (v54)
  {
    username = [v54 username];
    if ([username isEqualToString:v5])
    {
      goto LABEL_34;
    }

    appleMusicAccountLabel2 = [(HUContactView *)self appleMusicAccountLabel];

    if (!appleMusicAccountLabel2)
    {
      v29 = objc_alloc_init(MEMORY[0x277D756B8]);
      [(HUContactView *)self setAppleMusicAccountLabel:v29];

      appleMusicAccountLabel3 = [(HUContactView *)self appleMusicAccountLabel];
      [appleMusicAccountLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

      username = [(HUContactView *)self appleMusicAccountLabel];
      [(HUContactView *)self addSubview:username];
LABEL_34:
    }
  }

  if (![(HUContactView *)self _isPhoneNumberOnlyAccount])
  {
    v31 = HFLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = NSStringFromSelector(a2);
      *buf = 138412290;
      v60 = v32;
      _os_log_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEFAULT, "%@ NOT a Phone Number ONLY Account, We will display iCloud and iTunes Accounts", buf, 0xCu);
    }

    v33 = *MEMORY[0x277D76968];
    v34 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    appleIDAccountLabel5 = [(HUContactView *)self appleIDAccountLabel];
    [appleIDAccountLabel5 setFont:v34];

    appleMusicAccountLabel4 = [(HUContactView *)self appleMusicAccountLabel];
    if (appleMusicAccountLabel4)
    {
      v37 = MEMORY[0x277CCACA8];
      appleIDAccountLabel5 = _HULocalizedStringWithDefaultValue(@"HUUseriCloudAccount_Title", @"HUUseriCloudAccount_Title", 1);
      v38 = [v37 stringWithFormat:@"%@: %@", appleIDAccountLabel5, v5];
    }

    else
    {
      v38 = v5;
    }

    appleIDAccountLabel6 = [(HUContactView *)self appleIDAccountLabel];
    [appleIDAccountLabel6 setText:v38];

    if (appleMusicAccountLabel4)
    {
    }

    grayColor = [MEMORY[0x277D75348] grayColor];
    appleIDAccountLabel7 = [(HUContactView *)self appleIDAccountLabel];
    [appleIDAccountLabel7 setTextColor:grayColor];

    v42 = [MEMORY[0x277D74300] preferredFontForTextStyle:v33];
    appleMusicAccountLabel5 = [(HUContactView *)self appleMusicAccountLabel];
    [appleMusicAccountLabel5 setFont:v42];

    v44 = MEMORY[0x277CCACA8];
    v45 = _HULocalizedStringWithDefaultValue(@"HUUserAppleMusicAccount_Title", @"HUUserAppleMusicAccount_Title", 1);
    v19 = v54;
    username2 = [v54 username];
    v47 = [v44 stringWithFormat:@" %@: %@", v45, username2];
    appleMusicAccountLabel6 = [(HUContactView *)self appleMusicAccountLabel];
    [appleMusicAccountLabel6 setText:v47];

    grayColor2 = [MEMORY[0x277D75348] grayColor];
    appleMusicAccountLabel7 = [(HUContactView *)self appleMusicAccountLabel];
    [appleMusicAccountLabel7 setTextColor:grayColor2];
  }

  [(HUContactView *)self _updateConstraints];
}

- (void)setNumberOfLinesForMessage:(unint64_t)message
{
  messageLabel = [(HUContactView *)self messageLabel];
  [messageLabel setNumberOfLines:message];
}

- (void)setContactNameFontTextStyle:(id)style
{
  objc_storeStrong(&self->_contactNameFontTextStyle, style);

  [(HUContactView *)self _updateNameLabelFont];
}

- (void)_setupViews
{
  v3 = objc_alloc_init(MEMORY[0x277CBDBE8]);
  [(HUContactView *)self setAvatarView:v3];

  avatarView = [(HUContactView *)self avatarView];
  [avatarView setUserInteractionEnabled:0];

  avatarView2 = [(HUContactView *)self avatarView];
  [avatarView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  avatarView3 = [(HUContactView *)self avatarView];
  [(HUContactView *)self addSubview:avatarView3];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUContactView *)self setNameLabel:v7];

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  nameLabel = [(HUContactView *)self nameLabel];
  [nameLabel setFont:v8];

  nameLabel2 = [(HUContactView *)self nameLabel];
  [nameLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  nameLabel3 = [(HUContactView *)self nameLabel];
  [nameLabel3 setNumberOfLines:2];

  nameLabel4 = [(HUContactView *)self nameLabel];
  [nameLabel4 setTextAlignment:1];

  nameLabel5 = [(HUContactView *)self nameLabel];
  [(HUContactView *)self addSubview:nameLabel5];
}

- (void)_updateNameLabelFont
{
  v3 = MEMORY[0x277D74300];
  contactNameFontTextStyle = [(HUContactView *)self contactNameFontTextStyle];
  v5 = [v3 preferredFontForTextStyle:contactNameFontTextStyle];
  nameLabel = [(HUContactView *)self nameLabel];
  [nameLabel setFont:v5];

  nameLabel2 = [(HUContactView *)self nameLabel];
  [nameLabel2 setNeedsLayout];
}

- (void)_updateConstraints
{
  constraints = [(HUContactView *)self constraints];

  if (constraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUContactView *)self constraints];
    [v4 deactivateConstraints:constraints2];

    constraints3 = [(HUContactView *)self constraints];
    [constraints3 removeAllObjects];
  }

  else
  {
    constraints3 = objc_opt_new();
    [(HUContactView *)self setConstraints:constraints3];
  }

  constraints4 = [(HUContactView *)self constraints];
  avatarView = [(HUContactView *)self avatarView];
  topAnchor = [avatarView topAnchor];
  topAnchor2 = [(HUContactView *)self topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [constraints4 addObject:v11];

  constraints5 = [(HUContactView *)self constraints];
  avatarView2 = [(HUContactView *)self avatarView];
  centerXAnchor = [avatarView2 centerXAnchor];
  centerXAnchor2 = [(HUContactView *)self centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [constraints5 addObject:v16];

  constraints6 = [(HUContactView *)self constraints];
  avatarView3 = [(HUContactView *)self avatarView];
  leadingAnchor = [avatarView3 leadingAnchor];
  leadingAnchor2 = [(HUContactView *)self leadingAnchor];
  v21 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  [constraints6 addObject:v21];

  constraints7 = [(HUContactView *)self constraints];
  avatarView4 = [(HUContactView *)self avatarView];
  trailingAnchor = [avatarView4 trailingAnchor];
  trailingAnchor2 = [(HUContactView *)self trailingAnchor];
  v26 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [constraints7 addObject:v26];

  constraints8 = [(HUContactView *)self constraints];
  avatarView5 = [(HUContactView *)self avatarView];
  widthAnchor = [avatarView5 widthAnchor];
  [(HUContactView *)self avatarDiameter];
  v30 = [widthAnchor constraintEqualToConstant:?];
  [constraints8 addObject:v30];

  constraints9 = [(HUContactView *)self constraints];
  avatarView6 = [(HUContactView *)self avatarView];
  heightAnchor = [avatarView6 heightAnchor];
  [(HUContactView *)self avatarDiameter];
  v34 = [heightAnchor constraintEqualToConstant:?];
  [constraints9 addObject:v34];

  nameLabel = [(HUContactView *)self nameLabel];
  firstBaselineAnchor = [nameLabel firstBaselineAnchor];
  avatarView7 = [(HUContactView *)self avatarView];
  bottomAnchor = [avatarView7 bottomAnchor];
  v142 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:20.0];

  LODWORD(v39) = 1144750080;
  [v142 setPriority:v39];
  constraints10 = [(HUContactView *)self constraints];
  [constraints10 addObject:v142];

  constraints11 = [(HUContactView *)self constraints];
  nameLabel2 = [(HUContactView *)self nameLabel];
  topAnchor3 = [nameLabel2 topAnchor];
  avatarView8 = [(HUContactView *)self avatarView];
  bottomAnchor2 = [avatarView8 bottomAnchor];
  v46 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  [constraints11 addObject:v46];

  constraints12 = [(HUContactView *)self constraints];
  nameLabel3 = [(HUContactView *)self nameLabel];
  centerXAnchor3 = [nameLabel3 centerXAnchor];
  centerXAnchor4 = [(HUContactView *)self centerXAnchor];
  v51 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [constraints12 addObject:v51];

  constraints13 = [(HUContactView *)self constraints];
  nameLabel4 = [(HUContactView *)self nameLabel];
  leadingAnchor3 = [nameLabel4 leadingAnchor];
  leadingAnchor4 = [(HUContactView *)self leadingAnchor];
  v56 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  [constraints13 addObject:v56];

  constraints14 = [(HUContactView *)self constraints];
  nameLabel5 = [(HUContactView *)self nameLabel];
  trailingAnchor3 = [nameLabel5 trailingAnchor];
  trailingAnchor4 = [(HUContactView *)self trailingAnchor];
  v61 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  [constraints14 addObject:v61];

  appleIDAccountLabel = [(HUContactView *)self appleIDAccountLabel];

  if (appleIDAccountLabel)
  {
    constraints15 = [(HUContactView *)self constraints];
    appleIDAccountLabel2 = [(HUContactView *)self appleIDAccountLabel];
    firstBaselineAnchor2 = [appleIDAccountLabel2 firstBaselineAnchor];
    nameLabel6 = [(HUContactView *)self nameLabel];
    lastBaselineAnchor = [nameLabel6 lastBaselineAnchor];
    v68 = [firstBaselineAnchor2 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    [constraints15 addObject:v68];

    constraints16 = [(HUContactView *)self constraints];
    appleIDAccountLabel3 = [(HUContactView *)self appleIDAccountLabel];
    centerXAnchor5 = [appleIDAccountLabel3 centerXAnchor];
    centerXAnchor6 = [(HUContactView *)self centerXAnchor];
    v73 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [constraints16 addObject:v73];

    constraints17 = [(HUContactView *)self constraints];
    appleIDAccountLabel4 = [(HUContactView *)self appleIDAccountLabel];
    leadingAnchor5 = [appleIDAccountLabel4 leadingAnchor];
    leadingAnchor6 = [(HUContactView *)self leadingAnchor];
    v78 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
    [constraints17 addObject:v78];

    constraints18 = [(HUContactView *)self constraints];
    appleIDAccountLabel5 = [(HUContactView *)self appleIDAccountLabel];
    trailingAnchor5 = [appleIDAccountLabel5 trailingAnchor];
    trailingAnchor6 = [(HUContactView *)self trailingAnchor];
    v83 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
    [constraints18 addObject:v83];
  }

  appleMusicAccountLabel = [(HUContactView *)self appleMusicAccountLabel];

  if (appleMusicAccountLabel)
  {
    appleIDAccountLabel6 = [(HUContactView *)self appleIDAccountLabel];
    lastBaselineAnchor2 = [appleIDAccountLabel6 lastBaselineAnchor];

    if (!lastBaselineAnchor2)
    {
      nameLabel7 = [(HUContactView *)self nameLabel];
      lastBaselineAnchor2 = [nameLabel7 lastBaselineAnchor];
    }

    constraints19 = [(HUContactView *)self constraints];
    appleMusicAccountLabel2 = [(HUContactView *)self appleMusicAccountLabel];
    firstBaselineAnchor3 = [appleMusicAccountLabel2 firstBaselineAnchor];
    v91 = [firstBaselineAnchor3 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];
    [constraints19 addObject:v91];

    constraints20 = [(HUContactView *)self constraints];
    appleMusicAccountLabel3 = [(HUContactView *)self appleMusicAccountLabel];
    centerXAnchor7 = [appleMusicAccountLabel3 centerXAnchor];
    centerXAnchor8 = [(HUContactView *)self centerXAnchor];
    v96 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    [constraints20 addObject:v96];

    constraints21 = [(HUContactView *)self constraints];
    appleMusicAccountLabel4 = [(HUContactView *)self appleMusicAccountLabel];
    trailingAnchor7 = [appleMusicAccountLabel4 trailingAnchor];
    trailingAnchor8 = [(HUContactView *)self trailingAnchor];
    v101 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
    [constraints21 addObject:v101];
  }

  messageLabel = [(HUContactView *)self messageLabel];

  nameLabel8 = [(HUContactView *)self nameLabel];
  lastBaselineAnchor3 = [nameLabel8 lastBaselineAnchor];

  appleIDAccountLabel7 = [(HUContactView *)self appleIDAccountLabel];
  v106 = appleIDAccountLabel7;
  if (messageLabel)
  {
    if (appleIDAccountLabel7 && ([(HUContactView *)self appleMusicAccountLabel], v107 = objc_claimAutoreleasedReturnValue(), v107, v106, v107))
    {
      appleMusicAccountLabel5 = [(HUContactView *)self appleMusicAccountLabel];
    }

    else
    {
      appleIDAccountLabel8 = [(HUContactView *)self appleIDAccountLabel];

      if (!appleIDAccountLabel8)
      {
LABEL_17:
        constraints22 = [(HUContactView *)self constraints];
        messageLabel2 = [(HUContactView *)self messageLabel];
        firstBaselineAnchor4 = [messageLabel2 firstBaselineAnchor];
        v115 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor3 constant:25.0];
        [constraints22 addObject:v115];

        constraints23 = [(HUContactView *)self constraints];
        messageLabel3 = [(HUContactView *)self messageLabel];
        centerXAnchor9 = [messageLabel3 centerXAnchor];
        centerXAnchor10 = [(HUContactView *)self centerXAnchor];
        v120 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
        [constraints23 addObject:v120];

        constraints24 = [(HUContactView *)self constraints];
        messageLabel4 = [(HUContactView *)self messageLabel];
        leadingAnchor7 = [messageLabel4 leadingAnchor];
        leadingAnchor8 = [(HUContactView *)self leadingAnchor];
        v125 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8];
        [constraints24 addObject:v125];

        constraints25 = [(HUContactView *)self constraints];
        messageLabel5 = [(HUContactView *)self messageLabel];
        trailingAnchor9 = [messageLabel5 trailingAnchor];
        trailingAnchor10 = [(HUContactView *)self trailingAnchor];
        v130 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:trailingAnchor10];
        [constraints25 addObject:v130];

        constraints26 = [(HUContactView *)self constraints];
        messageLabel6 = [(HUContactView *)self messageLabel];
        lastBaselineAnchor4 = [messageLabel6 lastBaselineAnchor];
        bottomAnchor3 = [(HUContactView *)self bottomAnchor];
        v135 = [lastBaselineAnchor4 constraintEqualToAnchor:bottomAnchor3];
        [constraints26 addObject:v135];

        goto LABEL_24;
      }

      appleMusicAccountLabel5 = [(HUContactView *)self appleIDAccountLabel];
    }

    v110 = appleMusicAccountLabel5;
    lastBaselineAnchor5 = [appleMusicAccountLabel5 lastBaselineAnchor];

    lastBaselineAnchor3 = lastBaselineAnchor5;
    goto LABEL_17;
  }

  if (v106)
  {
    appleIDAccountLabel9 = [(HUContactView *)self appleIDAccountLabel];
LABEL_22:
    v138 = appleIDAccountLabel9;
    lastBaselineAnchor6 = [appleIDAccountLabel9 lastBaselineAnchor];

    lastBaselineAnchor3 = lastBaselineAnchor6;
    goto LABEL_23;
  }

  appleMusicAccountLabel6 = [(HUContactView *)self appleMusicAccountLabel];

  if (appleMusicAccountLabel6)
  {
    appleIDAccountLabel9 = [(HUContactView *)self appleMusicAccountLabel];
    goto LABEL_22;
  }

LABEL_23:
  constraints26 = [(HUContactView *)self constraints];
  messageLabel6 = [(HUContactView *)self bottomAnchor];
  lastBaselineAnchor4 = [lastBaselineAnchor3 constraintEqualToAnchor:messageLabel6];
  [constraints26 addObject:lastBaselineAnchor4];
LABEL_24:

  v140 = MEMORY[0x277CCAAD0];
  constraints27 = [(HUContactView *)self constraints];
  [v140 activateConstraints:constraints27];
}

- (BOOL)_isPhoneNumberOnlyAccount
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBDA78];
  contact = [(HUContactView *)self contact];
  v5 = [v3 stringFromContact:contact style:{-[HUContactView contactNameFormatStyle](self, "contactNameFormatStyle")}];

  v6 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v5];
  v7 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v6];
  v8 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v9 = *MEMORY[0x277CBD098];
  v14[0] = v8;
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v11 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v12 = [v11 unifiedContactsMatchingPredicate:v7 keysToFetch:v10 error:0];
  LOBYTE(v8) = [v12 hmf_isEmpty];

  return v8 ^ 1;
}

@end