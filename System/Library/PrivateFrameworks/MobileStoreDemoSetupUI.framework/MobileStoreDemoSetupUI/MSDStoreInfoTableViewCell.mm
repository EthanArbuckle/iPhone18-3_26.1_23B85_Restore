@interface MSDStoreInfoTableViewCell
- (MSDStoreInfoTableViewCell)initWithTitle:(id)title description:(id)description image:(id)image imageColor:(id)color reuseIdentifier:(id)identifier;
- (id)initSpinnerCellWithReuseIdentifier:(id)identifier;
@end

@implementation MSDStoreInfoTableViewCell

- (id)initSpinnerCellWithReuseIdentifier:(id)identifier
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = MSDStoreInfoTableViewCell;
  v3 = [(MSDStoreInfoTableViewCell *)&v21 initWithStyle:0 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(MSDStoreInfoTableViewCell *)v3 setSelectionStyle:0];
    v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MSDStoreInfoTableViewCell *)v4 addSubview:v5];
    centerXAnchor = [v5 centerXAnchor];
    centerXAnchor2 = [(MSDStoreInfoTableViewCell *)v4 centerXAnchor];
    v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v22[0] = v18;
    centerYAnchor = [v5 centerYAnchor];
    centerYAnchor2 = [(MSDStoreInfoTableViewCell *)v4 centerYAnchor];
    v6 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v22[1] = v6;
    heightAnchor = [v5 heightAnchor];
    heightAnchor2 = [(MSDStoreInfoTableViewCell *)v4 heightAnchor];
    v9 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];
    v22[2] = v9;
    widthAnchor = [v5 widthAnchor];
    heightAnchor3 = [v5 heightAnchor];
    v12 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
    v22[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
    [v5 startAnimating];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

- (MSDStoreInfoTableViewCell)initWithTitle:(id)title description:(id)description image:(id)image imageColor:(id)color reuseIdentifier:(id)identifier
{
  titleCopy = title;
  descriptionCopy = description;
  imageCopy = image;
  colorCopy = color;
  v32.receiver = self;
  v32.super_class = MSDStoreInfoTableViewCell;
  v16 = [(MSDStoreInfoTableViewCell *)&v32 initWithStyle:3 reuseIdentifier:identifier];
  v17 = v16;
  if (v16)
  {
    defaultContentConfiguration = [(MSDStoreInfoTableViewCell *)v16 defaultContentConfiguration];
    [defaultContentConfiguration setText:titleCopy];
    [defaultContentConfiguration setSecondaryText:descriptionCopy];
    [defaultContentConfiguration setImage:imageCopy];
    imageProperties = [defaultContentConfiguration imageProperties];
    [imageProperties setTintColor:colorCopy];

    v20 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
    textProperties = [defaultContentConfiguration textProperties];
    [textProperties setFont:v20];

    v22 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
    [secondaryTextProperties setFont:v22];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    secondaryTextProperties2 = [defaultContentConfiguration secondaryTextProperties];
    [secondaryTextProperties2 setColor:systemGrayColor];

    image = [defaultContentConfiguration image];
    v27 = [MEMORY[0x277D755D0] configurationWithPointSize:25.0];
    v28 = [image imageByApplyingSymbolConfiguration:v27];
    [defaultContentConfiguration setImage:v28];

    imageProperties2 = [defaultContentConfiguration imageProperties];
    [imageProperties2 setReservedLayoutSize:{50.0, 50.0}];

    [defaultContentConfiguration setTextToSecondaryTextVerticalPadding:3.0];
    [(MSDStoreInfoTableViewCell *)v17 setContentConfiguration:defaultContentConfiguration];
    contentView = [(MSDStoreInfoTableViewCell *)v17 contentView];
    [contentView setLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  }

  return v17;
}

@end