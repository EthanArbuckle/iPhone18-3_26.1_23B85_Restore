@interface _HUUserAvatarHeaderView
- (ACAccountStore)accountStore;
- (HUMediaAccountDelegate)mediaAccountDelegate;
- (NSAttributedString)message;
- (_HUUserAvatarHeaderView)initWithUser:(id)user home:(id)home delegate:(id)delegate;
- (id)_keyDescriptors;
- (void)dealloc;
- (void)dismissMultiUserTokenFixUI;
- (void)dismissSplitAccountView;
- (void)presentMultiUserTokenFixUIForMediaAccount:(id)account inHome:(id)home;
- (void)setAccounts:(id)accounts forHome:(id)home;
- (void)setMessage:(id)message;
- (void)showSplitAccountViewIfNeeded;
@end

@implementation _HUUserAvatarHeaderView

- (_HUUserAvatarHeaderView)initWithUser:(id)user home:(id)home delegate:(id)delegate
{
  v66[4] = *MEMORY[0x277D85DE8];
  userCopy = user;
  homeCopy = home;
  obj = delegate;
  v65.receiver = self;
  v65.super_class = _HUUserAvatarHeaderView;
  v8 = [(_HUUserAvatarHeaderView *)&v65 initWithReuseIdentifier:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_mediaAccountDelegate, obj);
    v10 = objc_alloc_init(HUContactView);
    contactView = v9->_contactView;
    v9->_contactView = v10;

    [(HUContactView *)v9->_contactView setContactNameFontTextStyle:*MEMORY[0x277D769A8]];
    v59 = [homeCopy hf_handleForUser:userCopy];
    if (v59)
    {
      defaultStore = [MEMORY[0x277D145B0] defaultStore];
      _keyDescriptors = [(_HUUserAvatarHeaderView *)v9 _keyDescriptors];
      v14 = [defaultStore contactForUserHandle:v59 withKeys:_keyDescriptors];
      [(HUContactView *)v9->_contactView setContact:v14];
    }

    else
    {
      v15 = MEMORY[0x277CBDA58];
      name = [userCopy name];
      defaultStore = [v15 contactWithDisplayName:name emailOrPhoneNumber:0];

      [(HUContactView *)v9->_contactView setContact:defaultStore];
    }

    if (![v59 type])
    {
      v17 = objc_opt_new();
      userID = [v59 userID];

      if (userID)
      {
        userID2 = [v59 userID];
        [v17 addObject:userID2];
      }

      [(HUContactView *)v9->_contactView setAccounts:v17];
      mEMORY[0x277D14400] = [MEMORY[0x277D14400] sharedInstance];
      uniqueIdentifier = [homeCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      v23 = [mEMORY[0x277D14400] mediaAccountForHomeIdentifier:uUIDString];

      if (v23)
      {
        [v17 addObject:v23];
        [(HUContactView *)v9->_contactView setAccounts:v17];
      }

      else
      {
        mEMORY[0x277D14400]2 = [MEMORY[0x277D14400] sharedInstance];
        v25 = [mEMORY[0x277D14400]2 executeHomeMediaAccountFetchForHome:homeCopy];
        mediaAccountFuture = v9->_mediaAccountFuture;
        v9->_mediaAccountFuture = v25;

        objc_initWeak(&location, v9);
        v27 = v9->_mediaAccountFuture;
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __54___HUUserAvatarHeaderView_initWithUser_home_delegate___block_invoke;
        v60[3] = &unk_277DBE738;
        objc_copyWeak(&v63, &location);
        v61 = homeCopy;
        v62 = v17;
        v28 = [(NAFuture *)v27 addCompletionBlock:v60];

        objc_destroyWeak(&v63);
        objc_destroyWeak(&location);
      }
    }

    contentView = [(_HUUserAvatarHeaderView *)v9 contentView];
    [contentView naui_addAutoLayoutSubview:v9->_contactView];

    contentView2 = [(_HUUserAvatarHeaderView *)v9 contentView];
    topAnchor = [contentView2 topAnchor];
    contactView = [(_HUUserAvatarHeaderView *)v9 contactView];
    topAnchor2 = [contactView topAnchor];
    v51 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-20.0];
    v66[0] = v51;
    contentView3 = [(_HUUserAvatarHeaderView *)v9 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor = [layoutMarginsGuide leadingAnchor];
    contactView2 = [(_HUUserAvatarHeaderView *)v9 contactView];
    leadingAnchor2 = [contactView2 leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v66[1] = v45;
    contentView4 = [(_HUUserAvatarHeaderView *)v9 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
    contactView3 = [(_HUUserAvatarHeaderView *)v9 contactView];
    trailingAnchor2 = [contactView3 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v66[2] = v32;
    contentView5 = [(_HUUserAvatarHeaderView *)v9 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    contactView4 = [(_HUUserAvatarHeaderView *)v9 contactView];
    bottomAnchor2 = [contactView4 bottomAnchor];
    v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:20.0];
    v66[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
    [(_HUUserAvatarHeaderView *)v9 setLayoutConstraints:v38];

    v39 = MEMORY[0x277CCAAD0];
    layoutConstraints = [(_HUUserAvatarHeaderView *)v9 layoutConstraints];
    [v39 activateConstraints:layoutConstraints];
  }

  return v9;
}

- (void)dealloc
{
  mediaAccountFuture = [(_HUUserAvatarHeaderView *)self mediaAccountFuture];
  [mediaAccountFuture cancel];

  v4.receiver = self;
  v4.super_class = _HUUserAvatarHeaderView;
  [(_HUUserAvatarHeaderView *)&v4 dealloc];
}

- (void)presentMultiUserTokenFixUIForMediaAccount:(id)account inHome:(id)home
{
  v102 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  homeCopy = home;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    currentUser = [homeCopy currentUser];
    *buf = 138413058;
    v95 = v10;
    v96 = 2112;
    v97 = accountCopy;
    v98 = 2112;
    v99 = currentUser;
    v100 = 2112;
    v101 = homeCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@ MutilUser Token Fix needed for account [%@], user [%@], in Home [%@]", buf, 0x2Au);
  }

  v12 = [HUMultiUserTokenFixTableView alloc];
  mediaAccountDelegate = [(_HUUserAvatarHeaderView *)self mediaAccountDelegate];
  v14 = [(HUMultiUserTokenFixTableView *)v12 initWithFrame:accountCopy mediaAccount:homeCopy home:mediaAccountDelegate delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_HUUserAvatarHeaderView *)self setMultiUserTokenFixHeaderView:v14];

  contentView = [(_HUUserAvatarHeaderView *)self contentView];
  multiUserTokenFixHeaderView = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  [contentView naui_addAutoLayoutSubview:multiUserTokenFixHeaderView];

  v17 = MEMORY[0x277CCAAD0];
  layoutConstraints = [(_HUUserAvatarHeaderView *)self layoutConstraints];
  [v17 deactivateConstraints:layoutConstraints];

  multiUserTokenFixHeaderView2 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  leadingAnchor = [multiUserTokenFixHeaderView2 leadingAnchor];
  contentView2 = [(_HUUserAvatarHeaderView *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v88 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v93[0] = v88;
  multiUserTokenFixHeaderView3 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  trailingAnchor = [multiUserTokenFixHeaderView3 trailingAnchor];
  contentView3 = [(_HUUserAvatarHeaderView *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v82 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v93[1] = v82;
  multiUserTokenFixHeaderView4 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  topAnchor = [multiUserTokenFixHeaderView4 topAnchor];
  contentView4 = [(_HUUserAvatarHeaderView *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v76 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-20.0];
  v93[2] = v76;
  multiUserTokenFixHeaderView5 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  heightAnchor = [multiUserTokenFixHeaderView5 heightAnchor];
  multiUserTokenFixHeaderView6 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  [multiUserTokenFixHeaderView6 tableViewHeightForWidth:v19];
  v71 = [heightAnchor constraintEqualToConstant:?];
  v93[3] = v71;
  contactView = [(_HUUserAvatarHeaderView *)self contactView];
  leadingAnchor3 = [contactView leadingAnchor];
  multiUserTokenFixHeaderView7 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  leadingAnchor4 = [multiUserTokenFixHeaderView7 leadingAnchor];
  v66 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v93[4] = v66;
  contactView2 = [(_HUUserAvatarHeaderView *)self contactView];
  trailingAnchor3 = [contactView2 trailingAnchor];
  multiUserTokenFixHeaderView8 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  trailingAnchor4 = [multiUserTokenFixHeaderView8 trailingAnchor];
  v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v93[5] = v61;
  contactView3 = [(_HUUserAvatarHeaderView *)self contactView];
  topAnchor3 = [contactView3 topAnchor];
  multiUserTokenFixHeaderView9 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  bottomAnchor = [multiUserTokenFixHeaderView9 bottomAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  v93[6] = v22;
  contentView5 = [(_HUUserAvatarHeaderView *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  [(_HUUserAvatarHeaderView *)self contactView];
  v25 = v83 = accountCopy;
  [v25 bottomAnchor];
  v26 = v81 = homeCopy;
  v27 = [bottomAnchor2 constraintEqualToAnchor:v26 constant:20.0];
  v93[7] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:8];
  [(_HUUserAvatarHeaderView *)self setLayoutConstraints:v28];

  v29 = MEMORY[0x277CCAAD0];
  layoutConstraints2 = [(_HUUserAvatarHeaderView *)self layoutConstraints];
  [v29 activateConstraints:layoutConstraints2];

  contentView6 = [(_HUUserAvatarHeaderView *)self contentView];
  [contentView6 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  multiUserTokenFixHeaderView10 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  [multiUserTokenFixHeaderView10 tableViewHeightForWidth:v42];
  v44 = v39 + v43 + -20.0;

  contentView7 = [(_HUUserAvatarHeaderView *)self contentView];
  [contentView7 setFrame:{v33, v35, v37, v44}];

  [(_HUUserAvatarHeaderView *)self frame];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  multiUserTokenFixHeaderView11 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen3 bounds];
  [multiUserTokenFixHeaderView11 tableViewHeightForWidth:v56];
  v58 = v53 + v57 + -20.0;

  [(_HUUserAvatarHeaderView *)self setFrame:v47, v49, v51, v58];
}

- (void)dismissMultiUserTokenFixUI
{
  multiUserTokenFixHeaderView = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  if (multiUserTokenFixHeaderView)
  {
    v4 = multiUserTokenFixHeaderView;
    multiUserTokenFixHeaderView2 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
    [multiUserTokenFixHeaderView2 alpha];
    v7 = v6;

    if (v7 == 1.0)
    {
      contentView = [(_HUUserAvatarHeaderView *)self contentView];
      [contentView frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;

      contentView2 = [(_HUUserAvatarHeaderView *)self contentView];
      [contentView2 frame];
      v17 = v16;
      multiUserTokenFixHeaderView3 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
      [multiUserTokenFixHeaderView3 tableViewHeightForWidth:v14];
      v20 = v17 - v19 + 20.0;

      contentView3 = [(_HUUserAvatarHeaderView *)self contentView];
      [contentView3 setFrame:{v10, v12, v14, v20}];

      [(_HUUserAvatarHeaderView *)self frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      [(_HUUserAvatarHeaderView *)self frame];
      v29 = v28;
      multiUserTokenFixHeaderView4 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
      [multiUserTokenFixHeaderView4 tableViewHeightForWidth:v27];
      v32 = v29 - v31 + 20.0;

      [(_HUUserAvatarHeaderView *)self setFrame:v23, v25, v27, v32];
      multiUserTokenFixHeaderView5 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
      heightAnchor = [multiUserTokenFixHeaderView5 heightAnchor];
      v35 = [heightAnchor constraintEqualToConstant:20.0];
      [v35 setActive:1];

      multiUserTokenFixHeaderView6 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
      [multiUserTokenFixHeaderView6 setAlpha:0.0];

      [(_HUUserAvatarHeaderView *)self layoutIfNeeded];
    }
  }
}

- (void)setAccounts:(id)accounts forHome:(id)home
{
  v119 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  contactView = self->_contactView;
  accountsCopy = accounts;
  [(HUContactView *)contactView setAccounts:accountsCopy];
  accountStore = [(_HUUserAvatarHeaderView *)self accountStore];
  ams_activeiTunesAccount = [accountStore ams_activeiTunesAccount];
  v12 = [accountsCopy na_firstObjectPassingTest:&__block_literal_global_132];

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138412802;
    v109 = v14;
    v110 = 1024;
    *v111 = [MEMORY[0x277D14CE8] isAMac];
    *&v111[4] = 1024;
    *&v111[6] = [homeCopy isMultiUserEnabled];
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@ isThisMac = %d, is MU Enabled = [%d] ", buf, 0x18u);
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    aa_altDSID = [ams_activeiTunesAccount aa_altDSID];
    [v12 aa_altDSID];
    v18 = a2;
    v19 = ams_activeiTunesAccount;
    v20 = homeCopy;
    v22 = v21 = v12;
    *buf = 138413570;
    v109 = v16;
    v110 = 2112;
    *v111 = v19;
    *&v111[8] = 2112;
    v112 = aa_altDSID;
    v113 = 2112;
    v114 = v21;
    v115 = 2112;
    v116 = v22;
    v117 = 2112;
    v118 = v20;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@ Active Media Account - [%@] with DSID - [%@] on this iOS device.  Fetched ams_iTunesAccount - [%@] with DSID - [%@] for Home [%@]", buf, 0x3Eu);

    v12 = v21;
    homeCopy = v20;
    ams_activeiTunesAccount = v19;
    a2 = v18;
  }

  if ([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || !objc_msgSend(homeCopy, "isMultiUserEnabled") || !ams_activeiTunesAccount || (objc_msgSend(ams_activeiTunesAccount, "aa_altDSID"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "aa_altDSID"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqualToString:", v27), v27, v26, (v28))
  {
    splitAccountHeaderView = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];

    if (splitAccountHeaderView)
    {
      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = NSStringFromSelector(a2);
        *buf = 138412290;
        v109 = v25;
        _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@ Dismissing Split Account View", buf, 0xCu);
      }

      [(_HUUserAvatarHeaderView *)self dismissSplitAccountView];
    }
  }

  else
  {
    v105 = v12;
    v106 = accountStore;
    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = NSStringFromSelector(a2);
      *buf = 138412290;
      v109 = v30;
      _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@ Found Accounts are Split. Displaying the Split account UI", buf, 0xCu);
    }

    v31 = [HUSplitAccountHeaderTableView alloc];
    mediaAccountDelegate = [(_HUUserAvatarHeaderView *)self mediaAccountDelegate];
    v33 = [(HUSplitAccountHeaderTableView *)v31 initWithFrame:ams_activeiTunesAccount mediaAccount:homeCopy home:mediaAccountDelegate delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(_HUUserAvatarHeaderView *)self setSplitAccountHeaderView:v33];

    contentView = [(_HUUserAvatarHeaderView *)self contentView];
    splitAccountHeaderView2 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    [contentView naui_addAutoLayoutSubview:splitAccountHeaderView2];

    splitAccountHeaderView3 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    [splitAccountHeaderView3 setAlpha:0.0];

    v37 = MEMORY[0x277CCAAD0];
    layoutConstraints = [(_HUUserAvatarHeaderView *)self layoutConstraints];
    [v37 deactivateConstraints:layoutConstraints];

    splitAccountHeaderView4 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    leadingAnchor = [splitAccountHeaderView4 leadingAnchor];
    contentView2 = [(_HUUserAvatarHeaderView *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v100 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v107[0] = v100;
    splitAccountHeaderView5 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    trailingAnchor = [splitAccountHeaderView5 trailingAnchor];
    contentView3 = [(_HUUserAvatarHeaderView *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v95 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v107[1] = v95;
    splitAccountHeaderView6 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    topAnchor = [splitAccountHeaderView6 topAnchor];
    contentView4 = [(_HUUserAvatarHeaderView *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    v90 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-20.0];
    v107[2] = v90;
    contactView = [(_HUUserAvatarHeaderView *)self contactView];
    leadingAnchor3 = [contactView leadingAnchor];
    splitAccountHeaderView7 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    leadingAnchor4 = [splitAccountHeaderView7 leadingAnchor];
    v85 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v107[3] = v85;
    contactView2 = [(_HUUserAvatarHeaderView *)self contactView];
    trailingAnchor3 = [contactView2 trailingAnchor];
    splitAccountHeaderView8 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    trailingAnchor4 = [splitAccountHeaderView8 trailingAnchor];
    v80 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v107[4] = v80;
    contactView3 = [(_HUUserAvatarHeaderView *)self contactView];
    topAnchor3 = [contactView3 topAnchor];
    splitAccountHeaderView9 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    bottomAnchor = [splitAccountHeaderView9 bottomAnchor];
    v39 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
    v107[5] = v39;
    contentView5 = [(_HUUserAvatarHeaderView *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    contactView4 = [(_HUUserAvatarHeaderView *)self contactView];
    bottomAnchor3 = [contactView4 bottomAnchor];
    v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:20.0];
    v107[6] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:7];
    [(_HUUserAvatarHeaderView *)self setLayoutConstraints:v45];

    v46 = MEMORY[0x277CCAAD0];
    layoutConstraints2 = [(_HUUserAvatarHeaderView *)self layoutConstraints];
    [v46 activateConstraints:layoutConstraints2];

    contentView6 = [(_HUUserAvatarHeaderView *)self contentView];
    [contentView6 frame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    splitAccountHeaderView10 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    [splitAccountHeaderView10 tableViewHeightForWidth:v59];
    v61 = v56 + v60 + -20.0;

    contentView7 = [(_HUUserAvatarHeaderView *)self contentView];
    [contentView7 setFrame:{v50, v52, v54, v61}];

    [(_HUUserAvatarHeaderView *)self frame];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    splitAccountHeaderView11 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    [splitAccountHeaderView11 tableViewHeightForWidth:v73];
    v75 = v70 + v74 + -20.0;

    [(_HUUserAvatarHeaderView *)self setFrame:v64, v66, v68, v75];
    v12 = v105;
    accountStore = v106;
  }

  [(_HUUserAvatarHeaderView *)self setNeedsLayout];
}

- (void)showSplitAccountViewIfNeeded
{
  splitAccountHeaderView = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];

  if (splitAccountHeaderView)
  {
    splitAccountHeaderView2 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    heightAnchor = [splitAccountHeaderView2 heightAnchor];
    splitAccountHeaderView3 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    [splitAccountHeaderView3 tableViewHeightForWidth:v8];
    v9 = [heightAnchor constraintEqualToConstant:?];
    [v9 setActive:1];

    splitAccountHeaderView4 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    [splitAccountHeaderView4 setAlpha:1.0];

    [(_HUUserAvatarHeaderView *)self layoutIfNeeded];
  }
}

- (void)dismissSplitAccountView
{
  splitAccountHeaderView = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
  if (splitAccountHeaderView)
  {
    v4 = splitAccountHeaderView;
    splitAccountHeaderView2 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    [splitAccountHeaderView2 alpha];
    v7 = v6;

    if (v7 == 1.0)
    {
      contentView = [(_HUUserAvatarHeaderView *)self contentView];
      [contentView frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;

      contentView2 = [(_HUUserAvatarHeaderView *)self contentView];
      [contentView2 frame];
      v17 = v16;
      splitAccountHeaderView3 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
      [splitAccountHeaderView3 tableViewHeightForWidth:v14];
      v20 = v17 - v19 + 20.0;

      contentView3 = [(_HUUserAvatarHeaderView *)self contentView];
      [contentView3 setFrame:{v10, v12, v14, v20}];

      [(_HUUserAvatarHeaderView *)self frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      [(_HUUserAvatarHeaderView *)self frame];
      v29 = v28;
      splitAccountHeaderView4 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
      [splitAccountHeaderView4 tableViewHeightForWidth:v27];
      v32 = v29 - v31 + 20.0;

      [(_HUUserAvatarHeaderView *)self setFrame:v23, v25, v27, v32];
      splitAccountHeaderView5 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
      heightAnchor = [splitAccountHeaderView5 heightAnchor];
      v35 = [heightAnchor constraintEqualToConstant:20.0];
      [v35 setActive:1];

      splitAccountHeaderView6 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
      [splitAccountHeaderView6 setAlpha:0.0];

      [(_HUUserAvatarHeaderView *)self layoutIfNeeded];
    }
  }
}

- (ACAccountStore)accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    v5 = self->_accountStore;
    self->_accountStore = ams_sharedAccountStore;

    accountStore = self->_accountStore;
  }

  v6 = accountStore;

  return v6;
}

- (NSAttributedString)message
{
  contactView = [(_HUUserAvatarHeaderView *)self contactView];
  message = [contactView message];

  return message;
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  contactView = [(_HUUserAvatarHeaderView *)self contactView];
  [contactView setMessage:messageCopy];
}

- (id)_keyDescriptors
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDBE8] descriptorForRequiredKeysWithThreeDTouchEnabled:1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (HUMediaAccountDelegate)mediaAccountDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaAccountDelegate);

  return WeakRetained;
}

@end