@interface CKPinnedSectionSeparatorView
+ (UIEdgeInsets)padding;
+ (id)reuseIdentifier;
- (CKPinnedSectionSeparatorView)initWithFrame:(CGRect)a3;
@end

@implementation CKPinnedSectionSeparatorView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CKPinnedSectionSeparatorView)initWithFrame:(CGRect)a3
{
  v28[5] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CKPinnedSectionSeparatorView;
  v3 = [(CKPinnedSectionSeparatorView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CKPinnedSectionSeparatorView *)v3 bounds];
    v6 = v5 * 0.5 + -1.0;
    [(CKPinnedSectionSeparatorView *)v3 bounds];
    v7 = [v4 initWithFrame:{0.0, v6}];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v7 layer];
    [v8 setCornerRadius:1.0];

    v9 = [MEMORY[0x1E69DC888] separatorColor];
    [v7 setBackgroundColor:v9];

    [(CKPinnedSectionSeparatorView *)v3 addSubview:v7];
    v20 = MEMORY[0x1E696ACD8];
    v26 = [v7 leadingAnchor];
    v25 = [(CKPinnedSectionSeparatorView *)v3 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v23 = [v7 trailingAnchor];
    v22 = [(CKPinnedSectionSeparatorView *)v3 trailingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v28[1] = v21;
    v19 = [v7 centerXAnchor];
    v10 = [(CKPinnedSectionSeparatorView *)v3 centerXAnchor];
    v11 = [v19 constraintEqualToAnchor:v10];
    v28[2] = v11;
    v12 = [v7 centerYAnchor];
    v13 = [(CKPinnedSectionSeparatorView *)v3 centerYAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v28[3] = v14;
    v15 = [v7 heightAnchor];
    v16 = [v15 constraintEqualToConstant:2.0];
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