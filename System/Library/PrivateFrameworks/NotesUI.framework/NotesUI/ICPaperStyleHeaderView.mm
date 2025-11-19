@interface ICPaperStyleHeaderView
- (ICPaperStyleHeaderView)initWithFrame:(CGRect)a3;
- (NSString)title;
- (UIEdgeInsets)titleInsets;
- (void)contentSizeCategoryDidChange;
- (void)setTitle:(id)a3;
- (void)setTitleInsets:(UIEdgeInsets)a3;
@end

@implementation ICPaperStyleHeaderView

- (ICPaperStyleHeaderView)initWithFrame:(CGRect)a3
{
  v36[4] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = ICPaperStyleHeaderView;
  v3 = [(ICPaperStyleHeaderView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(ICPaperStyleHeaderView *)v3 setLabel:v4];

    v5 = [(ICPaperStyleHeaderView *)v3 label];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(ICPaperStyleHeaderView *)v3 label];
    [v6 setTextAlignment:1];

    v7 = [(ICPaperStyleHeaderView *)v3 label];
    [v7 setNumberOfLines:0];

    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v8 = ;
    v9 = [(ICPaperStyleHeaderView *)v3 label];
    [v9 setTextColor:v8];

    v10 = [(ICPaperStyleHeaderView *)v3 label];
    [(ICPaperStyleHeaderView *)v3 addSubview:v10];

    v11 = [MEMORY[0x1E69DC888] ICGroupedBackgroundColor];
    [(ICPaperStyleHeaderView *)v3 setBackgroundColor:v11];

    v30 = MEMORY[0x1E696ACD8];
    v34 = [(ICPaperStyleHeaderView *)v3 label];
    v33 = [v34 leadingAnchor];
    v32 = [(ICPaperStyleHeaderView *)v3 leadingAnchor];
    v12 = [v33 constraintEqualToAnchor:v32];
    labelConstraintLeading = v3->_labelConstraintLeading;
    v3->_labelConstraintLeading = v12;

    v36[0] = v12;
    v31 = [(ICPaperStyleHeaderView *)v3 label];
    v14 = [v31 topAnchor];
    v15 = [(ICPaperStyleHeaderView *)v3 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    labelConstraintTop = v3->_labelConstraintTop;
    v3->_labelConstraintTop = v16;

    v36[1] = v16;
    v18 = [(ICPaperStyleHeaderView *)v3 label];
    v19 = [v18 trailingAnchor];
    v20 = [(ICPaperStyleHeaderView *)v3 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    labelConstraintTrailing = v3->_labelConstraintTrailing;
    v3->_labelConstraintTrailing = v21;

    v36[2] = v21;
    v23 = [(ICPaperStyleHeaderView *)v3 label];
    v24 = [v23 bottomAnchor];
    v25 = [(ICPaperStyleHeaderView *)v3 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    labelConstraintBottom = v3->_labelConstraintBottom;
    v3->_labelConstraintBottom = v26;

    v36[3] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v30 activateConstraints:v28];

    [(ICPaperStyleHeaderView *)v3 contentSizeCategoryDidChange];
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(ICPaperStyleHeaderView *)self label];
  [v5 setText:v4];
}

- (NSString)title
{
  v2 = [(ICPaperStyleHeaderView *)self label];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(ICPaperStyleHeaderView *)self labelConstraintLeading];
  [v8 setConstant:left];

  v9 = [(ICPaperStyleHeaderView *)self labelConstraintTop];
  [v9 setConstant:top];

  v10 = [(ICPaperStyleHeaderView *)self labelConstraintTrailing];
  [v10 setConstant:-right];

  v11 = [(ICPaperStyleHeaderView *)self labelConstraintBottom];
  [v11 setConstant:-bottom];
}

- (UIEdgeInsets)titleInsets
{
  v3 = [(ICPaperStyleHeaderView *)self labelConstraintTop];
  [v3 constant];
  v5 = v4;
  v6 = [(ICPaperStyleHeaderView *)self labelConstraintLeading];
  [v6 constant];
  v8 = v7;
  v9 = [(ICPaperStyleHeaderView *)self labelConstraintBottom];
  [v9 constant];
  v11 = -v10;
  v12 = [(ICPaperStyleHeaderView *)self labelConstraintTrailing];
  [v12 constant];
  v14 = -v13;

  v15 = v5;
  v16 = v8;
  v17 = v11;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)contentSizeCategoryDidChange
{
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v3 = [v5 ic_fontWithSingleLineA];
  v4 = [(ICPaperStyleHeaderView *)self label];
  [v4 setFont:v3];
}

@end