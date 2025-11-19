@interface HKDataMetadataSimpleTableViewCell
- (HKDataMetadataSimpleTableViewCell)initWithReuseIdentifier:(id)a3;
- (void)_updateForCurrentSizeCategory;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAutomationIdentifiersWith:(id)a3;
@end

@implementation HKDataMetadataSimpleTableViewCell

- (HKDataMetadataSimpleTableViewCell)initWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = HKDataMetadataSimpleTableViewCell;
  v3 = [(HKDataMetadataSimpleTableViewCell *)&v6 initWithStyle:3 reuseIdentifier:a3];
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

  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_subtitleTextLabel setTextColor:v6];

  v7 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  [v7 addSubview:self->_subtitleTextLabel];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKDataMetadataSimpleTableViewCell *)self setTitleTextLabel:v8];

  [(UILabel *)self->_titleTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleTextLabel setNumberOfLines:0];
  v12 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v12 size:0.0];
  [(UILabel *)self->_titleTextLabel setFont:v9];

  v10 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_titleTextLabel setTextColor:v10];

  v11 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  [v11 addSubview:self->_titleTextLabel];
}

- (void)_updateForCurrentSizeCategory
{
  v3 = [(HKDataMetadataSimpleTableViewCell *)self detailTextLabel];
  v4 = [v3 font];
  [(UILabel *)self->_subtitleTextLabel setFont:v4];

  v5 = [(HKDataMetadataSimpleTableViewCell *)self textLabel];
  v6 = [v5 font];
  [(UILabel *)self->_titleTextLabel setFont:v6];

  [(HKDataMetadataSimpleTableViewCell *)self setNeedsLayout];
}

- (void)setupConstraints
{
  v3 = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:16.0];
  [v7 setActive:1];

  v8 = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
  v9 = [v8 trailingAnchor];
  v10 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintLessThanOrEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
  v14 = [v13 topAnchor];
  v15 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:9.0];
  [v17 setActive:1];

  v18 = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
  v19 = [v18 leadingAnchor];
  v20 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  v21 = [v20 leadingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:16.0];
  [v22 setActive:1];

  v23 = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
  v24 = [v23 trailingAnchor];
  v25 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintLessThanOrEqualToAnchor:v26];
  [v27 setActive:1];

  v28 = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
  v29 = [v28 bottomAnchor];
  v30 = [(HKDataMetadataSimpleTableViewCell *)self contentView];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:-9.0];
  [v32 setActive:1];

  v37 = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
  v33 = [v37 topAnchor];
  v34 = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintGreaterThanOrEqualToAnchor:v35 constant:1.0];
  [v36 setActive:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKDataMetadataSimpleTableViewCell;
  [(HKDataMetadataSimpleTableViewCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKDataMetadataSimpleTableViewCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKDataMetadataSimpleTableViewCell *)self _updateForCurrentSizeCategory];
    }
  }
}

- (void)updateAutomationIdentifiersWith:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v15[0] = v4;
    v15[1] = @"Value";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    v8 = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
    [v8 setAccessibilityIdentifier:v7];

    v14[0] = v5;
    v14[1] = @"Title";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v10 = HKUIJoinStringsForAutomationIdentifier(v9);
    v11 = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
    [v11 setAccessibilityIdentifier:v10];
  }

  else
  {
    v12 = [(HKDataMetadataSimpleTableViewCell *)self titleTextLabel];
    [v12 setAccessibilityIdentifier:0];

    v13 = [(HKDataMetadataSimpleTableViewCell *)self subtitleTextLabel];
    [v13 setAccessibilityIdentifier:0];
  }
}

@end