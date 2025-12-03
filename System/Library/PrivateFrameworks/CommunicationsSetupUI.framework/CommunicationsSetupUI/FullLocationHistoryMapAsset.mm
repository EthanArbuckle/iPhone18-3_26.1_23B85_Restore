@interface FullLocationHistoryMapAsset
- (FullLocationHistoryMapAsset)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setUpConstraints;
@end

@implementation FullLocationHistoryMapAsset

- (FullLocationHistoryMapAsset)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v12.receiver = self;
  v12.super_class = FullLocationHistoryMapAsset;
  v5 = [(PSTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 imageNamed:@"fullLocationHistoryMap" inBundle:v7 withConfiguration:0];

    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    assetView = v5->_assetView;
    v5->_assetView = v9;

    [(FullLocationHistoryMapAsset *)v5 setUpConstraints];
  }

  return v5;
}

- (void)setUpConstraints
{
  v30[4] = *MEMORY[0x277D85DE8];
  assetView = [(FullLocationHistoryMapAsset *)self assetView];
  [assetView setTranslatesAutoresizingMaskIntoConstraints:0];

  assetView2 = [(FullLocationHistoryMapAsset *)self assetView];
  [assetView2 setContentMode:2];

  contentView = [(FullLocationHistoryMapAsset *)self contentView];
  assetView3 = [(FullLocationHistoryMapAsset *)self assetView];
  [contentView addSubview:assetView3];

  v20 = MEMORY[0x277CCAAD0];
  assetView4 = [(FullLocationHistoryMapAsset *)self assetView];
  centerYAnchor = [assetView4 centerYAnchor];
  contentView2 = [(FullLocationHistoryMapAsset *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v30[0] = v25;
  assetView5 = [(FullLocationHistoryMapAsset *)self assetView];
  centerXAnchor = [assetView5 centerXAnchor];
  contentView3 = [(FullLocationHistoryMapAsset *)self contentView];
  centerXAnchor2 = [contentView3 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v30[1] = v19;
  assetView6 = [(FullLocationHistoryMapAsset *)self assetView];
  widthAnchor = [assetView6 widthAnchor];
  contentView4 = [(FullLocationHistoryMapAsset *)self contentView];
  widthAnchor2 = [contentView4 widthAnchor];
  v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v30[2] = v10;
  contentView5 = [(FullLocationHistoryMapAsset *)self contentView];
  heightAnchor = [contentView5 heightAnchor];
  assetView7 = [(FullLocationHistoryMapAsset *)self assetView];
  heightAnchor2 = [assetView7 heightAnchor];
  v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v30[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v20 activateConstraints:v16];

  v17 = *MEMORY[0x277D85DE8];
}

@end