@interface FASharedSubscriptionsCell
- (FASharedSubscriptionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation FASharedSubscriptionsCell

- (FASharedSubscriptionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v17.receiver = self;
  v17.super_class = FASharedSubscriptionsCell;
  specifier = [(PSTableCell *)&v17 initWithStyle:3 reuseIdentifier:identifier, specifier];
  v6 = specifier;
  if (specifier)
  {
    textLabel = [(FASharedSubscriptionsCell *)specifier textLabel];
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [textLabel setFont:v8];

    textLabel2 = [(FASharedSubscriptionsCell *)v6 textLabel];
    [textLabel2 setLineBreakMode:0];

    textLabel3 = [(FASharedSubscriptionsCell *)v6 textLabel];
    [textLabel3 setNumberOfLines:0];

    detailTextLabel = [(FASharedSubscriptionsCell *)v6 detailTextLabel];
    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [detailTextLabel setFont:v12];

    detailTextLabel2 = [(FASharedSubscriptionsCell *)v6 detailTextLabel];
    [detailTextLabel2 setLineBreakMode:0];

    detailTextLabel3 = [(FASharedSubscriptionsCell *)v6 detailTextLabel];
    [detailTextLabel3 setNumberOfLines:0];

    imageView = [(FASharedSubscriptionsCell *)v6 imageView];
    [imageView setContentMode:1];
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = FASharedSubscriptionsCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(FASharedSubscriptionsCell *)self textLabel:v9.receiver];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];
  [v5 setText:v6];

  detailTextLabel = [(FASharedSubscriptionsCell *)self detailTextLabel];
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];

  [detailTextLabel setText:v8];
  [(FASharedSubscriptionsCell *)self setNeedsLayout];
}

@end