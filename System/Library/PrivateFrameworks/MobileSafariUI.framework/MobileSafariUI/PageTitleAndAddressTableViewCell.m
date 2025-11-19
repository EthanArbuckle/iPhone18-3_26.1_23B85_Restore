@interface PageTitleAndAddressTableViewCell
- (PageTitleAndAddressTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateFont;
- (void)_updateNumberOfLines;
- (void)layoutSubviews;
- (void)setTitle:(id)a3 address:(id)a4 prompt:(id)a5 withQuery:(id)a6;
@end

@implementation PageTitleAndAddressTableViewCell

- (PageTitleAndAddressTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PageTitleAndAddressTableViewCell;
  v4 = [(PageTitleAndAddressTableViewCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PageTitleAndAddressTableViewCell *)v4 _updateNumberOfLines];
    [(PageTitleAndAddressTableViewCell *)v5 _updateFont];
    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
    v7 = [(PageTitleAndAddressTableViewCell *)v5 detailTextLabel];
    [v7 setTextColor:v6];

    v16[0] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v9 = [(PageTitleAndAddressTableViewCell *)v5 registerForTraitChanges:v8 withTarget:v5 action:sel__updateNumberOfLines];

    v15 = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v11 = [(PageTitleAndAddressTableViewCell *)v5 registerForTraitChanges:v10 withTarget:v5 action:sel__updateFont];

    v12 = v5;
  }

  return v5;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PageTitleAndAddressTableViewCell;
  [(CompletionListTableViewCell *)&v16 layoutSubviews];
  v3 = [(PageTitleAndAddressTableViewCell *)self imageView];
  v4 = [v3 image];
  if (v4)
  {
    [v3 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v4 size];
    +[CompletionListTableViewCell imageWidthSpace];
    v11 = [(PageTitleAndAddressTableViewCell *)self textLabel];
    [v11 frame];
    _SFRoundFloatToPixels();
    if ([(PageTitleAndAddressTableViewCell *)self _sf_usesLeftToRightLayout])
    {
      _SFRoundFloatToPixels();
      v13 = v12;
    }

    else
    {
      v14 = [(PageTitleAndAddressTableViewCell *)self contentView];
      [v14 bounds];
      CGRectGetMaxX(v17);
      _SFRoundFloatToPixels();
      v13 = v15;
    }

    [v3 setFrame:{v13, v6, v8, v10}];
  }
}

- (void)setTitle:(id)a3 address:(id)a4 prompt:(id)a5 withQuery:(id)a6
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a4;
  }

  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(PageTitleAndAddressTableViewCell *)self textLabel];
  [v13 setText:v9];

  v15 = [MEMORY[0x277CCACA8] safari_detailStringWithURLString:v11 prompt:v10];

  v14 = [(PageTitleAndAddressTableViewCell *)self detailTextLabel];
  [v14 setText:v15];
}

- (void)_updateNumberOfLines
{
  v3 = [(PageTitleAndAddressTableViewCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(PageTitleAndAddressTableViewCell *)self textLabel];
  [v6 setNumberOfLines:v5];

  v7 = [(PageTitleAndAddressTableViewCell *)self detailTextLabel];
  [v7 setNumberOfLines:v5];
}

- (void)_updateFont
{
  v3 = [(PageTitleAndAddressTableViewCell *)self traitCollection];
  v4 = [v3 verticalSizeClass];

  if (v4 == 1)
  {
    v5 = *MEMORY[0x277D76800];
    v6 = [(PageTitleAndAddressTableViewCell *)self textLabel];
    [v6 setMaximumContentSizeCategory:v5];

    v7 = [(PageTitleAndAddressTableViewCell *)self detailTextLabel];
    [v7 setMaximumContentSizeCategory:v5];
  }

  v8 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74410]];
  v9 = [(PageTitleAndAddressTableViewCell *)self textLabel];
  [v9 setFont:v8];

  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  v10 = [(PageTitleAndAddressTableViewCell *)self detailTextLabel];
  [v10 setFont:v11];
}

@end