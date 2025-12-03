@interface CKDetailsAddMemberLargeTextCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsAddMemberLargeTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_initConstraints;
- (void)_initLabel;
@end

@implementation CKDetailsAddMemberLargeTextCell

- (CKDetailsAddMemberLargeTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CKDetailsAddMemberLargeTextCell;
  v4 = [(CKDetailsAddMemberCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsAddMemberLargeTextCell *)v4 _initLabel];
    [(CKDetailsAddMemberLargeTextCell *)v5 _initConstraints];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  addLabel = [(CKDetailsAddMemberCell *)self addLabel];
  [addLabel sizeThatFits:{width, height}];
  v7 = v6;

  v8 = v7 + 20.0;
  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)_initConstraints
{
  v22[3] = *MEMORY[0x1E69E9840];
  addLabel = [(CKDetailsAddMemberCell *)self addLabel];
  [addLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = MEMORY[0x1E696ACD8];
  addLabel2 = [(CKDetailsAddMemberCell *)self addLabel];
  leadingAnchor = [addLabel2 leadingAnchor];
  contentView = [(CKDetailsAddMemberLargeTextCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v22[0] = v16;
  addLabel3 = [(CKDetailsAddMemberCell *)self addLabel];
  trailingAnchor = [addLabel3 trailingAnchor];
  contentView2 = [(CKDetailsAddMemberLargeTextCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[1] = v8;
  addLabel4 = [(CKDetailsAddMemberCell *)self addLabel];
  topAnchor = [addLabel4 topAnchor];
  topAnchor2 = [(CKDetailsAddMemberLargeTextCell *)self topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v22[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  [v14 activateConstraints:v13];
}

- (void)_initLabel
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  addLabel = [(CKDetailsAddMemberCell *)self addLabel];
  text = [addLabel text];
  v11 = *MEMORY[0x1E69DB688];
  v12[0] = v3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v4 initWithString:text attributes:v7];

  addLabel2 = [(CKDetailsAddMemberCell *)self addLabel];
  [addLabel2 _setOverallWritingDirectionFollowsLayoutDirection:1];

  addLabel3 = [(CKDetailsAddMemberCell *)self addLabel];
  [addLabel3 setAttributedText:v8];
}

@end