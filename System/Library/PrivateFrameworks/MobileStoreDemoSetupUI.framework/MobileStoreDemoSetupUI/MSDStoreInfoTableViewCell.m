@interface MSDStoreInfoTableViewCell
- (MSDStoreInfoTableViewCell)initWithTitle:(id)a3 description:(id)a4 image:(id)a5 imageColor:(id)a6 reuseIdentifier:(id)a7;
- (id)initSpinnerCellWithReuseIdentifier:(id)a3;
@end

@implementation MSDStoreInfoTableViewCell

- (id)initSpinnerCellWithReuseIdentifier:(id)a3
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = MSDStoreInfoTableViewCell;
  v3 = [(MSDStoreInfoTableViewCell *)&v21 initWithStyle:0 reuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(MSDStoreInfoTableViewCell *)v3 setSelectionStyle:0];
    v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MSDStoreInfoTableViewCell *)v4 addSubview:v5];
    v20 = [v5 centerXAnchor];
    v19 = [(MSDStoreInfoTableViewCell *)v4 centerXAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v22[0] = v18;
    v17 = [v5 centerYAnchor];
    v16 = [(MSDStoreInfoTableViewCell *)v4 centerYAnchor];
    v6 = [v17 constraintEqualToAnchor:v16];
    v22[1] = v6;
    v7 = [v5 heightAnchor];
    v8 = [(MSDStoreInfoTableViewCell *)v4 heightAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 multiplier:0.5];
    v22[2] = v9;
    v10 = [v5 widthAnchor];
    v11 = [v5 heightAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v22[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
    [v5 startAnimating];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

- (MSDStoreInfoTableViewCell)initWithTitle:(id)a3 description:(id)a4 image:(id)a5 imageColor:(id)a6 reuseIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v32.receiver = self;
  v32.super_class = MSDStoreInfoTableViewCell;
  v16 = [(MSDStoreInfoTableViewCell *)&v32 initWithStyle:3 reuseIdentifier:a7];
  v17 = v16;
  if (v16)
  {
    v18 = [(MSDStoreInfoTableViewCell *)v16 defaultContentConfiguration];
    [v18 setText:v12];
    [v18 setSecondaryText:v13];
    [v18 setImage:v14];
    v19 = [v18 imageProperties];
    [v19 setTintColor:v15];

    v20 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
    v21 = [v18 textProperties];
    [v21 setFont:v20];

    v22 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    v23 = [v18 secondaryTextProperties];
    [v23 setFont:v22];

    v24 = [MEMORY[0x277D75348] systemGrayColor];
    v25 = [v18 secondaryTextProperties];
    [v25 setColor:v24];

    v26 = [v18 image];
    v27 = [MEMORY[0x277D755D0] configurationWithPointSize:25.0];
    v28 = [v26 imageByApplyingSymbolConfiguration:v27];
    [v18 setImage:v28];

    v29 = [v18 imageProperties];
    [v29 setReservedLayoutSize:{50.0, 50.0}];

    [v18 setTextToSecondaryTextVerticalPadding:3.0];
    [(MSDStoreInfoTableViewCell *)v17 setContentConfiguration:v18];
    v30 = [(MSDStoreInfoTableViewCell *)v17 contentView];
    [v30 setLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  }

  return v17;
}

@end