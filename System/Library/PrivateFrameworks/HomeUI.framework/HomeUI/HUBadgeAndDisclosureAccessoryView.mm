@interface HUBadgeAndDisclosureAccessoryView
+ (id)_disclosureImage;
- (HUBadgeAndDisclosureAccessoryView)initWithFrame:(CGRect)frame;
- (void)setBadgeCount:(int64_t)count;
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

- (HUBadgeAndDisclosureAccessoryView)initWithFrame:(CGRect)frame
{
  v62.receiver = self;
  v62.super_class = HUBadgeAndDisclosureAccessoryView;
  v3 = [(HUBadgeAndDisclosureAccessoryView *)&v62 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v3->_badgeLabel setTextColor:systemWhiteColor];

    [(UILabel *)v3->_badgeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_badgeContainerView addSubview:v3->_badgeLabel];
    v14 = objc_alloc(MEMORY[0x277D755E8]);
    _disclosureImage = [objc_opt_class() _disclosureImage];
    v16 = [v14 initWithImage:_disclosureImage];
    disclosureImageView = v3->_disclosureImageView;
    v3->_disclosureImageView = v16;

    [(UIImageView *)v3->_disclosureImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUBadgeAndDisclosureAccessoryView *)v3 addSubview:v3->_disclosureImageView];
    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [(UIImageView *)v3->_badgeImageView leadingAnchor];
    leadingAnchor2 = [(UIView *)v3->_badgeContainerView leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v21];

    trailingAnchor = [(UIImageView *)v3->_badgeImageView trailingAnchor];
    trailingAnchor2 = [(UIView *)v3->_badgeContainerView trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v24];

    topAnchor = [(UIImageView *)v3->_badgeImageView topAnchor];
    topAnchor2 = [(UIView *)v3->_badgeContainerView topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v27];

    bottomAnchor = [(UIImageView *)v3->_badgeImageView bottomAnchor];
    bottomAnchor2 = [(UIView *)v3->_badgeContainerView bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v30];

    centerXAnchor = [(UILabel *)v3->_badgeLabel centerXAnchor];
    centerXAnchor2 = [(UIView *)v3->_badgeContainerView centerXAnchor];
    v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v33];

    centerYAnchor = [(UILabel *)v3->_badgeLabel centerYAnchor];
    centerYAnchor2 = [(UIView *)v3->_badgeContainerView centerYAnchor];
    v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v36];

    leadingAnchor3 = [(UIView *)v3->_badgeContainerView leadingAnchor];
    leadingAnchor4 = [(HUBadgeAndDisclosureAccessoryView *)v3 leadingAnchor];
    v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [array addObject:v39];

    topAnchor3 = [(UIView *)v3->_badgeContainerView topAnchor];
    topAnchor4 = [(HUBadgeAndDisclosureAccessoryView *)v3 topAnchor];
    v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [array addObject:v42];

    bottomAnchor3 = [(UIView *)v3->_badgeContainerView bottomAnchor];
    bottomAnchor4 = [(HUBadgeAndDisclosureAccessoryView *)v3 bottomAnchor];
    v45 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array addObject:v45];

    leadingAnchor5 = [(UIImageView *)v3->_disclosureImageView leadingAnchor];
    trailingAnchor3 = [(UIView *)v3->_badgeContainerView trailingAnchor];
    v48 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:12.0];
    [array addObject:v48];

    trailingAnchor4 = [(UIImageView *)v3->_disclosureImageView trailingAnchor];
    trailingAnchor5 = [(HUBadgeAndDisclosureAccessoryView *)v3 trailingAnchor];
    v51 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    [array addObject:v51];

    centerYAnchor3 = [(UIImageView *)v3->_disclosureImageView centerYAnchor];
    centerYAnchor4 = [(HUBadgeAndDisclosureAccessoryView *)v3 centerYAnchor];
    v54 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [array addObject:v54];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    [(HUBadgeAndDisclosureAccessoryView *)v3 bounds];
    v56 = v55;
    v58 = v57;
    [(HUBadgeAndDisclosureAccessoryView *)v3 systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
    [(HUBadgeAndDisclosureAccessoryView *)v3 setBounds:v56, v58, v59, v60];
  }

  return v3;
}

- (void)setBadgeCount:(int64_t)count
{
  if (self->_badgeCount != count)
  {
    self->_badgeCount = count;
    if (count)
    {
      v6 = MEMORY[0x277CCABB8];
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:count];
      v8 = [v6 localizedStringFromNumber:v7 numberStyle:0];
      badgeLabel = [(HUBadgeAndDisclosureAccessoryView *)self badgeLabel];
      [badgeLabel setText:v8];
    }

    badgeContainerView = [(HUBadgeAndDisclosureAccessoryView *)self badgeContainerView];
    [badgeContainerView setHidden:count == 0];
  }
}

@end