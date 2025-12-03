@interface FIUIHostingAreaLayoutView
+ (id)blackBackgroundViewHostingView:(id)view;
+ (id)viewHostingView:(id)view;
- (CGSize)intrinsicContentSize;
- (void)setHostedView:(id)view;
@end

@implementation FIUIHostingAreaLayoutView

+ (id)viewHostingView:(id)view
{
  viewCopy = view;
  v4 = [FIUIHostingAreaLayoutView alloc];
  v5 = [(FIUIHostingAreaLayoutView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(FIUIHostingAreaLayoutView *)v5 setHostedView:viewCopy];

  return v5;
}

+ (id)blackBackgroundViewHostingView:(id)view
{
  v3 = [self viewHostingView:view];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v3 setBackgroundColor:blackColor];

  return v3;
}

- (void)setHostedView:(id)view
{
  objc_storeStrong(&self->_hostedView, view);
  hostedView = [(FIUIHostingAreaLayoutView *)self hostedView];
  [hostedView setTranslatesAutoresizingMaskIntoConstraints:0];

  hostedView2 = [(FIUIHostingAreaLayoutView *)self hostedView];
  [(FIUIHostingAreaLayoutView *)self addSubview:hostedView2];

  safeAreaLayoutGuide = [(FIUIHostingAreaLayoutView *)self safeAreaLayoutGuide];
  topAnchor = [safeAreaLayoutGuide topAnchor];
  hostedView3 = [(FIUIHostingAreaLayoutView *)self hostedView];
  topAnchor2 = [hostedView3 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v10 setActive:1];

  safeAreaLayoutGuide2 = [(FIUIHostingAreaLayoutView *)self safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  hostedView4 = [(FIUIHostingAreaLayoutView *)self hostedView];
  bottomAnchor2 = [hostedView4 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v15 setActive:1];

  safeAreaLayoutGuide3 = [(FIUIHostingAreaLayoutView *)self safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide3 leadingAnchor];
  hostedView5 = [(FIUIHostingAreaLayoutView *)self hostedView];
  leadingAnchor2 = [hostedView5 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v20 setActive:1];

  safeAreaLayoutGuide4 = [(FIUIHostingAreaLayoutView *)self safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide4 trailingAnchor];
  hostedView6 = [(FIUIHostingAreaLayoutView *)self hostedView];
  trailingAnchor2 = [hostedView6 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v24 setActive:1];
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x1E69DE788];
  hostedView = [(FIUIHostingAreaLayoutView *)self hostedView];
  [hostedView intrinsicContentSize];
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