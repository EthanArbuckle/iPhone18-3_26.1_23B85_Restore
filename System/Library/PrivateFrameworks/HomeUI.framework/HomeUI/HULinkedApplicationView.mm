@interface HULinkedApplicationView
- (HULinkedApplicationView)initWithFrame:(CGRect)frame;
- (void)_viewButtonTapped:(id)tapped;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HULinkedApplicationView

- (HULinkedApplicationView)initWithFrame:(CGRect)frame
{
  v98[5] = *MEMORY[0x277D85DE8];
  v96.receiver = self;
  v96.super_class = HULinkedApplicationView;
  v3 = [(HULinkedApplicationView *)&v96 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(HULinkedApplicationView *)v3 setIconView:v4];

    iconView = [(HULinkedApplicationView *)v3 iconView];
    [iconView setTranslatesAutoresizingMaskIntoConstraints:0];

    iconView2 = [(HULinkedApplicationView *)v3 iconView];
    LODWORD(v7) = 1148846080;
    [iconView2 setContentHuggingPriority:1 forAxis:v7];

    iconView3 = [(HULinkedApplicationView *)v3 iconView];
    LODWORD(v9) = 1148846080;
    [iconView3 setContentHuggingPriority:0 forAxis:v9];

    iconView4 = [(HULinkedApplicationView *)v3 iconView];
    [(HULinkedApplicationView *)v3 addSubview:iconView4];

    v11 = [MEMORY[0x277D75220] buttonWithType:1];
    [(HULinkedApplicationView *)v3 setViewButton:v11];

    v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    viewButton = [(HULinkedApplicationView *)v3 viewButton];
    titleLabel = [viewButton titleLabel];
    [titleLabel setFont:v12];

    viewButton2 = [(HULinkedApplicationView *)v3 viewButton];
    v16 = _HULocalizedStringWithDefaultValue(@"HULinkedApplicationViewButtonTitle", @"HULinkedApplicationViewButtonTitle", 1);
    [viewButton2 setTitle:v16 forState:0];

    viewButton3 = [(HULinkedApplicationView *)v3 viewButton];
    [viewButton3 addTarget:v3 action:sel__viewButtonTapped_ forControlEvents:64];

    viewButton4 = [(HULinkedApplicationView *)v3 viewButton];
    [viewButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

    viewButton5 = [(HULinkedApplicationView *)v3 viewButton];
    LODWORD(v20) = 1148846080;
    [viewButton5 setContentHuggingPriority:1 forAxis:v20];

    viewButton6 = [(HULinkedApplicationView *)v3 viewButton];
    LODWORD(v22) = 1148846080;
    [viewButton6 setContentHuggingPriority:0 forAxis:v22];

    viewButton7 = [(HULinkedApplicationView *)v3 viewButton];
    [(HULinkedApplicationView *)v3 addSubview:viewButton7];

    v24 = objc_opt_new();
    [(HULinkedApplicationView *)v3 setNameLabel:v24];

    v25 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
    nameLabel = [(HULinkedApplicationView *)v3 nameLabel];
    [nameLabel setFont:v25];

    v27 = objc_opt_new();
    [(HULinkedApplicationView *)v3 setPublisherLabel:v27];

    v28 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    publisherLabel = [(HULinkedApplicationView *)v3 publisherLabel];
    [publisherLabel setFont:v28];

    v30 = objc_alloc_init(HULinkedApplicationRatingView);
    [(HULinkedApplicationView *)v3 setRatingView:v30];

    v31 = objc_opt_new();
    [(HULinkedApplicationView *)v3 setPriceLabel:v31];

    v32 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    priceLabel = [(HULinkedApplicationView *)v3 priceLabel];
    [priceLabel setFont:v32];

    v34 = objc_opt_new();
    [(HULinkedApplicationView *)v3 setInstalledLabel:v34];

    v35 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    installedLabel = [(HULinkedApplicationView *)v3 installedLabel];
    [installedLabel setFont:v35];

    v37 = _HULocalizedStringWithDefaultValue(@"HULinkedApplicationInstalled", @"HULinkedApplicationInstalled", 1);
    installedLabel2 = [(HULinkedApplicationView *)v3 installedLabel];
    [installedLabel2 setText:v37];

    v39 = objc_alloc(MEMORY[0x277D75A68]);
    nameLabel2 = [(HULinkedApplicationView *)v3 nameLabel];
    v98[0] = nameLabel2;
    publisherLabel2 = [(HULinkedApplicationView *)v3 publisherLabel];
    v98[1] = publisherLabel2;
    ratingView = [(HULinkedApplicationView *)v3 ratingView];
    v98[2] = ratingView;
    priceLabel2 = [(HULinkedApplicationView *)v3 priceLabel];
    v98[3] = priceLabel2;
    installedLabel3 = [(HULinkedApplicationView *)v3 installedLabel];
    v98[4] = installedLabel3;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:5];
    v46 = [v39 initWithArrangedSubviews:v45];
    [(HULinkedApplicationView *)v3 setLabelView:v46];

    labelView = [(HULinkedApplicationView *)v3 labelView];
    [labelView setAlignment:1];

    labelView2 = [(HULinkedApplicationView *)v3 labelView];
    [labelView2 setAxis:1];

    labelView3 = [(HULinkedApplicationView *)v3 labelView];
    [labelView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    labelView4 = [(HULinkedApplicationView *)v3 labelView];
    LODWORD(v51) = 1132003328;
    [labelView4 setContentHuggingPriority:0 forAxis:v51];

    labelView5 = [(HULinkedApplicationView *)v3 labelView];
    [(HULinkedApplicationView *)v3 addSubview:labelView5];

    v80 = MEMORY[0x277CCAAD0];
    iconView5 = [(HULinkedApplicationView *)v3 iconView];
    leadingAnchor = [iconView5 leadingAnchor];
    leadingAnchor2 = [(HULinkedApplicationView *)v3 leadingAnchor];
    v92 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    v97[0] = v92;
    iconView6 = [(HULinkedApplicationView *)v3 iconView];
    widthAnchor = [iconView6 widthAnchor];
    v89 = [widthAnchor constraintEqualToConstant:60.0];
    v97[1] = v89;
    iconView7 = [(HULinkedApplicationView *)v3 iconView];
    heightAnchor = [iconView7 heightAnchor];
    v86 = [heightAnchor constraintEqualToConstant:60.0];
    v97[2] = v86;
    iconView8 = [(HULinkedApplicationView *)v3 iconView];
    topAnchor = [iconView8 topAnchor];
    topAnchor2 = [(HULinkedApplicationView *)v3 topAnchor];
    v82 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    v97[3] = v82;
    iconView9 = [(HULinkedApplicationView *)v3 iconView];
    bottomAnchor = [iconView9 bottomAnchor];
    bottomAnchor2 = [(HULinkedApplicationView *)v3 bottomAnchor];
    v77 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
    v97[4] = v77;
    labelView6 = [(HULinkedApplicationView *)v3 labelView];
    leadingAnchor3 = [labelView6 leadingAnchor];
    iconView10 = [(HULinkedApplicationView *)v3 iconView];
    trailingAnchor = [iconView10 trailingAnchor];
    v72 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
    v97[5] = v72;
    labelView7 = [(HULinkedApplicationView *)v3 labelView];
    centerYAnchor = [labelView7 centerYAnchor];
    centerYAnchor2 = [(HULinkedApplicationView *)v3 centerYAnchor];
    v68 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v97[6] = v68;
    viewButton8 = [(HULinkedApplicationView *)v3 viewButton];
    leadingAnchor4 = [viewButton8 leadingAnchor];
    labelView8 = [(HULinkedApplicationView *)v3 labelView];
    trailingAnchor2 = [labelView8 trailingAnchor];
    v63 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2 constant:15.0];
    v97[7] = v63;
    viewButton9 = [(HULinkedApplicationView *)v3 viewButton];
    trailingAnchor3 = [viewButton9 trailingAnchor];
    trailingAnchor4 = [(HULinkedApplicationView *)v3 trailingAnchor];
    v56 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-15.0];
    v97[8] = v56;
    viewButton10 = [(HULinkedApplicationView *)v3 viewButton];
    centerYAnchor3 = [viewButton10 centerYAnchor];
    centerYAnchor4 = [(HULinkedApplicationView *)v3 centerYAnchor];
    v60 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v97[9] = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:10];
    [v80 activateConstraints:v61];
  }

  return v3;
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HULinkedApplicationView *)self item];
  latestResults = [item latestResults];

  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E98]];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v7 = [latestResults objectForKeyedSubscript:@"HFResultApplicationPublisher"];
  v8 = [latestResults objectForKeyedSubscript:@"HFResultApplicationAverageRating"];
  [v8 floatValue];
  v10 = v9;

  v11 = [latestResults objectForKeyedSubscript:@"HFResultApplicationPrice"];
  v12 = [latestResults objectForKeyedSubscript:@"HFResultApplicationIsInstalled"];
  bOOLValue = [v12 BOOLValue];

  iconView = [(HULinkedApplicationView *)self iconView];
  [iconView setImage:v5];

  nameLabel = [(HULinkedApplicationView *)self nameLabel];
  [nameLabel setText:v6];

  publisherLabel = [(HULinkedApplicationView *)self publisherLabel];
  [publisherLabel setText:v7];

  ratingView = [(HULinkedApplicationView *)self ratingView];
  [ratingView setRating:v10];

  priceLabel = [(HULinkedApplicationView *)self priceLabel];
  [priceLabel setText:v11];

  priceLabel2 = [(HULinkedApplicationView *)self priceLabel];
  [priceLabel2 setHidden:bOOLValue];

  ratingView2 = [(HULinkedApplicationView *)self ratingView];
  [ratingView2 setHidden:bOOLValue];

  installedLabel = [(HULinkedApplicationView *)self installedLabel];
  [installedLabel setHidden:bOOLValue ^ 1];

  labelView = [(HULinkedApplicationView *)self labelView];
  publisherLabel2 = [(HULinkedApplicationView *)self publisherLabel];
  v24 = 3.40282347e38;
  if (bOOLValue)
  {
    v24 = 15.0;
    v25 = @"HULinkedApplicationOpenButtonTitle";
  }

  else
  {
    v25 = @"HULinkedApplicationViewButtonTitle";
  }

  [labelView setCustomSpacing:publisherLabel2 afterView:v24];

  v26 = v25;
  viewButton = [(HULinkedApplicationView *)self viewButton];
  v28 = _HULocalizedStringWithDefaultValue(v26, v26, 1);

  [viewButton setTitle:v28 forState:0];
  [(HULinkedApplicationView *)self setIsInstalled:bOOLValue];
  v29 = [latestResults objectForKeyedSubscript:@"HFResultApplicationBundleIdentifier"];
  [(HULinkedApplicationView *)self setBundleID:v29];

  v30 = [latestResults objectForKeyedSubscript:@"HFResultApplicationStoreURL"];
  [(HULinkedApplicationView *)self setStoreURL:v30];
}

- (void)_viewButtonTapped:(id)tapped
{
  v4 = objc_alloc(MEMORY[0x277D143E8]);
  nameLabel = [(HULinkedApplicationView *)self nameLabel];
  text = [nameLabel text];
  bundleID = [(HULinkedApplicationView *)self bundleID];
  storeURL = [(HULinkedApplicationView *)self storeURL];
  v10 = [v4 initWithName:text bundleID:bundleID payloadURL:0 storeURL:storeURL];

  v9 = [MEMORY[0x277D143E8] handleRequest:v10];
}

@end