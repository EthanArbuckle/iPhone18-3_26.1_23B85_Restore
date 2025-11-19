@interface HUContactDetailsTableViewCell
- (CNContact)contact;
- (HUContactDetailsTableViewCell)initWithCoder:(id)a3;
- (HUContactDetailsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)descriptionText;
- (NSString)titleText;
- (UIImage)photo;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContact:(id)a3;
- (void)setDescriptionText:(id)a3;
- (void)setPhoto:(id)a3;
- (void)setTitleText:(id)a3;
- (void)updateConstraints;
@end

@implementation HUContactDetailsTableViewCell

- (HUContactDetailsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v32[2] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HUContactDetailsTableViewCell;
  v4 = [(HUContactDetailsTableViewCell *)&v30 initWithStyle:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBDBE8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    avatarView = v4->_avatarView;
    v4->_avatarView = v10;

    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v6, v7, v8, v9}];
    photoView = v4->_photoView;
    v4->_photoView = v12;

    v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
    containerView = v4->_containerView;
    v4->_containerView = v14;

    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v16;

    v18 = *MEMORY[0x277D769D0];
    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v4->_titleLabel setFont:v19];

    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v20;

    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v18];
    [(UILabel *)v4->_descriptionLabel setFont:v22];

    v23 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_descriptionLabel setTextColor:v23];

    v24 = v4->_containerView;
    v32[0] = v4->_titleLabel;
    v32[1] = v4->_descriptionLabel;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [(UIView *)v24 naui_addAutoLayoutSubviews:v25];

    v26 = [(HUContactDetailsTableViewCell *)v4 contentView];
    v31[0] = v4->_avatarView;
    v31[1] = v4->_containerView;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [v26 naui_addAutoLayoutSubviews:v27];

    v28 = [(HUContactDetailsTableViewCell *)v4 contentView];
    [v28 addSubview:v4->_photoView];
  }

  return v4;
}

- (HUContactDetailsTableViewCell)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithStyle_reuseIdentifier_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUContactDetailsTableViewCell.m" lineNumber:64 description:{@"%s is unavailable; use %@ instead", "-[HUContactDetailsTableViewCell initWithCoder:]", v6}];

  return 0;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUContactDetailsTableViewCell;
  [(HUContactDetailsTableViewCell *)&v4 prepareForReuse];
  [(HUContactDetailsTableViewCell *)self setTitleText:0];
  [(HUContactDetailsTableViewCell *)self setDescriptionText:0];
  v3 = [(HUContactDetailsTableViewCell *)self avatarView];
  [v3 setContacts:MEMORY[0x277CBEBF8]];

  [(HUContactDetailsTableViewCell *)self setPhoto:0];
}

