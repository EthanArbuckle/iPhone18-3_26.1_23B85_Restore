@interface CKMultipleIDSSubscriptionsTableCell
- (CKMultipleIDSSubscriptionsTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CKMultipleIDSSubscriptionsTableCell

- (CKMultipleIDSSubscriptionsTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v65.receiver = self;
  v65.super_class = CKMultipleIDSSubscriptionsTableCell;
  v4 = [(PSTableCell *)&v65 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v5;

    v7 = *MEMORY[0x277D76918];
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_nameLabel setFont:v8];

    [(UILabel *)v4->_nameLabel setNumberOfLines:0];
    [(UILabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    [contentView addSubview:v4->_nameLabel];

    firstBaselineAnchor = [(UILabel *)v4->_nameLabel firstBaselineAnchor];
    contentView2 = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    topAnchor = [contentView2 topAnchor];
    v13 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:1.0];
    [v13 setActive:1];

    leadingAnchor = [(UILabel *)v4->_nameLabel leadingAnchor];
    contentView3 = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v18 setActive:1];

    trailingAnchor = [(UILabel *)v4->_nameLabel trailingAnchor];
    contentView4 = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v23 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    [v23 setActive:1];

    v24 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = v4->_numberLabel;
    v4->_numberLabel = v24;

    v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v4->_numberLabel setFont:v26];

    [(UILabel *)v4->_numberLabel setNumberOfLines:0];
    [(UILabel *)v4->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_numberLabel setTextColor:systemGrayColor];

    contentView5 = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    [contentView5 addSubview:v4->_numberLabel];

    firstBaselineAnchor2 = [(UILabel *)v4->_numberLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v4->_nameLabel lastBaselineAnchor];
    v31 = [firstBaselineAnchor2 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    [v31 setActive:1];

    leadingAnchor3 = [(UILabel *)v4->_numberLabel leadingAnchor];
    leadingAnchor4 = [(UILabel *)v4->_nameLabel leadingAnchor];
    v34 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v34 setActive:1];

    trailingAnchor3 = [(UILabel *)v4->_numberLabel trailingAnchor];
    contentView6 = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide3 trailingAnchor];
    v39 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    [v39 setActive:1];

    contentView7 = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    bottomAnchor = [contentView7 bottomAnchor];
    lastBaselineAnchor2 = [(UILabel *)v4->_numberLabel lastBaselineAnchor];
    v43 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];
    [v43 setActive:1];

    v44 = objc_alloc_init(MEMORY[0x277D756B8]);
    centeredNameLabel = v4->_centeredNameLabel;
    v4->_centeredNameLabel = v44;

    v46 = [MEMORY[0x277D74300] preferredFontForTextStyle:v7];
    [(UILabel *)v4->_centeredNameLabel setFont:v46];

    [(UILabel *)v4->_centeredNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView8 = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    [contentView8 addSubview:v4->_centeredNameLabel];

    leadingAnchor5 = [(UILabel *)v4->_centeredNameLabel leadingAnchor];
    contentView9 = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView9 layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide4 leadingAnchor];
    v52 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [v52 setActive:1];

    trailingAnchor5 = [(UILabel *)v4->_centeredNameLabel trailingAnchor];
    contentView10 = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    layoutMarginsGuide5 = [contentView10 layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide5 trailingAnchor];
    v57 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
    [v57 setActive:1];

    centerYAnchor = [(UILabel *)v4->_centeredNameLabel centerYAnchor];
    contentView11 = [(CKMultipleIDSSubscriptionsTableCell *)v4 contentView];
    centerYAnchor2 = [contentView11 centerYAnchor];
    v61 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v61 setActive:1];

    textLabel = [(CKMultipleIDSSubscriptionsTableCell *)v4 textLabel];
    [textLabel setHidden:1];

    detailTextLabel = [(CKMultipleIDSSubscriptionsTableCell *)v4 detailTextLabel];
    [detailTextLabel setHidden:1];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = CKMultipleIDSSubscriptionsTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v8 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{*MEMORY[0x277D40128], v8.receiver, v8.super_class}];

  label = [v5 label];
  [(UILabel *)self->_nameLabel setText:label];

  phoneNumber = [v5 phoneNumber];
  [(UILabel *)self->_numberLabel setText:phoneNumber];

  [(CKMultipleIDSSubscriptionsTableCell *)self setNeedsLayout];
}

@end