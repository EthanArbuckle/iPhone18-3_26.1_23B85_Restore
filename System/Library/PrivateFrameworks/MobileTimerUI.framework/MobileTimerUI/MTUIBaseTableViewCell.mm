@interface MTUIBaseTableViewCell
- (MTUIBaseTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)didMoveToSuperview;
@end

@implementation MTUIBaseTableViewCell

- (MTUIBaseTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = MTUIBaseTableViewCell;
  v4 = [(MTUIBaseTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    mtui_backgroundColor = [MEMORY[0x277D75348] mtui_backgroundColor];
    [(MTUIBaseTableViewCell *)v4 setBackgroundColor:mtui_backgroundColor];

    mtui_cellHighlightColor = [MEMORY[0x277D75348] mtui_cellHighlightColor];
    [(UITableViewCell *)v4 setSelectedBackgroundColor:mtui_cellHighlightColor];

    mtui_primaryTextColor = [MEMORY[0x277D75348] mtui_primaryTextColor];
    textLabel = [(MTUIBaseTableViewCell *)v4 textLabel];
    [textLabel setTextColor:mtui_primaryTextColor];

    mtui_secondaryColor = [MEMORY[0x277D75348] mtui_secondaryColor];
    detailTextLabel = [(MTUIBaseTableViewCell *)v4 detailTextLabel];
    [detailTextLabel setTextColor:mtui_secondaryColor];
  }

  return v4;
}

- (void)didMoveToSuperview
{
  v10.receiver = self;
  v10.super_class = MTUIBaseTableViewCell;
  [(MTUIBaseTableViewCell *)&v10 didMoveToSuperview];
  v3 = MEMORY[0x277D74300];
  v4 = *MEMORY[0x277D76918];
  v5 = *MEMORY[0x277D76800];
  traitCollection = [(MTUIBaseTableViewCell *)self traitCollection];
  v7 = [v3 _preferredFontForTextStyle:v4 maximumContentSizeCategory:v5 compatibleWithTraitCollection:traitCollection];

  textLabel = [(MTUIBaseTableViewCell *)self textLabel];
  [textLabel setFont:v7];

  detailTextLabel = [(MTUIBaseTableViewCell *)self detailTextLabel];
  [detailTextLabel setFont:v7];
}

@end