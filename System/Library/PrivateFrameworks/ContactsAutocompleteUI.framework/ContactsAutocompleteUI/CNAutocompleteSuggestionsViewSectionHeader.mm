@interface CNAutocompleteSuggestionsViewSectionHeader
- (CNAutocompleteSuggestionsViewSectionHeader)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setupConstraints;
@end

@implementation CNAutocompleteSuggestionsViewSectionHeader

- (CNAutocompleteSuggestionsViewSectionHeader)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CNAutocompleteSuggestionsViewSectionHeader;
  v3 = [(CNAutocompleteSuggestionsViewSectionHeader *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = [objc_opt_class() preferredColorForTitleLabel];
    [(UILabel *)v3->_titleLabel setTextColor:v6];

    v7 = [objc_opt_class() preferredFontForTitleLabel];
    [(UILabel *)v3->_titleLabel setFont:v7];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(CNAutocompleteSuggestionsViewSectionHeader *)v3 addSubview:v3->_titleLabel];
    [(CNAutocompleteSuggestionsViewSectionHeader *)v3 setupConstraints];
    v8 = v3;
  }

  return v3;
}

- (void)setupConstraints
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(CNAutocompleteSuggestionsViewSectionHeader *)self titleLabel];
  v5 = [v4 topAnchor];
  v6 = [(CNAutocompleteSuggestionsViewSectionHeader *)self topAnchor];
  v17 = [v5 constraintEqualToAnchor:v6 constant:15.0];

  v22 = [(CNAutocompleteSuggestionsViewSectionHeader *)self titleLabel];
  v20 = [v22 leadingAnchor];
  v21 = [(CNAutocompleteSuggestionsViewSectionHeader *)self layoutMarginsGuide];
  v19 = [v21 leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:0.0];
  v23[0] = v18;
  v16 = [(CNAutocompleteSuggestionsViewSectionHeader *)self titleLabel];
  v7 = [v16 trailingAnchor];
  v8 = [(CNAutocompleteSuggestionsViewSectionHeader *)self layoutMarginsGuide];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v23[1] = v10;
  v23[2] = v17;
  v11 = [(CNAutocompleteSuggestionsViewSectionHeader *)self titleLabel];
  v12 = [v11 bottomAnchor];
  v13 = [(CNAutocompleteSuggestionsViewSectionHeader *)self bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:5.0];
  v23[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v3 addObjectsFromArray:v15];

  [MEMORY[0x1E696ACD8] activateConstraints:v3];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNAutocompleteSuggestionsViewSectionHeader;
  [(CNAutocompleteSuggestionsViewSectionHeader *)&v4 prepareForReuse];
  v3 = [(CNAutocompleteSuggestionsViewSectionHeader *)self titleLabel];
  [v3 setText:0];
}

@end