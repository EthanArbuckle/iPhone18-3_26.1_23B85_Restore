@interface HUContactView
- (BOOL)_isPhoneNumberOnlyAccount;
- (HUContactView)initWithFrame:(CGRect)a3;
- (NSAttributedString)message;
- (void)_setupViews;
- (void)_updateConstraints;
- (void)_updateNameLabelFont;
- (void)setAccounts:(id)a3;
- (void)setAvatarDiameter:(double)a3;
- (void)setContact:(id)a3;
- (void)setContactNameFontTextStyle:(id)a3;
- (void)setMessage:(id)a3;
- (void)setNumberOfLinesForMessage:(unint64_t)a3;
@end

@implementation HUContactView

- (HUContactView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUContactView;
  v3 = [(HUContactView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_avatarDiameter = 85.0;
    v3->_contactNameFormatStyle = 0;
    [(HUContactView *)v3 _setupViews];
  }

  return v4;
}

- (void)setAvatarDiameter:(double)a3
{
  if (self->_avatarDiameter != a3)
  {
    self->_avatarDiameter = a3;
    [(HUContactView *)self _updateConstraints];
  }
}

- (void)setContact:(id)a3
{
  v10 = a3;
  if (([(CNContact *)self->_contact isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contact, a3);
    if (self->_contact)
    {
      v5 = [(HUContactView *)self avatarView];
      [v5 setContact:v10];

      v6 = MEMORY[0x277CBDA78];
      v7 = [(HUContactView *)self contact];
      v8 = [v6 stringFromContact:v7 style:{-[HUContactView contactNameFormatStyle](self, "contactNameFormatStyle")}];
      v9 = [(HUContactView *)self nameLabel];
      [v9 setText:v8];
    }

    [(HUContactView *)self _updateConstraints];
  }
}

- (NSAttributedString)message
{
  v2 = [(HUContactView *)self messageLabel];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setMessage:(id)a3
{
  v12 = a3;
  v4 = [(HUContactView *)self messageLabel];
  if (v12)
  {

    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D756B8]);
      [(HUContactView *)self setMessageLabel:v5];

      v6 = [(HUContactView *)self messageLabel];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

      v7 = [(HUContactView *)self messageLabel];
      [(HUContactView *)self addSubview:v7];
    }

    v8 = [(HUContactView *)self numberOfLinesForMessage];
    v9 = [(HUContactView *)self messageLabel];
    [v9 setNumberOfLines:v8];

    v10 = [(HUContactView *)self messageLabel];
    [v10 setAttributedText:v12];

    v11 = [(HUContactView *)self messageLabel];
    [v11 sizeToFit];

    [(HUContactView *)self _updateConstraints];
  }

  else
  {
    [v4 removeFromSuperview];

    [(HUContactView *)self setMessageLabel:0];
  }
}

