@interface NDOLongValueCell
- (NDOLongValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation NDOLongValueCell

- (NDOLongValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v44.receiver = self;
  v44.super_class = NDOLongValueCell;
  v4 = [(PSTableCell *)&v44 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(NDOLongValueCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(PSTableCell *)v5 titleLabel];
    [titleLabel setHidden:1];

    valueLabel = [(PSTableCell *)v5 valueLabel];
    [valueLabel setHidden:1];

    v8 = objc_opt_new();
    [(NDOLongValueCell *)v5 setStackView:v8];

    stackView = [(NDOLongValueCell *)v5 stackView];
    [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView2 = [(NDOLongValueCell *)v5 stackView];
    [stackView2 setAxis:0];

    stackView3 = [(NDOLongValueCell *)v5 stackView];
    [stackView3 setSpacing:10.0];

    contentView = [(NDOLongValueCell *)v5 contentView];
    stackView4 = [(NDOLongValueCell *)v5 stackView];
    [contentView addSubview:stackView4];

    v14 = objc_opt_new();
    [(NDOLongValueCell *)v5 setPrimaryLabel:v14];

    labelColor = [MEMORY[0x277D75348] labelColor];
    primaryLabel = [(NDOLongValueCell *)v5 primaryLabel];
    [primaryLabel setTextColor:labelColor];

    primaryLabel2 = [(NDOLongValueCell *)v5 primaryLabel];
    [primaryLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    primaryLabel3 = [(NDOLongValueCell *)v5 primaryLabel];
    [primaryLabel3 setNumberOfLines:0];

    titleLabel2 = [(PSTableCell *)v5 titleLabel];
    font = [titleLabel2 font];
    primaryLabel4 = [(NDOLongValueCell *)v5 primaryLabel];
    [primaryLabel4 setFont:font];

    primaryLabel5 = [(NDOLongValueCell *)v5 primaryLabel];
    LODWORD(v23) = 1148846080;
    [primaryLabel5 setContentCompressionResistancePriority:0 forAxis:v23];

    primaryLabel6 = [(NDOLongValueCell *)v5 primaryLabel];
    LODWORD(v25) = 1148846080;
    [primaryLabel6 setContentHuggingPriority:0 forAxis:v25];

    stackView5 = [(NDOLongValueCell *)v5 stackView];
    primaryLabel7 = [(NDOLongValueCell *)v5 primaryLabel];
    [stackView5 addArrangedSubview:primaryLabel7];

    v28 = objc_opt_new();
    [(NDOLongValueCell *)v5 setSecondaryLabel:v28];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    secondaryLabel = [(NDOLongValueCell *)v5 secondaryLabel];
    [secondaryLabel setTextColor:secondaryLabelColor];

    secondaryLabel2 = [(NDOLongValueCell *)v5 secondaryLabel];
    [secondaryLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    secondaryLabel3 = [(NDOLongValueCell *)v5 secondaryLabel];
    [secondaryLabel3 setNumberOfLines:0];

    valueLabel2 = [(PSTableCell *)v5 valueLabel];
    font2 = [valueLabel2 font];
    secondaryLabel4 = [(NDOLongValueCell *)v5 secondaryLabel];
    [secondaryLabel4 setFont:font2];

    secondaryLabel5 = [(NDOLongValueCell *)v5 secondaryLabel];
    [secondaryLabel5 setTextAlignment:2];

    secondaryLabel6 = [(NDOLongValueCell *)v5 secondaryLabel];
    LODWORD(v38) = 1148846080;
    [secondaryLabel6 setContentCompressionResistancePriority:0 forAxis:v38];

    secondaryLabel7 = [(NDOLongValueCell *)v5 secondaryLabel];
    LODWORD(v40) = 1148846080;
    [secondaryLabel7 setContentHuggingPriority:0 forAxis:v40];

    stackView6 = [(NDOLongValueCell *)v5 stackView];
    secondaryLabel8 = [(NDOLongValueCell *)v5 secondaryLabel];
    [stackView6 addArrangedSubview:secondaryLabel8];
  }

  return v5;
}

- (void)updateConstraints
{
  contentView = [(NDOLongValueCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];

  v5 = MEMORY[0x277CCAAD0];
  constraints = [(NDOLongValueCell *)self constraints];
  [v5 deactivateConstraints:constraints];

  v7 = objc_opt_new();
  stackView = [(NDOLongValueCell *)self stackView];
  leadingAnchor = [stackView leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v7 addObject:v11];

  type = [(PSTableCell *)self type];
  stackView2 = [(NDOLongValueCell *)self stackView];
  trailingAnchor = [stackView2 trailingAnchor];
  if (type == 2)
  {
    contentView2 = [(NDOLongValueCell *)self contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v7 addObject:v17];
  }

  else
  {
    contentView2 = [layoutMarginsGuide trailingAnchor];
    trailingAnchor2 = [trailingAnchor constraintEqualToAnchor:contentView2];
    [v7 addObject:trailingAnchor2];
  }

  stackView3 = [(NDOLongValueCell *)self stackView];
  topAnchor = [stackView3 topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v7 addObject:v21];

  stackView4 = [(NDOLongValueCell *)self stackView];
  bottomAnchor = [stackView4 bottomAnchor];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v7 addObject:v25];

  stackView5 = [(NDOLongValueCell *)self stackView];
  bottomAnchor3 = [stackView5 bottomAnchor];
  bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
  v29 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v7 addObject:v29];

  v30 = [v7 copy];
  [(NDOLongValueCell *)self setConstraints:v30];

  v31 = MEMORY[0x277CCAAD0];
  constraints2 = [(NDOLongValueCell *)self constraints];
  [v31 activateConstraints:constraints2];

  v33.receiver = self;
  v33.super_class = NDOLongValueCell;
  [(NDOLongValueCell *)&v33 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v19.receiver = self;
  v19.super_class = NDOLongValueCell;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:specifier];
  titleLabel = [(PSTableCell *)self titleLabel];
  text = [titleLabel text];
  primaryLabel = [(NDOLongValueCell *)self primaryLabel];
  [primaryLabel setText:text];

  valueLabel = [(PSTableCell *)self valueLabel];
  text2 = [valueLabel text];
  v9 = [text2 length];

  v10 = objc_opt_self();
  stackView = [v10 stackView];
  secondaryLabel = [(NDOLongValueCell *)self secondaryLabel];
  v13 = [stackView containsView:secondaryLabel];

  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      stackView2 = [(NDOLongValueCell *)self stackView];
      secondaryLabel2 = [(NDOLongValueCell *)self secondaryLabel];
      [stackView2 addArrangedSubview:secondaryLabel2];
    }

    valueLabel2 = [(PSTableCell *)self valueLabel];
    text3 = [valueLabel2 text];
    secondaryLabel3 = [(NDOLongValueCell *)self secondaryLabel];
    [secondaryLabel3 setText:text3];

    goto LABEL_7;
  }

  if (v13)
  {
    valueLabel2 = [(NDOLongValueCell *)self stackView];
    text3 = [(NDOLongValueCell *)self secondaryLabel];
    [valueLabel2 removeArrangedSubview:text3];
LABEL_7:
  }

  [(NDOLongValueCell *)self setNeedsUpdateConstraints];
  [(PSTableCell *)self layoutSubviews];
}

@end