@interface HUBadgeAndDisclosureAccessoryView
+ (id)_disclosureImage;
- (HUBadgeAndDisclosureAccessoryView)initWithFrame:(CGRect)a3;
- (void)setBadgeCount:(int64_t)a3;
@end

@implementation HUBadgeAndDisclosureAccessoryView

+ (id)_disclosureImage
{
  if (qword_281120D60 != -1)
  {
    dispatch_once(&qword_281120D60, &__block_literal_global_6);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

void __53__HUBadgeAndDisclosureAccessoryView__disclosureImage__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
  v0 = [v2 _disclosureChevronImage:0];
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;
}

- (HUBadgeAndDisclosureAccessoryView)initWithFrame:(CGRect)a3
{
  v62.receiver = self;
  v62.super_class = HUBadgeAndDisclosureAccessoryView;
  v3 = [(HUBadgeAndDisclosureAccessoryView *)&v62 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    badgeContainerView = v3->_badgeContainerView;
    v3->_badgeContainerView = v4;

    [(UIView *)v3->_badgeContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_badgeContainerView setHidden:1];
    [(HUBadgeAndDisclosureAccessoryView *)v3 addSubview:v3->_badgeContainerView];
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v7 = HUImageNamed(@"HUSoftwareUpdateBadge");
    v8 = [v6 initWithImage:v7];
    badgeImageView = v3->_badgeImageView;
    v3->_badgeImageView = v8;

    [(UIImageView *)v3->_badgeImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_badgeContainerView addSubview:v3->_badgeImageView];
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    badgeLabel = v3->_badgeLabel;
    v3->_badgeLabel = v10;

    v12 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UILabel *)v3->_badgeLabel setFont:v12];

    v13 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v3->_badgeLabel setTextColor:v13];

    [(UILabel *)v3->_badgeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_badgeContainerView addSubview:v3->_badgeLabel];
    v14 = objc_alloc(MEMORY[0x277D755E8]);
    v15 = [objc_opt_class() _disclosureImage];
    v16 = [v14 initWithImage:v15];
    disclosureImageView = v3->_disclosureImageView;
    v3->_disclosureImageView = v16;

    [(UIImageView *)v3->_disclosureImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUBadgeAndDisclosureAccessoryView *)v3 addSubview:v3->_disclosureImageView];
    v18 = [MEMORY[0x277CBEB18] array];
    v19 = [(UIImageView *)v3->_badgeImageView leadingAnchor];
    v20 = [(UIView *)v3->_badgeContainerView leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v18 addObject:v21];

    v22 = [(UIImageView *)v3->_badgeImageView trailingAnchor];
    v23 = [(UIView *)v3->_badgeContainerView trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v18 addObject:v24];

    v25 = [(UIImageView *)v3->_badgeImageView topAnchor];
    v26 = [(UIView *)v3->_badgeContainerView topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v18 addObject:v27];

    v28 = [(UIImageView *)v3->_badgeImageView bottomAnchor];
    v29 = [(UIView *)v3->_badgeContainerView bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    [v18 addObject:v30];

    v31 = [(UILabel *)v3->_badgeLabel centerXAnchor];
    v32 = [(UIView *)v3->_badgeContainerView centerXAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    [v18 addObject:v33];

    v34 = [(UILabel *)v3->_badgeLabel centerYAnchor];
    v35 = [(UIView *)v3->_badgeContainerView centerYAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    [v18 addObject:v36];

    v37 = [(UIView *)v3->_badgeContainerView leadingAnchor];
    v38 = [(HUBadgeAndDisclosureAccessoryView *)v3 leadingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    [v18 addObject:v39];

    v40 = [(UIView *)v3->_badgeContainerView topAnchor];
    v41 = [(HUBadgeAndDisclosureAccessoryView *)v3 topAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    [v18 addObject:v42];

    v43 = [(UIView *)v3->_badgeContainerView bottomAnchor];
    v44 = [(HUBadgeAndDisclosureAccessoryView *)v3 bottomAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [v18 addObject:v45];

    v46 = [(UIImageView *)v3->_disclosureImageView leadingAnchor];
    v47 = [(UIView *)v3->_badgeContainerView trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:12.0];
    [v18 addObject:v48];

    v49 = [(UIImageView *)v3->_disclosureImageView trailingAnchor];
    v50 = [(HUBadgeAndDisclosureAccessoryView *)v3 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    [v18 addObject:v51];

    v52 = [(UIImageView *)v3->_disclosureImageView centerYAnchor];
    v53 = [(HUBadgeAndDisclosureAccessoryView *)v3 centerYAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    [v18 addObject:v54];

    [MEMORY[0x277CCAAD0] activateConstraints:v18];
    [(HUBadgeAndDisclosureAccessoryView *)v3 bounds];
    v56 = v55;
    v58 = v57;
    [(HUBadgeAndDisclosureAccessoryView *)v3 systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
    [(HUBadgeAndDisclosureAccessoryView *)v3 setBounds:v56, v58, v59, v60];
  }

  return v3;
}

- (void)setBadgeCount:(int64_t)a3
{
  if (self->_badgeCount != a3)
  {
    self->_badgeCount = a3;
    if (a3)
    {
      v6 = MEMORY[0x277CCABB8];
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v8 = [v6 localizedStringFromNumber:v7 numberStyle:0];
      v9 = [(HUBadgeAndDisclosureAccessoryView *)self badgeLabel];
      [v9 setText:v8];
    }

    v10 = [(HUBadgeAndDisclosureAccessoryView *)self badgeContainerView];
    [v10 setHidden:a3 == 0];
  }
}

@end