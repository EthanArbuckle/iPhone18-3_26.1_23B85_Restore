@interface CKDetailsAddMemberLargeTextCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKDetailsAddMemberLargeTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_initConstraints;
- (void)_initLabel;
@end

@implementation CKDetailsAddMemberLargeTextCell

- (CKDetailsAddMemberLargeTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKDetailsAddMemberLargeTextCell;
  v4 = [(CKDetailsAddMemberCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsAddMemberLargeTextCell *)v4 _initLabel];
    [(CKDetailsAddMemberLargeTextCell *)v5 _initConstraints];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CKDetailsAddMemberCell *)self addLabel];
  [v5 sizeThatFits:{width, height}];
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
  v3 = [(CKDetailsAddMemberCell *)self addLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = MEMORY[0x1E696ACD8];
  v21 = [(CKDetailsAddMemberCell *)self addLabel];
  v19 = [v21 leadingAnchor];
  v20 = [(CKDetailsAddMemberLargeTextCell *)self contentView];
  v18 = [v20 layoutMarginsGuide];
  v17 = [v18 leadingAnchor];
  v16 = [v19 constraintEqualToAnchor:v17];
  v22[0] = v16;
  v15 = [(CKDetailsAddMemberCell *)self addLabel];
  v4 = [v15 trailingAnchor];
  v5 = [(CKDetailsAddMemberLargeTextCell *)self contentView];
  v6 = [v5 layoutMarginsGuide];
  v7 = [v6 trailingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];
  v22[1] = v8;
  v9 = [(CKDetailsAddMemberCell *)self addLabel];
  v10 = [v9 topAnchor];
  v11 = [(CKDetailsAddMemberLargeTextCell *)self topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:10.0];
  v22[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  [v14 activateConstraints:v13];
}

- (void)_initLabel
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [(CKDetailsAddMemberCell *)self addLabel];
  v6 = [v5 text];
  v11 = *MEMORY[0x1E69DB688];
  v12[0] = v3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v4 initWithString:v6 attributes:v7];

  v9 = [(CKDetailsAddMemberCell *)self addLabel];
  [v9 _setOverallWritingDirectionFollowsLayoutDirection:1];

  v10 = [(CKDetailsAddMemberCell *)self addLabel];
  [v10 setAttributedText:v8];
}

@end