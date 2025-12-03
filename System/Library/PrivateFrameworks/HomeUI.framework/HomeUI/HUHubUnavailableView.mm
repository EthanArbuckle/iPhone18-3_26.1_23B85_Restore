@interface HUHubUnavailableView
- (HUHubUnavailableView)initWithFrame:(CGRect)frame;
- (void)_setupView;
- (void)setAccessoryName:(id)name;
- (void)updateConstraints;
@end

@implementation HUHubUnavailableView

- (HUHubUnavailableView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUHubUnavailableView;
  v3 = [(HUHubUnavailableView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(HUIconView *)self->_networkIconView setTintColor:secondaryLabelColor];

  [(HUIconView *)self->_networkIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = self->_networkIconView;
  v12 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"wifi.slash" configuration:v22];
  [(HUIconView *)v11 updateWithIconDescriptor:v12 displayStyle:1 animated:0];

  [(HUHubUnavailableView *)self addSubview:self->_networkIconView];
  v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v13;

  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:labelColor];

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

  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)self->_descriptionLabel setTextColor:secondaryLabelColor2];

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_descriptionLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  [(UILabel *)self->_descriptionLabel setLineBreakMode:0];
  v20 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:8];
  [(UILabel *)self->_descriptionLabel setFont:v20];

  [(HUHubUnavailableView *)self addSubview:self->_descriptionLabel];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(HUHubUnavailableView *)self setBackgroundColor:clearColor];
}

- (void)updateConstraints
{
  layoutConstraints = [(HUHubUnavailableView *)self layoutConstraints];

  if (!layoutConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    networkIconView = [(HUHubUnavailableView *)self networkIconView];
    bottomAnchor = [networkIconView bottomAnchor];
    titleLabel = [(HUHubUnavailableView *)self titleLabel];
    topAnchor = [titleLabel topAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-12.0];
    [array addObject:v9];

    networkIconView2 = [(HUHubUnavailableView *)self networkIconView];
    centerXAnchor = [networkIconView2 centerXAnchor];
    centerXAnchor2 = [(HUHubUnavailableView *)self centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v13];

    networkIconView3 = [(HUHubUnavailableView *)self networkIconView];
    widthAnchor = [networkIconView3 widthAnchor];
    v16 = [widthAnchor constraintEqualToConstant:50.0];
    [array addObject:v16];

    networkIconView4 = [(HUHubUnavailableView *)self networkIconView];
    heightAnchor = [networkIconView4 heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:50.0];
    [array addObject:v19];

    titleLabel2 = [(HUHubUnavailableView *)self titleLabel];
    bottomAnchor2 = [titleLabel2 bottomAnchor];
    descriptionLabel = [(HUHubUnavailableView *)self descriptionLabel];
    topAnchor2 = [descriptionLabel topAnchor];
    v24 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2 constant:-12.0];
    [array addObject:v24];

    titleLabel3 = [(HUHubUnavailableView *)self titleLabel];
    centerXAnchor3 = [titleLabel3 centerXAnchor];
    centerXAnchor4 = [(HUHubUnavailableView *)self centerXAnchor];
    v28 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [array addObject:v28];

    titleLabel4 = [(HUHubUnavailableView *)self titleLabel];
    leadingAnchor = [titleLabel4 leadingAnchor];
    leadingAnchor2 = [(HUHubUnavailableView *)self leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:22.0];
    [array addObject:v32];

    titleLabel5 = [(HUHubUnavailableView *)self titleLabel];
    trailingAnchor = [titleLabel5 trailingAnchor];
    trailingAnchor2 = [(HUHubUnavailableView *)self trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-22.0];
    [array addObject:v36];

    descriptionLabel2 = [(HUHubUnavailableView *)self descriptionLabel];
    centerXAnchor5 = [descriptionLabel2 centerXAnchor];
    centerXAnchor6 = [(HUHubUnavailableView *)self centerXAnchor];
    v40 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [array addObject:v40];

    descriptionLabel3 = [(HUHubUnavailableView *)self descriptionLabel];
    centerYAnchor = [descriptionLabel3 centerYAnchor];
    centerYAnchor2 = [(HUHubUnavailableView *)self centerYAnchor];
    v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v44];

    descriptionLabel4 = [(HUHubUnavailableView *)self descriptionLabel];
    leadingAnchor3 = [descriptionLabel4 leadingAnchor];
    leadingAnchor4 = [(HUHubUnavailableView *)self leadingAnchor];
    v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:22.0];
    [array addObject:v48];

    descriptionLabel5 = [(HUHubUnavailableView *)self descriptionLabel];
    trailingAnchor3 = [descriptionLabel5 trailingAnchor];
    trailingAnchor4 = [(HUHubUnavailableView *)self trailingAnchor];
    v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-22.0];
    [array addObject:v52];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    [(HUHubUnavailableView *)self setLayoutConstraints:array];
  }

  v53.receiver = self;
  v53.super_class = HUHubUnavailableView;
  [(HUHubUnavailableView *)&v53 updateConstraints];
}

- (void)setAccessoryName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_accessoryName isEqualToString:?])
  {
    objc_storeStrong(&self->_accessoryName, name);
    accessoryName = [(HUHubUnavailableView *)self accessoryName];
    v12 = HULocalizedStringWithFormat(@"HUHubUnavailable_Title", @"%@", v6, v7, v8, v9, v10, v11, accessoryName);
    titleLabel = [(HUHubUnavailableView *)self titleLabel];
    [titleLabel setText:v12];

    LODWORD(accessoryName) = [MEMORY[0x277D14CE8] useWLANInsteadOfWiFi];
    accessoryName2 = [(HUHubUnavailableView *)self accessoryName];
    if (accessoryName)
    {
      v21 = @"HUHubUnavailable_Description_WLAN";
    }

    else
    {
      v21 = @"HUHubUnavailable_Description_WIFI";
    }

    v22 = HULocalizedStringWithFormat(v21, @"%@", v14, v15, v16, v17, v18, v19, accessoryName2);
    descriptionLabel = [(HUHubUnavailableView *)self descriptionLabel];
    [descriptionLabel setText:v22];

    [(HUHubUnavailableView *)self setNeedsUpdateConstraints];
  }
}

@end