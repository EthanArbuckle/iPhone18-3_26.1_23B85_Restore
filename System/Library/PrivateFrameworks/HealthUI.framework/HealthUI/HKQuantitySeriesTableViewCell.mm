@interface HKQuantitySeriesTableViewCell
- (HKQuantitySeriesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_makeAccessibilityConstraints;
- (id)_makeConstraints;
- (void)_configureLabels;
- (void)_configureLayoutForTraitCollection:(id)collection;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKQuantitySeriesTableViewCell

- (HKQuantitySeriesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = HKQuantitySeriesTableViewCell;
  v4 = [(HKQuantitySeriesTableViewCell *)&v8 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKQuantitySeriesTableViewCell *)v4 _configureLabels];
    traitCollection = [(HKQuantitySeriesTableViewCell *)v5 traitCollection];
    [(HKQuantitySeriesTableViewCell *)v5 _configureLayoutForTraitCollection:traitCollection];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = HKQuantitySeriesTableViewCell;
  changeCopy = change;
  [(HKQuantitySeriesTableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(HKQuantitySeriesTableViewCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    traitCollection2 = [(HKQuantitySeriesTableViewCell *)self traitCollection];
    [(HKQuantitySeriesTableViewCell *)self _configureLayoutForTraitCollection:traitCollection2];
  }
}

- (void)_configureLabels
{
  textLabel = [(HKQuantitySeriesTableViewCell *)self textLabel];
  [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  textLabel2 = [(HKQuantitySeriesTableViewCell *)self textLabel];
  LODWORD(v5) = 1144750080;
  [textLabel2 setContentCompressionResistancePriority:0 forAxis:v5];

  textLabel3 = [(HKQuantitySeriesTableViewCell *)self textLabel];
  LODWORD(v7) = 1144750080;
  [textLabel3 setContentHuggingPriority:0 forAxis:v7];

  detailTextLabel = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  [detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  detailTextLabel2 = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setLineBreakMode:0];

  detailTextLabel3 = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  [detailTextLabel3 setNumberOfLines:0];

  detailTextLabel4 = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  LODWORD(v12) = 1132068864;
  [detailTextLabel4 setContentCompressionResistancePriority:0 forAxis:v12];

  detailTextLabel5 = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  LODWORD(v13) = 1132068864;
  [detailTextLabel5 setContentHuggingPriority:0 forAxis:v13];
}

- (void)_configureLayoutForTraitCollection:(id)collection
{
  v4 = MEMORY[0x1E696ACD8];
  collectionCopy = collection;
  currentConstraints = [(HKQuantitySeriesTableViewCell *)self currentConstraints];
  [v4 deactivateConstraints:currentConstraints];

  [(HKQuantitySeriesTableViewCell *)self setCurrentConstraints:0];
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];

  LODWORD(collectionCopy) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  if (collectionCopy)
  {
    [(HKQuantitySeriesTableViewCell *)self _makeAccessibilityConstraints];
  }

  else
  {
    [(HKQuantitySeriesTableViewCell *)self _makeConstraints];
  }
  v8 = ;
  [(HKQuantitySeriesTableViewCell *)self setCurrentConstraints:v8];

  v9 = MEMORY[0x1E696ACD8];
  currentConstraints2 = [(HKQuantitySeriesTableViewCell *)self currentConstraints];
  [v9 activateConstraints:currentConstraints2];
}

- (id)_makeConstraints
{
  v54[4] = *MEMORY[0x1E69E9840];
  contentView = [(HKQuantitySeriesTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];

  textLabel = [(HKQuantitySeriesTableViewCell *)self textLabel];
  topAnchor = [textLabel topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v54[0] = v39;
  textLabel2 = [(HKQuantitySeriesTableViewCell *)self textLabel];
  bottomAnchor = [textLabel2 bottomAnchor];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v54[1] = v5;
  detailTextLabel = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  topAnchor3 = [detailTextLabel topAnchor];
  topAnchor4 = [layoutMarginsGuide topAnchor];
  v9 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v54[2] = v9;
  detailTextLabel2 = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  bottomAnchor3 = [detailTextLabel2 bottomAnchor];
  v47 = layoutMarginsGuide;
  bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
  v13 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v54[3] = v13;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = v31;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v49;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v14);
        }

        LODWORD(v16) = 1148829696;
        [*(*(&v48 + 1) + 8 * i) setPriority:v16];
      }

      v17 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v17);
  }

  textLabel3 = [(HKQuantitySeriesTableViewCell *)self textLabel];
  leadingAnchor = [textLabel3 leadingAnchor];
  leadingAnchor2 = [v47 leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v52[0] = v40;
  detailTextLabel3 = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  trailingAnchor = [detailTextLabel3 trailingAnchor];
  trailingAnchor2 = [v47 trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v52[1] = v32;
  detailTextLabel4 = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  leadingAnchor3 = [detailTextLabel4 leadingAnchor];
  textLabel4 = [(HKQuantitySeriesTableViewCell *)self textLabel];
  trailingAnchor3 = [textLabel4 trailingAnchor];
  v24 = [leadingAnchor3 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
  v52[2] = v24;
  contentView2 = [(HKQuantitySeriesTableViewCell *)self contentView];
  heightAnchor = [contentView2 heightAnchor];
  v27 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
  v52[3] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
  v30 = [v14 arrayByAddingObjectsFromArray:v28];

  return v30;
}

- (id)_makeAccessibilityConstraints
{
  v36[7] = *MEMORY[0x1E69E9840];
  contentView = [(HKQuantitySeriesTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];

  textLabel = [(HKQuantitySeriesTableViewCell *)self textLabel];
  topAnchor = [textLabel topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[0] = v32;
  textLabel2 = [(HKQuantitySeriesTableViewCell *)self textLabel];
  leadingAnchor = [textLabel2 leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[1] = v28;
  textLabel3 = [(HKQuantitySeriesTableViewCell *)self textLabel];
  trailingAnchor = [textLabel3 trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[2] = v24;
  detailTextLabel = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  topAnchor3 = [detailTextLabel topAnchor];
  textLabel4 = [(HKQuantitySeriesTableViewCell *)self textLabel];
  bottomAnchor = [textLabel4 bottomAnchor];
  v19 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  v36[3] = v19;
  detailTextLabel2 = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  bottomAnchor2 = [detailTextLabel2 bottomAnchor];
  bottomAnchor3 = [layoutMarginsGuide bottomAnchor];
  v5 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v36[4] = v5;
  detailTextLabel3 = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  leadingAnchor3 = [detailTextLabel3 leadingAnchor];
  leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
  v9 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v36[5] = v9;
  detailTextLabel4 = [(HKQuantitySeriesTableViewCell *)self detailTextLabel];
  trailingAnchor3 = [detailTextLabel4 trailingAnchor];
  trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
  v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v36[6] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:7];

  return v15;
}

@end