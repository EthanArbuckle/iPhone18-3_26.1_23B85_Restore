@interface ICPaperStyleHeaderView
- (ICPaperStyleHeaderView)initWithFrame:(CGRect)frame;
- (NSString)title;
- (UIEdgeInsets)titleInsets;
- (void)contentSizeCategoryDidChange;
- (void)setTitle:(id)title;
- (void)setTitleInsets:(UIEdgeInsets)insets;
@end

@implementation ICPaperStyleHeaderView

- (ICPaperStyleHeaderView)initWithFrame:(CGRect)frame
{
  v36[4] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = ICPaperStyleHeaderView;
  v3 = [(ICPaperStyleHeaderView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(ICPaperStyleHeaderView *)v3 setLabel:v4];

    label = [(ICPaperStyleHeaderView *)v3 label];
    [label setTranslatesAutoresizingMaskIntoConstraints:0];

    label2 = [(ICPaperStyleHeaderView *)v3 label];
    [label2 setTextAlignment:1];

    label3 = [(ICPaperStyleHeaderView *)v3 label];
    [label3 setNumberOfLines:0];

    if ([MEMORY[0x1E69DC938] ic_isVision])
    {
      [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v8 = ;
    label4 = [(ICPaperStyleHeaderView *)v3 label];
    [label4 setTextColor:v8];

    label5 = [(ICPaperStyleHeaderView *)v3 label];
    [(ICPaperStyleHeaderView *)v3 addSubview:label5];

    iCGroupedBackgroundColor = [MEMORY[0x1E69DC888] ICGroupedBackgroundColor];
    [(ICPaperStyleHeaderView *)v3 setBackgroundColor:iCGroupedBackgroundColor];

    v30 = MEMORY[0x1E696ACD8];
    label6 = [(ICPaperStyleHeaderView *)v3 label];
    leadingAnchor = [label6 leadingAnchor];
    leadingAnchor2 = [(ICPaperStyleHeaderView *)v3 leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    labelConstraintLeading = v3->_labelConstraintLeading;
    v3->_labelConstraintLeading = v12;

    v36[0] = v12;
    label7 = [(ICPaperStyleHeaderView *)v3 label];
    topAnchor = [label7 topAnchor];
    topAnchor2 = [(ICPaperStyleHeaderView *)v3 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    labelConstraintTop = v3->_labelConstraintTop;
    v3->_labelConstraintTop = v16;

    v36[1] = v16;
    label8 = [(ICPaperStyleHeaderView *)v3 label];
    trailingAnchor = [label8 trailingAnchor];
    trailingAnchor2 = [(ICPaperStyleHeaderView *)v3 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    labelConstraintTrailing = v3->_labelConstraintTrailing;
    v3->_labelConstraintTrailing = v21;

    v36[2] = v21;
    label9 = [(ICPaperStyleHeaderView *)v3 label];
    bottomAnchor = [label9 bottomAnchor];
    bottomAnchor2 = [(ICPaperStyleHeaderView *)v3 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    labelConstraintBottom = v3->_labelConstraintBottom;
    v3->_labelConstraintBottom = v26;

    v36[3] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v30 activateConstraints:v28];

    [(ICPaperStyleHeaderView *)v3 contentSizeCategoryDidChange];
  }

  return v3;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  label = [(ICPaperStyleHeaderView *)self label];
  [label setText:titleCopy];
}

- (NSString)title
{
  label = [(ICPaperStyleHeaderView *)self label];
  text = [label text];

  return text;
}

- (void)setTitleInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  labelConstraintLeading = [(ICPaperStyleHeaderView *)self labelConstraintLeading];
  [labelConstraintLeading setConstant:left];

  labelConstraintTop = [(ICPaperStyleHeaderView *)self labelConstraintTop];
  [labelConstraintTop setConstant:top];

  labelConstraintTrailing = [(ICPaperStyleHeaderView *)self labelConstraintTrailing];
  [labelConstraintTrailing setConstant:-right];

  labelConstraintBottom = [(ICPaperStyleHeaderView *)self labelConstraintBottom];
  [labelConstraintBottom setConstant:-bottom];
}

- (UIEdgeInsets)titleInsets
{
  labelConstraintTop = [(ICPaperStyleHeaderView *)self labelConstraintTop];
  [labelConstraintTop constant];
  v5 = v4;
  labelConstraintLeading = [(ICPaperStyleHeaderView *)self labelConstraintLeading];
  [labelConstraintLeading constant];
  v8 = v7;
  labelConstraintBottom = [(ICPaperStyleHeaderView *)self labelConstraintBottom];
  [labelConstraintBottom constant];
  v11 = -v10;
  labelConstraintTrailing = [(ICPaperStyleHeaderView *)self labelConstraintTrailing];
  [labelConstraintTrailing constant];
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
  ic_fontWithSingleLineA = [v5 ic_fontWithSingleLineA];
  label = [(ICPaperStyleHeaderView *)self label];
  [label setFont:ic_fontWithSingleLineA];
}

@end