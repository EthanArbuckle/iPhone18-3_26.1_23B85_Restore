@interface HUHubUnavailableView
- (HUHubUnavailableView)initWithFrame:(CGRect)a3;
- (void)_setupView;
- (void)setAccessoryName:(id)a3;
- (void)updateConstraints;
@end

@implementation HUHubUnavailableView

- (HUHubUnavailableView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUHubUnavailableView;
  v3 = [(HUHubUnavailableView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUHubUnavailableView *)v3 _setupView];
  }

  return v4;
}

- (void)_setupView
{
  v22 = [MEMORY[0x277D755D0] configurationWithPointSize:50.0];
  v3 = objc_alloc(MEMORY[0x277D180D0]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:4 contentMode:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  networkIconView = self->_networkIconView;
  self->_networkIconView = v8;

  v10 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(HUIconView *)self->_networkIconView setTintColor:v10];

  [(HUIconView *)self->_networkIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = self->_networkIconView;
  v12 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"wifi.slash" configuration:v22];
  [(HUIconView *)v11 updateWithIconDescriptor:v12 displayStyle:1 animated:0];

  [(HUHubUnavailableView *)self addSubview:self->_networkIconView];
  v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v13;

  v15 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v15];

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setLineBreakMode:0];
  v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A20] variant:1024];
  [(UILabel *)self->_titleLabel setFont:v16];

  [(HUHubUnavailableView *)self addSubview:self->_titleLabel];
  v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v17;

  v19 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_descriptionLabel setTextColor:v19];

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_descriptionLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  [(UILabel *)self->_descriptionLabel setLineBreakMode:0];
  v20 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:8];
  [(UILabel *)self->_descriptionLabel setFont:v20];

  [(HUHubUnavailableView *)self addSubview:self->_descriptionLabel];
  v21 = [MEMORY[0x277D75348] clearColor];
  [(HUHubUnavailableView *)self setBackgroundColor:v21];
}

- (void)updateConstraints
{
  v3 = [(HUHubUnavailableView *)self layoutConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUHubUnavailableView *)self networkIconView];
    v6 = [v5 bottomAnchor];
    v7 = [(HUHubUnavailableView *)self titleLabel];
    v8 = [v7 topAnchor];
    v9 = [v6 constraintEqualToAnchor:v8 constant:-12.0];
    [v4 addObject:v9];

    v10 = [(HUHubUnavailableView *)self networkIconView];
    v11 = [v10 centerXAnchor];
    v12 = [(HUHubUnavailableView *)self centerXAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v4 addObject:v13];

    v14 = [(HUHubUnavailableView *)self networkIconView];
    v15 = [v14 widthAnchor];
    v16 = [v15 constraintEqualToConstant:50.0];
    [v4 addObject:v16];

    v17 = [(HUHubUnavailableView *)self networkIconView];
    v18 = [v17 heightAnchor];
    v19 = [v18 constraintEqualToConstant:50.0];
    [v4 addObject:v19];

    v20 = [(HUHubUnavailableView *)self titleLabel];
    v21 = [v20 bottomAnchor];
    v22 = [(HUHubUnavailableView *)self descriptionLabel];
    v23 = [v22 topAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:-12.0];
    [v4 addObject:v24];

    v25 = [(HUHubUnavailableView *)self titleLabel];
    v26 = [v25 centerXAnchor];
    v27 = [(HUHubUnavailableView *)self centerXAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v4 addObject:v28];

    v29 = [(HUHubUnavailableView *)self titleLabel];
    v30 = [v29 leadingAnchor];
    v31 = [(HUHubUnavailableView *)self leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:22.0];
    [v4 addObject:v32];

    v33 = [(HUHubUnavailableView *)self titleLabel];
    v34 = [v33 trailingAnchor];
    v35 = [(HUHubUnavailableView *)self trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:-22.0];
    [v4 addObject:v36];

    v37 = [(HUHubUnavailableView *)self descriptionLabel];
    v38 = [v37 centerXAnchor];
    v39 = [(HUHubUnavailableView *)self centerXAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [v4 addObject:v40];

    v41 = [(HUHubUnavailableView *)self descriptionLabel];
    v42 = [v41 centerYAnchor];
    v43 = [(HUHubUnavailableView *)self centerYAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    [v4 addObject:v44];

    v45 = [(HUHubUnavailableView *)self descriptionLabel];
    v46 = [v45 leadingAnchor];
    v47 = [(HUHubUnavailableView *)self leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:22.0];
    [v4 addObject:v48];

    v49 = [(HUHubUnavailableView *)self descriptionLabel];
    v50 = [v49 trailingAnchor];
    v51 = [(HUHubUnavailableView *)self trailingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:-22.0];
    [v4 addObject:v52];

    [MEMORY[0x277CCAAD0] activateConstraints:v4];
    [(HUHubUnavailableView *)self setLayoutConstraints:v4];
  }

  v53.receiver = self;
  v53.super_class = HUHubUnavailableView;
  [(HUHubUnavailableView *)&v53 updateConstraints];
}

- (void)setAccessoryName:(id)a3
{
  v24 = a3;
  if (![(NSString *)self->_accessoryName isEqualToString:?])
  {
    objc_storeStrong(&self->_accessoryName, a3);
    v5 = [(HUHubUnavailableView *)self accessoryName];
    v12 = HULocalizedStringWithFormat(@"HUHubUnavailable_Title", @"%@", v6, v7, v8, v9, v10, v11, v5);
    v13 = [(HUHubUnavailableView *)self titleLabel];
    [v13 setText:v12];

    LODWORD(v5) = [MEMORY[0x277D14CE8] useWLANInsteadOfWiFi];
    v20 = [(HUHubUnavailableView *)self accessoryName];
    if (v5)
    {
      v21 = @"HUHubUnavailable_Description_WLAN";
    }

    else
    {
      v21 = @"HUHubUnavailable_Description_WIFI";
    }

    v22 = HULocalizedStringWithFormat(v21, @"%@", v14, v15, v16, v17, v18, v19, v20);
    v23 = [(HUHubUnavailableView *)self descriptionLabel];
    [v23 setText:v22];

    [(HUHubUnavailableView *)self setNeedsUpdateConstraints];
  }
}

@end