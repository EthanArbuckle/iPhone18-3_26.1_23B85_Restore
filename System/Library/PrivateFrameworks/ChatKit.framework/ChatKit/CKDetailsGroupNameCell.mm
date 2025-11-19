@interface CKDetailsGroupNameCell
- (CKDetailsGroupNameCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_ckSymbolImageNamed:(id)a3 preferredContentSizeCategory:(id)a4 preferredFontTextStyle:(id)a5;
- (void)dealloc;
- (void)setGroupNameView:(id)a3;
@end

@implementation CKDetailsGroupNameCell

- (CKDetailsGroupNameCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = CKDetailsGroupNameCell;
  v4 = [(CKDetailsCell *)&v6 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    CKIsRunningInMacCatalyst();
  }

  return v4;
}

- (id)_ckSymbolImageNamed:(id)a3 preferredContentSizeCategory:(id)a4 preferredFontTextStyle:(id)a5
{
  v7 = MEMORY[0x1E69DD1B8];
  v8 = a5;
  v9 = a3;
  v10 = [v7 traitCollectionWithPreferredContentSizeCategory:a4];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8 compatibleWithTraitCollection:v10];

  [v11 pointSize];
  v12 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:?];
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9 withConfiguration:v12];

  return v13;
}

- (void)dealloc
{
  v3 = [(CKDetailsGroupNameCell *)self groupNameView];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = CKDetailsGroupNameCell;
  [(CKDetailsGroupNameCell *)&v4 dealloc];
}

- (void)setGroupNameView:(id)a3
{
  v31[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CKDetailsGroupNameCell *)self groupNameView];

  if (v6 != v5)
  {
    v7 = [(CKDetailsGroupNameCell *)self groupNameView];
    [v7 removeFromSuperview];

    objc_storeStrong(&self->_groupNameView, a3);
    v8 = [(CKDetailsGroupNameCell *)self contentView];
    [v8 addSubview:self->_groupNameView];

    if (!CKIsRunningInMacCatalyst())
    {
      [(CKDetailsAddGroupNameView *)self->_groupNameView setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = MEMORY[0x1E696ACD8];
      v29 = [(CKDetailsAddGroupNameView *)self->_groupNameView topAnchor];
      v30 = [(CKDetailsGroupNameCell *)self contentView];
      v28 = [v30 layoutMarginsGuide];
      v27 = [v28 topAnchor];
      v26 = [v29 constraintEqualToAnchor:v27];
      v31[0] = v26;
      v24 = [(CKDetailsAddGroupNameView *)self->_groupNameView leftAnchor];
      v25 = [(CKDetailsGroupNameCell *)self contentView];
      v23 = [v25 layoutMarginsGuide];
      v22 = [v23 leftAnchor];
      v20 = [v24 constraintEqualToAnchor:v22];
      v31[1] = v20;
      v18 = [(CKDetailsAddGroupNameView *)self->_groupNameView bottomAnchor];
      v19 = [(CKDetailsGroupNameCell *)self contentView];
      v9 = [v19 layoutMarginsGuide];
      v10 = [v9 bottomAnchor];
      v11 = [v18 constraintEqualToAnchor:v10];
      v31[2] = v11;
      v12 = [(CKDetailsAddGroupNameView *)self->_groupNameView rightAnchor];
      v13 = [(CKDetailsGroupNameCell *)self contentView];
      v14 = [v13 layoutMarginsGuide];
      v15 = [v14 rightAnchor];
      v16 = [v12 constraintEqualToAnchor:v15];
      v31[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
      [v21 activateConstraints:v17];
    }
  }
}

@end