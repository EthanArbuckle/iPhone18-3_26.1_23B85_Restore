@interface CKDetailsGroupNameCell
- (CKDetailsGroupNameCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_ckSymbolImageNamed:(id)named preferredContentSizeCategory:(id)category preferredFontTextStyle:(id)style;
- (void)dealloc;
- (void)setGroupNameView:(id)view;
@end

@implementation CKDetailsGroupNameCell

- (CKDetailsGroupNameCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = CKDetailsGroupNameCell;
  v4 = [(CKDetailsCell *)&v6 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    CKIsRunningInMacCatalyst();
  }

  return v4;
}

- (id)_ckSymbolImageNamed:(id)named preferredContentSizeCategory:(id)category preferredFontTextStyle:(id)style
{
  v7 = MEMORY[0x1E69DD1B8];
  styleCopy = style;
  namedCopy = named;
  v10 = [v7 traitCollectionWithPreferredContentSizeCategory:category];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:styleCopy compatibleWithTraitCollection:v10];

  [v11 pointSize];
  v12 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:?];
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:namedCopy withConfiguration:v12];

  return v13;
}

- (void)dealloc
{
  groupNameView = [(CKDetailsGroupNameCell *)self groupNameView];
  [groupNameView setDelegate:0];

  v4.receiver = self;
  v4.super_class = CKDetailsGroupNameCell;
  [(CKDetailsGroupNameCell *)&v4 dealloc];
}

- (void)setGroupNameView:(id)view
{
  v31[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  groupNameView = [(CKDetailsGroupNameCell *)self groupNameView];

  if (groupNameView != viewCopy)
  {
    groupNameView2 = [(CKDetailsGroupNameCell *)self groupNameView];
    [groupNameView2 removeFromSuperview];

    objc_storeStrong(&self->_groupNameView, view);
    contentView = [(CKDetailsGroupNameCell *)self contentView];
    [contentView addSubview:self->_groupNameView];

    if (!CKIsRunningInMacCatalyst())
    {
      [(CKDetailsAddGroupNameView *)self->_groupNameView setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = MEMORY[0x1E696ACD8];
      topAnchor = [(CKDetailsAddGroupNameView *)self->_groupNameView topAnchor];
      contentView2 = [(CKDetailsGroupNameCell *)self contentView];
      layoutMarginsGuide = [contentView2 layoutMarginsGuide];
      topAnchor2 = [layoutMarginsGuide topAnchor];
      v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v31[0] = v26;
      leftAnchor = [(CKDetailsAddGroupNameView *)self->_groupNameView leftAnchor];
      contentView3 = [(CKDetailsGroupNameCell *)self contentView];
      layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
      leftAnchor2 = [layoutMarginsGuide2 leftAnchor];
      v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v31[1] = v20;
      bottomAnchor = [(CKDetailsAddGroupNameView *)self->_groupNameView bottomAnchor];
      contentView4 = [(CKDetailsGroupNameCell *)self contentView];
      layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
      bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];
      v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v31[2] = v11;
      rightAnchor = [(CKDetailsAddGroupNameView *)self->_groupNameView rightAnchor];
      contentView5 = [(CKDetailsGroupNameCell *)self contentView];
      layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
      rightAnchor2 = [layoutMarginsGuide4 rightAnchor];
      v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v31[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
      [v21 activateConstraints:v17];
    }
  }
}

@end