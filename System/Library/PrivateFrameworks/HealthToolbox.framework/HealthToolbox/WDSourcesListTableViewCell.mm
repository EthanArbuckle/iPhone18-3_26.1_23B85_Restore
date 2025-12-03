@interface WDSourcesListTableViewCell
- (WDSourcesListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_handleReturnedImage:(id)image forSource:(id)source fetchError:(id)error;
- (void)prepareForReuse;
- (void)setSourceModel:(id)model;
- (void)setUpSubviews;
- (void)setupConstraints;
@end

@implementation WDSourcesListTableViewCell

- (WDSourcesListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDSourcesListTableViewCell;
  v4 = [(WDSourcesListTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDSourcesListTableViewCell *)v4 setUpSubviews];
    [(WDSourcesListTableViewCell *)v5 setupConstraints];
  }

  return v5;
}

- (void)prepareForReuse
{
  [(WDSourcesListTableViewCell *)self setSourceModel:0];
  v3.receiver = self;
  v3.super_class = WDSourcesListTableViewCell;
  [(WDSourcesListTableViewCell *)&v3 prepareForReuse];
}

- (void)setUpSubviews
{
  secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  [(WDSourcesListTableViewCell *)self setBackgroundColor:secondarySystemGroupedBackgroundColor];

  v4 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(WDSourcesListTableViewCell *)self setIconImage:v4];

  iconImage = [(WDSourcesListTableViewCell *)self iconImage];
  [iconImage setTranslatesAutoresizingMaskIntoConstraints:0];

  iconImage2 = [(WDSourcesListTableViewCell *)self iconImage];
  [iconImage2 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  iconImage3 = [(WDSourcesListTableViewCell *)self iconImage];
  [iconImage3 setContentMode:2];

  contentView = [(WDSourcesListTableViewCell *)self contentView];
  iconImage4 = [(WDSourcesListTableViewCell *)self iconImage];
  [contentView addSubview:iconImage4];

  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(WDSourcesListTableViewCell *)self setTitleLabel:v10];

  v11 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  titleLabel = [(WDSourcesListTableViewCell *)self titleLabel];
  [titleLabel setFont:v11];

  titleLabel2 = [(WDSourcesListTableViewCell *)self titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  titleLabel3 = [(WDSourcesListTableViewCell *)self titleLabel];
  [titleLabel3 setTextAlignment:4];

  titleLabel4 = [(WDSourcesListTableViewCell *)self titleLabel];
  [titleLabel4 setNumberOfLines:0];

  titleLabel5 = [(WDSourcesListTableViewCell *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(WDSourcesListTableViewCell *)self contentView];
  titleLabel6 = [(WDSourcesListTableViewCell *)self titleLabel];
  [contentView2 addSubview:titleLabel6];
}

- (void)setupConstraints
{
  iconImage = [(WDSourcesListTableViewCell *)self iconImage];
  leadingAnchor = [iconImage leadingAnchor];
  contentView = [(WDSourcesListTableViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v7 setActive:1];

  iconImage2 = [(WDSourcesListTableViewCell *)self iconImage];
  widthAnchor = [iconImage2 widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:29.0];
  [v10 setActive:1];

  iconImage3 = [(WDSourcesListTableViewCell *)self iconImage];
  heightAnchor = [iconImage3 heightAnchor];
  v13 = [heightAnchor constraintEqualToConstant:29.0];
  [v13 setActive:1];

  iconImage4 = [(WDSourcesListTableViewCell *)self iconImage];
  centerYAnchor = [iconImage4 centerYAnchor];
  contentView2 = [(WDSourcesListTableViewCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v18 setActive:1];

  titleLabel = [(WDSourcesListTableViewCell *)self titleLabel];
  leadingAnchor3 = [titleLabel leadingAnchor];
  iconImage5 = [(WDSourcesListTableViewCell *)self iconImage];
  trailingAnchor = [iconImage5 trailingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:16.0];
  [v23 setActive:1];

  titleLabel2 = [(WDSourcesListTableViewCell *)self titleLabel];
  topAnchor = [titleLabel2 topAnchor];
  contentView3 = [(WDSourcesListTableViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [v28 setActive:1];

  titleLabel3 = [(WDSourcesListTableViewCell *)self titleLabel];
  trailingAnchor2 = [titleLabel3 trailingAnchor];
  contentView4 = [(WDSourcesListTableViewCell *)self contentView];
  trailingAnchor3 = [contentView4 trailingAnchor];
  v33 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
  [v33 setActive:1];

  titleLabel4 = [(WDSourcesListTableViewCell *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  contentView5 = [(WDSourcesListTableViewCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v38 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-16.0];
  [v38 setActive:1];

  [(WDSourcesListTableViewCell *)self setSeparatorInset:0.0, 61.0, 0.0, 0.0];
}

- (void)setSourceModel:(id)model
{
  modelCopy = model;
  if (self->_sourceModel != modelCopy)
  {
    objc_storeStrong(&self->_sourceModel, model);
    if (modelCopy)
    {
      source = [(HKSourceDataModel *)modelCopy source];
      if ([source _isConnectedGymSource])
      {
        HKConnectedGymSourceName();
      }

      else
      {
        [source name];
      }
      v9 = ;
      titleLabel = [(WDSourcesListTableViewCell *)self titleLabel];
      [titleLabel setText:v9];

      icon = [(HKSourceDataModel *)modelCopy icon];

      if (icon)
      {
        icon2 = [(HKSourceDataModel *)modelCopy icon];
        iconImage = [(WDSourcesListTableViewCell *)self iconImage];
        [iconImage setImage:icon2];
      }

      else
      {
        objc_initWeak(&location, self);
        mEMORY[0x277D127A8] = [MEMORY[0x277D127A8] sharedImageManager];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __45__WDSourcesListTableViewCell_setSourceModel___block_invoke;
        v22[3] = &unk_2796E6C50;
        v22[4] = self;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __45__WDSourcesListTableViewCell_setSourceModel___block_invoke_2;
        v19[3] = &unk_2796E8198;
        objc_copyWeak(&v21, &location);
        v20 = source;
        [mEMORY[0x277D127A8] loadIconForSource:v20 syncHandler:v22 asyncHandler:v19];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
      }

      v15 = *MEMORY[0x277D12788];
      titleLabel2 = [(WDSourcesListTableViewCell *)self titleLabel];
      text = [titleLabel2 text];
      v18 = [v15 stringByAppendingFormat:@".Source.%@", text];
      [(WDSourcesListTableViewCell *)self setAccessibilityIdentifier:v18];
    }

    else
    {
      titleLabel3 = [(WDSourcesListTableViewCell *)self titleLabel];
      [titleLabel3 setText:0];

      iconImage2 = [(WDSourcesListTableViewCell *)self iconImage];
      [iconImage2 setImage:0];
    }
  }
}

void __45__WDSourcesListTableViewCell_setSourceModel___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 iconImage];
  [v4 setImage:v3];
}

void __45__WDSourcesListTableViewCell_setSourceModel___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__WDSourcesListTableViewCell_setSourceModel___block_invoke_3;
  v9[3] = &unk_2796E8170;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __45__WDSourcesListTableViewCell_setSourceModel___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleReturnedImage:*(a1 + 32) forSource:*(a1 + 40) fetchError:*(a1 + 48)];
}

- (void)_handleReturnedImage:(id)image forSource:(id)source fetchError:(id)error
{
  imageCopy = image;
  sourceCopy = source;
  errorCopy = error;
  if (imageCopy)
  {
    if (!errorCopy)
    {
      sourceModel = [(WDSourcesListTableViewCell *)self sourceModel];
      source = [sourceModel source];
      v12 = [sourceCopy isEqual:source];

      if (v12)
      {
        iconImage = [(WDSourcesListTableViewCell *)self iconImage];
        [iconImage setImage:imageCopy];
      }
    }
  }
}

@end