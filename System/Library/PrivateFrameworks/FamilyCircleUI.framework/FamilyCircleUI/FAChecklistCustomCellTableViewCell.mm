@interface FAChecklistCustomCellTableViewCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation FAChecklistCustomCellTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v43[1] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v39.receiver = self;
  v39.super_class = FAChecklistCustomCellTableViewCell;
  [(PSTableCell *)&v39 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = objc_alloc_init(MEMORY[0x277CCAB48]);
  [specifierCopy propertyForKey:*MEMORY[0x277D3FFA8]];
  v38 = v6 = 0x277CCA000uLL;
  if (v38)
  {
    v7 = objc_alloc(MEMORY[0x277CCA898]);
    v8 = *MEMORY[0x277D740A8];
    v42 = *MEMORY[0x277D740A8];
    v9 = *MEMORY[0x277D769D0];
    v10 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74420]];
    v43[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v12 = [v7 initWithString:v38 attributes:v11];

    v6 = 0x277CCA000;
    [v5 appendAttributedString:v12];
  }

  else
  {
    v8 = *MEMORY[0x277D740A8];
    v9 = *MEMORY[0x277D769D0];
  }

  v13 = v5;
  v37 = [specifierCopy propertyForKey:{*MEMORY[0x277D40160], specifierCopy}];
  v14 = objc_alloc(*(v6 + 2200));
  v40 = v8;
  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
  v41 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v17 = [v14 initWithString:v37 attributes:v16];

  [v13 appendAttributedString:v17];
  imageView = [(FAChecklistCustomCellTableViewCell *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView2 = [(FAChecklistCustomCellTableViewCell *)self imageView];
  topAnchor = [imageView2 topAnchor];
  contentView = [(FAChecklistCustomCellTableViewCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v23 setActive:1];

  imageView3 = [(FAChecklistCustomCellTableViewCell *)self imageView];
  [imageView3 setContentMode:9];

  imageView4 = [(FAChecklistCustomCellTableViewCell *)self imageView];
  [imageView4 setContentMode:1];

  detailTextLabel = [(FAChecklistCustomCellTableViewCell *)self detailTextLabel];
  [detailTextLabel setAttributedText:v13];

  detailTextLabel2 = [(FAChecklistCustomCellTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setLineBreakMode:0];

  detailTextLabel3 = [(FAChecklistCustomCellTableViewCell *)self detailTextLabel];
  [detailTextLabel3 setNumberOfLines:0];

  textLabel = [(FAChecklistCustomCellTableViewCell *)self textLabel];
  v30 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [textLabel setFont:v30];

  textLabel2 = [(FAChecklistCustomCellTableViewCell *)self textLabel];
  v32 = [v36 propertyForKey:*MEMORY[0x277D40170]];
  [textLabel2 setText:v32];

  textLabel3 = [(FAChecklistCustomCellTableViewCell *)self textLabel];
  [textLabel3 setLineBreakMode:0];

  textLabel4 = [(FAChecklistCustomCellTableViewCell *)self textLabel];
  [textLabel4 setNumberOfLines:0];

  [(FAChecklistCustomCellTableViewCell *)self setNeedsLayout];
  v35 = *MEMORY[0x277D85DE8];
}

@end