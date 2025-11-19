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
    v5 = [(DSWelcomeTableViewCell *)v3 constraints];
    [v4 activateConstraints:v5];
  }

  return v3;
}

- (void)customizeProperties
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  constraints = self->_constraints;
  self->_constraints = v3;

  v5 = [(DSWelcomeTableViewCell *)self textLabel];
  [v5 setNumberOfLines:0];

  v6 = [(DSWelcomeTableViewCell *)self textLabel];
  [v6 setLineBreakMode:0];

  v7 = [(DSWelcomeTableViewCell *)self textLabel];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v7 setFont:v8];

  v9 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  [v9 setFont:v10];

  v11 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  v12 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v11 setTextColor:v12];

  v13 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  [v13 setNumberOfLines:0];

  v14 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  [v14 setLineBreakMode:0];

  v15 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  [v15 sizeToFit];

  [(DSWelcomeTableViewCell *)self setAccessoryType:1];
  v16 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [(DSWelcomeTableViewCell *)self setBackgroundColor:v16];

  v17 = [(DSWelcomeTableViewCell *)self imageView];
  [v17 setContentMode:1];
}

- (void)constrainImageViews
{
  v3 = [(DSWelcomeTableViewCell *)self imageView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(DSWelcomeTableViewCell *)self constraints];
  v5 = [(DSWelcomeTableViewCell *)self imageView];
  v6 = [v5 widthAnchor];
  v7 = [v6 constraintEqualToConstant:40.0];
  [v4 addObject:v7];

  v8 = [(DSWelcomeTableViewCell *)self constraints];
  v9 = [(DSWelcomeTableViewCell *)self imageView];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintEqualToConstant:40.0];
  [v8 addObject:v11];

  v12 = [(DSWelcomeTableViewCell *)self constraints];
  v13 = [(DSWelcomeTableViewCell *)self imageView];
  v14 = [v13 centerYAnchor];
  v15 = [(DSWelcomeTableViewCell *)self contentView];
  v16 = [v15 centerYAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v12 addObject:v17];

  v23 = [(DSWelcomeTableViewCell *)self constraints];
  v18 = [(DSWelcomeTableViewCell *)self imageView];
  v19 = [v18 leadingAnchor];
  v20 = [(DSWelcomeTableViewCell *)self layoutMarginsGuide];
  v21 = [v20 leadingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v23 addObject:v22];
}

- (void)constrainTextLabels
{
  v3 = [(DSWelcomeTableViewCell *)self textLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(DSWelcomeTableViewCell *)self constraints];
  v5 = [(DSWelcomeTableViewCell *)self textLabel];
  v6 = [v5 topAnchor];
  v7 = [(DSWelcomeTableViewCell *)self contentView];
  v8 = [v7 layoutMarginsGuide];
  v9 = [v8 topAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];
  [v4 addObject:v10];

  v11 = [(DSWelcomeTableViewCell *)self constraints];
  v12 = [(DSWelcomeTableViewCell *)self textLabel];
  v13 = [v12 leadingAnchor];
  v14 = [(DSWelcomeTableViewCell *)self imageView];
  v15 = [v14 trailingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:10.0];
  [v11 addObject:v16];

  v17 = [(DSWelcomeTableViewCell *)self constraints];
  v18 = [(DSWelcomeTableViewCell *)self textLabel];
  v19 = [v18 widthAnchor];
  v20 = [(DSWelcomeTableViewCell *)self contentView];
  v21 = [v20 widthAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 multiplier:0.8];
  [v17 addObject:v22];

  v23 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(DSWelcomeTableViewCell *)self constraints];
  v25 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  v26 = [v25 leadingAnchor];
  v27 = [(DSWelcomeTableViewCell *)self textLabel];
  v28 = [v27 leadingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  [v24 addObject:v29];

  v30 = [(DSWelcomeTableViewCell *)self constraints];
  v31 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  v32 = [v31 topAnchor];
  v33 = [(DSWelcomeTableViewCell *)self textLabel];
  v34 = [v33 bottomAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [v30 addObject:v35];

  v41 = [(DSWelcomeTableViewCell *)self constraints];
  v36 = [(DSWelcomeTableViewCell *)self detailTextLabel];
  v37 = [v36 widthAnchor];
  v38 = [(DSWelcomeTableViewCell *)self contentView];
  v39 = [v38 widthAnchor];
  v40 = [v37 constraintEqualToAnchor:v39 multiplier:0.8];
  [v41 addObject:v40];
}

@end