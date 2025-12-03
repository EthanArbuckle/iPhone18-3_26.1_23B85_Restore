@interface CKDetailsShowMoreContactsLargeTextCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsShowMoreContactsLargeTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_initConstraints;
@end

@implementation CKDetailsShowMoreContactsLargeTextCell

- (CKDetailsShowMoreContactsLargeTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CKDetailsShowMoreContactsLargeTextCell;
  v4 = [(CKDetailsCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsShowMoreContactsLargeTextCell *)v4 _initConstraints];
  }

  return v5;
}

- (void)_initConstraints
{
  v23[3] = *MEMORY[0x1E69E9840];
  textLabel = [(CKDetailsShowMoreContactsLargeTextCell *)self textLabel];
  [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = MEMORY[0x1E696ACD8];
  textLabel2 = [(CKDetailsShowMoreContactsLargeTextCell *)self textLabel];
  leadingAnchor = [textLabel2 leadingAnchor];
  contentView = [(CKDetailsShowMoreContactsLargeTextCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[0] = v17;
  textLabel3 = [(CKDetailsShowMoreContactsLargeTextCell *)self textLabel];
  trailingAnchor = [textLabel3 trailingAnchor];
  contentView2 = [(CKDetailsShowMoreContactsLargeTextCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v7;
  textLabel4 = [(CKDetailsShowMoreContactsLargeTextCell *)self textLabel];
  topAnchor = [textLabel4 topAnchor];
  contentView3 = [(CKDetailsShowMoreContactsLargeTextCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v23[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  [v15 activateConstraints:v13];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  contentView = [(CKDetailsShowMoreContactsLargeTextCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v8 = v7;

  textLabel = [(CKDetailsShowMoreContactsLargeTextCell *)self textLabel];
  [textLabel sizeThatFits:{v8, height}];
  v11 = v10;

  v12 = v11 + 20.0;
  v13 = v8;
  result.height = v12;
  result.width = v13;
  return result;
}

@end