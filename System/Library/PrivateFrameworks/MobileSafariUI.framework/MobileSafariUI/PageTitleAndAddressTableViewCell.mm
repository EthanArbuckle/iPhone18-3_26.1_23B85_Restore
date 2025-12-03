@interface PageTitleAndAddressTableViewCell
- (PageTitleAndAddressTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateFont;
- (void)_updateNumberOfLines;
- (void)layoutSubviews;
- (void)setTitle:(id)title address:(id)address prompt:(id)prompt withQuery:(id)query;
@end

@implementation PageTitleAndAddressTableViewCell

- (PageTitleAndAddressTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PageTitleAndAddressTableViewCell;
  v4 = [(PageTitleAndAddressTableViewCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PageTitleAndAddressTableViewCell *)v4 _updateNumberOfLines];
    [(PageTitleAndAddressTableViewCell *)v5 _updateFont];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    detailTextLabel = [(PageTitleAndAddressTableViewCell *)v5 detailTextLabel];
    [detailTextLabel setTextColor:secondaryLabelColor];

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
  imageView = [(PageTitleAndAddressTableViewCell *)self imageView];
  image = [imageView image];
  if (image)
  {
    [imageView frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [image size];
    +[CompletionListTableViewCell imageWidthSpace];
    textLabel = [(PageTitleAndAddressTableViewCell *)self textLabel];
    [textLabel frame];
    _SFRoundFloatToPixels();
    if ([(PageTitleAndAddressTableViewCell *)self _sf_usesLeftToRightLayout])
    {
      _SFRoundFloatToPixels();
      v13 = v12;
    }

    else
    {
      contentView = [(PageTitleAndAddressTableViewCell *)self contentView];
      [contentView bounds];
      CGRectGetMaxX(v17);
      _SFRoundFloatToPixels();
      v13 = v15;
    }

    [imageView setFrame:{v13, v6, v8, v10}];
  }
}

- (void)setTitle:(id)title address:(id)address prompt:(id)prompt withQuery:(id)query
{
  if (title)
  {
    addressCopy = title;
  }

  else
  {
    addressCopy = address;
  }

  promptCopy = prompt;
  addressCopy2 = address;
  titleCopy2 = title;
  textLabel = [(PageTitleAndAddressTableViewCell *)self textLabel];
  [textLabel setText:addressCopy];

  v15 = [MEMORY[0x277CCACA8] safari_detailStringWithURLString:addressCopy2 prompt:promptCopy];

  detailTextLabel = [(PageTitleAndAddressTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:v15];
}

- (void)_updateNumberOfLines
{
  traitCollection = [(PageTitleAndAddressTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  textLabel = [(PageTitleAndAddressTableViewCell *)self textLabel];
  [textLabel setNumberOfLines:v5];

  detailTextLabel = [(PageTitleAndAddressTableViewCell *)self detailTextLabel];
  [detailTextLabel setNumberOfLines:v5];
}

- (void)_updateFont
{
  traitCollection = [(PageTitleAndAddressTableViewCell *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    v5 = *MEMORY[0x277D76800];
    textLabel = [(PageTitleAndAddressTableViewCell *)self textLabel];
    [textLabel setMaximumContentSizeCategory:v5];

    detailTextLabel = [(PageTitleAndAddressTableViewCell *)self detailTextLabel];
    [detailTextLabel setMaximumContentSizeCategory:v5];
  }

  v8 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74410]];
  textLabel2 = [(PageTitleAndAddressTableViewCell *)self textLabel];
  [textLabel2 setFont:v8];

  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  detailTextLabel2 = [(PageTitleAndAddressTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setFont:v11];
}

@end