- (void)setAccounts:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = a3;
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
    v22 = [(HUContactView *)self appleMusicAccountLabel];
    [v22 removeFromSuperview];

    [(HUContactView *)self setAppleMusicAccountLabel:0];
    if (v5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v21 = [(HUContactView *)self appleIDAccountLabel];
    [v21 removeFromSuperview];

    [(HUContactView *)self setAppleIDAccountLabel:0];
    if (!v54)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v5)
    {
LABEL_28:
      v23 = [(HUContactView *)self appleIDAccountLabel];

      if (!v23)
      {
        v24 = objc_alloc_init(MEMORY[0x277D756B8]);
        [(HUContactView *)self setAppleIDAccountLabel:v24];

        v25 = [(HUContactView *)self appleIDAccountLabel];
        [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

        v26 = [(HUContactView *)self appleIDAccountLabel];
        [(HUContactView *)self addSubview:v26];
      }
    }
  }

  if (v54)
  {
    v27 = [v54 username];
    if ([v27 isEqualToString:v5])
    {
      goto LABEL_34;
    }

    v28 = [(HUContactView *)self appleMusicAccountLabel];

    if (!v28)
    {
      v29 = objc_alloc_init(MEMORY[0x277D756B8]);
      [(HUContactView *)self setAppleMusicAccountLabel:v29];

      v30 = [(HUContactView *)self appleMusicAccountLabel];
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

      v27 = [(HUContactView *)self appleMusicAccountLabel];
      [(HUContactView *)self addSubview:v27];
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
    v35 = [(HUContactView *)self appleIDAccountLabel];
    [v35 setFont:v34];

    v36 = [(HUContactView *)self appleMusicAccountLabel];
    if (v36)
    {
      v37 = MEMORY[0x277CCACA8];
      v35 = _HULocalizedStringWithDefaultValue(@"HUUseriCloudAccount_Title", @"HUUseriCloudAccount_Title", 1);
      v38 = [v37 stringWithFormat:@"%@: %@", v35, v5];
    }

    else
    {
      v38 = v5;
    }

    v39 = [(HUContactView *)self appleIDAccountLabel];
    [v39 setText:v38];

    if (v36)
    {
    }

    v40 = [MEMORY[0x277D75348] grayColor];
    v41 = [(HUContactView *)self appleIDAccountLabel];
    [v41 setTextColor:v40];

    v42 = [MEMORY[0x277D74300] preferredFontForTextStyle:v33];
    v43 = [(HUContactView *)self appleMusicAccountLabel];
    [v43 setFont:v42];

    v44 = MEMORY[0x277CCACA8];
    v45 = _HULocalizedStringWithDefaultValue(@"HUUserAppleMusicAccount_Title", @"HUUserAppleMusicAccount_Title", 1);
    v19 = v54;
    v46 = [v54 username];
    v47 = [v44 stringWithFormat:@" %@: %@", v45, v46];
    v48 = [(HUContactView *)self appleMusicAccountLabel];
    [v48 setText:v47];

    v49 = [MEMORY[0x277D75348] grayColor];
    v50 = [(HUContactView *)self appleMusicAccountLabel];
    [v50 setTextColor:v49];
  }

  [(HUContactView *)self _updateConstraints];
}

- (void)setNumberOfLinesForMessage:(unint64_t)a3
{
  v4 = [(HUContactView *)self messageLabel];
  [v4 setNumberOfLines:a3];
}

- (void)setContactNameFontTextStyle:(id)a3
{
  objc_storeStrong(&self->_contactNameFontTextStyle, a3);

  [(HUContactView *)self _updateNameLabelFont];
}

- (void)_setupViews
{
  v3 = objc_alloc_init(MEMORY[0x277CBDBE8]);
  [(HUContactView *)self setAvatarView:v3];

  v4 = [(HUContactView *)self avatarView];
  [v4 setUserInteractionEnabled:0];

  v5 = [(HUContactView *)self avatarView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HUContactView *)self avatarView];
  [(HUContactView *)self addSubview:v6];

  v7 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HUContactView *)self setNameLabel:v7];

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v9 = [(HUContactView *)self nameLabel];
  [v9 setFont:v8];

  v10 = [(HUContactView *)self nameLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HUContactView *)self nameLabel];
  [v11 setNumberOfLines:2];

  v12 = [(HUContactView *)self nameLabel];
  [v12 setTextAlignment:1];

  v13 = [(HUContactView *)self nameLabel];
  [(HUContactView *)self addSubview:v13];
}

- (void)_updateNameLabelFont
{
  v3 = MEMORY[0x277D74300];
  v4 = [(HUContactView *)self contactNameFontTextStyle];
  v5 = [v3 preferredFontForTextStyle:v4];
  v6 = [(HUContactView *)self nameLabel];
  [v6 setFont:v5];

  v7 = [(HUContactView *)self nameLabel];
  [v7 setNeedsLayout];
}

