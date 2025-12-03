@interface CNAutocompleteSuggestionsViewSectionHeader
- (CNAutocompleteSuggestionsViewSectionHeader)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setupConstraints;
@end

@implementation CNAutocompleteSuggestionsViewSectionHeader

- (CNAutocompleteSuggestionsViewSectionHeader)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CNAutocompleteSuggestionsViewSectionHeader;
  v3 = [(CNAutocompleteSuggestionsViewSectionHeader *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    preferredColorForTitleLabel = [objc_opt_class() preferredColorForTitleLabel];
    [(UILabel *)v3->_titleLabel setTextColor:preferredColorForTitleLabel];

    preferredFontForTitleLabel = [objc_opt_class() preferredFontForTitleLabel];
    [(UILabel *)v3->_titleLabel setFont:preferredFontForTitleLabel];

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
  titleLabel = [(CNAutocompleteSuggestionsViewSectionHeader *)self titleLabel];
  topAnchor = [titleLabel topAnchor];
  topAnchor2 = [(CNAutocompleteSuggestionsViewSectionHeader *)self topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];

  titleLabel2 = [(CNAutocompleteSuggestionsViewSectionHeader *)self titleLabel];
  leadingAnchor = [titleLabel2 leadingAnchor];
  layoutMarginsGuide = [(CNAutocompleteSuggestionsViewSectionHeader *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v23[0] = v18;
  titleLabel3 = [(CNAutocompleteSuggestionsViewSectionHeader *)self titleLabel];
  trailingAnchor = [titleLabel3 trailingAnchor];
  layoutMarginsGuide2 = [(CNAutocompleteSuggestionsViewSectionHeader *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v10;
  v23[2] = v17;
  titleLabel4 = [(CNAutocompleteSuggestionsViewSectionHeader *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  bottomAnchor2 = [(CNAutocompleteSuggestionsViewSectionHeader *)self bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:5.0];
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
  titleLabel = [(CNAutocompleteSuggestionsViewSectionHeader *)self titleLabel];
  [titleLabel setText:0];
}

@end