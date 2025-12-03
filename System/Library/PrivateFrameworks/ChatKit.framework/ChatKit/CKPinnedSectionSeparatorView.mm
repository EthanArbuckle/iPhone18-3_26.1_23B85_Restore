@interface CKPinnedSectionSeparatorView
+ (UIEdgeInsets)padding;
+ (id)reuseIdentifier;
- (CKPinnedSectionSeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation CKPinnedSectionSeparatorView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CKPinnedSectionSeparatorView)initWithFrame:(CGRect)frame
{
  v28[5] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CKPinnedSectionSeparatorView;
  v3 = [(CKPinnedSectionSeparatorView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CKPinnedSectionSeparatorView *)v3 bounds];
    v6 = v5 * 0.5 + -1.0;
    [(CKPinnedSectionSeparatorView *)v3 bounds];
    v7 = [v4 initWithFrame:{0.0, v6}];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [v7 layer];
    [layer setCornerRadius:1.0];

    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [v7 setBackgroundColor:separatorColor];

    [(CKPinnedSectionSeparatorView *)v3 addSubview:v7];
    v20 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [(CKPinnedSectionSeparatorView *)v3 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[0] = v24;
    trailingAnchor = [v7 trailingAnchor];
    trailingAnchor2 = [(CKPinnedSectionSeparatorView *)v3 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[1] = v21;
    centerXAnchor = [v7 centerXAnchor];
    centerXAnchor2 = [(CKPinnedSectionSeparatorView *)v3 centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v28[2] = v11;
    centerYAnchor = [v7 centerYAnchor];
    centerYAnchor2 = [(CKPinnedSectionSeparatorView *)v3 centerYAnchor];
    v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v28[3] = v14;
    heightAnchor = [v7 heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:2.0];
    v28[4] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:5];
    [v20 activateConstraints:v17];
  }

  return v3;
}

+ (UIEdgeInsets)padding
{
  v2 = 4.0;
  v3 = 0.0;
  v4 = 4.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end