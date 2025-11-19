@interface NoLocationHistoryMapAsset
- (NoLocationHistoryMapAsset)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)setUpConstraints;
@end

@implementation NoLocationHistoryMapAsset

- (NoLocationHistoryMapAsset)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v12.receiver = self;
  v12.super_class = NoLocationHistoryMapAsset;
  v5 = [(PSTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 imageNamed:@"noLocationHistoryMap" inBundle:v7 withConfiguration:0];

    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    assetView = v5->_assetView;
    v5->_assetView = v9;

    [(NoLocationHistoryMapAsset *)v5 setUpConstraints];
  }

  return v5;
}

- (void)setUpConstraints
{
  v30[4] = *MEMORY[0x277D85DE8];
  v3 = [(NoLocationHistoryMapAsset *)self assetView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(NoLocationHistoryMapAsset *)self assetView];
  [v4 setContentMode:2];

  v5 = [(NoLocationHistoryMapAsset *)self contentView];
  v6 = [(NoLocationHistoryMapAsset *)self assetView];
  [v5 addSubview:v6];

  v20 = MEMORY[0x277CCAAD0];
  v29 = [(NoLocationHistoryMapAsset *)self assetView];
  v27 = [v29 centerYAnchor];
  v28 = [(NoLocationHistoryMapAsset *)self contentView];
  v26 = [v28 centerYAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v30[0] = v25;
  v24 = [(NoLocationHistoryMapAsset *)self assetView];
  v22 = [v24 centerXAnchor];
  v23 = [(NoLocationHistoryMapAsset *)self contentView];
  v21 = [v23 centerXAnchor];
  v19 = [v22 constraintEqualToAnchor:v21];
  v30[1] = v19;
  v18 = [(NoLocationHistoryMapAsset *)self assetView];
  v7 = [v18 widthAnchor];
  v8 = [(NoLocationHistoryMapAsset *)self contentView];
  v9 = [v8 widthAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v30[2] = v10;
  v11 = [(NoLocationHistoryMapAsset *)self contentView];
  v12 = [v11 heightAnchor];
  v13 = [(NoLocationHistoryMapAsset *)self assetView];
  v14 = [v13 heightAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v30[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v20 activateConstraints:v16];

  v17 = *MEMORY[0x277D85DE8];
}

@end