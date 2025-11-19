@interface _HUUserAvatarHeaderView
- (ACAccountStore)accountStore;
- (HUMediaAccountDelegate)mediaAccountDelegate;
- (NSAttributedString)message;
- (_HUUserAvatarHeaderView)initWithUser:(id)a3 home:(id)a4 delegate:(id)a5;
- (id)_keyDescriptors;
- (void)dealloc;
- (void)dismissMultiUserTokenFixUI;
- (void)dismissSplitAccountView;
- (void)presentMultiUserTokenFixUIForMediaAccount:(id)a3 inHome:(id)a4;
- (void)setAccounts:(id)a3 forHome:(id)a4;
- (void)setMessage:(id)a3;
- (void)showSplitAccountViewIfNeeded;
@end

@implementation _HUUserAvatarHeaderView

- (_HUUserAvatarHeaderView)initWithUser:(id)a3 home:(id)a4 delegate:(id)a5
{
  v66[4] = *MEMORY[0x277D85DE8];
  v57 = a3;
  v58 = a4;
  obj = a5;
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
    v59 = [v58 hf_handleForUser:v57];
    if (v59)
    {
      v12 = [MEMORY[0x277D145B0] defaultStore];
      v13 = [(_HUUserAvatarHeaderView *)v9 _keyDescriptors];
      v14 = [v12 contactForUserHandle:v59 withKeys:v13];
      [(HUContactView *)v9->_contactView setContact:v14];
    }

    else
    {
      v15 = MEMORY[0x277CBDA58];
      v16 = [v57 name];
      v12 = [v15 contactWithDisplayName:v16 emailOrPhoneNumber:0];

      [(HUContactView *)v9->_contactView setContact:v12];
    }

    if (![v59 type])
    {
      v17 = objc_opt_new();
      v18 = [v59 userID];

      if (v18)
      {
        v19 = [v59 userID];
        [v17 addObject:v19];
      }

      [(HUContactView *)v9->_contactView setAccounts:v17];
      v20 = [MEMORY[0x277D14400] sharedInstance];
      v21 = [v58 uniqueIdentifier];
      v22 = [v21 UUIDString];
      v23 = [v20 mediaAccountForHomeIdentifier:v22];

      if (v23)
      {
        [v17 addObject:v23];
        [(HUContactView *)v9->_contactView setAccounts:v17];
      }

      else
      {
        v24 = [MEMORY[0x277D14400] sharedInstance];
        v25 = [v24 executeHomeMediaAccountFetchForHome:v58];
        mediaAccountFuture = v9->_mediaAccountFuture;
        v9->_mediaAccountFuture = v25;

        objc_initWeak(&location, v9);
        v27 = v9->_mediaAccountFuture;
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __54___HUUserAvatarHeaderView_initWithUser_home_delegate___block_invoke;
        v60[3] = &unk_277DBE738;
        objc_copyWeak(&v63, &location);
        v61 = v58;
        v62 = v17;
        v28 = [(NAFuture *)v27 addCompletionBlock:v60];

        objc_destroyWeak(&v63);
        objc_destroyWeak(&location);
      }
    }

    v29 = [(_HUUserAvatarHeaderView *)v9 contentView];
    [v29 naui_addAutoLayoutSubview:v9->_contactView];

    v55 = [(_HUUserAvatarHeaderView *)v9 contentView];
    v53 = [v55 topAnchor];
    v54 = [(_HUUserAvatarHeaderView *)v9 contactView];
    v52 = [v54 topAnchor];
    v51 = [v53 constraintEqualToAnchor:v52 constant:-20.0];
    v66[0] = v51;
    v50 = [(_HUUserAvatarHeaderView *)v9 contentView];
    v49 = [v50 layoutMarginsGuide];
    v47 = [v49 leadingAnchor];
    v48 = [(_HUUserAvatarHeaderView *)v9 contactView];
    v46 = [v48 leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v66[1] = v45;
    v44 = [(_HUUserAvatarHeaderView *)v9 contentView];
    v43 = [v44 layoutMarginsGuide];
    v42 = [v43 trailingAnchor];
    v30 = [(_HUUserAvatarHeaderView *)v9 contactView];
    v31 = [v30 trailingAnchor];
    v32 = [v42 constraintEqualToAnchor:v31];
    v66[2] = v32;
    v33 = [(_HUUserAvatarHeaderView *)v9 contentView];
    v34 = [v33 bottomAnchor];
    v35 = [(_HUUserAvatarHeaderView *)v9 contactView];
    v36 = [v35 bottomAnchor];
    v37 = [v34 constraintEqualToAnchor:v36 constant:20.0];
    v66[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
    [(_HUUserAvatarHeaderView *)v9 setLayoutConstraints:v38];

    v39 = MEMORY[0x277CCAAD0];
    v40 = [(_HUUserAvatarHeaderView *)v9 layoutConstraints];
    [v39 activateConstraints:v40];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(_HUUserAvatarHeaderView *)self mediaAccountFuture];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = _HUUserAvatarHeaderView;
  [(_HUUserAvatarHeaderView *)&v4 dealloc];
}

- (void)presentMultiUserTokenFixUIForMediaAccount:(id)a3 inHome:(id)a4
{
  v102 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [v8 currentUser];
    *buf = 138413058;
    v95 = v10;
    v96 = 2112;
    v97 = v7;
    v98 = 2112;
    v99 = v11;
    v100 = 2112;
    v101 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@ MutilUser Token Fix needed for account [%@], user [%@], in Home [%@]", buf, 0x2Au);
  }

  v12 = [HUMultiUserTokenFixTableView alloc];
  v13 = [(_HUUserAvatarHeaderView *)self mediaAccountDelegate];
  v14 = [(HUMultiUserTokenFixTableView *)v12 initWithFrame:v7 mediaAccount:v8 home:v13 delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_HUUserAvatarHeaderView *)self setMultiUserTokenFixHeaderView:v14];

  v15 = [(_HUUserAvatarHeaderView *)self contentView];
  v16 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  [v15 naui_addAutoLayoutSubview:v16];

  v17 = MEMORY[0x277CCAAD0];
  v18 = [(_HUUserAvatarHeaderView *)self layoutConstraints];
  [v17 deactivateConstraints:v18];

  v92 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  v90 = [v92 leadingAnchor];
  v91 = [(_HUUserAvatarHeaderView *)self contentView];
  v89 = [v91 leadingAnchor];
  v88 = [v90 constraintEqualToAnchor:v89];
  v93[0] = v88;
  v87 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  v85 = [v87 trailingAnchor];
  v86 = [(_HUUserAvatarHeaderView *)self contentView];
  v84 = [v86 trailingAnchor];
  v82 = [v85 constraintEqualToAnchor:v84];
  v93[1] = v82;
  v80 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  v78 = [v80 topAnchor];
  v79 = [(_HUUserAvatarHeaderView *)self contentView];
  v77 = [v79 topAnchor];
  v76 = [v78 constraintEqualToAnchor:v77 constant:-20.0];
  v93[2] = v76;
  v75 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  v72 = [v75 heightAnchor];
  v73 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  v74 = [MEMORY[0x277D759A0] mainScreen];
  [v74 bounds];
  [v73 tableViewHeightForWidth:v19];
  v71 = [v72 constraintEqualToConstant:?];
  v93[3] = v71;
  v70 = [(_HUUserAvatarHeaderView *)self contactView];
  v68 = [v70 leadingAnchor];
  v69 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  v67 = [v69 leadingAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v93[4] = v66;
  v65 = [(_HUUserAvatarHeaderView *)self contactView];
  v63 = [v65 trailingAnchor];
  v64 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  v62 = [v64 trailingAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v93[5] = v61;
  v60 = [(_HUUserAvatarHeaderView *)self contactView];
  v59 = [v60 topAnchor];
  v20 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  v21 = [v20 bottomAnchor];
  v22 = [v59 constraintEqualToAnchor:v21 constant:20.0];
  v93[6] = v22;
  v23 = [(_HUUserAvatarHeaderView *)self contentView];
  v24 = [v23 bottomAnchor];
  [(_HUUserAvatarHeaderView *)self contactView];
  v25 = v83 = v7;
  [v25 bottomAnchor];
  v26 = v81 = v8;
  v27 = [v24 constraintEqualToAnchor:v26 constant:20.0];
  v93[7] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:8];
  [(_HUUserAvatarHeaderView *)self setLayoutConstraints:v28];

  v29 = MEMORY[0x277CCAAD0];
  v30 = [(_HUUserAvatarHeaderView *)self layoutConstraints];
  [v29 activateConstraints:v30];

  v31 = [(_HUUserAvatarHeaderView *)self contentView];
  [v31 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  v41 = [MEMORY[0x277D759A0] mainScreen];
  [v41 bounds];
  [v40 tableViewHeightForWidth:v42];
  v44 = v39 + v43 + -20.0;

  v45 = [(_HUUserAvatarHeaderView *)self contentView];
  [v45 setFrame:{v33, v35, v37, v44}];

  [(_HUUserAvatarHeaderView *)self frame];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  v55 = [MEMORY[0x277D759A0] mainScreen];
  [v55 bounds];
  [v54 tableViewHeightForWidth:v56];
  v58 = v53 + v57 + -20.0;

  [(_HUUserAvatarHeaderView *)self setFrame:v47, v49, v51, v58];
}

- (void)dismissMultiUserTokenFixUI
{
  v3 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
  if (v3)
  {
    v4 = v3;
    v5 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
    [v5 alpha];
    v7 = v6;

    if (v7 == 1.0)
    {
      v8 = [(_HUUserAvatarHeaderView *)self contentView];
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = [(_HUUserAvatarHeaderView *)self contentView];
      [v15 frame];
      v17 = v16;
      v18 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
      [v18 tableViewHeightForWidth:v14];
      v20 = v17 - v19 + 20.0;

      v21 = [(_HUUserAvatarHeaderView *)self contentView];
      [v21 setFrame:{v10, v12, v14, v20}];

      [(_HUUserAvatarHeaderView *)self frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      [(_HUUserAvatarHeaderView *)self frame];
      v29 = v28;
      v30 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
      [v30 tableViewHeightForWidth:v27];
      v32 = v29 - v31 + 20.0;

      [(_HUUserAvatarHeaderView *)self setFrame:v23, v25, v27, v32];
      v33 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
      v34 = [v33 heightAnchor];
      v35 = [v34 constraintEqualToConstant:20.0];
      [v35 setActive:1];

      v36 = [(_HUUserAvatarHeaderView *)self multiUserTokenFixHeaderView];
      [v36 setAlpha:0.0];

      [(_HUUserAvatarHeaderView *)self layoutIfNeeded];
    }
  }
}

- (void)setAccounts:(id)a3 forHome:(id)a4
{
  v119 = *MEMORY[0x277D85DE8];
  v7 = a4;
  contactView = self->_contactView;
  v9 = a3;
  [(HUContactView *)contactView setAccounts:v9];
  v10 = [(_HUUserAvatarHeaderView *)self accountStore];
  v11 = [v10 ams_activeiTunesAccount];
  v12 = [v9 na_firstObjectPassingTest:&__block_literal_global_132];

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138412802;
    v109 = v14;
    v110 = 1024;
    *v111 = [MEMORY[0x277D14CE8] isAMac];
    *&v111[4] = 1024;
    *&v111[6] = [v7 isMultiUserEnabled];
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@ isThisMac = %d, is MU Enabled = [%d] ", buf, 0x18u);
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    v17 = [v11 aa_altDSID];
    [v12 aa_altDSID];
    v18 = a2;
    v19 = v11;
    v20 = v7;
    v22 = v21 = v12;
    *buf = 138413570;
    v109 = v16;
    v110 = 2112;
    *v111 = v19;
    *&v111[8] = 2112;
    v112 = v17;
    v113 = 2112;
    v114 = v21;
    v115 = 2112;
    v116 = v22;
    v117 = 2112;
    v118 = v20;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@ Active Media Account - [%@] with DSID - [%@] on this iOS device.  Fetched ams_iTunesAccount - [%@] with DSID - [%@] for Home [%@]", buf, 0x3Eu);

    v12 = v21;
    v7 = v20;
    v11 = v19;
    a2 = v18;
  }

  if ([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || !objc_msgSend(v7, "isMultiUserEnabled") || !v11 || (objc_msgSend(v11, "aa_altDSID"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "aa_altDSID"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqualToString:", v27), v27, v26, (v28))
  {
    v23 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];

    if (v23)
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
    v106 = v10;
    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = NSStringFromSelector(a2);
      *buf = 138412290;
      v109 = v30;
      _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@ Found Accounts are Split. Displaying the Split account UI", buf, 0xCu);
    }

    v31 = [HUSplitAccountHeaderTableView alloc];
    v32 = [(_HUUserAvatarHeaderView *)self mediaAccountDelegate];
    v33 = [(HUSplitAccountHeaderTableView *)v31 initWithFrame:v11 mediaAccount:v7 home:v32 delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(_HUUserAvatarHeaderView *)self setSplitAccountHeaderView:v33];

    v34 = [(_HUUserAvatarHeaderView *)self contentView];
    v35 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    [v34 naui_addAutoLayoutSubview:v35];

    v36 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    [v36 setAlpha:0.0];

    v37 = MEMORY[0x277CCAAD0];
    v38 = [(_HUUserAvatarHeaderView *)self layoutConstraints];
    [v37 deactivateConstraints:v38];

    v104 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    v102 = [v104 leadingAnchor];
    v103 = [(_HUUserAvatarHeaderView *)self contentView];
    v101 = [v103 leadingAnchor];
    v100 = [v102 constraintEqualToAnchor:v101];
    v107[0] = v100;
    v99 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    v97 = [v99 trailingAnchor];
    v98 = [(_HUUserAvatarHeaderView *)self contentView];
    v96 = [v98 trailingAnchor];
    v95 = [v97 constraintEqualToAnchor:v96];
    v107[1] = v95;
    v94 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    v92 = [v94 topAnchor];
    v93 = [(_HUUserAvatarHeaderView *)self contentView];
    v91 = [v93 topAnchor];
    v90 = [v92 constraintEqualToAnchor:v91 constant:-20.0];
    v107[2] = v90;
    v89 = [(_HUUserAvatarHeaderView *)self contactView];
    v87 = [v89 leadingAnchor];
    v88 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    v86 = [v88 leadingAnchor];
    v85 = [v87 constraintEqualToAnchor:v86];
    v107[3] = v85;
    v84 = [(_HUUserAvatarHeaderView *)self contactView];
    v82 = [v84 trailingAnchor];
    v83 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    v81 = [v83 trailingAnchor];
    v80 = [v82 constraintEqualToAnchor:v81];
    v107[4] = v80;
    v79 = [(_HUUserAvatarHeaderView *)self contactView];
    v77 = [v79 topAnchor];
    v78 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    v76 = [v78 bottomAnchor];
    v39 = [v77 constraintEqualToAnchor:v76 constant:20.0];
    v107[5] = v39;
    v40 = [(_HUUserAvatarHeaderView *)self contentView];
    v41 = [v40 bottomAnchor];
    v42 = [(_HUUserAvatarHeaderView *)self contactView];
    v43 = [v42 bottomAnchor];
    v44 = [v41 constraintEqualToAnchor:v43 constant:20.0];
    v107[6] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:7];
    [(_HUUserAvatarHeaderView *)self setLayoutConstraints:v45];

    v46 = MEMORY[0x277CCAAD0];
    v47 = [(_HUUserAvatarHeaderView *)self layoutConstraints];
    [v46 activateConstraints:v47];

    v48 = [(_HUUserAvatarHeaderView *)self contentView];
    [v48 frame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    v58 = [MEMORY[0x277D759A0] mainScreen];
    [v58 bounds];
    [v57 tableViewHeightForWidth:v59];
    v61 = v56 + v60 + -20.0;

    v62 = [(_HUUserAvatarHeaderView *)self contentView];
    [v62 setFrame:{v50, v52, v54, v61}];

    [(_HUUserAvatarHeaderView *)self frame];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    v72 = [MEMORY[0x277D759A0] mainScreen];
    [v72 bounds];
    [v71 tableViewHeightForWidth:v73];
    v75 = v70 + v74 + -20.0;

    [(_HUUserAvatarHeaderView *)self setFrame:v64, v66, v68, v75];
    v12 = v105;
    v10 = v106;
  }

  [(_HUUserAvatarHeaderView *)self setNeedsLayout];
}

- (void)showSplitAccountViewIfNeeded
{
  v3 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];

  if (v3)
  {
    v4 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    v5 = [v4 heightAnchor];
    v6 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
    [v6 tableViewHeightForWidth:v8];
    v9 = [v5 constraintEqualToConstant:?];
    [v9 setActive:1];

    v10 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    [v10 setAlpha:1.0];

    [(_HUUserAvatarHeaderView *)self layoutIfNeeded];
  }
}

- (void)dismissSplitAccountView
{
  v3 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
  if (v3)
  {
    v4 = v3;
    v5 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
    [v5 alpha];
    v7 = v6;

    if (v7 == 1.0)
    {
      v8 = [(_HUUserAvatarHeaderView *)self contentView];
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = [(_HUUserAvatarHeaderView *)self contentView];
      [v15 frame];
      v17 = v16;
      v18 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
      [v18 tableViewHeightForWidth:v14];
      v20 = v17 - v19 + 20.0;

      v21 = [(_HUUserAvatarHeaderView *)self contentView];
      [v21 setFrame:{v10, v12, v14, v20}];

      [(_HUUserAvatarHeaderView *)self frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      [(_HUUserAvatarHeaderView *)self frame];
      v29 = v28;
      v30 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
      [v30 tableViewHeightForWidth:v27];
      v32 = v29 - v31 + 20.0;

      [(_HUUserAvatarHeaderView *)self setFrame:v23, v25, v27, v32];
      v33 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
      v34 = [v33 heightAnchor];
      v35 = [v34 constraintEqualToConstant:20.0];
      [v35 setActive:1];

      v36 = [(_HUUserAvatarHeaderView *)self splitAccountHeaderView];
      [v36 setAlpha:0.0];

      [(_HUUserAvatarHeaderView *)self layoutIfNeeded];
    }
  }
}

- (ACAccountStore)accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  v6 = accountStore;

  return v6;
}

- (NSAttributedString)message
{
  v2 = [(_HUUserAvatarHeaderView *)self contactView];
  v3 = [v2 message];

  return v3;
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  v5 = [(_HUUserAvatarHeaderView *)self contactView];
  [v5 setMessage:v4];
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