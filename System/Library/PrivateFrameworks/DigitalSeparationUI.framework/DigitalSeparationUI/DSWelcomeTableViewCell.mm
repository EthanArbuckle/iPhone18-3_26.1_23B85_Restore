@interface DSWelcomeTableViewCell
- (DSWelcomeTableViewCell)init;
- (void)constrainImageViews;
- (void)constrainTextLabels;
- (void)customizeProperties;
@end

@implementation DSWelcomeTableViewCell

- (DSWelcomeTableViewCell)init
{
  v7.receiver = self;
  v7.super_class = DSWelcomeTableViewCell;
  v2 = [(DSWelcomeTableViewCell *)&v7 initWithStyle:3 reuseIdentifier:@"DSWelcomeCell"];
  v3 = v2;
  if (v2)
  {
    [(DSWelcomeTableViewCell *)v2 customizeProperties];
    [(DSWelcomeTableViewCell *)v3 constrainImageViews];
    [(DSWelcomeTableViewCell *)v3 constrainTextLabels];
    v4 = MEMORY[0x277CCAAD0];
    constraints = [(DSWelcomeTableViewCell *)v3 constraints];
    [v4 activateConstraints:constraints];
  }

  return v3;
}

- (void)customizeProperties
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  constraints = self->_constraints;
  self->_constraints = v3;

  textLabel = [(DSWelcomeTableViewCell *)self textLabel];
  [textLabel setNumberOfLines:0];

  textLabel2 = [(DSWelcomeTableViewCell *)self textLabel];
  [textLabel2 setLineBreakMode:0];

  textLabel3 = [(DSWelcomeTableViewCell *)self textLabel];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [textLabel3 setFont:v8];

  detailTextLabel = [(DSWelcomeTableViewCell *)self detailTextLabel];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  [detailTextLabel setFont:v10];

  detailTextLabel2 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [detailTextLabel2 setTextColor:secondaryLabelColor];

  detailTextLabel3 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  [detailTextLabel3 setNumberOfLines:0];

  detailTextLabel4 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  [detailTextLabel4 setLineBreakMode:0];

  detailTextLabel5 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  [detailTextLabel5 sizeToFit];

  [(DSWelcomeTableViewCell *)self setAccessoryType:1];
  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [(DSWelcomeTableViewCell *)self setBackgroundColor:tertiarySystemFillColor];

  imageView = [(DSWelcomeTableViewCell *)self imageView];
  [imageView setContentMode:1];
}

- (void)constrainImageViews
{
  imageView = [(DSWelcomeTableViewCell *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

  constraints = [(DSWelcomeTableViewCell *)self constraints];
  imageView2 = [(DSWelcomeTableViewCell *)self imageView];
  widthAnchor = [imageView2 widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:40.0];
  [constraints addObject:v7];

  constraints2 = [(DSWelcomeTableViewCell *)self constraints];
  imageView3 = [(DSWelcomeTableViewCell *)self imageView];
  heightAnchor = [imageView3 heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:40.0];
  [constraints2 addObject:v11];

  constraints3 = [(DSWelcomeTableViewCell *)self constraints];
  imageView4 = [(DSWelcomeTableViewCell *)self imageView];
  centerYAnchor = [imageView4 centerYAnchor];
  contentView = [(DSWelcomeTableViewCell *)self contentView];
  centerYAnchor2 = [contentView centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [constraints3 addObject:v17];

  constraints4 = [(DSWelcomeTableViewCell *)self constraints];
  imageView5 = [(DSWelcomeTableViewCell *)self imageView];
  leadingAnchor = [imageView5 leadingAnchor];
  layoutMarginsGuide = [(DSWelcomeTableViewCell *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [constraints4 addObject:v22];
}

- (void)constrainTextLabels
{
  textLabel = [(DSWelcomeTableViewCell *)self textLabel];
  [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  constraints = [(DSWelcomeTableViewCell *)self constraints];
  textLabel2 = [(DSWelcomeTableViewCell *)self textLabel];
  topAnchor = [textLabel2 topAnchor];
  contentView = [(DSWelcomeTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [constraints addObject:v10];

  constraints2 = [(DSWelcomeTableViewCell *)self constraints];
  textLabel3 = [(DSWelcomeTableViewCell *)self textLabel];
  leadingAnchor = [textLabel3 leadingAnchor];
  imageView = [(DSWelcomeTableViewCell *)self imageView];
  trailingAnchor = [imageView trailingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:10.0];
  [constraints2 addObject:v16];

  constraints3 = [(DSWelcomeTableViewCell *)self constraints];
  textLabel4 = [(DSWelcomeTableViewCell *)self textLabel];
  widthAnchor = [textLabel4 widthAnchor];
  contentView2 = [(DSWelcomeTableViewCell *)self contentView];
  widthAnchor2 = [contentView2 widthAnchor];
  v22 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.8];
  [constraints3 addObject:v22];

  detailTextLabel = [(DSWelcomeTableViewCell *)self detailTextLabel];
  [detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  constraints4 = [(DSWelcomeTableViewCell *)self constraints];
  detailTextLabel2 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  leadingAnchor2 = [detailTextLabel2 leadingAnchor];
  textLabel5 = [(DSWelcomeTableViewCell *)self textLabel];
  leadingAnchor3 = [textLabel5 leadingAnchor];
  v29 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  [constraints4 addObject:v29];

  constraints5 = [(DSWelcomeTableViewCell *)self constraints];
  detailTextLabel3 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  topAnchor3 = [detailTextLabel3 topAnchor];
  textLabel6 = [(DSWelcomeTableViewCell *)self textLabel];
  bottomAnchor = [textLabel6 bottomAnchor];
  v35 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [constraints5 addObject:v35];

  constraints6 = [(DSWelcomeTableViewCell *)self constraints];
  detailTextLabel4 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  widthAnchor3 = [detailTextLabel4 widthAnchor];
  contentView3 = [(DSWelcomeTableViewCell *)self contentView];
  widthAnchor4 = [contentView3 widthAnchor];
  v40 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.8];
  [constraints6 addObject:v40];
}

@end