@interface MCProfileTitlePageOrganizationCell
- (MCProfileTitlePageOrganizationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_createHorizontalStackWithViews:(id)a3;
- (id)_createLabelLabel;
- (id)_createValueLabel;
- (id)_createVerticalStackWithViews:(id)a3;
- (void)_updateConstraintWithStack:(id)a3;
- (void)setAppleID:(id)a3;
- (void)setOrganizationName:(id)a3;
@end

@implementation MCProfileTitlePageOrganizationCell

- (MCProfileTitlePageOrganizationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v32[2] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = MCProfileTitlePageOrganizationCell;
  v4 = [(MCProfileTitlePageOrganizationCell *)&v29 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MCProfileTitlePageOrganizationCell *)v4 setUserInteractionEnabled:0];
    v6 = [(MCProfileTitlePageOrganizationCell *)v5 contentView];
    [v6 setClipsToBounds:0];

    v7 = [MEMORY[0x277D75348] clearColor];
    [(MCProfileTitlePageOrganizationCell *)v5 setBackgroundColor:v7];

    v8 = [(MCProfileTitlePageOrganizationCell *)v5 _createLabelLabel];
    organizationLabel = v5->_organizationLabel;
    v5->_organizationLabel = v8;

    v10 = MCUILocalizedString(@"ORGANIZATION_LABEL_TITLE");
    [(UILabel *)v5->_organizationLabel setText:v10];

    v11 = [(MCProfileTitlePageOrganizationCell *)v5 _createLabelLabel];
    appleIDLabel = v5->_appleIDLabel;
    v5->_appleIDLabel = v11;

    v13 = MCUILocalizedString(@"APPLE_ACCOUNT_LABEL_TITLE");
    [(UILabel *)v5->_appleIDLabel setText:v13];

    v14 = [(MCProfileTitlePageOrganizationCell *)v5 _createValueLabel];
    organizationValueLabel = v5->_organizationValueLabel;
    v5->_organizationValueLabel = v14;

    v16 = [(MCProfileTitlePageOrganizationCell *)v5 _createValueLabel];
    appleIDValueLabel = v5->_appleIDValueLabel;
    v5->_appleIDValueLabel = v16;

    v32[0] = v5->_organizationLabel;
    v32[1] = v5->_organizationValueLabel;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v19 = [(MCProfileTitlePageOrganizationCell *)v5 _createHorizontalStackWithViews:v18];

    v31[0] = v5->_appleIDLabel;
    v31[1] = v5->_appleIDValueLabel;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v21 = [(MCProfileTitlePageOrganizationCell *)v5 _createHorizontalStackWithViews:v20];

    v30[0] = v19;
    v30[1] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v23 = [(MCProfileTitlePageOrganizationCell *)v5 _createVerticalStackWithViews:v22];

    labelStackView = v5->_labelStackView;
    v5->_labelStackView = v23;
    v25 = v23;

    v26 = [(MCProfileTitlePageOrganizationCell *)v5 contentView];
    [v26 addSubview:v25];

    [(MCProfileTitlePageOrganizationCell *)v5 _updateConstraintWithStack:v25];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_updateConstraintWithStack:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = @"stack";
  v15[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = MEMORY[0x277CCAAD0];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"|-%f-[stack]-%f-|", 0x4034000000000000, 0x4034000000000000];
  v9 = [v7 constraintsWithVisualFormat:v8 options:0 metrics:0 views:v6];

  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[stack]-0-|" options:0 metrics:0 views:v6];

  v11 = [(MCProfileTitlePageOrganizationCell *)self contentView];
  [v11 addConstraints:v9];

  v12 = [(MCProfileTitlePageOrganizationCell *)self contentView];
  [v12 addConstraints:v10];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_createLabelLabel
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  [v2 setFont:v3];

  v4 = [MEMORY[0x277D75348] systemGrayColor];
  [v2 setTextColor:v4];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (id)_createValueLabel
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  [v2 setFont:v3];

  LODWORD(v4) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v4];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (id)_createHorizontalStackWithViews:(id)a3
{
  v3 = MEMORY[0x277D75A68];
  v4 = a3;
  v5 = [[v3 alloc] initWithArrangedSubviews:v4];

  [v5 setSpacing:5.0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAxis:0];
  [v5 setAlignment:3];
  [v5 setDistribution:4];
  LODWORD(v6) = 1132068864;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];

  return v5;
}

- (id)_createVerticalStackWithViews:(id)a3
{
  v3 = MEMORY[0x277D75A68];
  v4 = a3;
  v5 = [[v3 alloc] initWithArrangedSubviews:v4];

  [v5 setAxis:1];
  [v5 setAlignment:3];
  [v5 setDistribution:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setSpacing:10.0];

  return v5;
}

- (void)setOrganizationName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_organizationName isEqualToString:?])
  {
    objc_storeStrong(&self->_organizationName, a3);
    v5 = [(MCProfileTitlePageOrganizationCell *)self organizationValueLabel];
    [v5 setText:v6];
  }
}

- (void)setAppleID:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_appleID isEqualToString:?])
  {
    objc_storeStrong(&self->_appleID, a3);
    v5 = [(MCProfileTitlePageOrganizationCell *)self appleIDValueLabel];
    [v5 setText:v6];
  }
}

@end