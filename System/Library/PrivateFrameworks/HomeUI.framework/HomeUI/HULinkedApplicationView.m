@interface HULinkedApplicationView
- (HULinkedApplicationView)initWithFrame:(CGRect)a3;
- (void)_viewButtonTapped:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HULinkedApplicationView

- (HULinkedApplicationView)initWithFrame:(CGRect)a3
{
  v98[5] = *MEMORY[0x277D85DE8];
  v96.receiver = self;
  v96.super_class = HULinkedApplicationView;
  v3 = [(HULinkedApplicationView *)&v96 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(HULinkedApplicationView *)v3 setIconView:v4];

    v5 = [(HULinkedApplicationView *)v3 iconView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(HULinkedApplicationView *)v3 iconView];
    LODWORD(v7) = 1148846080;
    [v6 setContentHuggingPriority:1 forAxis:v7];

    v8 = [(HULinkedApplicationView *)v3 iconView];
    LODWORD(v9) = 1148846080;
    [v8 setContentHuggingPriority:0 forAxis:v9];

    v10 = [(HULinkedApplicationView *)v3 iconView];
    [(HULinkedApplicationView *)v3 addSubview:v10];

    v11 = [MEMORY[0x277D75220] buttonWithType:1];
    [(HULinkedApplicationView *)v3 setViewButton:v11];

    v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    v13 = [(HULinkedApplicationView *)v3 viewButton];
    v14 = [v13 titleLabel];
    [v14 setFont:v12];

    v15 = [(HULinkedApplicationView *)v3 viewButton];
    v16 = _HULocalizedStringWithDefaultValue(@"HULinkedApplicationViewButtonTitle", @"HULinkedApplicationViewButtonTitle", 1);
    [v15 setTitle:v16 forState:0];

    v17 = [(HULinkedApplicationView *)v3 viewButton];
    [v17 addTarget:v3 action:sel__viewButtonTapped_ forControlEvents:64];

    v18 = [(HULinkedApplicationView *)v3 viewButton];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(HULinkedApplicationView *)v3 viewButton];
    LODWORD(v20) = 1148846080;
    [v19 setContentHuggingPriority:1 forAxis:v20];

    v21 = [(HULinkedApplicationView *)v3 viewButton];
    LODWORD(v22) = 1148846080;
    [v21 setContentHuggingPriority:0 forAxis:v22];

    v23 = [(HULinkedApplicationView *)v3 viewButton];
    [(HULinkedApplicationView *)v3 addSubview:v23];

    v24 = objc_opt_new();
    [(HULinkedApplicationView *)v3 setNameLabel:v24];

    v25 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
    v26 = [(HULinkedApplicationView *)v3 nameLabel];
    [v26 setFont:v25];

    v27 = objc_opt_new();
    [(HULinkedApplicationView *)v3 setPublisherLabel:v27];

    v28 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    v29 = [(HULinkedApplicationView *)v3 publisherLabel];
    [v29 setFont:v28];

    v30 = objc_alloc_init(HULinkedApplicationRatingView);
    [(HULinkedApplicationView *)v3 setRatingView:v30];

    v31 = objc_opt_new();
    [(HULinkedApplicationView *)v3 setPriceLabel:v31];

    v32 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    v33 = [(HULinkedApplicationView *)v3 priceLabel];
    [v33 setFont:v32];

    v34 = objc_opt_new();
    [(HULinkedApplicationView *)v3 setInstalledLabel:v34];

    v35 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    v36 = [(HULinkedApplicationView *)v3 installedLabel];
    [v36 setFont:v35];

    v37 = _HULocalizedStringWithDefaultValue(@"HULinkedApplicationInstalled", @"HULinkedApplicationInstalled", 1);
    v38 = [(HULinkedApplicationView *)v3 installedLabel];
    [v38 setText:v37];

    v39 = objc_alloc(MEMORY[0x277D75A68]);
    v40 = [(HULinkedApplicationView *)v3 nameLabel];
    v98[0] = v40;
    v41 = [(HULinkedApplicationView *)v3 publisherLabel];
    v98[1] = v41;
    v42 = [(HULinkedApplicationView *)v3 ratingView];
    v98[2] = v42;
    v43 = [(HULinkedApplicationView *)v3 priceLabel];
    v98[3] = v43;
    v44 = [(HULinkedApplicationView *)v3 installedLabel];
    v98[4] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:5];
    v46 = [v39 initWithArrangedSubviews:v45];
    [(HULinkedApplicationView *)v3 setLabelView:v46];

    v47 = [(HULinkedApplicationView *)v3 labelView];
    [v47 setAlignment:1];

    v48 = [(HULinkedApplicationView *)v3 labelView];
    [v48 setAxis:1];

    v49 = [(HULinkedApplicationView *)v3 labelView];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];

    v50 = [(HULinkedApplicationView *)v3 labelView];
    LODWORD(v51) = 1132003328;
    [v50 setContentHuggingPriority:0 forAxis:v51];

    v52 = [(HULinkedApplicationView *)v3 labelView];
    [(HULinkedApplicationView *)v3 addSubview:v52];

    v80 = MEMORY[0x277CCAAD0];
    v95 = [(HULinkedApplicationView *)v3 iconView];
    v94 = [v95 leadingAnchor];
    v93 = [(HULinkedApplicationView *)v3 leadingAnchor];
    v92 = [v94 constraintEqualToAnchor:v93 constant:15.0];
    v97[0] = v92;
    v91 = [(HULinkedApplicationView *)v3 iconView];
    v90 = [v91 widthAnchor];
    v89 = [v90 constraintEqualToConstant:60.0];
    v97[1] = v89;
    v88 = [(HULinkedApplicationView *)v3 iconView];
    v87 = [v88 heightAnchor];
    v86 = [v87 constraintEqualToConstant:60.0];
    v97[2] = v86;
    v85 = [(HULinkedApplicationView *)v3 iconView];
    v84 = [v85 topAnchor];
    v83 = [(HULinkedApplicationView *)v3 topAnchor];
    v82 = [v84 constraintEqualToAnchor:v83 constant:20.0];
    v97[3] = v82;
    v81 = [(HULinkedApplicationView *)v3 iconView];
    v79 = [v81 bottomAnchor];
    v78 = [(HULinkedApplicationView *)v3 bottomAnchor];
    v77 = [v79 constraintEqualToAnchor:v78 constant:-20.0];
    v97[4] = v77;
    v76 = [(HULinkedApplicationView *)v3 labelView];
    v74 = [v76 leadingAnchor];
    v75 = [(HULinkedApplicationView *)v3 iconView];
    v73 = [v75 trailingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73 constant:15.0];
    v97[5] = v72;
    v71 = [(HULinkedApplicationView *)v3 labelView];
    v70 = [v71 centerYAnchor];
    v69 = [(HULinkedApplicationView *)v3 centerYAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v97[6] = v68;
    v67 = [(HULinkedApplicationView *)v3 viewButton];
    v65 = [v67 leadingAnchor];
    v66 = [(HULinkedApplicationView *)v3 labelView];
    v64 = [v66 trailingAnchor];
    v63 = [v65 constraintEqualToAnchor:v64 constant:15.0];
    v97[7] = v63;
    v53 = [(HULinkedApplicationView *)v3 viewButton];
    v54 = [v53 trailingAnchor];
    v55 = [(HULinkedApplicationView *)v3 trailingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:-15.0];
    v97[8] = v56;
    v57 = [(HULinkedApplicationView *)v3 viewButton];
    v58 = [v57 centerYAnchor];
    v59 = [(HULinkedApplicationView *)v3 centerYAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
    v97[9] = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:10];
    [v80 activateConstraints:v61];
  }

  return v3;
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HULinkedApplicationView *)self item];
  v31 = [v4 latestResults];

  v5 = [v31 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
  v6 = [v31 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v7 = [v31 objectForKeyedSubscript:@"HFResultApplicationPublisher"];
  v8 = [v31 objectForKeyedSubscript:@"HFResultApplicationAverageRating"];
  [v8 floatValue];
  v10 = v9;

  v11 = [v31 objectForKeyedSubscript:@"HFResultApplicationPrice"];
  v12 = [v31 objectForKeyedSubscript:@"HFResultApplicationIsInstalled"];
  v13 = [v12 BOOLValue];

  v14 = [(HULinkedApplicationView *)self iconView];
  [v14 setImage:v5];

  v15 = [(HULinkedApplicationView *)self nameLabel];
  [v15 setText:v6];

  v16 = [(HULinkedApplicationView *)self publisherLabel];
  [v16 setText:v7];

  v17 = [(HULinkedApplicationView *)self ratingView];
  [v17 setRating:v10];

  v18 = [(HULinkedApplicationView *)self priceLabel];
  [v18 setText:v11];

  v19 = [(HULinkedApplicationView *)self priceLabel];
  [v19 setHidden:v13];

  v20 = [(HULinkedApplicationView *)self ratingView];
  [v20 setHidden:v13];

  v21 = [(HULinkedApplicationView *)self installedLabel];
  [v21 setHidden:v13 ^ 1];

  v22 = [(HULinkedApplicationView *)self labelView];
  v23 = [(HULinkedApplicationView *)self publisherLabel];
  v24 = 3.40282347e38;
  if (v13)
  {
    v24 = 15.0;
    v25 = @"HULinkedApplicationOpenButtonTitle";
  }

  else
  {
    v25 = @"HULinkedApplicationViewButtonTitle";
  }

  [v22 setCustomSpacing:v23 afterView:v24];

  v26 = v25;
  v27 = [(HULinkedApplicationView *)self viewButton];
  v28 = _HULocalizedStringWithDefaultValue(v26, v26, 1);

  [v27 setTitle:v28 forState:0];
  [(HULinkedApplicationView *)self setIsInstalled:v13];
  v29 = [v31 objectForKeyedSubscript:@"HFResultApplicationBundleIdentifier"];
  [(HULinkedApplicationView *)self setBundleID:v29];

  v30 = [v31 objectForKeyedSubscript:@"HFResultApplicationStoreURL"];
  [(HULinkedApplicationView *)self setStoreURL:v30];
}

- (void)_viewButtonTapped:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D143E8]);
  v5 = [(HULinkedApplicationView *)self nameLabel];
  v6 = [v5 text];
  v7 = [(HULinkedApplicationView *)self bundleID];
  v8 = [(HULinkedApplicationView *)self storeURL];
  v10 = [v4 initWithName:v6 bundleID:v7 payloadURL:0 storeURL:v8];

  v9 = [MEMORY[0x277D143E8] handleRequest:v10];
}

@end