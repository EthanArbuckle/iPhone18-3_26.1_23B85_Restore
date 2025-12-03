@interface HKDataMetadataSimpleTableViewCell
- (HKDataMetadataSimpleTableViewCell)initWithReuseIdentifier:(id)identifier;
- (void)_updateForCurrentSizeCategory;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAutomationIdentifiersWith:(id)with;
@end

@implementation HKDataMetadataSimpleTableViewCell

- (HKDataMetadataSimpleTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = HKDataMetadataSimpleTableViewCell;
  v3 = [(HKDataMetadataSimpleTableViewCell *)&v6 initWithStyle:3 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(HKDataMetadataSimpleTableViewCell *)v3 setupSubviews];
    [(HKDataMetadataSimpleTableViewCell *)v4 setupConstraints];
    [(HKDataMetadataSimpleTableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKDataMetadataSimpleTableViewCell *)self setSubtitleTextLabel:v3];

  [(UILabel *)self->_subtitleTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_subtitleTextLabel setNumberOfLines:0];
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:0];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];
  [(UILabel *)self->_subtitleTextLabel setFont:v5];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_subtitleTextLabel setTextColor:secondaryLabelColor];

  contentView = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  [contentView addSubview:self->_subtitleTextLabel];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKDataMetadataSimpleTableViewCell *)self setTitleTextLabel:v8];

  [(UILabel *)self->_titleTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleTextLabel setNumberOfLines:0];
  v12 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v12 size:0.0];
  [(UILabel *)self->_titleTextLabel setFont:v9];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_titleTextLabel setTextColor:labelColor];

  contentView2 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  [contentView2 addSubview:self->_titleTextLabel];
}

- (void)_updateForCurrentSizeCategory
{
  detailTextLabel = [(HKDataMetadataSimpleTableViewCell *)self detailTextLabel];
  font = [detailTextLabel font];
  [(UILabel *)self->_subtitleTextLabel setFont:font];

  textLabel = [(HKDataMetadataSimpleTableViewCell *)self textLabel];
  font2 = [textLabel font];
  [(UILabel *)self->_titleTextLabel setFont:font2];

  [(HKDataMetadataSimpleTableViewCell *)self setNeedsLayout];
}

- (void)setupConstraints
{
  subtitleTextLabel = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
  leadingAnchor = [subtitleTextLabel leadingAnchor];
  contentView = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v7 setActive:1];

  subtitleTextLabel2 = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
  trailingAnchor = [subtitleTextLabel2 trailingAnchor];
  contentView2 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v12 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [v12 setActive:1];

  subtitleTextLabel3 = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
  topAnchor = [subtitleTextLabel3 topAnchor];
  contentView3 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
  [v17 setActive:1];

  titleTextLabel = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
  leadingAnchor3 = [titleTextLabel leadingAnchor];
  contentView4 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  leadingAnchor4 = [contentView4 leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  [v22 setActive:1];

  titleTextLabel2 = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
  trailingAnchor3 = [titleTextLabel2 trailingAnchor];
  contentView5 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  trailingAnchor4 = [contentView5 trailingAnchor];
  v27 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  [v27 setActive:1];

  titleTextLabel3 = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
  bottomAnchor = [titleTextLabel3 bottomAnchor];
  contentView6 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-9.0];
  [v32 setActive:1];

  titleTextLabel4 = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
  topAnchor3 = [titleTextLabel4 topAnchor];
  subtitleTextLabel4 = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
  bottomAnchor3 = [subtitleTextLabel4 bottomAnchor];
  v36 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor3 constant:1.0];
  [v36 setActive:1];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKDataMetadataSimpleTableViewCell;
  [(HKDataMetadataSimpleTableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKDataMetadataSimpleTableViewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKDataMetadataSimpleTableViewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)updateAutomationIdentifiersWith:(id)with
{
  v15[2] = *MEMORY[0x1E69E9840];
  withCopy = with;
  v5 = withCopy;
  if (withCopy)
  {
    v15[0] = withCopy;
    v15[1] = @"Value";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    titleTextLabel = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
    [titleTextLabel setAccessibilityIdentifier:v7];

    v14[0] = v5;
    v14[1] = @"Title";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v10 = HKUIJoinStringsForAutomationIdentifier(v9);
    subtitleTextLabel = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
    [subtitleTextLabel setAccessibilityIdentifier:v10];
  }

  else
  {
    titleTextLabel2 = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
    [titleTextLabel2 setAccessibilityIdentifier:0];

    subtitleTextLabel2 = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
    [subtitleTextLabel2 setAccessibilityIdentifier:0];
  }
}

@end