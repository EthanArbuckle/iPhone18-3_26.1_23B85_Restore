@interface MTUIBaseTableViewCell
- (MTUIBaseTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)didMoveToSuperview;
@end

@implementation MTUIBaseTableViewCell

- (MTUIBaseTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = MTUIBaseTableViewCell;
  v4 = [(MTUIBaseTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] mtui_backgroundColor];
    [(MTUIBaseTableViewCell *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x277D75348] mtui_cellHighlightColor];
    [(UITableViewCell *)v4 setSelectedBackgroundColor:v6];

    v7 = [MEMORY[0x277D75348] mtui_primaryTextColor];
    v8 = [(MTUIBaseTableViewCell *)v4 textLabel];
    [v8 setTextColor:v7];

    v9 = [MEMORY[0x277D75348] mtui_secondaryColor];
    v10 = [(MTUIBaseTableViewCell *)v4 detailTextLabel];
    [v10 setTextColor:v9];
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
  v6 = [(MTUIBaseTableViewCell *)self traitCollection];
  v7 = [v3 _preferredFontForTextStyle:v4 maximumContentSizeCategory:v5 compatibleWithTraitCollection:v6];

  v8 = [(MTUIBaseTableViewCell *)self textLabel];
  [v8 setFont:v7];

  v9 = [(MTUIBaseTableViewCell *)self detailTextLabel];
  [v9 setFont:v7];
}

@end