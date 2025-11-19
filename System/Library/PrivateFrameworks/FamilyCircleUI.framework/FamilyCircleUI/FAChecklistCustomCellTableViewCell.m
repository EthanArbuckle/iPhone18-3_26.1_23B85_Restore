@interface FAChecklistCustomCellTableViewCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation FAChecklistCustomCellTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v43[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = FAChecklistCustomCellTableViewCell;
  [(PSTableCell *)&v39 refreshCellContentsWithSpecifier:v4];
  v5 = objc_alloc_init(MEMORY[0x277CCAB48]);
  [v4 propertyForKey:*MEMORY[0x277D3FFA8]];
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
  v37 = [v4 propertyForKey:{*MEMORY[0x277D40160], v4}];
  v14 = objc_alloc(*(v6 + 2200));
  v40 = v8;
  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:v9];
  v41 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v17 = [v14 initWithString:v37 attributes:v16];

  [v13 appendAttributedString:v17];
  v18 = [(FAChecklistCustomCellTableViewCell *)self imageView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(FAChecklistCustomCellTableViewCell *)self imageView];
  v20 = [v19 topAnchor];
  v21 = [(FAChecklistCustomCellTableViewCell *)self contentView];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [(FAChecklistCustomCellTableViewCell *)self imageView];
  [v24 setContentMode:9];

  v25 = [(FAChecklistCustomCellTableViewCell *)self imageView];
  [v25 setContentMode:1];

  v26 = [(FAChecklistCustomCellTableViewCell *)self detailTextLabel];
  [v26 setAttributedText:v13];

  v27 = [(FAChecklistCustomCellTableViewCell *)self detailTextLabel];
  [v27 setLineBreakMode:0];

  v28 = [(FAChecklistCustomCellTableViewCell *)self detailTextLabel];
  [v28 setNumberOfLines:0];

  v29 = [(FAChecklistCustomCellTableViewCell *)self textLabel];
  v30 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v29 setFont:v30];

  v31 = [(FAChecklistCustomCellTableViewCell *)self textLabel];
  v32 = [v36 propertyForKey:*MEMORY[0x277D40170]];
  [v31 setText:v32];

  v33 = [(FAChecklistCustomCellTableViewCell *)self textLabel];
  [v33 setLineBreakMode:0];

  v34 = [(FAChecklistCustomCellTableViewCell *)self textLabel];
  [v34 setNumberOfLines:0];

  [(FAChecklistCustomCellTableViewCell *)self setNeedsLayout];
  v35 = *MEMORY[0x277D85DE8];
}

@end