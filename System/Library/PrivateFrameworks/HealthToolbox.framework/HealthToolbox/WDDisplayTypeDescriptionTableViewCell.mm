@interface WDDisplayTypeDescriptionTableViewCell
- (WDDisplayTypeDescriptionTableViewCell)initWithCoder:(id)coder;
- (WDDisplayTypeDescriptionTableViewCell)initWithDisplayType:(id)type showAttributionText:(BOOL)text reuseIdentifier:(id)identifier;
- (void)setDisplayType:(id)type;
- (void)setupSubviews;
@end

@implementation WDDisplayTypeDescriptionTableViewCell

- (WDDisplayTypeDescriptionTableViewCell)initWithDisplayType:(id)type showAttributionText:(BOOL)text reuseIdentifier:(id)identifier
{
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = WDDisplayTypeDescriptionTableViewCell;
  v9 = [(WDDisplayTypeDescriptionTableViewCell *)&v12 initWithStyle:0 reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v9->_showAttributionText = text;
    [(WDDisplayTypeDescriptionTableViewCell *)v9 setDisplayType:typeCopy];
  }

  return v10;
}

- (WDDisplayTypeDescriptionTableViewCell)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WDDisplayTypeDescriptionTableViewCell;
  return [(WDDisplayTypeDescriptionTableViewCell *)&v4 initWithCoder:coder];
}

- (void)setDisplayType:(id)type
{
  objc_storeStrong(&self->_displayType, type);

  [(WDDisplayTypeDescriptionTableViewCell *)self setupSubviews];
}

- (void)setupSubviews
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = [WDDisplayTypeDescriptionView alloc];
  displayType = [(WDDisplayTypeDescriptionTableViewCell *)self displayType];
  v5 = [(WDDisplayTypeDescriptionView *)v3 initWithDisplayType:displayType showAttributionText:[(WDDisplayTypeDescriptionTableViewCell *)self showAttributionText] style:0];
  descriptionView = self->_descriptionView;
  self->_descriptionView = v5;

  [(WDDisplayTypeDescriptionView *)self->_descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(WDDisplayTypeDescriptionTableViewCell *)self contentView];
  [contentView addSubview:self->_descriptionView];

  leadingAnchor = [(WDDisplayTypeDescriptionView *)self->_descriptionView leadingAnchor];
  contentView2 = [(WDDisplayTypeDescriptionTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v12 setActive:1];

  trailingAnchor = [(WDDisplayTypeDescriptionView *)self->_descriptionView trailingAnchor];
  contentView3 = [(WDDisplayTypeDescriptionTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v17 setActive:1];

  v18 = self->_descriptionView;
  v23 = @"descriptionView";
  v24[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  contentView4 = [(WDDisplayTypeDescriptionTableViewCell *)self contentView];
  v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[descriptionView]|" options:0 metrics:&unk_28642E0B8 views:v19];
  [contentView4 addConstraints:v21];

  v22 = *MEMORY[0x277D85DE8];
}

@end