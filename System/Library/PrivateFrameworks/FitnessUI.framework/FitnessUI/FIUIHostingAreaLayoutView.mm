@interface FIUIHostingAreaLayoutView
+ (id)blackBackgroundViewHostingView:(id)a3;
+ (id)viewHostingView:(id)a3;
- (CGSize)intrinsicContentSize;
- (void)setHostedView:(id)a3;
@end

@implementation FIUIHostingAreaLayoutView

+ (id)viewHostingView:(id)a3
{
  v3 = a3;
  v4 = [FIUIHostingAreaLayoutView alloc];
  v5 = [(FIUIHostingAreaLayoutView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(FIUIHostingAreaLayoutView *)v5 setHostedView:v3];

  return v5;
}

+ (id)blackBackgroundViewHostingView:(id)a3
{
  v3 = [a1 viewHostingView:a3];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setBackgroundColor:v4];

  return v3;
}

- (void)setHostedView:(id)a3
{
  objc_storeStrong(&self->_hostedView, a3);
  v4 = [(FIUIHostingAreaLayoutView *)self hostedView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(FIUIHostingAreaLayoutView *)self hostedView];
  [(FIUIHostingAreaLayoutView *)self addSubview:v5];

  v6 = [(FIUIHostingAreaLayoutView *)self safeAreaLayoutGuide];
  v7 = [v6 topAnchor];
  v8 = [(FIUIHostingAreaLayoutView *)self hostedView];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(FIUIHostingAreaLayoutView *)self safeAreaLayoutGuide];
  v12 = [v11 bottomAnchor];
  v13 = [(FIUIHostingAreaLayoutView *)self hostedView];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(FIUIHostingAreaLayoutView *)self safeAreaLayoutGuide];
  v17 = [v16 leadingAnchor];
  v18 = [(FIUIHostingAreaLayoutView *)self hostedView];
  v19 = [v18 leadingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v25 = [(FIUIHostingAreaLayoutView *)self safeAreaLayoutGuide];
  v21 = [v25 trailingAnchor];
  v22 = [(FIUIHostingAreaLayoutView *)self hostedView];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v24 setActive:1];
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x1E69DE788];
  v4 = [(FIUIHostingAreaLayoutView *)self hostedView];
  [v4 intrinsicContentSize];
  v6 = v5;
  [(FIUIHostingAreaLayoutView *)self safeAreaInsets];
  v8 = v6 + v7;
  [(FIUIHostingAreaLayoutView *)self safeAreaInsets];
  v10 = v8 + v9;

  v11 = v3;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end