- (void)_updateConstraints
{
  v3 = [(HUContactView *)self constraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUContactView *)self constraints];
    [v4 deactivateConstraints:v5];

    v6 = [(HUContactView *)self constraints];
    [v6 removeAllObjects];
  }

  else
  {
    v6 = objc_opt_new();
    [(HUContactView *)self setConstraints:v6];
  }

  v7 = [(HUContactView *)self constraints];
  v8 = [(HUContactView *)self avatarView];
  v9 = [v8 topAnchor];
  v10 = [(HUContactView *)self topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v7 addObject:v11];

  v12 = [(HUContactView *)self constraints];
  v13 = [(HUContactView *)self avatarView];
  v14 = [v13 centerXAnchor];
  v15 = [(HUContactView *)self centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v12 addObject:v16];

  v17 = [(HUContactView *)self constraints];
  v18 = [(HUContactView *)self avatarView];
  v19 = [v18 leadingAnchor];
  v20 = [(HUContactView *)self leadingAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];
  [v17 addObject:v21];

  v22 = [(HUContactView *)self constraints];
  v23 = [(HUContactView *)self avatarView];
  v24 = [v23 trailingAnchor];
  v25 = [(HUContactView *)self trailingAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor:v25];
  [v22 addObject:v26];

  v27 = [(HUContactView *)self constraints];
  v28 = [(HUContactView *)self avatarView];
  v29 = [v28 widthAnchor];
  [(HUContactView *)self avatarDiameter];
  v30 = [v29 constraintEqualToConstant:?];
  [v27 addObject:v30];

  v31 = [(HUContactView *)self constraints];
  v32 = [(HUContactView *)self avatarView];
  v33 = [v32 heightAnchor];
  [(HUContactView *)self avatarDiameter];
  v34 = [v33 constraintEqualToConstant:?];
  [v31 addObject:v34];

  v35 = [(HUContactView *)self nameLabel];
  v36 = [v35 firstBaselineAnchor];
  v37 = [(HUContactView *)self avatarView];
  v38 = [v37 bottomAnchor];
  v142 = [v36 constraintEqualToAnchor:v38 constant:20.0];

  LODWORD(v39) = 1144750080;
  [v142 setPriority:v39];
  v40 = [(HUContactView *)self constraints];
  [v40 addObject:v142];

  v41 = [(HUContactView *)self constraints];
  v42 = [(HUContactView *)self nameLabel];
  v43 = [v42 topAnchor];
  v44 = [(HUContactView *)self avatarView];
  v45 = [v44 bottomAnchor];
  v46 = [v43 constraintGreaterThanOrEqualToAnchor:v45];
  [v41 addObject:v46];

  v47 = [(HUContactView *)self constraints];
  v48 = [(HUContactView *)self nameLabel];
  v49 = [v48 centerXAnchor];
  v50 = [(HUContactView *)self centerXAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [v47 addObject:v51];

  v52 = [(HUContactView *)self constraints];
  v53 = [(HUContactView *)self nameLabel];
  v54 = [v53 leadingAnchor];
  v55 = [(HUContactView *)self leadingAnchor];
  v56 = [v54 constraintGreaterThanOrEqualToAnchor:v55];
  [v52 addObject:v56];

  v57 = [(HUContactView *)self constraints];
  v58 = [(HUContactView *)self nameLabel];
  v59 = [v58 trailingAnchor];
  v60 = [(HUContactView *)self trailingAnchor];
  v61 = [v59 constraintLessThanOrEqualToAnchor:v60];
  [v57 addObject:v61];

  v62 = [(HUContactView *)self appleIDAccountLabel];

  if (v62)
  {
    v63 = [(HUContactView *)self constraints];
    v64 = [(HUContactView *)self appleIDAccountLabel];
    v65 = [v64 firstBaselineAnchor];
    v66 = [(HUContactView *)self nameLabel];
    v67 = [v66 lastBaselineAnchor];
    v68 = [v65 constraintEqualToSystemSpacingBelowAnchor:v67 multiplier:1.0];
    [v63 addObject:v68];

    v69 = [(HUContactView *)self constraints];
    v70 = [(HUContactView *)self appleIDAccountLabel];
    v71 = [v70 centerXAnchor];
    v72 = [(HUContactView *)self centerXAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];
    [v69 addObject:v73];

    v74 = [(HUContactView *)self constraints];
    v75 = [(HUContactView *)self appleIDAccountLabel];
    v76 = [v75 leadingAnchor];
    v77 = [(HUContactView *)self leadingAnchor];
    v78 = [v76 constraintGreaterThanOrEqualToAnchor:v77];
    [v74 addObject:v78];

    v79 = [(HUContactView *)self constraints];
    v80 = [(HUContactView *)self appleIDAccountLabel];
    v81 = [v80 trailingAnchor];
    v82 = [(HUContactView *)self trailingAnchor];
    v83 = [v81 constraintLessThanOrEqualToAnchor:v82];
    [v79 addObject:v83];
  }

  v84 = [(HUContactView *)self appleMusicAccountLabel];

  if (v84)
  {
    v85 = [(HUContactView *)self appleIDAccountLabel];
    v86 = [v85 lastBaselineAnchor];

    if (!v86)
    {
      v87 = [(HUContactView *)self nameLabel];
      v86 = [v87 lastBaselineAnchor];
    }

    v88 = [(HUContactView *)self constraints];
    v89 = [(HUContactView *)self appleMusicAccountLabel];
    v90 = [v89 firstBaselineAnchor];
    v91 = [v90 constraintEqualToSystemSpacingBelowAnchor:v86 multiplier:1.0];
    [v88 addObject:v91];

    v92 = [(HUContactView *)self constraints];
    v93 = [(HUContactView *)self appleMusicAccountLabel];
    v94 = [v93 centerXAnchor];
    v95 = [(HUContactView *)self centerXAnchor];
    v96 = [v94 constraintEqualToAnchor:v95];
    [v92 addObject:v96];

    v97 = [(HUContactView *)self constraints];
    v98 = [(HUContactView *)self appleMusicAccountLabel];
    v99 = [v98 trailingAnchor];
    v100 = [(HUContactView *)self trailingAnchor];
    v101 = [v99 constraintLessThanOrEqualToAnchor:v100];
    [v97 addObject:v101];
  }

  v102 = [(HUContactView *)self messageLabel];

  v103 = [(HUContactView *)self nameLabel];
  v104 = [v103 lastBaselineAnchor];

  v105 = [(HUContactView *)self appleIDAccountLabel];
  v106 = v105;
  if (v102)
  {
    if (v105 && ([(HUContactView *)self appleMusicAccountLabel], v107 = objc_claimAutoreleasedReturnValue(), v107, v106, v107))
    {
      v108 = [(HUContactView *)self appleMusicAccountLabel];
    }

    else
    {
      v109 = [(HUContactView *)self appleIDAccountLabel];

      if (!v109)
      {
LABEL_17:
        v112 = [(HUContactView *)self constraints];
        v113 = [(HUContactView *)self messageLabel];
        v114 = [v113 firstBaselineAnchor];
        v115 = [v114 constraintEqualToAnchor:v104 constant:25.0];
        [v112 addObject:v115];

        v116 = [(HUContactView *)self constraints];
        v117 = [(HUContactView *)self messageLabel];
        v118 = [v117 centerXAnchor];
        v119 = [(HUContactView *)self centerXAnchor];
        v120 = [v118 constraintEqualToAnchor:v119];
        [v116 addObject:v120];

        v121 = [(HUContactView *)self constraints];
        v122 = [(HUContactView *)self messageLabel];
        v123 = [v122 leadingAnchor];
        v124 = [(HUContactView *)self leadingAnchor];
        v125 = [v123 constraintGreaterThanOrEqualToAnchor:v124];
        [v121 addObject:v125];

        v126 = [(HUContactView *)self constraints];
        v127 = [(HUContactView *)self messageLabel];
        v128 = [v127 trailingAnchor];
        v129 = [(HUContactView *)self trailingAnchor];
        v130 = [v128 constraintLessThanOrEqualToAnchor:v129];
        [v126 addObject:v130];

        v131 = [(HUContactView *)self constraints];
        v132 = [(HUContactView *)self messageLabel];
        v133 = [v132 lastBaselineAnchor];
        v134 = [(HUContactView *)self bottomAnchor];
        v135 = [v133 constraintEqualToAnchor:v134];
        [v131 addObject:v135];

        goto LABEL_24;
      }

      v108 = [(HUContactView *)self appleIDAccountLabel];
    }

    v110 = v108;
    v111 = [v108 lastBaselineAnchor];

    v104 = v111;
    goto LABEL_17;
  }

  if (v106)
  {
    v136 = [(HUContactView *)self appleIDAccountLabel];
LABEL_22:
    v138 = v136;
    v139 = [v136 lastBaselineAnchor];

    v104 = v139;
    goto LABEL_23;
  }

  v137 = [(HUContactView *)self appleMusicAccountLabel];

  if (v137)
  {
    v136 = [(HUContactView *)self appleMusicAccountLabel];
    goto LABEL_22;
  }

LABEL_23:
  v131 = [(HUContactView *)self constraints];
  v132 = [(HUContactView *)self bottomAnchor];
  v133 = [v104 constraintEqualToAnchor:v132];
  [v131 addObject:v133];
LABEL_24:

  v140 = MEMORY[0x277CCAAD0];
  v141 = [(HUContactView *)self constraints];
  [v140 activateConstraints:v141];
}

- (BOOL)_isPhoneNumberOnlyAccount
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBDA78];
  v4 = [(HUContactView *)self contact];
  v5 = [v3 stringFromContact:v4 style:{-[HUContactView contactNameFormatStyle](self, "contactNameFormatStyle")}];

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