- (NSString)titleText
{
  v2 = [(HUContactDetailsTableViewCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(HUContactDetailsTableViewCell *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)descriptionText
{
  v2 = [(HUContactDetailsTableViewCell *)self descriptionLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  v5 = [(HUContactDetailsTableViewCell *)self descriptionLabel];
  [v5 setText:v4];
}

- (CNContact)contact
{
  v2 = [(HUContactDetailsTableViewCell *)self avatarView];
  v3 = [v2 contacts];
  v4 = [v3 firstObject];

  return v4;
}

- (void)setContact:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  v7 = [(HUContactDetailsTableViewCell *)self avatarView:v8];
  [v7 setContacts:v6];
}

- (UIImage)photo
{
  v2 = [(HUContactDetailsTableViewCell *)self photoView];
  v3 = [v2 image];

  return v3;
}

- (void)setPhoto:(id)a3
{
  v4 = a3;
  v5 = [(HUContactDetailsTableViewCell *)self photoView];
  [v5 setImage:v4];

  v6 = [(HUContactDetailsTableViewCell *)self photoView];
  [v6 setHidden:v4 == 0];

  v7 = [(HUContactDetailsTableViewCell *)self avatarView];
  [v7 setHidden:v4 != 0];
}

- (void)updateConstraints
{
  v3 = [(HUContactDetailsTableViewCell *)self constraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUContactDetailsTableViewCell *)self avatarView];
    v6 = [v5 leadingAnchor];
    v7 = [(HUContactDetailsTableViewCell *)self contentView];
    v8 = [v7 layoutMarginsGuide];
    v9 = [v8 leadingAnchor];
    v10 = [v6 constraintEqualToAnchor:v9];
    [v4 addObject:v10];

    v11 = [(HUContactDetailsTableViewCell *)self avatarView];
    v12 = [v11 widthAnchor];
    v13 = [v12 constraintEqualToConstant:42.0];
    [v4 addObject:v13];

    v14 = [(HUContactDetailsTableViewCell *)self containerView];
    v15 = [v14 leadingAnchor];
    v16 = [(HUContactDetailsTableViewCell *)self avatarView];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:15.0];
    [v4 addObject:v18];

    v19 = [(HUContactDetailsTableViewCell *)self containerView];
    v20 = [v19 trailingAnchor];
    v21 = [(HUContactDetailsTableViewCell *)self contentView];
    v22 = [v21 layoutMarginsGuide];
    v23 = [v22 trailingAnchor];
    v24 = [v20 constraintEqualToAnchor:v23];
    [v4 addObject:v24];

    v25 = [(HUContactDetailsTableViewCell *)self titleLabel];
    v26 = [v25 leadingAnchor];
    v27 = [(HUContactDetailsTableViewCell *)self containerView];
    v28 = [v27 leadingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    [v4 addObject:v29];

    v30 = [(HUContactDetailsTableViewCell *)self titleLabel];
    v31 = [v30 trailingAnchor];
    v32 = [(HUContactDetailsTableViewCell *)self containerView];
    v33 = [v32 trailingAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    [v4 addObject:v34];

    v35 = [(HUContactDetailsTableViewCell *)self descriptionLabel];
    v36 = [v35 leadingAnchor];
    v37 = [(HUContactDetailsTableViewCell *)self containerView];
    v38 = [v37 leadingAnchor];
    v39 = [v36 constraintEqualToAnchor:v38];
    [v4 addObject:v39];

    v40 = [(HUContactDetailsTableViewCell *)self descriptionLabel];
    v41 = [v40 trailingAnchor];
    v42 = [(HUContactDetailsTableViewCell *)self containerView];
    v43 = [v42 trailingAnchor];
    v44 = [v41 constraintEqualToAnchor:v43];
    [v4 addObject:v44];

    v45 = [(HUContactDetailsTableViewCell *)self avatarView];
    v46 = [v45 topAnchor];
    v47 = [(HUContactDetailsTableViewCell *)self contentView];
    v48 = [v47 layoutMarginsGuide];
    v49 = [v48 topAnchor];
    v50 = [v46 constraintGreaterThanOrEqualToAnchor:v49];
    [v4 addObject:v50];

    v51 = [(HUContactDetailsTableViewCell *)self avatarView];
    v52 = [v51 bottomAnchor];
    v53 = [(HUContactDetailsTableViewCell *)self contentView];
    v54 = [v53 layoutMarginsGuide];
    v55 = [v54 bottomAnchor];
    v56 = [v52 constraintLessThanOrEqualToAnchor:v55];
    [v4 addObject:v56];

    v57 = [(HUContactDetailsTableViewCell *)self avatarView];
    v58 = [v57 centerYAnchor];
    v59 = [(HUContactDetailsTableViewCell *)self contentView];
    v60 = [v59 layoutMarginsGuide];
    v61 = [v60 centerYAnchor];
    v62 = [v58 constraintEqualToAnchor:v61];
    [v4 addObject:v62];

    v63 = [(HUContactDetailsTableViewCell *)self avatarView];
    v64 = [v63 heightAnchor];
    v65 = [v64 constraintEqualToConstant:42.0];
    [v4 addObject:v65];

    v66 = [(HUContactDetailsTableViewCell *)self containerView];
    v67 = [v66 topAnchor];
    v68 = [(HUContactDetailsTableViewCell *)self contentView];
    v69 = [v68 layoutMarginsGuide];
    v70 = [v69 topAnchor];
    v71 = [v67 constraintGreaterThanOrEqualToAnchor:v70];
    [v4 addObject:v71];

    v72 = [(HUContactDetailsTableViewCell *)self containerView];
    v73 = [v72 bottomAnchor];
    v74 = [(HUContactDetailsTableViewCell *)self contentView];
    v75 = [v74 layoutMarginsGuide];
    v76 = [v75 bottomAnchor];
    v77 = [v73 constraintLessThanOrEqualToAnchor:v76];
    [v4 addObject:v77];

    v78 = [(HUContactDetailsTableViewCell *)self containerView];
    v79 = [v78 centerYAnchor];
    v80 = [(HUContactDetailsTableViewCell *)self contentView];
    v81 = [v80 layoutMarginsGuide];
    v82 = [v81 centerYAnchor];
    v83 = [v79 constraintEqualToAnchor:v82];
    [v4 addObject:v83];

    v84 = [(HUContactDetailsTableViewCell *)self titleLabel];
    v85 = [v84 topAnchor];
    v86 = [(HUContactDetailsTableViewCell *)self containerView];
    v87 = [v86 topAnchor];
    v88 = [v85 constraintEqualToAnchor:v87];
    [v4 addObject:v88];

    v89 = [(HUContactDetailsTableViewCell *)self titleLabel];
    v90 = [v89 bottomAnchor];
    v91 = [(HUContactDetailsTableViewCell *)self descriptionLabel];
    v92 = [v91 topAnchor];
    v93 = [v90 constraintEqualToAnchor:v92];
    [v4 addObject:v93];

    v94 = [(HUContactDetailsTableViewCell *)self descriptionLabel];
    v95 = [v94 bottomAnchor];
    v96 = [(HUContactDetailsTableViewCell *)self containerView];
    v97 = [v96 bottomAnchor];
    v98 = [v95 constraintEqualToAnchor:v97];
    [v4 addObject:v98];

    [(HUContactDetailsTableViewCell *)self setConstraints:v4];
    v99 = MEMORY[0x277CCAAD0];
    v100 = [(HUContactDetailsTableViewCell *)self constraints];
    [v99 activateConstraints:v100];
  }

  v101.receiver = self;
  v101.super_class = HUContactDetailsTableViewCell;
  [(HUContactDetailsTableViewCell *)&v101 updateConstraints];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUContactDetailsTableViewCell;
  [(HUContactDetailsTableViewCell *)&v18 layoutSubviews];
  v3 = [(HUContactDetailsTableViewCell *)self avatarView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HUContactDetailsTableViewCell *)self photoView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(HUContactDetailsTableViewCell *)self photoView];
  [v13 bounds];
  v15 = v14 * 0.5;
  v16 = [(HUContactDetailsTableViewCell *)self photoView];
  v17 = [v16 layer];
  [v17 setCornerRadius:v15];
}

@end